; ModuleID = 'passes.bc'
source_filename = "passes.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.function = type { %struct.eh_status*, %struct.control_flow_graph*, %struct.gimple_seq_d*, %struct.gimple_df*, %struct.loops*, %struct.htab*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.machine_function*, %struct.language_function*, %struct.htab*, i32, i32, i32, i32, i32, i32, i8*, i32 }
%struct.eh_status = type { %struct.eh_region_d*, %struct.VEC_eh_region_gc*, %struct.VEC_eh_landing_pad_gc*, %struct.htab*, %struct.VEC_tree_gc*, %union.eh_status_u }
%struct.eh_region_d = type { %struct.eh_region_d*, %struct.eh_region_d*, %struct.eh_region_d*, i32, i32, %union.eh_region_u, %struct.eh_landing_pad_d*, %struct.rtx_def*, %struct.rtx_def*, i8 }
%union.eh_region_u = type { %struct.eh_region_u_allowed }
%struct.eh_region_u_allowed = type { %union.tree_node*, %union.tree_node*, i32 }
%struct.eh_landing_pad_d = type { %struct.eh_landing_pad_d*, %struct.eh_region_d*, %union.tree_node*, %struct.rtx_def*, i32 }
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
%struct.gcc_debug_hooks = type { void (i8*)*, void (i8*)*, void ()*, void (i32, i8*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32)*, void (i32, i32)*, void (i32, i32)*, i8 (%union.tree_node*)*, void (i32, i8*, i32, i8)*, void (i32, i8*)*, void (i32, i8*)*, void (i32, i8*)*, void (%union.tree_node*)*, void (i32)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*, i32)*, void (%union.tree_node*, %union.tree_node*, %union.tree_node*, i8)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%struct.rtx_def*)*, void (i32)*, void (%struct.rtx_def*)*, void ()*, void (%union.tree_node*)*, void (%union.tree_node*, i32)*, void (%struct.rtx_def*, %struct.rtx_def*)*, void (i32)*, void (%union.tree_node*, %union.tree_node*)*, i32 }
%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.pass_list_node = type { %struct.opt_pass*, %struct.pass_list_node* }
%struct.simple_ipa_opt_pass = type { %struct.opt_pass }
%struct.ipa_opt_pass_d = type { %struct.opt_pass, void ()*, void (%struct.cgraph_node_set_def*)*, void ()*, void (%struct.cgraph_node*)*, void (%struct.cgraph_node*, %union.gimple_statement_d**)*, i32, i32 (%struct.cgraph_node*)*, void (%struct.varpool_node*)* }
%struct.cgraph_node_set_def = type { %struct.htab*, %struct.VEC_cgraph_node_ptr_gc*, i8* }
%struct.VEC_cgraph_node_ptr_gc = type { %struct.VEC_cgraph_node_ptr_base }
%struct.VEC_cgraph_node_ptr_base = type { i32, i32, [1 x %struct.cgraph_node*] }
%struct.cgraph_node = type { %union.tree_node*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.htab*, i8*, %struct.VEC_ipa_opt_pass_heap*, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_edge = type { i64, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_edge*, %union.gimple_statement_d*, i8*, i32, i32, i32, i32, i16, i8 }
%struct.VEC_ipa_opt_pass_heap = type { %struct.VEC_ipa_opt_pass_base }
%struct.VEC_ipa_opt_pass_base = type { i32, i32, [1 x %struct.ipa_opt_pass_d*] }
%struct.cgraph_local_info = type { %struct.lto_file_decl_data*, %struct.inline_summary, i8 }
%struct.lto_file_decl_data = type { %struct.lto_in_decl_state*, %struct.lto_in_decl_state*, %struct.lto_cgraph_encoder_d*, %struct.htab*, i8*, i8, %struct.htab*, %struct.htab* }
%struct.lto_in_decl_state = type { [7 x %struct.lto_tree_ref_table], %union.tree_node* }
%struct.lto_tree_ref_table = type { %union.tree_node**, i32 }
%struct.lto_cgraph_encoder_d = type { %struct.pointer_map_t*, %struct.VEC_cgraph_node_ptr_heap* }
%struct.VEC_cgraph_node_ptr_heap = type { %struct.VEC_cgraph_node_ptr_base }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, %struct.cgraph_node*, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { %struct.VEC_ipa_replace_map_p_gc*, %struct.bitmap_head_def*, %struct.bitmap_head_def* }
%struct.VEC_ipa_replace_map_p_gc = type { %struct.VEC_ipa_replace_map_p_base }
%struct.VEC_ipa_replace_map_p_base = type { i32, i32, [1 x %struct.ipa_replace_map*] }
%struct.ipa_replace_map = type { %union.tree_node*, %union.tree_node*, i8, i8 }
%struct.cgraph_thunk_info = type { i64, i64, %union.tree_node*, i8, i8, i8 }
%struct.varpool_node = type { %union.tree_node*, %struct.varpool_node*, %struct.varpool_node*, %struct.varpool_node*, i32, i8 }
%struct.lang_hooks = type { i8*, i64, void (%union.tree_node*)*, i64 (i32)*, i32 (i32, i8**)*, void (%struct.diagnostic_context*)*, i32 (i64, i8*, i32)*, i8 (i8*, i64)*, i8 (i8**)*, i8 ()*, void ()*, void (i32)*, i8 (%union.tree_node*)*, i32 (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void ()*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)*, i32 (%union.tree_node*, %union.tree_node*)*, void (%struct.diagnostic_context*, i8*, %struct.diagnostic_info*)*, i64 (i64)*, %struct.attribute_spec*, %struct.attribute_spec*, %struct.attribute_spec*, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i8 (%union.tree_node*)*, i32 (%union.tree_node**, %struct.gimple_seq_d**, %struct.gimple_seq_d**)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void ()*, %union.tree_node* (%union.tree_node*, i8*, i8*)*, %union.tree_node* ()*, %union.tree_node* (%union.tree_node*)*, i8 }
%struct.attribute_spec = type { i8*, i32, i32, i8, i8, i8, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* }
%struct.lang_hooks_for_tree_inlining = type { i8 (%union.tree_node*, %union.tree_node*)* }
%struct.lang_hooks_for_callgraph = type { %union.tree_node* (%union.tree_node**, i32*)* }
%struct.lang_hooks_for_tree_dump = type { i8 (i8*, %union.tree_node*)*, i32 (%union.tree_node*)* }
%struct.lang_hooks_for_decls = type { i32 ()*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* ()*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, i8 (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i8 (%union.tree_node*)*, void ()*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, i32 (%union.tree_node*)*, i8 (%union.tree_node*, i8)*, i8 (%union.tree_node*, i8)*, i8 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)* }
%struct.lang_hooks_for_types = type { %union.tree_node* (i32)*, i32 (%union.tree_node*)*, %union.tree_node* (i32, i32)*, %union.tree_node* (i32, i32)*, i8 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void (%union.tree_node*, i8*)*, void (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void (%struct.gimplify_omp_ctx*, %union.tree_node*)*, i8 (%union.tree_node*, %union.tree_node*)*, i8 (%union.tree_node*, %struct.array_descr_info*)*, void (%union.tree_node*, %union.tree_node**, %union.tree_node**)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, i8 }
%struct.gimplify_omp_ctx = type opaque
%struct.array_descr_info = type { i32, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, [10 x %struct.array_descr_dimen] }
%struct.array_descr_dimen = type { %union.tree_node*, %union.tree_node*, %union.tree_node* }
%struct.lang_hooks_for_lto = type { void (i8*)*, void (i8*, i64, i8*)*, void ()* }
%struct.ggc_root_tab = type { i8*, i64, i64, void (i8*)*, void (i8*)* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.tree_list = type { %struct.tree_common, %union.tree_node*, %union.tree_node* }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.dump_file_info = type { i8*, i8*, i8*, i32, i32, i32 }
%struct.register_pass_info = type { %struct.opt_pass*, i8*, i32, i32 }
%struct.lto_out_decl_state = type { [7 x %struct.lto_tree_ref_encoder], %struct.lto_cgraph_encoder_d*, %union.tree_node* }
%struct.lto_tree_ref_encoder = type { %struct.htab*, i32, %struct.VEC_tree_heap* }
%struct.VEC_tree_heap = type { %struct.VEC_tree_base }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@current_pass = common dso_local local_unnamed_addr global %struct.opt_pass* null, align 8, !dbg !0
@.str = private unnamed_addr constant [24 x i8] c"current pass = %s (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"no current pass.\0A\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@tree_contains_struct = external dso_local local_unnamed_addr global [191 x [64 x i8]], align 16
@timevar_enable = external dso_local local_unnamed_addr global i8, align 1
@last_assemble_variable_decl = external dso_local local_unnamed_addr global %union.tree_node*, align 8
@flag_inhibit_size_directive = external dso_local local_unnamed_addr global i32, align 4
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@size_directive_output = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"\09.size\09\00", align 1
@asm_out_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c", %ld\0A\00", align 1
@global_dc = external dso_local local_unnamed_addr global %struct.diagnostic_context*, align 8
@debug_hooks = external dso_local local_unnamed_addr global %struct.gcc_debug_hooks*, align 8
@profile_arc_flag = external dso_local local_unnamed_addr global i32, align 4
@flag_test_coverage = external dso_local local_unnamed_addr global i32, align 4
@flag_branch_probabilities = external dso_local local_unnamed_addr global i32, align 4
@pass_profile = external dso_local global %struct.gimple_opt_pass, align 8
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@optimize = external dso_local local_unnamed_addr global i32, align 4
@pass_combine = external dso_local global %struct.rtl_opt_pass, align 8
@graph_dump_format = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"*rest_of_compilation\00", align 1
@pass_rest_of_compilation = dso_local global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i8 ()* @gate_rest_of_compilation, i32 ()* null, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 171, i32 128, i32 0, i32 0, i32 0, i32 2 } }, align 8, !dbg !2385
@.str.6 = private unnamed_addr constant [16 x i8] c"*all-postreload\00", align 1
@pass_postreload = dso_local global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8 ()* @gate_postreload, i32 ()* null, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 0, i32 128, i32 0, i32 0, i32 0, i32 1026 } }, align 8, !dbg !2390
@all_lowering_passes = common dso_local global %struct.opt_pass* null, align 8, !dbg !2424
@all_small_ipa_passes = common dso_local global %struct.opt_pass* null, align 8, !dbg !2422
@all_regular_ipa_passes = common dso_local global %struct.opt_pass* null, align 8, !dbg !2426
@all_lto_gen_passes = common dso_local global %struct.opt_pass* null, align 8, !dbg !2428
@all_passes = common dso_local global %struct.opt_pass* null, align 8, !dbg !2420
@gcc_pass_lists = dso_local local_unnamed_addr global [6 x %struct.opt_pass**] [%struct.opt_pass** @all_lowering_passes, %struct.opt_pass** @all_small_ipa_passes, %struct.opt_pass** @all_regular_ipa_passes, %struct.opt_pass** @all_lto_gen_passes, %struct.opt_pass** @all_passes, %struct.opt_pass** null], align 16, !dbg !2395
@passes_by_id_size = common dso_local local_unnamed_addr global i32 0, align 4, !dbg !2432
@passes_by_id = common dso_local local_unnamed_addr global %struct.opt_pass** null, align 8, !dbg !2430
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"ipa-\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"tree-\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"rtl-\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"plugin cannot register a missing pass\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"plugin cannot register an unnamed pass\00", align 1
@.str.14 = private unnamed_addr constant [60 x i8] c"plugin cannot register pass %qs without reference pass name\00", align 1
@.str.15 = private unnamed_addr constant [53 x i8] c"pass %qs not found but is referenced by new pass %qs\00", align 1
@added_pass_nodes = internal unnamed_addr global %struct.pass_list_node* null, align 8, !dbg !2440
@pass_warn_unused_result = external dso_local global %struct.gimple_opt_pass, align 8
@pass_diagnose_omp_blocks = external dso_local global %struct.gimple_opt_pass, align 8
@pass_mudflap_1 = external dso_local global %struct.gimple_opt_pass, align 8
@pass_lower_omp = external dso_local global %struct.gimple_opt_pass, align 8
@pass_lower_cf = external dso_local global %struct.gimple_opt_pass, align 8
@pass_refactor_eh = external dso_local global %struct.gimple_opt_pass, align 8
@pass_lower_eh = external dso_local global %struct.gimple_opt_pass, align 8
@pass_build_cfg = external dso_local global %struct.gimple_opt_pass, align 8
@pass_lower_vector = external dso_local global %struct.gimple_opt_pass, align 8
@pass_warn_function_return = external dso_local global %struct.gimple_opt_pass, align 8
@pass_build_cgraph_edges = external dso_local global %struct.gimple_opt_pass, align 8
@pass_inline_parameters = external dso_local global %struct.gimple_opt_pass, align 8
@pass_ipa_function_and_variable_visibility = external dso_local global %struct.simple_ipa_opt_pass, align 8
@pass_ipa_early_inline = external dso_local global %struct.simple_ipa_opt_pass, align 8
@pass_early_inline = external dso_local global %struct.gimple_opt_pass, align 8
@pass_rebuild_cgraph_edges = external dso_local global %struct.gimple_opt_pass, align 8
@pass_ipa_free_lang_data = external dso_local global %struct.simple_ipa_opt_pass, align 8
@pass_early_local_passes = external dso_local global %struct.simple_ipa_opt_pass, align 8
@pass_fixup_cfg = external dso_local global %struct.gimple_opt_pass, align 8
@pass_tree_profile = external dso_local global %struct.gimple_opt_pass, align 8
@pass_cleanup_cfg = external dso_local global %struct.gimple_opt_pass, align 8
@pass_init_datastructures = external dso_local global %struct.gimple_opt_pass, align 8
@pass_expand_omp = external dso_local global %struct.gimple_opt_pass, align 8
@pass_referenced_vars = external dso_local global %struct.gimple_opt_pass, align 8
@pass_build_ssa = external dso_local global %struct.gimple_opt_pass, align 8
@pass_early_warn_uninitialized = external dso_local global %struct.gimple_opt_pass, align 8
@pass_all_early_optimizations = external dso_local global %struct.gimple_opt_pass, align 8
@pass_remove_cgraph_callee_edges = external dso_local global %struct.gimple_opt_pass, align 8
@pass_rename_ssa_copies = external dso_local global %struct.gimple_opt_pass, align 8
@pass_ccp = external dso_local global %struct.gimple_opt_pass, align 8
@pass_forwprop = external dso_local global %struct.gimple_opt_pass, align 8
@pass_build_ealias = external dso_local global %struct.gimple_opt_pass, align 8
@pass_sra_early = external dso_local global %struct.gimple_opt_pass, align 8
@pass_copy_prop = external dso_local global %struct.gimple_opt_pass, align 8
@pass_merge_phi = external dso_local global %struct.gimple_opt_pass, align 8
@pass_cd_dce = external dso_local global %struct.gimple_opt_pass, align 8
@pass_early_ipa_sra = external dso_local global %struct.gimple_opt_pass, align 8
@pass_tail_recursion = external dso_local global %struct.gimple_opt_pass, align 8
@pass_convert_switch = external dso_local global %struct.gimple_opt_pass, align 8
@pass_cleanup_eh = external dso_local global %struct.gimple_opt_pass, align 8
@pass_local_pure_const = external dso_local global %struct.gimple_opt_pass, align 8
@pass_release_ssa_names = external dso_local global %struct.gimple_opt_pass, align 8
@pass_ipa_increase_alignment = external dso_local global %struct.simple_ipa_opt_pass, align 8
@pass_ipa_matrix_reorg = external dso_local global %struct.simple_ipa_opt_pass, align 8
@pass_ipa_whole_program_visibility = external dso_local global %struct.ipa_opt_pass_d, align 8
@pass_ipa_cp = external dso_local global %struct.ipa_opt_pass_d, align 8
@pass_ipa_inline = external dso_local global %struct.ipa_opt_pass_d, align 8
@pass_ipa_reference = external dso_local global %struct.ipa_opt_pass_d, align 8
@pass_ipa_pure_const = external dso_local global %struct.ipa_opt_pass_d, align 8
@pass_ipa_type_escape = external dso_local global %struct.simple_ipa_opt_pass, align 8
@pass_ipa_pta = external dso_local global %struct.simple_ipa_opt_pass, align 8
@pass_ipa_struct_reorg = external dso_local global %struct.simple_ipa_opt_pass, align 8
@pass_ipa_lto_gimple_out = external dso_local global %struct.ipa_opt_pass_d, align 8
@pass_ipa_lto_wpa_fixup = external dso_local global %struct.ipa_opt_pass_d, align 8
@pass_ipa_lto_finish_out = external dso_local global %struct.ipa_opt_pass_d, align 8
@pass_lower_eh_dispatch = external dso_local global %struct.gimple_opt_pass, align 8
@pass_all_optimizations = external dso_local global %struct.gimple_opt_pass, align 8
@pass_strip_predict_hints = external dso_local global %struct.gimple_opt_pass, align 8
@pass_update_address_taken = external dso_local global %struct.gimple_opt_pass, align 8
@pass_complete_unrolli = external dso_local global %struct.gimple_opt_pass, align 8
@pass_call_cdce = external dso_local global %struct.gimple_opt_pass, align 8
@pass_build_alias = external dso_local global %struct.gimple_opt_pass, align 8
@pass_return_slot = external dso_local global %struct.gimple_opt_pass, align 8
@pass_phiprop = external dso_local global %struct.gimple_opt_pass, align 8
@pass_fre = external dso_local global %struct.gimple_opt_pass, align 8
@pass_vrp = external dso_local global %struct.gimple_opt_pass, align 8
@pass_dce = external dso_local global %struct.gimple_opt_pass, align 8
@pass_cselim = external dso_local global %struct.gimple_opt_pass, align 8
@pass_tree_ifcombine = external dso_local global %struct.gimple_opt_pass, align 8
@pass_phiopt = external dso_local global %struct.gimple_opt_pass, align 8
@pass_ch = external dso_local global %struct.gimple_opt_pass, align 8
@pass_stdarg = external dso_local global %struct.gimple_opt_pass, align 8
@pass_lower_complex = external dso_local global %struct.gimple_opt_pass, align 8
@pass_sra = external dso_local global %struct.gimple_opt_pass, align 8
@pass_dominator = external dso_local global %struct.gimple_opt_pass, align 8
@pass_phi_only_cprop = external dso_local global %struct.gimple_opt_pass, align 8
@pass_dse = external dso_local global %struct.gimple_opt_pass, align 8
@pass_reassoc = external dso_local global %struct.gimple_opt_pass, align 8
@pass_object_sizes = external dso_local global %struct.gimple_opt_pass, align 8
@pass_cse_sincos = external dso_local global %struct.gimple_opt_pass, align 8
@pass_optimize_bswap = external dso_local global %struct.gimple_opt_pass, align 8
@pass_split_crit_edges = external dso_local global %struct.gimple_opt_pass, align 8
@pass_pre = external dso_local global %struct.gimple_opt_pass, align 8
@pass_sink_code = external dso_local global %struct.gimple_opt_pass, align 8
@pass_tree_loop = external dso_local global %struct.gimple_opt_pass, align 8
@pass_tree_loop_init = external dso_local global %struct.gimple_opt_pass, align 8
@pass_dce_loop = external dso_local global %struct.gimple_opt_pass, align 8
@pass_lim = external dso_local global %struct.gimple_opt_pass, align 8
@pass_tree_unswitch = external dso_local global %struct.gimple_opt_pass, align 8
@pass_scev_cprop = external dso_local global %struct.gimple_opt_pass, align 8
@pass_record_bounds = external dso_local global %struct.gimple_opt_pass, align 8
@pass_check_data_deps = external dso_local global %struct.gimple_opt_pass, align 8
@pass_loop_distribution = external dso_local global %struct.gimple_opt_pass, align 8
@pass_linear_transform = external dso_local global %struct.gimple_opt_pass, align 8
@pass_graphite_transforms = external dso_local global %struct.gimple_opt_pass, align 8
@pass_iv_canon = external dso_local global %struct.gimple_opt_pass, align 8
@pass_if_conversion = external dso_local global %struct.gimple_opt_pass, align 8
@pass_vectorize = external dso_local global %struct.gimple_opt_pass, align 8
@pass_lower_vector_ssa = external dso_local global %struct.gimple_opt_pass, align 8
@pass_predcom = external dso_local global %struct.gimple_opt_pass, align 8
@pass_complete_unroll = external dso_local global %struct.gimple_opt_pass, align 8
@pass_slp_vectorize = external dso_local global %struct.gimple_opt_pass, align 8
@pass_parallelize_loops = external dso_local global %struct.gimple_opt_pass, align 8
@pass_loop_prefetch = external dso_local global %struct.gimple_opt_pass, align 8
@pass_iv_optimize = external dso_local global %struct.gimple_opt_pass, align 8
@pass_tree_loop_done = external dso_local global %struct.gimple_opt_pass, align 8
@pass_cse_reciprocals = external dso_local global %struct.gimple_opt_pass, align 8
@pass_tracer = external dso_local global %struct.gimple_opt_pass, align 8
@pass_late_warn_uninitialized = external dso_local global %struct.gimple_opt_pass, align 8
@pass_fold_builtins = external dso_local global %struct.gimple_opt_pass, align 8
@pass_tail_calls = external dso_local global %struct.gimple_opt_pass, align 8
@pass_uncprop = external dso_local global %struct.gimple_opt_pass, align 8
@pass_lower_complex_O0 = external dso_local global %struct.gimple_opt_pass, align 8
@pass_lower_resx = external dso_local global %struct.gimple_opt_pass, align 8
@pass_nrv = external dso_local global %struct.gimple_opt_pass, align 8
@pass_mudflap_2 = external dso_local global %struct.gimple_opt_pass, align 8
@pass_cleanup_cfg_post_optimizing = external dso_local global %struct.gimple_opt_pass, align 8
@pass_warn_function_noreturn = external dso_local global %struct.gimple_opt_pass, align 8
@pass_expand = external dso_local global %struct.rtl_opt_pass, align 8
@pass_init_function = external dso_local global %struct.rtl_opt_pass, align 8
@pass_jump = external dso_local global %struct.rtl_opt_pass, align 8
@pass_rtl_eh = external dso_local global %struct.rtl_opt_pass, align 8
@pass_initial_value_sets = external dso_local global %struct.rtl_opt_pass, align 8
@pass_unshare_all_rtl = external dso_local global %struct.rtl_opt_pass, align 8
@pass_instantiate_virtual_regs = external dso_local global %struct.rtl_opt_pass, align 8
@pass_into_cfg_layout_mode = external dso_local global %struct.rtl_opt_pass, align 8
@pass_jump2 = external dso_local global %struct.rtl_opt_pass, align 8
@pass_lower_subreg = external dso_local global %struct.rtl_opt_pass, align 8
@pass_df_initialize_opt = external dso_local global %struct.rtl_opt_pass, align 8
@pass_cse = external dso_local global %struct.rtl_opt_pass, align 8
@pass_rtl_fwprop = external dso_local global %struct.rtl_opt_pass, align 8
@pass_rtl_cprop = external dso_local global %struct.rtl_opt_pass, align 8
@pass_rtl_pre = external dso_local global %struct.rtl_opt_pass, align 8
@pass_rtl_hoist = external dso_local global %struct.rtl_opt_pass, align 8
@pass_rtl_store_motion = external dso_local global %struct.rtl_opt_pass, align 8
@pass_cse_after_global_opts = external dso_local global %struct.rtl_opt_pass, align 8
@pass_rtl_ifcvt = external dso_local global %struct.rtl_opt_pass, align 8
@pass_reginfo_init = external dso_local global %struct.rtl_opt_pass, align 8
@pass_loop2 = external dso_local global %struct.rtl_opt_pass, align 8
@pass_rtl_loop_init = external dso_local global %struct.rtl_opt_pass, align 8
@pass_rtl_move_loop_invariants = external dso_local global %struct.rtl_opt_pass, align 8
@pass_rtl_unswitch = external dso_local global %struct.rtl_opt_pass, align 8
@pass_rtl_unroll_and_peel_loops = external dso_local global %struct.rtl_opt_pass, align 8
@pass_rtl_doloop = external dso_local global %struct.rtl_opt_pass, align 8
@pass_rtl_loop_done = external dso_local global %struct.rtl_opt_pass, align 8
@pass_web = external dso_local global %struct.rtl_opt_pass, align 8
@pass_cse2 = external dso_local global %struct.rtl_opt_pass, align 8
@pass_rtl_dse1 = external dso_local global %struct.rtl_opt_pass, align 8
@pass_rtl_fwprop_addr = external dso_local global %struct.rtl_opt_pass, align 8
@pass_inc_dec = external dso_local global %struct.rtl_opt_pass, align 8
@pass_initialize_regs = external dso_local global %struct.rtl_opt_pass, align 8
@pass_ud_rtl_dce = external dso_local global %struct.rtl_opt_pass, align 8
@pass_if_after_combine = external dso_local global %struct.rtl_opt_pass, align 8
@pass_partition_blocks = external dso_local global %struct.rtl_opt_pass, align 8
@pass_regmove = external dso_local global %struct.rtl_opt_pass, align 8
@pass_outof_cfg_layout_mode = external dso_local global %struct.rtl_opt_pass, align 8
@pass_split_all_insns = external dso_local global %struct.rtl_opt_pass, align 8
@pass_lower_subreg2 = external dso_local global %struct.rtl_opt_pass, align 8
@pass_df_initialize_no_opt = external dso_local global %struct.rtl_opt_pass, align 8
@pass_stack_ptr_mod = external dso_local global %struct.rtl_opt_pass, align 8
@pass_mode_switching = external dso_local global %struct.rtl_opt_pass, align 8
@pass_match_asm_constraints = external dso_local global %struct.rtl_opt_pass, align 8
@pass_sms = external dso_local global %struct.rtl_opt_pass, align 8
@pass_sched = external dso_local global %struct.rtl_opt_pass, align 8
@pass_ira = external dso_local global %struct.rtl_opt_pass, align 8
@pass_postreload_cse = external dso_local global %struct.rtl_opt_pass, align 8
@pass_gcse2 = external dso_local global %struct.rtl_opt_pass, align 8
@pass_split_after_reload = external dso_local global %struct.rtl_opt_pass, align 8
@pass_branch_target_load_optimize1 = external dso_local global %struct.rtl_opt_pass, align 8
@pass_thread_prologue_and_epilogue = external dso_local global %struct.rtl_opt_pass, align 8
@pass_rtl_dse2 = external dso_local global %struct.rtl_opt_pass, align 8
@pass_stack_adjustments = external dso_local global %struct.rtl_opt_pass, align 8
@pass_peephole2 = external dso_local global %struct.rtl_opt_pass, align 8
@pass_if_after_reload = external dso_local global %struct.rtl_opt_pass, align 8
@pass_regrename = external dso_local global %struct.rtl_opt_pass, align 8
@pass_cprop_hardreg = external dso_local global %struct.rtl_opt_pass, align 8
@pass_fast_rtl_dce = external dso_local global %struct.rtl_opt_pass, align 8
@pass_reorder_blocks = external dso_local global %struct.rtl_opt_pass, align 8
@pass_branch_target_load_optimize2 = external dso_local global %struct.rtl_opt_pass, align 8
@pass_leaf_regs = external dso_local global %struct.rtl_opt_pass, align 8
@pass_split_before_sched2 = external dso_local global %struct.rtl_opt_pass, align 8
@pass_sched2 = external dso_local global %struct.rtl_opt_pass, align 8
@pass_stack_regs = external dso_local global %struct.rtl_opt_pass, align 8
@pass_split_before_regstack = external dso_local global %struct.rtl_opt_pass, align 8
@pass_stack_regs_run = external dso_local global %struct.rtl_opt_pass, align 8
@pass_compute_alignments = external dso_local global %struct.rtl_opt_pass, align 8
@pass_duplicate_computed_gotos = external dso_local global %struct.rtl_opt_pass, align 8
@pass_variable_tracking = external dso_local global %struct.rtl_opt_pass, align 8
@pass_free_cfg = external dso_local global %struct.rtl_opt_pass, align 8
@pass_machine_reorg = external dso_local global %struct.rtl_opt_pass, align 8
@pass_cleanup_barriers = external dso_local global %struct.rtl_opt_pass, align 8
@pass_delay_slots = external dso_local global %struct.rtl_opt_pass, align 8
@pass_split_for_shorten_branches = external dso_local global %struct.rtl_opt_pass, align 8
@pass_convert_to_eh_region_ranges = external dso_local global %struct.rtl_opt_pass, align 8
@pass_shorten_branches = external dso_local global %struct.rtl_opt_pass, align 8
@pass_set_nothrow_function_flags = external dso_local global %struct.rtl_opt_pass, align 8
@pass_final = external dso_local global %struct.rtl_opt_pass, align 8
@pass_df_finish = external dso_local global %struct.rtl_opt_pass, align 8
@pass_clean_state = external dso_local global %struct.rtl_opt_pass, align 8
@current_function_decl = external dso_local local_unnamed_addr global %union.tree_node*, align 8
@order = internal global %struct.cgraph_node** null, align 8, !dbg !2436
@.str.16 = private unnamed_addr constant [9 x i8] c"passes.c\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cgraph_n_nodes = external dso_local local_unnamed_addr global i32, align 4
@nnodes = internal unnamed_addr global i32 0, align 4, !dbg !2434
@dump_file_name = external dso_local local_unnamed_addr global i8*, align 8
@dump_flags = common dso_local global i32 0, align 4, !dbg !2414
@lang_hooks = external dso_local local_unnamed_addr global %struct.lang_hooks, align 8
@.str.18 = private unnamed_addr constant [25 x i8] c"\0A;; Function %s (%s)%s\0A\0A\00", align 1
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@.str.19 = private unnamed_addr constant [7 x i8] c" (hot)\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c" (unlikely executed)\00", align 1
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@quiet_flag = external dso_local local_unnamed_addr global i32, align 4
@.str.22 = private unnamed_addr constant [6 x i8] c" <%s>\00", align 1
@in_gimple_form = common dso_local local_unnamed_addr global i8 0, align 1, !dbg !2416
@cgraph_nodes = external dso_local local_unnamed_addr global %struct.cgraph_node*, align 8
@flag_generate_lto = external dso_local local_unnamed_addr global i32, align 4
@flag_ltrans = external dso_local local_unnamed_addr global i32, align 4
@.str.23 = private unnamed_addr constant [13 x i8] c"Properties:\0A\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"PROP_gimple_any\0A\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"PROP_gimple_lcf\0A\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"PROP_gimple_leh\0A\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"PROP_cfg\0A\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"PROP_referenced_vars\0A\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"PROP_ssa\0A\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"PROP_no_crit_edges\0A\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"PROP_rtl\0A\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"PROP_gimple_lomp\0A\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"PROP_gimple_lcx\0A\00", align 1
@.str.34 = private unnamed_addr constant [28 x i8] c"Already processed call to:\0A\00", align 1
@gt_ggc_r_gt_passes_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { i8* bitcast (%struct.cgraph_node*** @order to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_ma_order, void (i8*)* @gt_pch_na_order }, %struct.ggc_root_tab zeroinitializer], align 16, !dbg !2400
@first_pass_instance = common dso_local local_unnamed_addr global i8 0, align 1, !dbg !2418
@rtl_dump_and_exit = external dso_local local_unnamed_addr global i32, align 4
@flag_syntax_only = external dso_local local_unnamed_addr global i32, align 4
@reload_completed = external dso_local local_unnamed_addr global i32, align 4
@.str.35 = private unnamed_addr constant [35 x i8] c"Invalid pass positioning operation\00", align 1
@prev_added_pass_node = internal unnamed_addr global %struct.pass_list_node* null, align 8, !dbg !2438
@flag_wpa = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !2446 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !2459, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !2460, metadata !DIExpression()), !dbg !2461
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2462
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2463
  ret i32 %call, !dbg !2464
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2465 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2469
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2470
  ret i32 %call, !dbg !2471
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2472 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2526, metadata !DIExpression()), !dbg !2527
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2528
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2528
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2528
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2528
  %cmp = icmp uge i8* %0, %1, !dbg !2528
  %conv1 = zext i1 %cmp to i64, !dbg !2528
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2528
  %tobool = icmp eq i64 %expval, 0, !dbg !2528
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2528

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2528
  br label %cond.end, !dbg !2528

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2528
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2528
  %2 = load i8, i8* %0, align 1, !dbg !2528
  %conv3 = zext i8 %2 to i32, !dbg !2528
  br label %cond.end, !dbg !2528

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2528
  ret i32 %cond, !dbg !2529
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2530 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2532, metadata !DIExpression()), !dbg !2533
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2534
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2534
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2534
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2534
  %cmp = icmp uge i8* %0, %1, !dbg !2534
  %conv1 = zext i1 %cmp to i64, !dbg !2534
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2534
  %tobool = icmp eq i64 %expval, 0, !dbg !2534
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2534

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2534
  br label %cond.end, !dbg !2534

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2534
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2534
  %2 = load i8, i8* %0, align 1, !dbg !2534
  %conv3 = zext i8 %2 to i32, !dbg !2534
  br label %cond.end, !dbg !2534

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2534
  ret i32 %cond, !dbg !2535
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2536 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2537
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2537
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2537
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2537
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2537
  %cmp = icmp uge i8* %1, %2, !dbg !2537
  %conv1 = zext i1 %cmp to i64, !dbg !2537
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2537
  %tobool = icmp eq i64 %expval, 0, !dbg !2537
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2537

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2537
  br label %cond.end, !dbg !2537

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2537
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2537
  %3 = load i8, i8* %1, align 1, !dbg !2537
  %conv3 = zext i8 %3 to i32, !dbg !2537
  br label %cond.end, !dbg !2537

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2537
  ret i32 %cond, !dbg !2538
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2539 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2543, metadata !DIExpression()), !dbg !2544
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2545
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2546
  ret i32 %call, !dbg !2547
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2548 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2552, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2553, metadata !DIExpression()), !dbg !2554
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2555
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2555
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2555
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2555
  %cmp = icmp uge i8* %0, %1, !dbg !2555
  %conv1 = zext i1 %cmp to i64, !dbg !2555
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2555
  %tobool = icmp eq i64 %expval, 0, !dbg !2555
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2555

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2555
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2555
  br label %cond.end, !dbg !2555

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2555
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2555
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2555
  store i8 %conv2, i8* %0, align 1, !dbg !2555
  %conv6 = and i32 %__c, 255, !dbg !2555
  br label %cond.end, !dbg !2555

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2555
  ret i32 %cond, !dbg !2556
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2557 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2559, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2560, metadata !DIExpression()), !dbg !2561
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2562
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2562
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2562
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2562
  %cmp = icmp uge i8* %0, %1, !dbg !2562
  %conv1 = zext i1 %cmp to i64, !dbg !2562
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2562
  %tobool = icmp eq i64 %expval, 0, !dbg !2562
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2562

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2562
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2562
  br label %cond.end, !dbg !2562

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2562
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2562
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2562
  store i8 %conv2, i8* %0, align 1, !dbg !2562
  %conv6 = and i32 %__c, 255, !dbg !2562
  br label %cond.end, !dbg !2562

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2562
  ret i32 %cond, !dbg !2563
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2564 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2566, metadata !DIExpression()), !dbg !2567
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2568
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2568
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2568
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2568
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2568
  %cmp = icmp uge i8* %1, %2, !dbg !2568
  %conv1 = zext i1 %cmp to i64, !dbg !2568
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2568
  %tobool = icmp eq i64 %expval, 0, !dbg !2568
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2568

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2568
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2568
  br label %cond.end, !dbg !2568

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2568
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2568
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2568
  store i8 %conv4, i8* %1, align 1, !dbg !2568
  %conv6 = and i32 %__c, 255, !dbg !2568
  br label %cond.end, !dbg !2568

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2568
  ret i32 %cond, !dbg !2569
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2570 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2576, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2577, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2578, metadata !DIExpression()), !dbg !2579
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2580
  ret i64 %call, !dbg !2581
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2582 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2584, metadata !DIExpression()), !dbg !2585
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2586
  %0 = load i32, i32* %_flags, align 8, !dbg !2586
  %and = lshr i32 %0, 4, !dbg !2586
  %and.lobit = and i32 %and, 1, !dbg !2586
  ret i32 %and.lobit, !dbg !2587
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2588 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2590, metadata !DIExpression()), !dbg !2591
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2592
  %0 = load i32, i32* %_flags, align 8, !dbg !2592
  %and = lshr i32 %0, 5, !dbg !2592
  %and.lobit = and i32 %and, 1, !dbg !2592
  ret i32 %and.lobit, !dbg !2593
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2594 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2597, metadata !DIExpression()), !dbg !2598
  %__c.off = add i32 %__c, 128, !dbg !2599
  %0 = icmp ult i32 %__c.off, 384, !dbg !2599
  br i1 %0, label %cond.true, label %cond.end, !dbg !2599

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2600
  %1 = load i32*, i32** %call, align 8, !dbg !2601
  %idxprom = sext i32 %__c to i64, !dbg !2602
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2602
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2602
  br label %cond.end, !dbg !2603

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2603
  ret i32 %cond, !dbg !2604
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2605 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2607, metadata !DIExpression()), !dbg !2608
  %__c.off = add i32 %__c, 128, !dbg !2609
  %0 = icmp ult i32 %__c.off, 384, !dbg !2609
  br i1 %0, label %cond.true, label %cond.end, !dbg !2609

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2610
  %1 = load i32*, i32** %call, align 8, !dbg !2611
  %idxprom = sext i32 %__c to i64, !dbg !2612
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2612
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2612
  br label %cond.end, !dbg !2613

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2613
  ret i32 %cond, !dbg !2614
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2615 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2620, metadata !DIExpression()), !dbg !2621
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2622
  %conv = trunc i64 %call to i32, !dbg !2623
  ret i32 %conv, !dbg !2624
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2625 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2629, metadata !DIExpression()), !dbg !2630
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2631
  ret i64 %call, !dbg !2632
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2633 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2638, metadata !DIExpression()), !dbg !2639
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2640
  ret i64 %call, !dbg !2641
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2642 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2648, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2649, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2650, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2651, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2652, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i64 0, metadata !2653, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2654, metadata !DIExpression()), !dbg !2658
  br label %while.cond, !dbg !2659

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2660
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2658
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2654, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2653, metadata !DIExpression()), !dbg !2658
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2661
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2659

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2662
  %div = lshr i64 %add, 1, !dbg !2664
  call void @llvm.dbg.value(metadata i64 %div, metadata !2655, metadata !DIExpression()), !dbg !2658
  %mul = mul i64 %div, %__size, !dbg !2665
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2666
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2656, metadata !DIExpression()), !dbg !2658
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2667
  call void @llvm.dbg.value(metadata i32 %call, metadata !2657, metadata !DIExpression()), !dbg !2658
  %cmp1 = icmp slt i32 %call, 0, !dbg !2668
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2670

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2671
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2673

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2674
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2653, metadata !DIExpression()), !dbg !2658
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2658
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2658
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2654, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2653, metadata !DIExpression()), !dbg !2658
  br label %while.cond, !dbg !2659, !llvm.loop !2675

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2658
  ret i8* %retval.0, !dbg !2677
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2678 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2684, metadata !DIExpression()), !dbg !2685
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2686
  ret double %call, !dbg !2687
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2688 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2697, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2698, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i32 %base, metadata !2699, metadata !DIExpression()), !dbg !2700
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2701
  ret i64 %call, !dbg !2702
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2703 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2709, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2710, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i32 %base, metadata !2711, metadata !DIExpression()), !dbg !2712
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2713
  ret i64 %call, !dbg !2714
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2715 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2726, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2727, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i32 %base, metadata !2728, metadata !DIExpression()), !dbg !2729
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2730
  ret i64 %call, !dbg !2731
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2732 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2736, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2737, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i32 %base, metadata !2738, metadata !DIExpression()), !dbg !2739
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2740
  ret i64 %call, !dbg !2741
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2742 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2782, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2783, metadata !DIExpression()), !dbg !2784
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2785
  ret i32 %call, !dbg !2786
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2787 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2789, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2790, metadata !DIExpression()), !dbg !2791
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2792
  ret i32 %call, !dbg !2793
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2794 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2798, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2799, metadata !DIExpression()), !dbg !2800
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2801
  ret i32 %call, !dbg !2802
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2803 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2807, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2808, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2809, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2810, metadata !DIExpression()), !dbg !2811
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2812
  ret i32 %call, !dbg !2813
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2814 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2818, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2819, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2820, metadata !DIExpression()), !dbg !2821
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2820, metadata !DIExpression(DW_OP_deref)), !dbg !2821
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2822
  ret i32 %call, !dbg !2823
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2824 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2828, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2829, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2830, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2831, metadata !DIExpression()), !dbg !2832
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2831, metadata !DIExpression(DW_OP_deref)), !dbg !2832
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2833
  ret i32 %call, !dbg !2834
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2835 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2859, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2860, metadata !DIExpression()), !dbg !2861
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2862
  ret i32 %call, !dbg !2863
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2864 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2866, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2867, metadata !DIExpression()), !dbg !2868
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2869
  ret i32 %call, !dbg !2870
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2871 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2875, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2876, metadata !DIExpression()), !dbg !2877
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2878
  ret i32 %call, !dbg !2879
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2880 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2884, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2885, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2886, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2887, metadata !DIExpression()), !dbg !2888
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2889
  ret i32 %call, !dbg !2890
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @print_current_pass(%struct._IO_FILE* %file) local_unnamed_addr #5 !dbg !2891 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !2895, metadata !DIExpression()), !dbg !2896
  %0 = load %struct.opt_pass*, %struct.opt_pass** @current_pass, align 8, !dbg !2897
  %tobool = icmp eq %struct.opt_pass* %0, null, !dbg !2897
  br i1 %tobool, label %if.else, label %if.then, !dbg !2899

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %0, i64 0, i32 1, !dbg !2900
  %1 = load i8*, i8** %name, align 8, !dbg !2900
  %static_pass_number = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %0, i64 0, i32 6, !dbg !2901
  %2 = load i32, i32* %static_pass_number, align 8, !dbg !2901
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %1, i32 %2) #6, !dbg !2902
  br label %if.end, !dbg !2902

if.else:                                          ; preds = %entry
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2903
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !2904
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @debug_pass() local_unnamed_addr #5 !dbg !2905 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2906
  tail call void @print_current_pass(%struct._IO_FILE* %0) #7, !dbg !2907
  ret void, !dbg !2908
}

; Function Attrs: nounwind uwtable
define dso_local void @rest_of_decl_compilation(%union.tree_node* %decl, i32 %top_level, i32 %at_end) local_unnamed_addr #5 !dbg !2909 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !2913, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i32 %top_level, metadata !2914, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i32 %at_end, metadata !2915, metadata !DIExpression()), !dbg !2929
  %attributes = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6, !dbg !2930
  %0 = load %union.tree_node*, %union.tree_node** %attributes, align 8, !dbg !2930
  %call = tail call %union.tree_node* @lookup_attribute(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %union.tree_node* %0) #6, !dbg !2931
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2916, metadata !DIExpression()), !dbg !2932
  %tobool = icmp eq %union.tree_node* %call, null, !dbg !2933
  br i1 %tobool, label %if.end, label %if.then, !dbg !2935

if.then:                                          ; preds = %entry
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2936
  %2 = bitcast %union.tree_node** %1 to %struct.tree_list**, !dbg !2936
  %3 = load %struct.tree_list*, %struct.tree_list** %2, align 8, !dbg !2936
  %value2 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %3, i64 0, i32 2, !dbg !2936
  %4 = bitcast %union.tree_node** %value2 to %struct.tree_string**, !dbg !2936
  %5 = load %struct.tree_string*, %struct.tree_string** %4, align 8, !dbg !2936
  %arraydecay = getelementptr inbounds %struct.tree_string, %struct.tree_string* %5, i64 0, i32 2, i64 0, !dbg !2938
  %call3 = tail call %union.tree_node* @get_identifier(i8* nonnull %arraydecay) #6, !dbg !2939
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !2916, metadata !DIExpression()), !dbg !2932
  tail call void @assemble_alias(%union.tree_node* %decl, %union.tree_node* %call3) #6, !dbg !2940
  br label %if.end, !dbg !2941

if.end:                                           ; preds = %entry, %if.then
  %6 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2942
  %bf.load = load i64, i64* %6, align 8, !dbg !2942
  %bf.cast = and i64 %bf.load, 65535, !dbg !2942
  %arrayidx4 = getelementptr inbounds [191 x [64 x i8]], [191 x [64 x i8]]* @tree_contains_struct, i64 0, i64 %bf.cast, i64 13, !dbg !2942
  %7 = load i8, i8* %arrayidx4, align 1, !dbg !2942
  %tobool5 = icmp eq i8 %7, 0, !dbg !2942
  br i1 %tobool5, label %if.end14, label %land.lhs.true, !dbg !2942

land.lhs.true:                                    ; preds = %if.end
  %assembler_name = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !2942
  %8 = load %union.tree_node*, %union.tree_node** %assembler_name, align 8, !dbg !2942
  %cmp = icmp eq %union.tree_node* %8, null, !dbg !2942
  br i1 %cmp, label %if.end14, label %land.lhs.true7, !dbg !2944

land.lhs.true7:                                   ; preds = %land.lhs.true
  %decl_flag_0 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2945
  %9 = bitcast i40* %decl_flag_0 to i64*, !dbg !2945
  %bf.load9 = load i64, i64* %9, align 8, !dbg !2945
  %bf.cast1111 = and i64 %bf.load9, 16777216, !dbg !2945
  %tobool12 = icmp eq i64 %bf.cast1111, 0, !dbg !2945
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !2946

if.then13:                                        ; preds = %land.lhs.true7
  tail call void @make_decl_rtl(%union.tree_node* %decl) #6, !dbg !2947
  %bf.load16.pre = load i64, i64* %6, align 8, !dbg !2948
  br label %if.end14, !dbg !2947

if.end14:                                         ; preds = %land.lhs.true7, %land.lhs.true, %if.end, %if.then13
  %bf.load112 = phi i64 [ %bf.load, %land.lhs.true7 ], [ %bf.load, %land.lhs.true ], [ %bf.load, %if.end ], [ %bf.load16.pre, %if.then13 ], !dbg !2948
  %bf.cast193 = and i64 %bf.load112, 67108864, !dbg !2948
  %tobool20 = icmp eq i64 %bf.cast193, 0, !dbg !2948
  br i1 %tobool20, label %lor.lhs.false, label %do.body, !dbg !2949

lor.lhs.false:                                    ; preds = %if.end14
  %decl_flag_1 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2950
  %10 = bitcast i40* %decl_flag_1 to i64*, !dbg !2950
  %bf.load22 = load i64, i64* %10, align 8, !dbg !2950
  %bf.cast254 = and i64 %bf.load22, 33554432, !dbg !2950
  %tobool26 = icmp eq i64 %bf.cast254, 0, !dbg !2950
  br i1 %tobool26, label %lor.lhs.false27, label %do.body, !dbg !2951

lor.lhs.false27:                                  ; preds = %lor.lhs.false
  %bf.cast315 = and i64 %bf.load112, 65535, !dbg !2952
  %cmp32 = icmp eq i64 %bf.cast315, 29, !dbg !2952
  br i1 %cmp32, label %do.body, label %if.else110, !dbg !2953

do.body:                                          ; preds = %lor.lhs.false, %if.end14, %lor.lhs.false27
  %11 = load i8, i8* @timevar_enable, align 1, !dbg !2954
  %tobool35 = icmp eq i8 %11, 0, !dbg !2954
  br i1 %tobool35, label %do.end, label %if.then36, !dbg !2957

if.then36:                                        ; preds = %do.body
  tail call void @timevar_push_1(i32 117) #6, !dbg !2954
  br label %do.end, !dbg !2954

do.end:                                           ; preds = %do.body, %if.then36
  %tobool38 = icmp eq i32 %at_end, 0, !dbg !2958
  br i1 %tobool38, label %lor.lhs.false39, label %land.lhs.true47, !dbg !2960

lor.lhs.false39:                                  ; preds = %do.end
  %defer_output = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 4, !dbg !2961
  %12 = bitcast i24* %defer_output to i32*, !dbg !2961
  %bf.load41 = load i32, i32* %12, align 8, !dbg !2961
  %bf.clear42 = and i32 %bf.load41, 1, !dbg !2961
  %tobool43 = icmp eq i32 %bf.clear42, 0, !dbg !2961
  br i1 %tobool43, label %land.lhs.true47, label %lor.lhs.false44, !dbg !2962

lor.lhs.false44:                                  ; preds = %lor.lhs.false39
  %initial = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, !dbg !2963
  %13 = load %union.tree_node*, %union.tree_node** %initial, align 8, !dbg !2963
  %tobool46 = icmp eq %union.tree_node* %13, null, !dbg !2963
  br i1 %tobool46, label %if.end64, label %land.lhs.true47, !dbg !2964

land.lhs.true47:                                  ; preds = %lor.lhs.false44, %lor.lhs.false39, %do.end
  %decl_flag_149 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2965
  %14 = bitcast i40* %decl_flag_149 to i64*, !dbg !2965
  %bf.load50 = load i64, i64* %14, align 8, !dbg !2965
  %bf.cast539 = and i64 %bf.load50, 33554432, !dbg !2965
  %tobool54 = icmp eq i64 %bf.cast539, 0, !dbg !2965
  br i1 %tobool54, label %if.then55, label %if.end64, !dbg !2966

if.then55:                                        ; preds = %land.lhs.true47
  %bf.load57 = load i64, i64* %6, align 8, !dbg !2967
  %bf.cast5910 = and i64 %bf.load57, 65535, !dbg !2970
  %cmp60 = icmp eq i64 %bf.cast5910, 29, !dbg !2970
  br i1 %cmp60, label %if.else, label %if.then62, !dbg !2971

if.then62:                                        ; preds = %if.then55
  tail call void @varpool_finalize_decl(%union.tree_node* %decl) #6, !dbg !2972
  br label %if.end64, !dbg !2972

if.else:                                          ; preds = %if.then55
  tail call void @assemble_variable(%union.tree_node* %decl, i32 %top_level, i32 %at_end, i32 0) #6, !dbg !2973
  br label %if.end64

if.end64:                                         ; preds = %lor.lhs.false44, %land.lhs.true47, %if.then62, %if.else
  %15 = load %union.tree_node*, %union.tree_node** @last_assemble_variable_decl, align 8, !dbg !2974
  %cmp65 = icmp eq %union.tree_node* %15, %decl, !dbg !2975
  br i1 %cmp65, label %do.body68, label %do.body104, !dbg !2976

do.body68:                                        ; preds = %if.end64
  %rtl = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2977
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8, !dbg !2977
  %tobool69 = icmp eq %struct.rtx_def* %16, null, !dbg !2977
  br i1 %tobool69, label %cond.false, label %cond.true, !dbg !2977

cond.true:                                        ; preds = %do.body68
  br label %cond.end, !dbg !2977

cond.false:                                       ; preds = %do.body68
  tail call void @make_decl_rtl(%union.tree_node* %decl) #6, !dbg !2977
  %cond.pre = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8, !dbg !2977
  br label %cond.end, !dbg !2977

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %cond.pre, %cond.false ], [ %16, %cond.true ], !dbg !2977
  %arrayidx74 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2977
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx74 to %struct.rtx_def**, !dbg !2977
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2977
  %rt_str = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i64 0, i32 1, i32 0, i32 0, i64 0, i32 0, !dbg !2977
  %18 = load i8*, i8** %rt_str, align 8, !dbg !2977
  call void @llvm.dbg.value(metadata i8* %18, metadata !2918, metadata !DIExpression()), !dbg !2978
  %19 = load i32, i32* @flag_inhibit_size_directive, align 4, !dbg !2979
  %tobool78 = icmp eq i32 %19, 0, !dbg !2979
  br i1 %tobool78, label %land.lhs.true79, label %do.body104, !dbg !2979

land.lhs.true79:                                  ; preds = %cond.end
  %size81 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2979
  %20 = load %union.tree_node*, %union.tree_node** %size81, align 8, !dbg !2979
  %tobool82 = icmp ne %union.tree_node* %20, null, !dbg !2979
  %or.cond.not = and i1 %tobool38, %tobool82, !dbg !2979
  %tobool86 = icmp ne i32 %top_level, 0, !dbg !2979
  %or.cond1 = and i1 %or.cond.not, %tobool86, !dbg !2979
  br i1 %or.cond1, label %land.lhs.true87, label %do.body104, !dbg !2979

land.lhs.true87:                                  ; preds = %land.lhs.true79
  %initial89 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, !dbg !2979
  %21 = load %union.tree_node*, %union.tree_node** %initial89, align 8, !dbg !2979
  %22 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16, !dbg !2979
  %cmp90 = icmp ne %union.tree_node* %21, %22, !dbg !2979
  %23 = load i32, i32* @size_directive_output, align 4, !dbg !2979
  %tobool93 = icmp ne i32 %23, 0, !dbg !2979
  %or.cond2 = or i1 %cmp90, %tobool93, !dbg !2979
  br i1 %or.cond2, label %do.body104, label %if.then94, !dbg !2979

if.then94:                                        ; preds = %land.lhs.true87
  store i32 1, i32* @size_directive_output, align 4, !dbg !2980
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2980
  %24 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !2980
  %call95 = tail call i64 @int_size_in_bytes(%union.tree_node* %24) #6, !dbg !2980
  call void @llvm.dbg.value(metadata i64 %call95, metadata !2924, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata i64 %call95, metadata !2925, metadata !DIExpression()), !dbg !2981
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8, !dbg !2982
  %call97 = tail call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %struct._IO_FILE* %25) #6, !dbg !2982
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8, !dbg !2982
  tail call void @assemble_name(%struct._IO_FILE* %26, i8* %18) #6, !dbg !2982
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8, !dbg !2982
  %call98 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i64 %call95) #6, !dbg !2982
  br label %do.body104, !dbg !2980

do.body104:                                       ; preds = %cond.end, %if.end64, %if.then94, %land.lhs.true79, %land.lhs.true87
  %28 = load i8, i8* @timevar_enable, align 1, !dbg !2983
  %tobool105 = icmp eq i8 %28, 0, !dbg !2983
  br i1 %tobool105, label %if.end139, label %if.then106, !dbg !2986

if.then106:                                       ; preds = %do.body104
  tail call void @timevar_pop_1(i32 117) #6, !dbg !2983
  br label %if.end139, !dbg !2983

if.else110:                                       ; preds = %lor.lhs.false27
  %cmp115 = icmp eq i64 %bf.cast315, 35, !dbg !2987
  br i1 %cmp115, label %land.lhs.true117, label %if.end139, !dbg !2989

land.lhs.true117:                                 ; preds = %if.else110
  %29 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !2990
  %arrayidx118 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %29, i64 0, i32 1, i64 5, !dbg !2990
  %30 = load i32, i32* %arrayidx118, align 4, !dbg !2990
  %tobool119 = icmp eq i32 %30, 0, !dbg !2990
  br i1 %tobool119, label %lor.lhs.false120, label %if.end139, !dbg !2991

lor.lhs.false120:                                 ; preds = %land.lhs.true117
  %arrayidx122 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %29, i64 0, i32 1, i64 4, !dbg !2992
  %31 = load i32, i32* %arrayidx122, align 8, !dbg !2992
  %tobool123 = icmp eq i32 %31, 0, !dbg !2992
  br i1 %tobool123, label %do.body125, label %if.end139, !dbg !2993

do.body125:                                       ; preds = %lor.lhs.false120
  %32 = load i8, i8* @timevar_enable, align 1, !dbg !2994
  %tobool126 = icmp eq i8 %32, 0, !dbg !2994
  br i1 %tobool126, label %do.end130, label %if.then127, !dbg !2998

if.then127:                                       ; preds = %do.body125
  tail call void @timevar_push_1(i32 166) #6, !dbg !2994
  br label %do.end130, !dbg !2994

do.end130:                                        ; preds = %do.body125, %if.then127
  %33 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8, !dbg !2999
  %type_decl = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %33, i64 0, i32 18, !dbg !3000
  %34 = load void (%union.tree_node*, i32)*, void (%union.tree_node*, i32)** %type_decl, align 8, !dbg !3000
  %tobool131 = icmp eq i32 %top_level, 0, !dbg !3001
  %lnot.ext = zext i1 %tobool131 to i32, !dbg !3001
  tail call void %34(%union.tree_node* %decl, i32 %lnot.ext) #6, !dbg !2999
  %35 = load i8, i8* @timevar_enable, align 1, !dbg !3002
  %tobool133 = icmp eq i8 %35, 0, !dbg !3002
  br i1 %tobool133, label %if.end139, label %if.then134, !dbg !3005

if.then134:                                       ; preds = %do.end130
  tail call void @timevar_pop_1(i32 166) #6, !dbg !3002
  br label %if.end139, !dbg !3002

if.end139:                                        ; preds = %do.body104, %do.end130, %lor.lhs.false120, %land.lhs.true117, %if.else110, %if.then134, %if.then106
  %bf.load141 = load i64, i64* %6, align 8, !dbg !3006
  %bf.cast1437 = and i64 %bf.load141, 65535, !dbg !3008
  %cmp144 = icmp eq i64 %bf.cast1437, 32, !dbg !3008
  br i1 %cmp144, label %land.lhs.true146, label %if.end156, !dbg !3009

land.lhs.true146:                                 ; preds = %if.end139
  %decl_flag_1148 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3010
  %36 = bitcast i40* %decl_flag_1148 to i64*, !dbg !3010
  %bf.load149 = load i64, i64* %36, align 8, !dbg !3010
  %bf.cast1528 = and i64 %bf.load149, 33554432, !dbg !3010
  %tobool153 = icmp eq i64 %bf.cast1528, 0, !dbg !3010
  br i1 %tobool153, label %if.then154, label %if.end156, !dbg !3011

if.then154:                                       ; preds = %land.lhs.true146
  %call155 = tail call %struct.varpool_node* @varpool_node(%union.tree_node* %decl) #6, !dbg !3012
  br label %if.end156, !dbg !3012

if.end156:                                        ; preds = %land.lhs.true146, %if.then154, %if.end139
  ret void, !dbg !3013
}

declare dso_local %union.tree_node* @lookup_attribute(i8*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @get_identifier(i8*) local_unnamed_addr #2

declare dso_local void @assemble_alias(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local void @make_decl_rtl(%union.tree_node*) local_unnamed_addr #2

declare dso_local void @timevar_push_1(i32) local_unnamed_addr #2

declare dso_local void @varpool_finalize_decl(%union.tree_node*) local_unnamed_addr #2

declare dso_local void @assemble_variable(%union.tree_node*, i32, i32, i32) local_unnamed_addr #2

declare dso_local i64 @int_size_in_bytes(%union.tree_node*) local_unnamed_addr #2

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) local_unnamed_addr #2

declare dso_local void @assemble_name(%struct._IO_FILE*, i8*) local_unnamed_addr #2

declare dso_local void @timevar_pop_1(i32) local_unnamed_addr #2

declare dso_local %struct.varpool_node* @varpool_node(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @rest_of_type_compilation(%union.tree_node* %type, i32 %toplev) local_unnamed_addr #5 !dbg !3014 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !3018, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata i32 %toplev, metadata !3019, metadata !DIExpression()), !dbg !3020
  %0 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !3021
  %arrayidx = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %0, i64 0, i32 1, i64 4, !dbg !3021
  %1 = load i32, i32* %arrayidx, align 8, !dbg !3021
  %cmp = icmp eq i32 %1, 0, !dbg !3023
  br i1 %cmp, label %lor.lhs.false, label %do.end11, !dbg !3024

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %0, i64 0, i32 1, i64 5, !dbg !3025
  %2 = load i32, i32* %arrayidx2, align 4, !dbg !3025
  %cmp3 = icmp eq i32 %2, 0, !dbg !3026
  br i1 %cmp3, label %do.body, label %do.end11, !dbg !3027

do.body:                                          ; preds = %lor.lhs.false
  %3 = load i8, i8* @timevar_enable, align 1, !dbg !3028
  %tobool = icmp eq i8 %3, 0, !dbg !3028
  br i1 %tobool, label %do.end, label %if.then4, !dbg !3031

if.then4:                                         ; preds = %do.body
  tail call void @timevar_push_1(i32 166) #6, !dbg !3028
  br label %do.end, !dbg !3028

do.end:                                           ; preds = %do.body, %if.then4
  %4 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8, !dbg !3032
  %type_decl = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %4, i64 0, i32 18, !dbg !3033
  %5 = load void (%union.tree_node*, i32)*, void (%union.tree_node*, i32)** %type_decl, align 8, !dbg !3033
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3034
  %6 = load %union.tree_node*, %union.tree_node** %chain, align 8, !dbg !3034
  %tobool6 = icmp eq i32 %toplev, 0, !dbg !3035
  %lnot.ext = zext i1 %tobool6 to i32, !dbg !3035
  tail call void %5(%union.tree_node* %6, i32 %lnot.ext) #6, !dbg !3032
  %7 = load i8, i8* @timevar_enable, align 1, !dbg !3036
  %tobool8 = icmp eq i8 %7, 0, !dbg !3036
  br i1 %tobool8, label %do.end11, label %if.then9, !dbg !3039

if.then9:                                         ; preds = %do.end
  tail call void @timevar_pop_1(i32 166) #6, !dbg !3036
  br label %do.end11, !dbg !3036

do.end11:                                         ; preds = %do.end, %lor.lhs.false, %entry, %if.then9
  ret void, !dbg !3040
}

; Function Attrs: nounwind uwtable
define dso_local void @finish_optimization_passes() local_unnamed_addr #5 !dbg !3041 {
entry:
  %0 = load i8, i8* @timevar_enable, align 1, !dbg !3055
  %tobool = icmp eq i8 %0, 0, !dbg !3055
  br i1 %tobool, label %do.end, label %if.then, !dbg !3058

if.then:                                          ; preds = %entry
  tail call void @timevar_push_1(i32 3) #6, !dbg !3055
  br label %do.end, !dbg !3055

do.end:                                           ; preds = %entry, %if.then
  %1 = load i32, i32* @profile_arc_flag, align 4, !dbg !3059
  %2 = load i32, i32* @flag_test_coverage, align 4, !dbg !3061
  %3 = or i32 %1, %2, !dbg !3062
  %4 = load i32, i32* @flag_branch_probabilities, align 4, !dbg !3063
  %5 = or i32 %3, %4, !dbg !3062
  %6 = icmp eq i32 %5, 0, !dbg !3062
  br i1 %6, label %if.end9, label %if.then5, !dbg !3062

if.then5:                                         ; preds = %do.end
  %7 = load i32, i32* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_profile, i64 0, i32 0, i32 6), align 8, !dbg !3064
  %call = tail call %struct._IO_FILE* @dump_begin(i32 %7, i32* null) #6, !dbg !3066
  store %struct._IO_FILE* %call, %struct._IO_FILE** @dump_file, align 8, !dbg !3067
  tail call void @end_branch_prob() #6, !dbg !3068
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3069
  %tobool6 = icmp eq %struct._IO_FILE* %8, null, !dbg !3069
  br i1 %tobool6, label %if.end9, label %if.then7, !dbg !3071

if.then7:                                         ; preds = %if.then5
  %9 = load i32, i32* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_profile, i64 0, i32 0, i32 6), align 8, !dbg !3072
  tail call void @dump_end(i32 %9, %struct._IO_FILE* nonnull %8) #6, !dbg !3073
  br label %if.end9, !dbg !3073

if.end9:                                          ; preds = %if.then5, %do.end, %if.then7
  %10 = load i32, i32* @optimize, align 4, !dbg !3074
  %cmp = icmp sgt i32 %10, 0, !dbg !3076
  br i1 %cmp, label %if.then10, label %if.end15, !dbg !3077

if.then10:                                        ; preds = %if.end9
  %11 = load i32, i32* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_combine, i64 0, i32 0, i32 6), align 8, !dbg !3078
  %call11 = tail call %struct._IO_FILE* @dump_begin(i32 %11, i32* null) #6, !dbg !3080
  store %struct._IO_FILE* %call11, %struct._IO_FILE** @dump_file, align 8, !dbg !3081
  %tobool12 = icmp eq %struct._IO_FILE* %call11, null, !dbg !3082
  br i1 %tobool12, label %if.end15, label %if.then13, !dbg !3084

if.then13:                                        ; preds = %if.then10
  tail call void @dump_combine_total_stats(%struct._IO_FILE* nonnull %call11) #6, !dbg !3085
  %12 = load i32, i32* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_combine, i64 0, i32 0, i32 6), align 8, !dbg !3087
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3088
  tail call void @dump_end(i32 %12, %struct._IO_FILE* %13) #6, !dbg !3089
  br label %if.end15, !dbg !3090

if.end15:                                         ; preds = %if.then10, %if.then13, %if.end9
  %14 = load i32, i32* @graph_dump_format, align 4, !dbg !3091
  %cmp16 = icmp eq i32 %14, 0, !dbg !3093
  br i1 %cmp16, label %do.body29, label %for.cond.preheader, !dbg !3094

for.cond.preheader:                               ; preds = %if.end15
  br label %for.cond, !dbg !3095

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %i.0 = phi i32 [ %inc, %for.inc ], [ 11, %for.cond.preheader ], !dbg !3097
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3043, metadata !DIExpression()), !dbg !3098
  %call18 = tail call %struct.dump_file_info* @get_dump_file_info(i32 %i.0) #6, !dbg !3099
  call void @llvm.dbg.value(metadata %struct.dump_file_info* %call18, metadata !3044, metadata !DIExpression()), !dbg !3098
  %cmp19 = icmp eq %struct.dump_file_info* %call18, null, !dbg !3101
  br i1 %cmp19, label %do.body29.loopexit, label %for.body, !dbg !3095

for.body:                                         ; preds = %for.cond
  %call20 = tail call i32 @dump_initialized_p(i32 %i.0) #6, !dbg !3102
  %tobool21 = icmp eq i32 %call20, 0, !dbg !3102
  br i1 %tobool21, label %for.inc, label %land.lhs.true, !dbg !3104

land.lhs.true:                                    ; preds = %for.body
  %flags = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %call18, i64 0, i32 3, !dbg !3105
  %15 = load i32, i32* %flags, align 8, !dbg !3105
  %and = and i32 %15, 8192, !dbg !3106
  %cmp22 = icmp eq i32 %and, 0, !dbg !3107
  br i1 %cmp22, label %for.inc, label %land.lhs.true23, !dbg !3108

land.lhs.true23:                                  ; preds = %land.lhs.true
  %call24 = tail call i8* @get_dump_file_name(i32 %i.0) #6, !dbg !3109
  call void @llvm.dbg.value(metadata i8* %call24, metadata !3054, metadata !DIExpression()), !dbg !3098
  %cmp25 = icmp eq i8* %call24, null, !dbg !3110
  br i1 %cmp25, label %for.inc, label %if.then26, !dbg !3111

if.then26:                                        ; preds = %land.lhs.true23
  tail call void @finish_graph_dump_file(i8* nonnull %call24) #6, !dbg !3112
  tail call void @free(i8* nonnull %call24) #6, !dbg !3114
  br label %for.inc, !dbg !3115

for.inc:                                          ; preds = %land.lhs.true23, %land.lhs.true, %for.body, %if.then26
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3116
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3043, metadata !DIExpression()), !dbg !3098
  br label %for.cond, !dbg !3117, !llvm.loop !3118

do.body29.loopexit:                               ; preds = %for.cond
  br label %do.body29, !dbg !3120

do.body29:                                        ; preds = %do.body29.loopexit, %if.end15
  %16 = load i8, i8* @timevar_enable, align 1, !dbg !3120
  %tobool30 = icmp eq i8 %16, 0, !dbg !3120
  br i1 %tobool30, label %do.end34, label %if.then31, !dbg !3123

if.then31:                                        ; preds = %do.body29
  tail call void @timevar_pop_1(i32 3) #6, !dbg !3120
  br label %do.end34, !dbg !3120

do.end34:                                         ; preds = %do.body29, %if.then31
  ret void, !dbg !3124
}

declare dso_local %struct._IO_FILE* @dump_begin(i32, i32*) local_unnamed_addr #2

declare dso_local void @end_branch_prob() local_unnamed_addr #2

declare dso_local void @dump_end(i32, %struct._IO_FILE*) local_unnamed_addr #2

declare dso_local void @dump_combine_total_stats(%struct._IO_FILE*) local_unnamed_addr #2

declare dso_local %struct.dump_file_info* @get_dump_file_info(i32) local_unnamed_addr #2

declare dso_local i32 @dump_initialized_p(i32) local_unnamed_addr #2

declare dso_local i8* @get_dump_file_name(i32) local_unnamed_addr #2

declare dso_local void @finish_graph_dump_file(i8*) local_unnamed_addr #2

declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_rest_of_compilation() #5 !dbg !3125 {
entry:
  %0 = load i32, i32* @rtl_dump_and_exit, align 4, !dbg !3126
  %1 = load i32, i32* @flag_syntax_only, align 4, !dbg !3127
  %2 = or i32 %0, %1, !dbg !3128
  %3 = icmp eq i32 %2, 0, !dbg !3128
  br i1 %3, label %lor.lhs.false2, label %lor.end, !dbg !3128

lor.lhs.false2:                                   ; preds = %entry
  %4 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !3129
  %arrayidx = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %4, i64 0, i32 1, i64 4, !dbg !3129
  %5 = load i32, i32* %arrayidx, align 8, !dbg !3129
  %tobool3 = icmp eq i32 %5, 0, !dbg !3129
  br i1 %tobool3, label %lor.rhs, label %lor.end, !dbg !3130

lor.rhs:                                          ; preds = %lor.lhs.false2
  %arrayidx5 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %4, i64 0, i32 1, i64 5, !dbg !3131
  %6 = load i32, i32* %arrayidx5, align 4, !dbg !3131
  %tobool6 = icmp eq i32 %6, 0, !dbg !3130
  %phitmp = zext i1 %tobool6 to i8, !dbg !3130
  br label %lor.end, !dbg !3130

lor.end:                                          ; preds = %lor.lhs.false2, %entry, %lor.rhs
  %7 = phi i8 [ 0, %lor.lhs.false2 ], [ 0, %entry ], [ %phitmp, %lor.rhs ]
  ret i8 %7, !dbg !3132
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_postreload() #5 !dbg !3133 {
entry:
  %0 = load i32, i32* @reload_completed, align 4, !dbg !3134
  %conv = trunc i32 %0 to i8, !dbg !3134
  ret i8 %conv, !dbg !3135
}

; Function Attrs: nounwind uwtable
define dso_local %struct.opt_pass* @get_pass_for_id(i32 %id) local_unnamed_addr #5 !dbg !3136 {
entry:
  call void @llvm.dbg.value(metadata i32 %id, metadata !3140, metadata !DIExpression()), !dbg !3141
  %0 = load i32, i32* @passes_by_id_size, align 4, !dbg !3142
  %cmp = icmp sgt i32 %0, %id, !dbg !3144
  br i1 %cmp, label %if.end, label %return, !dbg !3145

if.end:                                           ; preds = %entry
  %1 = load %struct.opt_pass**, %struct.opt_pass*** @passes_by_id, align 8, !dbg !3146
  %idxprom = sext i32 %id to i64, !dbg !3146
  %arrayidx = getelementptr inbounds %struct.opt_pass*, %struct.opt_pass** %1, i64 %idxprom, !dbg !3146
  %2 = load %struct.opt_pass*, %struct.opt_pass** %arrayidx, align 8, !dbg !3146
  br label %return, !dbg !3147

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.opt_pass* [ %2, %if.end ], [ null, %entry ], !dbg !3141
  ret %struct.opt_pass* %retval.0, !dbg !3148
}

; Function Attrs: nounwind uwtable
define dso_local void @register_one_dump_file(%struct.opt_pass* %pass) local_unnamed_addr #5 !dbg !3149 {
entry:
  %num = alloca [10 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.opt_pass* %pass, metadata !3153, metadata !DIExpression()), !dbg !3165
  %0 = getelementptr inbounds [10 x i8], [10 x i8]* %num, i64 0, i64 0, !dbg !3166
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %0) #8, !dbg !3166
  call void @llvm.dbg.declare(metadata [10 x i8]* %num, metadata !3159, metadata !DIExpression()), !dbg !3167
  store i8 0, i8* %0, align 1, !dbg !3168
  %static_pass_number = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass, i64 0, i32 6, !dbg !3169
  %1 = load i32, i32* %static_pass_number, align 8, !dbg !3169
  %cmp = icmp eq i32 %1, -1, !dbg !3171
  br i1 %cmp, label %if.end, label %if.then, !dbg !3172

if.then:                                          ; preds = %entry
  %cmp2 = icmp slt i32 %1, 0, !dbg !3173
  br i1 %cmp2, label %cond.end, label %cond.false, !dbg !3174

cond.false:                                       ; preds = %if.then
  br label %cond.end, !dbg !3174

cond.end:                                         ; preds = %if.then, %cond.false
  %cond = phi i32 [ %1, %cond.false ], [ 1, %if.then ], !dbg !3174
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %cond) #6, !dbg !3175
  br label %if.end, !dbg !3175

if.end:                                           ; preds = %entry, %cond.end
  %name4 = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass, i64 0, i32 1, !dbg !3176
  %2 = load i8*, i8** %name4, align 8, !dbg !3176
  %call5 = call i8* @strchr(i8* %2, i32 32) #6, !dbg !3177
  call void @llvm.dbg.value(metadata i8* %call5, metadata !3157, metadata !DIExpression()), !dbg !3165
  %tobool = icmp eq i8* %call5, null, !dbg !3178
  br i1 %tobool, label %cond.false7, label %cond.true6, !dbg !3178

cond.true6:                                       ; preds = %if.end
  %add.ptr = getelementptr inbounds i8, i8* %call5, i64 1, !dbg !3179
  br label %cond.end9, !dbg !3178

cond.false7:                                      ; preds = %if.end
  %3 = load i8*, i8** %name4, align 8, !dbg !3180
  br label %cond.end9, !dbg !3178

cond.end9:                                        ; preds = %cond.false7, %cond.true6
  %cond10 = phi i8* [ %add.ptr, %cond.true6 ], [ %3, %cond.false7 ], !dbg !3178
  call void @llvm.dbg.value(metadata i8* %cond10, metadata !3157, metadata !DIExpression()), !dbg !3165
  %call12 = call i8* (i8*, ...) @concat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* %cond10, i8* nonnull %0, i8* null) #6, !dbg !3181
  call void @llvm.dbg.value(metadata i8* %call12, metadata !3154, metadata !DIExpression()), !dbg !3165
  %type = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass, i64 0, i32 0, !dbg !3182
  %4 = load i32, i32* %type, align 8, !dbg !3182
  %cmp13 = icmp eq i32 %4, 2, !dbg !3184
  br i1 %cmp13, label %if.end22, label %lor.lhs.false, !dbg !3185

lor.lhs.false:                                    ; preds = %cond.end9
  %cmp15 = icmp eq i32 %4, 3, !dbg !3186
  br i1 %cmp15, label %if.end22, label %if.else, !dbg !3187

if.else:                                          ; preds = %lor.lhs.false
  %cmp18 = icmp eq i32 %4, 0, !dbg !3188
  %. = select i1 %cmp18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)
  %.1 = select i1 %cmp18, i32 512, i32 1024
  call void @llvm.dbg.value(metadata i32 %.1, metadata !3163, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i8* %., metadata !3158, metadata !DIExpression()), !dbg !3165
  br label %if.end22

if.end22:                                         ; preds = %cond.end9, %lor.lhs.false, %if.else
  %prefix.1 = phi i8* [ %., %if.else ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), %lor.lhs.false ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), %cond.end9 ], !dbg !3190
  %flags.1 = phi i32 [ %.1, %if.else ], [ 2048, %lor.lhs.false ], [ 2048, %cond.end9 ], !dbg !3190
  call void @llvm.dbg.value(metadata i32 %flags.1, metadata !3163, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i8* %prefix.1, metadata !3158, metadata !DIExpression()), !dbg !3165
  %call24 = call i8* (i8*, ...) @concat(i8* %prefix.1, i8* %cond10, i8* nonnull %0, i8* null) #6, !dbg !3191
  call void @llvm.dbg.value(metadata i8* %call24, metadata !3155, metadata !DIExpression()), !dbg !3165
  %call25 = call i8* (i8*, ...) @concat(i8* %prefix.1, i8* %cond10, i8* null) #6, !dbg !3192
  call void @llvm.dbg.value(metadata i8* %call25, metadata !3156, metadata !DIExpression()), !dbg !3165
  %call26 = call i32 @dump_register(i8* %call12, i8* %call24, i8* %call25, i32 %flags.1) #6, !dbg !3193
  call void @llvm.dbg.value(metadata i32 %call26, metadata !3164, metadata !DIExpression()), !dbg !3165
  call fastcc void @set_pass_for_id(i32 %call26, %struct.opt_pass* %pass) #7, !dbg !3194
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %0) #8, !dbg !3195
  ret void, !dbg !3195
}

declare dso_local i32 @sprintf(i8*, i8*, ...) local_unnamed_addr #2

declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #2

declare dso_local i8* @concat(i8*, ...) local_unnamed_addr #2

declare dso_local i32 @dump_register(i8*, i8*, i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @set_pass_for_id(i32 %id, %struct.opt_pass* %pass) unnamed_addr #5 !dbg !3196 {
entry:
  call void @llvm.dbg.value(metadata i32 %id, metadata !3200, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata %struct.opt_pass* %pass, metadata !3201, metadata !DIExpression()), !dbg !3202
  %static_pass_number = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass, i64 0, i32 6, !dbg !3203
  store i32 %id, i32* %static_pass_number, align 8, !dbg !3204
  %0 = load i32, i32* @passes_by_id_size, align 4, !dbg !3205
  %cmp = icmp sgt i32 %0, %id, !dbg !3207
  br i1 %cmp, label %if.end, label %if.then, !dbg !3208

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** bitcast (%struct.opt_pass*** @passes_by_id to i8**), align 8, !dbg !3209
  %add = add nsw i32 %id, 1, !dbg !3209
  %conv = sext i32 %add to i64, !dbg !3209
  %mul = shl nsw i64 %conv, 3, !dbg !3209
  %call = tail call i8* @xrealloc(i8* %1, i64 %mul) #6, !dbg !3209
  store i8* %call, i8** bitcast (%struct.opt_pass*** @passes_by_id to i8**), align 8, !dbg !3211
  %.cast = bitcast i8* %call to %struct.opt_pass**, !dbg !3212
  %2 = load i32, i32* @passes_by_id_size, align 4, !dbg !3213
  %idx.ext = sext i32 %2 to i64, !dbg !3214
  %add.ptr = getelementptr inbounds %struct.opt_pass*, %struct.opt_pass** %.cast, i64 %idx.ext, !dbg !3214
  %3 = bitcast %struct.opt_pass** %add.ptr to i8*, !dbg !3212
  %sub = sub nsw i32 %add, %2, !dbg !3215
  %conv2 = sext i32 %sub to i64, !dbg !3216
  %mul3 = shl nsw i64 %conv2, 3, !dbg !3217
  %call4 = tail call i8* @memset(i8* %3, i32 0, i64 %mul3) #6, !dbg !3218
  store i32 %add, i32* @passes_by_id_size, align 4, !dbg !3219
  br label %if.end, !dbg !3220

if.end:                                           ; preds = %entry, %if.then
  %4 = load %struct.opt_pass**, %struct.opt_pass*** @passes_by_id, align 8, !dbg !3221
  %idxprom = sext i32 %id to i64, !dbg !3221
  %arrayidx = getelementptr inbounds %struct.opt_pass*, %struct.opt_pass** %4, i64 %idxprom, !dbg !3221
  store %struct.opt_pass* %pass, %struct.opt_pass** %arrayidx, align 8, !dbg !3222
  ret void, !dbg !3223
}

; Function Attrs: nounwind uwtable
define dso_local void @register_pass(%struct.register_pass_info* %pass_info) local_unnamed_addr #5 !dbg !3224 {
entry:
  call void @llvm.dbg.value(metadata %struct.register_pass_info* %pass_info, metadata !3235, metadata !DIExpression()), !dbg !3241
  %pass = getelementptr inbounds %struct.register_pass_info, %struct.register_pass_info* %pass_info, i64 0, i32 0, !dbg !3242
  %0 = load %struct.opt_pass*, %struct.opt_pass** %pass, align 8, !dbg !3242
  %tobool = icmp eq %struct.opt_pass* %0, null, !dbg !3244
  br i1 %tobool, label %if.then, label %if.end, !dbg !3245

if.then:                                          ; preds = %entry
  tail call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !3246
  %.pre = load %struct.opt_pass*, %struct.opt_pass** %pass, align 8, !dbg !3247
  br label %if.end, !dbg !3246

if.end:                                           ; preds = %entry, %if.then
  %1 = phi %struct.opt_pass* [ %0, %entry ], [ %.pre, %if.then ], !dbg !3247
  %name = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %1, i64 0, i32 1, !dbg !3249
  %2 = load i8*, i8** %name, align 8, !dbg !3249
  %tobool2 = icmp eq i8* %2, null, !dbg !3250
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !3251

if.then3:                                         ; preds = %if.end
  tail call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !3252
  br label %if.end4, !dbg !3252

if.end4:                                          ; preds = %if.end, %if.then3
  %reference_pass_name = getelementptr inbounds %struct.register_pass_info, %struct.register_pass_info* %pass_info, i64 0, i32 1, !dbg !3253
  %3 = load i8*, i8** %reference_pass_name, align 8, !dbg !3253
  %tobool5 = icmp eq i8* %3, null, !dbg !3255
  br i1 %tobool5, label %if.then6, label %if.end9, !dbg !3256

if.then6:                                         ; preds = %if.end4
  %4 = load %struct.opt_pass*, %struct.opt_pass** %pass, align 8, !dbg !3257
  %name8 = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %4, i64 0, i32 1, !dbg !3258
  %5 = load i8*, i8** %name8, align 8, !dbg !3258
  tail call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.14, i64 0, i64 0), i8* %5) #6, !dbg !3259
  br label %if.end9, !dbg !3259

if.end9:                                          ; preds = %if.end4, %if.then6
  %ref_pass_instance_number = getelementptr inbounds %struct.register_pass_info, %struct.register_pass_info* %pass_info, i64 0, i32 2, !dbg !3260
  %6 = load i32, i32* %ref_pass_instance_number, align 8, !dbg !3260
  %cmp = icmp eq i32 %6, 0, !dbg !3261
  call void @llvm.dbg.value(metadata i1 %cmp, metadata !3236, metadata !DIExpression()), !dbg !3241
  %call = tail call fastcc zeroext i8 @position_pass(%struct.register_pass_info* %pass_info, %struct.opt_pass** nonnull @all_lowering_passes) #7, !dbg !3262
  call void @llvm.dbg.value(metadata i8 %call, metadata !3237, metadata !DIExpression()), !dbg !3241
  %tobool11 = icmp eq i8 %call, 0, !dbg !3263
  %or.cond = or i1 %tobool11, %cmp, !dbg !3265
  br i1 %or.cond, label %if.then14, label %if.end19, !dbg !3265

if.then14:                                        ; preds = %if.end9
  %call15 = tail call fastcc zeroext i8 @position_pass(%struct.register_pass_info* %pass_info, %struct.opt_pass** nonnull @all_small_ipa_passes) #7, !dbg !3266
  %or7 = or i8 %call, %call15, !dbg !3267
  call void @llvm.dbg.value(metadata i8 %or7, metadata !3237, metadata !DIExpression()), !dbg !3241
  br label %if.end19, !dbg !3268

if.end19:                                         ; preds = %if.end9, %if.then14
  %success.0 = phi i8 [ %or7, %if.then14 ], [ %call, %if.end9 ], !dbg !3241
  call void @llvm.dbg.value(metadata i8 %success.0, metadata !3237, metadata !DIExpression()), !dbg !3241
  %tobool20 = icmp eq i8 %success.0, 0, !dbg !3269
  %or.cond1 = or i1 %tobool20, %cmp, !dbg !3271
  br i1 %or.cond1, label %if.then24, label %if.end30, !dbg !3271

if.then24:                                        ; preds = %if.end19
  %call25 = tail call fastcc zeroext i8 @position_pass(%struct.register_pass_info* %pass_info, %struct.opt_pass** nonnull @all_regular_ipa_passes) #7, !dbg !3272
  %or286 = or i8 %success.0, %call25, !dbg !3273
  call void @llvm.dbg.value(metadata i8 %or286, metadata !3237, metadata !DIExpression()), !dbg !3241
  br label %if.end30, !dbg !3274

if.end30:                                         ; preds = %if.end19, %if.then24
  %success.1 = phi i8 [ %or286, %if.then24 ], [ %success.0, %if.end19 ], !dbg !3241
  call void @llvm.dbg.value(metadata i8 %success.1, metadata !3237, metadata !DIExpression()), !dbg !3241
  %tobool31 = icmp eq i8 %success.1, 0, !dbg !3275
  %or.cond2 = or i1 %tobool31, %cmp, !dbg !3277
  br i1 %or.cond2, label %if.then35, label %if.end41, !dbg !3277

if.then35:                                        ; preds = %if.end30
  %call36 = tail call fastcc zeroext i8 @position_pass(%struct.register_pass_info* %pass_info, %struct.opt_pass** nonnull @all_lto_gen_passes) #7, !dbg !3278
  %or395 = or i8 %success.1, %call36, !dbg !3279
  call void @llvm.dbg.value(metadata i8 %or395, metadata !3237, metadata !DIExpression()), !dbg !3241
  br label %if.end41, !dbg !3280

if.end41:                                         ; preds = %if.end30, %if.then35
  %success.2 = phi i8 [ %or395, %if.then35 ], [ %success.1, %if.end30 ], !dbg !3241
  call void @llvm.dbg.value(metadata i8 %success.2, metadata !3237, metadata !DIExpression()), !dbg !3241
  %tobool42 = icmp eq i8 %success.2, 0, !dbg !3281
  %or.cond3 = or i1 %tobool42, %cmp, !dbg !3283
  br i1 %or.cond3, label %if.then46, label %if.end52, !dbg !3283

if.then46:                                        ; preds = %if.end41
  %call47 = tail call fastcc zeroext i8 @position_pass(%struct.register_pass_info* %pass_info, %struct.opt_pass** nonnull @all_passes) #7, !dbg !3284
  %or504 = or i8 %success.2, %call47, !dbg !3285
  call void @llvm.dbg.value(metadata i8 %or504, metadata !3237, metadata !DIExpression()), !dbg !3241
  br label %if.end52, !dbg !3286

if.end52:                                         ; preds = %if.end41, %if.then46
  %success.3 = phi i8 [ %or504, %if.then46 ], [ %success.2, %if.end41 ], !dbg !3241
  call void @llvm.dbg.value(metadata i8 %success.3, metadata !3237, metadata !DIExpression()), !dbg !3241
  %tobool53 = icmp eq i8 %success.3, 0, !dbg !3287
  br i1 %tobool53, label %if.then54, label %if.end58, !dbg !3289

if.then54:                                        ; preds = %if.end52
  %7 = load i8*, i8** %reference_pass_name, align 8, !dbg !3290
  %8 = load %struct.opt_pass*, %struct.opt_pass** %pass, align 8, !dbg !3291
  %name57 = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %8, i64 0, i32 1, !dbg !3292
  %9 = load i8*, i8** %name57, align 8, !dbg !3292
  tail call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.15, i64 0, i64 0), i8* %7, i8* %9) #6, !dbg !3293
  br label %if.end58, !dbg !3293

if.end58:                                         ; preds = %if.end52, %if.then54
  %.pre8 = load %struct.pass_list_node*, %struct.pass_list_node** @added_pass_nodes, align 8, !dbg !3294
  br label %while.cond, !dbg !3295

while.cond:                                       ; preds = %if.end86, %if.end58
  %10 = phi %struct.pass_list_node* [ %24, %if.end86 ], [ %.pre8, %if.end58 ]
  %11 = phi %struct.pass_list_node* [ %24, %if.end86 ], [ %.pre8, %if.end58 ], !dbg !3294
  %tobool59 = icmp eq %struct.pass_list_node* %11, null, !dbg !3295
  br i1 %tobool59, label %while.end, label %while.body, !dbg !3295

while.body:                                       ; preds = %while.cond
  %next = getelementptr inbounds %struct.pass_list_node, %struct.pass_list_node* %10, i64 0, i32 1, !dbg !3296
  %12 = bitcast %struct.pass_list_node** %next to i64*, !dbg !3296
  %13 = load i64, i64* %12, align 8, !dbg !3296
  %pass60 = getelementptr inbounds %struct.pass_list_node, %struct.pass_list_node* %10, i64 0, i32 0, !dbg !3297
  %14 = load %struct.opt_pass*, %struct.opt_pass** %pass60, align 8, !dbg !3297
  tail call void @register_one_dump_file(%struct.opt_pass* %14) #7, !dbg !3298
  %15 = load %struct.pass_list_node*, %struct.pass_list_node** @added_pass_nodes, align 8, !dbg !3299
  %pass61 = getelementptr inbounds %struct.pass_list_node, %struct.pass_list_node* %15, i64 0, i32 0, !dbg !3301
  %16 = load %struct.opt_pass*, %struct.opt_pass** %pass61, align 8, !dbg !3301
  %type = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %16, i64 0, i32 0, !dbg !3302
  %17 = load i32, i32* %type, align 8, !dbg !3302
  %cmp62 = icmp eq i32 %17, 2, !dbg !3303
  br i1 %cmp62, label %if.end77, label %lor.lhs.false64, !dbg !3304

lor.lhs.false64:                                  ; preds = %while.body
  %cmp67 = icmp eq i32 %17, 3, !dbg !3305
  br i1 %cmp67, label %if.end77, label %if.else, !dbg !3306

if.else:                                          ; preds = %lor.lhs.false64
  %cmp72 = icmp eq i32 %17, 0, !dbg !3307
  %. = select i1 %cmp72, i32 8, i32 9
  call void @llvm.dbg.value(metadata i32 %., metadata !3240, metadata !DIExpression()), !dbg !3309
  br label %if.end77

if.end77:                                         ; preds = %while.body, %lor.lhs.false64, %if.else
  %tdi.1 = phi i32 [ %., %if.else ], [ 10, %lor.lhs.false64 ], [ 10, %while.body ], !dbg !3310
  call void @llvm.dbg.value(metadata i32 %tdi.1, metadata !3240, metadata !DIExpression()), !dbg !3309
  %call78 = tail call %struct.dump_file_info* @get_dump_file_info(i32 %tdi.1) #6, !dbg !3311
  %state = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %call78, i64 0, i32 4, !dbg !3313
  %18 = load i32, i32* %state, align 4, !dbg !3313
  %tobool79 = icmp eq i32 %18, 0, !dbg !3311
  br i1 %tobool79, label %if.end86, label %if.then80, !dbg !3314

if.then80:                                        ; preds = %if.end77
  %call81 = tail call %struct.dump_file_info* @get_dump_file_info(i32 %tdi.1) #6, !dbg !3315
  %state82 = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %call81, i64 0, i32 4, !dbg !3316
  %19 = load i32, i32* %state82, align 4, !dbg !3316
  %20 = load %struct.pass_list_node*, %struct.pass_list_node** @added_pass_nodes, align 8, !dbg !3317
  %pass83 = getelementptr inbounds %struct.pass_list_node, %struct.pass_list_node* %20, i64 0, i32 0, !dbg !3318
  %21 = load %struct.opt_pass*, %struct.opt_pass** %pass83, align 8, !dbg !3318
  %static_pass_number = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %21, i64 0, i32 6, !dbg !3319
  %22 = load i32, i32* %static_pass_number, align 8, !dbg !3319
  %call84 = tail call %struct.dump_file_info* @get_dump_file_info(i32 %22) #6, !dbg !3320
  %state85 = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %call84, i64 0, i32 4, !dbg !3321
  store i32 %19, i32* %state85, align 4, !dbg !3322
  br label %if.end86, !dbg !3320

if.end86:                                         ; preds = %if.end77, %if.then80
  %23 = load i8*, i8** bitcast (%struct.pass_list_node** @added_pass_nodes to i8**), align 8, !dbg !3323
  tail call void @free(i8* %23) #6, !dbg !3323
  store i64 %13, i64* bitcast (%struct.pass_list_node** @added_pass_nodes to i64*), align 8, !dbg !3324
  %24 = inttoptr i64 %13 to %struct.pass_list_node*, !dbg !3295
  br label %while.cond, !dbg !3295, !llvm.loop !3325

while.end:                                        ; preds = %while.cond
  ret void, !dbg !3327
}

declare dso_local void @fatal_error(i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @position_pass(%struct.register_pass_info* %new_pass_info, %struct.opt_pass** %pass_list) unnamed_addr #5 !dbg !3328 {
entry:
  call void @llvm.dbg.value(metadata %struct.register_pass_info* %new_pass_info, metadata !3332, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata %struct.opt_pass** %pass_list, metadata !3333, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata %struct.opt_pass* null, metadata !3335, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i8 0, metadata !3336, metadata !DIExpression()), !dbg !3344
  %pass1 = getelementptr inbounds %struct.register_pass_info, %struct.register_pass_info* %new_pass_info, i64 0, i32 0, !dbg !3345
  %reference_pass_name = getelementptr inbounds %struct.register_pass_info, %struct.register_pass_info* %new_pass_info, i64 0, i32 1, !dbg !3345
  %ref_pass_instance_number = getelementptr inbounds %struct.register_pass_info, %struct.register_pass_info* %new_pass_info, i64 0, i32 2, !dbg !3345
  %pos_op = getelementptr inbounds %struct.register_pass_info, %struct.register_pass_info* %new_pass_info, i64 0, i32 3, !dbg !3346
  br label %for.cond, !dbg !3347

for.cond:                                         ; preds = %for.inc, %entry
  %prev_pass.0 = phi %struct.opt_pass* [ null, %entry ], [ %pass.3, %for.inc ], !dbg !3344
  %pass.0.in = phi %struct.opt_pass** [ %pass_list, %entry ], [ %next52, %for.inc ]
  %success.0 = phi i8 [ 0, %entry ], [ %success.3, %for.inc ], !dbg !3344
  %pass.0 = load %struct.opt_pass*, %struct.opt_pass** %pass.0.in, align 8, !dbg !3344
  call void @llvm.dbg.value(metadata i8 %success.0, metadata !3336, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata %struct.opt_pass* %pass.0, metadata !3334, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata %struct.opt_pass* %prev_pass.0, metadata !3335, metadata !DIExpression()), !dbg !3344
  %tobool = icmp eq %struct.opt_pass* %pass.0, null, !dbg !3348
  br i1 %tobool, label %cleanup53, label %for.body, !dbg !3348

for.body:                                         ; preds = %for.cond
  %type = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass.0, i64 0, i32 0, !dbg !3349
  %0 = load i32, i32* %type, align 8, !dbg !3349
  %1 = load %struct.opt_pass*, %struct.opt_pass** %pass1, align 8, !dbg !3350
  %type2 = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %1, i64 0, i32 0, !dbg !3351
  %2 = load i32, i32* %type2, align 8, !dbg !3351
  %cmp = icmp eq i32 %0, %2, !dbg !3352
  br i1 %cmp, label %land.lhs.true, label %if.end43, !dbg !3353

land.lhs.true:                                    ; preds = %for.body
  %name = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass.0, i64 0, i32 1, !dbg !3354
  %3 = load i8*, i8** %name, align 8, !dbg !3354
  %tobool3 = icmp eq i8* %3, null, !dbg !3355
  br i1 %tobool3, label %if.end43, label %land.lhs.true4, !dbg !3356

land.lhs.true4:                                   ; preds = %land.lhs.true
  %4 = load i8*, i8** %reference_pass_name, align 8, !dbg !3357
  %call = tail call i32 @strcmp(i8* nonnull %3, i8* %4) #6, !dbg !3358
  %tobool6 = icmp eq i32 %call, 0, !dbg !3358
  br i1 %tobool6, label %land.lhs.true7, label %if.end43, !dbg !3359

land.lhs.true7:                                   ; preds = %land.lhs.true4
  %5 = load i32, i32* %ref_pass_instance_number, align 8, !dbg !3360
  %cmp8 = icmp eq i32 %5, 0, !dbg !3361
  br i1 %cmp8, label %if.then, label %lor.lhs.false, !dbg !3362

lor.lhs.false:                                    ; preds = %land.lhs.true7
  %static_pass_number = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass.0, i64 0, i32 6, !dbg !3363
  %6 = load i32, i32* %static_pass_number, align 8, !dbg !3363
  %cmp10 = icmp eq i32 %5, %6, !dbg !3364
  br i1 %cmp10, label %if.then, label %lor.lhs.false11, !dbg !3365

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %cmp13 = icmp eq i32 %5, 1, !dbg !3366
  br i1 %cmp13, label %land.lhs.true14, label %if.end43, !dbg !3367

land.lhs.true14:                                  ; preds = %lor.lhs.false11
  %todo_flags_start = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass.0, i64 0, i32 11, !dbg !3368
  %7 = load i32, i32* %todo_flags_start, align 4, !dbg !3368
  %and = and i32 %7, 524288, !dbg !3369
  %tobool15 = icmp eq i32 %and, 0, !dbg !3369
  br i1 %tobool15, label %if.end43, label %if.then, !dbg !3370

if.then:                                          ; preds = %land.lhs.true14, %lor.lhs.false, %land.lhs.true7
  %8 = load %struct.opt_pass*, %struct.opt_pass** %pass1, align 8, !dbg !3371
  %call17 = tail call fastcc %struct.opt_pass* @make_pass_instance(%struct.opt_pass* %8, i8 zeroext 1) #7, !dbg !3372
  call void @llvm.dbg.value(metadata %struct.opt_pass* %call17, metadata !3337, metadata !DIExpression()), !dbg !3346
  %9 = load i32, i32* %pos_op, align 4, !dbg !3373
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb20
    i32 2, label %sw.bb25
  ], !dbg !3374

sw.bb:                                            ; preds = %if.then
  %next = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass.0, i64 0, i32 5, !dbg !3375
  %10 = bitcast %struct.opt_pass** %next to i64*, !dbg !3375
  %11 = load i64, i64* %10, align 8, !dbg !3375
  %next18 = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %call17, i64 0, i32 5, !dbg !3377
  %12 = bitcast %struct.opt_pass** %next18 to i64*, !dbg !3378
  store i64 %11, i64* %12, align 8, !dbg !3378
  store %struct.opt_pass* %call17, %struct.opt_pass** %next, align 8, !dbg !3379
  call void @llvm.dbg.value(metadata %struct.opt_pass* %call17, metadata !3334, metadata !DIExpression()), !dbg !3344
  br label %sw.epilog, !dbg !3380

sw.bb20:                                          ; preds = %if.then
  %next21 = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %call17, i64 0, i32 5, !dbg !3381
  store %struct.opt_pass* %pass.0, %struct.opt_pass** %next21, align 8, !dbg !3382
  %tobool22 = icmp eq %struct.opt_pass* %prev_pass.0, null, !dbg !3383
  br i1 %tobool22, label %if.else, label %if.then23, !dbg !3385

if.then23:                                        ; preds = %sw.bb20
  %next24 = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %prev_pass.0, i64 0, i32 5, !dbg !3386
  store %struct.opt_pass* %call17, %struct.opt_pass** %next24, align 8, !dbg !3387
  br label %sw.epilog, !dbg !3388

if.else:                                          ; preds = %sw.bb20
  store %struct.opt_pass* %call17, %struct.opt_pass** %pass_list, align 8, !dbg !3389
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.then
  %next26 = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass.0, i64 0, i32 5, !dbg !3390
  %13 = bitcast %struct.opt_pass** %next26 to i64*, !dbg !3390
  %14 = load i64, i64* %13, align 8, !dbg !3390
  %next27 = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %call17, i64 0, i32 5, !dbg !3391
  %15 = bitcast %struct.opt_pass** %next27 to i64*, !dbg !3392
  store i64 %14, i64* %15, align 8, !dbg !3392
  %tobool28 = icmp eq %struct.opt_pass* %prev_pass.0, null, !dbg !3393
  br i1 %tobool28, label %if.else31, label %if.then29, !dbg !3395

if.then29:                                        ; preds = %sw.bb25
  %next30 = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %prev_pass.0, i64 0, i32 5, !dbg !3396
  store %struct.opt_pass* %call17, %struct.opt_pass** %next30, align 8, !dbg !3397
  br label %if.end32, !dbg !3398

if.else31:                                        ; preds = %sw.bb25
  store %struct.opt_pass* %call17, %struct.opt_pass** %pass_list, align 8, !dbg !3399
  br label %if.end32

if.end32:                                         ; preds = %if.else31, %if.then29
  %sub = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass.0, i64 0, i32 4, !dbg !3400
  %16 = bitcast %struct.opt_pass** %sub to i64*, !dbg !3400
  %17 = load i64, i64* %16, align 8, !dbg !3400
  %sub33 = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %call17, i64 0, i32 4, !dbg !3401
  %18 = bitcast %struct.opt_pass** %sub33 to i64*, !dbg !3402
  store i64 %17, i64* %18, align 8, !dbg !3402
  %tv_id = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass.0, i64 0, i32 7, !dbg !3403
  %19 = load i32, i32* %tv_id, align 4, !dbg !3403
  %tv_id34 = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %call17, i64 0, i32 7, !dbg !3404
  store i32 %19, i32* %tv_id34, align 4, !dbg !3405
  call void @llvm.dbg.value(metadata %struct.opt_pass* %call17, metadata !3334, metadata !DIExpression()), !dbg !3344
  br label %sw.epilog, !dbg !3406

sw.default:                                       ; preds = %if.then
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.35, i64 0, i64 0)) #6, !dbg !3407
  br label %cleanup, !dbg !3408

sw.epilog:                                        ; preds = %if.then23, %if.else, %if.end32, %sw.bb
  %pass.1 = phi %struct.opt_pass* [ %call17, %if.end32 ], [ %call17, %sw.bb ], [ %pass.0, %if.else ], [ %pass.0, %if.then23 ], !dbg !3344
  call void @llvm.dbg.value(metadata %struct.opt_pass* %pass.1, metadata !3334, metadata !DIExpression()), !dbg !3344
  %call35 = tail call i8* @xcalloc(i64 1, i64 16) #6, !dbg !3409
  call void @llvm.dbg.value(metadata i8* %call35, metadata !3343, metadata !DIExpression()), !dbg !3346
  %pass36 = bitcast i8* %call35 to %struct.opt_pass**, !dbg !3410
  store %struct.opt_pass* %call17, %struct.opt_pass** %pass36, align 8, !dbg !3411
  %20 = load %struct.pass_list_node*, %struct.pass_list_node** @added_pass_nodes, align 8, !dbg !3412
  %tobool37 = icmp eq %struct.pass_list_node* %20, null, !dbg !3412
  br i1 %tobool37, label %if.then38, label %if.else39, !dbg !3414

if.then38:                                        ; preds = %sw.epilog
  store i8* %call35, i8** bitcast (%struct.pass_list_node** @added_pass_nodes to i8**), align 8, !dbg !3415
  br label %if.end41, !dbg !3416

if.else39:                                        ; preds = %sw.epilog
  call void @llvm.dbg.value(metadata i8* %call35, metadata !3343, metadata !DIExpression()), !dbg !3346
  %21 = load %struct.pass_list_node*, %struct.pass_list_node** @prev_added_pass_node, align 8, !dbg !3417
  %next40 = getelementptr inbounds %struct.pass_list_node, %struct.pass_list_node* %21, i64 0, i32 1, !dbg !3418
  %22 = bitcast %struct.pass_list_node** %next40 to i8**, !dbg !3419
  store i8* %call35, i8** %22, align 8, !dbg !3419
  br label %if.end41

if.end41:                                         ; preds = %if.else39, %if.then38
  store i8* %call35, i8** bitcast (%struct.pass_list_node** @prev_added_pass_node to i8**), align 8, !dbg !3420
  call void @llvm.dbg.value(metadata i8 1, metadata !3336, metadata !DIExpression()), !dbg !3344
  br label %cleanup, !dbg !3421

cleanup:                                          ; preds = %if.end41, %sw.default
  %pass.2 = phi %struct.opt_pass* [ %pass.0, %sw.default ], [ %pass.1, %if.end41 ], !dbg !3344
  %success.1 = phi i8 [ %success.0, %sw.default ], [ 1, %if.end41 ], !dbg !3344
  %cleanup.dest.slot.0 = phi i1 [ false, %sw.default ], [ true, %if.end41 ]
  call void @llvm.dbg.value(metadata i8 %success.1, metadata !3336, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata %struct.opt_pass* %pass.2, metadata !3334, metadata !DIExpression()), !dbg !3344
  br i1 %cleanup.dest.slot.0, label %if.end43, label %cleanup53

if.end43:                                         ; preds = %land.lhs.true14, %land.lhs.true4, %land.lhs.true, %cleanup, %lor.lhs.false11, %for.body
  %pass.3 = phi %struct.opt_pass* [ %pass.0, %land.lhs.true4 ], [ %pass.0, %land.lhs.true14 ], [ %pass.0, %lor.lhs.false11 ], [ %pass.0, %land.lhs.true ], [ %pass.0, %for.body ], [ %pass.2, %cleanup ], !dbg !3422
  %success.2 = phi i8 [ %success.0, %land.lhs.true4 ], [ %success.0, %land.lhs.true14 ], [ %success.0, %lor.lhs.false11 ], [ %success.0, %land.lhs.true ], [ %success.0, %for.body ], [ %success.1, %cleanup ], !dbg !3423
  call void @llvm.dbg.value(metadata i8 %success.2, metadata !3336, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata %struct.opt_pass* %pass.3, metadata !3334, metadata !DIExpression()), !dbg !3344
  %sub44 = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass.3, i64 0, i32 4, !dbg !3424
  %23 = load %struct.opt_pass*, %struct.opt_pass** %sub44, align 8, !dbg !3424
  %tobool45 = icmp eq %struct.opt_pass* %23, null, !dbg !3426
  br i1 %tobool45, label %for.inc, label %land.lhs.true46, !dbg !3427

land.lhs.true46:                                  ; preds = %if.end43
  %call48 = tail call fastcc zeroext i8 @position_pass(%struct.register_pass_info* %new_pass_info, %struct.opt_pass** nonnull %sub44) #7, !dbg !3428
  %tobool49 = icmp eq i8 %call48, 0, !dbg !3428
  %spec.select = select i1 %tobool49, i8 %success.2, i8 1, !dbg !3429
  br label %for.inc, !dbg !3429

for.inc:                                          ; preds = %if.end43, %land.lhs.true46
  %success.3 = phi i8 [ %success.2, %if.end43 ], [ %spec.select, %land.lhs.true46 ], !dbg !3344
  call void @llvm.dbg.value(metadata i8 %success.3, metadata !3336, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata %struct.opt_pass* %pass.3, metadata !3335, metadata !DIExpression()), !dbg !3344
  %next52 = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass.3, i64 0, i32 5, !dbg !3430
  br label %for.cond, !dbg !3431, !llvm.loop !3432

cleanup53:                                        ; preds = %for.cond, %cleanup
  %retval.3 = phi i8 [ 0, %cleanup ], [ %success.0, %for.cond ], !dbg !3344
  ret i8 %retval.3, !dbg !3434
}

; Function Attrs: nounwind uwtable
define dso_local void @init_optimization_passes() local_unnamed_addr #5 !dbg !3435 {
entry:
  call void @llvm.dbg.value(metadata %struct.opt_pass** @all_lowering_passes, metadata !3437, metadata !DIExpression()), !dbg !3460
  %call = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** nonnull @all_lowering_passes, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_warn_unused_result, i64 0, i32 0)) #7, !dbg !3461
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call, metadata !3437, metadata !DIExpression()), !dbg !3460
  %call1 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_diagnose_omp_blocks, i64 0, i32 0)) #7, !dbg !3462
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call1, metadata !3437, metadata !DIExpression()), !dbg !3460
  %call2 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call1, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_mudflap_1, i64 0, i32 0)) #7, !dbg !3463
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call2, metadata !3437, metadata !DIExpression()), !dbg !3460
  %call3 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call2, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_lower_omp, i64 0, i32 0)) #7, !dbg !3464
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call3, metadata !3437, metadata !DIExpression()), !dbg !3460
  %call4 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call3, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_lower_cf, i64 0, i32 0)) #7, !dbg !3465
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call4, metadata !3437, metadata !DIExpression()), !dbg !3460
  %call5 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call4, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_refactor_eh, i64 0, i32 0)) #7, !dbg !3466
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call5, metadata !3437, metadata !DIExpression()), !dbg !3460
  %call6 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call5, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_lower_eh, i64 0, i32 0)) #7, !dbg !3467
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call6, metadata !3437, metadata !DIExpression()), !dbg !3460
  %call7 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call6, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_build_cfg, i64 0, i32 0)) #7, !dbg !3468
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call7, metadata !3437, metadata !DIExpression()), !dbg !3460
  %call8 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call7, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_lower_vector, i64 0, i32 0)) #7, !dbg !3469
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call8, metadata !3437, metadata !DIExpression()), !dbg !3460
  %call9 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call8, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_warn_function_return, i64 0, i32 0)) #7, !dbg !3470
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call9, metadata !3437, metadata !DIExpression()), !dbg !3460
  %call10 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call9, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_build_cgraph_edges, i64 0, i32 0)) #7, !dbg !3471
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call10, metadata !3437, metadata !DIExpression()), !dbg !3460
  %call11 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call10, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_inline_parameters, i64 0, i32 0)) #7, !dbg !3472
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call11, metadata !3437, metadata !DIExpression()), !dbg !3460
  store %struct.opt_pass* null, %struct.opt_pass** %call11, align 8, !dbg !3473
  call void @llvm.dbg.value(metadata %struct.opt_pass** @all_small_ipa_passes, metadata !3437, metadata !DIExpression()), !dbg !3460
  %call12 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** nonnull @all_small_ipa_passes, %struct.opt_pass* getelementptr inbounds (%struct.simple_ipa_opt_pass, %struct.simple_ipa_opt_pass* @pass_ipa_function_and_variable_visibility, i64 0, i32 0)) #7, !dbg !3474
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call12, metadata !3437, metadata !DIExpression()), !dbg !3460
  %call13 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call12, %struct.opt_pass* getelementptr inbounds (%struct.simple_ipa_opt_pass, %struct.simple_ipa_opt_pass* @pass_ipa_early_inline, i64 0, i32 0)) #7, !dbg !3475
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call13, metadata !3437, metadata !DIExpression()), !dbg !3460
  %call15 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** getelementptr inbounds (%struct.simple_ipa_opt_pass, %struct.simple_ipa_opt_pass* @pass_ipa_early_inline, i64 0, i32 0, i32 4), %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_early_inline, i64 0, i32 0)) #7, !dbg !3476
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call15, metadata !3438, metadata !DIExpression()), !dbg !3477
  %call16 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call15, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_inline_parameters, i64 0, i32 0)) #7, !dbg !3478
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call16, metadata !3438, metadata !DIExpression()), !dbg !3477
  %call17 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call16, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_rebuild_cgraph_edges, i64 0, i32 0)) #7, !dbg !3479
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call17, metadata !3438, metadata !DIExpression()), !dbg !3477
  %call18 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call13, %struct.opt_pass* getelementptr inbounds (%struct.simple_ipa_opt_pass, %struct.simple_ipa_opt_pass* @pass_ipa_free_lang_data, i64 0, i32 0)) #7, !dbg !3480
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call18, metadata !3437, metadata !DIExpression()), !dbg !3460
  %call19 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call18, %struct.opt_pass* getelementptr inbounds (%struct.simple_ipa_opt_pass, %struct.simple_ipa_opt_pass* @pass_early_local_passes, i64 0, i32 0)) #7, !dbg !3481
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call19, metadata !3437, metadata !DIExpression()), !dbg !3460
  %call21 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** getelementptr inbounds (%struct.simple_ipa_opt_pass, %struct.simple_ipa_opt_pass* @pass_early_local_passes, i64 0, i32 0, i32 4), %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_fixup_cfg, i64 0, i32 0)) #7, !dbg !3482
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call21, metadata !3440, metadata !DIExpression()), !dbg !3483
  %call22 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call21, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_tree_profile, i64 0, i32 0)) #7, !dbg !3484
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call22, metadata !3440, metadata !DIExpression()), !dbg !3483
  %call23 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call22, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_cleanup_cfg, i64 0, i32 0)) #7, !dbg !3485
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call23, metadata !3440, metadata !DIExpression()), !dbg !3483
  %call24 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call23, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_init_datastructures, i64 0, i32 0)) #7, !dbg !3486
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call24, metadata !3440, metadata !DIExpression()), !dbg !3483
  %call25 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call24, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_expand_omp, i64 0, i32 0)) #7, !dbg !3487
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call25, metadata !3440, metadata !DIExpression()), !dbg !3483
  %call26 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call25, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_referenced_vars, i64 0, i32 0)) #7, !dbg !3488
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call26, metadata !3440, metadata !DIExpression()), !dbg !3483
  %call27 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call26, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_build_ssa, i64 0, i32 0)) #7, !dbg !3489
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call27, metadata !3440, metadata !DIExpression()), !dbg !3483
  %call28 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call27, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_early_warn_uninitialized, i64 0, i32 0)) #7, !dbg !3490
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call28, metadata !3440, metadata !DIExpression()), !dbg !3483
  %call29 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call28, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_rebuild_cgraph_edges, i64 0, i32 0)) #7, !dbg !3491
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call29, metadata !3440, metadata !DIExpression()), !dbg !3483
  %call30 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call29, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_early_inline, i64 0, i32 0)) #7, !dbg !3492
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call30, metadata !3440, metadata !DIExpression()), !dbg !3483
  %call31 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call30, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_all_early_optimizations, i64 0, i32 0)) #7, !dbg !3493
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call31, metadata !3440, metadata !DIExpression()), !dbg !3483
  %call33 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_all_early_optimizations, i64 0, i32 0, i32 4), %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_remove_cgraph_callee_edges, i64 0, i32 0)) #7, !dbg !3494
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call33, metadata !3442, metadata !DIExpression()), !dbg !3495
  %call34 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call33, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_rename_ssa_copies, i64 0, i32 0)) #7, !dbg !3496
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call34, metadata !3442, metadata !DIExpression()), !dbg !3495
  %call35 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call34, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_ccp, i64 0, i32 0)) #7, !dbg !3497
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call35, metadata !3442, metadata !DIExpression()), !dbg !3495
  %call36 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call35, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_forwprop, i64 0, i32 0)) #7, !dbg !3498
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call36, metadata !3442, metadata !DIExpression()), !dbg !3495
  %call37 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call36, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_build_ealias, i64 0, i32 0)) #7, !dbg !3499
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call37, metadata !3442, metadata !DIExpression()), !dbg !3495
  %call38 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call37, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_sra_early, i64 0, i32 0)) #7, !dbg !3500
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call38, metadata !3442, metadata !DIExpression()), !dbg !3495
  %call39 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call38, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_copy_prop, i64 0, i32 0)) #7, !dbg !3501
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call39, metadata !3442, metadata !DIExpression()), !dbg !3495
  %call40 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call39, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_merge_phi, i64 0, i32 0)) #7, !dbg !3502
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call40, metadata !3442, metadata !DIExpression()), !dbg !3495
  %call41 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call40, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_cd_dce, i64 0, i32 0)) #7, !dbg !3503
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call41, metadata !3442, metadata !DIExpression()), !dbg !3495
  %call42 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call41, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_early_ipa_sra, i64 0, i32 0)) #7, !dbg !3504
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call42, metadata !3442, metadata !DIExpression()), !dbg !3495
  %call43 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call42, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_tail_recursion, i64 0, i32 0)) #7, !dbg !3505
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call43, metadata !3442, metadata !DIExpression()), !dbg !3495
  %call44 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call43, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_convert_switch, i64 0, i32 0)) #7, !dbg !3506
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call44, metadata !3442, metadata !DIExpression()), !dbg !3495
  %call45 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call44, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_cleanup_eh, i64 0, i32 0)) #7, !dbg !3507
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call45, metadata !3442, metadata !DIExpression()), !dbg !3495
  %call46 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call45, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_profile, i64 0, i32 0)) #7, !dbg !3508
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call46, metadata !3442, metadata !DIExpression()), !dbg !3495
  %call47 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call46, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_local_pure_const, i64 0, i32 0)) #7, !dbg !3509
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call47, metadata !3442, metadata !DIExpression()), !dbg !3495
  %call48 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call31, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_release_ssa_names, i64 0, i32 0)) #7, !dbg !3510
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call48, metadata !3440, metadata !DIExpression()), !dbg !3483
  %call49 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call48, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_rebuild_cgraph_edges, i64 0, i32 0)) #7, !dbg !3511
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call49, metadata !3440, metadata !DIExpression()), !dbg !3483
  %call50 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call49, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_inline_parameters, i64 0, i32 0)) #7, !dbg !3512
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call50, metadata !3440, metadata !DIExpression()), !dbg !3483
  %call51 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call19, %struct.opt_pass* getelementptr inbounds (%struct.simple_ipa_opt_pass, %struct.simple_ipa_opt_pass* @pass_ipa_increase_alignment, i64 0, i32 0)) #7, !dbg !3513
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call51, metadata !3437, metadata !DIExpression()), !dbg !3460
  %call52 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call51, %struct.opt_pass* getelementptr inbounds (%struct.simple_ipa_opt_pass, %struct.simple_ipa_opt_pass* @pass_ipa_matrix_reorg, i64 0, i32 0)) #7, !dbg !3514
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call52, metadata !3437, metadata !DIExpression()), !dbg !3460
  store %struct.opt_pass* null, %struct.opt_pass** %call52, align 8, !dbg !3515
  call void @llvm.dbg.value(metadata %struct.opt_pass** @all_regular_ipa_passes, metadata !3437, metadata !DIExpression()), !dbg !3460
  %call53 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** nonnull @all_regular_ipa_passes, %struct.opt_pass* getelementptr inbounds (%struct.ipa_opt_pass_d, %struct.ipa_opt_pass_d* @pass_ipa_whole_program_visibility, i64 0, i32 0)) #7, !dbg !3516
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call53, metadata !3437, metadata !DIExpression()), !dbg !3460
  %call54 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call53, %struct.opt_pass* getelementptr inbounds (%struct.ipa_opt_pass_d, %struct.ipa_opt_pass_d* @pass_ipa_cp, i64 0, i32 0)) #7, !dbg !3517
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call54, metadata !3437, metadata !DIExpression()), !dbg !3460
  %call55 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call54, %struct.opt_pass* getelementptr inbounds (%struct.ipa_opt_pass_d, %struct.ipa_opt_pass_d* @pass_ipa_inline, i64 0, i32 0)) #7, !dbg !3518
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call55, metadata !3437, metadata !DIExpression()), !dbg !3460
  %call56 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call55, %struct.opt_pass* getelementptr inbounds (%struct.ipa_opt_pass_d, %struct.ipa_opt_pass_d* @pass_ipa_reference, i64 0, i32 0)) #7, !dbg !3519
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call56, metadata !3437, metadata !DIExpression()), !dbg !3460
  %call57 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call56, %struct.opt_pass* getelementptr inbounds (%struct.ipa_opt_pass_d, %struct.ipa_opt_pass_d* @pass_ipa_pure_const, i64 0, i32 0)) #7, !dbg !3520
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call57, metadata !3437, metadata !DIExpression()), !dbg !3460
  %call58 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call57, %struct.opt_pass* getelementptr inbounds (%struct.simple_ipa_opt_pass, %struct.simple_ipa_opt_pass* @pass_ipa_type_escape, i64 0, i32 0)) #7, !dbg !3521
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call58, metadata !3437, metadata !DIExpression()), !dbg !3460
  %call59 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call58, %struct.opt_pass* getelementptr inbounds (%struct.simple_ipa_opt_pass, %struct.simple_ipa_opt_pass* @pass_ipa_pta, i64 0, i32 0)) #7, !dbg !3522
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call59, metadata !3437, metadata !DIExpression()), !dbg !3460
  %call60 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call59, %struct.opt_pass* getelementptr inbounds (%struct.simple_ipa_opt_pass, %struct.simple_ipa_opt_pass* @pass_ipa_struct_reorg, i64 0, i32 0)) #7, !dbg !3523
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call60, metadata !3437, metadata !DIExpression()), !dbg !3460
  store %struct.opt_pass* null, %struct.opt_pass** %call60, align 8, !dbg !3524
  call void @llvm.dbg.value(metadata %struct.opt_pass** @all_lto_gen_passes, metadata !3437, metadata !DIExpression()), !dbg !3460
  %call61 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** nonnull @all_lto_gen_passes, %struct.opt_pass* getelementptr inbounds (%struct.ipa_opt_pass_d, %struct.ipa_opt_pass_d* @pass_ipa_lto_gimple_out, i64 0, i32 0)) #7, !dbg !3525
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call61, metadata !3437, metadata !DIExpression()), !dbg !3460
  %call62 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call61, %struct.opt_pass* getelementptr inbounds (%struct.ipa_opt_pass_d, %struct.ipa_opt_pass_d* @pass_ipa_lto_wpa_fixup, i64 0, i32 0)) #7, !dbg !3526
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call62, metadata !3437, metadata !DIExpression()), !dbg !3460
  %call63 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call62, %struct.opt_pass* getelementptr inbounds (%struct.ipa_opt_pass_d, %struct.ipa_opt_pass_d* @pass_ipa_lto_finish_out, i64 0, i32 0)) #7, !dbg !3527
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call63, metadata !3437, metadata !DIExpression()), !dbg !3460
  store %struct.opt_pass* null, %struct.opt_pass** %call63, align 8, !dbg !3528
  call void @llvm.dbg.value(metadata %struct.opt_pass** @all_passes, metadata !3437, metadata !DIExpression()), !dbg !3460
  %call64 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** nonnull @all_passes, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_lower_eh_dispatch, i64 0, i32 0)) #7, !dbg !3529
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call64, metadata !3437, metadata !DIExpression()), !dbg !3460
  %call65 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call64, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_all_optimizations, i64 0, i32 0)) #7, !dbg !3530
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call65, metadata !3437, metadata !DIExpression()), !dbg !3460
  %call67 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_all_optimizations, i64 0, i32 0, i32 4), %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_remove_cgraph_callee_edges, i64 0, i32 0)) #7, !dbg !3531
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call67, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call68 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call67, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_strip_predict_hints, i64 0, i32 0)) #7, !dbg !3533
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call68, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call69 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call68, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_update_address_taken, i64 0, i32 0)) #7, !dbg !3534
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call69, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call70 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call69, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_rename_ssa_copies, i64 0, i32 0)) #7, !dbg !3535
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call70, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call71 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call70, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_complete_unrolli, i64 0, i32 0)) #7, !dbg !3536
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call71, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call72 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call71, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_ccp, i64 0, i32 0)) #7, !dbg !3537
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call72, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call73 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call72, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_forwprop, i64 0, i32 0)) #7, !dbg !3538
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call73, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call74 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call73, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_call_cdce, i64 0, i32 0)) #7, !dbg !3539
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call74, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call75 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call74, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_build_alias, i64 0, i32 0)) #7, !dbg !3540
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call75, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call76 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call75, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_return_slot, i64 0, i32 0)) #7, !dbg !3541
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call76, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call77 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call76, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_phiprop, i64 0, i32 0)) #7, !dbg !3542
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call77, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call78 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call77, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_fre, i64 0, i32 0)) #7, !dbg !3543
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call78, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call79 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call78, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_copy_prop, i64 0, i32 0)) #7, !dbg !3544
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call79, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call80 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call79, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_merge_phi, i64 0, i32 0)) #7, !dbg !3545
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call80, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call81 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call80, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_vrp, i64 0, i32 0)) #7, !dbg !3546
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call81, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call82 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call81, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_dce, i64 0, i32 0)) #7, !dbg !3547
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call82, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call83 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call82, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_cselim, i64 0, i32 0)) #7, !dbg !3548
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call83, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call84 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call83, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_tree_ifcombine, i64 0, i32 0)) #7, !dbg !3549
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call84, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call85 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call84, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_phiopt, i64 0, i32 0)) #7, !dbg !3550
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call85, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call86 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call85, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_tail_recursion, i64 0, i32 0)) #7, !dbg !3551
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call86, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call87 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call86, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_ch, i64 0, i32 0)) #7, !dbg !3552
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call87, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call88 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call87, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_stdarg, i64 0, i32 0)) #7, !dbg !3553
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call88, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call89 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call88, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_lower_complex, i64 0, i32 0)) #7, !dbg !3554
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call89, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call90 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call89, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_sra, i64 0, i32 0)) #7, !dbg !3555
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call90, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call91 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call90, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_rename_ssa_copies, i64 0, i32 0)) #7, !dbg !3556
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call91, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call92 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call91, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_dominator, i64 0, i32 0)) #7, !dbg !3557
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call92, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call93 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call92, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_phi_only_cprop, i64 0, i32 0)) #7, !dbg !3558
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call93, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call94 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call93, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_dse, i64 0, i32 0)) #7, !dbg !3559
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call94, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call95 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call94, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_reassoc, i64 0, i32 0)) #7, !dbg !3560
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call95, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call96 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call95, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_dce, i64 0, i32 0)) #7, !dbg !3561
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call96, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call97 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call96, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_forwprop, i64 0, i32 0)) #7, !dbg !3562
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call97, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call98 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call97, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_phiopt, i64 0, i32 0)) #7, !dbg !3563
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call98, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call99 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call98, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_object_sizes, i64 0, i32 0)) #7, !dbg !3564
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call99, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call100 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call99, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_ccp, i64 0, i32 0)) #7, !dbg !3565
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call100, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call101 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call100, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_copy_prop, i64 0, i32 0)) #7, !dbg !3566
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call101, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call102 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call101, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_cse_sincos, i64 0, i32 0)) #7, !dbg !3567
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call102, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call103 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call102, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_optimize_bswap, i64 0, i32 0)) #7, !dbg !3568
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call103, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call104 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call103, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_split_crit_edges, i64 0, i32 0)) #7, !dbg !3569
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call104, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call105 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call104, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_pre, i64 0, i32 0)) #7, !dbg !3570
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call105, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call106 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call105, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_sink_code, i64 0, i32 0)) #7, !dbg !3571
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call106, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call107 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call106, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_tree_loop, i64 0, i32 0)) #7, !dbg !3572
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call107, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call109 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_tree_loop, i64 0, i32 0, i32 4), %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_tree_loop_init, i64 0, i32 0)) #7, !dbg !3573
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call109, metadata !3446, metadata !DIExpression()), !dbg !3574
  %call110 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call109, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_copy_prop, i64 0, i32 0)) #7, !dbg !3575
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call110, metadata !3446, metadata !DIExpression()), !dbg !3574
  %call111 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call110, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_dce_loop, i64 0, i32 0)) #7, !dbg !3576
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call111, metadata !3446, metadata !DIExpression()), !dbg !3574
  %call112 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call111, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_lim, i64 0, i32 0)) #7, !dbg !3577
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call112, metadata !3446, metadata !DIExpression()), !dbg !3574
  %call113 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call112, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_tree_unswitch, i64 0, i32 0)) #7, !dbg !3578
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call113, metadata !3446, metadata !DIExpression()), !dbg !3574
  %call114 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call113, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_scev_cprop, i64 0, i32 0)) #7, !dbg !3579
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call114, metadata !3446, metadata !DIExpression()), !dbg !3574
  %call115 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call114, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_record_bounds, i64 0, i32 0)) #7, !dbg !3580
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call115, metadata !3446, metadata !DIExpression()), !dbg !3574
  %call116 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call115, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_check_data_deps, i64 0, i32 0)) #7, !dbg !3581
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call116, metadata !3446, metadata !DIExpression()), !dbg !3574
  %call117 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call116, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_loop_distribution, i64 0, i32 0)) #7, !dbg !3582
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call117, metadata !3446, metadata !DIExpression()), !dbg !3574
  %call118 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call117, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_linear_transform, i64 0, i32 0)) #7, !dbg !3583
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call118, metadata !3446, metadata !DIExpression()), !dbg !3574
  %call119 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call118, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_graphite_transforms, i64 0, i32 0)) #7, !dbg !3584
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call119, metadata !3446, metadata !DIExpression()), !dbg !3574
  %call121 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_graphite_transforms, i64 0, i32 0, i32 4), %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_copy_prop, i64 0, i32 0)) #7, !dbg !3585
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call121, metadata !3448, metadata !DIExpression()), !dbg !3586
  %call122 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call121, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_dce_loop, i64 0, i32 0)) #7, !dbg !3587
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call122, metadata !3448, metadata !DIExpression()), !dbg !3586
  %call123 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call122, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_lim, i64 0, i32 0)) #7, !dbg !3588
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call123, metadata !3448, metadata !DIExpression()), !dbg !3586
  %call124 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call119, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_iv_canon, i64 0, i32 0)) #7, !dbg !3589
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call124, metadata !3446, metadata !DIExpression()), !dbg !3574
  %call125 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call124, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_if_conversion, i64 0, i32 0)) #7, !dbg !3590
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call125, metadata !3446, metadata !DIExpression()), !dbg !3574
  %call126 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call125, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_vectorize, i64 0, i32 0)) #7, !dbg !3591
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call126, metadata !3446, metadata !DIExpression()), !dbg !3574
  %call128 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_vectorize, i64 0, i32 0, i32 4), %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_lower_vector_ssa, i64 0, i32 0)) #7, !dbg !3592
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call128, metadata !3450, metadata !DIExpression()), !dbg !3593
  %call129 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call128, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_dce_loop, i64 0, i32 0)) #7, !dbg !3594
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call129, metadata !3450, metadata !DIExpression()), !dbg !3593
  %call130 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call126, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_predcom, i64 0, i32 0)) #7, !dbg !3595
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call130, metadata !3446, metadata !DIExpression()), !dbg !3574
  %call131 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call130, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_complete_unroll, i64 0, i32 0)) #7, !dbg !3596
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call131, metadata !3446, metadata !DIExpression()), !dbg !3574
  %call132 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call131, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_slp_vectorize, i64 0, i32 0)) #7, !dbg !3597
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call132, metadata !3446, metadata !DIExpression()), !dbg !3574
  %call133 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call132, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_parallelize_loops, i64 0, i32 0)) #7, !dbg !3598
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call133, metadata !3446, metadata !DIExpression()), !dbg !3574
  %call134 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call133, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_loop_prefetch, i64 0, i32 0)) #7, !dbg !3599
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call134, metadata !3446, metadata !DIExpression()), !dbg !3574
  %call135 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call134, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_iv_optimize, i64 0, i32 0)) #7, !dbg !3600
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call135, metadata !3446, metadata !DIExpression()), !dbg !3574
  %call136 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call135, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_tree_loop_done, i64 0, i32 0)) #7, !dbg !3601
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call136, metadata !3446, metadata !DIExpression()), !dbg !3574
  %call137 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call107, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_cse_reciprocals, i64 0, i32 0)) #7, !dbg !3602
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call137, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call138 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call137, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_reassoc, i64 0, i32 0)) #7, !dbg !3603
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call138, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call139 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call138, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_vrp, i64 0, i32 0)) #7, !dbg !3604
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call139, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call140 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call139, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_dominator, i64 0, i32 0)) #7, !dbg !3605
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call140, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call141 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call140, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_phi_only_cprop, i64 0, i32 0)) #7, !dbg !3606
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call141, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call142 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call141, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_cd_dce, i64 0, i32 0)) #7, !dbg !3607
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call142, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call143 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call142, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_tracer, i64 0, i32 0)) #7, !dbg !3608
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call143, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call144 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call143, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_late_warn_uninitialized, i64 0, i32 0)) #7, !dbg !3609
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call144, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call145 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call144, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_dse, i64 0, i32 0)) #7, !dbg !3610
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call145, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call146 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call145, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_forwprop, i64 0, i32 0)) #7, !dbg !3611
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call146, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call147 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call146, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_phiopt, i64 0, i32 0)) #7, !dbg !3612
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call147, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call148 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call147, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_fold_builtins, i64 0, i32 0)) #7, !dbg !3613
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call148, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call149 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call148, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_tail_calls, i64 0, i32 0)) #7, !dbg !3614
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call149, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call150 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call149, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_rename_ssa_copies, i64 0, i32 0)) #7, !dbg !3615
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call150, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call151 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call150, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_uncprop, i64 0, i32 0)) #7, !dbg !3616
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call151, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call152 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call151, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_local_pure_const, i64 0, i32 0)) #7, !dbg !3617
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call152, metadata !3444, metadata !DIExpression()), !dbg !3532
  %call153 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call65, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_lower_complex_O0, i64 0, i32 0)) #7, !dbg !3618
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call153, metadata !3437, metadata !DIExpression()), !dbg !3460
  %call154 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call153, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_cleanup_eh, i64 0, i32 0)) #7, !dbg !3619
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call154, metadata !3437, metadata !DIExpression()), !dbg !3460
  %call155 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call154, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_lower_resx, i64 0, i32 0)) #7, !dbg !3620
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call155, metadata !3437, metadata !DIExpression()), !dbg !3460
  %call156 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call155, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_nrv, i64 0, i32 0)) #7, !dbg !3621
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call156, metadata !3437, metadata !DIExpression()), !dbg !3460
  %call157 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call156, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_mudflap_2, i64 0, i32 0)) #7, !dbg !3622
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call157, metadata !3437, metadata !DIExpression()), !dbg !3460
  %call158 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call157, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_cleanup_cfg_post_optimizing, i64 0, i32 0)) #7, !dbg !3623
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call158, metadata !3437, metadata !DIExpression()), !dbg !3460
  %call159 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call158, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_warn_function_noreturn, i64 0, i32 0)) #7, !dbg !3624
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call159, metadata !3437, metadata !DIExpression()), !dbg !3460
  %call160 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call159, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_expand, i64 0, i32 0)) #7, !dbg !3625
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call160, metadata !3437, metadata !DIExpression()), !dbg !3460
  %call161 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call160, %struct.opt_pass* getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_rest_of_compilation, i64 0, i32 0)) #7, !dbg !3626
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call161, metadata !3437, metadata !DIExpression()), !dbg !3460
  %call163 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** getelementptr inbounds (%struct.gimple_opt_pass, %struct.gimple_opt_pass* @pass_rest_of_compilation, i64 0, i32 0, i32 4), %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_init_function, i64 0, i32 0)) #7, !dbg !3627
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call163, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call164 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call163, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_jump, i64 0, i32 0)) #7, !dbg !3629
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call164, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call165 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call164, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_rtl_eh, i64 0, i32 0)) #7, !dbg !3630
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call165, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call166 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call165, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_initial_value_sets, i64 0, i32 0)) #7, !dbg !3631
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call166, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call167 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call166, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_unshare_all_rtl, i64 0, i32 0)) #7, !dbg !3632
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call167, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call168 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call167, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_instantiate_virtual_regs, i64 0, i32 0)) #7, !dbg !3633
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call168, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call169 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call168, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_into_cfg_layout_mode, i64 0, i32 0)) #7, !dbg !3634
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call169, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call170 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call169, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_jump2, i64 0, i32 0)) #7, !dbg !3635
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call170, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call171 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call170, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_lower_subreg, i64 0, i32 0)) #7, !dbg !3636
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call171, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call172 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call171, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_df_initialize_opt, i64 0, i32 0)) #7, !dbg !3637
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call172, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call173 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call172, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_cse, i64 0, i32 0)) #7, !dbg !3638
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call173, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call174 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call173, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_rtl_fwprop, i64 0, i32 0)) #7, !dbg !3639
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call174, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call175 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call174, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_rtl_cprop, i64 0, i32 0)) #7, !dbg !3640
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call175, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call176 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call175, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_rtl_pre, i64 0, i32 0)) #7, !dbg !3641
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call176, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call177 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call176, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_rtl_hoist, i64 0, i32 0)) #7, !dbg !3642
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call177, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call178 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call177, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_rtl_cprop, i64 0, i32 0)) #7, !dbg !3643
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call178, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call179 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call178, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_rtl_store_motion, i64 0, i32 0)) #7, !dbg !3644
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call179, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call180 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call179, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_cse_after_global_opts, i64 0, i32 0)) #7, !dbg !3645
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call180, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call181 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call180, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_rtl_ifcvt, i64 0, i32 0)) #7, !dbg !3646
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call181, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call182 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call181, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_reginfo_init, i64 0, i32 0)) #7, !dbg !3647
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call182, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call183 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call182, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_loop2, i64 0, i32 0)) #7, !dbg !3648
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call183, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call185 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_loop2, i64 0, i32 0, i32 4), %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_rtl_loop_init, i64 0, i32 0)) #7, !dbg !3649
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call185, metadata !3454, metadata !DIExpression()), !dbg !3650
  %call186 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call185, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_rtl_move_loop_invariants, i64 0, i32 0)) #7, !dbg !3651
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call186, metadata !3454, metadata !DIExpression()), !dbg !3650
  %call187 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call186, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_rtl_unswitch, i64 0, i32 0)) #7, !dbg !3652
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call187, metadata !3454, metadata !DIExpression()), !dbg !3650
  %call188 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call187, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_rtl_unroll_and_peel_loops, i64 0, i32 0)) #7, !dbg !3653
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call188, metadata !3454, metadata !DIExpression()), !dbg !3650
  %call189 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call188, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_rtl_doloop, i64 0, i32 0)) #7, !dbg !3654
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call189, metadata !3454, metadata !DIExpression()), !dbg !3650
  %call190 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call189, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_rtl_loop_done, i64 0, i32 0)) #7, !dbg !3655
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call190, metadata !3454, metadata !DIExpression()), !dbg !3650
  store %struct.opt_pass* null, %struct.opt_pass** %call190, align 8, !dbg !3656
  %call191 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call183, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_web, i64 0, i32 0)) #7, !dbg !3657
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call191, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call192 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call191, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_rtl_cprop, i64 0, i32 0)) #7, !dbg !3658
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call192, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call193 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call192, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_cse2, i64 0, i32 0)) #7, !dbg !3659
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call193, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call194 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call193, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_rtl_dse1, i64 0, i32 0)) #7, !dbg !3660
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call194, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call195 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call194, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_rtl_fwprop_addr, i64 0, i32 0)) #7, !dbg !3661
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call195, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call196 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call195, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_inc_dec, i64 0, i32 0)) #7, !dbg !3662
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call196, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call197 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call196, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_initialize_regs, i64 0, i32 0)) #7, !dbg !3663
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call197, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call198 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call197, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_ud_rtl_dce, i64 0, i32 0)) #7, !dbg !3664
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call198, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call199 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call198, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_combine, i64 0, i32 0)) #7, !dbg !3665
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call199, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call200 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call199, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_if_after_combine, i64 0, i32 0)) #7, !dbg !3666
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call200, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call201 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call200, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_partition_blocks, i64 0, i32 0)) #7, !dbg !3667
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call201, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call202 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call201, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_regmove, i64 0, i32 0)) #7, !dbg !3668
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call202, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call203 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call202, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_outof_cfg_layout_mode, i64 0, i32 0)) #7, !dbg !3669
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call203, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call204 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call203, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_split_all_insns, i64 0, i32 0)) #7, !dbg !3670
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call204, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call205 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call204, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_lower_subreg2, i64 0, i32 0)) #7, !dbg !3671
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call205, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call206 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call205, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_df_initialize_no_opt, i64 0, i32 0)) #7, !dbg !3672
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call206, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call207 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call206, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_stack_ptr_mod, i64 0, i32 0)) #7, !dbg !3673
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call207, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call208 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call207, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_mode_switching, i64 0, i32 0)) #7, !dbg !3674
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call208, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call209 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call208, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_match_asm_constraints, i64 0, i32 0)) #7, !dbg !3675
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call209, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call210 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call209, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_sms, i64 0, i32 0)) #7, !dbg !3676
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call210, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call211 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call210, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_sched, i64 0, i32 0)) #7, !dbg !3677
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call211, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call212 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call211, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_ira, i64 0, i32 0)) #7, !dbg !3678
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call212, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call213 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call212, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_postreload, i64 0, i32 0)) #7, !dbg !3679
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call213, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call215 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_postreload, i64 0, i32 0, i32 4), %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_postreload_cse, i64 0, i32 0)) #7, !dbg !3680
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call215, metadata !3456, metadata !DIExpression()), !dbg !3681
  %call216 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call215, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_gcse2, i64 0, i32 0)) #7, !dbg !3682
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call216, metadata !3456, metadata !DIExpression()), !dbg !3681
  %call217 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call216, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_split_after_reload, i64 0, i32 0)) #7, !dbg !3683
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call217, metadata !3456, metadata !DIExpression()), !dbg !3681
  %call218 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call217, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_branch_target_load_optimize1, i64 0, i32 0)) #7, !dbg !3684
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call218, metadata !3456, metadata !DIExpression()), !dbg !3681
  %call219 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call218, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_thread_prologue_and_epilogue, i64 0, i32 0)) #7, !dbg !3685
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call219, metadata !3456, metadata !DIExpression()), !dbg !3681
  %call220 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call219, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_rtl_dse2, i64 0, i32 0)) #7, !dbg !3686
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call220, metadata !3456, metadata !DIExpression()), !dbg !3681
  %call221 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call220, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_stack_adjustments, i64 0, i32 0)) #7, !dbg !3687
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call221, metadata !3456, metadata !DIExpression()), !dbg !3681
  %call222 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call221, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_peephole2, i64 0, i32 0)) #7, !dbg !3688
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call222, metadata !3456, metadata !DIExpression()), !dbg !3681
  %call223 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call222, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_if_after_reload, i64 0, i32 0)) #7, !dbg !3689
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call223, metadata !3456, metadata !DIExpression()), !dbg !3681
  %call224 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call223, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_regrename, i64 0, i32 0)) #7, !dbg !3690
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call224, metadata !3456, metadata !DIExpression()), !dbg !3681
  %call225 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call224, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_cprop_hardreg, i64 0, i32 0)) #7, !dbg !3691
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call225, metadata !3456, metadata !DIExpression()), !dbg !3681
  %call226 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call225, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_fast_rtl_dce, i64 0, i32 0)) #7, !dbg !3692
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call226, metadata !3456, metadata !DIExpression()), !dbg !3681
  %call227 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call226, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_reorder_blocks, i64 0, i32 0)) #7, !dbg !3693
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call227, metadata !3456, metadata !DIExpression()), !dbg !3681
  %call228 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call227, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_branch_target_load_optimize2, i64 0, i32 0)) #7, !dbg !3694
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call228, metadata !3456, metadata !DIExpression()), !dbg !3681
  %call229 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call228, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_leaf_regs, i64 0, i32 0)) #7, !dbg !3695
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call229, metadata !3456, metadata !DIExpression()), !dbg !3681
  %call230 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call229, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_split_before_sched2, i64 0, i32 0)) #7, !dbg !3696
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call230, metadata !3456, metadata !DIExpression()), !dbg !3681
  %call231 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call230, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_sched2, i64 0, i32 0)) #7, !dbg !3697
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call231, metadata !3456, metadata !DIExpression()), !dbg !3681
  %call232 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call231, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_stack_regs, i64 0, i32 0)) #7, !dbg !3698
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call232, metadata !3456, metadata !DIExpression()), !dbg !3681
  %call234 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_stack_regs, i64 0, i32 0, i32 4), %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_split_before_regstack, i64 0, i32 0)) #7, !dbg !3699
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call234, metadata !3458, metadata !DIExpression()), !dbg !3700
  %call235 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call234, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_stack_regs_run, i64 0, i32 0)) #7, !dbg !3701
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call235, metadata !3458, metadata !DIExpression()), !dbg !3700
  %call236 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call232, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_compute_alignments, i64 0, i32 0)) #7, !dbg !3702
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call236, metadata !3456, metadata !DIExpression()), !dbg !3681
  %call237 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call236, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_duplicate_computed_gotos, i64 0, i32 0)) #7, !dbg !3703
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call237, metadata !3456, metadata !DIExpression()), !dbg !3681
  %call238 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call237, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_variable_tracking, i64 0, i32 0)) #7, !dbg !3704
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call238, metadata !3456, metadata !DIExpression()), !dbg !3681
  %call239 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call238, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_free_cfg, i64 0, i32 0)) #7, !dbg !3705
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call239, metadata !3456, metadata !DIExpression()), !dbg !3681
  %call240 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call239, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_machine_reorg, i64 0, i32 0)) #7, !dbg !3706
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call240, metadata !3456, metadata !DIExpression()), !dbg !3681
  %call241 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call240, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_cleanup_barriers, i64 0, i32 0)) #7, !dbg !3707
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call241, metadata !3456, metadata !DIExpression()), !dbg !3681
  %call242 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call241, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_delay_slots, i64 0, i32 0)) #7, !dbg !3708
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call242, metadata !3456, metadata !DIExpression()), !dbg !3681
  %call243 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call242, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_split_for_shorten_branches, i64 0, i32 0)) #7, !dbg !3709
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call243, metadata !3456, metadata !DIExpression()), !dbg !3681
  %call244 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call243, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_convert_to_eh_region_ranges, i64 0, i32 0)) #7, !dbg !3710
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call244, metadata !3456, metadata !DIExpression()), !dbg !3681
  %call245 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call244, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_shorten_branches, i64 0, i32 0)) #7, !dbg !3711
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call245, metadata !3456, metadata !DIExpression()), !dbg !3681
  %call246 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call245, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_set_nothrow_function_flags, i64 0, i32 0)) #7, !dbg !3712
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call246, metadata !3456, metadata !DIExpression()), !dbg !3681
  %call247 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call246, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_final, i64 0, i32 0)) #7, !dbg !3713
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call247, metadata !3456, metadata !DIExpression()), !dbg !3681
  %call248 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call213, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_df_finish, i64 0, i32 0)) #7, !dbg !3714
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call248, metadata !3452, metadata !DIExpression()), !dbg !3628
  %call249 = tail call fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %call161, %struct.opt_pass* getelementptr inbounds (%struct.rtl_opt_pass, %struct.rtl_opt_pass* @pass_clean_state, i64 0, i32 0)) #7, !dbg !3715
  call void @llvm.dbg.value(metadata %struct.opt_pass** %call249, metadata !3437, metadata !DIExpression()), !dbg !3460
  store %struct.opt_pass* null, %struct.opt_pass** %call249, align 8, !dbg !3716
  %0 = load %struct.opt_pass*, %struct.opt_pass** @all_lowering_passes, align 8, !dbg !3717
  tail call fastcc void @register_dump_files(%struct.opt_pass* %0, i32 1) #7, !dbg !3718
  %1 = load %struct.opt_pass*, %struct.opt_pass** @all_small_ipa_passes, align 8, !dbg !3719
  tail call fastcc void @register_dump_files(%struct.opt_pass* %1, i32 15) #7, !dbg !3720
  %2 = load %struct.opt_pass*, %struct.opt_pass** @all_regular_ipa_passes, align 8, !dbg !3721
  tail call fastcc void @register_dump_files(%struct.opt_pass* %2, i32 15) #7, !dbg !3722
  %3 = load %struct.opt_pass*, %struct.opt_pass** @all_lto_gen_passes, align 8, !dbg !3723
  tail call fastcc void @register_dump_files(%struct.opt_pass* %3, i32 15) #7, !dbg !3724
  %4 = load %struct.opt_pass*, %struct.opt_pass** @all_passes, align 8, !dbg !3725
  tail call fastcc void @register_dump_files(%struct.opt_pass* %4, i32 15) #7, !dbg !3726
  ret void, !dbg !3727
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.opt_pass** @next_pass_1(%struct.opt_pass** %list, %struct.opt_pass* %pass) unnamed_addr #5 !dbg !3728 {
entry:
  call void @llvm.dbg.value(metadata %struct.opt_pass** %list, metadata !3732, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata %struct.opt_pass* %pass, metadata !3733, metadata !DIExpression()), !dbg !3734
  %name = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass, i64 0, i32 1, !dbg !3735
  %0 = load i8*, i8** %name, align 8, !dbg !3735
  %cmp = icmp eq i8* %0, null, !dbg !3735
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3735

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 515, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !3735
  br label %cond.end, !dbg !3735

cond.end:                                         ; preds = %entry, %cond.true
  %call = tail call fastcc %struct.opt_pass* @make_pass_instance(%struct.opt_pass* %pass, i8 zeroext 0) #7, !dbg !3736
  store %struct.opt_pass* %call, %struct.opt_pass** %list, align 8, !dbg !3737
  %next = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %call, i64 0, i32 5, !dbg !3738
  ret %struct.opt_pass** %next, !dbg !3739
}

; Function Attrs: nounwind uwtable
define internal fastcc void @register_dump_files(%struct.opt_pass* %pass, i32 %properties) unnamed_addr #5 !dbg !3740 {
entry:
  call void @llvm.dbg.value(metadata %struct.opt_pass* %pass, metadata !3744, metadata !DIExpression()), !dbg !3746
  call void @llvm.dbg.value(metadata i32 %properties, metadata !3745, metadata !DIExpression()), !dbg !3746
  %properties_required = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass, i64 0, i32 8, !dbg !3747
  %0 = load i32, i32* %properties_required, align 8, !dbg !3748
  %or = or i32 %0, %properties, !dbg !3748
  store i32 %or, i32* %properties_required, align 8, !dbg !3748
  %call = tail call fastcc i32 @register_dump_files_1(%struct.opt_pass* %pass, i32 %properties) #7, !dbg !3749
  ret void, !dbg !3750
}

; Function Attrs: nounwind uwtable
define dso_local void @do_per_function_toporder(void (i8*)* %callback, i8* %data) local_unnamed_addr #5 !dbg !3751 {
entry:
  call void @llvm.dbg.value(metadata void (i8*)* %callback, metadata !3755, metadata !DIExpression()), !dbg !3764
  call void @llvm.dbg.value(metadata i8* %data, metadata !3756, metadata !DIExpression()), !dbg !3764
  %0 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !3765
  %tobool = icmp eq %union.tree_node* %0, null, !dbg !3765
  br i1 %tobool, label %if.else, label %if.then, !dbg !3766

if.then:                                          ; preds = %entry
  tail call void %callback(i8* %data) #6, !dbg !3767
  br label %if.end24, !dbg !3767

if.else:                                          ; preds = %entry
  %1 = load %struct.cgraph_node**, %struct.cgraph_node*** @order, align 8, !dbg !3768
  %tobool1 = icmp eq %struct.cgraph_node** %1, null, !dbg !3768
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !3768

cond.true:                                        ; preds = %if.else
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 1133, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !3768
  br label %cond.end, !dbg !3768

cond.end:                                         ; preds = %if.else, %cond.true
  %2 = load i32, i32* @cgraph_n_nodes, align 4, !dbg !3769
  %conv = sext i32 %2 to i64, !dbg !3769
  %mul = shl nsw i64 %conv, 3, !dbg !3769
  %call = tail call i8* @ggc_alloc_stat(i64 %mul) #6, !dbg !3769
  store i8* %call, i8** bitcast (%struct.cgraph_node*** @order to i8**), align 8, !dbg !3770
  %.cast = bitcast i8* %call to %struct.cgraph_node**, !dbg !3771
  %call2 = tail call i32 @cgraph_postorder(%struct.cgraph_node** %.cast) #6, !dbg !3772
  store i32 %call2, i32* @nnodes, align 4, !dbg !3773
  call void @llvm.dbg.value(metadata i32 %call2, metadata !3757, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3764
  %3 = sext i32 %call2 to i64, !dbg !3774
  br label %for.cond, !dbg !3774

for.cond:                                         ; preds = %for.body, %cond.end
  %indvars.iv1 = phi i64 [ %indvars.iv.next2, %for.body ], [ %3, %cond.end ]
  %indvars.iv.next2 = add nsw i64 %indvars.iv1, -1, !dbg !3776
  call void @llvm.dbg.value(metadata i32 undef, metadata !3757, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3764
  %cmp = icmp sgt i64 %indvars.iv1, 0, !dbg !3777
  br i1 %cmp, label %for.body, label %for.end, !dbg !3779

for.body:                                         ; preds = %for.cond
  %4 = load %struct.cgraph_node**, %struct.cgraph_node*** @order, align 8, !dbg !3780
  %arrayidx = getelementptr inbounds %struct.cgraph_node*, %struct.cgraph_node** %4, i64 %indvars.iv.next2, !dbg !3780
  %5 = load %struct.cgraph_node*, %struct.cgraph_node** %arrayidx, align 8, !dbg !3780
  %process = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %5, i64 0, i32 27, !dbg !3781
  %bf.load = load i16, i16* %process, align 4, !dbg !3782
  %bf.set = or i16 %bf.load, 64, !dbg !3782
  store i16 %bf.set, i16* %process, align 4, !dbg !3782
  call void @llvm.dbg.value(metadata i32 undef, metadata !3757, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3764
  br label %for.cond, !dbg !3783, !llvm.loop !3784

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.value(metadata i32 %call2, metadata !3757, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3764
  %6 = sext i32 %call2 to i64, !dbg !3786
  br label %for.cond5, !dbg !3786

for.cond5:                                        ; preds = %for.inc21, %for.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc21 ], [ %6, %for.end ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !3787
  call void @llvm.dbg.value(metadata i32 undef, metadata !3757, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3764
  %cmp6 = icmp sgt i64 %indvars.iv, 0, !dbg !3788
  br i1 %cmp6, label %for.body8, label %if.end24.loopexit, !dbg !3789

for.body8:                                        ; preds = %for.cond5
  %7 = load %struct.cgraph_node**, %struct.cgraph_node*** @order, align 8, !dbg !3790
  %arrayidx10 = getelementptr inbounds %struct.cgraph_node*, %struct.cgraph_node** %7, i64 %indvars.iv.next, !dbg !3790
  %8 = load %struct.cgraph_node*, %struct.cgraph_node** %arrayidx10, align 8, !dbg !3790
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %8, metadata !3758, metadata !DIExpression()), !dbg !3791
  store %struct.cgraph_node* null, %struct.cgraph_node** %arrayidx10, align 8, !dbg !3792
  %process13 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %8, i64 0, i32 27, !dbg !3793
  %bf.load14 = load i16, i16* %process13, align 4, !dbg !3794
  %bf.clear15 = and i16 %bf.load14, -65, !dbg !3794
  store i16 %bf.clear15, i16* %process13, align 4, !dbg !3794
  %bf.clear17 = and i16 %bf.load14, 32, !dbg !3795
  %tobool18 = icmp eq i16 %bf.clear17, 0, !dbg !3797
  br i1 %tobool18, label %for.inc21, label %if.then19, !dbg !3798

if.then19:                                        ; preds = %for.body8
  %9 = bitcast %struct.cgraph_node* %8 to %struct.tree_function_decl**, !dbg !3799
  %10 = load %struct.tree_function_decl*, %struct.tree_function_decl** %9, align 8, !dbg !3799
  %f = getelementptr inbounds %struct.tree_function_decl, %struct.tree_function_decl* %10, i64 0, i32 1, !dbg !3799
  %11 = load %struct.function*, %struct.function** %f, align 8, !dbg !3799
  tail call void @push_cfun(%struct.function* %11) #6, !dbg !3801
  %12 = bitcast %struct.cgraph_node* %8 to i64*, !dbg !3802
  %13 = load i64, i64* %12, align 8, !dbg !3802
  store i64 %13, i64* bitcast (%union.tree_node** @current_function_decl to i64*), align 8, !dbg !3803
  tail call void %callback(i8* %data) #6, !dbg !3804
  tail call void @free_dominance_info(i32 1) #6, !dbg !3805
  tail call void @free_dominance_info(i32 2) #6, !dbg !3806
  store %union.tree_node* null, %union.tree_node** @current_function_decl, align 8, !dbg !3807
  tail call void @pop_cfun() #6, !dbg !3808
  tail call void @ggc_collect() #6, !dbg !3809
  br label %for.inc21, !dbg !3810

for.inc21:                                        ; preds = %for.body8, %if.then19
  call void @llvm.dbg.value(metadata i32 undef, metadata !3757, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3764
  br label %for.cond5, !dbg !3811, !llvm.loop !3812

if.end24.loopexit:                                ; preds = %for.cond5
  br label %if.end24, !dbg !3814

if.end24:                                         ; preds = %if.end24.loopexit, %if.then
  %14 = load i8*, i8** bitcast (%struct.cgraph_node*** @order to i8**), align 8, !dbg !3814
  tail call void @ggc_free(i8* %14) #6, !dbg !3815
  store %struct.cgraph_node** null, %struct.cgraph_node*** @order, align 8, !dbg !3816
  store i32 0, i32* @nnodes, align 4, !dbg !3817
  ret void, !dbg !3818
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

declare dso_local i8* @ggc_alloc_stat(i64) local_unnamed_addr #2

declare dso_local i32 @cgraph_postorder(%struct.cgraph_node**) local_unnamed_addr #2

declare dso_local void @push_cfun(%struct.function*) local_unnamed_addr #2

declare dso_local void @free_dominance_info(i32) local_unnamed_addr #2

declare dso_local void @pop_cfun() local_unnamed_addr #2

declare dso_local void @ggc_collect() local_unnamed_addr #2

declare dso_local void @ggc_free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @pass_init_dump_file(%struct.opt_pass* %pass) local_unnamed_addr #5 !dbg !3819 {
entry:
  call void @llvm.dbg.value(metadata %struct.opt_pass* %pass, metadata !3823, metadata !DIExpression()), !dbg !3831
  %static_pass_number = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass, i64 0, i32 6, !dbg !3832
  %0 = load i32, i32* %static_pass_number, align 8, !dbg !3832
  %cmp = icmp eq i32 %0, -1, !dbg !3833
  br i1 %cmp, label %return, label %if.then, !dbg !3834

if.then:                                          ; preds = %entry
  %call = tail call i32 @dump_initialized_p(i32 %0) #6, !dbg !3835
  %tobool = icmp eq i32 %call, 0, !dbg !3836
  %conv = zext i1 %tobool to i8, !dbg !3836
  call void @llvm.dbg.value(metadata i8 %conv, metadata !3824, metadata !DIExpression()), !dbg !3837
  %1 = load i32, i32* %static_pass_number, align 8, !dbg !3838
  %call3 = tail call i8* @get_dump_file_name(i32 %1) #6, !dbg !3839
  store i8* %call3, i8** @dump_file_name, align 8, !dbg !3840
  %2 = load i32, i32* %static_pass_number, align 8, !dbg !3841
  %call5 = tail call %struct._IO_FILE* @dump_begin(i32 %2, i32* nonnull @dump_flags) #6, !dbg !3842
  store %struct._IO_FILE* %call5, %struct._IO_FILE** @dump_file, align 8, !dbg !3843
  %tobool6 = icmp ne %struct._IO_FILE* %call5, null, !dbg !3844
  %3 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !3845
  %tobool7 = icmp ne %union.tree_node* %3, null, !dbg !3845
  %or.cond = and i1 %tobool6, %tobool7, !dbg !3846
  br i1 %or.cond, label %if.then8, label %return, !dbg !3846

if.then8:                                         ; preds = %if.then
  %4 = load i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 22), align 8, !dbg !3847
  %call9 = tail call i8* %4(%union.tree_node* nonnull %3, i32 2) #6, !dbg !3848
  call void @llvm.dbg.value(metadata i8* %call9, metadata !3827, metadata !DIExpression()), !dbg !3849
  %5 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !3850
  %call10 = tail call %union.tree_node* @decl_assembler_name(%union.tree_node* %5) #6, !dbg !3850
  %id = getelementptr inbounds %union.tree_node, %union.tree_node* %call10, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3850
  %str = bitcast i32* %id to i8**, !dbg !3850
  %6 = load i8*, i8** %str, align 8, !dbg !3850
  call void @llvm.dbg.value(metadata i8* %6, metadata !3830, metadata !DIExpression()), !dbg !3849
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3851
  %8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3852
  %function_frequency = getelementptr inbounds %struct.function, %struct.function* %8, i64 0, i32 20, !dbg !3853
  %bf.load = load i32, i32* %function_frequency, align 8, !dbg !3853
  %bf.clear = and i32 %bf.load, 196608, !dbg !3853
  %cmp11 = icmp eq i32 %bf.clear, 131072, !dbg !3854
  br i1 %cmp11, label %cond.end, label %cond.false, !dbg !3852

cond.false:                                       ; preds = %if.then8
  %cmp18 = icmp eq i32 %bf.clear, 0, !dbg !3855
  %cond = select i1 %cmp18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0), !dbg !3856
  br label %cond.end, !dbg !3852

cond.end:                                         ; preds = %if.then8, %cond.false
  %cond20 = phi i8* [ %cond, %cond.false ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), %if.then8 ], !dbg !3852
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i8* %call9, i8* %6, i8* %cond20) #6, !dbg !3857
  br label %return, !dbg !3858

return:                                           ; preds = %entry, %if.then, %cond.end
  %retval.0 = phi i8 [ %conv, %cond.end ], [ %conv, %if.then ], [ 0, %entry ], !dbg !3859
  ret i8 %retval.0, !dbg !3860
}

declare dso_local %union.tree_node* @decl_assembler_name(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @pass_fini_dump_file(%struct.opt_pass* %pass) local_unnamed_addr #5 !dbg !3861 {
entry:
  call void @llvm.dbg.value(metadata %struct.opt_pass* %pass, metadata !3863, metadata !DIExpression()), !dbg !3864
  %0 = load i8*, i8** @dump_file_name, align 8, !dbg !3865
  %tobool = icmp eq i8* %0, null, !dbg !3865
  br i1 %tobool, label %if.end, label %if.then, !dbg !3867

if.then:                                          ; preds = %entry
  tail call void @free(i8* nonnull %0) #6, !dbg !3868
  store i8* null, i8** @dump_file_name, align 8, !dbg !3870
  br label %if.end, !dbg !3871

if.end:                                           ; preds = %entry, %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3872
  %tobool1 = icmp eq %struct._IO_FILE* %1, null, !dbg !3872
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !3874

if.then2:                                         ; preds = %if.end
  %static_pass_number = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass, i64 0, i32 6, !dbg !3875
  %2 = load i32, i32* %static_pass_number, align 8, !dbg !3875
  tail call void @dump_end(i32 %2, %struct._IO_FILE* nonnull %1) #6, !dbg !3877
  store %struct._IO_FILE* null, %struct._IO_FILE** @dump_file, align 8, !dbg !3878
  br label %if.end3, !dbg !3879

if.end3:                                          ; preds = %if.end, %if.then2
  ret void, !dbg !3880
}

; Function Attrs: nounwind uwtable
define dso_local void @execute_ipa_summary_passes(%struct.ipa_opt_pass_d* %ipa_pass) local_unnamed_addr #5 !dbg !3881 {
entry:
  call void @llvm.dbg.value(metadata %struct.ipa_opt_pass_d* %ipa_pass, metadata !3885, metadata !DIExpression()), !dbg !3888
  br label %while.cond, !dbg !3889

while.cond:                                       ; preds = %if.end27, %entry
  %ipa_pass.addr.0 = phi %struct.ipa_opt_pass_d* [ %ipa_pass, %entry ], [ %9, %if.end27 ]
  call void @llvm.dbg.value(metadata %struct.ipa_opt_pass_d* %ipa_pass.addr.0, metadata !3885, metadata !DIExpression()), !dbg !3888
  %tobool = icmp eq %struct.ipa_opt_pass_d* %ipa_pass.addr.0, null, !dbg !3889
  br i1 %tobool, label %while.end, label %while.body, !dbg !3889

while.body:                                       ; preds = %while.cond
  %pass1 = getelementptr inbounds %struct.ipa_opt_pass_d, %struct.ipa_opt_pass_d* %ipa_pass.addr.0, i64 0, i32 0, !dbg !3890
  call void @llvm.dbg.value(metadata %struct.opt_pass* %pass1, metadata !3886, metadata !DIExpression()), !dbg !3891
  %type = getelementptr inbounds %struct.ipa_opt_pass_d, %struct.ipa_opt_pass_d* %ipa_pass.addr.0, i64 0, i32 0, i32 0, !dbg !3892
  %0 = load i32, i32* %type, align 8, !dbg !3892
  %cmp = icmp eq i32 %0, 3, !dbg !3894
  br i1 %cmp, label %land.lhs.true, label %if.end27, !dbg !3895

land.lhs.true:                                    ; preds = %while.body
  %gate = getelementptr inbounds %struct.ipa_opt_pass_d, %struct.ipa_opt_pass_d* %ipa_pass.addr.0, i64 0, i32 0, i32 2, !dbg !3896
  %1 = load i8 ()*, i8 ()** %gate, align 8, !dbg !3896
  %tobool3 = icmp eq i8 ()* %1, null, !dbg !3897
  br i1 %tobool3, label %land.lhs.true6, label %lor.lhs.false, !dbg !3898

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call = tail call zeroext i8 %1() #6, !dbg !3899
  %tobool5 = icmp eq i8 %call, 0, !dbg !3899
  br i1 %tobool5, label %if.end27, label %land.lhs.true6, !dbg !3900

land.lhs.true6:                                   ; preds = %lor.lhs.false, %land.lhs.true
  %generate_summary = getelementptr inbounds %struct.ipa_opt_pass_d, %struct.ipa_opt_pass_d* %ipa_pass.addr.0, i64 0, i32 1, !dbg !3901
  %2 = load void ()*, void ()** %generate_summary, align 8, !dbg !3901
  %tobool7 = icmp eq void ()* %2, null, !dbg !3902
  br i1 %tobool7, label %if.end27, label %if.then, !dbg !3903

if.then:                                          ; preds = %land.lhs.true6
  %call8 = tail call zeroext i8 @pass_init_dump_file(%struct.opt_pass* nonnull %pass1) #7, !dbg !3904
  %tv_id = getelementptr inbounds %struct.ipa_opt_pass_d, %struct.ipa_opt_pass_d* %ipa_pass.addr.0, i64 0, i32 0, i32 7, !dbg !3906
  %3 = load i32, i32* %tv_id, align 4, !dbg !3906
  %tobool9 = icmp ne i32 %3, 0, !dbg !3908
  %4 = load i8, i8* @timevar_enable, align 1, !dbg !3909
  %tobool11 = icmp ne i8 %4, 0, !dbg !3909
  %or.cond = and i1 %tobool9, %tobool11, !dbg !3912
  br i1 %or.cond, label %if.then12, label %if.end14, !dbg !3912

if.then12:                                        ; preds = %if.then
  tail call void @timevar_push_1(i32 %3) #6, !dbg !3909
  br label %if.end14, !dbg !3909

if.end14:                                         ; preds = %if.then12, %if.then
  %5 = load void ()*, void ()** %generate_summary, align 8, !dbg !3913
  tail call void %5() #6, !dbg !3914
  %6 = load i32, i32* %tv_id, align 4, !dbg !3915
  %tobool17 = icmp ne i32 %6, 0, !dbg !3917
  %7 = load i8, i8* @timevar_enable, align 1, !dbg !3918
  %tobool20 = icmp ne i8 %7, 0, !dbg !3918
  %or.cond1 = and i1 %tobool17, %tobool20, !dbg !3921
  br i1 %or.cond1, label %if.then21, label %if.end26, !dbg !3921

if.then21:                                        ; preds = %if.end14
  tail call void @timevar_pop_1(i32 %6) #6, !dbg !3918
  br label %if.end26, !dbg !3918

if.end26:                                         ; preds = %if.then21, %if.end14
  tail call void @pass_fini_dump_file(%struct.opt_pass* nonnull %pass1) #7, !dbg !3922
  br label %if.end27, !dbg !3923

if.end27:                                         ; preds = %lor.lhs.false, %land.lhs.true6, %if.end26, %while.body
  %next = getelementptr inbounds %struct.ipa_opt_pass_d, %struct.ipa_opt_pass_d* %ipa_pass.addr.0, i64 0, i32 0, i32 5, !dbg !3924
  %8 = bitcast %struct.opt_pass** %next to %struct.ipa_opt_pass_d**, !dbg !3924
  %9 = load %struct.ipa_opt_pass_d*, %struct.ipa_opt_pass_d** %8, align 8, !dbg !3924
  call void @llvm.dbg.value(metadata %struct.ipa_opt_pass_d* %9, metadata !3885, metadata !DIExpression()), !dbg !3888
  br label %while.cond, !dbg !3889, !llvm.loop !3925

while.end:                                        ; preds = %while.cond
  ret void, !dbg !3927
}

; Function Attrs: nounwind uwtable
define dso_local void @execute_all_ipa_transforms() local_unnamed_addr #5 !dbg !3928 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3934
  %tobool = icmp eq %struct.function* %0, null, !dbg !3934
  br i1 %tobool, label %cleanup.cont, label %if.end, !dbg !3936

if.end:                                           ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !3937
  %call = tail call %struct.cgraph_node* @cgraph_node(%union.tree_node* %1) #6, !dbg !3938
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call, metadata !3930, metadata !DIExpression()), !dbg !3939
  %ipa_transforms_to_apply = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call, i64 0, i32 17, !dbg !3940
  %2 = load %struct.VEC_ipa_opt_pass_heap*, %struct.VEC_ipa_opt_pass_heap** %ipa_transforms_to_apply, align 8, !dbg !3940
  %tobool1 = icmp eq %struct.VEC_ipa_opt_pass_heap* %2, null, !dbg !3941
  br i1 %tobool1, label %cleanup.cont, label %for.cond.preheader, !dbg !3942

for.cond.preheader:                               ; preds = %if.end
  br label %for.cond, !dbg !3943

for.cond:                                         ; preds = %for.cond.preheader, %cond.end13
  %3 = phi %struct.VEC_ipa_opt_pass_heap* [ %.pre, %cond.end13 ], [ %2, %for.cond.preheader ], !dbg !3945
  %i.0 = phi i32 [ %inc, %cond.end13 ], [ 0, %for.cond.preheader ], !dbg !3947
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3931, metadata !DIExpression()), !dbg !3948
  %tobool4 = icmp eq %struct.VEC_ipa_opt_pass_heap* %3, null, !dbg !3945
  br i1 %tobool4, label %cond.end, label %cond.true, !dbg !3945

cond.true:                                        ; preds = %for.cond
  %base = getelementptr inbounds %struct.VEC_ipa_opt_pass_heap, %struct.VEC_ipa_opt_pass_heap* %3, i64 0, i32 0, !dbg !3945
  br label %cond.end, !dbg !3945

cond.end:                                         ; preds = %for.cond, %cond.true
  %cond = phi %struct.VEC_ipa_opt_pass_base* [ %base, %cond.true ], [ null, %for.cond ], !dbg !3945
  %call6 = tail call fastcc i32 @VEC_ipa_opt_pass_base_length(%struct.VEC_ipa_opt_pass_base* %cond) #7, !dbg !3945
  %cmp = icmp ult i32 %i.0, %call6, !dbg !3949
  br i1 %cmp, label %for.body, label %for.end, !dbg !3943

for.body:                                         ; preds = %cond.end
  %4 = load %struct.VEC_ipa_opt_pass_heap*, %struct.VEC_ipa_opt_pass_heap** %ipa_transforms_to_apply, align 8, !dbg !3950
  %tobool8 = icmp eq %struct.VEC_ipa_opt_pass_heap* %4, null, !dbg !3950
  br i1 %tobool8, label %cond.end13, label %cond.true9, !dbg !3950

cond.true9:                                       ; preds = %for.body
  %base11 = getelementptr inbounds %struct.VEC_ipa_opt_pass_heap, %struct.VEC_ipa_opt_pass_heap* %4, i64 0, i32 0, !dbg !3950
  br label %cond.end13, !dbg !3950

cond.end13:                                       ; preds = %for.body, %cond.true9
  %cond14 = phi %struct.VEC_ipa_opt_pass_base* [ %base11, %cond.true9 ], [ null, %for.body ], !dbg !3950
  %call15 = tail call fastcc %struct.ipa_opt_pass_d* @VEC_ipa_opt_pass_base_index(%struct.VEC_ipa_opt_pass_base* %cond14, i32 %i.0) #7, !dbg !3950
  tail call fastcc void @execute_one_ipa_transform_pass(%struct.cgraph_node* %call, %struct.ipa_opt_pass_d* %call15) #7, !dbg !3951
  %inc = add i32 %i.0, 1, !dbg !3952
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3931, metadata !DIExpression()), !dbg !3948
  %.pre = load %struct.VEC_ipa_opt_pass_heap*, %struct.VEC_ipa_opt_pass_heap** %ipa_transforms_to_apply, align 8, !dbg !3945
  br label %for.cond, !dbg !3953, !llvm.loop !3954

for.end:                                          ; preds = %cond.end
  tail call fastcc void @VEC_ipa_opt_pass_heap_free(%struct.VEC_ipa_opt_pass_heap** nonnull %ipa_transforms_to_apply) #7, !dbg !3956
  store %struct.VEC_ipa_opt_pass_heap* null, %struct.VEC_ipa_opt_pass_heap** %ipa_transforms_to_apply, align 8, !dbg !3957
  br label %cleanup.cont, !dbg !3958

cleanup.cont:                                     ; preds = %if.end, %entry, %for.end
  ret void, !dbg !3959
}

declare dso_local %struct.cgraph_node* @cgraph_node(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_ipa_opt_pass_base_length(%struct.VEC_ipa_opt_pass_base* %vec_) unnamed_addr #0 !dbg !3960 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_opt_pass_base* %vec_, metadata !3966, metadata !DIExpression()), !dbg !3967
  %tobool = icmp eq %struct.VEC_ipa_opt_pass_base* %vec_, null, !dbg !3968
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3968

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_ipa_opt_pass_base, %struct.VEC_ipa_opt_pass_base* %vec_, i64 0, i32 0, !dbg !3968
  %0 = load i32, i32* %num, align 8, !dbg !3968
  br label %cond.end, !dbg !3968

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3968
  ret i32 %cond, !dbg !3968
}

; Function Attrs: nounwind uwtable
define internal fastcc void @execute_one_ipa_transform_pass(%struct.cgraph_node* %node, %struct.ipa_opt_pass_d* %ipa_pass) unnamed_addr #5 !dbg !3969 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !3973, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata %struct.ipa_opt_pass_d* %ipa_pass, metadata !3974, metadata !DIExpression()), !dbg !3977
  %pass1 = getelementptr inbounds %struct.ipa_opt_pass_d, %struct.ipa_opt_pass_d* %ipa_pass, i64 0, i32 0, !dbg !3978
  call void @llvm.dbg.value(metadata %struct.opt_pass* %pass1, metadata !3975, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata i32 0, metadata !3976, metadata !DIExpression()), !dbg !3977
  store %struct.opt_pass* %pass1, %struct.opt_pass** @current_pass, align 8, !dbg !3979
  %function_transform = getelementptr inbounds %struct.ipa_opt_pass_d, %struct.ipa_opt_pass_d* %ipa_pass, i64 0, i32 7, !dbg !3980
  %0 = load i32 (%struct.cgraph_node*)*, i32 (%struct.cgraph_node*)** %function_transform, align 8, !dbg !3980
  %tobool = icmp eq i32 (%struct.cgraph_node*)* %0, null, !dbg !3982
  br i1 %tobool, label %cleanup.cont, label %if.end, !dbg !3983

if.end:                                           ; preds = %entry
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3984
  %tobool2 = icmp eq %struct.function* %1, null, !dbg !3984
  br i1 %tobool2, label %land.end, label %land.rhs, !dbg !3985

land.rhs:                                         ; preds = %if.end
  %curr_properties = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 17, !dbg !3986
  %2 = load i32, i32* %curr_properties, align 8, !dbg !3986
  %and = and i32 %2, 263, !dbg !3987
  %tobool4 = icmp ne i32 %and, 0, !dbg !3985
  %phitmp = zext i1 %tobool4 to i8
  br label %land.end

land.end:                                         ; preds = %if.end, %land.rhs
  %3 = phi i8 [ 0, %if.end ], [ %phitmp, %land.rhs ]
  store i8 %3, i8* @in_gimple_form, align 1, !dbg !3988
  %call = tail call zeroext i8 @pass_init_dump_file(%struct.opt_pass* %pass1) #7, !dbg !3989
  %function_transform_todo_flags_start = getelementptr inbounds %struct.ipa_opt_pass_d, %struct.ipa_opt_pass_d* %ipa_pass, i64 0, i32 6, !dbg !3990
  %4 = load i32, i32* %function_transform_todo_flags_start, align 8, !dbg !3990
  tail call fastcc void @execute_todo(i32 %4) #7, !dbg !3991
  %tv_id = getelementptr inbounds %struct.ipa_opt_pass_d, %struct.ipa_opt_pass_d* %ipa_pass, i64 0, i32 0, i32 7, !dbg !3992
  %5 = load i32, i32* %tv_id, align 4, !dbg !3992
  %cmp6 = icmp ne i32 %5, 0, !dbg !3994
  %6 = load i8, i8* @timevar_enable, align 1, !dbg !3995
  %tobool9 = icmp ne i8 %6, 0, !dbg !3995
  %or.cond = and i1 %cmp6, %tobool9, !dbg !3998
  br i1 %or.cond, label %if.then10, label %if.end13, !dbg !3998

if.then10:                                        ; preds = %land.end
  tail call void @timevar_push_1(i32 %5) #6, !dbg !3995
  br label %if.end13, !dbg !3995

if.end13:                                         ; preds = %if.then10, %land.end
  %7 = load i32 (%struct.cgraph_node*)*, i32 (%struct.cgraph_node*)** %function_transform, align 8, !dbg !3999
  %call15 = tail call i32 %7(%struct.cgraph_node* %node) #6, !dbg !4000
  call void @llvm.dbg.value(metadata i32 %call15, metadata !3976, metadata !DIExpression()), !dbg !3977
  %8 = load i32, i32* %tv_id, align 4, !dbg !4001
  %cmp17 = icmp ne i32 %8, 0, !dbg !4003
  %9 = load i8, i8* @timevar_enable, align 1, !dbg !4004
  %tobool21 = icmp ne i8 %9, 0, !dbg !4004
  %or.cond1 = and i1 %cmp17, %tobool21, !dbg !4007
  br i1 %or.cond1, label %if.then22, label %if.end27, !dbg !4007

if.then22:                                        ; preds = %if.end13
  tail call void @timevar_pop_1(i32 %8) #6, !dbg !4004
  br label %if.end27, !dbg !4004

if.end27:                                         ; preds = %if.then22, %if.end13
  tail call fastcc void @execute_todo(i32 %call15) #7, !dbg !4008
  tail call fastcc void @verify_interpass_invariants() #7, !dbg !4009
  tail call void @pass_fini_dump_file(%struct.opt_pass* %pass1) #7, !dbg !4010
  store %struct.opt_pass* null, %struct.opt_pass** @current_pass, align 8, !dbg !4011
  br label %cleanup.cont, !dbg !4012

cleanup.cont:                                     ; preds = %entry, %if.end27
  ret void, !dbg !4012
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ipa_opt_pass_d* @VEC_ipa_opt_pass_base_index(%struct.VEC_ipa_opt_pass_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !4013 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_opt_pass_base* %vec_, metadata !4017, metadata !DIExpression()), !dbg !4019
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4018, metadata !DIExpression()), !dbg !4019
  br label %land.end, !dbg !4020

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !4020
  %arrayidx = getelementptr inbounds %struct.VEC_ipa_opt_pass_base, %struct.VEC_ipa_opt_pass_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4020
  %0 = load %struct.ipa_opt_pass_d*, %struct.ipa_opt_pass_d** %arrayidx, align 8, !dbg !4020
  ret %struct.ipa_opt_pass_d* %0, !dbg !4020
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_ipa_opt_pass_heap_free(%struct.VEC_ipa_opt_pass_heap** %vec_) unnamed_addr #0 !dbg !4021 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_opt_pass_heap** %vec_, metadata !4026, metadata !DIExpression()), !dbg !4027
  %0 = load %struct.VEC_ipa_opt_pass_heap*, %struct.VEC_ipa_opt_pass_heap** %vec_, align 8, !dbg !4028
  %tobool = icmp eq %struct.VEC_ipa_opt_pass_heap* %0, null, !dbg !4028
  br i1 %tobool, label %if.end, label %if.then, !dbg !4030

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_ipa_opt_pass_heap* %0 to i8*, !dbg !4030
  tail call void @free(i8* nonnull %1) #6, !dbg !4028
  br label %if.end, !dbg !4028

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_ipa_opt_pass_heap* null, %struct.VEC_ipa_opt_pass_heap** %vec_, align 8, !dbg !4030
  ret void, !dbg !4030
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @execute_one_pass(%struct.opt_pass* %pass) local_unnamed_addr #5 !dbg !4031 {
entry:
  %gate_status = alloca i8, align 1
  call void @llvm.dbg.value(metadata %struct.opt_pass* %pass, metadata !4033, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i32 0, metadata !4035, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i8* %gate_status, metadata !4036, metadata !DIExpression(DW_OP_deref)), !dbg !4040
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %gate_status) #8, !dbg !4041
  %type = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass, i64 0, i32 0, !dbg !4042
  %0 = load i32, i32* %type, align 8, !dbg !4042
  %cmp = icmp eq i32 %0, 2, !dbg !4044
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4045

lor.lhs.false:                                    ; preds = %entry
  %cmp2 = icmp eq i32 %0, 3, !dbg !4046
  br i1 %cmp2, label %if.then, label %if.else, !dbg !4047

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4048
  %tobool = icmp ne %struct.function* %1, null, !dbg !4048
  %2 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !4048
  %tobool3 = icmp ne %union.tree_node* %2, null, !dbg !4048
  %or.cond = or i1 %tobool, %tobool3, !dbg !4048
  br i1 %or.cond, label %cond.true, label %if.end, !dbg !4048

cond.true:                                        ; preds = %if.then
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 1521, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !4048
  br label %if.end, !dbg !4048

if.else:                                          ; preds = %lor.lhs.false
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4049
  %tobool5 = icmp ne %struct.function* %3, null, !dbg !4049
  %4 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !4049
  %tobool7 = icmp ne %union.tree_node* %4, null, !dbg !4049
  %or.cond1 = and i1 %tobool5, %tobool7, !dbg !4049
  br i1 %or.cond1, label %if.end, label %cond.true8, !dbg !4049

cond.true8:                                       ; preds = %if.else
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 1523, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !4049
  br label %if.end, !dbg !4049

if.end:                                           ; preds = %cond.true8, %if.else, %cond.true, %if.then
  store %struct.opt_pass* %pass, %struct.opt_pass** @current_pass, align 8, !dbg !4050
  %gate = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass, i64 0, i32 2, !dbg !4051
  %5 = load i8 ()*, i8 ()** %gate, align 8, !dbg !4051
  %cmp12 = icmp eq i8 ()* %5, null, !dbg !4052
  br i1 %cmp12, label %cond.end16, label %cond.false14, !dbg !4053

cond.false14:                                     ; preds = %if.end
  %call = tail call zeroext i8 %5() #6, !dbg !4054
  br label %cond.end16, !dbg !4053

cond.end16:                                       ; preds = %if.end, %cond.false14
  %cond17 = phi i8 [ %call, %cond.false14 ], [ 1, %if.end ]
  call void @llvm.dbg.value(metadata i8 %cond17, metadata !4036, metadata !DIExpression()), !dbg !4040
  store i8 %cond17, i8* %gate_status, align 1, !dbg !4055
  call void @llvm.dbg.value(metadata i8* %gate_status, metadata !4036, metadata !DIExpression(DW_OP_deref)), !dbg !4040
  %call19 = call i32 @invoke_plugin_callbacks(i32 18, i8* nonnull %gate_status) #6, !dbg !4056
  %6 = load i8, i8* %gate_status, align 1, !dbg !4057
  call void @llvm.dbg.value(metadata i8 %6, metadata !4036, metadata !DIExpression()), !dbg !4040
  %tobool20 = icmp eq i8 %6, 0, !dbg !4057
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !4059

if.then21:                                        ; preds = %cond.end16
  br label %cleanup, !dbg !4060

if.end22:                                         ; preds = %cond.end16
  %7 = bitcast %struct.opt_pass* %pass to i8*, !dbg !4062
  %call23 = call i32 @invoke_plugin_callbacks(i32 19, i8* %7) #6, !dbg !4063
  %8 = load i32, i32* @quiet_flag, align 4, !dbg !4064
  %tobool24 = icmp eq i32 %8, 0, !dbg !4064
  br i1 %tobool24, label %land.lhs.true25, label %if.end36, !dbg !4066

land.lhs.true25:                                  ; preds = %if.end22
  %9 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4067
  %tobool27 = icmp eq %struct.function* %9, null, !dbg !4067
  br i1 %tobool27, label %if.then28, label %if.end36, !dbg !4068

if.then28:                                        ; preds = %land.lhs.true25
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4069
  %name = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass, i64 0, i32 1, !dbg !4070
  %11 = load i8*, i8** %name, align 8, !dbg !4070
  %tobool29 = icmp eq i8* %11, null, !dbg !4071
  br i1 %tobool29, label %cond.end33, label %cond.true30, !dbg !4071

cond.true30:                                      ; preds = %if.then28
  br label %cond.end33, !dbg !4071

cond.end33:                                       ; preds = %if.then28, %cond.true30
  %cond34 = phi i8* [ %11, %cond.true30 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0), %if.then28 ], !dbg !4071
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i8* %cond34) #6, !dbg !4072
  br label %if.end36, !dbg !4072

if.end36:                                         ; preds = %land.lhs.true25, %if.end22, %cond.end33
  %12 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4073
  %tobool38 = icmp eq %struct.function* %12, null, !dbg !4073
  br i1 %tobool38, label %land.end, label %land.rhs, !dbg !4074

land.rhs:                                         ; preds = %if.end36
  %curr_properties = getelementptr inbounds %struct.function, %struct.function* %12, i64 0, i32 17, !dbg !4075
  %13 = load i32, i32* %curr_properties, align 8, !dbg !4075
  %and = and i32 %13, 263, !dbg !4076
  %tobool40 = icmp ne i32 %and, 0, !dbg !4074
  %phitmp = zext i1 %tobool40 to i8
  br label %land.end

land.end:                                         ; preds = %if.end36, %land.rhs
  %14 = phi i8 [ 0, %if.end36 ], [ %phitmp, %land.rhs ]
  store i8 %14, i8* @in_gimple_form, align 1, !dbg !4077
  %call44 = call zeroext i8 @pass_init_dump_file(%struct.opt_pass* %pass) #7, !dbg !4078
  call void @llvm.dbg.value(metadata i8 %call44, metadata !4034, metadata !DIExpression()), !dbg !4040
  %todo_flags_start = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass, i64 0, i32 11, !dbg !4079
  %15 = load i32, i32* %todo_flags_start, align 4, !dbg !4079
  call fastcc void @execute_todo(i32 %15) #7, !dbg !4080
  %tv_id = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass, i64 0, i32 7, !dbg !4081
  %16 = load i32, i32* %tv_id, align 4, !dbg !4081
  %cmp45 = icmp ne i32 %16, 0, !dbg !4083
  %17 = load i8, i8* @timevar_enable, align 1, !dbg !4084
  %tobool48 = icmp ne i8 %17, 0, !dbg !4084
  %or.cond4 = and i1 %cmp45, %tobool48, !dbg !4087
  br i1 %or.cond4, label %if.then49, label %if.end52, !dbg !4087

if.then49:                                        ; preds = %land.end
  call void @timevar_push_1(i32 %16) #6, !dbg !4084
  br label %if.end52, !dbg !4084

if.end52:                                         ; preds = %if.then49, %land.end
  %execute = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass, i64 0, i32 3, !dbg !4088
  %18 = load i32 ()*, i32 ()** %execute, align 8, !dbg !4088
  %tobool53 = icmp eq i32 ()* %18, null, !dbg !4090
  br i1 %tobool53, label %if.end57, label %if.then54, !dbg !4091

if.then54:                                        ; preds = %if.end52
  %call56 = call i32 %18() #6, !dbg !4092
  call void @llvm.dbg.value(metadata i32 %call56, metadata !4035, metadata !DIExpression()), !dbg !4040
  call fastcc void @do_per_function(void (i8*)* nonnull @clear_last_verified, i8* null) #7, !dbg !4094
  br label %if.end57, !dbg !4095

if.end57:                                         ; preds = %if.end52, %if.then54
  %todo_after.0 = phi i32 [ %call56, %if.then54 ], [ 0, %if.end52 ], !dbg !4040
  call void @llvm.dbg.value(metadata i32 %todo_after.0, metadata !4035, metadata !DIExpression()), !dbg !4040
  %19 = load i32, i32* %tv_id, align 4, !dbg !4096
  %cmp59 = icmp ne i32 %19, 0, !dbg !4098
  %20 = load i8, i8* @timevar_enable, align 1, !dbg !4099
  %tobool63 = icmp ne i8 %20, 0, !dbg !4099
  %or.cond5 = and i1 %cmp59, %tobool63, !dbg !4102
  br i1 %or.cond5, label %if.then64, label %if.end69, !dbg !4102

if.then64:                                        ; preds = %if.end57
  call void @timevar_pop_1(i32 %19) #6, !dbg !4099
  br label %if.end69, !dbg !4099

if.end69:                                         ; preds = %if.then64, %if.end57
  call fastcc void @do_per_function(void (i8*)* nonnull @update_properties_after_pass, i8* %7) #7, !dbg !4103
  %tobool71 = icmp ne i8 %call44, 0, !dbg !4104
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4106
  %tobool73 = icmp ne %struct._IO_FILE* %21, null, !dbg !4106
  %or.cond2 = and i1 %tobool71, %tobool73, !dbg !4107
  %22 = load i32, i32* @graph_dump_format, align 4, !dbg !4108
  %cmp75 = icmp ne i32 %22, 0, !dbg !4109
  %or.cond3 = and i1 %or.cond2, %cmp75, !dbg !4107
  br i1 %or.cond3, label %land.lhs.true77, label %if.end89, !dbg !4107

land.lhs.true77:                                  ; preds = %if.end69
  %23 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4110
  %tobool79 = icmp eq %struct.function* %23, null, !dbg !4110
  br i1 %tobool79, label %if.end89, label %land.lhs.true80, !dbg !4111

land.lhs.true80:                                  ; preds = %land.lhs.true77
  %curr_properties82 = getelementptr inbounds %struct.function, %struct.function* %23, i64 0, i32 17, !dbg !4112
  %24 = load i32, i32* %curr_properties82, align 8, !dbg !4112
  %and83 = and i32 %24, 136, !dbg !4113
  %cmp84 = icmp eq i32 %and83, 136, !dbg !4114
  br i1 %cmp84, label %if.then86, label %if.end89, !dbg !4115

if.then86:                                        ; preds = %land.lhs.true80
  %static_pass_number = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass, i64 0, i32 6, !dbg !4116
  %25 = load i32, i32* %static_pass_number, align 8, !dbg !4116
  %call87 = call %struct.dump_file_info* @get_dump_file_info(i32 %25) #6, !dbg !4118
  %flags = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %call87, i64 0, i32 3, !dbg !4119
  %26 = load i32, i32* %flags, align 8, !dbg !4120
  %or = or i32 %26, 8192, !dbg !4120
  store i32 %or, i32* %flags, align 8, !dbg !4120
  %27 = load i32, i32* @dump_flags, align 4, !dbg !4121
  %or88 = or i32 %27, 8192, !dbg !4121
  store i32 %or88, i32* @dump_flags, align 4, !dbg !4121
  %28 = load i8*, i8** @dump_file_name, align 8, !dbg !4122
  call void @clean_graph_dump_file(i8* %28) #6, !dbg !4123
  br label %if.end89, !dbg !4124

if.end89:                                         ; preds = %land.lhs.true77, %if.then86, %land.lhs.true80, %if.end69
  %todo_flags_finish = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass, i64 0, i32 12, !dbg !4125
  %29 = load i32, i32* %todo_flags_finish, align 8, !dbg !4125
  %or90 = or i32 %todo_after.0, %29, !dbg !4126
  call fastcc void @execute_todo(i32 %or90) #7, !dbg !4127
  call fastcc void @verify_interpass_invariants() #7, !dbg !4128
  %30 = load i32, i32* %type, align 8, !dbg !4129
  %cmp92 = icmp eq i32 %30, 3, !dbg !4130
  br i1 %cmp92, label %if.then94, label %if.end100, !dbg !4131

if.then94:                                        ; preds = %if.end89
  %31 = bitcast %struct.opt_pass* %pass to %struct.ipa_opt_pass_d*, !dbg !4132
  br label %for.cond, !dbg !4136

for.cond:                                         ; preds = %for.inc, %if.then94
  %node.0.in = phi %struct.cgraph_node** [ @cgraph_nodes, %if.then94 ], [ %next, %for.inc ]
  %node.0 = load %struct.cgraph_node*, %struct.cgraph_node** %node.0.in, align 8, !dbg !4137
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.0, metadata !4037, metadata !DIExpression()), !dbg !4138
  %tobool95 = icmp eq %struct.cgraph_node* %node.0, null, !dbg !4139
  br i1 %tobool95, label %if.end100.loopexit, label %for.body, !dbg !4139

for.body:                                         ; preds = %for.cond
  %analyzed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 27, !dbg !4140
  %bf.load = load i16, i16* %analyzed, align 4, !dbg !4140
  %bf.clear = and i16 %bf.load, 32, !dbg !4140
  %tobool96 = icmp eq i16 %bf.clear, 0, !dbg !4141
  br i1 %tobool96, label %for.inc, label %if.then97, !dbg !4142

if.then97:                                        ; preds = %for.body
  %ipa_transforms_to_apply = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 17, !dbg !4143
  %call98 = call fastcc %struct.ipa_opt_pass_d** @VEC_ipa_opt_pass_heap_safe_push(%struct.VEC_ipa_opt_pass_heap** nonnull %ipa_transforms_to_apply, %struct.ipa_opt_pass_d* %31) #7, !dbg !4143
  br label %for.inc, !dbg !4143

for.inc:                                          ; preds = %for.body, %if.then97
  %next = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 3, !dbg !4144
  br label %for.cond, !dbg !4145, !llvm.loop !4146

if.end100.loopexit:                               ; preds = %for.cond
  br label %if.end100, !dbg !4148

if.end100:                                        ; preds = %if.end100.loopexit, %if.end89
  %32 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !4148
  %tobool101 = icmp eq %union.tree_node* %32, null, !dbg !4148
  br i1 %tobool101, label %if.then102, label %if.end104, !dbg !4150

if.then102:                                       ; preds = %if.end100
  %call103 = call zeroext i8 @cgraph_process_new_functions() #6, !dbg !4151
  br label %if.end104, !dbg !4151

if.end104:                                        ; preds = %if.end100, %if.then102
  call void @pass_fini_dump_file(%struct.opt_pass* %pass) #7, !dbg !4152
  %33 = load i32, i32* %type, align 8, !dbg !4153
  %cmp106 = icmp eq i32 %33, 2, !dbg !4155
  br i1 %cmp106, label %if.end125, label %land.lhs.true108, !dbg !4156

land.lhs.true108:                                 ; preds = %if.end104
  %cmp110 = icmp eq i32 %33, 3, !dbg !4157
  br i1 %cmp110, label %if.end125, label %if.then112, !dbg !4158

if.then112:                                       ; preds = %land.lhs.true108
  %34 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4159
  %curr_properties114 = getelementptr inbounds %struct.function, %struct.function* %34, i64 0, i32 17, !dbg !4159
  %35 = load i32, i32* %curr_properties114, align 8, !dbg !4159
  %and115 = and i32 %35, 263, !dbg !4159
  %tobool116 = icmp eq i32 %and115, 0, !dbg !4159
  br i1 %tobool116, label %if.end125, label %lor.lhs.false117, !dbg !4159

lor.lhs.false117:                                 ; preds = %if.then112
  %cmp119 = icmp eq i32 %33, 1, !dbg !4159
  br i1 %cmp119, label %cond.true121, label %if.end125, !dbg !4159

cond.true121:                                     ; preds = %lor.lhs.false117
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 1609, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !4159
  br label %if.end125, !dbg !4159

if.end125:                                        ; preds = %lor.lhs.false117, %if.then112, %land.lhs.true108, %if.end104, %cond.true121
  br label %cleanup, !dbg !4160

cleanup:                                          ; preds = %if.end125, %if.then21
  %retval.0 = phi i8 [ 1, %if.end125 ], [ 0, %if.then21 ], !dbg !4040
  store %struct.opt_pass* null, %struct.opt_pass** @current_pass, align 8, !dbg !4040
  call void @llvm.dbg.value(metadata i8* %gate_status, metadata !4036, metadata !DIExpression(DW_OP_deref)), !dbg !4040
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %gate_status) #8, !dbg !4161
  ret i8 %retval.0, !dbg !4161
}

declare dso_local i32 @invoke_plugin_callbacks(i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @execute_todo(i32 %flags) unnamed_addr #5 !dbg !4162 {
entry:
  call void @llvm.dbg.value(metadata i32 %flags, metadata !4166, metadata !DIExpression()), !dbg !4167
  %and = lshr i32 %flags, 19, !dbg !4168
  %0 = trunc i32 %and to i8, !dbg !4168
  %1 = and i8 %0, 1, !dbg !4168
  store i8 %1, i8* @first_pass_instance, align 1, !dbg !4169
  %conv2 = zext i32 %flags to i64, !dbg !4170
  %2 = inttoptr i64 %conv2 to i8*, !dbg !4171
  tail call fastcc void @do_per_function(void (i8*)* nonnull @execute_function_todo, i8* %2) #7, !dbg !4172
  %and3 = and i32 %flags, 256, !dbg !4173
  %tobool = icmp eq i32 %and3, 0, !dbg !4173
  br i1 %tobool, label %if.end, label %if.then, !dbg !4175

if.then:                                          ; preds = %entry
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4176
  %tobool4 = icmp eq %struct.function* %3, null, !dbg !4176
  br i1 %tobool4, label %cond.end, label %cond.true, !dbg !4176

cond.true:                                        ; preds = %if.then
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 1295, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !4176
  br label %cond.end, !dbg !4176

cond.end:                                         ; preds = %if.then, %cond.true
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4178
  %call = tail call zeroext i8 @cgraph_remove_unreachable_nodes(i8 zeroext 1, %struct._IO_FILE* %4) #6, !dbg !4179
  br label %if.end, !dbg !4180

if.end:                                           ; preds = %entry, %cond.end
  %5 = trunc i32 %flags to i8, !dbg !4181
  %tobool6 = icmp sgt i8 %5, -1, !dbg !4181
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4183
  %tobool7 = icmp eq %struct._IO_FILE* %6, null, !dbg !4183
  %or.cond.not = or i1 %tobool7, %tobool6, !dbg !4184
  %7 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !4185
  %tobool9 = icmp ne %union.tree_node* %7, null, !dbg !4185
  %or.cond1 = or i1 %or.cond.not, %tobool9, !dbg !4184
  br i1 %or.cond1, label %if.end18, label %if.then10, !dbg !4184

if.then10:                                        ; preds = %if.end
  %8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4186
  %tobool12 = icmp eq %struct.function* %8, null, !dbg !4186
  br i1 %tobool12, label %cond.end15, label %cond.true13, !dbg !4186

cond.true13:                                      ; preds = %if.then10
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 1301, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !4186
  %.pre = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4188
  br label %cond.end15, !dbg !4186

cond.end15:                                       ; preds = %if.then10, %cond.true13
  %9 = phi %struct._IO_FILE* [ %6, %if.then10 ], [ %.pre, %cond.true13 ], !dbg !4188
  tail call void @dump_cgraph(%struct._IO_FILE* %9) #6, !dbg !4189
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4190
  %call17 = tail call i32 @fflush(%struct._IO_FILE* %10) #6, !dbg !4191
  br label %if.end18, !dbg !4192

if.end18:                                         ; preds = %if.end, %cond.end15
  %and19 = and i32 %flags, 2, !dbg !4193
  %tobool20 = icmp eq i32 %and19, 0, !dbg !4193
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !4195

if.then21:                                        ; preds = %if.end18
  tail call void @ggc_collect() #6, !dbg !4196
  br label %if.end22, !dbg !4196

if.end22:                                         ; preds = %if.end18, %if.then21
  %and23 = and i32 %flags, 131072, !dbg !4197
  %tobool24 = icmp eq i32 %and23, 0, !dbg !4197
  br i1 %tobool24, label %if.end30, label %if.then25, !dbg !4199

if.then25:                                        ; preds = %if.end22
  %and26 = lshr i32 %flags, 18, !dbg !4200
  %11 = trunc i32 %and26 to i8, !dbg !4200
  %12 = and i8 %11, 1, !dbg !4200
  tail call void @df_finish_pass(i8 zeroext %12) #6, !dbg !4201
  br label %if.end30, !dbg !4201

if.end30:                                         ; preds = %if.end22, %if.then25
  ret void, !dbg !4202
}

; Function Attrs: nounwind uwtable
define internal fastcc void @do_per_function(void (i8*)* %callback, i8* %data) unnamed_addr #5 !dbg !4203 {
entry:
  call void @llvm.dbg.value(metadata void (i8*)* %callback, metadata !4205, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.value(metadata i8* %data, metadata !4206, metadata !DIExpression()), !dbg !4210
  %0 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !4211
  %tobool = icmp eq %union.tree_node* %0, null, !dbg !4211
  br i1 %tobool, label %if.else, label %if.then, !dbg !4212

if.then:                                          ; preds = %entry
  tail call void %callback(i8* %data) #6, !dbg !4213
  br label %if.end16, !dbg !4213

if.else:                                          ; preds = %entry
  br label %for.cond, !dbg !4214

for.cond:                                         ; preds = %for.inc, %if.else
  %node.0.in = phi %struct.cgraph_node** [ @cgraph_nodes, %if.else ], [ %next, %for.inc ]
  %node.0 = load %struct.cgraph_node*, %struct.cgraph_node** %node.0.in, align 8, !dbg !4216
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.0, metadata !4207, metadata !DIExpression()), !dbg !4217
  %tobool1 = icmp eq %struct.cgraph_node* %node.0, null, !dbg !4218
  br i1 %tobool1, label %if.end16.loopexit, label %for.body, !dbg !4218

for.body:                                         ; preds = %for.cond
  %analyzed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 27, !dbg !4219
  %bf.load = load i16, i16* %analyzed, align 4, !dbg !4219
  %bf.clear = and i16 %bf.load, 32, !dbg !4219
  %tobool2 = icmp eq i16 %bf.clear, 0, !dbg !4222
  br i1 %tobool2, label %for.inc, label %land.lhs.true, !dbg !4223

land.lhs.true:                                    ; preds = %for.body
  %decl = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 0, !dbg !4224
  %1 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !4224
  %call = tail call zeroext i8 @gimple_has_body_p(%union.tree_node* %1) #6, !dbg !4225
  %tobool3 = icmp eq i8 %call, 0, !dbg !4225
  br i1 %tobool3, label %for.inc, label %land.lhs.true4, !dbg !4226

land.lhs.true4:                                   ; preds = %land.lhs.true
  %clone_of = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 12, !dbg !4227
  %2 = load %struct.cgraph_node*, %struct.cgraph_node** %clone_of, align 8, !dbg !4227
  %tobool5 = icmp eq %struct.cgraph_node* %2, null, !dbg !4228
  br i1 %tobool5, label %land.lhs.true4.if.then10_crit_edge, label %lor.lhs.false, !dbg !4229

land.lhs.true4.if.then10_crit_edge:               ; preds = %land.lhs.true4
  %.phi.trans.insert = bitcast %struct.cgraph_node* %node.0 to %struct.tree_function_decl**, !dbg !4230
  %.pre = load %struct.tree_function_decl*, %struct.tree_function_decl** %.phi.trans.insert, align 8, !dbg !4232
  br label %if.then10, !dbg !4229

lor.lhs.false:                                    ; preds = %land.lhs.true4
  %3 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !4233
  %decl8 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %2, i64 0, i32 0, !dbg !4234
  %4 = load %union.tree_node*, %union.tree_node** %decl8, align 8, !dbg !4234
  %cmp = icmp eq %union.tree_node* %3, %4, !dbg !4235
  br i1 %cmp, label %for.inc, label %lor.lhs.false.if.then10_crit_edge, !dbg !4236

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  %5 = getelementptr inbounds %union.tree_node, %union.tree_node* %3, i64 0, i32 0, !dbg !4236
  br label %if.then10, !dbg !4236

if.then10:                                        ; preds = %lor.lhs.false.if.then10_crit_edge, %land.lhs.true4.if.then10_crit_edge
  %6 = phi %struct.tree_function_decl* [ %.pre, %land.lhs.true4.if.then10_crit_edge ], [ %5, %lor.lhs.false.if.then10_crit_edge ], !dbg !4232
  %f = getelementptr inbounds %struct.tree_function_decl, %struct.tree_function_decl* %6, i64 0, i32 1, !dbg !4232
  %7 = load %struct.function*, %struct.function** %f, align 8, !dbg !4232
  tail call void @push_cfun(%struct.function* %7) #6, !dbg !4237
  %8 = bitcast %struct.cgraph_node* %node.0 to i64*, !dbg !4238
  %9 = load i64, i64* %8, align 8, !dbg !4238
  store i64 %9, i64* bitcast (%union.tree_node** @current_function_decl to i64*), align 8, !dbg !4239
  tail call void %callback(i8* %data) #6, !dbg !4240
  %10 = load i32, i32* @flag_wpa, align 4, !dbg !4241
  %tobool13 = icmp eq i32 %10, 0, !dbg !4241
  br i1 %tobool13, label %if.then14, label %if.end, !dbg !4243

if.then14:                                        ; preds = %if.then10
  tail call void @free_dominance_info(i32 1) #6, !dbg !4244
  tail call void @free_dominance_info(i32 2) #6, !dbg !4246
  br label %if.end, !dbg !4247

if.end:                                           ; preds = %if.then10, %if.then14
  store %union.tree_node* null, %union.tree_node** @current_function_decl, align 8, !dbg !4248
  tail call void @pop_cfun() #6, !dbg !4249
  tail call void @ggc_collect() #6, !dbg !4250
  br label %for.inc, !dbg !4251

for.inc:                                          ; preds = %lor.lhs.false, %land.lhs.true, %for.body, %if.end
  %next = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 3, !dbg !4252
  br label %for.cond, !dbg !4253, !llvm.loop !4254

if.end16.loopexit:                                ; preds = %for.cond
  br label %if.end16, !dbg !4256

if.end16:                                         ; preds = %if.end16.loopexit, %if.then
  ret void, !dbg !4256
}

; Function Attrs: nounwind uwtable
define internal void @clear_last_verified(i8* %data) #5 !dbg !4257 {
entry:
  call void @llvm.dbg.value(metadata i8* %data, metadata !4259, metadata !DIExpression()), !dbg !4260
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4261
  %last_verified = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 18, !dbg !4262
  store i32 0, i32* %last_verified, align 4, !dbg !4263
  ret void, !dbg !4264
}

; Function Attrs: nounwind uwtable
define internal void @update_properties_after_pass(i8* %data) #5 !dbg !4265 {
entry:
  call void @llvm.dbg.value(metadata i8* %data, metadata !4267, metadata !DIExpression()), !dbg !4269
  call void @llvm.dbg.value(metadata i8* %data, metadata !4268, metadata !DIExpression()), !dbg !4269
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4270
  %curr_properties = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 17, !dbg !4271
  %1 = load i32, i32* %curr_properties, align 8, !dbg !4271
  %properties_provided = getelementptr inbounds i8, i8* %data, i64 60, !dbg !4272
  %2 = bitcast i8* %properties_provided to i32*, !dbg !4272
  %3 = load i32, i32* %2, align 4, !dbg !4272
  %or = or i32 %1, %3, !dbg !4273
  %properties_destroyed = getelementptr inbounds i8, i8* %data, i64 64, !dbg !4274
  %4 = bitcast i8* %properties_destroyed to i32*, !dbg !4274
  %5 = load i32, i32* %4, align 8, !dbg !4274
  %neg = xor i32 %5, -1, !dbg !4275
  %and = and i32 %or, %neg, !dbg !4276
  store i32 %and, i32* %curr_properties, align 8, !dbg !4277
  ret void, !dbg !4278
}

declare dso_local void @clean_graph_dump_file(i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @verify_interpass_invariants() unnamed_addr #5 !dbg !4279 {
entry:
  ret void, !dbg !4280
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ipa_opt_pass_d** @VEC_ipa_opt_pass_heap_safe_push(%struct.VEC_ipa_opt_pass_heap** %vec_, %struct.ipa_opt_pass_d* %obj_) unnamed_addr #0 !dbg !4281 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_opt_pass_heap** %vec_, metadata !4286, metadata !DIExpression()), !dbg !4288
  call void @llvm.dbg.value(metadata %struct.ipa_opt_pass_d* %obj_, metadata !4287, metadata !DIExpression()), !dbg !4288
  %call = tail call fastcc i32 @VEC_ipa_opt_pass_heap_reserve(%struct.VEC_ipa_opt_pass_heap** %vec_, i32 1) #7, !dbg !4289
  %0 = load %struct.VEC_ipa_opt_pass_heap*, %struct.VEC_ipa_opt_pass_heap** %vec_, align 8, !dbg !4289
  %tobool = icmp eq %struct.VEC_ipa_opt_pass_heap* %0, null, !dbg !4289
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4289

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_ipa_opt_pass_heap, %struct.VEC_ipa_opt_pass_heap* %0, i64 0, i32 0, !dbg !4289
  br label %cond.end, !dbg !4289

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_ipa_opt_pass_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4289
  %call1 = tail call fastcc %struct.ipa_opt_pass_d** @VEC_ipa_opt_pass_base_quick_push(%struct.VEC_ipa_opt_pass_base* %cond, %struct.ipa_opt_pass_d* %obj_) #7, !dbg !4289
  ret %struct.ipa_opt_pass_d** %call1, !dbg !4289
}

declare dso_local zeroext i8 @cgraph_process_new_functions() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @execute_pass_list(%struct.opt_pass* %pass) #5 !dbg !4290 {
entry:
  call void @llvm.dbg.value(metadata %struct.opt_pass* %pass, metadata !4292, metadata !DIExpression()), !dbg !4293
  br label %do.body, !dbg !4294

do.body:                                          ; preds = %if.end, %entry
  %pass.addr.0 = phi %struct.opt_pass* [ %pass, %entry ], [ %2, %if.end ]
  call void @llvm.dbg.value(metadata %struct.opt_pass* %pass.addr.0, metadata !4292, metadata !DIExpression()), !dbg !4293
  %type = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass.addr.0, i64 0, i32 0, !dbg !4295
  %0 = load i32, i32* %type, align 8, !dbg !4295
  %cmp = icmp eq i32 %0, 0, !dbg !4295
  br i1 %cmp, label %cond.end, label %lor.lhs.false, !dbg !4295

lor.lhs.false:                                    ; preds = %do.body
  %cmp2 = icmp eq i32 %0, 1, !dbg !4295
  br i1 %cmp2, label %cond.end, label %cond.true, !dbg !4295

cond.true:                                        ; preds = %lor.lhs.false
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !4295
  br label %cond.end, !dbg !4295

cond.end:                                         ; preds = %do.body, %lor.lhs.false, %cond.true
  %call = tail call zeroext i8 @execute_one_pass(%struct.opt_pass* %pass.addr.0) #7, !dbg !4297
  %tobool = icmp eq i8 %call, 0, !dbg !4297
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !4299

land.lhs.true:                                    ; preds = %cond.end
  %sub = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass.addr.0, i64 0, i32 4, !dbg !4300
  %1 = load %struct.opt_pass*, %struct.opt_pass** %sub, align 8, !dbg !4300
  %tobool3 = icmp eq %struct.opt_pass* %1, null, !dbg !4301
  br i1 %tobool3, label %if.end, label %if.then, !dbg !4302

if.then:                                          ; preds = %land.lhs.true
  tail call void @execute_pass_list(%struct.opt_pass* nonnull %1) #7, !dbg !4303
  br label %if.end, !dbg !4303

if.end:                                           ; preds = %land.lhs.true, %cond.end, %if.then
  %next = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass.addr.0, i64 0, i32 5, !dbg !4304
  %2 = load %struct.opt_pass*, %struct.opt_pass** %next, align 8, !dbg !4304
  call void @llvm.dbg.value(metadata %struct.opt_pass* %2, metadata !4292, metadata !DIExpression()), !dbg !4293
  %tobool5 = icmp eq %struct.opt_pass* %2, null, !dbg !4305
  br i1 %tobool5, label %do.end, label %do.body, !dbg !4305, !llvm.loop !4306

do.end:                                           ; preds = %if.end
  ret void, !dbg !4308
}

; Function Attrs: nounwind uwtable
define dso_local void @ipa_write_summaries() local_unnamed_addr #5 !dbg !4309 {
entry:
  %0 = load i32, i32* @flag_generate_lto, align 4, !dbg !4320
  %tobool = icmp eq i32 %0, 0, !dbg !4320
  br i1 %tobool, label %cleanup.cont, label %lor.lhs.false, !dbg !4322

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !4323
  %arrayidx = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %1, i64 0, i32 1, i64 4, !dbg !4323
  %2 = load i32, i32* %arrayidx, align 8, !dbg !4323
  %tobool1 = icmp eq i32 %2, 0, !dbg !4323
  br i1 %tobool1, label %lor.lhs.false2, label %cleanup.cont, !dbg !4324

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %arrayidx4 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %1, i64 0, i32 1, i64 5, !dbg !4325
  %3 = load i32, i32* %arrayidx4, align 4, !dbg !4325
  %tobool5 = icmp eq i32 %3, 0, !dbg !4325
  br i1 %tobool5, label %if.end, label %cleanup.cont, !dbg !4326

if.end:                                           ; preds = %lor.lhs.false2
  tail call void @lto_new_extern_inline_states() #6, !dbg !4327
  %call = tail call %struct.cgraph_node_set_def* @cgraph_node_set_new() #6, !dbg !4328
  call void @llvm.dbg.value(metadata %struct.cgraph_node_set_def* %call, metadata !4311, metadata !DIExpression()), !dbg !4329
  %4 = load i32, i32* @cgraph_n_nodes, align 4, !dbg !4330
  %conv = sext i32 %4 to i64, !dbg !4330
  %call6 = tail call i8* @xcalloc(i64 %conv, i64 8) #6, !dbg !4330
  %5 = bitcast i8* %call6 to %struct.cgraph_node**, !dbg !4330
  call void @llvm.dbg.value(metadata %struct.cgraph_node** %5, metadata !4313, metadata !DIExpression()), !dbg !4329
  %call7 = tail call i32 @cgraph_postorder(%struct.cgraph_node** %5) #6, !dbg !4331
  call void @llvm.dbg.value(metadata i32 %call7, metadata !4315, metadata !DIExpression()), !dbg !4329
  %6 = load i32, i32* @cgraph_n_nodes, align 4, !dbg !4332
  %cmp = icmp eq i32 %call7, %6, !dbg !4332
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !4332

cond.true:                                        ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 1706, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !4332
  br label %cond.end, !dbg !4332

cond.end:                                         ; preds = %if.end, %cond.true
  call void @llvm.dbg.value(metadata i32 %call7, metadata !4314, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4329
  %7 = sext i32 %call7 to i64, !dbg !4333
  br label %for.cond, !dbg !4333

for.cond:                                         ; preds = %if.end14, %cond.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end14 ], [ %7, %cond.end ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !4334
  call void @llvm.dbg.value(metadata i32 undef, metadata !4314, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4329
  %cmp9 = icmp sgt i64 %indvars.iv, 0, !dbg !4335
  br i1 %cmp9, label %for.body, label %for.end, !dbg !4336

for.body:                                         ; preds = %for.cond
  %arrayidx11 = getelementptr inbounds %struct.cgraph_node*, %struct.cgraph_node** %5, i64 %indvars.iv.next, !dbg !4337
  %8 = load %struct.cgraph_node*, %struct.cgraph_node** %arrayidx11, align 8, !dbg !4337
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %8, metadata !4316, metadata !DIExpression()), !dbg !4338
  %analyzed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %8, i64 0, i32 27, !dbg !4339
  %bf.load = load i16, i16* %analyzed, align 4, !dbg !4339
  %bf.clear = and i16 %bf.load, 32, !dbg !4339
  %tobool12 = icmp eq i16 %bf.clear, 0, !dbg !4341
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !4342

if.then13:                                        ; preds = %for.body
  %9 = bitcast %struct.cgraph_node* %8 to %struct.tree_function_decl**, !dbg !4343
  %10 = load %struct.tree_function_decl*, %struct.tree_function_decl** %9, align 8, !dbg !4343
  %f = getelementptr inbounds %struct.tree_function_decl, %struct.tree_function_decl* %10, i64 0, i32 1, !dbg !4343
  %11 = load %struct.function*, %struct.function** %f, align 8, !dbg !4343
  tail call void @push_cfun(%struct.function* %11) #6, !dbg !4345
  tail call void @renumber_gimple_stmt_uids() #6, !dbg !4346
  tail call void @pop_cfun() #6, !dbg !4347
  br label %if.end14, !dbg !4348

if.end14:                                         ; preds = %for.body, %if.then13
  tail call void @cgraph_node_set_add(%struct.cgraph_node_set_def* %call, %struct.cgraph_node* %8) #6, !dbg !4349
  call void @llvm.dbg.value(metadata i32 undef, metadata !4314, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4329
  br label %for.cond, !dbg !4350, !llvm.loop !4351

for.end:                                          ; preds = %for.cond
  tail call fastcc void @ipa_write_summaries_1(%struct.cgraph_node_set_def* %call) #7, !dbg !4353
  tail call void @lto_delete_extern_inline_states() #6, !dbg !4354
  tail call void @free(i8* %call6) #6, !dbg !4355
  %12 = bitcast %struct.cgraph_node_set_def* %call to i8*, !dbg !4356
  tail call void @ggc_free(i8* %12) #6, !dbg !4357
  br label %cleanup.cont, !dbg !4358

cleanup.cont:                                     ; preds = %lor.lhs.false2, %lor.lhs.false, %entry, %for.end
  ret void, !dbg !4358
}

declare dso_local void @lto_new_extern_inline_states() local_unnamed_addr #2

declare dso_local %struct.cgraph_node_set_def* @cgraph_node_set_new() local_unnamed_addr #2

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #2

declare dso_local void @renumber_gimple_stmt_uids() local_unnamed_addr #2

declare dso_local void @cgraph_node_set_add(%struct.cgraph_node_set_def*, %struct.cgraph_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ipa_write_summaries_1(%struct.cgraph_node_set_def* %set) unnamed_addr #5 !dbg !4359 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node_set_def* %set, metadata !4363, metadata !DIExpression()), !dbg !4382
  %call = tail call %struct.lto_out_decl_state* @lto_new_out_decl_state() #6, !dbg !4383
  call void @llvm.dbg.value(metadata %struct.lto_out_decl_state* %call, metadata !4364, metadata !DIExpression()), !dbg !4382
  tail call void @lto_push_out_decl_state(%struct.lto_out_decl_state* %call) #6, !dbg !4384
  %0 = load i32, i32* @flag_wpa, align 4, !dbg !4385
  %tobool = icmp eq i32 %0, 0, !dbg !4385
  br i1 %tobool, label %if.then, label %if.end, !dbg !4387

if.then:                                          ; preds = %entry
  %1 = load %struct.opt_pass*, %struct.opt_pass** @all_regular_ipa_passes, align 8, !dbg !4388
  tail call fastcc void @ipa_write_summaries_2(%struct.opt_pass* %1, %struct.cgraph_node_set_def* %set, %struct.lto_out_decl_state* %call) #7, !dbg !4389
  br label %if.end, !dbg !4389

if.end:                                           ; preds = %entry, %if.then
  %2 = load %struct.opt_pass*, %struct.opt_pass** @all_lto_gen_passes, align 8, !dbg !4390
  tail call fastcc void @ipa_write_summaries_2(%struct.opt_pass* %2, %struct.cgraph_node_set_def* %set, %struct.lto_out_decl_state* %call) #7, !dbg !4391
  %call1 = tail call %struct.lto_out_decl_state* @lto_get_out_decl_state() #6, !dbg !4392
  %cmp = icmp eq %struct.lto_out_decl_state* %call1, %call, !dbg !4392
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !4392

cond.true:                                        ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 1680, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !4392
  br label %cond.end, !dbg !4392

cond.end:                                         ; preds = %if.end, %cond.true
  %call2 = tail call %struct.lto_out_decl_state* @lto_pop_out_decl_state() #6, !dbg !4393
  tail call void @lto_delete_out_decl_state(%struct.lto_out_decl_state* %call) #6, !dbg !4394
  ret void, !dbg !4395
}

declare dso_local void @lto_delete_extern_inline_states() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ipa_write_summaries_of_cgraph_node_set(%struct.cgraph_node_set_def* %set) local_unnamed_addr #5 !dbg !4396 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node_set_def* %set, metadata !4398, metadata !DIExpression()), !dbg !4399
  %0 = load i32, i32* @flag_generate_lto, align 4, !dbg !4400
  %tobool = icmp eq i32 %0, 0, !dbg !4400
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !4402

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !4403
  %arrayidx = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %1, i64 0, i32 1, i64 4, !dbg !4403
  %2 = load i32, i32* %arrayidx, align 8, !dbg !4403
  %tobool1 = icmp eq i32 %2, 0, !dbg !4403
  br i1 %tobool1, label %lor.lhs.false, label %if.end, !dbg !4404

lor.lhs.false:                                    ; preds = %land.lhs.true
  %arrayidx3 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %1, i64 0, i32 1, i64 5, !dbg !4405
  %3 = load i32, i32* %arrayidx3, align 4, !dbg !4405
  %tobool4 = icmp eq i32 %3, 0, !dbg !4405
  br i1 %tobool4, label %if.then, label %if.end, !dbg !4406

if.then:                                          ; preds = %lor.lhs.false
  tail call fastcc void @ipa_write_summaries_1(%struct.cgraph_node_set_def* %set) #7, !dbg !4407
  br label %if.end, !dbg !4407

if.end:                                           ; preds = %lor.lhs.false, %land.lhs.true, %entry, %if.then
  ret void, !dbg !4408
}

; Function Attrs: nounwind uwtable
define dso_local void @ipa_read_summaries() local_unnamed_addr #5 !dbg !4409 {
entry:
  %0 = load i32, i32* @flag_ltrans, align 4, !dbg !4410
  %tobool = icmp eq i32 %0, 0, !dbg !4410
  br i1 %tobool, label %if.then, label %if.end, !dbg !4412

if.then:                                          ; preds = %entry
  %1 = load %struct.opt_pass*, %struct.opt_pass** @all_regular_ipa_passes, align 8, !dbg !4413
  tail call fastcc void @ipa_read_summaries_1(%struct.opt_pass* %1) #7, !dbg !4414
  br label %if.end, !dbg !4414

if.end:                                           ; preds = %entry, %if.then
  %2 = load %struct.opt_pass*, %struct.opt_pass** @all_lto_gen_passes, align 8, !dbg !4415
  tail call fastcc void @ipa_read_summaries_1(%struct.opt_pass* %2) #7, !dbg !4416
  ret void, !dbg !4417
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ipa_read_summaries_1(%struct.opt_pass* %pass) unnamed_addr #5 !dbg !4418 {
entry:
  call void @llvm.dbg.value(metadata %struct.opt_pass* %pass, metadata !4420, metadata !DIExpression()), !dbg !4423
  br label %while.cond, !dbg !4424

while.cond:                                       ; preds = %if.end50, %entry
  %pass.addr.0 = phi %struct.opt_pass* [ %pass, %entry ], [ %14, %if.end50 ]
  call void @llvm.dbg.value(metadata %struct.opt_pass* %pass.addr.0, metadata !4420, metadata !DIExpression()), !dbg !4423
  %tobool = icmp eq %struct.opt_pass* %pass.addr.0, null, !dbg !4424
  br i1 %tobool, label %while.end, label %while.body, !dbg !4424

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata %struct.opt_pass* %pass.addr.0, metadata !4421, metadata !DIExpression()), !dbg !4425
  %0 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !4426
  %tobool1 = icmp eq %union.tree_node* %0, null, !dbg !4426
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !4426

cond.true:                                        ; preds = %while.body
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 1755, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !4426
  br label %cond.end, !dbg !4426

cond.end:                                         ; preds = %while.body, %cond.true
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4427
  %tobool2 = icmp eq %struct.function* %1, null, !dbg !4427
  br i1 %tobool2, label %cond.end5, label %cond.true3, !dbg !4427

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 1756, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !4427
  br label %cond.end5, !dbg !4427

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %type = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass.addr.0, i64 0, i32 0, !dbg !4428
  %2 = load i32, i32* %type, align 8, !dbg !4428
  %cmp = icmp eq i32 %2, 2, !dbg !4428
  br i1 %cmp, label %cond.end11, label %lor.lhs.false, !dbg !4428

lor.lhs.false:                                    ; preds = %cond.end5
  %cmp8 = icmp eq i32 %2, 3, !dbg !4428
  br i1 %cmp8, label %cond.end11, label %cond.true9, !dbg !4428

cond.true9:                                       ; preds = %lor.lhs.false
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 1757, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !4428
  br label %cond.end11, !dbg !4428

cond.end11:                                       ; preds = %cond.end5, %lor.lhs.false, %cond.true9
  %gate = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass.addr.0, i64 0, i32 2, !dbg !4429
  %3 = load i8 ()*, i8 ()** %gate, align 8, !dbg !4429
  %cmp13 = icmp eq i8 ()* %3, null, !dbg !4431
  br i1 %cmp13, label %if.then, label %lor.lhs.false14, !dbg !4432

lor.lhs.false14:                                  ; preds = %cond.end11
  %call = tail call zeroext i8 %3() #6, !dbg !4433
  %tobool16 = icmp eq i8 %call, 0, !dbg !4433
  br i1 %tobool16, label %if.end50, label %if.then, !dbg !4434

if.then:                                          ; preds = %lor.lhs.false14, %cond.end11
  %4 = load i32, i32* %type, align 8, !dbg !4435
  %cmp18 = icmp eq i32 %4, 3, !dbg !4438
  br i1 %cmp18, label %land.lhs.true, label %if.end40, !dbg !4439

land.lhs.true:                                    ; preds = %if.then
  %read_summary = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass.addr.0, i64 1, i32 2, !dbg !4440
  %5 = bitcast i8 ()** %read_summary to void ()**, !dbg !4440
  %6 = load void ()*, void ()** %5, align 8, !dbg !4440
  %tobool20 = icmp eq void ()* %6, null, !dbg !4441
  br i1 %tobool20, label %if.end40, label %if.then21, !dbg !4442

if.then21:                                        ; preds = %land.lhs.true
  %tv_id = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass.addr.0, i64 0, i32 7, !dbg !4443
  %7 = load i32, i32* %tv_id, align 4, !dbg !4443
  %tobool22 = icmp ne i32 %7, 0, !dbg !4446
  %8 = load i8, i8* @timevar_enable, align 1, !dbg !4447
  %tobool24 = icmp ne i8 %8, 0, !dbg !4447
  %or.cond = and i1 %tobool22, %tobool24, !dbg !4450
  br i1 %or.cond, label %if.then25, label %if.end27, !dbg !4450

if.then25:                                        ; preds = %if.then21
  tail call void @timevar_push_1(i32 %7) #6, !dbg !4447
  %.pre = load void ()*, void ()** %5, align 8, !dbg !4451
  br label %if.end27, !dbg !4447

if.end27:                                         ; preds = %if.then25, %if.then21
  %9 = phi void ()* [ %.pre, %if.then25 ], [ %6, %if.then21 ], !dbg !4451
  tail call void %9() #6, !dbg !4452
  %10 = load i32, i32* %tv_id, align 4, !dbg !4453
  %tobool30 = icmp ne i32 %10, 0, !dbg !4455
  %11 = load i8, i8* @timevar_enable, align 1, !dbg !4456
  %tobool33 = icmp ne i8 %11, 0, !dbg !4456
  %or.cond1 = and i1 %tobool30, %tobool33, !dbg !4459
  br i1 %or.cond1, label %if.then34, label %if.end40, !dbg !4459

if.then34:                                        ; preds = %if.end27
  tail call void @timevar_pop_1(i32 %10) #6, !dbg !4456
  br label %if.end40, !dbg !4456

if.end40:                                         ; preds = %land.lhs.true, %if.end27, %if.then34, %if.then
  %sub = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass.addr.0, i64 0, i32 4, !dbg !4460
  %12 = load %struct.opt_pass*, %struct.opt_pass** %sub, align 8, !dbg !4460
  %tobool41 = icmp eq %struct.opt_pass* %12, null, !dbg !4462
  br i1 %tobool41, label %if.end50, label %land.lhs.true42, !dbg !4463

land.lhs.true42:                                  ; preds = %if.end40
  %type44 = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %12, i64 0, i32 0, !dbg !4464
  %13 = load i32, i32* %type44, align 8, !dbg !4464
  %cmp45 = icmp eq i32 %13, 0, !dbg !4465
  br i1 %cmp45, label %if.end50, label %if.then47, !dbg !4466

if.then47:                                        ; preds = %land.lhs.true42
  tail call fastcc void @ipa_read_summaries_1(%struct.opt_pass* nonnull %12) #7, !dbg !4467
  br label %if.end50, !dbg !4467

if.end50:                                         ; preds = %land.lhs.true42, %if.end40, %lor.lhs.false14, %if.then47
  %next = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass.addr.0, i64 0, i32 5, !dbg !4468
  %14 = load %struct.opt_pass*, %struct.opt_pass** %next, align 8, !dbg !4468
  call void @llvm.dbg.value(metadata %struct.opt_pass* %14, metadata !4420, metadata !DIExpression()), !dbg !4423
  br label %while.cond, !dbg !4424, !llvm.loop !4469

while.end:                                        ; preds = %while.cond
  ret void, !dbg !4471
}

; Function Attrs: nounwind uwtable
define dso_local void @execute_ipa_pass_list(%struct.opt_pass* %pass) local_unnamed_addr #5 !dbg !4472 {
entry:
  call void @llvm.dbg.value(metadata %struct.opt_pass* %pass, metadata !4474, metadata !DIExpression()), !dbg !4475
  br label %do.body, !dbg !4476

do.body:                                          ; preds = %cond.end39, %entry
  %pass.addr.0 = phi %struct.opt_pass* [ %pass, %entry ], [ %8, %cond.end39 ]
  call void @llvm.dbg.value(metadata %struct.opt_pass* %pass.addr.0, metadata !4474, metadata !DIExpression()), !dbg !4475
  %0 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !4477
  %tobool = icmp eq %union.tree_node* %0, null, !dbg !4477
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4477

cond.true:                                        ; preds = %do.body
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 1799, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !4477
  br label %cond.end, !dbg !4477

cond.end:                                         ; preds = %do.body, %cond.true
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4479
  %tobool1 = icmp eq %struct.function* %1, null, !dbg !4479
  br i1 %tobool1, label %cond.end4, label %cond.true2, !dbg !4479

cond.true2:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 1800, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !4479
  br label %cond.end4, !dbg !4479

cond.end4:                                        ; preds = %cond.end, %cond.true2
  %type = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass.addr.0, i64 0, i32 0, !dbg !4480
  %2 = load i32, i32* %type, align 8, !dbg !4480
  %cmp = icmp eq i32 %2, 2, !dbg !4480
  br i1 %cmp, label %cond.end10, label %lor.lhs.false, !dbg !4480

lor.lhs.false:                                    ; preds = %cond.end4
  %cmp7 = icmp eq i32 %2, 3, !dbg !4480
  br i1 %cmp7, label %cond.end10, label %cond.true8, !dbg !4480

cond.true8:                                       ; preds = %lor.lhs.false
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 1801, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !4480
  br label %cond.end10, !dbg !4480

cond.end10:                                       ; preds = %cond.end4, %lor.lhs.false, %cond.true8
  %call = tail call zeroext i8 @execute_one_pass(%struct.opt_pass* %pass.addr.0) #7, !dbg !4481
  %tobool12 = icmp eq i8 %call, 0, !dbg !4481
  br i1 %tobool12, label %if.end35, label %land.lhs.true, !dbg !4483

land.lhs.true:                                    ; preds = %cond.end10
  %sub = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass.addr.0, i64 0, i32 4, !dbg !4484
  %3 = load %struct.opt_pass*, %struct.opt_pass** %sub, align 8, !dbg !4484
  %tobool13 = icmp eq %struct.opt_pass* %3, null, !dbg !4485
  br i1 %tobool13, label %if.end35, label %if.then, !dbg !4486

if.then:                                          ; preds = %land.lhs.true
  %type15 = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %3, i64 0, i32 0, !dbg !4487
  %4 = load i32, i32* %type15, align 8, !dbg !4487
  %cmp16 = icmp eq i32 %4, 0, !dbg !4490
  br i1 %cmp16, label %if.then18, label %if.else, !dbg !4491

if.then18:                                        ; preds = %if.then
  %call19 = tail call i32 @invoke_plugin_callbacks(i32 20, i8* null) #6, !dbg !4492
  %5 = bitcast %struct.opt_pass** %sub to i8**, !dbg !4494
  %6 = load i8*, i8** %5, align 8, !dbg !4494
  tail call void @do_per_function_toporder(void (i8*)* bitcast (void (%struct.opt_pass*)* @execute_pass_list to void (i8*)*), i8* %6) #7, !dbg !4495
  %call21 = tail call i32 @invoke_plugin_callbacks(i32 21, i8* null) #6, !dbg !4496
  br label %if.end35, !dbg !4497

if.else:                                          ; preds = %if.then
  %cmp24 = icmp eq i32 %4, 2, !dbg !4498
  br i1 %cmp24, label %if.then31, label %lor.lhs.false26, !dbg !4500

lor.lhs.false26:                                  ; preds = %if.else
  %cmp29 = icmp eq i32 %4, 3, !dbg !4501
  br i1 %cmp29, label %if.then31, label %if.else33, !dbg !4502

if.then31:                                        ; preds = %lor.lhs.false26, %if.else
  tail call void @execute_ipa_pass_list(%struct.opt_pass* nonnull %3) #7, !dbg !4503
  br label %if.end35, !dbg !4503

if.else33:                                        ; preds = %lor.lhs.false26
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 1815, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !4504
  br label %if.end35

if.end35:                                         ; preds = %land.lhs.true, %cond.end10, %if.then18, %if.else33, %if.then31
  %7 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !4505
  %tobool36 = icmp eq %union.tree_node* %7, null, !dbg !4505
  br i1 %tobool36, label %cond.end39, label %cond.true37, !dbg !4505

cond.true37:                                      ; preds = %if.end35
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 1817, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !4505
  br label %cond.end39, !dbg !4505

cond.end39:                                       ; preds = %if.end35, %cond.true37
  %call41 = tail call zeroext i8 @cgraph_process_new_functions() #6, !dbg !4506
  %next = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass.addr.0, i64 0, i32 5, !dbg !4507
  %8 = load %struct.opt_pass*, %struct.opt_pass** %next, align 8, !dbg !4507
  call void @llvm.dbg.value(metadata %struct.opt_pass* %8, metadata !4474, metadata !DIExpression()), !dbg !4475
  %tobool42 = icmp eq %struct.opt_pass* %8, null, !dbg !4508
  br i1 %tobool42, label %do.end, label %do.body, !dbg !4508, !llvm.loop !4509

do.end:                                           ; preds = %cond.end39
  ret void, !dbg !4511
}

; Function Attrs: nounwind uwtable
define dso_local void @execute_all_ipa_stmt_fixups(%struct.cgraph_node* %node, %union.gimple_statement_d** %stmts) local_unnamed_addr #5 !dbg !4512 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !4514, metadata !DIExpression()), !dbg !4516
  call void @llvm.dbg.value(metadata %union.gimple_statement_d** %stmts, metadata !4515, metadata !DIExpression()), !dbg !4516
  %0 = load %struct.opt_pass*, %struct.opt_pass** @all_regular_ipa_passes, align 8, !dbg !4517
  tail call fastcc void @execute_ipa_stmt_fixups(%struct.opt_pass* %0, %struct.cgraph_node* %node, %union.gimple_statement_d** %stmts) #7, !dbg !4518
  ret void, !dbg !4519
}

; Function Attrs: nounwind uwtable
define internal fastcc void @execute_ipa_stmt_fixups(%struct.opt_pass* %pass, %struct.cgraph_node* %node, %union.gimple_statement_d** %stmts) unnamed_addr #5 !dbg !4520 {
entry:
  call void @llvm.dbg.value(metadata %struct.opt_pass* %pass, metadata !4524, metadata !DIExpression()), !dbg !4531
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !4525, metadata !DIExpression()), !dbg !4531
  call void @llvm.dbg.value(metadata %union.gimple_statement_d** %stmts, metadata !4526, metadata !DIExpression()), !dbg !4531
  br label %while.cond, !dbg !4532

while.cond:                                       ; preds = %if.end30, %entry
  %pass.addr.0 = phi %struct.opt_pass* [ %pass, %entry ], [ %10, %if.end30 ]
  call void @llvm.dbg.value(metadata %struct.opt_pass* %pass.addr.0, metadata !4524, metadata !DIExpression()), !dbg !4531
  %tobool = icmp eq %struct.opt_pass* %pass.addr.0, null, !dbg !4532
  br i1 %tobool, label %while.end, label %while.body, !dbg !4532

while.body:                                       ; preds = %while.cond
  %type = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass.addr.0, i64 0, i32 0, !dbg !4533
  %0 = load i32, i32* %type, align 8, !dbg !4533
  %cmp = icmp eq i32 %0, 3, !dbg !4534
  br i1 %cmp, label %land.lhs.true, label %if.end30, !dbg !4535

land.lhs.true:                                    ; preds = %while.body
  %gate = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass.addr.0, i64 0, i32 2, !dbg !4536
  %1 = load i8 ()*, i8 ()** %gate, align 8, !dbg !4536
  %tobool1 = icmp eq i8 ()* %1, null, !dbg !4537
  br i1 %tobool1, label %if.then, label %lor.lhs.false, !dbg !4538

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call = tail call zeroext i8 %1() #6, !dbg !4539
  %tobool3 = icmp eq i8 %call, 0, !dbg !4539
  br i1 %tobool3, label %if.end30, label %if.then, !dbg !4540

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.opt_pass* %pass.addr.0, metadata !4527, metadata !DIExpression()), !dbg !4541
  %stmt_fixup = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass.addr.0, i64 1, i32 4, !dbg !4542
  %2 = bitcast %struct.opt_pass** %stmt_fixup to void (%struct.cgraph_node*, %union.gimple_statement_d**)**, !dbg !4542
  %3 = load void (%struct.cgraph_node*, %union.gimple_statement_d**)*, void (%struct.cgraph_node*, %union.gimple_statement_d**)** %2, align 8, !dbg !4542
  %tobool4 = icmp eq void (%struct.cgraph_node*, %union.gimple_statement_d**)* %3, null, !dbg !4544
  br i1 %tobool4, label %if.end25, label %if.then5, !dbg !4545

if.then5:                                         ; preds = %if.then
  %call6 = tail call zeroext i8 @pass_init_dump_file(%struct.opt_pass* nonnull %pass.addr.0) #7, !dbg !4546
  %tv_id = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass.addr.0, i64 0, i32 7, !dbg !4548
  %4 = load i32, i32* %tv_id, align 4, !dbg !4548
  %tobool7 = icmp ne i32 %4, 0, !dbg !4550
  %5 = load i8, i8* @timevar_enable, align 1, !dbg !4551
  %tobool9 = icmp ne i8 %5, 0, !dbg !4551
  %or.cond = and i1 %tobool7, %tobool9, !dbg !4554
  br i1 %or.cond, label %if.then10, label %if.end12, !dbg !4554

if.then10:                                        ; preds = %if.then5
  tail call void @timevar_push_1(i32 %4) #6, !dbg !4551
  br label %if.end12, !dbg !4551

if.end12:                                         ; preds = %if.then10, %if.then5
  %6 = load void (%struct.cgraph_node*, %union.gimple_statement_d**)*, void (%struct.cgraph_node*, %union.gimple_statement_d**)** %2, align 8, !dbg !4555
  tail call void %6(%struct.cgraph_node* %node, %union.gimple_statement_d** %stmts) #6, !dbg !4556
  %7 = load i32, i32* %tv_id, align 4, !dbg !4557
  %tobool15 = icmp ne i32 %7, 0, !dbg !4559
  %8 = load i8, i8* @timevar_enable, align 1, !dbg !4560
  %tobool18 = icmp ne i8 %8, 0, !dbg !4560
  %or.cond1 = and i1 %tobool15, %tobool18, !dbg !4563
  br i1 %or.cond1, label %if.then19, label %if.end24, !dbg !4563

if.then19:                                        ; preds = %if.end12
  tail call void @timevar_pop_1(i32 %7) #6, !dbg !4560
  br label %if.end24, !dbg !4560

if.end24:                                         ; preds = %if.then19, %if.end12
  tail call void @pass_fini_dump_file(%struct.opt_pass* nonnull %pass.addr.0) #7, !dbg !4564
  br label %if.end25, !dbg !4565

if.end25:                                         ; preds = %if.then, %if.end24
  %sub = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass.addr.0, i64 0, i32 4, !dbg !4566
  %9 = load %struct.opt_pass*, %struct.opt_pass** %sub, align 8, !dbg !4566
  %tobool26 = icmp eq %struct.opt_pass* %9, null, !dbg !4568
  br i1 %tobool26, label %if.end30, label %if.then27, !dbg !4569

if.then27:                                        ; preds = %if.end25
  tail call fastcc void @execute_ipa_stmt_fixups(%struct.opt_pass* nonnull %9, %struct.cgraph_node* %node, %union.gimple_statement_d** %stmts) #7, !dbg !4570
  br label %if.end30, !dbg !4570

if.end30:                                         ; preds = %lor.lhs.false, %if.end25, %if.then27, %while.body
  %next = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass.addr.0, i64 0, i32 5, !dbg !4571
  %10 = load %struct.opt_pass*, %struct.opt_pass** %next, align 8, !dbg !4571
  call void @llvm.dbg.value(metadata %struct.opt_pass* %10, metadata !4524, metadata !DIExpression()), !dbg !4531
  br label %while.cond, !dbg !4532, !llvm.loop !4572

while.end:                                        ; preds = %while.cond
  ret void, !dbg !4574
}

; Function Attrs: nounwind uwtable
define dso_local void @dump_properties(%struct._IO_FILE* %dump, i32 %props) local_unnamed_addr #5 !dbg !4575 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %dump, metadata !4579, metadata !DIExpression()), !dbg !4581
  call void @llvm.dbg.value(metadata i32 %props, metadata !4580, metadata !DIExpression()), !dbg !4581
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %dump, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0)) #6, !dbg !4582
  %and = and i32 %props, 1, !dbg !4583
  %tobool = icmp eq i32 %and, 0, !dbg !4583
  br i1 %tobool, label %if.end, label %if.then, !dbg !4585

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %dump, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0)) #6, !dbg !4586
  br label %if.end, !dbg !4586

if.end:                                           ; preds = %entry, %if.then
  %and2 = and i32 %props, 2, !dbg !4587
  %tobool3 = icmp eq i32 %and2, 0, !dbg !4587
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !4589

if.then4:                                         ; preds = %if.end
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %dump, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0)) #6, !dbg !4590
  br label %if.end6, !dbg !4590

if.end6:                                          ; preds = %if.end, %if.then4
  %and7 = and i32 %props, 4, !dbg !4591
  %tobool8 = icmp eq i32 %and7, 0, !dbg !4591
  br i1 %tobool8, label %if.end11, label %if.then9, !dbg !4593

if.then9:                                         ; preds = %if.end6
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %dump, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0)) #6, !dbg !4594
  br label %if.end11, !dbg !4594

if.end11:                                         ; preds = %if.end6, %if.then9
  %and12 = and i32 %props, 8, !dbg !4595
  %tobool13 = icmp eq i32 %and12, 0, !dbg !4595
  br i1 %tobool13, label %if.end16, label %if.then14, !dbg !4597

if.then14:                                        ; preds = %if.end11
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %dump, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0)) #6, !dbg !4598
  br label %if.end16, !dbg !4598

if.end16:                                         ; preds = %if.end11, %if.then14
  %and17 = and i32 %props, 16, !dbg !4599
  %tobool18 = icmp eq i32 %and17, 0, !dbg !4599
  br i1 %tobool18, label %if.end21, label %if.then19, !dbg !4601

if.then19:                                        ; preds = %if.end16
  %call20 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %dump, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i64 0, i64 0)) #6, !dbg !4602
  br label %if.end21, !dbg !4602

if.end21:                                         ; preds = %if.end16, %if.then19
  %and22 = and i32 %props, 32, !dbg !4603
  %tobool23 = icmp eq i32 %and22, 0, !dbg !4603
  br i1 %tobool23, label %if.end26, label %if.then24, !dbg !4605

if.then24:                                        ; preds = %if.end21
  %call25 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %dump, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0)) #6, !dbg !4606
  br label %if.end26, !dbg !4606

if.end26:                                         ; preds = %if.end21, %if.then24
  %and27 = and i32 %props, 64, !dbg !4607
  %tobool28 = icmp eq i32 %and27, 0, !dbg !4607
  br i1 %tobool28, label %if.end31, label %if.then29, !dbg !4609

if.then29:                                        ; preds = %if.end26
  %call30 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %dump, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i64 0, i64 0)) #6, !dbg !4610
  br label %if.end31, !dbg !4610

if.end31:                                         ; preds = %if.end26, %if.then29
  %0 = trunc i32 %props to i8, !dbg !4611
  %tobool33 = icmp slt i8 %0, 0, !dbg !4611
  br i1 %tobool33, label %if.then34, label %if.end36, !dbg !4613

if.then34:                                        ; preds = %if.end31
  %call35 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %dump, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0)) #6, !dbg !4614
  br label %if.end36, !dbg !4614

if.end36:                                         ; preds = %if.then34, %if.end31
  %and37 = and i32 %props, 256, !dbg !4615
  %tobool38 = icmp eq i32 %and37, 0, !dbg !4615
  br i1 %tobool38, label %if.end41, label %if.then39, !dbg !4617

if.then39:                                        ; preds = %if.end36
  %call40 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %dump, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0)) #6, !dbg !4618
  br label %if.end41, !dbg !4618

if.end41:                                         ; preds = %if.end36, %if.then39
  %and42 = and i32 %props, 1024, !dbg !4619
  %tobool43 = icmp eq i32 %and42, 0, !dbg !4619
  br i1 %tobool43, label %if.end46, label %if.then44, !dbg !4621

if.then44:                                        ; preds = %if.end41
  %call45 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %dump, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i64 0, i64 0)) #6, !dbg !4622
  br label %if.end46, !dbg !4622

if.end46:                                         ; preds = %if.end41, %if.then44
  ret void, !dbg !4623
}

; Function Attrs: nounwind uwtable
define dso_local void @debug_properties(i32 %props) local_unnamed_addr #5 !dbg !4624 {
entry:
  call void @llvm.dbg.value(metadata i32 %props, metadata !4626, metadata !DIExpression()), !dbg !4627
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4628
  tail call void @dump_properties(%struct._IO_FILE* %0, i32 %props) #7, !dbg !4629
  ret void, !dbg !4630
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @function_called_by_processed_nodes_p() local_unnamed_addr #5 !dbg !4631 {
entry:
  %0 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !4634
  %call = tail call %struct.cgraph_node* @cgraph_node(%union.tree_node* %0) #6, !dbg !4636
  %callers = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call, i64 0, i32 2, !dbg !4637
  %1 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !4638
  br label %for.cond, !dbg !4642

for.cond:                                         ; preds = %for.inc, %entry
  %e.0.in = phi %struct.cgraph_edge** [ %callers, %entry ], [ %next_caller, %for.inc ]
  %e.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %e.0.in, align 8, !dbg !4643
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e.0, metadata !4633, metadata !DIExpression()), !dbg !4644
  %tobool = icmp eq %struct.cgraph_edge* %e.0, null, !dbg !4645
  br i1 %tobool, label %for.end, label %for.body, !dbg !4645

for.body:                                         ; preds = %for.cond
  %caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 1, !dbg !4646
  %2 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !4646
  %decl = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %2, i64 0, i32 0, !dbg !4647
  %3 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !4647
  %cmp = icmp eq %union.tree_node* %3, %1, !dbg !4648
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4649
  br i1 %cmp, label %for.inc, label %if.end, !dbg !4649

if.end:                                           ; preds = %for.body
  %analyzed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %2, i64 0, i32 27, !dbg !4650
  %bf.load = load i16, i16* %analyzed, align 4, !dbg !4650
  %bf.clear = and i16 %bf.load, 32, !dbg !4650
  %tobool2 = icmp eq i16 %bf.clear, 0, !dbg !4652
  br i1 %tobool2, label %for.inc, label %if.end4, !dbg !4653

if.end4:                                          ; preds = %if.end
  %bf.load7 = load i64, i64* %4, align 8, !dbg !4654
  %bf.cast101 = and i64 %bf.load7, 4194304, !dbg !4654
  %tobool11 = icmp eq i64 %bf.cast101, 0, !dbg !4654
  br i1 %tobool11, label %if.end13, label %for.inc, !dbg !4656

if.end13:                                         ; preds = %if.end4
  %bf.clear17 = and i16 %bf.load, 64, !dbg !4657
  %tobool19 = icmp eq i16 %bf.clear17, 0, !dbg !4659
  br i1 %tobool19, label %land.lhs.true, label %for.inc, !dbg !4660

land.lhs.true:                                    ; preds = %if.end13
  %inlined_to = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %2, i64 0, i32 19, i32 2, !dbg !4661
  %5 = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to, align 8, !dbg !4661
  %tobool21 = icmp eq %struct.cgraph_node* %5, null, !dbg !4662
  br i1 %tobool21, label %for.end, label %for.inc, !dbg !4663

for.inc:                                          ; preds = %land.lhs.true, %if.end13, %if.end4, %if.end, %for.body
  %next_caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 4, !dbg !4664
  br label %for.cond, !dbg !4665, !llvm.loop !4666

for.end:                                          ; preds = %land.lhs.true, %for.cond
  %e.0.lcssa = phi %struct.cgraph_edge* [ %e.0, %land.lhs.true ], [ %e.0, %for.cond ], !dbg !4643
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4668
  %tobool24 = icmp ne %struct._IO_FILE* %6, null, !dbg !4668
  %tobool26 = icmp ne %struct.cgraph_edge* %e.0.lcssa, null, !dbg !4670
  %or.cond = and i1 %tobool24, %tobool26, !dbg !4671
  br i1 %or.cond, label %if.then27, label %if.end30, !dbg !4671

if.then27:                                        ; preds = %for.end
  %call28 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.34, i64 0, i64 0)) #6, !dbg !4672
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4674
  %caller29 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0.lcssa, i64 0, i32 1, !dbg !4675
  %8 = load %struct.cgraph_node*, %struct.cgraph_node** %caller29, align 8, !dbg !4675
  tail call void @dump_cgraph_node(%struct._IO_FILE* %7, %struct.cgraph_node* %8) #6, !dbg !4676
  br label %if.end30, !dbg !4677

if.end30:                                         ; preds = %if.then27, %for.end
  %conv32 = zext i1 %tobool26 to i8, !dbg !4678
  ret i8 %conv32, !dbg !4679
}

declare dso_local void @dump_cgraph_node(%struct._IO_FILE*, %struct.cgraph_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @gt_ggc_ma_order(i8* %x_p) #5 !dbg !4680 {
entry:
  call void @llvm.dbg.value(metadata i8* %x_p, metadata !4682, metadata !DIExpression()), !dbg !4689
  %0 = load %struct.cgraph_node**, %struct.cgraph_node*** @order, align 8, !dbg !4690
  %cmp = icmp eq %struct.cgraph_node** %0, null, !dbg !4691
  br i1 %cmp, label %if.end16, label %for.cond.preheader, !dbg !4692

for.cond.preheader:                               ; preds = %entry
  br label %for.cond, !dbg !4693

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %.pre1 = phi %struct.cgraph_node** [ %.pre, %for.inc ], [ %0, %for.cond.preheader ]
  %1 = phi %struct.cgraph_node** [ %.pre, %for.inc ], [ %0, %for.cond.preheader ], !dbg !4695
  %i0.0 = phi i64 [ %inc, %for.inc ], [ 0, %for.cond.preheader ], !dbg !4696
  call void @llvm.dbg.value(metadata i64 %i0.0, metadata !4683, metadata !DIExpression()), !dbg !4695
  %2 = load i32, i32* @nnodes, align 4, !dbg !4697
  %conv = sext i32 %2 to i64, !dbg !4699
  %cmp1 = icmp eq i64 %i0.0, %conv, !dbg !4700
  br i1 %cmp1, label %do.body7, label %do.body, !dbg !4693

do.body:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.cgraph_node*, %struct.cgraph_node** %1, i64 %i0.0, !dbg !4701
  %3 = load %struct.cgraph_node*, %struct.cgraph_node** %arrayidx, align 8, !dbg !4701
  %cmp3 = icmp eq %struct.cgraph_node* %3, null, !dbg !4701
  br i1 %cmp3, label %for.inc, label %if.then5, !dbg !4705

if.then5:                                         ; preds = %do.body
  %4 = bitcast %struct.cgraph_node* %3 to i8*, !dbg !4705
  tail call void @gt_ggc_mx_cgraph_node(i8* nonnull %4) #6, !dbg !4701
  %.pre.pre = load %struct.cgraph_node**, %struct.cgraph_node*** @order, align 8, !dbg !4695
  br label %for.inc, !dbg !4701

for.inc:                                          ; preds = %do.body, %if.then5
  %.pre = phi %struct.cgraph_node** [ %.pre1, %do.body ], [ %.pre.pre, %if.then5 ], !dbg !4695
  %inc = add i64 %i0.0, 1, !dbg !4706
  call void @llvm.dbg.value(metadata i64 %inc, metadata !4683, metadata !DIExpression()), !dbg !4695
  br label %for.cond, !dbg !4707, !llvm.loop !4708

do.body7:                                         ; preds = %for.cond
  %.lcssa = phi %struct.cgraph_node** [ %1, %for.cond ], !dbg !4695
  call void @llvm.dbg.value(metadata %struct.cgraph_node** %.lcssa, metadata !4686, metadata !DIExpression()), !dbg !4710
  %switch = icmp ult %struct.cgraph_node** %.lcssa, inttoptr (i64 2 to %struct.cgraph_node**), !dbg !4711
  br i1 %switch, label %if.end16, label %if.then12, !dbg !4711

if.then12:                                        ; preds = %do.body7
  %5 = bitcast %struct.cgraph_node** %.lcssa to i8*, !dbg !4713
  call void @llvm.dbg.value(metadata i8* %5, metadata !4686, metadata !DIExpression()), !dbg !4710
  %call = tail call i32 @ggc_set_mark(i8* %5) #6, !dbg !4711
  br label %if.end16, !dbg !4711

if.end16:                                         ; preds = %entry, %do.body7, %if.then12
  ret void, !dbg !4714
}

; Function Attrs: nounwind uwtable
define internal void @gt_pch_na_order(i8* %x_p) #5 !dbg !4715 {
entry:
  call void @llvm.dbg.value(metadata i8* %x_p, metadata !4717, metadata !DIExpression()), !dbg !4721
  %0 = load %struct.cgraph_node**, %struct.cgraph_node*** @order, align 8, !dbg !4722
  %cmp = icmp eq %struct.cgraph_node** %0, null, !dbg !4723
  br i1 %cmp, label %if.end7, label %for.cond.preheader, !dbg !4724

for.cond.preheader:                               ; preds = %entry
  br label %for.cond, !dbg !4725

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %.pre1 = phi %struct.cgraph_node** [ %.pre, %for.inc ], [ %0, %for.cond.preheader ]
  %1 = phi %struct.cgraph_node** [ %.pre, %for.inc ], [ %0, %for.cond.preheader ], !dbg !4727
  %i1.0 = phi i64 [ %inc, %for.inc ], [ 0, %for.cond.preheader ], !dbg !4728
  call void @llvm.dbg.value(metadata i64 %i1.0, metadata !4718, metadata !DIExpression()), !dbg !4727
  %2 = load i32, i32* @nnodes, align 4, !dbg !4729
  %conv = sext i32 %2 to i64, !dbg !4731
  %cmp1 = icmp eq i64 %i1.0, %conv, !dbg !4732
  br i1 %cmp1, label %for.end, label %do.body, !dbg !4725

do.body:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.cgraph_node*, %struct.cgraph_node** %1, i64 %i1.0, !dbg !4733
  %3 = load %struct.cgraph_node*, %struct.cgraph_node** %arrayidx, align 8, !dbg !4733
  %cmp3 = icmp eq %struct.cgraph_node* %3, null, !dbg !4733
  br i1 %cmp3, label %for.inc, label %if.then5, !dbg !4737

if.then5:                                         ; preds = %do.body
  %4 = bitcast %struct.cgraph_node* %3 to i8*, !dbg !4737
  tail call void @gt_pch_nx_cgraph_node(i8* nonnull %4) #6, !dbg !4733
  %.pre.pre = load %struct.cgraph_node**, %struct.cgraph_node*** @order, align 8, !dbg !4727
  br label %for.inc, !dbg !4733

for.inc:                                          ; preds = %do.body, %if.then5
  %.pre = phi %struct.cgraph_node** [ %.pre1, %do.body ], [ %.pre.pre, %if.then5 ], !dbg !4727
  %inc = add i64 %i1.0, 1, !dbg !4738
  call void @llvm.dbg.value(metadata i64 %inc, metadata !4718, metadata !DIExpression()), !dbg !4727
  br label %for.cond, !dbg !4739, !llvm.loop !4740

for.end:                                          ; preds = %for.cond
  %.lcssa = phi %struct.cgraph_node** [ %1, %for.cond ], !dbg !4727
  %5 = bitcast %struct.cgraph_node** %.lcssa to i8*, !dbg !4742
  %call = tail call i32 @gt_pch_note_object(i8* %5, i8* bitcast (%struct.cgraph_node*** @order to i8*), void (i8*, i8*, void (i8*, i8*)*, i8*)* nonnull @gt_pch_pa_order, i32 217) #6, !dbg !4743
  br label %if.end7, !dbg !4744

if.end7:                                          ; preds = %entry, %for.end
  ret void, !dbg !4745
}

declare dso_local i8* @xrealloc(i8*, i64) local_unnamed_addr #2

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.opt_pass* @make_pass_instance(%struct.opt_pass* %pass, i8 zeroext %track_duplicates) unnamed_addr #5 !dbg !4746 {
entry:
  call void @llvm.dbg.value(metadata %struct.opt_pass* %pass, metadata !4750, metadata !DIExpression()), !dbg !4755
  call void @llvm.dbg.value(metadata i8 %track_duplicates, metadata !4751, metadata !DIExpression()), !dbg !4755
  %static_pass_number = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass, i64 0, i32 6, !dbg !4756
  %0 = load i32, i32* %static_pass_number, align 8, !dbg !4756
  %tobool = icmp eq i32 %0, 0, !dbg !4757
  br i1 %tobool, label %if.else28, label %if.then, !dbg !4758

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass, i64 0, i32 0, !dbg !4759
  %1 = load i32, i32* %type, align 8, !dbg !4759
  %cmp = icmp eq i32 %1, 0, !dbg !4761
  br i1 %cmp, label %if.then6, label %lor.lhs.false, !dbg !4762

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i32 %1, 1, !dbg !4763
  br i1 %cmp2, label %if.then6, label %lor.lhs.false3, !dbg !4764

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %cmp5 = icmp eq i32 %1, 2, !dbg !4765
  br i1 %cmp5, label %if.then6, label %if.else, !dbg !4766

if.then6:                                         ; preds = %lor.lhs.false3, %lor.lhs.false, %if.then
  %call = tail call i8* @xmalloc(i64 80) #6, !dbg !4767
  %2 = bitcast i8* %call to %struct.opt_pass*, !dbg !4767
  call void @llvm.dbg.value(metadata %struct.opt_pass* %2, metadata !4752, metadata !DIExpression()), !dbg !4769
  %3 = bitcast %struct.opt_pass* %pass to i8*, !dbg !4770
  %call7 = tail call i8* @memcpy(i8* %call, i8* %3, i64 80) #6, !dbg !4771
  br label %if.end14, !dbg !4772

if.else:                                          ; preds = %lor.lhs.false3
  %cmp9 = icmp eq i32 %1, 3, !dbg !4773
  br i1 %cmp9, label %if.then10, label %if.else13, !dbg !4775

if.then10:                                        ; preds = %if.else
  %call11 = tail call i8* @xmalloc(i64 144) #6, !dbg !4776
  %4 = bitcast i8* %call11 to %struct.opt_pass*, !dbg !4778
  call void @llvm.dbg.value(metadata %struct.opt_pass* %4, metadata !4752, metadata !DIExpression()), !dbg !4769
  %5 = bitcast %struct.opt_pass* %pass to i8*, !dbg !4779
  %call12 = tail call i8* @memcpy(i8* %call11, i8* %5, i64 144) #6, !dbg !4780
  br label %if.end14, !dbg !4781

if.else13:                                        ; preds = %if.else
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 481, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !4782
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.else13, %if.then6
  %new_pass.1 = phi %struct.opt_pass* [ %2, %if.then6 ], [ %4, %if.then10 ], [ undef, %if.else13 ], !dbg !4783
  call void @llvm.dbg.value(metadata %struct.opt_pass* %new_pass.1, metadata !4752, metadata !DIExpression()), !dbg !4769
  %next = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %new_pass.1, i64 0, i32 5, !dbg !4784
  store %struct.opt_pass* null, %struct.opt_pass** %next, align 8, !dbg !4785
  %todo_flags_start = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %new_pass.1, i64 0, i32 11, !dbg !4786
  %6 = load i32, i32* %todo_flags_start, align 4, !dbg !4787
  %and = and i32 %6, -524289, !dbg !4787
  store i32 %and, i32* %todo_flags_start, align 4, !dbg !4787
  %name = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass, i64 0, i32 1, !dbg !4788
  %7 = load i8*, i8** %name, align 8, !dbg !4788
  %tobool15 = icmp eq i8* %7, null, !dbg !4790
  br i1 %tobool15, label %lor.lhs.false19, label %land.lhs.true, !dbg !4791

land.lhs.true:                                    ; preds = %if.end14
  %8 = load i8, i8* %7, align 1, !dbg !4792
  %cmp17 = icmp eq i8 %8, 42, !dbg !4793
  br i1 %cmp17, label %lor.lhs.false19, label %if.then22, !dbg !4794

lor.lhs.false19:                                  ; preds = %land.lhs.true, %if.end14
  %tobool21 = icmp eq i8 %track_duplicates, 0, !dbg !4795
  br i1 %tobool21, label %return, label %if.then22, !dbg !4796

if.then22:                                        ; preds = %land.lhs.true, %lor.lhs.false19
  %9 = load i32, i32* %static_pass_number, align 8, !dbg !4797
  %sub = add nsw i32 %9, -1, !dbg !4797
  store i32 %sub, i32* %static_pass_number, align 8, !dbg !4797
  %sub25 = sub i32 1, %9, !dbg !4799
  %static_pass_number26 = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %new_pass.1, i64 0, i32 6, !dbg !4800
  store i32 %sub25, i32* %static_pass_number26, align 8, !dbg !4801
  br label %return, !dbg !4802

if.else28:                                        ; preds = %entry
  %todo_flags_start29 = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass, i64 0, i32 11, !dbg !4803
  %10 = load i32, i32* %todo_flags_start29, align 4, !dbg !4805
  %or = or i32 %10, 524288, !dbg !4805
  store i32 %or, i32* %todo_flags_start29, align 4, !dbg !4805
  store i32 -1, i32* %static_pass_number, align 8, !dbg !4806
  %11 = bitcast %struct.opt_pass* %pass to i8*, !dbg !4807
  %call31 = tail call i32 @invoke_plugin_callbacks(i32 22, i8* %11) #6, !dbg !4808
  br label %return, !dbg !4809

return:                                           ; preds = %lor.lhs.false19, %if.then22, %if.else28
  %retval.0 = phi %struct.opt_pass* [ %pass, %if.else28 ], [ %new_pass.1, %if.then22 ], [ %new_pass.1, %lor.lhs.false19 ], !dbg !4755
  ret %struct.opt_pass* %retval.0, !dbg !4810
}

declare dso_local void @error(i8*, ...) local_unnamed_addr #2

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #2

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @register_dump_files_1(%struct.opt_pass* %pass, i32 %properties) unnamed_addr #5 !dbg !4811 {
entry:
  call void @llvm.dbg.value(metadata %struct.opt_pass* %pass, metadata !4815, metadata !DIExpression()), !dbg !4819
  call void @llvm.dbg.value(metadata i32 %properties, metadata !4816, metadata !DIExpression()), !dbg !4819
  br label %do.body, !dbg !4820

do.body:                                          ; preds = %if.end6, %entry
  %properties.addr.0 = phi i32 [ %properties, %entry ], [ %properties.addr.1, %if.end6 ]
  %pass.addr.0 = phi %struct.opt_pass* [ %pass, %entry ], [ %6, %if.end6 ]
  call void @llvm.dbg.value(metadata %struct.opt_pass* %pass.addr.0, metadata !4815, metadata !DIExpression()), !dbg !4819
  call void @llvm.dbg.value(metadata i32 %properties.addr.0, metadata !4816, metadata !DIExpression()), !dbg !4819
  %properties_provided = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass.addr.0, i64 0, i32 9, !dbg !4821
  %0 = load i32, i32* %properties_provided, align 4, !dbg !4821
  %or = or i32 %properties.addr.0, %0, !dbg !4822
  %properties_destroyed = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass.addr.0, i64 0, i32 10, !dbg !4823
  %1 = load i32, i32* %properties_destroyed, align 8, !dbg !4823
  %neg = xor i32 %1, -1, !dbg !4824
  %and = and i32 %or, %neg, !dbg !4825
  call void @llvm.dbg.value(metadata i32 %and, metadata !4817, metadata !DIExpression()), !dbg !4826
  %name = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass.addr.0, i64 0, i32 1, !dbg !4827
  %2 = load i8*, i8** %name, align 8, !dbg !4827
  %tobool = icmp eq i8* %2, null, !dbg !4829
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !4830

land.lhs.true:                                    ; preds = %do.body
  %3 = load i8, i8* %2, align 1, !dbg !4831
  %cmp = icmp eq i8 %3, 42, !dbg !4832
  br i1 %cmp, label %if.end, label %if.then, !dbg !4833

if.then:                                          ; preds = %land.lhs.true
  tail call void @register_one_dump_file(%struct.opt_pass* %pass.addr.0) #7, !dbg !4834
  br label %if.end, !dbg !4834

if.end:                                           ; preds = %land.lhs.true, %do.body, %if.then
  %sub = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass.addr.0, i64 0, i32 4, !dbg !4835
  %4 = load %struct.opt_pass*, %struct.opt_pass** %sub, align 8, !dbg !4835
  %tobool3 = icmp eq %struct.opt_pass* %4, null, !dbg !4837
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !4838

if.then4:                                         ; preds = %if.end
  %call = tail call fastcc i32 @register_dump_files_1(%struct.opt_pass* nonnull %4, i32 %and) #7, !dbg !4839
  call void @llvm.dbg.value(metadata i32 %call, metadata !4817, metadata !DIExpression()), !dbg !4826
  br label %if.end6, !dbg !4840

if.end6:                                          ; preds = %if.end, %if.then4
  %new_properties.0 = phi i32 [ %call, %if.then4 ], [ %and, %if.end ], !dbg !4826
  call void @llvm.dbg.value(metadata i32 %new_properties.0, metadata !4817, metadata !DIExpression()), !dbg !4826
  %gate = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass.addr.0, i64 0, i32 2, !dbg !4841
  %5 = load i8 ()*, i8 ()** %gate, align 8, !dbg !4841
  %tobool7 = icmp eq i8 ()* %5, null, !dbg !4843
  %and9 = select i1 %tobool7, i32 -1, i32 %properties.addr.0, !dbg !4844
  %properties.addr.1 = and i32 %new_properties.0, %and9, !dbg !4844
  call void @llvm.dbg.value(metadata i32 %properties.addr.1, metadata !4816, metadata !DIExpression()), !dbg !4819
  %next = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass.addr.0, i64 0, i32 5, !dbg !4845
  %6 = load %struct.opt_pass*, %struct.opt_pass** %next, align 8, !dbg !4845
  call void @llvm.dbg.value(metadata %struct.opt_pass* %6, metadata !4815, metadata !DIExpression()), !dbg !4819
  %tobool11 = icmp eq %struct.opt_pass* %6, null, !dbg !4846
  br i1 %tobool11, label %do.end, label %do.body, !dbg !4846, !llvm.loop !4847

do.end:                                           ; preds = %if.end6
  %properties.addr.1.lcssa = phi i32 [ %properties.addr.1, %if.end6 ], !dbg !4844
  ret i32 %properties.addr.1.lcssa, !dbg !4849
}

; Function Attrs: nounwind uwtable
define internal void @execute_function_todo(i8* %data) #5 !dbg !4850 {
entry:
  call void @llvm.dbg.value(metadata i8* %data, metadata !4852, metadata !DIExpression()), !dbg !4860
  %0 = ptrtoint i8* %data to i64, !dbg !4861
  %conv = trunc i64 %0 to i32, !dbg !4861
  call void @llvm.dbg.value(metadata i32 %conv, metadata !4853, metadata !DIExpression()), !dbg !4860
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4862
  %curr_properties = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 17, !dbg !4864
  %2 = load i32, i32* %curr_properties, align 8, !dbg !4864
  %and = lshr i32 %2, 3, !dbg !4865
  %3 = and i32 %and, 4, !dbg !4865
  %4 = or i32 %3, %conv, !dbg !4865
  call void @llvm.dbg.value(metadata i32 %4, metadata !4853, metadata !DIExpression()), !dbg !4860
  %last_verified = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 18, !dbg !4866
  %5 = load i32, i32* %last_verified, align 4, !dbg !4866
  %neg = xor i32 %5, -1, !dbg !4867
  %and2 = and i32 %4, %neg, !dbg !4868
  call void @llvm.dbg.value(metadata i32 %and2, metadata !4853, metadata !DIExpression()), !dbg !4860
  %tobool3 = icmp eq i32 %and2, 0, !dbg !4869
  br i1 %tobool3, label %cleanup.cont, label %if.end5, !dbg !4871

if.end5:                                          ; preds = %entry
  tail call void @statistics_fini_pass() #6, !dbg !4872
  %and6 = and i32 %and2, 32, !dbg !4873
  %tobool7 = icmp eq i32 %and6, 0, !dbg !4873
  br i1 %tobool7, label %if.end28, label %if.then8, !dbg !4874

if.then8:                                         ; preds = %if.end5
  %call = tail call zeroext i8 @cleanup_tree_cfg() #6, !dbg !4875
  call void @llvm.dbg.value(metadata i8 %call, metadata !4854, metadata !DIExpression()), !dbg !4876
  %tobool10 = icmp eq i8 %call, 0, !dbg !4877
  br i1 %tobool10, label %if.end17, label %land.lhs.true, !dbg !4879

land.lhs.true:                                    ; preds = %if.then8
  %6 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4880
  %curr_properties12 = getelementptr inbounds %struct.function, %struct.function* %6, i64 0, i32 17, !dbg !4881
  %7 = load i32, i32* %curr_properties12, align 8, !dbg !4881
  %and13 = shl i32 %7, 10, !dbg !4882
  %8 = and i32 %and13, 32768, !dbg !4882
  %9 = or i32 %8, %and2, !dbg !4882
  br label %if.end17, !dbg !4882

if.end17:                                         ; preds = %if.then8, %land.lhs.true
  %flags.1 = phi i32 [ %and2, %if.then8 ], [ %9, %land.lhs.true ], !dbg !4860
  call void @llvm.dbg.value(metadata i32 %flags.1, metadata !4853, metadata !DIExpression()), !dbg !4860
  %and18 = and i32 %flags.1, 30720, !dbg !4883
  %tobool19 = icmp eq i32 %and18, 0, !dbg !4883
  br i1 %tobool19, label %land.lhs.true20, label %if.end28, !dbg !4885

land.lhs.true20:                                  ; preds = %if.end17
  %10 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4886
  %call22 = tail call zeroext i8 @need_ssa_update_p(%struct.function* %10) #6, !dbg !4887
  %tobool24 = icmp eq i8 %call22, 0, !dbg !4887
  %or26 = or i32 %flags.1, 2048, !dbg !4888
  %spec.select2 = select i1 %tobool24, i32 %flags.1, i32 %or26, !dbg !4889
  br label %if.end28, !dbg !4889

if.end28:                                         ; preds = %if.end17, %if.end5, %land.lhs.true20
  %flags.3 = phi i32 [ %and2, %if.end5 ], [ %flags.1, %if.end17 ], [ %spec.select2, %land.lhs.true20 ], !dbg !4860
  call void @llvm.dbg.value(metadata i32 %flags.3, metadata !4853, metadata !DIExpression()), !dbg !4860
  %and29 = and i32 %flags.3, 30720, !dbg !4890
  %tobool30 = icmp eq i32 %and29, 0, !dbg !4890
  br i1 %tobool30, label %if.end36, label %if.then31, !dbg !4891

if.then31:                                        ; preds = %if.end28
  call void @llvm.dbg.value(metadata i32 %and29, metadata !4857, metadata !DIExpression()), !dbg !4892
  tail call void @update_ssa(i32 %and29) #6, !dbg !4893
  %11 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4894
  %last_verified34 = getelementptr inbounds %struct.function, %struct.function* %11, i64 0, i32 18, !dbg !4895
  %12 = load i32, i32* %last_verified34, align 4, !dbg !4896
  %and35 = and i32 %12, -5, !dbg !4896
  store i32 %and35, i32* %last_verified34, align 4, !dbg !4896
  br label %if.end36, !dbg !4897

if.end36:                                         ; preds = %if.end28, %if.then31
  %and37 = and i32 %flags.3, 2097152, !dbg !4898
  %tobool38 = icmp eq i32 %and37, 0, !dbg !4898
  br i1 %tobool38, label %if.end40, label %if.then39, !dbg !4900

if.then39:                                        ; preds = %if.end36
  tail call void @execute_update_addresses_taken(i8 zeroext 1) #6, !dbg !4901
  br label %if.end40, !dbg !4901

if.end40:                                         ; preds = %if.end36, %if.then39
  %and41 = and i32 %flags.3, 1048576, !dbg !4902
  %tobool42 = icmp eq i32 %and41, 0, !dbg !4902
  br i1 %tobool42, label %if.end49, label %if.then43, !dbg !4904

if.then43:                                        ; preds = %if.end40
  br i1 %tobool38, label %if.then46, label %if.end47, !dbg !4905

if.then46:                                        ; preds = %if.then43
  tail call void @execute_update_addresses_taken(i8 zeroext 1) #6, !dbg !4907
  br label %if.end47, !dbg !4907

if.end47:                                         ; preds = %if.then43, %if.then46
  %call48 = tail call i32 @compute_may_aliases() #6, !dbg !4909
  br label %if.end49, !dbg !4910

if.end49:                                         ; preds = %if.end40, %if.end47
  %13 = trunc i32 %flags.3 to i16, !dbg !4911
  %tobool51 = icmp slt i16 %13, 0, !dbg !4911
  br i1 %tobool51, label %if.then52, label %if.end53, !dbg !4913

if.then52:                                        ; preds = %if.end49
  tail call void @remove_unused_locals() #6, !dbg !4914
  br label %if.end53, !dbg !4914

if.end53:                                         ; preds = %if.then52, %if.end49
  %and54 = and i32 %flags.3, 1, !dbg !4915
  %tobool55 = icmp ne i32 %and54, 0, !dbg !4915
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4917
  %tobool57 = icmp ne %struct._IO_FILE* %14, null, !dbg !4917
  %or.cond = and i1 %tobool55, %tobool57, !dbg !4918
  %15 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !4919
  %tobool59 = icmp ne %union.tree_node* %15, null, !dbg !4919
  %or.cond3 = and i1 %or.cond, %tobool59, !dbg !4918
  br i1 %or.cond3, label %if.then60, label %if.end98, !dbg !4918

if.then60:                                        ; preds = %if.end53
  %16 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4920
  %curr_properties62 = getelementptr inbounds %struct.function, %struct.function* %16, i64 0, i32 17, !dbg !4923
  %17 = load i32, i32* %curr_properties62, align 8, !dbg !4923
  %and63 = and i32 %17, 263, !dbg !4924
  %tobool64 = icmp eq i32 %and63, 0, !dbg !4924
  br i1 %tobool64, label %if.else, label %if.then65, !dbg !4925

if.then65:                                        ; preds = %if.then60
  %18 = load i32, i32* @dump_flags, align 4, !dbg !4926
  tail call void @dump_function_to_file(%union.tree_node* nonnull %15, %struct._IO_FILE* nonnull %14, i32 %18) #6, !dbg !4927
  br label %if.end96, !dbg !4927

if.else:                                          ; preds = %if.then60
  %19 = load i32, i32* @dump_flags, align 4, !dbg !4928
  %and66 = and i32 %19, 2, !dbg !4931
  %tobool67 = icmp eq i32 %and66, 0, !dbg !4931
  br i1 %tobool67, label %if.else70, label %if.then68, !dbg !4932

if.then68:                                        ; preds = %if.else
  %call69 = tail call %struct.rtx_def* @get_insns() #6, !dbg !4933
  %20 = load i32, i32* @dump_flags, align 4, !dbg !4934
  tail call void @print_rtl_slim_with_bb(%struct._IO_FILE* nonnull %14, %struct.rtx_def* %call69, i32 %20) #6, !dbg !4935
  br label %if.end83, !dbg !4935

if.else70:                                        ; preds = %if.else
  %and73 = and i32 %17, 8, !dbg !4936
  %tobool74 = icmp eq i32 %and73, 0, !dbg !4936
  br i1 %tobool74, label %if.else80, label %land.lhs.true75, !dbg !4938

land.lhs.true75:                                  ; preds = %if.else70
  %and76 = and i32 %19, 32, !dbg !4939
  %tobool77 = icmp eq i32 %and76, 0, !dbg !4939
  br i1 %tobool77, label %if.else80, label %if.then78, !dbg !4940

if.then78:                                        ; preds = %land.lhs.true75
  %call79 = tail call %struct.rtx_def* @get_insns() #6, !dbg !4941
  tail call void @print_rtl_with_bb(%struct._IO_FILE* nonnull %14, %struct.rtx_def* %call79) #6, !dbg !4942
  br label %if.end83, !dbg !4942

if.else80:                                        ; preds = %land.lhs.true75, %if.else70
  %call81 = tail call %struct.rtx_def* @get_insns() #6, !dbg !4943
  tail call void @print_rtl(%struct._IO_FILE* nonnull %14, %struct.rtx_def* %call81) #6, !dbg !4944
  br label %if.end83

if.end83:                                         ; preds = %if.then78, %if.else80, %if.then68
  %21 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4945
  %curr_properties85 = getelementptr inbounds %struct.function, %struct.function* %21, i64 0, i32 17, !dbg !4947
  %22 = load i32, i32* %curr_properties85, align 8, !dbg !4947
  %and86 = and i32 %22, 8, !dbg !4948
  %tobool87 = icmp ne i32 %and86, 0, !dbg !4948
  %23 = load i32, i32* @graph_dump_format, align 4, !dbg !4949
  %cmp = icmp ne i32 %23, 0, !dbg !4950
  %or.cond4 = and i1 %tobool87, %cmp, !dbg !4951
  br i1 %or.cond4, label %land.lhs.true90, label %if.end96, !dbg !4951

land.lhs.true90:                                  ; preds = %if.end83
  %24 = load i32, i32* @dump_flags, align 4, !dbg !4952
  %and91 = and i32 %24, 8192, !dbg !4953
  %tobool92 = icmp eq i32 %and91, 0, !dbg !4953
  br i1 %tobool92, label %if.end96, label %if.then93, !dbg !4954

if.then93:                                        ; preds = %land.lhs.true90
  %25 = load i8*, i8** @dump_file_name, align 8, !dbg !4955
  %call94 = tail call %struct.rtx_def* @get_insns() #6, !dbg !4956
  tail call void @print_rtl_graph_with_bb(i8* %25, %struct.rtx_def* %call94) #6, !dbg !4957
  br label %if.end96, !dbg !4957

if.end96:                                         ; preds = %land.lhs.true90, %if.end83, %if.then93, %if.then65
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4958
  %call97 = tail call i32 @fflush(%struct._IO_FILE* %26) #6, !dbg !4959
  br label %if.end98, !dbg !4960

if.end98:                                         ; preds = %if.end96, %if.end53
  %and99 = and i32 %flags.3, 512, !dbg !4961
  %tobool100 = icmp eq i32 %and99, 0, !dbg !4961
  br i1 %tobool100, label %if.end118, label %if.then101, !dbg !4963

if.then101:                                       ; preds = %if.end98
  %27 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4964
  %cfg = getelementptr inbounds %struct.function, %struct.function* %27, i64 0, i32 1, !dbg !4964
  %28 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4964
  %x_profile_status = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %28, i64 0, i32 7, !dbg !4964
  %29 = load i32, i32* %x_profile_status, align 8, !dbg !4964
  %cmp103 = icmp eq i32 %29, 1, !dbg !4967
  br i1 %cmp103, label %if.then105, label %if.else107, !dbg !4968

if.then105:                                       ; preds = %if.then101
  tail call void @loop_optimizer_init(i32 0) #6, !dbg !4969
  tail call void @add_noreturn_fake_exit_edges() #6, !dbg !4971
  %call106 = tail call zeroext i8 @mark_irreducible_loops() #6, !dbg !4972
  tail call void @connect_infinite_loops_to_exit() #6, !dbg !4973
  tail call void @estimate_bb_frequencies() #6, !dbg !4974
  tail call void @remove_fake_exit_edges() #6, !dbg !4975
  tail call void @loop_optimizer_finalize() #6, !dbg !4976
  br label %if.end118, !dbg !4977

if.else107:                                       ; preds = %if.then101
  %cmp111 = icmp eq i32 %29, 2, !dbg !4978
  br i1 %cmp111, label %if.then113, label %if.else115, !dbg !4980

if.then113:                                       ; preds = %if.else107
  %call114 = tail call i32 @counts_to_freqs() #6, !dbg !4981
  br label %if.end118, !dbg !4981

if.else115:                                       ; preds = %if.else107
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 1255, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !4982
  br label %if.end118

if.end118:                                        ; preds = %if.end98, %if.then105, %if.else115, %if.then113
  %and119 = and i32 %flags.3, 28, !dbg !4983
  %30 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4984
  %last_verified121 = getelementptr inbounds %struct.function, %struct.function* %30, i64 0, i32 18, !dbg !4985
  store i32 %and119, i32* %last_verified121, align 4, !dbg !4986
  br label %cleanup.cont, !dbg !4987

cleanup.cont:                                     ; preds = %entry, %if.end118
  ret void, !dbg !4987
}

declare dso_local zeroext i8 @cgraph_remove_unreachable_nodes(i8 zeroext, %struct._IO_FILE*) local_unnamed_addr #2

declare dso_local void @dump_cgraph(%struct._IO_FILE*) local_unnamed_addr #2

declare dso_local i32 @fflush(%struct._IO_FILE*) local_unnamed_addr #2

declare dso_local void @df_finish_pass(i8 zeroext) local_unnamed_addr #2

declare dso_local void @statistics_fini_pass() local_unnamed_addr #2

declare dso_local zeroext i8 @cleanup_tree_cfg() local_unnamed_addr #2

declare dso_local zeroext i8 @need_ssa_update_p(%struct.function*) local_unnamed_addr #2

declare dso_local void @update_ssa(i32) local_unnamed_addr #2

declare dso_local void @execute_update_addresses_taken(i8 zeroext) local_unnamed_addr #2

declare dso_local i32 @compute_may_aliases() local_unnamed_addr #2

declare dso_local void @remove_unused_locals() local_unnamed_addr #2

declare dso_local void @dump_function_to_file(%union.tree_node*, %struct._IO_FILE*, i32) local_unnamed_addr #2

declare dso_local void @print_rtl_slim_with_bb(%struct._IO_FILE*, %struct.rtx_def*, i32) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @get_insns() local_unnamed_addr #2

declare dso_local void @print_rtl_with_bb(%struct._IO_FILE*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local void @print_rtl(%struct._IO_FILE*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local void @print_rtl_graph_with_bb(i8*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local void @loop_optimizer_init(i32) local_unnamed_addr #2

declare dso_local void @add_noreturn_fake_exit_edges() local_unnamed_addr #2

declare dso_local zeroext i8 @mark_irreducible_loops() local_unnamed_addr #2

declare dso_local void @connect_infinite_loops_to_exit() local_unnamed_addr #2

declare dso_local void @estimate_bb_frequencies() local_unnamed_addr #2

declare dso_local void @remove_fake_exit_edges() local_unnamed_addr #2

declare dso_local void @loop_optimizer_finalize() local_unnamed_addr #2

declare dso_local i32 @counts_to_freqs() local_unnamed_addr #2

declare dso_local zeroext i8 @gimple_has_body_p(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_ipa_opt_pass_heap_reserve(%struct.VEC_ipa_opt_pass_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4988 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_opt_pass_heap** %vec_, metadata !4992, metadata !DIExpression()), !dbg !4995
  call void @llvm.dbg.value(metadata i32 1, metadata !4993, metadata !DIExpression()), !dbg !4995
  %0 = load %struct.VEC_ipa_opt_pass_heap*, %struct.VEC_ipa_opt_pass_heap** %vec_, align 8, !dbg !4996
  %tobool = icmp eq %struct.VEC_ipa_opt_pass_heap* %0, null, !dbg !4996
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4996

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_ipa_opt_pass_heap, %struct.VEC_ipa_opt_pass_heap* %0, i64 0, i32 0, !dbg !4996
  br label %cond.end, !dbg !4996

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_ipa_opt_pass_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4996
  %call = tail call fastcc i32 @VEC_ipa_opt_pass_base_space(%struct.VEC_ipa_opt_pass_base* %cond, i32 1) #7, !dbg !4996
  %tobool1 = icmp eq i32 %call, 0, !dbg !4996
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !4996
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !4994, metadata !DIExpression()), !dbg !4995
  br i1 %tobool1, label %if.then, label %if.end, !dbg !4996

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_ipa_opt_pass_heap** %vec_ to i8**, !dbg !4997
  %2 = load i8*, i8** %1, align 8, !dbg !4997
  %call3 = tail call i8* @vec_heap_p_reserve(i8* %2, i32 1) #6, !dbg !4997
  store i8* %call3, i8** %1, align 8, !dbg !4997
  br label %if.end, !dbg !4997

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !4996
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ipa_opt_pass_d** @VEC_ipa_opt_pass_base_quick_push(%struct.VEC_ipa_opt_pass_base* %vec_, %struct.ipa_opt_pass_d* %obj_) unnamed_addr #0 !dbg !4999 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_opt_pass_base* %vec_, metadata !5004, metadata !DIExpression()), !dbg !5007
  call void @llvm.dbg.value(metadata %struct.ipa_opt_pass_d* %obj_, metadata !5005, metadata !DIExpression()), !dbg !5007
  %num1 = getelementptr inbounds %struct.VEC_ipa_opt_pass_base, %struct.VEC_ipa_opt_pass_base* %vec_, i64 0, i32 0, !dbg !5008
  %0 = load i32, i32* %num1, align 8, !dbg !5008
  %inc = add i32 %0, 1, !dbg !5008
  store i32 %inc, i32* %num1, align 8, !dbg !5008
  %idxprom = zext i32 %0 to i64, !dbg !5008
  %arrayidx = getelementptr inbounds %struct.VEC_ipa_opt_pass_base, %struct.VEC_ipa_opt_pass_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !5008
  call void @llvm.dbg.value(metadata %struct.ipa_opt_pass_d** %arrayidx, metadata !5006, metadata !DIExpression()), !dbg !5007
  store %struct.ipa_opt_pass_d* %obj_, %struct.ipa_opt_pass_d** %arrayidx, align 8, !dbg !5008
  ret %struct.ipa_opt_pass_d** %arrayidx, !dbg !5008
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_ipa_opt_pass_base_space(%struct.VEC_ipa_opt_pass_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !5009 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_opt_pass_base* %vec_, metadata !5013, metadata !DIExpression()), !dbg !5015
  call void @llvm.dbg.value(metadata i32 1, metadata !5014, metadata !DIExpression()), !dbg !5015
  %tobool = icmp eq %struct.VEC_ipa_opt_pass_base* %vec_, null, !dbg !5016
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !5016

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_ipa_opt_pass_base, %struct.VEC_ipa_opt_pass_base* %vec_, i64 0, i32 1, !dbg !5016
  %0 = load i32, i32* %alloc, align 4, !dbg !5016
  %num = getelementptr inbounds %struct.VEC_ipa_opt_pass_base, %struct.VEC_ipa_opt_pass_base* %vec_, i64 0, i32 0, !dbg !5016
  %1 = load i32, i32* %num, align 8, !dbg !5016
  %cmp1 = icmp ne i32 %0, %1, !dbg !5016
  %phitmp = zext i1 %cmp1 to i32, !dbg !5016
  br label %cond.end, !dbg !5016

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5016

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !5016
}

declare dso_local i8* @vec_heap_p_reserve(i8*, i32) local_unnamed_addr #2

declare dso_local %struct.lto_out_decl_state* @lto_new_out_decl_state() local_unnamed_addr #2

declare dso_local void @lto_push_out_decl_state(%struct.lto_out_decl_state*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ipa_write_summaries_2(%struct.opt_pass* %pass, %struct.cgraph_node_set_def* %set, %struct.lto_out_decl_state* %state) unnamed_addr #5 !dbg !5017 {
entry:
  call void @llvm.dbg.value(metadata %struct.opt_pass* %pass, metadata !5021, metadata !DIExpression()), !dbg !5026
  call void @llvm.dbg.value(metadata %struct.cgraph_node_set_def* %set, metadata !5022, metadata !DIExpression()), !dbg !5026
  call void @llvm.dbg.value(metadata %struct.lto_out_decl_state* %state, metadata !5023, metadata !DIExpression()), !dbg !5026
  br label %while.cond, !dbg !5027

while.cond:                                       ; preds = %if.end48, %entry
  %pass.addr.0 = phi %struct.opt_pass* [ %pass, %entry ], [ %14, %if.end48 ]
  call void @llvm.dbg.value(metadata %struct.opt_pass* %pass.addr.0, metadata !5021, metadata !DIExpression()), !dbg !5026
  %tobool = icmp eq %struct.opt_pass* %pass.addr.0, null, !dbg !5027
  br i1 %tobool, label %while.end, label %while.body, !dbg !5027

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata %struct.opt_pass* %pass.addr.0, metadata !5024, metadata !DIExpression()), !dbg !5028
  %0 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !5029
  %tobool1 = icmp eq %union.tree_node* %0, null, !dbg !5029
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !5029

cond.true:                                        ; preds = %while.body
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 1641, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !5029
  br label %cond.end, !dbg !5029

cond.end:                                         ; preds = %while.body, %cond.true
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !5030
  %tobool2 = icmp eq %struct.function* %1, null, !dbg !5030
  br i1 %tobool2, label %cond.end5, label %cond.true3, !dbg !5030

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 1642, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !5030
  br label %cond.end5, !dbg !5030

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %type = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass.addr.0, i64 0, i32 0, !dbg !5031
  %2 = load i32, i32* %type, align 8, !dbg !5031
  %cmp = icmp eq i32 %2, 2, !dbg !5031
  br i1 %cmp, label %cond.end11, label %lor.lhs.false, !dbg !5031

lor.lhs.false:                                    ; preds = %cond.end5
  %cmp8 = icmp eq i32 %2, 3, !dbg !5031
  br i1 %cmp8, label %cond.end11, label %cond.true9, !dbg !5031

cond.true9:                                       ; preds = %lor.lhs.false
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 1643, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !5031
  %.pre = load i32, i32* %type, align 8, !dbg !5032
  br label %cond.end11, !dbg !5031

cond.end11:                                       ; preds = %cond.end5, %lor.lhs.false, %cond.true9
  %3 = phi i32 [ 2, %cond.end5 ], [ 3, %lor.lhs.false ], [ %.pre, %cond.true9 ], !dbg !5032
  %cmp14 = icmp eq i32 %3, 3, !dbg !5034
  br i1 %cmp14, label %land.lhs.true, label %if.end39, !dbg !5035

land.lhs.true:                                    ; preds = %cond.end11
  %write_summary = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass.addr.0, i64 1, i32 1, !dbg !5036
  %4 = bitcast i8** %write_summary to void (%struct.cgraph_node_set_def*)**, !dbg !5036
  %5 = load void (%struct.cgraph_node_set_def*)*, void (%struct.cgraph_node_set_def*)** %4, align 8, !dbg !5036
  %tobool15 = icmp eq void (%struct.cgraph_node_set_def*)* %5, null, !dbg !5037
  br i1 %tobool15, label %if.end39, label %land.lhs.true16, !dbg !5038

land.lhs.true16:                                  ; preds = %land.lhs.true
  %gate = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass.addr.0, i64 0, i32 2, !dbg !5039
  %6 = load i8 ()*, i8 ()** %gate, align 8, !dbg !5039
  %tobool17 = icmp eq i8 ()* %6, null, !dbg !5040
  br i1 %tobool17, label %if.then, label %lor.lhs.false18, !dbg !5041

lor.lhs.false18:                                  ; preds = %land.lhs.true16
  %call = tail call zeroext i8 %6() #6, !dbg !5042
  %tobool20 = icmp eq i8 %call, 0, !dbg !5042
  br i1 %tobool20, label %if.end39, label %if.then, !dbg !5043

if.then:                                          ; preds = %lor.lhs.false18, %land.lhs.true16
  %tv_id = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass.addr.0, i64 0, i32 7, !dbg !5044
  %7 = load i32, i32* %tv_id, align 4, !dbg !5044
  %tobool21 = icmp ne i32 %7, 0, !dbg !5047
  %8 = load i8, i8* @timevar_enable, align 1, !dbg !5048
  %tobool23 = icmp ne i8 %8, 0, !dbg !5048
  %or.cond = and i1 %tobool21, %tobool23, !dbg !5051
  br i1 %or.cond, label %if.then24, label %if.end26, !dbg !5051

if.then24:                                        ; preds = %if.then
  tail call void @timevar_push_1(i32 %7) #6, !dbg !5048
  br label %if.end26, !dbg !5048

if.end26:                                         ; preds = %if.then24, %if.then
  %9 = load void (%struct.cgraph_node_set_def*)*, void (%struct.cgraph_node_set_def*)** %4, align 8, !dbg !5052
  tail call void %9(%struct.cgraph_node_set_def* %set) #6, !dbg !5053
  %10 = load i32, i32* %tv_id, align 4, !dbg !5054
  %tobool29 = icmp ne i32 %10, 0, !dbg !5056
  %11 = load i8, i8* @timevar_enable, align 1, !dbg !5057
  %tobool32 = icmp ne i8 %11, 0, !dbg !5057
  %or.cond1 = and i1 %tobool29, %tobool32, !dbg !5060
  br i1 %or.cond1, label %if.then33, label %if.end39, !dbg !5060

if.then33:                                        ; preds = %if.end26
  tail call void @timevar_pop_1(i32 %10) #6, !dbg !5057
  br label %if.end39, !dbg !5057

if.end39:                                         ; preds = %lor.lhs.false18, %land.lhs.true, %if.end26, %if.then33, %cond.end11
  %sub = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass.addr.0, i64 0, i32 4, !dbg !5061
  %12 = load %struct.opt_pass*, %struct.opt_pass** %sub, align 8, !dbg !5061
  %tobool40 = icmp eq %struct.opt_pass* %12, null, !dbg !5063
  br i1 %tobool40, label %if.end48, label %land.lhs.true41, !dbg !5064

land.lhs.true41:                                  ; preds = %if.end39
  %type43 = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %12, i64 0, i32 0, !dbg !5065
  %13 = load i32, i32* %type43, align 8, !dbg !5065
  %cmp44 = icmp eq i32 %13, 0, !dbg !5066
  br i1 %cmp44, label %if.end48, label %if.then46, !dbg !5067

if.then46:                                        ; preds = %land.lhs.true41
  tail call fastcc void @ipa_write_summaries_2(%struct.opt_pass* nonnull %12, %struct.cgraph_node_set_def* %set, %struct.lto_out_decl_state* %state) #7, !dbg !5068
  br label %if.end48, !dbg !5068

if.end48:                                         ; preds = %land.lhs.true41, %if.end39, %if.then46
  %next = getelementptr inbounds %struct.opt_pass, %struct.opt_pass* %pass.addr.0, i64 0, i32 5, !dbg !5069
  %14 = load %struct.opt_pass*, %struct.opt_pass** %next, align 8, !dbg !5069
  call void @llvm.dbg.value(metadata %struct.opt_pass* %14, metadata !5021, metadata !DIExpression()), !dbg !5026
  br label %while.cond, !dbg !5027, !llvm.loop !5070

while.end:                                        ; preds = %while.cond
  ret void, !dbg !5072
}

declare dso_local %struct.lto_out_decl_state* @lto_get_out_decl_state() local_unnamed_addr #2

declare dso_local %struct.lto_out_decl_state* @lto_pop_out_decl_state() local_unnamed_addr #2

declare dso_local void @lto_delete_out_decl_state(%struct.lto_out_decl_state*) local_unnamed_addr #2

declare dso_local void @gt_ggc_mx_cgraph_node(i8*) local_unnamed_addr #2

declare dso_local i32 @ggc_set_mark(i8*) local_unnamed_addr #2

declare dso_local void @gt_pch_nx_cgraph_node(i8*) local_unnamed_addr #2

declare dso_local i32 @gt_pch_note_object(i8*, i8*, void (i8*, i8*, void (i8*, i8*)*, i8*)*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @gt_pch_pa_order(i8* %this_obj, i8* %x_p, void (i8*, i8*)* %op, i8* %cookie) #5 !dbg !5073 {
entry:
  call void @llvm.dbg.value(metadata i8* %this_obj, metadata !5078, metadata !DIExpression()), !dbg !5085
  call void @llvm.dbg.value(metadata i8* %x_p, metadata !5079, metadata !DIExpression()), !dbg !5085
  call void @llvm.dbg.value(metadata void (i8*, i8*)* %op, metadata !5080, metadata !DIExpression()), !dbg !5085
  call void @llvm.dbg.value(metadata i8* %cookie, metadata !5081, metadata !DIExpression()), !dbg !5085
  %0 = load %struct.cgraph_node**, %struct.cgraph_node*** @order, align 8, !dbg !5086
  %cmp = icmp eq %struct.cgraph_node** %0, null, !dbg !5087
  br i1 %cmp, label %if.end10, label %for.cond.preheader, !dbg !5088

for.cond.preheader:                               ; preds = %entry
  br label %for.cond, !dbg !5089

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %i0.0 = phi i64 [ %inc, %for.inc ], [ 0, %for.cond.preheader ], !dbg !5091
  call void @llvm.dbg.value(metadata i64 %i0.0, metadata !5082, metadata !DIExpression()), !dbg !5092
  %1 = load i32, i32* @nnodes, align 4, !dbg !5093
  %conv = sext i32 %1 to i64, !dbg !5095
  %cmp1 = icmp eq i64 %i0.0, %conv, !dbg !5096
  br i1 %cmp1, label %for.end, label %for.body, !dbg !5089

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** bitcast (%struct.cgraph_node*** @order to i8**), align 8, !dbg !5097
  %cmp3 = icmp eq i8* %2, %this_obj, !dbg !5100
  br i1 %cmp3, label %if.then5, label %for.inc, !dbg !5101

if.then5:                                         ; preds = %for.body
  %3 = bitcast i8* %2 to %struct.cgraph_node**, !dbg !5101
  %arrayidx = getelementptr inbounds %struct.cgraph_node*, %struct.cgraph_node** %3, i64 %i0.0, !dbg !5102
  %4 = bitcast %struct.cgraph_node** %arrayidx to i8*, !dbg !5103
  tail call void %op(i8* %4, i8* %cookie) #6, !dbg !5104
  br label %for.inc, !dbg !5104

for.inc:                                          ; preds = %for.body, %if.then5
  %inc = add i64 %i0.0, 1, !dbg !5105
  call void @llvm.dbg.value(metadata i64 %inc, metadata !5082, metadata !DIExpression()), !dbg !5092
  br label %for.cond, !dbg !5106, !llvm.loop !5107

for.end:                                          ; preds = %for.cond
  %cmp6 = icmp eq i8* %this_obj, bitcast (%struct.cgraph_node*** @order to i8*), !dbg !5109
  br i1 %cmp6, label %if.then8, label %if.end10, !dbg !5111

if.then8:                                         ; preds = %for.end
  tail call void %op(i8* bitcast (%struct.cgraph_node*** @order to i8*), i8* %cookie) #6, !dbg !5112
  br label %if.end10, !dbg !5112

if.end10:                                         ; preds = %entry, %for.end, %if.then8
  ret void, !dbg !5113
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
!llvm.module.flags = !{!2442, !2443, !2444}
!llvm.ident = !{!2445}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "current_pass", scope: !2, file: !3, line: 110, type: !2189, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !622, globals: !2384, nameTableKind: None)
!3 = !DIFile(filename: "passes.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !329, !338, !342, !349, !355, !360, !365, !383, !390, !397, !404, !580, !585, !599}
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
!329 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lpt_dec", file: !330, line: 31, baseType: !7, size: 32, elements: !331)
!330 = !DIFile(filename: "./cfgloop.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!331 = !{!332, !333, !334, !335, !336, !337}
!332 = !DIEnumerator(name: "LPT_NONE", value: 0, isUnsigned: true)
!333 = !DIEnumerator(name: "LPT_PEEL_COMPLETELY", value: 1, isUnsigned: true)
!334 = !DIEnumerator(name: "LPT_PEEL_SIMPLE", value: 2, isUnsigned: true)
!335 = !DIEnumerator(name: "LPT_UNROLL_CONSTANT", value: 3, isUnsigned: true)
!336 = !DIEnumerator(name: "LPT_UNROLL_RUNTIME", value: 4, isUnsigned: true)
!337 = !DIEnumerator(name: "LPT_UNROLL_STUPID", value: 5, isUnsigned: true)
!338 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "loop_estimation", file: !330, line: 91, baseType: !7, size: 32, elements: !339)
!339 = !{!340, !341}
!340 = !DIEnumerator(name: "EST_NOT_COMPUTED", value: 0, isUnsigned: true)
!341 = !DIEnumerator(name: "EST_AVAILABLE", value: 1, isUnsigned: true)
!342 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "eh_region_type", file: !343, line: 30, baseType: !7, size: 32, elements: !344)
!343 = !DIFile(filename: "./except.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!344 = !{!345, !346, !347, !348}
!345 = !DIEnumerator(name: "ERT_CLEANUP", value: 0, isUnsigned: true)
!346 = !DIEnumerator(name: "ERT_TRY", value: 1, isUnsigned: true)
!347 = !DIEnumerator(name: "ERT_ALLOWED_EXCEPTIONS", value: 2, isUnsigned: true)
!348 = !DIEnumerator(name: "ERT_MUST_NOT_THROW", value: 3, isUnsigned: true)
!349 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !350, line: 363, baseType: !7, size: 32, elements: !351)
!350 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!351 = !{!352, !353, !354}
!352 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!353 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!354 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!355 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !350, line: 355, baseType: !7, size: 32, elements: !356)
!356 = !{!357, !358, !359}
!357 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!358 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!359 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!360 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !361, line: 474, baseType: !7, size: 32, elements: !362)
!361 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!362 = !{!363, !364}
!363 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!364 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!365 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !135, line: 280, baseType: !7, size: 32, elements: !366)
!366 = !{!367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382}
!367 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!368 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!369 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!370 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!371 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!372 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!373 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!374 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!375 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!376 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!377 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!378 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!379 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!380 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!381 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!382 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!383 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !135, line: 1817, baseType: !7, size: 32, elements: !384)
!384 = !{!385, !386, !387, !388, !389}
!385 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!386 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!387 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!388 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!389 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!390 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !135, line: 1805, baseType: !7, size: 32, elements: !391)
!391 = !{!392, !393, !394, !395, !396}
!392 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!393 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!394 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!395 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!396 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!397 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "opt_pass_type", file: !398, line: 104, baseType: !7, size: 32, elements: !399)
!398 = !DIFile(filename: "./tree-pass.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!399 = !{!400, !401, !402, !403}
!400 = !DIEnumerator(name: "GIMPLE_PASS", value: 0, isUnsigned: true)
!401 = !DIEnumerator(name: "RTL_PASS", value: 1, isUnsigned: true)
!402 = !DIEnumerator(name: "SIMPLE_IPA_PASS", value: 2, isUnsigned: true)
!403 = !DIEnumerator(name: "IPA_PASS", value: 3, isUnsigned: true)
!404 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !405, line: 74, baseType: !7, size: 32, elements: !406)
!405 = !DIFile(filename: "./timevar.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!406 = !{!407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579}
!407 = !DIEnumerator(name: "TV_NONE", value: 0, isUnsigned: true)
!408 = !DIEnumerator(name: "TV_TOTAL", value: 1, isUnsigned: true)
!409 = !DIEnumerator(name: "TV_GC", value: 2, isUnsigned: true)
!410 = !DIEnumerator(name: "TV_DUMP", value: 3, isUnsigned: true)
!411 = !DIEnumerator(name: "TV_CGRAPH", value: 4, isUnsigned: true)
!412 = !DIEnumerator(name: "TV_CGRAPHOPT", value: 5, isUnsigned: true)
!413 = !DIEnumerator(name: "TV_IPA_CONSTANT_PROP", value: 6, isUnsigned: true)
!414 = !DIEnumerator(name: "TV_IPA_LTO_GIMPLE_IO", value: 7, isUnsigned: true)
!415 = !DIEnumerator(name: "TV_IPA_LTO_DECL_IO", value: 8, isUnsigned: true)
!416 = !DIEnumerator(name: "TV_IPA_LTO_CGRAPH_IO", value: 9, isUnsigned: true)
!417 = !DIEnumerator(name: "TV_LTO", value: 10, isUnsigned: true)
!418 = !DIEnumerator(name: "TV_WHOPR_WPA", value: 11, isUnsigned: true)
!419 = !DIEnumerator(name: "TV_WHOPR_WPA_IO", value: 12, isUnsigned: true)
!420 = !DIEnumerator(name: "TV_WHOPR_LTRANS", value: 13, isUnsigned: true)
!421 = !DIEnumerator(name: "TV_WHOPR_WPA_FIXUP", value: 14, isUnsigned: true)
!422 = !DIEnumerator(name: "TV_WHOPR_WPA_LTRANS_EXEC", value: 15, isUnsigned: true)
!423 = !DIEnumerator(name: "TV_IPA_REFERENCE", value: 16, isUnsigned: true)
!424 = !DIEnumerator(name: "TV_IPA_PURE_CONST", value: 17, isUnsigned: true)
!425 = !DIEnumerator(name: "TV_IPA_TYPE_ESCAPE", value: 18, isUnsigned: true)
!426 = !DIEnumerator(name: "TV_IPA_PTA", value: 19, isUnsigned: true)
!427 = !DIEnumerator(name: "TV_IPA_SRA", value: 20, isUnsigned: true)
!428 = !DIEnumerator(name: "TV_IPA_FREE_LANG_DATA", value: 21, isUnsigned: true)
!429 = !DIEnumerator(name: "TV_CFG", value: 22, isUnsigned: true)
!430 = !DIEnumerator(name: "TV_CLEANUP_CFG", value: 23, isUnsigned: true)
!431 = !DIEnumerator(name: "TV_CFG_VERIFY", value: 24, isUnsigned: true)
!432 = !DIEnumerator(name: "TV_DELETE_TRIVIALLY_DEAD", value: 25, isUnsigned: true)
!433 = !DIEnumerator(name: "TV_LIFE", value: 26, isUnsigned: true)
!434 = !DIEnumerator(name: "TV_LIFE_UPDATE", value: 27, isUnsigned: true)
!435 = !DIEnumerator(name: "TV_DF_SCAN", value: 28, isUnsigned: true)
!436 = !DIEnumerator(name: "TV_DF_MD", value: 29, isUnsigned: true)
!437 = !DIEnumerator(name: "TV_DF_RD", value: 30, isUnsigned: true)
!438 = !DIEnumerator(name: "TV_DF_LR", value: 31, isUnsigned: true)
!439 = !DIEnumerator(name: "TV_DF_LIVE", value: 32, isUnsigned: true)
!440 = !DIEnumerator(name: "TV_DF_UREC", value: 33, isUnsigned: true)
!441 = !DIEnumerator(name: "TV_DF_CHAIN", value: 34, isUnsigned: true)
!442 = !DIEnumerator(name: "TV_DF_BYTE_LR", value: 35, isUnsigned: true)
!443 = !DIEnumerator(name: "TV_DF_NOTE", value: 36, isUnsigned: true)
!444 = !DIEnumerator(name: "TV_REG_STATS", value: 37, isUnsigned: true)
!445 = !DIEnumerator(name: "TV_ALIAS_ANALYSIS", value: 38, isUnsigned: true)
!446 = !DIEnumerator(name: "TV_ALIAS_STMT_WALK", value: 39, isUnsigned: true)
!447 = !DIEnumerator(name: "TV_REG_SCAN", value: 40, isUnsigned: true)
!448 = !DIEnumerator(name: "TV_REBUILD_JUMP", value: 41, isUnsigned: true)
!449 = !DIEnumerator(name: "TV_CPP", value: 42, isUnsigned: true)
!450 = !DIEnumerator(name: "TV_LEX", value: 43, isUnsigned: true)
!451 = !DIEnumerator(name: "TV_PARSE", value: 44, isUnsigned: true)
!452 = !DIEnumerator(name: "TV_NAME_LOOKUP", value: 45, isUnsigned: true)
!453 = !DIEnumerator(name: "TV_INLINE_HEURISTICS", value: 46, isUnsigned: true)
!454 = !DIEnumerator(name: "TV_INTEGRATION", value: 47, isUnsigned: true)
!455 = !DIEnumerator(name: "TV_TREE_GIMPLIFY", value: 48, isUnsigned: true)
!456 = !DIEnumerator(name: "TV_TREE_EH", value: 49, isUnsigned: true)
!457 = !DIEnumerator(name: "TV_TREE_CFG", value: 50, isUnsigned: true)
!458 = !DIEnumerator(name: "TV_TREE_CLEANUP_CFG", value: 51, isUnsigned: true)
!459 = !DIEnumerator(name: "TV_TREE_VRP", value: 52, isUnsigned: true)
!460 = !DIEnumerator(name: "TV_TREE_COPY_PROP", value: 53, isUnsigned: true)
!461 = !DIEnumerator(name: "TV_TREE_STORE_COPY_PROP", value: 54, isUnsigned: true)
!462 = !DIEnumerator(name: "TV_FIND_REFERENCED_VARS", value: 55, isUnsigned: true)
!463 = !DIEnumerator(name: "TV_TREE_PTA", value: 56, isUnsigned: true)
!464 = !DIEnumerator(name: "TV_TREE_INSERT_PHI_NODES", value: 57, isUnsigned: true)
!465 = !DIEnumerator(name: "TV_TREE_SSA_REWRITE_BLOCKS", value: 58, isUnsigned: true)
!466 = !DIEnumerator(name: "TV_TREE_SSA_OTHER", value: 59, isUnsigned: true)
!467 = !DIEnumerator(name: "TV_TREE_SSA_INCREMENTAL", value: 60, isUnsigned: true)
!468 = !DIEnumerator(name: "TV_TREE_OPS", value: 61, isUnsigned: true)
!469 = !DIEnumerator(name: "TV_TREE_SSA_DOMINATOR_OPTS", value: 62, isUnsigned: true)
!470 = !DIEnumerator(name: "TV_TREE_SRA", value: 63, isUnsigned: true)
!471 = !DIEnumerator(name: "TV_TREE_STORE_CCP", value: 64, isUnsigned: true)
!472 = !DIEnumerator(name: "TV_TREE_CCP", value: 65, isUnsigned: true)
!473 = !DIEnumerator(name: "TV_TREE_PHI_CPROP", value: 66, isUnsigned: true)
!474 = !DIEnumerator(name: "TV_TREE_SPLIT_EDGES", value: 67, isUnsigned: true)
!475 = !DIEnumerator(name: "TV_TREE_REASSOC", value: 68, isUnsigned: true)
!476 = !DIEnumerator(name: "TV_TREE_PRE", value: 69, isUnsigned: true)
!477 = !DIEnumerator(name: "TV_TREE_REDPHI", value: 70, isUnsigned: true)
!478 = !DIEnumerator(name: "TV_TREE_FRE", value: 71, isUnsigned: true)
!479 = !DIEnumerator(name: "TV_TREE_SINK", value: 72, isUnsigned: true)
!480 = !DIEnumerator(name: "TV_TREE_PHIOPT", value: 73, isUnsigned: true)
!481 = !DIEnumerator(name: "TV_TREE_FORWPROP", value: 74, isUnsigned: true)
!482 = !DIEnumerator(name: "TV_TREE_PHIPROP", value: 75, isUnsigned: true)
!483 = !DIEnumerator(name: "TV_TREE_DCE", value: 76, isUnsigned: true)
!484 = !DIEnumerator(name: "TV_TREE_CD_DCE", value: 77, isUnsigned: true)
!485 = !DIEnumerator(name: "TV_TREE_CALL_CDCE", value: 78, isUnsigned: true)
!486 = !DIEnumerator(name: "TV_TREE_DSE", value: 79, isUnsigned: true)
!487 = !DIEnumerator(name: "TV_TREE_MERGE_PHI", value: 80, isUnsigned: true)
!488 = !DIEnumerator(name: "TV_TREE_LOOP", value: 81, isUnsigned: true)
!489 = !DIEnumerator(name: "TV_TREE_LOOP_BOUNDS", value: 82, isUnsigned: true)
!490 = !DIEnumerator(name: "TV_LIM", value: 83, isUnsigned: true)
!491 = !DIEnumerator(name: "TV_TREE_LOOP_IVCANON", value: 84, isUnsigned: true)
!492 = !DIEnumerator(name: "TV_SCEV_CONST", value: 85, isUnsigned: true)
!493 = !DIEnumerator(name: "TV_TREE_LOOP_UNSWITCH", value: 86, isUnsigned: true)
!494 = !DIEnumerator(name: "TV_COMPLETE_UNROLL", value: 87, isUnsigned: true)
!495 = !DIEnumerator(name: "TV_TREE_PARALLELIZE_LOOPS", value: 88, isUnsigned: true)
!496 = !DIEnumerator(name: "TV_TREE_VECTORIZATION", value: 89, isUnsigned: true)
!497 = !DIEnumerator(name: "TV_TREE_SLP_VECTORIZATION", value: 90, isUnsigned: true)
!498 = !DIEnumerator(name: "TV_GRAPHITE_TRANSFORMS", value: 91, isUnsigned: true)
!499 = !DIEnumerator(name: "TV_GRAPHITE_DATA_DEPS", value: 92, isUnsigned: true)
!500 = !DIEnumerator(name: "TV_GRAPHITE_CODE_GEN", value: 93, isUnsigned: true)
!501 = !DIEnumerator(name: "TV_TREE_LINEAR_TRANSFORM", value: 94, isUnsigned: true)
!502 = !DIEnumerator(name: "TV_TREE_LOOP_DISTRIBUTION", value: 95, isUnsigned: true)
!503 = !DIEnumerator(name: "TV_CHECK_DATA_DEPS", value: 96, isUnsigned: true)
!504 = !DIEnumerator(name: "TV_TREE_PREFETCH", value: 97, isUnsigned: true)
!505 = !DIEnumerator(name: "TV_TREE_LOOP_IVOPTS", value: 98, isUnsigned: true)
!506 = !DIEnumerator(name: "TV_PREDCOM", value: 99, isUnsigned: true)
!507 = !DIEnumerator(name: "TV_TREE_LOOP_INIT", value: 100, isUnsigned: true)
!508 = !DIEnumerator(name: "TV_TREE_LOOP_FINI", value: 101, isUnsigned: true)
!509 = !DIEnumerator(name: "TV_TREE_CH", value: 102, isUnsigned: true)
!510 = !DIEnumerator(name: "TV_TREE_SSA_UNCPROP", value: 103, isUnsigned: true)
!511 = !DIEnumerator(name: "TV_TREE_SSA_TO_NORMAL", value: 104, isUnsigned: true)
!512 = !DIEnumerator(name: "TV_TREE_NRV", value: 105, isUnsigned: true)
!513 = !DIEnumerator(name: "TV_TREE_COPY_RENAME", value: 106, isUnsigned: true)
!514 = !DIEnumerator(name: "TV_TREE_SSA_VERIFY", value: 107, isUnsigned: true)
!515 = !DIEnumerator(name: "TV_TREE_STMT_VERIFY", value: 108, isUnsigned: true)
!516 = !DIEnumerator(name: "TV_TREE_SWITCH_CONVERSION", value: 109, isUnsigned: true)
!517 = !DIEnumerator(name: "TV_CGRAPH_VERIFY", value: 110, isUnsigned: true)
!518 = !DIEnumerator(name: "TV_DOM_FRONTIERS", value: 111, isUnsigned: true)
!519 = !DIEnumerator(name: "TV_DOMINANCE", value: 112, isUnsigned: true)
!520 = !DIEnumerator(name: "TV_CONTROL_DEPENDENCES", value: 113, isUnsigned: true)
!521 = !DIEnumerator(name: "TV_OVERLOAD", value: 114, isUnsigned: true)
!522 = !DIEnumerator(name: "TV_TEMPLATE_INSTANTIATION", value: 115, isUnsigned: true)
!523 = !DIEnumerator(name: "TV_EXPAND", value: 116, isUnsigned: true)
!524 = !DIEnumerator(name: "TV_VARCONST", value: 117, isUnsigned: true)
!525 = !DIEnumerator(name: "TV_LOWER_SUBREG", value: 118, isUnsigned: true)
!526 = !DIEnumerator(name: "TV_JUMP", value: 119, isUnsigned: true)
!527 = !DIEnumerator(name: "TV_FWPROP", value: 120, isUnsigned: true)
!528 = !DIEnumerator(name: "TV_CSE", value: 121, isUnsigned: true)
!529 = !DIEnumerator(name: "TV_DCE", value: 122, isUnsigned: true)
!530 = !DIEnumerator(name: "TV_DSE1", value: 123, isUnsigned: true)
!531 = !DIEnumerator(name: "TV_DSE2", value: 124, isUnsigned: true)
!532 = !DIEnumerator(name: "TV_LOOP", value: 125, isUnsigned: true)
!533 = !DIEnumerator(name: "TV_LOOP_MOVE_INVARIANTS", value: 126, isUnsigned: true)
!534 = !DIEnumerator(name: "TV_LOOP_UNSWITCH", value: 127, isUnsigned: true)
!535 = !DIEnumerator(name: "TV_LOOP_UNROLL", value: 128, isUnsigned: true)
!536 = !DIEnumerator(name: "TV_LOOP_DOLOOP", value: 129, isUnsigned: true)
!537 = !DIEnumerator(name: "TV_CPROP", value: 130, isUnsigned: true)
!538 = !DIEnumerator(name: "TV_PRE", value: 131, isUnsigned: true)
!539 = !DIEnumerator(name: "TV_HOIST", value: 132, isUnsigned: true)
!540 = !DIEnumerator(name: "TV_LSM", value: 133, isUnsigned: true)
!541 = !DIEnumerator(name: "TV_TRACER", value: 134, isUnsigned: true)
!542 = !DIEnumerator(name: "TV_WEB", value: 135, isUnsigned: true)
!543 = !DIEnumerator(name: "TV_AUTO_INC_DEC", value: 136, isUnsigned: true)
!544 = !DIEnumerator(name: "TV_CSE2", value: 137, isUnsigned: true)
!545 = !DIEnumerator(name: "TV_BRANCH_PROB", value: 138, isUnsigned: true)
!546 = !DIEnumerator(name: "TV_VPT", value: 139, isUnsigned: true)
!547 = !DIEnumerator(name: "TV_COMBINE", value: 140, isUnsigned: true)
!548 = !DIEnumerator(name: "TV_IFCVT", value: 141, isUnsigned: true)
!549 = !DIEnumerator(name: "TV_REGMOVE", value: 142, isUnsigned: true)
!550 = !DIEnumerator(name: "TV_MODE_SWITCH", value: 143, isUnsigned: true)
!551 = !DIEnumerator(name: "TV_SMS", value: 144, isUnsigned: true)
!552 = !DIEnumerator(name: "TV_SCHED", value: 145, isUnsigned: true)
!553 = !DIEnumerator(name: "TV_LOCAL_ALLOC", value: 146, isUnsigned: true)
!554 = !DIEnumerator(name: "TV_GLOBAL_ALLOC", value: 147, isUnsigned: true)
!555 = !DIEnumerator(name: "TV_IRA", value: 148, isUnsigned: true)
!556 = !DIEnumerator(name: "TV_RELOAD", value: 149, isUnsigned: true)
!557 = !DIEnumerator(name: "TV_RELOAD_CSE_REGS", value: 150, isUnsigned: true)
!558 = !DIEnumerator(name: "TV_SEQABSTR", value: 151, isUnsigned: true)
!559 = !DIEnumerator(name: "TV_GCSE_AFTER_RELOAD", value: 152, isUnsigned: true)
!560 = !DIEnumerator(name: "TV_THREAD_PROLOGUE_AND_EPILOGUE", value: 153, isUnsigned: true)
!561 = !DIEnumerator(name: "TV_IFCVT2", value: 154, isUnsigned: true)
!562 = !DIEnumerator(name: "TV_COMBINE_STACK_ADJUST", value: 155, isUnsigned: true)
!563 = !DIEnumerator(name: "TV_PEEPHOLE2", value: 156, isUnsigned: true)
!564 = !DIEnumerator(name: "TV_RENAME_REGISTERS", value: 157, isUnsigned: true)
!565 = !DIEnumerator(name: "TV_CPROP_REGISTERS", value: 158, isUnsigned: true)
!566 = !DIEnumerator(name: "TV_SCHED2", value: 159, isUnsigned: true)
!567 = !DIEnumerator(name: "TV_MACH_DEP", value: 160, isUnsigned: true)
!568 = !DIEnumerator(name: "TV_DBR_SCHED", value: 161, isUnsigned: true)
!569 = !DIEnumerator(name: "TV_REORDER_BLOCKS", value: 162, isUnsigned: true)
!570 = !DIEnumerator(name: "TV_SHORTEN_BRANCH", value: 163, isUnsigned: true)
!571 = !DIEnumerator(name: "TV_REG_STACK", value: 164, isUnsigned: true)
!572 = !DIEnumerator(name: "TV_FINAL", value: 165, isUnsigned: true)
!573 = !DIEnumerator(name: "TV_SYMOUT", value: 166, isUnsigned: true)
!574 = !DIEnumerator(name: "TV_VAR_TRACKING", value: 167, isUnsigned: true)
!575 = !DIEnumerator(name: "TV_TREE_IFCOMBINE", value: 168, isUnsigned: true)
!576 = !DIEnumerator(name: "TV_PLUGIN_INIT", value: 169, isUnsigned: true)
!577 = !DIEnumerator(name: "TV_PLUGIN_RUN", value: 170, isUnsigned: true)
!578 = !DIEnumerator(name: "TV_REST_OF_COMPILATION", value: 171, isUnsigned: true)
!579 = !DIEnumerator(name: "TIMEVAR_LAST", value: 172, isUnsigned: true)
!580 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pass_positioning_ops", file: !398, line: 319, baseType: !7, size: 32, elements: !581)
!581 = !{!582, !583, !584}
!582 = !DIEnumerator(name: "PASS_POS_INSERT_AFTER", value: 0, isUnsigned: true)
!583 = !DIEnumerator(name: "PASS_POS_INSERT_BEFORE", value: 1, isUnsigned: true)
!584 = !DIEnumerator(name: "PASS_POS_REPLACE", value: 2, isUnsigned: true)
!585 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_dump_index", file: !398, line: 30, baseType: !7, size: 32, elements: !586)
!586 = !{!587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598}
!587 = !DIEnumerator(name: "TDI_none", value: 0, isUnsigned: true)
!588 = !DIEnumerator(name: "TDI_cgraph", value: 1, isUnsigned: true)
!589 = !DIEnumerator(name: "TDI_tu", value: 2, isUnsigned: true)
!590 = !DIEnumerator(name: "TDI_class", value: 3, isUnsigned: true)
!591 = !DIEnumerator(name: "TDI_original", value: 4, isUnsigned: true)
!592 = !DIEnumerator(name: "TDI_generic", value: 5, isUnsigned: true)
!593 = !DIEnumerator(name: "TDI_nested", value: 6, isUnsigned: true)
!594 = !DIEnumerator(name: "TDI_vcg", value: 7, isUnsigned: true)
!595 = !DIEnumerator(name: "TDI_tree_all", value: 8, isUnsigned: true)
!596 = !DIEnumerator(name: "TDI_rtl_all", value: 9, isUnsigned: true)
!597 = !DIEnumerator(name: "TDI_ipa_all", value: 10, isUnsigned: true)
!598 = !DIEnumerator(name: "TDI_end", value: 11, isUnsigned: true)
!599 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !600, line: 309, baseType: !7, size: 32, elements: !601)
!600 = !DIFile(filename: "./cgraph.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!601 = !{!602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621}
!602 = !DIEnumerator(name: "CIF_OK", value: 0, isUnsigned: true)
!603 = !DIEnumerator(name: "CIF_UNSPECIFIED", value: 1, isUnsigned: true)
!604 = !DIEnumerator(name: "CIF_FUNCTION_NOT_CONSIDERED", value: 2, isUnsigned: true)
!605 = !DIEnumerator(name: "CIF_BODY_NOT_AVAILABLE", value: 3, isUnsigned: true)
!606 = !DIEnumerator(name: "CIF_REDEFINED_EXTERN_INLINE", value: 4, isUnsigned: true)
!607 = !DIEnumerator(name: "CIF_FUNCTION_NOT_INLINABLE", value: 5, isUnsigned: true)
!608 = !DIEnumerator(name: "CIF_FUNCTION_NOT_INLINE_CANDIDATE", value: 6, isUnsigned: true)
!609 = !DIEnumerator(name: "CIF_LARGE_FUNCTION_GROWTH_LIMIT", value: 7, isUnsigned: true)
!610 = !DIEnumerator(name: "CIF_LARGE_STACK_FRAME_GROWTH_LIMIT", value: 8, isUnsigned: true)
!611 = !DIEnumerator(name: "CIF_MAX_INLINE_INSNS_SINGLE_LIMIT", value: 9, isUnsigned: true)
!612 = !DIEnumerator(name: "CIF_MAX_INLINE_INSNS_AUTO_LIMIT", value: 10, isUnsigned: true)
!613 = !DIEnumerator(name: "CIF_INLINE_UNIT_GROWTH_LIMIT", value: 11, isUnsigned: true)
!614 = !DIEnumerator(name: "CIF_RECURSIVE_INLINING", value: 12, isUnsigned: true)
!615 = !DIEnumerator(name: "CIF_UNLIKELY_CALL", value: 13, isUnsigned: true)
!616 = !DIEnumerator(name: "CIF_NOT_DECLARED_INLINED", value: 14, isUnsigned: true)
!617 = !DIEnumerator(name: "CIF_OPTIMIZING_FOR_SIZE", value: 15, isUnsigned: true)
!618 = !DIEnumerator(name: "CIF_TARGET_OPTION_MISMATCH", value: 16, isUnsigned: true)
!619 = !DIEnumerator(name: "CIF_MISMATCHED_ARGUMENTS", value: 17, isUnsigned: true)
!620 = !DIEnumerator(name: "CIF_ORIGINALLY_INDIRECT_CALL", value: 18, isUnsigned: true)
!621 = !DIEnumerator(name: "CIF_N_REASONS", value: 19, isUnsigned: true)
!622 = !{!623, !624, !625, !626, !629, !630, !134, !632, !2115, !627, !2172, !1535, !2378, !2379, !2189, !1103, !2159, !7}
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!625 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !628)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !633, line: 56, baseType: !634)
!633 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !135, line: 3371, size: 1792, elements: !636)
!636 = !{!637, !670, !676, !689, !708, !719, !724, !733, !739, !752, !764, !802, !1348, !1376, !1393, !1394, !1399, !1408, !1414, !1419, !1423, !1427, !1766, !1813, !1819, !1825, !1832, !1845, !1859, !1876, !1888, !1910, !1925, !2097}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !635, file: !135, line: 3372, baseType: !638, size: 64)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !135, line: 360, size: 64, elements: !639)
!639 = !{!640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !638, file: !135, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !638, file: !135, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !638, file: !135, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !638, file: !135, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !638, file: !135, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !638, file: !135, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !638, file: !135, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !638, file: !135, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !638, file: !135, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !638, file: !135, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !638, file: !135, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !638, file: !135, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !638, file: !135, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !638, file: !135, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !638, file: !135, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !638, file: !135, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !638, file: !135, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !638, file: !135, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !638, file: !135, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !638, file: !135, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !638, file: !135, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !638, file: !135, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !638, file: !135, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !638, file: !135, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !638, file: !135, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !638, file: !135, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !638, file: !135, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !638, file: !135, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !638, file: !135, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !638, file: !135, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !635, file: !135, line: 3373, baseType: !671, size: 192)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !135, line: 402, size: 192, elements: !672)
!672 = !{!673, !674, !675}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !671, file: !135, line: 403, baseType: !638, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !671, file: !135, line: 404, baseType: !632, size: 64, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !671, file: !135, line: 405, baseType: !632, size: 64, offset: 128)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !635, file: !135, line: 3374, baseType: !677, size: 320)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !135, line: 1384, size: 320, elements: !678)
!678 = !{!679, !680}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !677, file: !135, line: 1385, baseType: !671, size: 192)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !677, file: !135, line: 1386, baseType: !681, size: 128, offset: 192)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !682, line: 58, baseType: !683)
!682 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !682, line: 54, size: 128, elements: !684)
!684 = !{!685, !687}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !683, file: !682, line: 56, baseType: !686, size: 64)
!686 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !683, file: !682, line: 57, baseType: !688, size: 64, offset: 64)
!688 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !635, file: !135, line: 3375, baseType: !690, size: 256)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !135, line: 1397, size: 256, elements: !691)
!691 = !{!692, !693}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !690, file: !135, line: 1398, baseType: !671, size: 192)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !690, file: !135, line: 1399, baseType: !694, size: 64, offset: 192)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !696, line: 52, size: 256, elements: !697)
!696 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!697 = !{!698, !699, !700, !701, !702, !703, !704}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !695, file: !696, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !695, file: !696, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !695, file: !696, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !695, file: !696, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !695, file: !696, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !695, file: !696, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !695, file: !696, line: 62, baseType: !705, size: 192, offset: 64)
!705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 192, elements: !706)
!706 = !{!707}
!707 = !DISubrange(count: 3)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !635, file: !135, line: 3376, baseType: !709, size: 256)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !135, line: 1408, size: 256, elements: !710)
!710 = !{!711, !712}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !709, file: !135, line: 1409, baseType: !671, size: 192)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !709, file: !135, line: 1410, baseType: !713, size: 64, offset: 192)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !715, line: 27, size: 192, elements: !716)
!715 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!716 = !{!717, !718}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !714, file: !715, line: 29, baseType: !681, size: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !714, file: !715, line: 30, baseType: !5, size: 32, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !635, file: !135, line: 3377, baseType: !720, size: 256)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !135, line: 1437, size: 256, elements: !721)
!721 = !{!722, !723}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !720, file: !135, line: 1438, baseType: !671, size: 192)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !720, file: !135, line: 1439, baseType: !632, size: 64, offset: 192)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !635, file: !135, line: 3378, baseType: !725, size: 256)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !135, line: 1418, size: 256, elements: !726)
!726 = !{!727, !728, !729}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !725, file: !135, line: 1419, baseType: !671, size: 192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !725, file: !135, line: 1420, baseType: !625, size: 32, offset: 192)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !725, file: !135, line: 1421, baseType: !730, size: 8, offset: 224)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !628, size: 8, elements: !731)
!731 = !{!732}
!732 = !DISubrange(count: 1)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !635, file: !135, line: 3379, baseType: !734, size: 320)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !135, line: 1428, size: 320, elements: !735)
!735 = !{!736, !737, !738}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !734, file: !135, line: 1429, baseType: !671, size: 192)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !734, file: !135, line: 1430, baseType: !632, size: 64, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !734, file: !135, line: 1431, baseType: !632, size: 64, offset: 256)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !635, file: !135, line: 3380, baseType: !740, size: 320)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !135, line: 1460, size: 320, elements: !741)
!741 = !{!742, !743}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !740, file: !135, line: 1461, baseType: !671, size: 192)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !740, file: !135, line: 1462, baseType: !744, size: 128, offset: 192)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !745, line: 31, size: 128, elements: !746)
!745 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!746 = !{!747, !750, !751}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !744, file: !745, line: 32, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !624)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !744, file: !745, line: 33, baseType: !7, size: 32, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !744, file: !745, line: 34, baseType: !7, size: 32, offset: 96)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !635, file: !135, line: 3381, baseType: !753, size: 384)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !135, line: 2507, size: 384, elements: !754)
!754 = !{!755, !756, !761, !762, !763}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !753, file: !135, line: 2508, baseType: !671, size: 192)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !753, file: !135, line: 2509, baseType: !757, size: 32, offset: 192)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !758, line: 58, baseType: !759)
!758 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !760, line: 44, baseType: !7)
!760 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!761 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !753, file: !135, line: 2510, baseType: !7, size: 32, offset: 224)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !753, file: !135, line: 2511, baseType: !632, size: 64, offset: 256)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !753, file: !135, line: 2512, baseType: !632, size: 64, offset: 320)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !635, file: !135, line: 3382, baseType: !765, size: 896)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !135, line: 2652, size: 896, elements: !766)
!766 = !{!767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !765, file: !135, line: 2653, baseType: !753, size: 384)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !765, file: !135, line: 2654, baseType: !632, size: 64, offset: 384)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !765, file: !135, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !765, file: !135, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !765, file: !135, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !765, file: !135, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !765, file: !135, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !765, file: !135, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !765, file: !135, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !765, file: !135, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !765, file: !135, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !765, file: !135, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !765, file: !135, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !765, file: !135, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !765, file: !135, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !765, file: !135, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !765, file: !135, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !765, file: !135, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !765, file: !135, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !765, file: !135, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !765, file: !135, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !765, file: !135, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !765, file: !135, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !765, file: !135, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !765, file: !135, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !765, file: !135, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !765, file: !135, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !765, file: !135, line: 2703, baseType: !7, size: 32, offset: 512)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !765, file: !135, line: 2705, baseType: !632, size: 64, offset: 576)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !765, file: !135, line: 2706, baseType: !632, size: 64, offset: 640)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !765, file: !135, line: 2707, baseType: !632, size: 64, offset: 704)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !765, file: !135, line: 2708, baseType: !632, size: 64, offset: 768)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !765, file: !135, line: 2711, baseType: !800, size: 64, offset: 832)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !135, line: 2711, flags: DIFlagFwdDecl)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !635, file: !135, line: 3383, baseType: !803, size: 960)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !135, line: 2756, size: 960, elements: !804)
!804 = !{!805, !806}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !803, file: !135, line: 2757, baseType: !765, size: 896)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !803, file: !135, line: 2758, baseType: !807, size: 64, offset: 896)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !633, line: 50, baseType: !808)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !810, line: 240, size: 384, elements: !811)
!810 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!811 = !{!812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !809, file: !810, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !809, file: !810, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !809, file: !810, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !809, file: !810, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !809, file: !810, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !809, file: !810, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !809, file: !810, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !809, file: !810, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !809, file: !810, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !809, file: !810, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !809, file: !810, line: 321, baseType: !823, size: 320, offset: 64)
!823 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !810, line: 315, size: 320, elements: !824)
!824 = !{!825, !1281, !1283, !1346, !1347}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !823, file: !810, line: 316, baseType: !826, size: 64)
!826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !827, size: 64, elements: !731)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !810, line: 183, baseType: !828)
!828 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !810, line: 166, size: 64, elements: !829)
!829 = !{!830, !831, !832, !833, !834, !842, !843, !855, !858, !918, !919, !1258, !1271, !1278}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !828, file: !810, line: 168, baseType: !625, size: 32)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !828, file: !810, line: 169, baseType: !7, size: 32)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !828, file: !810, line: 170, baseType: !630, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !828, file: !810, line: 171, baseType: !807, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !828, file: !810, line: 172, baseType: !835, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !633, line: 53, baseType: !836)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !810, line: 359, size: 128, elements: !838)
!838 = !{!839, !840}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !837, file: !810, line: 360, baseType: !625, size: 32)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !837, file: !810, line: 361, baseType: !841, size: 64, offset: 64)
!841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !807, size: 64, elements: !731)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !828, file: !810, line: 173, baseType: !5, size: 32)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !828, file: !810, line: 174, baseType: !844, size: 32)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !810, line: 133, baseType: !845)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !810, line: 115, size: 32, elements: !846)
!846 = !{!847, !848, !849, !850, !851, !852, !853, !854}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !845, file: !810, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !845, file: !810, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !845, file: !810, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !845, file: !810, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !845, file: !810, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !845, file: !810, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !845, file: !810, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !845, file: !810, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !828, file: !810, line: 175, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !810, line: 175, flags: DIFlagFwdDecl)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !828, file: !810, line: 176, baseType: !859, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !861, line: 75, size: 256, elements: !862)
!861 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!862 = !{!863, !877, !878, !879}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !860, file: !861, line: 76, baseType: !864, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !861, line: 68, baseType: !866)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !861, line: 63, size: 320, elements: !867)
!867 = !{!868, !870, !871, !872}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !866, file: !861, line: 64, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !866, file: !861, line: 65, baseType: !869, size: 64, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !866, file: !861, line: 66, baseType: !7, size: 32, offset: 128)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !866, file: !861, line: 67, baseType: !873, size: 128, offset: 192)
!873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !874, size: 128, elements: !875)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !861, line: 29, baseType: !686)
!875 = !{!876}
!876 = !DISubrange(count: 2)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !860, file: !861, line: 77, baseType: !864, size: 64, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !860, file: !861, line: 78, baseType: !7, size: 32, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !860, file: !861, line: 79, baseType: !880, size: 64, offset: 192)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !861, line: 49, baseType: !882)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !861, line: 45, size: 832, elements: !883)
!883 = !{!884, !885, !886}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !882, file: !861, line: 46, baseType: !869, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !882, file: !861, line: 47, baseType: !859, size: 64, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !882, file: !861, line: 48, baseType: !887, size: 704, offset: 128)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !888, line: 164, size: 704, elements: !889)
!888 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!889 = !{!890, !891, !901, !902, !903, !904, !905, !906, !910, !914, !915, !916, !917}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !887, file: !888, line: 166, baseType: !688, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !887, file: !888, line: 167, baseType: !892, size: 64, offset: 64)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !888, line: 157, size: 192, elements: !894)
!894 = !{!895, !896, !897}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !893, file: !888, line: 159, baseType: !627, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !893, file: !888, line: 160, baseType: !892, size: 64, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !893, file: !888, line: 161, baseType: !898, size: 32, offset: 128)
!898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !628, size: 32, elements: !899)
!899 = !{!900}
!900 = !DISubrange(count: 4)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !887, file: !888, line: 168, baseType: !627, size: 64, offset: 128)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !887, file: !888, line: 169, baseType: !627, size: 64, offset: 192)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !887, file: !888, line: 170, baseType: !627, size: 64, offset: 256)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !887, file: !888, line: 171, baseType: !688, size: 64, offset: 320)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !887, file: !888, line: 172, baseType: !625, size: 32, offset: 384)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !887, file: !888, line: 176, baseType: !907, size: 64, offset: 448)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{!892, !629, !688}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !887, file: !888, line: 177, baseType: !911, size: 64, offset: 512)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DISubroutineType(types: !913)
!913 = !{null, !629, !892}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !887, file: !888, line: 178, baseType: !629, size: 64, offset: 576)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !887, file: !888, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !887, file: !888, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !887, file: !888, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !828, file: !810, line: 177, baseType: !632, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !828, file: !810, line: 178, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !350, line: 217, size: 832, elements: !922)
!922 = !{!923, !1170, !1171, !1172, !1228, !1232, !1233, !1234, !1252, !1253, !1254, !1255, !1256, !1257}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !921, file: !350, line: 219, baseType: !924, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !350, line: 151, baseType: !926)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !350, line: 151, size: 128, elements: !927)
!927 = !{!928}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !926, file: !350, line: 151, baseType: !929, size: 128)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !350, line: 150, baseType: !930)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !350, line: 150, size: 128, elements: !931)
!931 = !{!932, !933, !934}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !930, file: !350, line: 150, baseType: !7, size: 32)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !930, file: !350, line: 150, baseType: !7, size: 32, offset: 32)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !930, file: !350, line: 150, baseType: !935, size: 64, offset: 64)
!935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !936, size: 64, elements: !731)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !633, line: 108, baseType: !937)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !350, line: 122, size: 512, elements: !939)
!939 = !{!940, !941, !942, !1162, !1163, !1164, !1165, !1166, !1167, !1168}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !938, file: !350, line: 124, baseType: !920, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !938, file: !350, line: 125, baseType: !920, size: 64, offset: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !938, file: !350, line: 131, baseType: !943, size: 64, offset: 128)
!943 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !350, line: 128, size: 64, elements: !944)
!944 = !{!945, !1161}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !943, file: !350, line: 129, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !633, line: 66, baseType: !947)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !949, line: 143, size: 192, elements: !950)
!949 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!950 = !{!951, !1159, !1160}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !948, file: !949, line: 145, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !633, line: 69, baseType: !953)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !949, line: 136, size: 192, elements: !955)
!955 = !{!956, !1157, !1158}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !954, file: !949, line: 137, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !633, line: 58, baseType: !958)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !949, line: 737, size: 768, elements: !960)
!960 = !{!961, !978, !1012, !1018, !1023, !1028, !1035, !1041, !1047, !1052, !1066, !1071, !1077, !1082, !1092, !1097, !1115, !1122, !1129, !1135, !1140, !1146, !1152}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !959, file: !949, line: 738, baseType: !962, size: 256)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !949, line: 271, size: 256, elements: !963)
!963 = !{!964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !962, file: !949, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !962, file: !949, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !962, file: !949, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !962, file: !949, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !962, file: !949, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !962, file: !949, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !962, file: !949, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !962, file: !949, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !962, file: !949, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !962, file: !949, line: 312, baseType: !7, size: 32, offset: 32)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !962, file: !949, line: 316, baseType: !757, size: 32, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !962, file: !949, line: 319, baseType: !7, size: 32, offset: 96)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !962, file: !949, line: 323, baseType: !920, size: 64, offset: 128)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !962, file: !949, line: 327, baseType: !632, size: 64, offset: 192)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !959, file: !949, line: 739, baseType: !979, size: 448)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !949, line: 350, size: 448, elements: !980)
!980 = !{!981, !1010}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !979, file: !949, line: 353, baseType: !982, size: 384)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !949, line: 333, size: 384, elements: !983)
!983 = !{!984, !985, !993}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !982, file: !949, line: 336, baseType: !962, size: 256)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !982, file: !949, line: 343, baseType: !986, size: 64, offset: 256)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !988, line: 37, size: 128, elements: !989)
!988 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!989 = !{!990, !991}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !987, file: !988, line: 39, baseType: !986, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !987, file: !988, line: 40, baseType: !992, size: 64, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !982, file: !949, line: 344, baseType: !994, size: 64, offset: 320)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !988, line: 45, size: 320, elements: !996)
!996 = !{!997, !998}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !995, file: !988, line: 47, baseType: !994, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !995, file: !988, line: 48, baseType: !999, size: 256, offset: 64)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !135, line: 1883, size: 256, elements: !1000)
!1000 = !{!1001, !1003, !1004, !1009}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !999, file: !135, line: 1884, baseType: !1002, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !999, file: !135, line: 1885, baseType: !1002, size: 64, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !999, file: !135, line: 1891, baseType: !1005, size: 64, offset: 128)
!1005 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !999, file: !135, line: 1891, size: 64, elements: !1006)
!1006 = !{!1007, !1008}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1005, file: !135, line: 1891, baseType: !957, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1005, file: !135, line: 1891, baseType: !632, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !999, file: !135, line: 1892, baseType: !992, size: 64, offset: 192)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !979, file: !949, line: 359, baseType: !1011, size: 64, offset: 384)
!1011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !632, size: 64, elements: !731)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !959, file: !949, line: 740, baseType: !1013, size: 512)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !949, line: 365, size: 512, elements: !1014)
!1014 = !{!1015, !1016, !1017}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1013, file: !949, line: 368, baseType: !982, size: 384)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !1013, file: !949, line: 373, baseType: !632, size: 64, offset: 384)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !1013, file: !949, line: 374, baseType: !632, size: 64, offset: 448)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !959, file: !949, line: 741, baseType: !1019, size: 576)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !949, line: 380, size: 576, elements: !1020)
!1020 = !{!1021, !1022}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1019, file: !949, line: 383, baseType: !1013, size: 512)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1019, file: !949, line: 389, baseType: !1011, size: 64, offset: 512)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !959, file: !949, line: 742, baseType: !1024, size: 320)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !949, line: 395, size: 320, elements: !1025)
!1025 = !{!1026, !1027}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1024, file: !949, line: 397, baseType: !962, size: 256)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1024, file: !949, line: 400, baseType: !946, size: 64, offset: 256)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !959, file: !949, line: 743, baseType: !1029, size: 448)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !949, line: 406, size: 448, elements: !1030)
!1030 = !{!1031, !1032, !1033, !1034}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1029, file: !949, line: 408, baseType: !962, size: 256)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1029, file: !949, line: 412, baseType: !632, size: 64, offset: 256)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1029, file: !949, line: 420, baseType: !632, size: 64, offset: 320)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1029, file: !949, line: 423, baseType: !946, size: 64, offset: 384)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !959, file: !949, line: 744, baseType: !1036, size: 384)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !949, line: 429, size: 384, elements: !1037)
!1037 = !{!1038, !1039, !1040}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1036, file: !949, line: 431, baseType: !962, size: 256)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1036, file: !949, line: 434, baseType: !632, size: 64, offset: 256)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1036, file: !949, line: 437, baseType: !946, size: 64, offset: 320)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !959, file: !949, line: 745, baseType: !1042, size: 384)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !949, line: 443, size: 384, elements: !1043)
!1043 = !{!1044, !1045, !1046}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1042, file: !949, line: 445, baseType: !962, size: 256)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1042, file: !949, line: 449, baseType: !632, size: 64, offset: 256)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1042, file: !949, line: 453, baseType: !946, size: 64, offset: 320)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !959, file: !949, line: 746, baseType: !1048, size: 320)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !949, line: 459, size: 320, elements: !1049)
!1049 = !{!1050, !1051}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1048, file: !949, line: 461, baseType: !962, size: 256)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1048, file: !949, line: 464, baseType: !632, size: 64, offset: 256)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !959, file: !949, line: 747, baseType: !1053, size: 768)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !949, line: 469, size: 768, elements: !1054)
!1054 = !{!1055, !1056, !1057, !1058, !1059}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1053, file: !949, line: 471, baseType: !962, size: 256)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1053, file: !949, line: 474, baseType: !7, size: 32, offset: 256)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1053, file: !949, line: 475, baseType: !7, size: 32, offset: 288)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1053, file: !949, line: 478, baseType: !632, size: 64, offset: 320)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1053, file: !949, line: 481, baseType: !1060, size: 384, offset: 384)
!1060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1061, size: 384, elements: !731)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !135, line: 1917, size: 384, elements: !1062)
!1062 = !{!1063, !1064, !1065}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1061, file: !135, line: 1920, baseType: !999, size: 256)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1061, file: !135, line: 1921, baseType: !632, size: 64, offset: 256)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1061, file: !135, line: 1922, baseType: !757, size: 32, offset: 320)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !959, file: !949, line: 748, baseType: !1067, size: 320)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !949, line: 487, size: 320, elements: !1068)
!1068 = !{!1069, !1070}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1067, file: !949, line: 490, baseType: !962, size: 256)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1067, file: !949, line: 494, baseType: !625, size: 32, offset: 256)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !959, file: !949, line: 749, baseType: !1072, size: 384)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !949, line: 500, size: 384, elements: !1073)
!1073 = !{!1074, !1075, !1076}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1072, file: !949, line: 502, baseType: !962, size: 256)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1072, file: !949, line: 506, baseType: !946, size: 64, offset: 256)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1072, file: !949, line: 510, baseType: !946, size: 64, offset: 320)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !959, file: !949, line: 750, baseType: !1078, size: 320)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !949, line: 529, size: 320, elements: !1079)
!1079 = !{!1080, !1081}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1078, file: !949, line: 531, baseType: !962, size: 256)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1078, file: !949, line: 540, baseType: !946, size: 64, offset: 256)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !959, file: !949, line: 751, baseType: !1083, size: 704)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !949, line: 546, size: 704, elements: !1084)
!1084 = !{!1085, !1086, !1087, !1088, !1089, !1090, !1091}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1083, file: !949, line: 549, baseType: !1013, size: 512)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1083, file: !949, line: 553, baseType: !630, size: 64, offset: 512)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1083, file: !949, line: 557, baseType: !624, size: 8, offset: 576)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1083, file: !949, line: 558, baseType: !624, size: 8, offset: 584)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1083, file: !949, line: 559, baseType: !624, size: 8, offset: 592)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1083, file: !949, line: 560, baseType: !624, size: 8, offset: 600)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1083, file: !949, line: 566, baseType: !1011, size: 64, offset: 640)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !959, file: !949, line: 752, baseType: !1093, size: 384)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !949, line: 571, size: 384, elements: !1094)
!1094 = !{!1095, !1096}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1093, file: !949, line: 573, baseType: !1024, size: 320)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1093, file: !949, line: 577, baseType: !632, size: 64, offset: 320)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !959, file: !949, line: 753, baseType: !1098, size: 576)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !949, line: 600, size: 576, elements: !1099)
!1099 = !{!1100, !1101, !1102, !1105, !1114}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1098, file: !949, line: 602, baseType: !1024, size: 320)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1098, file: !949, line: 605, baseType: !632, size: 64, offset: 320)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1098, file: !949, line: 609, baseType: !1103, size: 64, offset: 384)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1104, line: 46, baseType: !686)
!1104 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1098, file: !949, line: 612, baseType: !1106, size: 64, offset: 448)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !949, line: 581, size: 320, elements: !1108)
!1108 = !{!1109, !1110, !1111, !1112, !1113}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1107, file: !949, line: 583, baseType: !134, size: 32)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1107, file: !949, line: 586, baseType: !632, size: 64, offset: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1107, file: !949, line: 589, baseType: !632, size: 64, offset: 128)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1107, file: !949, line: 592, baseType: !632, size: 64, offset: 192)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1107, file: !949, line: 595, baseType: !632, size: 64, offset: 256)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1098, file: !949, line: 616, baseType: !946, size: 64, offset: 512)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !959, file: !949, line: 754, baseType: !1116, size: 512)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !949, line: 622, size: 512, elements: !1117)
!1117 = !{!1118, !1119, !1120, !1121}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1116, file: !949, line: 624, baseType: !1024, size: 320)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1116, file: !949, line: 628, baseType: !632, size: 64, offset: 320)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1116, file: !949, line: 632, baseType: !632, size: 64, offset: 384)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1116, file: !949, line: 636, baseType: !632, size: 64, offset: 448)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !959, file: !949, line: 755, baseType: !1123, size: 704)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !949, line: 642, size: 704, elements: !1124)
!1124 = !{!1125, !1126, !1127, !1128}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1123, file: !949, line: 644, baseType: !1116, size: 512)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1123, file: !949, line: 648, baseType: !632, size: 64, offset: 512)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1123, file: !949, line: 652, baseType: !632, size: 64, offset: 576)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1123, file: !949, line: 653, baseType: !632, size: 64, offset: 640)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !959, file: !949, line: 756, baseType: !1130, size: 448)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !949, line: 663, size: 448, elements: !1131)
!1131 = !{!1132, !1133, !1134}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1130, file: !949, line: 665, baseType: !1024, size: 320)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1130, file: !949, line: 668, baseType: !632, size: 64, offset: 320)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1130, file: !949, line: 673, baseType: !632, size: 64, offset: 384)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !959, file: !949, line: 757, baseType: !1136, size: 384)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !949, line: 694, size: 384, elements: !1137)
!1137 = !{!1138, !1139}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1136, file: !949, line: 696, baseType: !1024, size: 320)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1136, file: !949, line: 699, baseType: !632, size: 64, offset: 320)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !959, file: !949, line: 758, baseType: !1141, size: 384)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !949, line: 681, size: 384, elements: !1142)
!1142 = !{!1143, !1144, !1145}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1141, file: !949, line: 683, baseType: !962, size: 256)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1141, file: !949, line: 686, baseType: !632, size: 64, offset: 256)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1141, file: !949, line: 689, baseType: !632, size: 64, offset: 320)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !959, file: !949, line: 759, baseType: !1147, size: 384)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !949, line: 707, size: 384, elements: !1148)
!1148 = !{!1149, !1150, !1151}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1147, file: !949, line: 709, baseType: !962, size: 256)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1147, file: !949, line: 712, baseType: !632, size: 64, offset: 256)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1147, file: !949, line: 712, baseType: !632, size: 64, offset: 320)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !959, file: !949, line: 760, baseType: !1153, size: 320)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !949, line: 718, size: 320, elements: !1154)
!1154 = !{!1155, !1156}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1153, file: !949, line: 720, baseType: !962, size: 256)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1153, file: !949, line: 723, baseType: !632, size: 64, offset: 256)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !954, file: !949, line: 138, baseType: !953, size: 64, offset: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !954, file: !949, line: 139, baseType: !953, size: 64, offset: 128)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !948, file: !949, line: 146, baseType: !952, size: 64, offset: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !948, file: !949, line: 152, baseType: !946, size: 64, offset: 128)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !943, file: !350, line: 130, baseType: !807, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !938, file: !350, line: 134, baseType: !629, size: 64, offset: 192)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !938, file: !350, line: 137, baseType: !632, size: 64, offset: 256)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !938, file: !350, line: 138, baseType: !757, size: 32, offset: 320)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !938, file: !350, line: 142, baseType: !7, size: 32, offset: 352)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !938, file: !350, line: 144, baseType: !625, size: 32, offset: 384)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !938, file: !350, line: 145, baseType: !625, size: 32, offset: 416)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !938, file: !350, line: 146, baseType: !1169, size: 64, offset: 448)
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !350, line: 119, baseType: !688)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !921, file: !350, line: 220, baseType: !924, size: 64, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !921, file: !350, line: 223, baseType: !629, size: 64, offset: 128)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !921, file: !350, line: 226, baseType: !1173, size: 64, offset: 192)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !330, line: 100, size: 1216, elements: !1175)
!1175 = !{!1176, !1177, !1178, !1179, !1180, !1185, !1186, !1187, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1218, !1226, !1227}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1174, file: !330, line: 102, baseType: !625, size: 32)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "ninsns", scope: !1174, file: !330, line: 105, baseType: !7, size: 32, offset: 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1174, file: !330, line: 108, baseType: !920, size: 64, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "latch", scope: !1174, file: !330, line: 111, baseType: !920, size: 64, offset: 128)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "lpt_decision", scope: !1174, file: !330, line: 114, baseType: !1181, size: 64, offset: 192)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lpt_decision", file: !330, line: 41, size: 64, elements: !1182)
!1182 = !{!1183, !1184}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "decision", scope: !1181, file: !330, line: 42, baseType: !329, size: 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "times", scope: !1181, file: !330, line: 43, baseType: !7, size: 32, offset: 32)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "av_ninsns", scope: !1174, file: !330, line: 117, baseType: !7, size: 32, offset: 256)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "num_nodes", scope: !1174, file: !330, line: 120, baseType: !7, size: 32, offset: 288)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "superloops", scope: !1174, file: !330, line: 123, baseType: !1188, size: 64, offset: 320)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_gc", file: !330, line: 87, baseType: !1190)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_gc", file: !330, line: 87, size: 128, elements: !1191)
!1191 = !{!1192}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1190, file: !330, line: 87, baseType: !1193, size: 128)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_base", file: !330, line: 85, baseType: !1194)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_base", file: !330, line: 85, size: 128, elements: !1195)
!1195 = !{!1196, !1197, !1198}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1194, file: !330, line: 85, baseType: !7, size: 32)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1194, file: !330, line: 85, baseType: !7, size: 32, offset: 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1194, file: !330, line: 85, baseType: !1199, size: 64, offset: 64)
!1199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1200, size: 64, elements: !731)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_p", file: !330, line: 84, baseType: !1173)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1174, file: !330, line: 126, baseType: !1173, size: 64, offset: 384)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1174, file: !330, line: 129, baseType: !1173, size: 64, offset: 448)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1174, file: !330, line: 132, baseType: !629, size: 64, offset: 512)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations", scope: !1174, file: !330, line: 139, baseType: !632, size: 64, offset: 576)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_upper_bound", scope: !1174, file: !330, line: 143, baseType: !681, size: 128, offset: 640)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_estimate", scope: !1174, file: !330, line: 146, baseType: !681, size: 128, offset: 768)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "any_upper_bound", scope: !1174, file: !330, line: 148, baseType: !624, size: 8, offset: 896)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "any_estimate", scope: !1174, file: !330, line: 149, baseType: !624, size: 8, offset: 904)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "estimate_state", scope: !1174, file: !330, line: 153, baseType: !338, size: 32, offset: 928)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !1174, file: !330, line: 156, baseType: !1211, size: 64, offset: 960)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nb_iter_bound", file: !330, line: 48, size: 320, elements: !1213)
!1213 = !{!1214, !1215, !1216, !1217}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1212, file: !330, line: 50, baseType: !957, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !1212, file: !330, line: 59, baseType: !681, size: 128, offset: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "is_exit", scope: !1212, file: !330, line: 64, baseType: !624, size: 8, offset: 192)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1212, file: !330, line: 67, baseType: !1211, size: 64, offset: 256)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1174, file: !330, line: 159, baseType: !1219, size: 64, offset: 1024)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop_exit", file: !330, line: 72, size: 256, elements: !1221)
!1221 = !{!1222, !1223, !1224, !1225}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !1220, file: !330, line: 74, baseType: !937, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1220, file: !330, line: 77, baseType: !1219, size: 64, offset: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1220, file: !330, line: 78, baseType: !1219, size: 64, offset: 128)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "next_e", scope: !1220, file: !330, line: 81, baseType: !1219, size: 64, offset: 192)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_parallel", scope: !1174, file: !330, line: 162, baseType: !624, size: 8, offset: 1088)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "single_iv", scope: !1174, file: !330, line: 166, baseType: !632, size: 64, offset: 1152)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !921, file: !350, line: 229, baseType: !1229, size: 128, offset: 256)
!1229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1230, size: 128, elements: !875)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !350, line: 229, flags: DIFlagFwdDecl)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !921, file: !350, line: 232, baseType: !920, size: 64, offset: 384)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !921, file: !350, line: 233, baseType: !920, size: 64, offset: 448)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !921, file: !350, line: 238, baseType: !1235, size: 64, offset: 512)
!1235 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !350, line: 235, size: 64, elements: !1236)
!1236 = !{!1237, !1243}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1235, file: !350, line: 236, baseType: !1238, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !350, line: 273, size: 128, elements: !1240)
!1240 = !{!1241, !1242}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1239, file: !350, line: 275, baseType: !946, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1239, file: !350, line: 278, baseType: !946, size: 64, offset: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1235, file: !350, line: 237, baseType: !1244, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !350, line: 259, size: 320, elements: !1246)
!1246 = !{!1247, !1248, !1249, !1250, !1251}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1245, file: !350, line: 261, baseType: !807, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1245, file: !350, line: 262, baseType: !807, size: 64, offset: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1245, file: !350, line: 266, baseType: !807, size: 64, offset: 128)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1245, file: !350, line: 267, baseType: !807, size: 64, offset: 192)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1245, file: !350, line: 270, baseType: !625, size: 32, offset: 256)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !921, file: !350, line: 241, baseType: !1169, size: 64, offset: 576)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !921, file: !350, line: 244, baseType: !625, size: 32, offset: 640)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !921, file: !350, line: 247, baseType: !625, size: 32, offset: 672)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !921, file: !350, line: 250, baseType: !625, size: 32, offset: 704)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !921, file: !350, line: 253, baseType: !625, size: 32, offset: 736)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !921, file: !350, line: 256, baseType: !625, size: 32, offset: 768)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !828, file: !810, line: 179, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !810, line: 150, baseType: !1261)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !810, line: 142, size: 320, elements: !1262)
!1262 = !{!1263, !1264, !1265, !1266, !1269, !1270}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1261, file: !810, line: 144, baseType: !632, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1261, file: !810, line: 145, baseType: !807, size: 64, offset: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1261, file: !810, line: 146, baseType: !807, size: 64, offset: 128)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1261, file: !810, line: 147, baseType: !1267, size: 32, offset: 192)
!1267 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1268, line: 31, baseType: !625)
!1268 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1261, file: !810, line: 148, baseType: !7, size: 32, offset: 224)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1261, file: !810, line: 149, baseType: !624, size: 8, offset: 256)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !828, file: !810, line: 180, baseType: !1272, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !810, line: 162, baseType: !1274)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !810, line: 159, size: 128, elements: !1275)
!1275 = !{!1276, !1277}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1274, file: !810, line: 160, baseType: !632, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1274, file: !810, line: 161, baseType: !688, size: 64, offset: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !828, file: !810, line: 181, baseType: !1279, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !810, line: 181, flags: DIFlagFwdDecl)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !823, file: !810, line: 317, baseType: !1282, size: 64)
!1282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !688, size: 64, elements: !731)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !823, file: !810, line: 318, baseType: !1284, size: 320)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !810, line: 188, size: 320, elements: !1285)
!1285 = !{!1286, !1288, !1345}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1284, file: !810, line: 190, baseType: !1287, size: 192)
!1287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !827, size: 192, elements: !706)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1284, file: !810, line: 193, baseType: !1289, size: 64, offset: 192)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !810, line: 206, size: 320, elements: !1291)
!1291 = !{!1292, !1330, !1331, !1332, !1344}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1290, file: !810, line: 208, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !633, line: 62, baseType: !1295)
!1295 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1296, line: 538, size: 256, elements: !1297)
!1296 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1297 = !{!1298, !1302, !1308, !1321}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1295, file: !1296, line: 539, baseType: !1299, size: 32)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1296, line: 482, size: 32, elements: !1300)
!1300 = !{!1301}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1299, file: !1296, line: 484, baseType: !7, size: 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1295, file: !1296, line: 540, baseType: !1303, size: 192)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1296, line: 488, size: 192, elements: !1304)
!1304 = !{!1305, !1306, !1307}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1303, file: !1296, line: 489, baseType: !1299, size: 32)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1303, file: !1296, line: 492, baseType: !630, size: 64, offset: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1303, file: !1296, line: 496, baseType: !632, size: 64, offset: 128)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1295, file: !1296, line: 541, baseType: !1309, size: 256)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1296, line: 504, size: 256, elements: !1310)
!1310 = !{!1311, !1312, !1319, !1320}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1309, file: !1296, line: 505, baseType: !1299, size: 32)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1309, file: !1296, line: 509, baseType: !1313, size: 64, offset: 64)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1296, line: 501, baseType: !1314)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{null, !1317}
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1309, file: !1296, line: 510, baseType: !1317, size: 64, offset: 128)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1309, file: !1296, line: 513, baseType: !1293, size: 64, offset: 192)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1295, file: !1296, line: 542, baseType: !1322, size: 128)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1296, line: 530, size: 128, elements: !1323)
!1323 = !{!1324, !1325}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1322, file: !1296, line: 531, baseType: !1299, size: 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1322, file: !1296, line: 534, baseType: !1326, size: 64, offset: 64)
!1326 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1296, line: 525, baseType: !1327)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!624, !632, !630, !686, !686}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1290, file: !810, line: 211, baseType: !7, size: 32, offset: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1290, file: !810, line: 214, baseType: !688, size: 64, offset: 128)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1290, file: !810, line: 224, baseType: !1333, size: 64, offset: 192)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !810, line: 202, baseType: !1335)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !810, line: 202, size: 128, elements: !1336)
!1336 = !{!1337}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1335, file: !810, line: 202, baseType: !1338, size: 128)
!1338 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !810, line: 200, baseType: !1339)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !810, line: 200, size: 128, elements: !1340)
!1340 = !{!1341, !1342, !1343}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1339, file: !810, line: 200, baseType: !7, size: 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1339, file: !810, line: 200, baseType: !7, size: 32, offset: 32)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1339, file: !810, line: 200, baseType: !841, size: 64, offset: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1290, file: !810, line: 234, baseType: !1333, size: 64, offset: 256)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1284, file: !810, line: 197, baseType: !688, size: 64, offset: 256)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !823, file: !810, line: 319, baseType: !695, size: 256)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !823, file: !810, line: 320, baseType: !714, size: 192)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !635, file: !135, line: 3384, baseType: !1349, size: 1472)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !135, line: 3114, size: 1472, elements: !1350)
!1350 = !{!1351, !1372, !1373, !1374, !1375}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1349, file: !135, line: 3115, baseType: !1352, size: 1216)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !135, line: 2984, size: 1216, elements: !1353)
!1353 = !{!1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1352, file: !135, line: 2985, baseType: !803, size: 960)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1352, file: !135, line: 2986, baseType: !632, size: 64, offset: 960)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1352, file: !135, line: 2987, baseType: !632, size: 64, offset: 1024)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1352, file: !135, line: 2988, baseType: !632, size: 64, offset: 1088)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1352, file: !135, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1352, file: !135, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1352, file: !135, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1352, file: !135, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1352, file: !135, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1352, file: !135, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1352, file: !135, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1352, file: !135, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1352, file: !135, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1352, file: !135, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1352, file: !135, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1352, file: !135, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1352, file: !135, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1352, file: !135, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1349, file: !135, line: 3117, baseType: !632, size: 64, offset: 1216)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1349, file: !135, line: 3119, baseType: !632, size: 64, offset: 1280)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1349, file: !135, line: 3121, baseType: !632, size: 64, offset: 1344)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1349, file: !135, line: 3123, baseType: !632, size: 64, offset: 1408)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !635, file: !135, line: 3385, baseType: !1377, size: 1088)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !135, line: 2874, size: 1088, elements: !1378)
!1378 = !{!1379, !1380, !1381}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1377, file: !135, line: 2875, baseType: !803, size: 960)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1377, file: !135, line: 2876, baseType: !807, size: 64, offset: 960)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1377, file: !135, line: 2877, baseType: !1382, size: 64, offset: 1024)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !1384, line: 172, size: 128, elements: !1385)
!1384 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1385 = !{!1386, !1387, !1388, !1389, !1390, !1391, !1392}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !1383, file: !1384, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1383, file: !1384, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !1383, file: !1384, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !1383, file: !1384, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !1383, file: !1384, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !1383, file: !1384, line: 195, baseType: !7, size: 32, offset: 32)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !1383, file: !1384, line: 199, baseType: !632, size: 64, offset: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !635, file: !135, line: 3386, baseType: !1352, size: 1216)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !635, file: !135, line: 3387, baseType: !1395, size: 1280)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !135, line: 3093, size: 1280, elements: !1396)
!1396 = !{!1397, !1398}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1395, file: !135, line: 3094, baseType: !1352, size: 1216)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1395, file: !135, line: 3095, baseType: !1382, size: 64, offset: 1216)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !635, file: !135, line: 3388, baseType: !1400, size: 1216)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !135, line: 2824, size: 1216, elements: !1401)
!1401 = !{!1402, !1403, !1404, !1405, !1406, !1407}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1400, file: !135, line: 2825, baseType: !765, size: 896)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1400, file: !135, line: 2827, baseType: !632, size: 64, offset: 896)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1400, file: !135, line: 2828, baseType: !632, size: 64, offset: 960)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1400, file: !135, line: 2829, baseType: !632, size: 64, offset: 1024)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1400, file: !135, line: 2830, baseType: !632, size: 64, offset: 1088)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1400, file: !135, line: 2831, baseType: !632, size: 64, offset: 1152)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !635, file: !135, line: 3389, baseType: !1409, size: 1024)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !135, line: 2850, size: 1024, elements: !1410)
!1410 = !{!1411, !1412, !1413}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1409, file: !135, line: 2851, baseType: !803, size: 960)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1409, file: !135, line: 2852, baseType: !625, size: 32, offset: 960)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1409, file: !135, line: 2853, baseType: !625, size: 32, offset: 992)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !635, file: !135, line: 3390, baseType: !1415, size: 1024)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !135, line: 2857, size: 1024, elements: !1416)
!1416 = !{!1417, !1418}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1415, file: !135, line: 2858, baseType: !803, size: 960)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1415, file: !135, line: 2859, baseType: !1382, size: 64, offset: 960)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !635, file: !135, line: 3391, baseType: !1420, size: 960)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !135, line: 2862, size: 960, elements: !1421)
!1421 = !{!1422}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1420, file: !135, line: 2863, baseType: !803, size: 960)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !635, file: !135, line: 3392, baseType: !1424, size: 1472)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !135, line: 3304, size: 1472, elements: !1425)
!1425 = !{!1426}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1424, file: !135, line: 3305, baseType: !1349, size: 1472)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !635, file: !135, line: 3393, baseType: !1428, size: 1792)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !135, line: 3248, size: 1792, elements: !1429)
!1429 = !{!1430, !1431, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1428, file: !135, line: 3249, baseType: !1349, size: 1472)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1428, file: !135, line: 3251, baseType: !1432, size: 64, offset: 1472)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1434, line: 463, size: 1152, elements: !1435)
!1434 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1435 = !{!1436, !1595, !1626, !1627, !1681, !1689, !1690, !1691, !1692, !1693, !1694, !1718, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1433, file: !1434, line: 464, baseType: !1437, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !343, line: 194, size: 384, elements: !1439)
!1439 = !{!1440, !1489, !1502, !1516, !1564, !1576}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "region_tree", scope: !1438, file: !343, line: 197, baseType: !1441, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_region", file: !343, line: 182, baseType: !1442)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_d", file: !343, line: 116, size: 704, elements: !1444)
!1444 = !{!1445, !1446, !1447, !1448, !1449, !1450, !1477, !1486, !1487, !1488}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "outer", scope: !1443, file: !343, line: 119, baseType: !1442, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1443, file: !343, line: 122, baseType: !1442, size: 64, offset: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "next_peer", scope: !1443, file: !343, line: 123, baseType: !1442, size: 64, offset: 128)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1443, file: !343, line: 126, baseType: !625, size: 32, offset: 192)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1443, file: !343, line: 129, baseType: !342, size: 32, offset: 224)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1443, file: !343, line: 165, baseType: !1451, size: 192, offset: 256)
!1451 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_region_u", file: !343, line: 132, size: 192, elements: !1452)
!1452 = !{!1453, !1466, !1472}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "eh_try", scope: !1451, file: !343, line: 137, baseType: !1454, size: 128)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_try", file: !343, line: 133, size: 128, elements: !1455)
!1455 = !{!1456, !1465}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "first_catch", scope: !1454, file: !343, line: 135, baseType: !1457, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_catch_d", file: !343, line: 93, size: 320, elements: !1459)
!1459 = !{!1460, !1461, !1462, !1463, !1464}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "next_catch", scope: !1458, file: !343, line: 96, baseType: !1457, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "prev_catch", scope: !1458, file: !343, line: 97, baseType: !1457, size: 64, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1458, file: !343, line: 101, baseType: !632, size: 64, offset: 128)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "filter_list", scope: !1458, file: !343, line: 106, baseType: !632, size: 64, offset: 192)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1458, file: !343, line: 111, baseType: !632, size: 64, offset: 256)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "last_catch", scope: !1454, file: !343, line: 136, baseType: !1457, size: 64, offset: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !1451, file: !343, line: 151, baseType: !1467, size: 192)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_allowed", file: !343, line: 139, size: 192, elements: !1468)
!1468 = !{!1469, !1470, !1471}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1467, file: !343, line: 141, baseType: !632, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1467, file: !343, line: 145, baseType: !632, size: 64, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1467, file: !343, line: 150, baseType: !625, size: 32, offset: 128)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "must_not_throw", scope: !1451, file: !343, line: 164, baseType: !1473, size: 128)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_must_not_throw", file: !343, line: 153, size: 128, elements: !1474)
!1474 = !{!1475, !1476}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "failure_decl", scope: !1473, file: !343, line: 161, baseType: !632, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "failure_loc", scope: !1473, file: !343, line: 163, baseType: !757, size: 32, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pads", scope: !1443, file: !343, line: 168, baseType: !1478, size: 64, offset: 448)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_landing_pad_d", file: !343, line: 67, size: 320, elements: !1480)
!1480 = !{!1481, !1482, !1483, !1484, !1485}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "next_lp", scope: !1479, file: !343, line: 70, baseType: !1478, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1479, file: !343, line: 73, baseType: !1442, size: 64, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "post_landing_pad", scope: !1479, file: !343, line: 78, baseType: !632, size: 64, offset: 128)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pad", scope: !1479, file: !343, line: 85, baseType: !807, size: 64, offset: 192)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1479, file: !343, line: 88, baseType: !625, size: 32, offset: 256)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "exc_ptr_reg", scope: !1443, file: !343, line: 173, baseType: !807, size: 64, offset: 512)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "filter_reg", scope: !1443, file: !343, line: 173, baseType: !807, size: 64, offset: 576)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "use_cxa_end_cleanup", scope: !1443, file: !343, line: 177, baseType: !624, size: 8, offset: 640)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "region_array", scope: !1438, file: !343, line: 200, baseType: !1490, size: 64, offset: 64)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_gc", file: !343, line: 185, baseType: !1492)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_gc", file: !343, line: 185, size: 128, elements: !1493)
!1493 = !{!1494}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1492, file: !343, line: 185, baseType: !1495, size: 128)
!1495 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_base", file: !343, line: 184, baseType: !1496)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_base", file: !343, line: 184, size: 128, elements: !1497)
!1497 = !{!1498, !1499, !1500}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1496, file: !343, line: 184, baseType: !7, size: 32)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1496, file: !343, line: 184, baseType: !7, size: 32, offset: 32)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1496, file: !343, line: 184, baseType: !1501, size: 64, offset: 64)
!1501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1441, size: 64, elements: !731)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "lp_array", scope: !1438, file: !343, line: 203, baseType: !1503, size: 64, offset: 128)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_gc", file: !343, line: 189, baseType: !1505)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_gc", file: !343, line: 189, size: 128, elements: !1506)
!1506 = !{!1507}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1505, file: !343, line: 189, baseType: !1508, size: 128)
!1508 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_base", file: !343, line: 188, baseType: !1509)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_base", file: !343, line: 188, size: 128, elements: !1510)
!1510 = !{!1511, !1512, !1513}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1509, file: !343, line: 188, baseType: !7, size: 32)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1509, file: !343, line: 188, baseType: !7, size: 32, offset: 32)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1509, file: !343, line: 188, baseType: !1514, size: 64, offset: 64)
!1514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1515, size: 64, elements: !731)
!1515 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_landing_pad", file: !343, line: 180, baseType: !1478)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "throw_stmt_table", scope: !1438, file: !343, line: 207, baseType: !1517, size: 64, offset: 192)
!1517 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1518, line: 144, baseType: !1519)
!1518 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1518, line: 100, size: 896, elements: !1521)
!1521 = !{!1522, !1528, !1533, !1538, !1540, !1541, !1542, !1543, !1544, !1545, !1550, !1552, !1553, !1558, !1563}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1520, file: !1518, line: 102, baseType: !1523, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1518, line: 52, baseType: !1524)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!1527, !1317}
!1527 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1518, line: 47, baseType: !7)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1520, file: !1518, line: 105, baseType: !1529, size: 64, offset: 64)
!1529 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1518, line: 59, baseType: !1530)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!625, !1317, !1317}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1520, file: !1518, line: 108, baseType: !1534, size: 64, offset: 128)
!1534 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1518, line: 63, baseType: !1535)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{null, !629}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1520, file: !1518, line: 111, baseType: !1539, size: 64, offset: 192)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1520, file: !1518, line: 114, baseType: !1103, size: 64, offset: 256)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1520, file: !1518, line: 117, baseType: !1103, size: 64, offset: 320)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1520, file: !1518, line: 120, baseType: !1103, size: 64, offset: 384)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1520, file: !1518, line: 124, baseType: !7, size: 32, offset: 448)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1520, file: !1518, line: 128, baseType: !7, size: 32, offset: 480)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1520, file: !1518, line: 131, baseType: !1546, size: 64, offset: 512)
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1518, line: 75, baseType: !1547)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!629, !1103, !1103}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1520, file: !1518, line: 132, baseType: !1551, size: 64, offset: 576)
!1551 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1518, line: 78, baseType: !1535)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1520, file: !1518, line: 135, baseType: !629, size: 64, offset: 640)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1520, file: !1518, line: 136, baseType: !1554, size: 64, offset: 704)
!1554 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1518, line: 82, baseType: !1555)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!629, !629, !1103, !1103}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1520, file: !1518, line: 137, baseType: !1559, size: 64, offset: 768)
!1559 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1518, line: 83, baseType: !1560)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{null, !629, !629}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1520, file: !1518, line: 141, baseType: !7, size: 32, offset: 832)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "ttype_data", scope: !1438, file: !343, line: 211, baseType: !1565, size: 64, offset: 256)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !135, line: 183, baseType: !1567)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !135, line: 183, size: 128, elements: !1568)
!1568 = !{!1569}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1567, file: !135, line: 183, baseType: !1570, size: 128)
!1570 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !135, line: 182, baseType: !1571)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !135, line: 182, size: 128, elements: !1572)
!1572 = !{!1573, !1574, !1575}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1571, file: !135, line: 182, baseType: !7, size: 32)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1571, file: !135, line: 182, baseType: !7, size: 32, offset: 32)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1571, file: !135, line: 182, baseType: !1011, size: 64, offset: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "ehspec_data", scope: !1438, file: !343, line: 220, baseType: !1577, size: 64, offset: 320)
!1577 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_status_u", file: !343, line: 217, size: 64, elements: !1578)
!1578 = !{!1579, !1580}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "arm_eabi", scope: !1577, file: !343, line: 218, baseType: !1565, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !1577, file: !343, line: 219, baseType: !1581, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_gc", file: !1583, line: 29, baseType: !1584)
!1583 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_gc", file: !1583, line: 29, size: 96, elements: !1585)
!1585 = !{!1586}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1584, file: !1583, line: 29, baseType: !1587, size: 96)
!1587 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_base", file: !1583, line: 27, baseType: !1588)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_base", file: !1583, line: 27, size: 96, elements: !1589)
!1589 = !{!1590, !1591, !1592}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1588, file: !1583, line: 27, baseType: !7, size: 32)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1588, file: !1583, line: 27, baseType: !7, size: 32, offset: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1588, file: !1583, line: 27, baseType: !1593, size: 8, offset: 64)
!1593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1594, size: 8, elements: !731)
!1594 = !DIDerivedType(tag: DW_TAG_typedef, name: "uchar", file: !1583, line: 26, baseType: !624)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1433, file: !1434, line: 467, baseType: !1596, size: 64, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !350, line: 374, size: 640, elements: !1598)
!1598 = !{!1599, !1601, !1602, !1615, !1616, !1617, !1618, !1619, !1620, !1622, !1624, !1625}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1597, file: !350, line: 377, baseType: !1600, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !633, line: 111, baseType: !920)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1597, file: !350, line: 378, baseType: !1600, size: 64, offset: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1597, file: !350, line: 381, baseType: !1603, size: 64, offset: 128)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !350, line: 282, baseType: !1605)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !350, line: 282, size: 128, elements: !1606)
!1606 = !{!1607}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1605, file: !350, line: 282, baseType: !1608, size: 128)
!1608 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !350, line: 281, baseType: !1609)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !350, line: 281, size: 128, elements: !1610)
!1610 = !{!1611, !1612, !1613}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1609, file: !350, line: 281, baseType: !7, size: 32)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1609, file: !350, line: 281, baseType: !7, size: 32, offset: 32)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1609, file: !350, line: 281, baseType: !1614, size: 64, offset: 64)
!1614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1600, size: 64, elements: !731)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1597, file: !350, line: 384, baseType: !625, size: 32, offset: 192)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1597, file: !350, line: 387, baseType: !625, size: 32, offset: 224)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1597, file: !350, line: 390, baseType: !625, size: 32, offset: 256)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1597, file: !350, line: 394, baseType: !1603, size: 64, offset: 320)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1597, file: !350, line: 396, baseType: !349, size: 32, offset: 384)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1597, file: !350, line: 399, baseType: !1621, size: 64, offset: 416)
!1621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 64, elements: !875)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1597, file: !350, line: 402, baseType: !1623, size: 64, offset: 480)
!1623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !875)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1597, file: !350, line: 406, baseType: !625, size: 32, offset: 544)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1597, file: !350, line: 409, baseType: !625, size: 32, offset: 576)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1433, file: !1434, line: 470, baseType: !947, size: 64, offset: 128)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1433, file: !1434, line: 473, baseType: !1628, size: 64, offset: 192)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1384, line: 39, size: 1152, elements: !1630)
!1630 = !{!1631, !1632, !1645, !1646, !1647, !1659, !1660, !1663, !1664, !1665, !1666, !1667}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1629, file: !1384, line: 41, baseType: !1517, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1629, file: !1384, line: 48, baseType: !1633, size: 64, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !949, line: 35, baseType: !1635)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !949, line: 35, size: 128, elements: !1636)
!1636 = !{!1637}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1635, file: !949, line: 35, baseType: !1638, size: 128)
!1638 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !949, line: 33, baseType: !1639)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !949, line: 33, size: 128, elements: !1640)
!1640 = !{!1641, !1642, !1643}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1639, file: !949, line: 33, baseType: !7, size: 32)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1639, file: !949, line: 33, baseType: !7, size: 32, offset: 32)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1639, file: !949, line: 33, baseType: !1644, size: 64, offset: 64)
!1644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !957, size: 64, elements: !731)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1629, file: !1384, line: 51, baseType: !1565, size: 64, offset: 128)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1629, file: !1384, line: 54, baseType: !632, size: 64, offset: 192)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1629, file: !1384, line: 57, baseType: !1648, size: 128, offset: 256)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1649, line: 31, size: 128, elements: !1650)
!1649 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1650 = !{!1651, !1652, !1653, !1654, !1655, !1656, !1657}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1648, file: !1649, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1648, file: !1649, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1648, file: !1649, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1648, file: !1649, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1648, file: !1649, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1648, file: !1649, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1648, file: !1649, line: 56, baseType: !1658, size: 64, offset: 64)
!1658 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !633, line: 47, baseType: !859)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1629, file: !1384, line: 60, baseType: !1648, size: 128, offset: 384)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1629, file: !1384, line: 64, baseType: !1661, size: 64, offset: 512)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !343, line: 27, flags: DIFlagFwdDecl)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1629, file: !1384, line: 67, baseType: !632, size: 64, offset: 576)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1629, file: !1384, line: 73, baseType: !1517, size: 64, offset: 640)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1629, file: !1384, line: 77, baseType: !1658, size: 64, offset: 704)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1629, file: !1384, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1629, file: !1384, line: 82, baseType: !1668, size: 320, offset: 832)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !988, line: 62, size: 320, elements: !1669)
!1669 = !{!1670, !1676, !1677, !1678, !1679, !1680}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1668, file: !988, line: 63, baseType: !1671, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !988, line: 56, size: 128, elements: !1673)
!1673 = !{!1674, !1675}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1672, file: !988, line: 57, baseType: !1671, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1672, file: !988, line: 58, baseType: !730, size: 8, offset: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1668, file: !988, line: 64, baseType: !7, size: 32, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1668, file: !988, line: 66, baseType: !7, size: 32, offset: 96)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1668, file: !988, line: 68, baseType: !624, size: 8, offset: 128)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1668, file: !988, line: 70, baseType: !986, size: 64, offset: 192)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1668, file: !988, line: 71, baseType: !994, size: 64, offset: 256)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1433, file: !1434, line: 476, baseType: !1682, size: 64, offset: 256)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !330, line: 187, size: 256, elements: !1684)
!1684 = !{!1685, !1686, !1687, !1688}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1683, file: !330, line: 189, baseType: !625, size: 32)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "larray", scope: !1683, file: !330, line: 192, baseType: !1188, size: 64, offset: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1683, file: !330, line: 197, baseType: !1517, size: 64, offset: 128)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "tree_root", scope: !1683, file: !330, line: 200, baseType: !1173, size: 64, offset: 192)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1433, file: !1434, line: 479, baseType: !1517, size: 64, offset: 320)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1433, file: !1434, line: 484, baseType: !632, size: 64, offset: 384)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1433, file: !1434, line: 488, baseType: !632, size: 64, offset: 448)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1433, file: !1434, line: 493, baseType: !632, size: 64, offset: 512)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1433, file: !1434, line: 496, baseType: !632, size: 64, offset: 576)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1433, file: !1434, line: 501, baseType: !1695, size: 64, offset: 640)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !361, line: 2355, size: 576, elements: !1697)
!1697 = !{!1698, !1701, !1702, !1703, !1704, !1706, !1707, !1712, !1713, !1714, !1715, !1716, !1717}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1696, file: !361, line: 2356, baseType: !1699, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !361, line: 2356, flags: DIFlagFwdDecl)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1696, file: !361, line: 2357, baseType: !630, size: 64, offset: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1696, file: !361, line: 2358, baseType: !625, size: 32, offset: 128)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1696, file: !361, line: 2359, baseType: !625, size: 32, offset: 160)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1696, file: !361, line: 2360, baseType: !1705, size: 128, offset: 192)
!1705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !625, size: 128, elements: !899)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1696, file: !361, line: 2364, baseType: !625, size: 32, offset: 320)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1696, file: !361, line: 2367, baseType: !1708, size: 128, offset: 384)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !361, line: 2349, size: 128, elements: !1709)
!1709 = !{!1710, !1711}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1708, file: !361, line: 2351, baseType: !807, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1708, file: !361, line: 2352, baseType: !688, size: 64, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1696, file: !361, line: 2371, baseType: !360, size: 32, offset: 512)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1696, file: !361, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1696, file: !361, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1696, file: !361, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1696, file: !361, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1696, file: !361, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1433, file: !1434, line: 504, baseType: !1719, size: 64, offset: 704)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1434, line: 504, flags: DIFlagFwdDecl)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1433, file: !1434, line: 507, baseType: !1517, size: 64, offset: 768)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1433, file: !1434, line: 510, baseType: !625, size: 32, offset: 832)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1433, file: !1434, line: 513, baseType: !625, size: 32, offset: 864)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1433, file: !1434, line: 516, baseType: !757, size: 32, offset: 896)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1433, file: !1434, line: 519, baseType: !757, size: 32, offset: 928)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1433, file: !1434, line: 522, baseType: !7, size: 32, offset: 960)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1433, file: !1434, line: 523, baseType: !7, size: 32, offset: 992)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1433, file: !1434, line: 528, baseType: !630, size: 64, offset: 1024)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1433, file: !1434, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1433, file: !1434, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1433, file: !1434, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1433, file: !1434, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1433, file: !1434, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1433, file: !1434, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1433, file: !1434, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1433, file: !1434, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1433, file: !1434, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1433, file: !1434, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1433, file: !1434, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1433, file: !1434, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1433, file: !1434, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1433, file: !1434, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1433, file: !1434, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1433, file: !1434, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1428, file: !135, line: 3254, baseType: !632, size: 64, offset: 1536)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1428, file: !135, line: 3257, baseType: !632, size: 64, offset: 1600)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1428, file: !135, line: 3258, baseType: !632, size: 64, offset: 1664)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1428, file: !135, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1428, file: !135, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1428, file: !135, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1428, file: !135, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1428, file: !135, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1428, file: !135, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1428, file: !135, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1428, file: !135, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1428, file: !135, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1428, file: !135, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1428, file: !135, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1428, file: !135, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1428, file: !135, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1428, file: !135, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1428, file: !135, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1428, file: !135, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1428, file: !135, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1428, file: !135, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !635, file: !135, line: 3394, baseType: !1767, size: 1344)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !135, line: 2279, size: 1344, elements: !1768)
!1768 = !{!1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1767, file: !135, line: 2280, baseType: !671, size: 192)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1767, file: !135, line: 2281, baseType: !632, size: 64, offset: 192)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1767, file: !135, line: 2282, baseType: !632, size: 64, offset: 256)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1767, file: !135, line: 2283, baseType: !632, size: 64, offset: 320)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1767, file: !135, line: 2284, baseType: !632, size: 64, offset: 384)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1767, file: !135, line: 2285, baseType: !7, size: 32, offset: 448)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1767, file: !135, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1767, file: !135, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1767, file: !135, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1767, file: !135, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1767, file: !135, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1767, file: !135, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1767, file: !135, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1767, file: !135, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1767, file: !135, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1767, file: !135, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1767, file: !135, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1767, file: !135, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1767, file: !135, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1767, file: !135, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1767, file: !135, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1767, file: !135, line: 2305, baseType: !7, size: 32, offset: 512)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1767, file: !135, line: 2306, baseType: !1267, size: 32, offset: 544)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1767, file: !135, line: 2307, baseType: !632, size: 64, offset: 576)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1767, file: !135, line: 2308, baseType: !632, size: 64, offset: 640)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1767, file: !135, line: 2314, baseType: !1795, size: 64, offset: 704)
!1795 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !135, line: 2309, size: 64, elements: !1796)
!1796 = !{!1797, !1798, !1799}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1795, file: !135, line: 2310, baseType: !625, size: 32)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1795, file: !135, line: 2311, baseType: !630, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1795, file: !135, line: 2312, baseType: !1800, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !135, line: 2277, flags: DIFlagFwdDecl)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1767, file: !135, line: 2315, baseType: !632, size: 64, offset: 768)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1767, file: !135, line: 2316, baseType: !632, size: 64, offset: 832)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1767, file: !135, line: 2317, baseType: !632, size: 64, offset: 896)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1767, file: !135, line: 2318, baseType: !632, size: 64, offset: 960)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1767, file: !135, line: 2319, baseType: !632, size: 64, offset: 1024)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1767, file: !135, line: 2320, baseType: !632, size: 64, offset: 1088)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1767, file: !135, line: 2321, baseType: !632, size: 64, offset: 1152)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1767, file: !135, line: 2322, baseType: !632, size: 64, offset: 1216)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1767, file: !135, line: 2324, baseType: !1811, size: 64, offset: 1280)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !135, line: 2324, flags: DIFlagFwdDecl)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !635, file: !135, line: 3395, baseType: !1814, size: 320)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !135, line: 1469, size: 320, elements: !1815)
!1815 = !{!1816, !1817, !1818}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1814, file: !135, line: 1470, baseType: !671, size: 192)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1814, file: !135, line: 1471, baseType: !632, size: 64, offset: 192)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1814, file: !135, line: 1472, baseType: !632, size: 64, offset: 256)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !635, file: !135, line: 3396, baseType: !1820, size: 320)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !135, line: 1482, size: 320, elements: !1821)
!1821 = !{!1822, !1823, !1824}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1820, file: !135, line: 1483, baseType: !671, size: 192)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1820, file: !135, line: 1484, baseType: !625, size: 32, offset: 192)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1820, file: !135, line: 1485, baseType: !1011, size: 64, offset: 256)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !635, file: !135, line: 3397, baseType: !1826, size: 384)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !135, line: 1829, size: 384, elements: !1827)
!1827 = !{!1828, !1829, !1830, !1831}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1826, file: !135, line: 1830, baseType: !671, size: 192)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1826, file: !135, line: 1831, baseType: !757, size: 32, offset: 192)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1826, file: !135, line: 1832, baseType: !632, size: 64, offset: 256)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1826, file: !135, line: 1835, baseType: !1011, size: 64, offset: 320)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !635, file: !135, line: 3398, baseType: !1833, size: 704)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !135, line: 1898, size: 704, elements: !1834)
!1834 = !{!1835, !1836, !1837, !1838, !1839, !1844}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1833, file: !135, line: 1899, baseType: !671, size: 192)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1833, file: !135, line: 1902, baseType: !632, size: 64, offset: 192)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1833, file: !135, line: 1905, baseType: !957, size: 64, offset: 256)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1833, file: !135, line: 1908, baseType: !7, size: 32, offset: 320)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1833, file: !135, line: 1911, baseType: !1840, size: 64, offset: 384)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !1384, line: 117, size: 128, elements: !1842)
!1842 = !{!1843}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1841, file: !1384, line: 120, baseType: !1648, size: 128)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1833, file: !135, line: 1914, baseType: !999, size: 256, offset: 448)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !635, file: !135, line: 3399, baseType: !1846, size: 704)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !135, line: 2008, size: 704, elements: !1847)
!1847 = !{!1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1846, file: !135, line: 2009, baseType: !671, size: 192)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1846, file: !135, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1846, file: !135, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1846, file: !135, line: 2014, baseType: !757, size: 32, offset: 224)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1846, file: !135, line: 2016, baseType: !632, size: 64, offset: 256)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1846, file: !135, line: 2017, baseType: !1565, size: 64, offset: 320)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1846, file: !135, line: 2019, baseType: !632, size: 64, offset: 384)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1846, file: !135, line: 2020, baseType: !632, size: 64, offset: 448)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1846, file: !135, line: 2021, baseType: !632, size: 64, offset: 512)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1846, file: !135, line: 2022, baseType: !632, size: 64, offset: 576)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1846, file: !135, line: 2023, baseType: !632, size: 64, offset: 640)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !635, file: !135, line: 3400, baseType: !1860, size: 832)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !135, line: 2430, size: 832, elements: !1861)
!1861 = !{!1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1860, file: !135, line: 2431, baseType: !671, size: 192)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1860, file: !135, line: 2433, baseType: !632, size: 64, offset: 192)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1860, file: !135, line: 2434, baseType: !632, size: 64, offset: 256)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1860, file: !135, line: 2435, baseType: !632, size: 64, offset: 320)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1860, file: !135, line: 2436, baseType: !632, size: 64, offset: 384)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1860, file: !135, line: 2437, baseType: !1565, size: 64, offset: 448)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1860, file: !135, line: 2438, baseType: !632, size: 64, offset: 512)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1860, file: !135, line: 2440, baseType: !632, size: 64, offset: 576)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1860, file: !135, line: 2441, baseType: !632, size: 64, offset: 640)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1860, file: !135, line: 2443, baseType: !1872, size: 128, offset: 704)
!1872 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !135, line: 182, baseType: !1873)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !135, line: 182, size: 128, elements: !1874)
!1874 = !{!1875}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1873, file: !135, line: 182, baseType: !1570, size: 128)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !635, file: !135, line: 3401, baseType: !1877, size: 320)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !135, line: 3327, size: 320, elements: !1878)
!1878 = !{!1879, !1880, !1887}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1877, file: !135, line: 3329, baseType: !671, size: 192)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1877, file: !135, line: 3330, baseType: !1881, size: 64, offset: 192)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !135, line: 3320, size: 192, elements: !1883)
!1883 = !{!1884, !1885, !1886}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1882, file: !135, line: 3322, baseType: !1881, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1882, file: !135, line: 3323, baseType: !1881, size: 64, offset: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1882, file: !135, line: 3324, baseType: !632, size: 64, offset: 128)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1877, file: !135, line: 3331, baseType: !1881, size: 64, offset: 256)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !635, file: !135, line: 3402, baseType: !1889, size: 256)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !135, line: 1540, size: 256, elements: !1890)
!1890 = !{!1891, !1892}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1889, file: !135, line: 1541, baseType: !671, size: 192)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1889, file: !135, line: 1542, baseType: !1893, size: 64, offset: 192)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !135, line: 1538, baseType: !1895)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !135, line: 1538, size: 192, elements: !1896)
!1896 = !{!1897}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1895, file: !135, line: 1538, baseType: !1898, size: 192)
!1898 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !135, line: 1537, baseType: !1899)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !135, line: 1537, size: 192, elements: !1900)
!1900 = !{!1901, !1902, !1903}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1899, file: !135, line: 1537, baseType: !7, size: 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1899, file: !135, line: 1537, baseType: !7, size: 32, offset: 32)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1899, file: !135, line: 1537, baseType: !1904, size: 128, offset: 64)
!1904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1905, size: 128, elements: !731)
!1905 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !135, line: 1535, baseType: !1906)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !135, line: 1532, size: 128, elements: !1907)
!1907 = !{!1908, !1909}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1906, file: !135, line: 1533, baseType: !632, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1906, file: !135, line: 1534, baseType: !632, size: 64, offset: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !635, file: !135, line: 3403, baseType: !1911, size: 512)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !135, line: 1938, size: 512, elements: !1912)
!1912 = !{!1913, !1914, !1915, !1916, !1922, !1923, !1924}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1911, file: !135, line: 1939, baseType: !671, size: 192)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1911, file: !135, line: 1940, baseType: !757, size: 32, offset: 192)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1911, file: !135, line: 1941, baseType: !365, size: 32, offset: 224)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1911, file: !135, line: 1946, baseType: !1917, size: 32, offset: 256)
!1917 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !135, line: 1942, size: 32, elements: !1918)
!1918 = !{!1919, !1920, !1921}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1917, file: !135, line: 1943, baseType: !383, size: 32)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1917, file: !135, line: 1944, baseType: !390, size: 32)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1917, file: !135, line: 1945, baseType: !134, size: 32)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1911, file: !135, line: 1950, baseType: !946, size: 64, offset: 320)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1911, file: !135, line: 1951, baseType: !946, size: 64, offset: 384)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1911, file: !135, line: 1953, baseType: !1011, size: 64, offset: 448)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !635, file: !135, line: 3404, baseType: !1926, size: 1664)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !135, line: 3337, size: 1664, elements: !1927)
!1927 = !{!1928, !1929}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1926, file: !135, line: 3338, baseType: !671, size: 192)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1926, file: !135, line: 3341, baseType: !1930, size: 1472, offset: 192)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1931, line: 410, size: 1472, elements: !1932)
!1931 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1932 = !{!1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1930, file: !1931, line: 412, baseType: !625, size: 32)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1930, file: !1931, line: 413, baseType: !625, size: 32, offset: 32)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1930, file: !1931, line: 414, baseType: !625, size: 32, offset: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1930, file: !1931, line: 415, baseType: !625, size: 32, offset: 96)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1930, file: !1931, line: 416, baseType: !625, size: 32, offset: 128)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1930, file: !1931, line: 417, baseType: !625, size: 32, offset: 160)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1930, file: !1931, line: 418, baseType: !624, size: 8, offset: 192)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1930, file: !1931, line: 419, baseType: !624, size: 8, offset: 200)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1930, file: !1931, line: 420, baseType: !1942, size: 8, offset: 208)
!1942 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1930, file: !1931, line: 421, baseType: !1942, size: 8, offset: 216)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1930, file: !1931, line: 422, baseType: !1942, size: 8, offset: 224)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1930, file: !1931, line: 423, baseType: !1942, size: 8, offset: 232)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1930, file: !1931, line: 424, baseType: !1942, size: 8, offset: 240)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1930, file: !1931, line: 425, baseType: !1942, size: 8, offset: 248)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1930, file: !1931, line: 426, baseType: !1942, size: 8, offset: 256)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1930, file: !1931, line: 427, baseType: !1942, size: 8, offset: 264)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1930, file: !1931, line: 428, baseType: !1942, size: 8, offset: 272)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1930, file: !1931, line: 429, baseType: !1942, size: 8, offset: 280)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1930, file: !1931, line: 430, baseType: !1942, size: 8, offset: 288)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1930, file: !1931, line: 431, baseType: !1942, size: 8, offset: 296)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1930, file: !1931, line: 432, baseType: !1942, size: 8, offset: 304)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1930, file: !1931, line: 433, baseType: !1942, size: 8, offset: 312)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1930, file: !1931, line: 434, baseType: !1942, size: 8, offset: 320)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1930, file: !1931, line: 435, baseType: !1942, size: 8, offset: 328)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1930, file: !1931, line: 436, baseType: !1942, size: 8, offset: 336)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1930, file: !1931, line: 437, baseType: !1942, size: 8, offset: 344)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1930, file: !1931, line: 438, baseType: !1942, size: 8, offset: 352)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1930, file: !1931, line: 439, baseType: !1942, size: 8, offset: 360)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1930, file: !1931, line: 440, baseType: !1942, size: 8, offset: 368)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1930, file: !1931, line: 441, baseType: !1942, size: 8, offset: 376)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1930, file: !1931, line: 442, baseType: !1942, size: 8, offset: 384)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1930, file: !1931, line: 443, baseType: !1942, size: 8, offset: 392)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1930, file: !1931, line: 444, baseType: !1942, size: 8, offset: 400)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1930, file: !1931, line: 445, baseType: !1942, size: 8, offset: 408)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1930, file: !1931, line: 446, baseType: !1942, size: 8, offset: 416)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1930, file: !1931, line: 447, baseType: !1942, size: 8, offset: 424)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1930, file: !1931, line: 448, baseType: !1942, size: 8, offset: 432)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1930, file: !1931, line: 449, baseType: !1942, size: 8, offset: 440)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1930, file: !1931, line: 450, baseType: !1942, size: 8, offset: 448)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1930, file: !1931, line: 451, baseType: !1942, size: 8, offset: 456)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1930, file: !1931, line: 452, baseType: !1942, size: 8, offset: 464)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1930, file: !1931, line: 453, baseType: !1942, size: 8, offset: 472)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1930, file: !1931, line: 454, baseType: !1942, size: 8, offset: 480)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1930, file: !1931, line: 455, baseType: !1942, size: 8, offset: 488)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1930, file: !1931, line: 456, baseType: !1942, size: 8, offset: 496)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1930, file: !1931, line: 457, baseType: !1942, size: 8, offset: 504)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1930, file: !1931, line: 458, baseType: !1942, size: 8, offset: 512)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1930, file: !1931, line: 459, baseType: !1942, size: 8, offset: 520)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1930, file: !1931, line: 460, baseType: !1942, size: 8, offset: 528)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1930, file: !1931, line: 461, baseType: !1942, size: 8, offset: 536)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1930, file: !1931, line: 462, baseType: !1942, size: 8, offset: 544)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1930, file: !1931, line: 463, baseType: !1942, size: 8, offset: 552)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1930, file: !1931, line: 464, baseType: !1942, size: 8, offset: 560)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1930, file: !1931, line: 465, baseType: !1942, size: 8, offset: 568)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1930, file: !1931, line: 466, baseType: !1942, size: 8, offset: 576)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1930, file: !1931, line: 467, baseType: !1942, size: 8, offset: 584)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1930, file: !1931, line: 468, baseType: !1942, size: 8, offset: 592)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1930, file: !1931, line: 469, baseType: !1942, size: 8, offset: 600)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1930, file: !1931, line: 470, baseType: !1942, size: 8, offset: 608)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1930, file: !1931, line: 471, baseType: !1942, size: 8, offset: 616)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1930, file: !1931, line: 472, baseType: !1942, size: 8, offset: 624)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1930, file: !1931, line: 473, baseType: !1942, size: 8, offset: 632)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1930, file: !1931, line: 474, baseType: !1942, size: 8, offset: 640)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1930, file: !1931, line: 475, baseType: !1942, size: 8, offset: 648)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1930, file: !1931, line: 476, baseType: !1942, size: 8, offset: 656)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1930, file: !1931, line: 477, baseType: !1942, size: 8, offset: 664)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1930, file: !1931, line: 478, baseType: !1942, size: 8, offset: 672)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1930, file: !1931, line: 479, baseType: !1942, size: 8, offset: 680)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1930, file: !1931, line: 480, baseType: !1942, size: 8, offset: 688)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1930, file: !1931, line: 481, baseType: !1942, size: 8, offset: 696)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1930, file: !1931, line: 482, baseType: !1942, size: 8, offset: 704)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1930, file: !1931, line: 483, baseType: !1942, size: 8, offset: 712)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1930, file: !1931, line: 484, baseType: !1942, size: 8, offset: 720)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1930, file: !1931, line: 485, baseType: !1942, size: 8, offset: 728)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1930, file: !1931, line: 486, baseType: !1942, size: 8, offset: 736)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1930, file: !1931, line: 487, baseType: !1942, size: 8, offset: 744)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1930, file: !1931, line: 488, baseType: !1942, size: 8, offset: 752)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1930, file: !1931, line: 489, baseType: !1942, size: 8, offset: 760)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1930, file: !1931, line: 490, baseType: !1942, size: 8, offset: 768)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1930, file: !1931, line: 491, baseType: !1942, size: 8, offset: 776)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1930, file: !1931, line: 492, baseType: !1942, size: 8, offset: 784)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1930, file: !1931, line: 493, baseType: !1942, size: 8, offset: 792)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1930, file: !1931, line: 494, baseType: !1942, size: 8, offset: 800)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1930, file: !1931, line: 495, baseType: !1942, size: 8, offset: 808)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1930, file: !1931, line: 496, baseType: !1942, size: 8, offset: 816)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1930, file: !1931, line: 497, baseType: !1942, size: 8, offset: 824)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1930, file: !1931, line: 498, baseType: !1942, size: 8, offset: 832)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1930, file: !1931, line: 499, baseType: !1942, size: 8, offset: 840)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1930, file: !1931, line: 500, baseType: !1942, size: 8, offset: 848)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1930, file: !1931, line: 501, baseType: !1942, size: 8, offset: 856)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1930, file: !1931, line: 502, baseType: !1942, size: 8, offset: 864)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1930, file: !1931, line: 503, baseType: !1942, size: 8, offset: 872)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1930, file: !1931, line: 504, baseType: !1942, size: 8, offset: 880)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1930, file: !1931, line: 505, baseType: !1942, size: 8, offset: 888)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1930, file: !1931, line: 506, baseType: !1942, size: 8, offset: 896)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1930, file: !1931, line: 507, baseType: !1942, size: 8, offset: 904)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1930, file: !1931, line: 508, baseType: !1942, size: 8, offset: 912)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1930, file: !1931, line: 509, baseType: !1942, size: 8, offset: 920)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1930, file: !1931, line: 510, baseType: !1942, size: 8, offset: 928)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1930, file: !1931, line: 511, baseType: !1942, size: 8, offset: 936)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1930, file: !1931, line: 512, baseType: !1942, size: 8, offset: 944)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1930, file: !1931, line: 513, baseType: !1942, size: 8, offset: 952)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1930, file: !1931, line: 514, baseType: !1942, size: 8, offset: 960)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1930, file: !1931, line: 515, baseType: !1942, size: 8, offset: 968)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1930, file: !1931, line: 516, baseType: !1942, size: 8, offset: 976)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1930, file: !1931, line: 517, baseType: !1942, size: 8, offset: 984)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1930, file: !1931, line: 518, baseType: !1942, size: 8, offset: 992)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1930, file: !1931, line: 519, baseType: !1942, size: 8, offset: 1000)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1930, file: !1931, line: 520, baseType: !1942, size: 8, offset: 1008)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1930, file: !1931, line: 521, baseType: !1942, size: 8, offset: 1016)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1930, file: !1931, line: 522, baseType: !1942, size: 8, offset: 1024)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1930, file: !1931, line: 523, baseType: !1942, size: 8, offset: 1032)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1930, file: !1931, line: 524, baseType: !1942, size: 8, offset: 1040)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1930, file: !1931, line: 525, baseType: !1942, size: 8, offset: 1048)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1930, file: !1931, line: 526, baseType: !1942, size: 8, offset: 1056)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1930, file: !1931, line: 527, baseType: !1942, size: 8, offset: 1064)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1930, file: !1931, line: 528, baseType: !1942, size: 8, offset: 1072)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1930, file: !1931, line: 529, baseType: !1942, size: 8, offset: 1080)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1930, file: !1931, line: 530, baseType: !1942, size: 8, offset: 1088)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1930, file: !1931, line: 531, baseType: !1942, size: 8, offset: 1096)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1930, file: !1931, line: 532, baseType: !1942, size: 8, offset: 1104)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1930, file: !1931, line: 533, baseType: !1942, size: 8, offset: 1112)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1930, file: !1931, line: 534, baseType: !1942, size: 8, offset: 1120)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1930, file: !1931, line: 535, baseType: !1942, size: 8, offset: 1128)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1930, file: !1931, line: 536, baseType: !1942, size: 8, offset: 1136)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1930, file: !1931, line: 537, baseType: !1942, size: 8, offset: 1144)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1930, file: !1931, line: 538, baseType: !1942, size: 8, offset: 1152)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1930, file: !1931, line: 539, baseType: !1942, size: 8, offset: 1160)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1930, file: !1931, line: 540, baseType: !1942, size: 8, offset: 1168)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1930, file: !1931, line: 541, baseType: !1942, size: 8, offset: 1176)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1930, file: !1931, line: 542, baseType: !1942, size: 8, offset: 1184)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1930, file: !1931, line: 543, baseType: !1942, size: 8, offset: 1192)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1930, file: !1931, line: 544, baseType: !1942, size: 8, offset: 1200)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1930, file: !1931, line: 545, baseType: !1942, size: 8, offset: 1208)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1930, file: !1931, line: 546, baseType: !1942, size: 8, offset: 1216)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1930, file: !1931, line: 547, baseType: !1942, size: 8, offset: 1224)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1930, file: !1931, line: 548, baseType: !1942, size: 8, offset: 1232)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1930, file: !1931, line: 549, baseType: !1942, size: 8, offset: 1240)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1930, file: !1931, line: 550, baseType: !1942, size: 8, offset: 1248)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1930, file: !1931, line: 551, baseType: !1942, size: 8, offset: 1256)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1930, file: !1931, line: 552, baseType: !1942, size: 8, offset: 1264)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1930, file: !1931, line: 553, baseType: !1942, size: 8, offset: 1272)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1930, file: !1931, line: 554, baseType: !1942, size: 8, offset: 1280)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1930, file: !1931, line: 555, baseType: !1942, size: 8, offset: 1288)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1930, file: !1931, line: 556, baseType: !1942, size: 8, offset: 1296)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1930, file: !1931, line: 557, baseType: !1942, size: 8, offset: 1304)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1930, file: !1931, line: 558, baseType: !1942, size: 8, offset: 1312)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1930, file: !1931, line: 559, baseType: !1942, size: 8, offset: 1320)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1930, file: !1931, line: 560, baseType: !1942, size: 8, offset: 1328)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1930, file: !1931, line: 561, baseType: !1942, size: 8, offset: 1336)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1930, file: !1931, line: 562, baseType: !1942, size: 8, offset: 1344)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1930, file: !1931, line: 563, baseType: !1942, size: 8, offset: 1352)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1930, file: !1931, line: 564, baseType: !1942, size: 8, offset: 1360)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1930, file: !1931, line: 565, baseType: !1942, size: 8, offset: 1368)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1930, file: !1931, line: 566, baseType: !1942, size: 8, offset: 1376)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1930, file: !1931, line: 567, baseType: !1942, size: 8, offset: 1384)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1930, file: !1931, line: 568, baseType: !1942, size: 8, offset: 1392)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1930, file: !1931, line: 569, baseType: !1942, size: 8, offset: 1400)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1930, file: !1931, line: 570, baseType: !1942, size: 8, offset: 1408)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1930, file: !1931, line: 571, baseType: !1942, size: 8, offset: 1416)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1930, file: !1931, line: 572, baseType: !1942, size: 8, offset: 1424)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1930, file: !1931, line: 573, baseType: !1942, size: 8, offset: 1432)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1930, file: !1931, line: 574, baseType: !1942, size: 8, offset: 1440)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !635, file: !135, line: 3405, baseType: !2098, size: 384)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !135, line: 3352, size: 384, elements: !2099)
!2099 = !{!2100, !2101}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2098, file: !135, line: 3353, baseType: !671, size: 192)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !2098, file: !135, line: 3356, baseType: !2102, size: 192, offset: 192)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1931, line: 578, size: 192, elements: !2103)
!2103 = !{!2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !2102, file: !1931, line: 580, baseType: !625, size: 32)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !2102, file: !1931, line: 581, baseType: !625, size: 32, offset: 32)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !2102, file: !1931, line: 582, baseType: !625, size: 32, offset: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !2102, file: !1931, line: 583, baseType: !625, size: 32, offset: 96)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2102, file: !1931, line: 584, baseType: !624, size: 8, offset: 128)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !2102, file: !1931, line: 585, baseType: !624, size: 8, offset: 136)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !2102, file: !1931, line: 586, baseType: !624, size: 8, offset: 144)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !2102, file: !1931, line: 587, baseType: !624, size: 8, offset: 152)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !2102, file: !1931, line: 588, baseType: !624, size: 8, offset: 160)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !2102, file: !1931, line: 589, baseType: !624, size: 8, offset: 168)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !2102, file: !1931, line: 590, baseType: !624, size: 8, offset: 176)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_node", file: !600, line: 181, size: 2496, elements: !2118)
!2118 = !{!2119, !2120, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2260, !2315, !2325, !2329, !2355, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !2117, file: !600, line: 182, baseType: !632, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "callees", scope: !2117, file: !600, line: 183, baseType: !2121, size: 64, offset: 64)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_edge", file: !600, line: 314, size: 768, elements: !2123)
!2123 = !{!2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2135, !2136, !2137, !2138, !2140, !2141, !2142}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2122, file: !600, line: 316, baseType: !1169, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2122, file: !600, line: 317, baseType: !2116, size: 64, offset: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "callee", scope: !2122, file: !600, line: 318, baseType: !2116, size: 64, offset: 128)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "prev_caller", scope: !2122, file: !600, line: 319, baseType: !2121, size: 64, offset: 192)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "next_caller", scope: !2122, file: !600, line: 320, baseType: !2121, size: 64, offset: 256)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "prev_callee", scope: !2122, file: !600, line: 321, baseType: !2121, size: 64, offset: 320)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "next_callee", scope: !2122, file: !600, line: 322, baseType: !2121, size: 64, offset: 384)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "call_stmt", scope: !2122, file: !600, line: 323, baseType: !957, size: 64, offset: 448)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !2122, file: !600, line: 324, baseType: !629, size: 64, offset: 512)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "inline_failed", scope: !2122, file: !600, line: 327, baseType: !2134, size: 32, offset: 576)
!2134 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_inline_failed_t", file: !600, line: 312, baseType: !599)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "lto_stmt_uid", scope: !2122, file: !600, line: 330, baseType: !7, size: 32, offset: 608)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !2122, file: !600, line: 334, baseType: !625, size: 32, offset: 640)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2122, file: !600, line: 336, baseType: !625, size: 32, offset: 672)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "loop_nest", scope: !2122, file: !600, line: 338, baseType: !2139, size: 16, offset: 704)
!2139 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "indirect_call", scope: !2122, file: !600, line: 340, baseType: !7, size: 1, offset: 720, flags: DIFlagBitField, extraData: i64 720)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "call_stmt_cannot_inline_p", scope: !2122, file: !600, line: 342, baseType: !7, size: 1, offset: 721, flags: DIFlagBitField, extraData: i64 720)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "can_throw_external", scope: !2122, file: !600, line: 344, baseType: !7, size: 1, offset: 722, flags: DIFlagBitField, extraData: i64 720)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "callers", scope: !2117, file: !600, line: 184, baseType: !2121, size: 64, offset: 128)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2117, file: !600, line: 185, baseType: !2116, size: 64, offset: 192)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !2117, file: !600, line: 186, baseType: !2116, size: 64, offset: 256)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !2117, file: !600, line: 188, baseType: !2116, size: 64, offset: 320)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2117, file: !600, line: 190, baseType: !2116, size: 64, offset: 384)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "next_nested", scope: !2117, file: !600, line: 192, baseType: !2116, size: 64, offset: 448)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "next_needed", scope: !2117, file: !600, line: 194, baseType: !2116, size: 64, offset: 512)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "next_sibling_clone", scope: !2117, file: !600, line: 196, baseType: !2116, size: 64, offset: 576)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sibling_clone", scope: !2117, file: !600, line: 197, baseType: !2116, size: 64, offset: 640)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "clones", scope: !2117, file: !600, line: 198, baseType: !2116, size: 64, offset: 704)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "clone_of", scope: !2117, file: !600, line: 199, baseType: !2116, size: 64, offset: 768)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "same_body", scope: !2117, file: !600, line: 202, baseType: !2116, size: 64, offset: 832)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "same_comdat_group", scope: !2117, file: !600, line: 204, baseType: !2116, size: 64, offset: 896)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "call_site_hash", scope: !2117, file: !600, line: 207, baseType: !1517, size: 64, offset: 960)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !2117, file: !600, line: 209, baseType: !629, size: 64, offset: 1024)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "ipa_transforms_to_apply", scope: !2117, file: !600, line: 214, baseType: !2159, size: 64, offset: 1088)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_opt_pass_heap", file: !1434, line: 177, baseType: !2161)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_opt_pass_heap", file: !1434, line: 177, size: 128, elements: !2162)
!2162 = !{!2163}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2161, file: !1434, line: 177, baseType: !2164, size: 128)
!2164 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_opt_pass_base", file: !1434, line: 176, baseType: !2165)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_opt_pass_base", file: !1434, line: 176, size: 128, elements: !2166)
!2166 = !{!2167, !2168, !2169}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2165, file: !1434, line: 176, baseType: !7, size: 32)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2165, file: !1434, line: 176, baseType: !7, size: 32, offset: 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2165, file: !1434, line: 176, baseType: !2170, size: 64, offset: 64)
!2170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2171, size: 64, elements: !731)
!2171 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_opt_pass", file: !1434, line: 174, baseType: !2172)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_opt_pass_d", file: !398, line: 173, size: 1152, elements: !2174)
!2174 = !{!2175, !2199, !2203, !2226, !2227, !2231, !2236, !2237, !2241}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !2173, file: !398, line: 175, baseType: !2176, size: 640)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !398, line: 114, size: 640, elements: !2177)
!2177 = !{!2178, !2179, !2180, !2184, !2188, !2190, !2191, !2192, !2194, !2195, !2196, !2197, !2198}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2176, file: !398, line: 117, baseType: !397, size: 32)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2176, file: !398, line: 121, baseType: !630, size: 64, offset: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !2176, file: !398, line: 125, baseType: !2181, size: 64, offset: 128)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!624}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !2176, file: !398, line: 130, baseType: !2185, size: 64, offset: 192)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!7}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !2176, file: !398, line: 133, baseType: !2189, size: 64, offset: 256)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2176, file: !398, line: 136, baseType: !2189, size: 64, offset: 320)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !2176, file: !398, line: 139, baseType: !625, size: 32, offset: 384)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !2176, file: !398, line: 143, baseType: !2193, size: 32, offset: 416)
!2193 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !405, line: 80, baseType: !404)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !2176, file: !398, line: 146, baseType: !7, size: 32, offset: 448)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !2176, file: !398, line: 147, baseType: !7, size: 32, offset: 480)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !2176, file: !398, line: 148, baseType: !7, size: 32, offset: 512)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !2176, file: !398, line: 151, baseType: !7, size: 32, offset: 544)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !2176, file: !398, line: 152, baseType: !7, size: 32, offset: 576)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "generate_summary", scope: !2173, file: !398, line: 179, baseType: !2200, size: 64, offset: 640)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{null}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "write_summary", scope: !2173, file: !398, line: 182, baseType: !2204, size: 64, offset: 704)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{null, !2207}
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_node_set_def", file: !600, line: 276, size: 192, elements: !2209)
!2209 = !{!2210, !2211, !2225}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "hashtab", scope: !2208, file: !600, line: 278, baseType: !1517, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !2208, file: !600, line: 279, baseType: !2212, size: 64, offset: 64)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_gc", file: !600, line: 272, baseType: !2214)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_gc", file: !600, line: 272, size: 128, elements: !2215)
!2215 = !{!2216}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2214, file: !600, line: 272, baseType: !2217, size: 128)
!2217 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_base", file: !600, line: 270, baseType: !2218)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_base", file: !600, line: 270, size: 128, elements: !2219)
!2219 = !{!2220, !2221, !2222}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2218, file: !600, line: 270, baseType: !7, size: 32)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2218, file: !600, line: 270, baseType: !7, size: 32, offset: 32)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2218, file: !600, line: 270, baseType: !2223, size: 64, offset: 64)
!2223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2224, size: 64, elements: !731)
!2224 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_node_ptr", file: !600, line: 268, baseType: !2116)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !2208, file: !600, line: 280, baseType: !629, size: 64, offset: 128)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "read_summary", scope: !2173, file: !398, line: 187, baseType: !2200, size: 64, offset: 768)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "function_read_summary", scope: !2173, file: !398, line: 188, baseType: !2228, size: 64, offset: 832)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{null, !2116}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_fixup", scope: !2173, file: !398, line: 191, baseType: !2232, size: 64, offset: 896)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{null, !2116, !2235}
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "function_transform_todo_flags_start", scope: !2173, file: !398, line: 195, baseType: !7, size: 32, offset: 960)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "function_transform", scope: !2173, file: !398, line: 196, baseType: !2238, size: 64, offset: 1024)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!7, !2116}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "variable_transform", scope: !2173, file: !398, line: 197, baseType: !2242, size: 64, offset: 1088)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{null, !2245}
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varpool_node", file: !600, line: 358, size: 320, elements: !2247)
!2247 = !{!2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !2246, file: !600, line: 359, baseType: !632, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2246, file: !600, line: 361, baseType: !2245, size: 64, offset: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "next_needed", scope: !2246, file: !600, line: 363, baseType: !2245, size: 64, offset: 128)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "extra_name", scope: !2246, file: !600, line: 366, baseType: !2245, size: 64, offset: 192)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !2246, file: !600, line: 368, baseType: !625, size: 32, offset: 256)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "needed", scope: !2246, file: !600, line: 372, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "force_output", scope: !2246, file: !600, line: 375, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "analyzed", scope: !2246, file: !600, line: 378, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "finalized", scope: !2246, file: !600, line: 380, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !2246, file: !600, line: 382, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "externally_visible", scope: !2246, file: !600, line: 384, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !2246, file: !600, line: 387, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !2117, file: !600, line: 216, baseType: !2261, size: 320, offset: 1152)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_local_info", file: !600, line: 88, size: 320, elements: !2262)
!2262 = !{!2263, !2299, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "lto_file_data", scope: !2261, file: !600, line: 90, baseType: !2264, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_file_decl_data", file: !2266, line: 540, size: 512, elements: !2267)
!2266 = !DIFile(filename: "./lto-streamer.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2267 = !{!2268, !2281, !2282, !2294, !2295, !2296, !2297, !2298}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "current_decl_state", scope: !2265, file: !2266, line: 543, baseType: !2269, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_in_decl_state", file: !2266, line: 502, size: 960, elements: !2271)
!2271 = !{!2272, !2280}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !2270, file: !2266, line: 505, baseType: !2273, size: 896)
!2273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2274, size: 896, elements: !2278)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_tree_ref_table", file: !2266, line: 473, size: 128, elements: !2275)
!2275 = !{!2276, !2277}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "trees", scope: !2274, file: !2266, line: 476, baseType: !992, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2274, file: !2266, line: 479, baseType: !7, size: 32, offset: 64)
!2278 = !{!2279}
!2279 = !DISubrange(count: 7)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "fn_decl", scope: !2270, file: !2266, line: 509, baseType: !632, size: 64, offset: 896)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "global_decl_state", scope: !2265, file: !2266, line: 547, baseType: !2269, size: 64, offset: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "cgraph_node_encoder", scope: !2265, file: !2266, line: 550, baseType: !2283, size: 64, offset: 128)
!2283 = !DIDerivedType(tag: DW_TAG_typedef, name: "lto_cgraph_encoder_t", file: !2266, line: 470, baseType: !2284)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_cgraph_encoder_d", file: !2266, line: 461, size: 128, elements: !2286)
!2286 = !{!2287, !2288}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !2285, file: !2266, line: 464, baseType: !1661, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !2285, file: !2266, line: 467, baseType: !2289, size: 64, offset: 64)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_heap", file: !600, line: 271, baseType: !2291)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_heap", file: !600, line: 271, size: 128, elements: !2292)
!2292 = !{!2293}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2291, file: !600, line: 271, baseType: !2217, size: 128)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl_states", scope: !2265, file: !2266, line: 553, baseType: !1517, size: 64, offset: 192)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "file_name", scope: !2265, file: !2266, line: 556, baseType: !630, size: 64, offset: 256)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "needs_ltrans_p", scope: !2265, file: !2266, line: 559, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "section_hash_table", scope: !2265, file: !2266, line: 562, baseType: !1517, size: 64, offset: 384)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "renaming_hash_table", scope: !2265, file: !2266, line: 565, baseType: !1517, size: 64, offset: 448)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "inline_summary", scope: !2261, file: !600, line: 92, baseType: !2300, size: 192, offset: 64)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inline_summary", file: !600, line: 57, size: 192, elements: !2301)
!2301 = !{!2302, !2303, !2304, !2305, !2306}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_self_stack_size", scope: !2300, file: !600, line: 60, baseType: !688, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "self_size", scope: !2300, file: !600, line: 63, baseType: !625, size: 32, offset: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "size_inlining_benefit", scope: !2300, file: !600, line: 65, baseType: !625, size: 32, offset: 96)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "self_time", scope: !2300, file: !600, line: 67, baseType: !625, size: 32, offset: 128)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "time_inlining_benefit", scope: !2300, file: !600, line: 69, baseType: !625, size: 32, offset: 160)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !2261, file: !600, line: 96, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "externally_visible", scope: !2261, file: !600, line: 99, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "finalized", scope: !2261, file: !600, line: 102, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "inlinable", scope: !2261, file: !600, line: 105, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !2261, file: !600, line: 108, baseType: !7, size: 1, offset: 260, flags: DIFlagBitField, extraData: i64 256)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "redefined_extern_inline", scope: !2261, file: !600, line: 112, baseType: !7, size: 1, offset: 261, flags: DIFlagBitField, extraData: i64 256)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "for_functions_valid", scope: !2261, file: !600, line: 116, baseType: !7, size: 1, offset: 262, flags: DIFlagBitField, extraData: i64 256)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "vtable_method", scope: !2261, file: !600, line: 120, baseType: !7, size: 1, offset: 263, flags: DIFlagBitField, extraData: i64 256)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !2117, file: !600, line: 217, baseType: !2316, size: 320, offset: 1472)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_global_info", file: !600, line: 126, size: 320, elements: !2317)
!2317 = !{!2318, !2319, !2320, !2321, !2322, !2323, !2324}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_stack_size", scope: !2316, file: !600, line: 128, baseType: !688, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "stack_frame_offset", scope: !2316, file: !600, line: 130, baseType: !688, size: 64, offset: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "inlined_to", scope: !2316, file: !600, line: 134, baseType: !2116, size: 64, offset: 128)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2316, file: !600, line: 137, baseType: !625, size: 32, offset: 192)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2316, file: !600, line: 138, baseType: !625, size: 32, offset: 224)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_growth", scope: !2316, file: !600, line: 141, baseType: !625, size: 32, offset: 256)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "inlined", scope: !2316, file: !600, line: 144, baseType: !624, size: 8, offset: 288)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !2117, file: !600, line: 218, baseType: !2326, size: 32, offset: 1792)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_rtl_info", file: !600, line: 150, size: 32, elements: !2327)
!2327 = !{!2328}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_incoming_stack_boundary", scope: !2326, file: !600, line: 151, baseType: !7, size: 32)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "clone", scope: !2117, file: !600, line: 219, baseType: !2330, size: 192, offset: 1856)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_clone_info", file: !600, line: 171, size: 192, elements: !2331)
!2331 = !{!2332, !2353, !2354}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "tree_map", scope: !2330, file: !600, line: 173, baseType: !2333, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_replace_map_p_gc", file: !600, line: 169, baseType: !2335)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_replace_map_p_gc", file: !600, line: 169, size: 128, elements: !2336)
!2336 = !{!2337}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2335, file: !600, line: 169, baseType: !2338, size: 128)
!2338 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_replace_map_p_base", file: !600, line: 168, baseType: !2339)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_replace_map_p_base", file: !600, line: 168, size: 128, elements: !2340)
!2340 = !{!2341, !2342, !2343}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2339, file: !600, line: 168, baseType: !7, size: 32)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2339, file: !600, line: 168, baseType: !7, size: 32, offset: 32)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2339, file: !600, line: 168, baseType: !2344, size: 64, offset: 64)
!2344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2345, size: 64, elements: !731)
!2345 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_replace_map_p", file: !600, line: 167, baseType: !2346)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_replace_map", file: !600, line: 156, size: 192, elements: !2348)
!2348 = !{!2349, !2350, !2351, !2352}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "old_tree", scope: !2347, file: !600, line: 159, baseType: !632, size: 64)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "new_tree", scope: !2347, file: !600, line: 161, baseType: !632, size: 64, offset: 64)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "replace_p", scope: !2347, file: !600, line: 163, baseType: !624, size: 8, offset: 128)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "ref_p", scope: !2347, file: !600, line: 165, baseType: !624, size: 8, offset: 136)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "args_to_skip", scope: !2330, file: !600, line: 174, baseType: !1658, size: 64, offset: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "combined_args_to_skip", scope: !2330, file: !600, line: 175, baseType: !1658, size: 64, offset: 128)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "thunk", scope: !2117, file: !600, line: 220, baseType: !2356, size: 256, offset: 2048)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_thunk_info", file: !600, line: 74, size: 256, elements: !2357)
!2357 = !{!2358, !2359, !2360, !2361, !2362, !2363}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_offset", scope: !2356, file: !600, line: 76, baseType: !688, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_value", scope: !2356, file: !600, line: 77, baseType: !688, size: 64, offset: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !2356, file: !600, line: 78, baseType: !632, size: 64, offset: 128)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "this_adjusting", scope: !2356, file: !600, line: 79, baseType: !624, size: 8, offset: 192)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_offset_p", scope: !2356, file: !600, line: 80, baseType: !624, size: 8, offset: 200)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "thunk_p", scope: !2356, file: !600, line: 82, baseType: !624, size: 8, offset: 208)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2117, file: !600, line: 223, baseType: !1169, size: 64, offset: 2304)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2117, file: !600, line: 225, baseType: !625, size: 32, offset: 2368)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !2117, file: !600, line: 227, baseType: !625, size: 32, offset: 2400)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2117, file: !600, line: 231, baseType: !625, size: 32, offset: 2432)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "needed", scope: !2117, file: !600, line: 238, baseType: !7, size: 1, offset: 2464, flags: DIFlagBitField, extraData: i64 2464)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "address_taken", scope: !2117, file: !600, line: 241, baseType: !7, size: 1, offset: 2465, flags: DIFlagBitField, extraData: i64 2464)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_and_needed", scope: !2117, file: !600, line: 244, baseType: !7, size: 1, offset: 2466, flags: DIFlagBitField, extraData: i64 2464)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "reachable", scope: !2117, file: !600, line: 251, baseType: !7, size: 1, offset: 2467, flags: DIFlagBitField, extraData: i64 2464)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "lowered", scope: !2117, file: !600, line: 253, baseType: !7, size: 1, offset: 2468, flags: DIFlagBitField, extraData: i64 2464)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "analyzed", scope: !2117, file: !600, line: 256, baseType: !7, size: 1, offset: 2469, flags: DIFlagBitField, extraData: i64 2464)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !2117, file: !600, line: 258, baseType: !7, size: 1, offset: 2470, flags: DIFlagBitField, extraData: i64 2464)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !2117, file: !600, line: 260, baseType: !7, size: 1, offset: 2471, flags: DIFlagBitField, extraData: i64 2464)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "finalized_by_frontend", scope: !2117, file: !600, line: 262, baseType: !7, size: 1, offset: 2472, flags: DIFlagBitField, extraData: i64 2464)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "same_body_alias", scope: !2117, file: !600, line: 265, baseType: !7, size: 1, offset: 2473, flags: DIFlagBitField, extraData: i64 2464)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pass_list_node", file: !3, line: 529, size: 128, elements: !2381)
!2381 = !{!2382, !2383}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !2380, file: !3, line: 531, baseType: !2189, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2380, file: !3, line: 532, baseType: !2379, size: 64, offset: 64)
!2384 = !{!2385, !2390, !2395, !2400, !0, !2414, !2416, !2418, !2420, !2422, !2424, !2426, !2428, !2430, !2432, !2434, !2436, !2438, !2440}
!2385 = !DIGlobalVariableExpression(var: !2386, expr: !DIExpression())
!2386 = distinct !DIGlobalVariable(name: "pass_rest_of_compilation", scope: !2, file: !3, line: 290, type: !2387, isLocal: false, isDefinition: true)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_opt_pass", file: !398, line: 156, size: 640, elements: !2388)
!2388 = !{!2389}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !2387, file: !398, line: 158, baseType: !2176, size: 640)
!2390 = !DIGlobalVariableExpression(var: !2391, expr: !DIExpression())
!2391 = distinct !DIGlobalVariable(name: "pass_postreload", scope: !2, file: !3, line: 315, type: !2392, isLocal: false, isDefinition: true)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_opt_pass", file: !398, line: 162, size: 640, elements: !2393)
!2393 = !{!2394}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !2392, file: !398, line: 164, baseType: !2176, size: 640)
!2395 = !DIGlobalVariableExpression(var: !2396, expr: !DIExpression())
!2396 = distinct !DIGlobalVariable(name: "gcc_pass_lists", scope: !2, file: !3, line: 342, type: !2397, isLocal: false, isDefinition: true)
!2397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2378, size: 384, elements: !2398)
!2398 = !{!2399}
!2399 = !DISubrange(count: 6)
!2400 = !DIGlobalVariableExpression(var: !2401, expr: !DIExpression())
!2401 = distinct !DIGlobalVariable(name: "gt_ggc_r_gt_passes_h", scope: !2, file: !2402, line: 68, type: !2403, isLocal: false, isDefinition: true)
!2402 = !DIFile(filename: "./gt-passes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2404, size: 640, elements: !875)
!2404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2405)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ggc_root_tab", file: !2406, line: 69, size: 320, elements: !2407)
!2406 = !DIFile(filename: "./ggc.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2407 = !{!2408, !2409, !2410, !2411, !2413}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2405, file: !2406, line: 70, baseType: !629, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "nelt", scope: !2405, file: !2406, line: 71, baseType: !1103, size: 64, offset: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !2405, file: !2406, line: 72, baseType: !1103, size: 64, offset: 128)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !2405, file: !2406, line: 73, baseType: !2412, size: 64, offset: 192)
!2412 = !DIDerivedType(tag: DW_TAG_typedef, name: "gt_pointer_walker", file: !2406, line: 65, baseType: !1535)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "pchw", scope: !2405, file: !2406, line: 74, baseType: !2412, size: 64, offset: 256)
!2414 = !DIGlobalVariableExpression(var: !2415, expr: !DIExpression())
!2415 = distinct !DIGlobalVariable(name: "dump_flags", scope: !2, file: !3, line: 136, type: !625, isLocal: false, isDefinition: true)
!2416 = !DIGlobalVariableExpression(var: !2417, expr: !DIExpression())
!2417 = distinct !DIGlobalVariable(name: "in_gimple_form", scope: !2, file: !3, line: 137, type: !624, isLocal: false, isDefinition: true)
!2418 = !DIGlobalVariableExpression(var: !2419, expr: !DIExpression())
!2419 = distinct !DIGlobalVariable(name: "first_pass_instance", scope: !2, file: !3, line: 138, type: !624, isLocal: false, isDefinition: true)
!2420 = !DIGlobalVariableExpression(var: !2421, expr: !DIExpression())
!2421 = distinct !DIGlobalVariable(name: "all_passes", scope: !2, file: !3, line: 337, type: !2189, isLocal: false, isDefinition: true)
!2422 = !DIGlobalVariableExpression(var: !2423, expr: !DIExpression())
!2423 = distinct !DIGlobalVariable(name: "all_small_ipa_passes", scope: !2, file: !3, line: 337, type: !2189, isLocal: false, isDefinition: true)
!2424 = !DIGlobalVariableExpression(var: !2425, expr: !DIExpression())
!2425 = distinct !DIGlobalVariable(name: "all_lowering_passes", scope: !2, file: !3, line: 337, type: !2189, isLocal: false, isDefinition: true)
!2426 = !DIGlobalVariableExpression(var: !2427, expr: !DIExpression())
!2427 = distinct !DIGlobalVariable(name: "all_regular_ipa_passes", scope: !2, file: !3, line: 338, type: !2189, isLocal: false, isDefinition: true)
!2428 = !DIGlobalVariableExpression(var: !2429, expr: !DIExpression())
!2429 = distinct !DIGlobalVariable(name: "all_lto_gen_passes", scope: !2, file: !3, line: 338, type: !2189, isLocal: false, isDefinition: true)
!2430 = !DIGlobalVariableExpression(var: !2431, expr: !DIExpression())
!2431 = distinct !DIGlobalVariable(name: "passes_by_id", scope: !2, file: !3, line: 346, type: !2378, isLocal: false, isDefinition: true)
!2432 = !DIGlobalVariableExpression(var: !2433, expr: !DIExpression())
!2433 = distinct !DIGlobalVariable(name: "passes_by_id_size", scope: !2, file: !3, line: 347, type: !625, isLocal: false, isDefinition: true)
!2434 = !DIGlobalVariableExpression(var: !2435, expr: !DIExpression())
!2435 = distinct !DIGlobalVariable(name: "nnodes", scope: !2, file: !3, line: 1117, type: !625, isLocal: true, isDefinition: true)
!2436 = !DIGlobalVariableExpression(var: !2437, expr: !DIExpression())
!2437 = distinct !DIGlobalVariable(name: "order", scope: !2, file: !3, line: 1118, type: !2115, isLocal: true, isDefinition: true)
!2438 = !DIGlobalVariableExpression(var: !2439, expr: !DIExpression())
!2439 = distinct !DIGlobalVariable(name: "prev_added_pass_node", scope: !2, file: !3, line: 536, type: !2379, isLocal: true, isDefinition: true)
!2440 = !DIGlobalVariableExpression(var: !2441, expr: !DIExpression())
!2441 = distinct !DIGlobalVariable(name: "added_pass_nodes", scope: !2, file: !3, line: 535, type: !2379, isLocal: true, isDefinition: true)
!2442 = !{i32 2, !"Dwarf Version", i32 4}
!2443 = !{i32 2, !"Debug Info Version", i32 3}
!2444 = !{i32 1, !"wchar_size", i32 4}
!2445 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!2446 = distinct !DISubprogram(name: "vprintf", scope: !2447, file: !2447, line: 39, type: !2448, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2458)
!2447 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!2448 = !DISubroutineType(types: !2449)
!2449 = !{!625, !2450, !2451}
!2450 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !630)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2453)
!2453 = !{!2454, !2455, !2456, !2457}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2452, file: !3, baseType: !7, size: 32)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2452, file: !3, baseType: !7, size: 32, offset: 32)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2452, file: !3, baseType: !629, size: 64, offset: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2452, file: !3, baseType: !629, size: 64, offset: 128)
!2458 = !{!2459, !2460}
!2459 = !DILocalVariable(name: "__fmt", arg: 1, scope: !2446, file: !2447, line: 39, type: !2450)
!2460 = !DILocalVariable(name: "__arg", arg: 2, scope: !2446, file: !2447, line: 39, type: !2451)
!2461 = !DILocation(line: 0, scope: !2446)
!2462 = !DILocation(line: 41, column: 20, scope: !2446)
!2463 = !DILocation(line: 41, column: 10, scope: !2446)
!2464 = !DILocation(line: 41, column: 3, scope: !2446)
!2465 = distinct !DISubprogram(name: "getchar", scope: !2447, file: !2447, line: 47, type: !2466, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2468)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!625}
!2468 = !{}
!2469 = !DILocation(line: 49, column: 16, scope: !2465)
!2470 = !DILocation(line: 49, column: 10, scope: !2465)
!2471 = !DILocation(line: 49, column: 3, scope: !2465)
!2472 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !2447, file: !2447, line: 56, type: !2473, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2525)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!625, !2475}
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2477, line: 7, baseType: !2478)
!2477 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2479, line: 49, size: 1728, elements: !2480)
!2479 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2480 = !{!2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2496, !2498, !2499, !2500, !2503, !2504, !2505, !2506, !2509, !2511, !2514, !2517, !2518, !2519, !2520, !2521}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2478, file: !2479, line: 51, baseType: !625, size: 32)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2478, file: !2479, line: 54, baseType: !627, size: 64, offset: 64)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2478, file: !2479, line: 55, baseType: !627, size: 64, offset: 128)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2478, file: !2479, line: 56, baseType: !627, size: 64, offset: 192)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2478, file: !2479, line: 57, baseType: !627, size: 64, offset: 256)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2478, file: !2479, line: 58, baseType: !627, size: 64, offset: 320)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2478, file: !2479, line: 59, baseType: !627, size: 64, offset: 384)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2478, file: !2479, line: 60, baseType: !627, size: 64, offset: 448)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2478, file: !2479, line: 61, baseType: !627, size: 64, offset: 512)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2478, file: !2479, line: 64, baseType: !627, size: 64, offset: 576)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2478, file: !2479, line: 65, baseType: !627, size: 64, offset: 640)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2478, file: !2479, line: 66, baseType: !627, size: 64, offset: 704)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2478, file: !2479, line: 68, baseType: !2494, size: 64, offset: 768)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2479, line: 36, flags: DIFlagFwdDecl)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2478, file: !2479, line: 70, baseType: !2497, size: 64, offset: 832)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2478, file: !2479, line: 72, baseType: !625, size: 32, offset: 896)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2478, file: !2479, line: 73, baseType: !625, size: 32, offset: 928)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2478, file: !2479, line: 74, baseType: !2501, size: 64, offset: 960)
!2501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2502, line: 152, baseType: !688)
!2502 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2478, file: !2479, line: 77, baseType: !2139, size: 16, offset: 1024)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2478, file: !2479, line: 78, baseType: !1942, size: 8, offset: 1040)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2478, file: !2479, line: 79, baseType: !730, size: 8, offset: 1048)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2478, file: !2479, line: 81, baseType: !2507, size: 64, offset: 1088)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2479, line: 43, baseType: null)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2478, file: !2479, line: 89, baseType: !2510, size: 64, offset: 1152)
!2510 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2502, line: 153, baseType: !688)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2478, file: !2479, line: 91, baseType: !2512, size: 64, offset: 1216)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2479, line: 37, flags: DIFlagFwdDecl)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2478, file: !2479, line: 92, baseType: !2515, size: 64, offset: 1280)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2479, line: 38, flags: DIFlagFwdDecl)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2478, file: !2479, line: 93, baseType: !2497, size: 64, offset: 1344)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2478, file: !2479, line: 94, baseType: !629, size: 64, offset: 1408)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2478, file: !2479, line: 95, baseType: !1103, size: 64, offset: 1472)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2478, file: !2479, line: 96, baseType: !625, size: 32, offset: 1536)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2478, file: !2479, line: 98, baseType: !2522, size: 160, offset: 1568)
!2522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !628, size: 160, elements: !2523)
!2523 = !{!2524}
!2524 = !DISubrange(count: 20)
!2525 = !{!2526}
!2526 = !DILocalVariable(name: "__fp", arg: 1, scope: !2472, file: !2447, line: 56, type: !2475)
!2527 = !DILocation(line: 0, scope: !2472)
!2528 = !DILocation(line: 58, column: 10, scope: !2472)
!2529 = !DILocation(line: 58, column: 3, scope: !2472)
!2530 = distinct !DISubprogram(name: "getc_unlocked", scope: !2447, file: !2447, line: 66, type: !2473, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2531)
!2531 = !{!2532}
!2532 = !DILocalVariable(name: "__fp", arg: 1, scope: !2530, file: !2447, line: 66, type: !2475)
!2533 = !DILocation(line: 0, scope: !2530)
!2534 = !DILocation(line: 68, column: 10, scope: !2530)
!2535 = !DILocation(line: 68, column: 3, scope: !2530)
!2536 = distinct !DISubprogram(name: "getchar_unlocked", scope: !2447, file: !2447, line: 73, type: !2466, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2468)
!2537 = !DILocation(line: 75, column: 10, scope: !2536)
!2538 = !DILocation(line: 75, column: 3, scope: !2536)
!2539 = distinct !DISubprogram(name: "putchar", scope: !2447, file: !2447, line: 82, type: !2540, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2542)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!625, !625}
!2542 = !{!2543}
!2543 = !DILocalVariable(name: "__c", arg: 1, scope: !2539, file: !2447, line: 82, type: !625)
!2544 = !DILocation(line: 0, scope: !2539)
!2545 = !DILocation(line: 84, column: 21, scope: !2539)
!2546 = !DILocation(line: 84, column: 10, scope: !2539)
!2547 = !DILocation(line: 84, column: 3, scope: !2539)
!2548 = distinct !DISubprogram(name: "fputc_unlocked", scope: !2447, file: !2447, line: 91, type: !2549, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2551)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!625, !625, !2475}
!2551 = !{!2552, !2553}
!2552 = !DILocalVariable(name: "__c", arg: 1, scope: !2548, file: !2447, line: 91, type: !625)
!2553 = !DILocalVariable(name: "__stream", arg: 2, scope: !2548, file: !2447, line: 91, type: !2475)
!2554 = !DILocation(line: 0, scope: !2548)
!2555 = !DILocation(line: 93, column: 10, scope: !2548)
!2556 = !DILocation(line: 93, column: 3, scope: !2548)
!2557 = distinct !DISubprogram(name: "putc_unlocked", scope: !2447, file: !2447, line: 101, type: !2549, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2558)
!2558 = !{!2559, !2560}
!2559 = !DILocalVariable(name: "__c", arg: 1, scope: !2557, file: !2447, line: 101, type: !625)
!2560 = !DILocalVariable(name: "__stream", arg: 2, scope: !2557, file: !2447, line: 101, type: !2475)
!2561 = !DILocation(line: 0, scope: !2557)
!2562 = !DILocation(line: 103, column: 10, scope: !2557)
!2563 = !DILocation(line: 103, column: 3, scope: !2557)
!2564 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2447, file: !2447, line: 108, type: !2540, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2565)
!2565 = !{!2566}
!2566 = !DILocalVariable(name: "__c", arg: 1, scope: !2564, file: !2447, line: 108, type: !625)
!2567 = !DILocation(line: 0, scope: !2564)
!2568 = !DILocation(line: 110, column: 10, scope: !2564)
!2569 = !DILocation(line: 110, column: 3, scope: !2564)
!2570 = distinct !DISubprogram(name: "getline", scope: !2447, file: !2447, line: 118, type: !2571, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2575)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!2573, !626, !2574, !2475}
!2573 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2502, line: 193, baseType: !688)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!2575 = !{!2576, !2577, !2578}
!2576 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2570, file: !2447, line: 118, type: !626)
!2577 = !DILocalVariable(name: "__n", arg: 2, scope: !2570, file: !2447, line: 118, type: !2574)
!2578 = !DILocalVariable(name: "__stream", arg: 3, scope: !2570, file: !2447, line: 118, type: !2475)
!2579 = !DILocation(line: 0, scope: !2570)
!2580 = !DILocation(line: 120, column: 10, scope: !2570)
!2581 = !DILocation(line: 120, column: 3, scope: !2570)
!2582 = distinct !DISubprogram(name: "feof_unlocked", scope: !2447, file: !2447, line: 128, type: !2473, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2583)
!2583 = !{!2584}
!2584 = !DILocalVariable(name: "__stream", arg: 1, scope: !2582, file: !2447, line: 128, type: !2475)
!2585 = !DILocation(line: 0, scope: !2582)
!2586 = !DILocation(line: 130, column: 10, scope: !2582)
!2587 = !DILocation(line: 130, column: 3, scope: !2582)
!2588 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2447, file: !2447, line: 135, type: !2473, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2589)
!2589 = !{!2590}
!2590 = !DILocalVariable(name: "__stream", arg: 1, scope: !2588, file: !2447, line: 135, type: !2475)
!2591 = !DILocation(line: 0, scope: !2588)
!2592 = !DILocation(line: 137, column: 10, scope: !2588)
!2593 = !DILocation(line: 137, column: 3, scope: !2588)
!2594 = distinct !DISubprogram(name: "tolower", scope: !2595, file: !2595, line: 207, type: !2540, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2596)
!2595 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2596 = !{!2597}
!2597 = !DILocalVariable(name: "__c", arg: 1, scope: !2594, file: !2595, line: 207, type: !625)
!2598 = !DILocation(line: 0, scope: !2594)
!2599 = !DILocation(line: 209, column: 22, scope: !2594)
!2600 = !DILocation(line: 209, column: 39, scope: !2594)
!2601 = !DILocation(line: 209, column: 38, scope: !2594)
!2602 = !DILocation(line: 209, column: 37, scope: !2594)
!2603 = !DILocation(line: 209, column: 10, scope: !2594)
!2604 = !DILocation(line: 209, column: 3, scope: !2594)
!2605 = distinct !DISubprogram(name: "toupper", scope: !2595, file: !2595, line: 213, type: !2540, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2606)
!2606 = !{!2607}
!2607 = !DILocalVariable(name: "__c", arg: 1, scope: !2605, file: !2595, line: 213, type: !625)
!2608 = !DILocation(line: 0, scope: !2605)
!2609 = !DILocation(line: 215, column: 22, scope: !2605)
!2610 = !DILocation(line: 215, column: 39, scope: !2605)
!2611 = !DILocation(line: 215, column: 38, scope: !2605)
!2612 = !DILocation(line: 215, column: 37, scope: !2605)
!2613 = !DILocation(line: 215, column: 10, scope: !2605)
!2614 = !DILocation(line: 215, column: 3, scope: !2605)
!2615 = distinct !DISubprogram(name: "atoi", scope: !2616, file: !2616, line: 361, type: !2617, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2619)
!2616 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2617 = !DISubroutineType(types: !2618)
!2618 = !{!625, !630}
!2619 = !{!2620}
!2620 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2615, file: !2616, line: 361, type: !630)
!2621 = !DILocation(line: 0, scope: !2615)
!2622 = !DILocation(line: 363, column: 16, scope: !2615)
!2623 = !DILocation(line: 363, column: 10, scope: !2615)
!2624 = !DILocation(line: 363, column: 3, scope: !2615)
!2625 = distinct !DISubprogram(name: "atol", scope: !2616, file: !2616, line: 366, type: !2626, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2628)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!688, !630}
!2628 = !{!2629}
!2629 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2625, file: !2616, line: 366, type: !630)
!2630 = !DILocation(line: 0, scope: !2625)
!2631 = !DILocation(line: 368, column: 10, scope: !2625)
!2632 = !DILocation(line: 368, column: 3, scope: !2625)
!2633 = distinct !DISubprogram(name: "atoll", scope: !2616, file: !2616, line: 373, type: !2634, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2637)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{!2636, !630}
!2636 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2637 = !{!2638}
!2638 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2633, file: !2616, line: 373, type: !630)
!2639 = !DILocation(line: 0, scope: !2633)
!2640 = !DILocation(line: 375, column: 10, scope: !2633)
!2641 = !DILocation(line: 375, column: 3, scope: !2633)
!2642 = distinct !DISubprogram(name: "bsearch", scope: !2643, file: !2643, line: 20, type: !2644, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2647)
!2643 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2644 = !DISubroutineType(types: !2645)
!2645 = !{!629, !1317, !1317, !1103, !1103, !2646}
!2646 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2616, line: 808, baseType: !1530)
!2647 = !{!2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657}
!2648 = !DILocalVariable(name: "__key", arg: 1, scope: !2642, file: !2643, line: 20, type: !1317)
!2649 = !DILocalVariable(name: "__base", arg: 2, scope: !2642, file: !2643, line: 20, type: !1317)
!2650 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2642, file: !2643, line: 20, type: !1103)
!2651 = !DILocalVariable(name: "__size", arg: 4, scope: !2642, file: !2643, line: 20, type: !1103)
!2652 = !DILocalVariable(name: "__compar", arg: 5, scope: !2642, file: !2643, line: 21, type: !2646)
!2653 = !DILocalVariable(name: "__l", scope: !2642, file: !2643, line: 23, type: !1103)
!2654 = !DILocalVariable(name: "__u", scope: !2642, file: !2643, line: 23, type: !1103)
!2655 = !DILocalVariable(name: "__idx", scope: !2642, file: !2643, line: 23, type: !1103)
!2656 = !DILocalVariable(name: "__p", scope: !2642, file: !2643, line: 24, type: !1317)
!2657 = !DILocalVariable(name: "__comparison", scope: !2642, file: !2643, line: 25, type: !625)
!2658 = !DILocation(line: 0, scope: !2642)
!2659 = !DILocation(line: 29, column: 3, scope: !2642)
!2660 = !DILocation(line: 27, column: 7, scope: !2642)
!2661 = !DILocation(line: 29, column: 14, scope: !2642)
!2662 = !DILocation(line: 31, column: 20, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2642, file: !2643, line: 30, column: 5)
!2664 = !DILocation(line: 31, column: 27, scope: !2663)
!2665 = !DILocation(line: 32, column: 56, scope: !2663)
!2666 = !DILocation(line: 32, column: 47, scope: !2663)
!2667 = !DILocation(line: 33, column: 22, scope: !2663)
!2668 = !DILocation(line: 34, column: 24, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2663, file: !2643, line: 34, column: 11)
!2670 = !DILocation(line: 34, column: 11, scope: !2663)
!2671 = !DILocation(line: 36, column: 29, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2669, file: !2643, line: 36, column: 16)
!2673 = !DILocation(line: 36, column: 16, scope: !2669)
!2674 = !DILocation(line: 37, column: 14, scope: !2672)
!2675 = distinct !{!2675, !2659, !2676}
!2676 = !DILocation(line: 40, column: 5, scope: !2642)
!2677 = !DILocation(line: 43, column: 1, scope: !2642)
!2678 = distinct !DISubprogram(name: "atof", scope: !2679, file: !2679, line: 25, type: !2680, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2683)
!2679 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2680 = !DISubroutineType(types: !2681)
!2681 = !{!2682, !630}
!2682 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2683 = !{!2684}
!2684 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2678, file: !2679, line: 25, type: !630)
!2685 = !DILocation(line: 0, scope: !2678)
!2686 = !DILocation(line: 27, column: 10, scope: !2678)
!2687 = !DILocation(line: 27, column: 3, scope: !2678)
!2688 = distinct !DISubprogram(name: "strtoimax", scope: !2689, file: !2689, line: 324, type: !2690, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2696)
!2689 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!2692, !2450, !2695, !625}
!2692 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2693, line: 101, baseType: !2694)
!2693 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2694 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2502, line: 72, baseType: !688)
!2695 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !626)
!2696 = !{!2697, !2698, !2699}
!2697 = !DILocalVariable(name: "nptr", arg: 1, scope: !2688, file: !2689, line: 324, type: !2450)
!2698 = !DILocalVariable(name: "endptr", arg: 2, scope: !2688, file: !2689, line: 324, type: !2695)
!2699 = !DILocalVariable(name: "base", arg: 3, scope: !2688, file: !2689, line: 324, type: !625)
!2700 = !DILocation(line: 0, scope: !2688)
!2701 = !DILocation(line: 327, column: 10, scope: !2688)
!2702 = !DILocation(line: 327, column: 3, scope: !2688)
!2703 = distinct !DISubprogram(name: "strtoumax", scope: !2689, file: !2689, line: 336, type: !2704, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2708)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!2706, !2450, !2695, !625}
!2706 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2693, line: 102, baseType: !2707)
!2707 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2502, line: 73, baseType: !686)
!2708 = !{!2709, !2710, !2711}
!2709 = !DILocalVariable(name: "nptr", arg: 1, scope: !2703, file: !2689, line: 336, type: !2450)
!2710 = !DILocalVariable(name: "endptr", arg: 2, scope: !2703, file: !2689, line: 336, type: !2695)
!2711 = !DILocalVariable(name: "base", arg: 3, scope: !2703, file: !2689, line: 336, type: !625)
!2712 = !DILocation(line: 0, scope: !2703)
!2713 = !DILocation(line: 339, column: 10, scope: !2703)
!2714 = !DILocation(line: 339, column: 3, scope: !2703)
!2715 = distinct !DISubprogram(name: "wcstoimax", scope: !2689, file: !2689, line: 348, type: !2716, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2725)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!2692, !2718, !2722, !625}
!2718 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2719)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2721)
!2721 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2689, line: 34, baseType: !625)
!2722 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2723)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2725 = !{!2726, !2727, !2728}
!2726 = !DILocalVariable(name: "nptr", arg: 1, scope: !2715, file: !2689, line: 348, type: !2718)
!2727 = !DILocalVariable(name: "endptr", arg: 2, scope: !2715, file: !2689, line: 348, type: !2722)
!2728 = !DILocalVariable(name: "base", arg: 3, scope: !2715, file: !2689, line: 348, type: !625)
!2729 = !DILocation(line: 0, scope: !2715)
!2730 = !DILocation(line: 351, column: 10, scope: !2715)
!2731 = !DILocation(line: 351, column: 3, scope: !2715)
!2732 = distinct !DISubprogram(name: "wcstoumax", scope: !2689, file: !2689, line: 362, type: !2733, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2735)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!2706, !2718, !2722, !625}
!2735 = !{!2736, !2737, !2738}
!2736 = !DILocalVariable(name: "nptr", arg: 1, scope: !2732, file: !2689, line: 362, type: !2718)
!2737 = !DILocalVariable(name: "endptr", arg: 2, scope: !2732, file: !2689, line: 362, type: !2722)
!2738 = !DILocalVariable(name: "base", arg: 3, scope: !2732, file: !2689, line: 362, type: !625)
!2739 = !DILocation(line: 0, scope: !2732)
!2740 = !DILocation(line: 365, column: 10, scope: !2732)
!2741 = !DILocation(line: 365, column: 3, scope: !2732)
!2742 = distinct !DISubprogram(name: "stat", scope: !2743, file: !2743, line: 453, type: !2744, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2781)
!2743 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!625, !630, !2746}
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2748, line: 46, size: 1152, elements: !2749)
!2748 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2749 = !{!2750, !2752, !2754, !2756, !2758, !2760, !2762, !2763, !2764, !2765, !2767, !2769, !2777, !2778, !2779}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2747, file: !2748, line: 48, baseType: !2751, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2502, line: 145, baseType: !686)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2747, file: !2748, line: 53, baseType: !2753, size: 64, offset: 64)
!2753 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2502, line: 148, baseType: !686)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2747, file: !2748, line: 61, baseType: !2755, size: 64, offset: 128)
!2755 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2502, line: 151, baseType: !686)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2747, file: !2748, line: 62, baseType: !2757, size: 32, offset: 192)
!2757 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2502, line: 150, baseType: !7)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2747, file: !2748, line: 64, baseType: !2759, size: 32, offset: 224)
!2759 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2502, line: 146, baseType: !7)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2747, file: !2748, line: 65, baseType: !2761, size: 32, offset: 256)
!2761 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2502, line: 147, baseType: !7)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2747, file: !2748, line: 67, baseType: !625, size: 32, offset: 288)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2747, file: !2748, line: 69, baseType: !2751, size: 64, offset: 320)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2747, file: !2748, line: 74, baseType: !2501, size: 64, offset: 384)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2747, file: !2748, line: 78, baseType: !2766, size: 64, offset: 448)
!2766 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2502, line: 174, baseType: !688)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2747, file: !2748, line: 80, baseType: !2768, size: 64, offset: 512)
!2768 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2502, line: 179, baseType: !688)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2747, file: !2748, line: 91, baseType: !2770, size: 128, offset: 576)
!2770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2771, line: 10, size: 128, elements: !2772)
!2771 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2772 = !{!2773, !2775}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2770, file: !2771, line: 12, baseType: !2774, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2502, line: 160, baseType: !688)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2770, file: !2771, line: 16, baseType: !2776, size: 64, offset: 64)
!2776 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2502, line: 196, baseType: !688)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2747, file: !2748, line: 92, baseType: !2770, size: 128, offset: 704)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2747, file: !2748, line: 93, baseType: !2770, size: 128, offset: 832)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2747, file: !2748, line: 106, baseType: !2780, size: 192, offset: 960)
!2780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2776, size: 192, elements: !706)
!2781 = !{!2782, !2783}
!2782 = !DILocalVariable(name: "__path", arg: 1, scope: !2742, file: !2743, line: 453, type: !630)
!2783 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2742, file: !2743, line: 453, type: !2746)
!2784 = !DILocation(line: 0, scope: !2742)
!2785 = !DILocation(line: 455, column: 10, scope: !2742)
!2786 = !DILocation(line: 455, column: 3, scope: !2742)
!2787 = distinct !DISubprogram(name: "lstat", scope: !2743, file: !2743, line: 460, type: !2744, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2788)
!2788 = !{!2789, !2790}
!2789 = !DILocalVariable(name: "__path", arg: 1, scope: !2787, file: !2743, line: 460, type: !630)
!2790 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2787, file: !2743, line: 460, type: !2746)
!2791 = !DILocation(line: 0, scope: !2787)
!2792 = !DILocation(line: 462, column: 10, scope: !2787)
!2793 = !DILocation(line: 462, column: 3, scope: !2787)
!2794 = distinct !DISubprogram(name: "fstat", scope: !2743, file: !2743, line: 467, type: !2795, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2797)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!625, !625, !2746}
!2797 = !{!2798, !2799}
!2798 = !DILocalVariable(name: "__fd", arg: 1, scope: !2794, file: !2743, line: 467, type: !625)
!2799 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2794, file: !2743, line: 467, type: !2746)
!2800 = !DILocation(line: 0, scope: !2794)
!2801 = !DILocation(line: 469, column: 10, scope: !2794)
!2802 = !DILocation(line: 469, column: 3, scope: !2794)
!2803 = distinct !DISubprogram(name: "fstatat", scope: !2743, file: !2743, line: 474, type: !2804, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2806)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!625, !625, !630, !2746, !625}
!2806 = !{!2807, !2808, !2809, !2810}
!2807 = !DILocalVariable(name: "__fd", arg: 1, scope: !2803, file: !2743, line: 474, type: !625)
!2808 = !DILocalVariable(name: "__filename", arg: 2, scope: !2803, file: !2743, line: 474, type: !630)
!2809 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2803, file: !2743, line: 474, type: !2746)
!2810 = !DILocalVariable(name: "__flag", arg: 4, scope: !2803, file: !2743, line: 474, type: !625)
!2811 = !DILocation(line: 0, scope: !2803)
!2812 = !DILocation(line: 477, column: 10, scope: !2803)
!2813 = !DILocation(line: 477, column: 3, scope: !2803)
!2814 = distinct !DISubprogram(name: "mknod", scope: !2743, file: !2743, line: 483, type: !2815, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2817)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!625, !630, !2757, !2751}
!2817 = !{!2818, !2819, !2820}
!2818 = !DILocalVariable(name: "__path", arg: 1, scope: !2814, file: !2743, line: 483, type: !630)
!2819 = !DILocalVariable(name: "__mode", arg: 2, scope: !2814, file: !2743, line: 483, type: !2757)
!2820 = !DILocalVariable(name: "__dev", arg: 3, scope: !2814, file: !2743, line: 483, type: !2751)
!2821 = !DILocation(line: 0, scope: !2814)
!2822 = !DILocation(line: 485, column: 10, scope: !2814)
!2823 = !DILocation(line: 485, column: 3, scope: !2814)
!2824 = distinct !DISubprogram(name: "mknodat", scope: !2743, file: !2743, line: 491, type: !2825, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2827)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!625, !625, !630, !2757, !2751}
!2827 = !{!2828, !2829, !2830, !2831}
!2828 = !DILocalVariable(name: "__fd", arg: 1, scope: !2824, file: !2743, line: 491, type: !625)
!2829 = !DILocalVariable(name: "__path", arg: 2, scope: !2824, file: !2743, line: 491, type: !630)
!2830 = !DILocalVariable(name: "__mode", arg: 3, scope: !2824, file: !2743, line: 491, type: !2757)
!2831 = !DILocalVariable(name: "__dev", arg: 4, scope: !2824, file: !2743, line: 491, type: !2751)
!2832 = !DILocation(line: 0, scope: !2824)
!2833 = !DILocation(line: 494, column: 10, scope: !2824)
!2834 = !DILocation(line: 494, column: 3, scope: !2824)
!2835 = distinct !DISubprogram(name: "stat64", scope: !2743, file: !2743, line: 502, type: !2836, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2858)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{!625, !630, !2838}
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2748, line: 119, size: 1152, elements: !2840)
!2840 = !{!2841, !2842, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2854, !2855, !2856, !2857}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2839, file: !2748, line: 121, baseType: !2751, size: 64)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2839, file: !2748, line: 123, baseType: !2843, size: 64, offset: 64)
!2843 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2502, line: 149, baseType: !686)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2839, file: !2748, line: 124, baseType: !2755, size: 64, offset: 128)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2839, file: !2748, line: 125, baseType: !2757, size: 32, offset: 192)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2839, file: !2748, line: 132, baseType: !2759, size: 32, offset: 224)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2839, file: !2748, line: 133, baseType: !2761, size: 32, offset: 256)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2839, file: !2748, line: 135, baseType: !625, size: 32, offset: 288)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2839, file: !2748, line: 136, baseType: !2751, size: 64, offset: 320)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2839, file: !2748, line: 137, baseType: !2501, size: 64, offset: 384)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2839, file: !2748, line: 143, baseType: !2766, size: 64, offset: 448)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2839, file: !2748, line: 144, baseType: !2853, size: 64, offset: 512)
!2853 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2502, line: 180, baseType: !688)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2839, file: !2748, line: 152, baseType: !2770, size: 128, offset: 576)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2839, file: !2748, line: 153, baseType: !2770, size: 128, offset: 704)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2839, file: !2748, line: 154, baseType: !2770, size: 128, offset: 832)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2839, file: !2748, line: 164, baseType: !2780, size: 192, offset: 960)
!2858 = !{!2859, !2860}
!2859 = !DILocalVariable(name: "__path", arg: 1, scope: !2835, file: !2743, line: 502, type: !630)
!2860 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2835, file: !2743, line: 502, type: !2838)
!2861 = !DILocation(line: 0, scope: !2835)
!2862 = !DILocation(line: 504, column: 10, scope: !2835)
!2863 = !DILocation(line: 504, column: 3, scope: !2835)
!2864 = distinct !DISubprogram(name: "lstat64", scope: !2743, file: !2743, line: 509, type: !2836, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2865)
!2865 = !{!2866, !2867}
!2866 = !DILocalVariable(name: "__path", arg: 1, scope: !2864, file: !2743, line: 509, type: !630)
!2867 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2864, file: !2743, line: 509, type: !2838)
!2868 = !DILocation(line: 0, scope: !2864)
!2869 = !DILocation(line: 511, column: 10, scope: !2864)
!2870 = !DILocation(line: 511, column: 3, scope: !2864)
!2871 = distinct !DISubprogram(name: "fstat64", scope: !2743, file: !2743, line: 516, type: !2872, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2874)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{!625, !625, !2838}
!2874 = !{!2875, !2876}
!2875 = !DILocalVariable(name: "__fd", arg: 1, scope: !2871, file: !2743, line: 516, type: !625)
!2876 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2871, file: !2743, line: 516, type: !2838)
!2877 = !DILocation(line: 0, scope: !2871)
!2878 = !DILocation(line: 518, column: 10, scope: !2871)
!2879 = !DILocation(line: 518, column: 3, scope: !2871)
!2880 = distinct !DISubprogram(name: "fstatat64", scope: !2743, file: !2743, line: 523, type: !2881, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2883)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!625, !625, !630, !2838, !625}
!2883 = !{!2884, !2885, !2886, !2887}
!2884 = !DILocalVariable(name: "__fd", arg: 1, scope: !2880, file: !2743, line: 523, type: !625)
!2885 = !DILocalVariable(name: "__filename", arg: 2, scope: !2880, file: !2743, line: 523, type: !630)
!2886 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2880, file: !2743, line: 523, type: !2838)
!2887 = !DILocalVariable(name: "__flag", arg: 4, scope: !2880, file: !2743, line: 523, type: !625)
!2888 = !DILocation(line: 0, scope: !2880)
!2889 = !DILocation(line: 526, column: 10, scope: !2880)
!2890 = !DILocation(line: 526, column: 3, scope: !2880)
!2891 = distinct !DISubprogram(name: "print_current_pass", scope: !3, file: !3, line: 116, type: !2892, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2894)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{null, !2475}
!2894 = !{!2895}
!2895 = !DILocalVariable(name: "file", arg: 1, scope: !2891, file: !3, line: 116, type: !2475)
!2896 = !DILocation(line: 0, scope: !2891)
!2897 = !DILocation(line: 118, column: 7, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2891, file: !3, line: 118, column: 7)
!2899 = !DILocation(line: 118, column: 7, scope: !2891)
!2900 = !DILocation(line: 120, column: 21, scope: !2898)
!2901 = !DILocation(line: 120, column: 41, scope: !2898)
!2902 = !DILocation(line: 119, column: 5, scope: !2898)
!2903 = !DILocation(line: 122, column: 5, scope: !2898)
!2904 = !DILocation(line: 123, column: 1, scope: !2891)
!2905 = distinct !DISubprogram(name: "debug_pass", scope: !3, file: !3, line: 128, type: !2201, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2468)
!2906 = !DILocation(line: 130, column: 23, scope: !2905)
!2907 = !DILocation(line: 130, column: 3, scope: !2905)
!2908 = !DILocation(line: 131, column: 1, scope: !2905)
!2909 = distinct !DISubprogram(name: "rest_of_decl_compilation", scope: !3, file: !3, line: 154, type: !2910, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2912)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{null, !632, !625, !625}
!2912 = !{!2913, !2914, !2915, !2916, !2918, !2924, !2925}
!2913 = !DILocalVariable(name: "decl", arg: 1, scope: !2909, file: !3, line: 154, type: !632)
!2914 = !DILocalVariable(name: "top_level", arg: 2, scope: !2909, file: !3, line: 155, type: !625)
!2915 = !DILocalVariable(name: "at_end", arg: 3, scope: !2909, file: !3, line: 156, type: !625)
!2916 = !DILocalVariable(name: "alias", scope: !2917, file: !3, line: 161, type: !632)
!2917 = distinct !DILexicalBlock(scope: !2909, file: !3, line: 160, column: 3)
!2918 = !DILocalVariable(name: "name", scope: !2919, file: !3, line: 203, type: !630)
!2919 = distinct !DILexicalBlock(scope: !2920, file: !3, line: 203, column: 4)
!2920 = distinct !DILexicalBlock(scope: !2921, file: !3, line: 202, column: 2)
!2921 = distinct !DILexicalBlock(scope: !2922, file: !3, line: 201, column: 11)
!2922 = distinct !DILexicalBlock(scope: !2923, file: !3, line: 180, column: 5)
!2923 = distinct !DILexicalBlock(scope: !2909, file: !3, line: 178, column: 7)
!2924 = !DILocalVariable(name: "size", scope: !2919, file: !3, line: 203, type: !688)
!2925 = !DILocalVariable(name: "size_", scope: !2926, file: !3, line: 203, type: !688)
!2926 = distinct !DILexicalBlock(scope: !2927, file: !3, line: 203, column: 4)
!2927 = distinct !DILexicalBlock(scope: !2928, file: !3, line: 203, column: 4)
!2928 = distinct !DILexicalBlock(scope: !2919, file: !3, line: 203, column: 4)
!2929 = !DILocation(line: 0, scope: !2909)
!2930 = !DILocation(line: 162, column: 40, scope: !2917)
!2931 = !DILocation(line: 162, column: 13, scope: !2917)
!2932 = !DILocation(line: 0, scope: !2917)
!2933 = !DILocation(line: 163, column: 9, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2917, file: !3, line: 163, column: 9)
!2935 = !DILocation(line: 163, column: 9, scope: !2917)
!2936 = !DILocation(line: 165, column: 10, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2934, file: !3, line: 164, column: 7)
!2938 = !DILocation(line: 166, column: 26, scope: !2937)
!2939 = !DILocation(line: 166, column: 10, scope: !2937)
!2940 = !DILocation(line: 167, column: 2, scope: !2937)
!2941 = !DILocation(line: 168, column: 7, scope: !2937)
!2942 = !DILocation(line: 173, column: 7, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2909, file: !3, line: 173, column: 7)
!2944 = !DILocation(line: 173, column: 40, scope: !2943)
!2945 = !DILocation(line: 173, column: 43, scope: !2943)
!2946 = !DILocation(line: 173, column: 7, scope: !2909)
!2947 = !DILocation(line: 174, column: 5, scope: !2943)
!2948 = !DILocation(line: 178, column: 7, scope: !2923)
!2949 = !DILocation(line: 178, column: 26, scope: !2923)
!2950 = !DILocation(line: 178, column: 29, scope: !2923)
!2951 = !DILocation(line: 179, column: 7, scope: !2923)
!2952 = !DILocation(line: 179, column: 27, scope: !2923)
!2953 = !DILocation(line: 178, column: 7, scope: !2909)
!2954 = !DILocation(line: 181, column: 7, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2956, file: !3, line: 181, column: 7)
!2956 = distinct !DILexicalBlock(scope: !2922, file: !3, line: 181, column: 7)
!2957 = !DILocation(line: 181, column: 7, scope: !2956)
!2958 = !DILocation(line: 189, column: 12, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2922, file: !3, line: 189, column: 11)
!2960 = !DILocation(line: 190, column: 5, scope: !2959)
!2961 = !DILocation(line: 190, column: 9, scope: !2959)
!2962 = !DILocation(line: 191, column: 5, scope: !2959)
!2963 = !DILocation(line: 191, column: 8, scope: !2959)
!2964 = !DILocation(line: 192, column: 4, scope: !2959)
!2965 = !DILocation(line: 192, column: 8, scope: !2959)
!2966 = !DILocation(line: 189, column: 11, scope: !2922)
!2967 = !DILocation(line: 194, column: 8, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2969, file: !3, line: 194, column: 8)
!2969 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 193, column: 2)
!2970 = !DILocation(line: 194, column: 25, scope: !2968)
!2971 = !DILocation(line: 194, column: 8, scope: !2969)
!2972 = !DILocation(line: 195, column: 6, scope: !2968)
!2973 = !DILocation(line: 197, column: 6, scope: !2968)
!2974 = !DILocation(line: 201, column: 19, scope: !2921)
!2975 = !DILocation(line: 201, column: 16, scope: !2921)
!2976 = !DILocation(line: 201, column: 11, scope: !2922)
!2977 = !DILocation(line: 203, column: 4, scope: !2919)
!2978 = !DILocation(line: 0, scope: !2919)
!2979 = !DILocation(line: 203, column: 4, scope: !2928)
!2980 = !DILocation(line: 203, column: 4, scope: !2927)
!2981 = !DILocation(line: 0, scope: !2926)
!2982 = !DILocation(line: 203, column: 4, scope: !2926)
!2983 = !DILocation(line: 208, column: 7, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2985, file: !3, line: 208, column: 7)
!2985 = distinct !DILexicalBlock(scope: !2922, file: !3, line: 208, column: 7)
!2986 = !DILocation(line: 208, column: 7, scope: !2985)
!2987 = !DILocation(line: 210, column: 29, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2923, file: !3, line: 210, column: 12)
!2989 = !DILocation(line: 213, column: 5, scope: !2988)
!2990 = !DILocation(line: 213, column: 10, scope: !2988)
!2991 = !DILocation(line: 213, column: 21, scope: !2988)
!2992 = !DILocation(line: 213, column: 24, scope: !2988)
!2993 = !DILocation(line: 210, column: 12, scope: !2923)
!2994 = !DILocation(line: 215, column: 7, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2996, file: !3, line: 215, column: 7)
!2996 = distinct !DILexicalBlock(scope: !2997, file: !3, line: 215, column: 7)
!2997 = distinct !DILexicalBlock(scope: !2988, file: !3, line: 214, column: 5)
!2998 = !DILocation(line: 215, column: 7, scope: !2996)
!2999 = !DILocation(line: 216, column: 7, scope: !2997)
!3000 = !DILocation(line: 216, column: 20, scope: !2997)
!3001 = !DILocation(line: 216, column: 37, scope: !2997)
!3002 = !DILocation(line: 217, column: 7, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !3004, file: !3, line: 217, column: 7)
!3004 = distinct !DILexicalBlock(scope: !2997, file: !3, line: 217, column: 7)
!3005 = !DILocation(line: 217, column: 7, scope: !3004)
!3006 = !DILocation(line: 221, column: 7, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !2909, file: !3, line: 221, column: 7)
!3008 = !DILocation(line: 221, column: 24, scope: !3007)
!3009 = !DILocation(line: 221, column: 36, scope: !3007)
!3010 = !DILocation(line: 221, column: 40, scope: !3007)
!3011 = !DILocation(line: 221, column: 7, scope: !2909)
!3012 = !DILocation(line: 222, column: 5, scope: !3007)
!3013 = !DILocation(line: 223, column: 1, scope: !2909)
!3014 = distinct !DISubprogram(name: "rest_of_type_compilation", scope: !3, file: !3, line: 228, type: !3015, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3017)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{null, !632, !625}
!3017 = !{!3018, !3019}
!3018 = !DILocalVariable(name: "type", arg: 1, scope: !3014, file: !3, line: 228, type: !632)
!3019 = !DILocalVariable(name: "toplev", arg: 2, scope: !3014, file: !3, line: 228, type: !625)
!3020 = !DILocation(line: 0, scope: !3014)
!3021 = !DILocation(line: 232, column: 7, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3014, file: !3, line: 232, column: 7)
!3023 = !DILocation(line: 232, column: 18, scope: !3022)
!3024 = !DILocation(line: 232, column: 23, scope: !3022)
!3025 = !DILocation(line: 232, column: 26, scope: !3022)
!3026 = !DILocation(line: 232, column: 37, scope: !3022)
!3027 = !DILocation(line: 232, column: 7, scope: !3014)
!3028 = !DILocation(line: 235, column: 3, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3030, file: !3, line: 235, column: 3)
!3030 = distinct !DILexicalBlock(scope: !3014, file: !3, line: 235, column: 3)
!3031 = !DILocation(line: 235, column: 3, scope: !3030)
!3032 = !DILocation(line: 236, column: 3, scope: !3014)
!3033 = !DILocation(line: 236, column: 16, scope: !3014)
!3034 = !DILocation(line: 236, column: 27, scope: !3014)
!3035 = !DILocation(line: 236, column: 50, scope: !3014)
!3036 = !DILocation(line: 237, column: 3, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3038, file: !3, line: 237, column: 3)
!3038 = distinct !DILexicalBlock(scope: !3014, file: !3, line: 237, column: 3)
!3039 = !DILocation(line: 237, column: 3, scope: !3038)
!3040 = !DILocation(line: 238, column: 1, scope: !3014)
!3041 = distinct !DISubprogram(name: "finish_optimization_passes", scope: !3, file: !3, line: 243, type: !2201, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3042)
!3042 = !{!3043, !3044, !3054}
!3043 = !DILocalVariable(name: "i", scope: !3041, file: !3, line: 245, type: !625)
!3044 = !DILocalVariable(name: "dfi", scope: !3041, file: !3, line: 246, type: !3045)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dump_file_info", file: !398, line: 208, size: 320, elements: !3047)
!3047 = !{!3048, !3049, !3050, !3051, !3052, !3053}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "suffix", scope: !3046, file: !398, line: 210, baseType: !630, size: 64)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "swtch", scope: !3046, file: !398, line: 211, baseType: !630, size: 64, offset: 64)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "glob", scope: !3046, file: !398, line: 212, baseType: !630, size: 64, offset: 128)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3046, file: !398, line: 213, baseType: !625, size: 32, offset: 192)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3046, file: !398, line: 214, baseType: !625, size: 32, offset: 224)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3046, file: !398, line: 215, baseType: !625, size: 32, offset: 256)
!3054 = !DILocalVariable(name: "name", scope: !3041, file: !3, line: 247, type: !627)
!3055 = !DILocation(line: 249, column: 3, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3057, file: !3, line: 249, column: 3)
!3057 = distinct !DILexicalBlock(scope: !3041, file: !3, line: 249, column: 3)
!3058 = !DILocation(line: 249, column: 3, scope: !3057)
!3059 = !DILocation(line: 250, column: 7, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3041, file: !3, line: 250, column: 7)
!3061 = !DILocation(line: 250, column: 27, scope: !3060)
!3062 = !DILocation(line: 250, column: 24, scope: !3060)
!3063 = !DILocation(line: 250, column: 49, scope: !3060)
!3064 = !DILocation(line: 252, column: 49, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3060, file: !3, line: 251, column: 5)
!3066 = !DILocation(line: 252, column: 19, scope: !3065)
!3067 = !DILocation(line: 252, column: 17, scope: !3065)
!3068 = !DILocation(line: 253, column: 7, scope: !3065)
!3069 = !DILocation(line: 254, column: 11, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3065, file: !3, line: 254, column: 11)
!3071 = !DILocation(line: 254, column: 11, scope: !3065)
!3072 = !DILocation(line: 255, column: 30, scope: !3070)
!3073 = !DILocation(line: 255, column: 2, scope: !3070)
!3074 = !DILocation(line: 258, column: 7, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3041, file: !3, line: 258, column: 7)
!3076 = !DILocation(line: 258, column: 16, scope: !3075)
!3077 = !DILocation(line: 258, column: 7, scope: !3041)
!3078 = !DILocation(line: 260, column: 49, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3075, file: !3, line: 259, column: 5)
!3080 = !DILocation(line: 260, column: 19, scope: !3079)
!3081 = !DILocation(line: 260, column: 17, scope: !3079)
!3082 = !DILocation(line: 261, column: 11, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3079, file: !3, line: 261, column: 11)
!3084 = !DILocation(line: 261, column: 11, scope: !3079)
!3085 = !DILocation(line: 263, column: 4, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3083, file: !3, line: 262, column: 2)
!3087 = !DILocation(line: 264, column: 39, scope: !3086)
!3088 = !DILocation(line: 264, column: 59, scope: !3086)
!3089 = !DILocation(line: 264, column: 11, scope: !3086)
!3090 = !DILocation(line: 265, column: 2, scope: !3086)
!3091 = !DILocation(line: 269, column: 7, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3041, file: !3, line: 269, column: 7)
!3093 = !DILocation(line: 269, column: 25, scope: !3092)
!3094 = !DILocation(line: 269, column: 7, scope: !3041)
!3095 = !DILocation(line: 270, column: 5, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3092, file: !3, line: 270, column: 5)
!3097 = !DILocation(line: 0, scope: !3096)
!3098 = !DILocation(line: 0, scope: !3041)
!3099 = !DILocation(line: 270, column: 30, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3096, file: !3, line: 270, column: 5)
!3101 = !DILocation(line: 270, column: 54, scope: !3100)
!3102 = !DILocation(line: 271, column: 11, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3100, file: !3, line: 271, column: 11)
!3104 = !DILocation(line: 272, column: 4, scope: !3103)
!3105 = !DILocation(line: 272, column: 13, scope: !3103)
!3106 = !DILocation(line: 272, column: 19, scope: !3103)
!3107 = !DILocation(line: 272, column: 32, scope: !3103)
!3108 = !DILocation(line: 273, column: 4, scope: !3103)
!3109 = !DILocation(line: 273, column: 15, scope: !3103)
!3110 = !DILocation(line: 273, column: 39, scope: !3103)
!3111 = !DILocation(line: 271, column: 11, scope: !3100)
!3112 = !DILocation(line: 275, column: 4, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3103, file: !3, line: 274, column: 2)
!3114 = !DILocation(line: 276, column: 4, scope: !3113)
!3115 = !DILocation(line: 277, column: 2, scope: !3113)
!3116 = !DILocation(line: 270, column: 63, scope: !3100)
!3117 = !DILocation(line: 270, column: 5, scope: !3100)
!3118 = distinct !{!3118, !3095, !3119}
!3119 = !DILocation(line: 277, column: 2, scope: !3096)
!3120 = !DILocation(line: 279, column: 3, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3122, file: !3, line: 279, column: 3)
!3122 = distinct !DILexicalBlock(scope: !3041, file: !3, line: 279, column: 3)
!3123 = !DILocation(line: 279, column: 3, scope: !3122)
!3124 = !DILocation(line: 280, column: 1, scope: !3041)
!3125 = distinct !DISubprogram(name: "gate_rest_of_compilation", scope: !3, file: !3, line: 283, type: !2182, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2468)
!3126 = !DILocation(line: 287, column: 12, scope: !3125)
!3127 = !DILocation(line: 287, column: 33, scope: !3125)
!3128 = !DILocation(line: 287, column: 30, scope: !3125)
!3129 = !DILocation(line: 287, column: 53, scope: !3125)
!3130 = !DILocation(line: 287, column: 64, scope: !3125)
!3131 = !DILocation(line: 287, column: 67, scope: !3125)
!3132 = !DILocation(line: 287, column: 3, scope: !3125)
!3133 = distinct !DISubprogram(name: "gate_postreload", scope: !3, file: !3, line: 310, type: !2182, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2468)
!3134 = !DILocation(line: 312, column: 10, scope: !3133)
!3135 = !DILocation(line: 312, column: 3, scope: !3133)
!3136 = distinct !DISubprogram(name: "get_pass_for_id", scope: !3, file: !3, line: 369, type: !3137, scopeLine: 370, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3139)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{!2189, !625}
!3139 = !{!3140}
!3140 = !DILocalVariable(name: "id", arg: 1, scope: !3136, file: !3, line: 369, type: !625)
!3141 = !DILocation(line: 0, scope: !3136)
!3142 = !DILocation(line: 371, column: 13, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3136, file: !3, line: 371, column: 7)
!3144 = !DILocation(line: 371, column: 10, scope: !3143)
!3145 = !DILocation(line: 371, column: 7, scope: !3136)
!3146 = !DILocation(line: 373, column: 10, scope: !3136)
!3147 = !DILocation(line: 373, column: 3, scope: !3136)
!3148 = !DILocation(line: 374, column: 1, scope: !3136)
!3149 = distinct !DISubprogram(name: "register_one_dump_file", scope: !3, file: !3, line: 381, type: !3150, scopeLine: 382, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3152)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{null, !2189}
!3152 = !{!3153, !3154, !3155, !3156, !3157, !3158, !3159, !3163, !3164}
!3153 = !DILocalVariable(name: "pass", arg: 1, scope: !3149, file: !3, line: 381, type: !2189)
!3154 = !DILocalVariable(name: "dot_name", scope: !3149, file: !3, line: 383, type: !627)
!3155 = !DILocalVariable(name: "flag_name", scope: !3149, file: !3, line: 383, type: !627)
!3156 = !DILocalVariable(name: "glob_name", scope: !3149, file: !3, line: 383, type: !627)
!3157 = !DILocalVariable(name: "name", scope: !3149, file: !3, line: 384, type: !630)
!3158 = !DILocalVariable(name: "prefix", scope: !3149, file: !3, line: 384, type: !630)
!3159 = !DILocalVariable(name: "num", scope: !3149, file: !3, line: 385, type: !3160)
!3160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !628, size: 80, elements: !3161)
!3161 = !{!3162}
!3162 = !DISubrange(count: 10)
!3163 = !DILocalVariable(name: "flags", scope: !3149, file: !3, line: 386, type: !625)
!3164 = !DILocalVariable(name: "id", scope: !3149, file: !3, line: 386, type: !625)
!3165 = !DILocation(line: 0, scope: !3149)
!3166 = !DILocation(line: 385, column: 3, scope: !3149)
!3167 = !DILocation(line: 385, column: 8, scope: !3149)
!3168 = !DILocation(line: 389, column: 10, scope: !3149)
!3169 = !DILocation(line: 390, column: 13, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3149, file: !3, line: 390, column: 7)
!3171 = !DILocation(line: 390, column: 32, scope: !3170)
!3172 = !DILocation(line: 390, column: 7, scope: !3149)
!3173 = !DILocation(line: 391, column: 57, scope: !3170)
!3174 = !DILocation(line: 391, column: 26, scope: !3170)
!3175 = !DILocation(line: 391, column: 5, scope: !3170)
!3176 = !DILocation(line: 399, column: 24, scope: !3149)
!3177 = !DILocation(line: 399, column: 10, scope: !3149)
!3178 = !DILocation(line: 400, column: 10, scope: !3149)
!3179 = !DILocation(line: 400, column: 22, scope: !3149)
!3180 = !DILocation(line: 400, column: 34, scope: !3149)
!3181 = !DILocation(line: 401, column: 14, scope: !3149)
!3182 = !DILocation(line: 402, column: 13, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3149, file: !3, line: 402, column: 7)
!3184 = !DILocation(line: 402, column: 18, scope: !3183)
!3185 = !DILocation(line: 402, column: 37, scope: !3183)
!3186 = !DILocation(line: 402, column: 51, scope: !3183)
!3187 = !DILocation(line: 402, column: 7, scope: !3149)
!3188 = !DILocation(line: 404, column: 23, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3183, file: !3, line: 404, column: 12)
!3190 = !DILocation(line: 0, scope: !3183)
!3191 = !DILocation(line: 409, column: 15, scope: !3149)
!3192 = !DILocation(line: 410, column: 15, scope: !3149)
!3193 = !DILocation(line: 411, column: 8, scope: !3149)
!3194 = !DILocation(line: 412, column: 3, scope: !3149)
!3195 = !DILocation(line: 413, column: 1, scope: !3149)
!3196 = distinct !DISubprogram(name: "set_pass_for_id", scope: !3, file: !3, line: 353, type: !3197, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3199)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{null, !625, !2189}
!3199 = !{!3200, !3201}
!3200 = !DILocalVariable(name: "id", arg: 1, scope: !3196, file: !3, line: 353, type: !625)
!3201 = !DILocalVariable(name: "pass", arg: 2, scope: !3196, file: !3, line: 353, type: !2189)
!3202 = !DILocation(line: 0, scope: !3196)
!3203 = !DILocation(line: 355, column: 9, scope: !3196)
!3204 = !DILocation(line: 355, column: 28, scope: !3196)
!3205 = !DILocation(line: 356, column: 7, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3196, file: !3, line: 356, column: 7)
!3207 = !DILocation(line: 356, column: 25, scope: !3206)
!3208 = !DILocation(line: 356, column: 7, scope: !3196)
!3209 = !DILocation(line: 358, column: 22, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3206, file: !3, line: 357, column: 5)
!3211 = !DILocation(line: 358, column: 20, scope: !3210)
!3212 = !DILocation(line: 359, column: 15, scope: !3210)
!3213 = !DILocation(line: 359, column: 30, scope: !3210)
!3214 = !DILocation(line: 359, column: 28, scope: !3210)
!3215 = !DILocation(line: 360, column: 16, scope: !3210)
!3216 = !DILocation(line: 360, column: 8, scope: !3210)
!3217 = !DILocation(line: 360, column: 37, scope: !3210)
!3218 = !DILocation(line: 359, column: 7, scope: !3210)
!3219 = !DILocation(line: 361, column: 25, scope: !3210)
!3220 = !DILocation(line: 362, column: 5, scope: !3210)
!3221 = !DILocation(line: 363, column: 3, scope: !3196)
!3222 = !DILocation(line: 363, column: 20, scope: !3196)
!3223 = !DILocation(line: 364, column: 1, scope: !3196)
!3224 = distinct !DISubprogram(name: "register_pass", scope: !3, file: !3, line: 633, type: !3225, scopeLine: 634, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3234)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{null, !3227}
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "register_pass_info", file: !398, line: 326, size: 192, elements: !3229)
!3229 = !{!3230, !3231, !3232, !3233}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !3228, file: !398, line: 328, baseType: !2189, size: 64)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "reference_pass_name", scope: !3228, file: !398, line: 329, baseType: !630, size: 64, offset: 64)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pass_instance_number", scope: !3228, file: !398, line: 331, baseType: !625, size: 32, offset: 128)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "pos_op", scope: !3228, file: !398, line: 334, baseType: !580, size: 32, offset: 160)
!3234 = !{!3235, !3236, !3237, !3238, !3240}
!3235 = !DILocalVariable(name: "pass_info", arg: 1, scope: !3224, file: !3, line: 633, type: !3227)
!3236 = !DILocalVariable(name: "all_instances", scope: !3224, file: !3, line: 635, type: !624)
!3237 = !DILocalVariable(name: "success", scope: !3224, file: !3, line: 635, type: !624)
!3238 = !DILocalVariable(name: "next_node", scope: !3239, file: !3, line: 680, type: !2379)
!3239 = distinct !DILexicalBlock(scope: !3224, file: !3, line: 679, column: 5)
!3240 = !DILocalVariable(name: "tdi", scope: !3239, file: !3, line: 681, type: !585)
!3241 = !DILocation(line: 0, scope: !3224)
!3242 = !DILocation(line: 640, column: 19, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3224, file: !3, line: 640, column: 7)
!3244 = !DILocation(line: 640, column: 8, scope: !3243)
!3245 = !DILocation(line: 640, column: 7, scope: !3224)
!3246 = !DILocation(line: 641, column: 7, scope: !3243)
!3247 = !DILocation(line: 643, column: 19, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3224, file: !3, line: 643, column: 7)
!3249 = !DILocation(line: 643, column: 25, scope: !3248)
!3250 = !DILocation(line: 643, column: 8, scope: !3248)
!3251 = !DILocation(line: 643, column: 7, scope: !3224)
!3252 = !DILocation(line: 644, column: 7, scope: !3248)
!3253 = !DILocation(line: 646, column: 19, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3224, file: !3, line: 646, column: 7)
!3255 = !DILocation(line: 646, column: 8, scope: !3254)
!3256 = !DILocation(line: 646, column: 7, scope: !3224)
!3257 = !DILocation(line: 649, column: 14, scope: !3254)
!3258 = !DILocation(line: 649, column: 20, scope: !3254)
!3259 = !DILocation(line: 647, column: 7, scope: !3254)
!3260 = !DILocation(line: 654, column: 30, scope: !3224)
!3261 = !DILocation(line: 654, column: 55, scope: !3224)
!3262 = !DILocation(line: 655, column: 13, scope: !3224)
!3263 = !DILocation(line: 656, column: 8, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3224, file: !3, line: 656, column: 7)
!3265 = !DILocation(line: 656, column: 16, scope: !3264)
!3266 = !DILocation(line: 657, column: 16, scope: !3264)
!3267 = !DILocation(line: 657, column: 13, scope: !3264)
!3268 = !DILocation(line: 657, column: 5, scope: !3264)
!3269 = !DILocation(line: 658, column: 8, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3224, file: !3, line: 658, column: 7)
!3271 = !DILocation(line: 658, column: 16, scope: !3270)
!3272 = !DILocation(line: 659, column: 16, scope: !3270)
!3273 = !DILocation(line: 659, column: 13, scope: !3270)
!3274 = !DILocation(line: 659, column: 5, scope: !3270)
!3275 = !DILocation(line: 660, column: 8, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3224, file: !3, line: 660, column: 7)
!3277 = !DILocation(line: 660, column: 16, scope: !3276)
!3278 = !DILocation(line: 661, column: 16, scope: !3276)
!3279 = !DILocation(line: 661, column: 13, scope: !3276)
!3280 = !DILocation(line: 661, column: 5, scope: !3276)
!3281 = !DILocation(line: 662, column: 8, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3224, file: !3, line: 662, column: 7)
!3283 = !DILocation(line: 662, column: 16, scope: !3282)
!3284 = !DILocation(line: 663, column: 16, scope: !3282)
!3285 = !DILocation(line: 663, column: 13, scope: !3282)
!3286 = !DILocation(line: 663, column: 5, scope: !3282)
!3287 = !DILocation(line: 664, column: 8, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3224, file: !3, line: 664, column: 7)
!3289 = !DILocation(line: 664, column: 7, scope: !3224)
!3290 = !DILocation(line: 667, column: 19, scope: !3288)
!3291 = !DILocation(line: 667, column: 51, scope: !3288)
!3292 = !DILocation(line: 667, column: 57, scope: !3288)
!3293 = !DILocation(line: 665, column: 5, scope: !3288)
!3294 = !DILocation(line: 678, column: 10, scope: !3224)
!3295 = !DILocation(line: 678, column: 3, scope: !3224)
!3296 = !DILocation(line: 680, column: 60, scope: !3239)
!3297 = !DILocation(line: 682, column: 49, scope: !3239)
!3298 = !DILocation(line: 682, column: 7, scope: !3239)
!3299 = !DILocation(line: 683, column: 11, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3239, file: !3, line: 683, column: 11)
!3301 = !DILocation(line: 683, column: 29, scope: !3300)
!3302 = !DILocation(line: 683, column: 35, scope: !3300)
!3303 = !DILocation(line: 683, column: 40, scope: !3300)
!3304 = !DILocation(line: 684, column: 11, scope: !3300)
!3305 = !DILocation(line: 684, column: 43, scope: !3300)
!3306 = !DILocation(line: 683, column: 11, scope: !3239)
!3307 = !DILocation(line: 686, column: 45, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3300, file: !3, line: 686, column: 16)
!3309 = !DILocation(line: 0, scope: !3239)
!3310 = !DILocation(line: 0, scope: !3300)
!3311 = !DILocation(line: 691, column: 11, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3239, file: !3, line: 691, column: 11)
!3313 = !DILocation(line: 691, column: 37, scope: !3312)
!3314 = !DILocation(line: 691, column: 11, scope: !3239)
!3315 = !DILocation(line: 693, column: 23, scope: !3312)
!3316 = !DILocation(line: 693, column: 49, scope: !3312)
!3317 = !DILocation(line: 692, column: 29, scope: !3312)
!3318 = !DILocation(line: 692, column: 47, scope: !3312)
!3319 = !DILocation(line: 692, column: 53, scope: !3312)
!3320 = !DILocation(line: 692, column: 9, scope: !3312)
!3321 = !DILocation(line: 693, column: 15, scope: !3312)
!3322 = !DILocation(line: 693, column: 21, scope: !3312)
!3323 = !DILocation(line: 694, column: 7, scope: !3239)
!3324 = !DILocation(line: 695, column: 24, scope: !3239)
!3325 = distinct !{!3325, !3295, !3326}
!3326 = !DILocation(line: 696, column: 5, scope: !3224)
!3327 = !DILocation(line: 697, column: 1, scope: !3224)
!3328 = distinct !DISubprogram(name: "position_pass", scope: !3, file: !3, line: 545, type: !3329, scopeLine: 547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3331)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{!624, !3227, !2378}
!3331 = !{!3332, !3333, !3334, !3335, !3336, !3337, !3343}
!3332 = !DILocalVariable(name: "new_pass_info", arg: 1, scope: !3328, file: !3, line: 545, type: !3227)
!3333 = !DILocalVariable(name: "pass_list", arg: 2, scope: !3328, file: !3, line: 546, type: !2378)
!3334 = !DILocalVariable(name: "pass", scope: !3328, file: !3, line: 548, type: !2189)
!3335 = !DILocalVariable(name: "prev_pass", scope: !3328, file: !3, line: 548, type: !2189)
!3336 = !DILocalVariable(name: "success", scope: !3328, file: !3, line: 549, type: !624)
!3337 = !DILocalVariable(name: "new_pass", scope: !3338, file: !3, line: 564, type: !2189)
!3338 = distinct !DILexicalBlock(scope: !3339, file: !3, line: 563, column: 9)
!3339 = distinct !DILexicalBlock(scope: !3340, file: !3, line: 555, column: 11)
!3340 = distinct !DILexicalBlock(scope: !3341, file: !3, line: 552, column: 5)
!3341 = distinct !DILexicalBlock(scope: !3342, file: !3, line: 551, column: 3)
!3342 = distinct !DILexicalBlock(scope: !3328, file: !3, line: 551, column: 3)
!3343 = !DILocalVariable(name: "new_pass_node", scope: !3338, file: !3, line: 565, type: !2379)
!3344 = !DILocation(line: 0, scope: !3328)
!3345 = !DILocation(line: 0, scope: !3339)
!3346 = !DILocation(line: 0, scope: !3338)
!3347 = !DILocation(line: 551, column: 3, scope: !3328)
!3348 = !DILocation(line: 551, column: 3, scope: !3342)
!3349 = !DILocation(line: 555, column: 17, scope: !3339)
!3350 = !DILocation(line: 555, column: 40, scope: !3339)
!3351 = !DILocation(line: 555, column: 46, scope: !3339)
!3352 = !DILocation(line: 555, column: 22, scope: !3339)
!3353 = !DILocation(line: 556, column: 11, scope: !3339)
!3354 = !DILocation(line: 556, column: 20, scope: !3339)
!3355 = !DILocation(line: 556, column: 14, scope: !3339)
!3356 = !DILocation(line: 557, column: 11, scope: !3339)
!3357 = !DILocation(line: 557, column: 50, scope: !3339)
!3358 = !DILocation(line: 557, column: 15, scope: !3339)
!3359 = !DILocation(line: 558, column: 11, scope: !3339)
!3360 = !DILocation(line: 558, column: 31, scope: !3339)
!3361 = !DILocation(line: 558, column: 56, scope: !3339)
!3362 = !DILocation(line: 559, column: 15, scope: !3339)
!3363 = !DILocation(line: 560, column: 25, scope: !3339)
!3364 = !DILocation(line: 559, column: 59, scope: !3339)
!3365 = !DILocation(line: 561, column: 15, scope: !3339)
!3366 = !DILocation(line: 561, column: 59, scope: !3339)
!3367 = !DILocation(line: 562, column: 19, scope: !3339)
!3368 = !DILocation(line: 562, column: 28, scope: !3339)
!3369 = !DILocation(line: 562, column: 45, scope: !3339)
!3370 = !DILocation(line: 555, column: 11, scope: !3340)
!3371 = !DILocation(line: 567, column: 50, scope: !3338)
!3372 = !DILocation(line: 567, column: 15, scope: !3338)
!3373 = !DILocation(line: 570, column: 34, scope: !3338)
!3374 = !DILocation(line: 570, column: 11, scope: !3338)
!3375 = !DILocation(line: 573, column: 40, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3338, file: !3, line: 571, column: 13)
!3377 = !DILocation(line: 573, column: 27, scope: !3376)
!3378 = !DILocation(line: 573, column: 32, scope: !3376)
!3379 = !DILocation(line: 574, column: 28, scope: !3376)
!3380 = !DILocation(line: 580, column: 17, scope: !3376)
!3381 = !DILocation(line: 582, column: 27, scope: !3376)
!3382 = !DILocation(line: 582, column: 32, scope: !3376)
!3383 = !DILocation(line: 583, column: 21, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3376, file: !3, line: 583, column: 21)
!3385 = !DILocation(line: 583, column: 21, scope: !3376)
!3386 = !DILocation(line: 584, column: 30, scope: !3384)
!3387 = !DILocation(line: 584, column: 35, scope: !3384)
!3388 = !DILocation(line: 584, column: 19, scope: !3384)
!3389 = !DILocation(line: 586, column: 30, scope: !3384)
!3390 = !DILocation(line: 589, column: 40, scope: !3376)
!3391 = !DILocation(line: 589, column: 27, scope: !3376)
!3392 = !DILocation(line: 589, column: 32, scope: !3376)
!3393 = !DILocation(line: 590, column: 21, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3376, file: !3, line: 590, column: 21)
!3395 = !DILocation(line: 590, column: 21, scope: !3376)
!3396 = !DILocation(line: 591, column: 30, scope: !3394)
!3397 = !DILocation(line: 591, column: 35, scope: !3394)
!3398 = !DILocation(line: 591, column: 19, scope: !3394)
!3399 = !DILocation(line: 593, column: 30, scope: !3394)
!3400 = !DILocation(line: 594, column: 39, scope: !3376)
!3401 = !DILocation(line: 594, column: 27, scope: !3376)
!3402 = !DILocation(line: 594, column: 31, scope: !3376)
!3403 = !DILocation(line: 595, column: 41, scope: !3376)
!3404 = !DILocation(line: 595, column: 27, scope: !3376)
!3405 = !DILocation(line: 595, column: 33, scope: !3376)
!3406 = !DILocation(line: 597, column: 17, scope: !3376)
!3407 = !DILocation(line: 599, column: 17, scope: !3376)
!3408 = !DILocation(line: 600, column: 17, scope: !3376)
!3409 = !DILocation(line: 608, column: 27, scope: !3338)
!3410 = !DILocation(line: 609, column: 26, scope: !3338)
!3411 = !DILocation(line: 609, column: 31, scope: !3338)
!3412 = !DILocation(line: 610, column: 16, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3338, file: !3, line: 610, column: 15)
!3414 = !DILocation(line: 610, column: 15, scope: !3338)
!3415 = !DILocation(line: 611, column: 30, scope: !3413)
!3416 = !DILocation(line: 611, column: 13, scope: !3413)
!3417 = !DILocation(line: 613, column: 13, scope: !3413)
!3418 = !DILocation(line: 613, column: 35, scope: !3413)
!3419 = !DILocation(line: 613, column: 40, scope: !3413)
!3420 = !DILocation(line: 614, column: 32, scope: !3338)
!3421 = !DILocation(line: 617, column: 9, scope: !3339)
!3422 = !DILocation(line: 548, column: 20, scope: !3328)
!3423 = !DILocation(line: 549, column: 8, scope: !3328)
!3424 = !DILocation(line: 619, column: 17, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3340, file: !3, line: 619, column: 11)
!3426 = !DILocation(line: 619, column: 11, scope: !3425)
!3427 = !DILocation(line: 619, column: 21, scope: !3425)
!3428 = !DILocation(line: 619, column: 24, scope: !3425)
!3429 = !DILocation(line: 619, column: 11, scope: !3340)
!3430 = !DILocation(line: 551, column: 48, scope: !3341)
!3431 = !DILocation(line: 551, column: 3, scope: !3341)
!3432 = distinct !{!3432, !3348, !3433}
!3433 = !DILocation(line: 621, column: 5, scope: !3342)
!3434 = !DILocation(line: 624, column: 1, scope: !3328)
!3435 = distinct !DISubprogram(name: "init_optimization_passes", scope: !3, file: !3, line: 718, type: !2201, scopeLine: 719, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3436)
!3436 = !{!3437, !3438, !3440, !3442, !3444, !3446, !3448, !3450, !3452, !3454, !3456, !3458}
!3437 = !DILocalVariable(name: "p", scope: !3435, file: !3, line: 720, type: !2378)
!3438 = !DILocalVariable(name: "p", scope: !3439, file: !3, line: 748, type: !2378)
!3439 = distinct !DILexicalBlock(scope: !3435, file: !3, line: 747, column: 5)
!3440 = !DILocalVariable(name: "p", scope: !3441, file: !3, line: 756, type: !2378)
!3441 = distinct !DILexicalBlock(scope: !3435, file: !3, line: 755, column: 5)
!3442 = !DILocalVariable(name: "p", scope: !3443, file: !3, line: 775, type: !2378)
!3443 = distinct !DILexicalBlock(scope: !3441, file: !3, line: 774, column: 2)
!3444 = !DILocalVariable(name: "p", scope: !3445, file: !3, line: 827, type: !2378)
!3445 = distinct !DILexicalBlock(scope: !3435, file: !3, line: 826, column: 5)
!3446 = !DILocalVariable(name: "p", scope: !3447, file: !3, line: 886, type: !2378)
!3447 = distinct !DILexicalBlock(scope: !3445, file: !3, line: 885, column: 2)
!3448 = !DILocalVariable(name: "p", scope: !3449, file: !3, line: 899, type: !2378)
!3449 = distinct !DILexicalBlock(scope: !3447, file: !3, line: 898, column: 6)
!3450 = !DILocalVariable(name: "p", scope: !3451, file: !3, line: 908, type: !2378)
!3451 = distinct !DILexicalBlock(scope: !3447, file: !3, line: 907, column: 6)
!3452 = !DILocalVariable(name: "p", scope: !3453, file: !3, line: 964, type: !2378)
!3453 = distinct !DILexicalBlock(scope: !3435, file: !3, line: 963, column: 5)
!3454 = !DILocalVariable(name: "p", scope: !3455, file: !3, line: 990, type: !2378)
!3455 = distinct !DILexicalBlock(scope: !3453, file: !3, line: 989, column: 2)
!3456 = !DILocalVariable(name: "p", scope: !3457, file: !3, line: 1023, type: !2378)
!3457 = distinct !DILexicalBlock(scope: !3453, file: !3, line: 1022, column: 2)
!3458 = !DILocalVariable(name: "p", scope: !3459, file: !3, line: 1043, type: !2378)
!3459 = distinct !DILexicalBlock(scope: !3457, file: !3, line: 1042, column: 6)
!3460 = !DILocation(line: 0, scope: !3435)
!3461 = !DILocation(line: 729, column: 3, scope: !3435)
!3462 = !DILocation(line: 730, column: 3, scope: !3435)
!3463 = !DILocation(line: 731, column: 3, scope: !3435)
!3464 = !DILocation(line: 732, column: 3, scope: !3435)
!3465 = !DILocation(line: 733, column: 3, scope: !3435)
!3466 = !DILocation(line: 734, column: 3, scope: !3435)
!3467 = !DILocation(line: 735, column: 3, scope: !3435)
!3468 = !DILocation(line: 736, column: 3, scope: !3435)
!3469 = !DILocation(line: 737, column: 3, scope: !3435)
!3470 = !DILocation(line: 738, column: 3, scope: !3435)
!3471 = !DILocation(line: 739, column: 3, scope: !3435)
!3472 = !DILocation(line: 740, column: 3, scope: !3435)
!3473 = !DILocation(line: 741, column: 6, scope: !3435)
!3474 = !DILocation(line: 745, column: 3, scope: !3435)
!3475 = !DILocation(line: 746, column: 3, scope: !3435)
!3476 = !DILocation(line: 749, column: 7, scope: !3439)
!3477 = !DILocation(line: 0, scope: !3439)
!3478 = !DILocation(line: 750, column: 7, scope: !3439)
!3479 = !DILocation(line: 751, column: 7, scope: !3439)
!3480 = !DILocation(line: 753, column: 3, scope: !3435)
!3481 = !DILocation(line: 754, column: 3, scope: !3435)
!3482 = !DILocation(line: 757, column: 7, scope: !3441)
!3483 = !DILocation(line: 0, scope: !3441)
!3484 = !DILocation(line: 758, column: 7, scope: !3441)
!3485 = !DILocation(line: 759, column: 7, scope: !3441)
!3486 = !DILocation(line: 760, column: 7, scope: !3441)
!3487 = !DILocation(line: 761, column: 7, scope: !3441)
!3488 = !DILocation(line: 763, column: 7, scope: !3441)
!3489 = !DILocation(line: 764, column: 7, scope: !3441)
!3490 = !DILocation(line: 765, column: 7, scope: !3441)
!3491 = !DILocation(line: 771, column: 7, scope: !3441)
!3492 = !DILocation(line: 772, column: 7, scope: !3441)
!3493 = !DILocation(line: 773, column: 7, scope: !3441)
!3494 = !DILocation(line: 776, column: 4, scope: !3443)
!3495 = !DILocation(line: 0, scope: !3443)
!3496 = !DILocation(line: 777, column: 4, scope: !3443)
!3497 = !DILocation(line: 778, column: 4, scope: !3443)
!3498 = !DILocation(line: 779, column: 4, scope: !3443)
!3499 = !DILocation(line: 784, column: 4, scope: !3443)
!3500 = !DILocation(line: 785, column: 4, scope: !3443)
!3501 = !DILocation(line: 786, column: 4, scope: !3443)
!3502 = !DILocation(line: 787, column: 4, scope: !3443)
!3503 = !DILocation(line: 788, column: 4, scope: !3443)
!3504 = !DILocation(line: 789, column: 4, scope: !3443)
!3505 = !DILocation(line: 790, column: 4, scope: !3443)
!3506 = !DILocation(line: 791, column: 4, scope: !3443)
!3507 = !DILocation(line: 792, column: 11, scope: !3443)
!3508 = !DILocation(line: 793, column: 11, scope: !3443)
!3509 = !DILocation(line: 794, column: 11, scope: !3443)
!3510 = !DILocation(line: 796, column: 7, scope: !3441)
!3511 = !DILocation(line: 797, column: 7, scope: !3441)
!3512 = !DILocation(line: 798, column: 7, scope: !3441)
!3513 = !DILocation(line: 800, column: 3, scope: !3435)
!3514 = !DILocation(line: 801, column: 3, scope: !3435)
!3515 = !DILocation(line: 802, column: 6, scope: !3435)
!3516 = !DILocation(line: 805, column: 3, scope: !3435)
!3517 = !DILocation(line: 806, column: 3, scope: !3435)
!3518 = !DILocation(line: 807, column: 3, scope: !3435)
!3519 = !DILocation(line: 808, column: 3, scope: !3435)
!3520 = !DILocation(line: 809, column: 3, scope: !3435)
!3521 = !DILocation(line: 810, column: 3, scope: !3435)
!3522 = !DILocation(line: 811, column: 3, scope: !3435)
!3523 = !DILocation(line: 812, column: 3, scope: !3435)
!3524 = !DILocation(line: 813, column: 6, scope: !3435)
!3525 = !DILocation(line: 816, column: 3, scope: !3435)
!3526 = !DILocation(line: 817, column: 3, scope: !3435)
!3527 = !DILocation(line: 818, column: 3, scope: !3435)
!3528 = !DILocation(line: 819, column: 6, scope: !3435)
!3529 = !DILocation(line: 824, column: 3, scope: !3435)
!3530 = !DILocation(line: 825, column: 3, scope: !3435)
!3531 = !DILocation(line: 828, column: 7, scope: !3445)
!3532 = !DILocation(line: 0, scope: !3445)
!3533 = !DILocation(line: 831, column: 7, scope: !3445)
!3534 = !DILocation(line: 832, column: 7, scope: !3445)
!3535 = !DILocation(line: 833, column: 7, scope: !3445)
!3536 = !DILocation(line: 834, column: 7, scope: !3445)
!3537 = !DILocation(line: 835, column: 7, scope: !3445)
!3538 = !DILocation(line: 836, column: 7, scope: !3445)
!3539 = !DILocation(line: 837, column: 7, scope: !3445)
!3540 = !DILocation(line: 842, column: 7, scope: !3445)
!3541 = !DILocation(line: 843, column: 7, scope: !3445)
!3542 = !DILocation(line: 844, column: 7, scope: !3445)
!3543 = !DILocation(line: 845, column: 7, scope: !3445)
!3544 = !DILocation(line: 846, column: 7, scope: !3445)
!3545 = !DILocation(line: 847, column: 7, scope: !3445)
!3546 = !DILocation(line: 848, column: 7, scope: !3445)
!3547 = !DILocation(line: 849, column: 7, scope: !3445)
!3548 = !DILocation(line: 850, column: 7, scope: !3445)
!3549 = !DILocation(line: 851, column: 7, scope: !3445)
!3550 = !DILocation(line: 852, column: 7, scope: !3445)
!3551 = !DILocation(line: 853, column: 7, scope: !3445)
!3552 = !DILocation(line: 854, column: 7, scope: !3445)
!3553 = !DILocation(line: 855, column: 7, scope: !3445)
!3554 = !DILocation(line: 856, column: 7, scope: !3445)
!3555 = !DILocation(line: 857, column: 7, scope: !3445)
!3556 = !DILocation(line: 858, column: 7, scope: !3445)
!3557 = !DILocation(line: 864, column: 7, scope: !3445)
!3558 = !DILocation(line: 870, column: 7, scope: !3445)
!3559 = !DILocation(line: 871, column: 7, scope: !3445)
!3560 = !DILocation(line: 872, column: 7, scope: !3445)
!3561 = !DILocation(line: 873, column: 7, scope: !3445)
!3562 = !DILocation(line: 874, column: 7, scope: !3445)
!3563 = !DILocation(line: 875, column: 7, scope: !3445)
!3564 = !DILocation(line: 876, column: 7, scope: !3445)
!3565 = !DILocation(line: 877, column: 7, scope: !3445)
!3566 = !DILocation(line: 878, column: 7, scope: !3445)
!3567 = !DILocation(line: 879, column: 7, scope: !3445)
!3568 = !DILocation(line: 880, column: 7, scope: !3445)
!3569 = !DILocation(line: 881, column: 7, scope: !3445)
!3570 = !DILocation(line: 882, column: 7, scope: !3445)
!3571 = !DILocation(line: 883, column: 7, scope: !3445)
!3572 = !DILocation(line: 884, column: 7, scope: !3445)
!3573 = !DILocation(line: 887, column: 4, scope: !3447)
!3574 = !DILocation(line: 0, scope: !3447)
!3575 = !DILocation(line: 888, column: 4, scope: !3447)
!3576 = !DILocation(line: 889, column: 4, scope: !3447)
!3577 = !DILocation(line: 890, column: 4, scope: !3447)
!3578 = !DILocation(line: 891, column: 4, scope: !3447)
!3579 = !DILocation(line: 892, column: 4, scope: !3447)
!3580 = !DILocation(line: 893, column: 4, scope: !3447)
!3581 = !DILocation(line: 894, column: 4, scope: !3447)
!3582 = !DILocation(line: 895, column: 4, scope: !3447)
!3583 = !DILocation(line: 896, column: 4, scope: !3447)
!3584 = !DILocation(line: 897, column: 4, scope: !3447)
!3585 = !DILocation(line: 900, column: 8, scope: !3449)
!3586 = !DILocation(line: 0, scope: !3449)
!3587 = !DILocation(line: 901, column: 8, scope: !3449)
!3588 = !DILocation(line: 902, column: 8, scope: !3449)
!3589 = !DILocation(line: 904, column: 4, scope: !3447)
!3590 = !DILocation(line: 905, column: 4, scope: !3447)
!3591 = !DILocation(line: 906, column: 4, scope: !3447)
!3592 = !DILocation(line: 909, column: 8, scope: !3451)
!3593 = !DILocation(line: 0, scope: !3451)
!3594 = !DILocation(line: 910, column: 8, scope: !3451)
!3595 = !DILocation(line: 912, column: 11, scope: !3447)
!3596 = !DILocation(line: 913, column: 4, scope: !3447)
!3597 = !DILocation(line: 914, column: 4, scope: !3447)
!3598 = !DILocation(line: 915, column: 4, scope: !3447)
!3599 = !DILocation(line: 916, column: 4, scope: !3447)
!3600 = !DILocation(line: 917, column: 4, scope: !3447)
!3601 = !DILocation(line: 918, column: 4, scope: !3447)
!3602 = !DILocation(line: 920, column: 7, scope: !3445)
!3603 = !DILocation(line: 921, column: 7, scope: !3445)
!3604 = !DILocation(line: 922, column: 7, scope: !3445)
!3605 = !DILocation(line: 923, column: 7, scope: !3445)
!3606 = !DILocation(line: 929, column: 7, scope: !3445)
!3607 = !DILocation(line: 930, column: 7, scope: !3445)
!3608 = !DILocation(line: 931, column: 7, scope: !3445)
!3609 = !DILocation(line: 942, column: 7, scope: !3445)
!3610 = !DILocation(line: 943, column: 7, scope: !3445)
!3611 = !DILocation(line: 944, column: 7, scope: !3445)
!3612 = !DILocation(line: 945, column: 7, scope: !3445)
!3613 = !DILocation(line: 946, column: 7, scope: !3445)
!3614 = !DILocation(line: 947, column: 7, scope: !3445)
!3615 = !DILocation(line: 948, column: 7, scope: !3445)
!3616 = !DILocation(line: 949, column: 7, scope: !3445)
!3617 = !DILocation(line: 950, column: 7, scope: !3445)
!3618 = !DILocation(line: 952, column: 3, scope: !3435)
!3619 = !DILocation(line: 953, column: 3, scope: !3435)
!3620 = !DILocation(line: 954, column: 3, scope: !3435)
!3621 = !DILocation(line: 955, column: 3, scope: !3435)
!3622 = !DILocation(line: 956, column: 3, scope: !3435)
!3623 = !DILocation(line: 957, column: 3, scope: !3435)
!3624 = !DILocation(line: 958, column: 3, scope: !3435)
!3625 = !DILocation(line: 960, column: 3, scope: !3435)
!3626 = !DILocation(line: 962, column: 3, scope: !3435)
!3627 = !DILocation(line: 965, column: 7, scope: !3453)
!3628 = !DILocation(line: 0, scope: !3453)
!3629 = !DILocation(line: 966, column: 7, scope: !3453)
!3630 = !DILocation(line: 967, column: 7, scope: !3453)
!3631 = !DILocation(line: 968, column: 7, scope: !3453)
!3632 = !DILocation(line: 969, column: 7, scope: !3453)
!3633 = !DILocation(line: 970, column: 7, scope: !3453)
!3634 = !DILocation(line: 971, column: 7, scope: !3453)
!3635 = !DILocation(line: 972, column: 7, scope: !3453)
!3636 = !DILocation(line: 973, column: 7, scope: !3453)
!3637 = !DILocation(line: 974, column: 7, scope: !3453)
!3638 = !DILocation(line: 975, column: 7, scope: !3453)
!3639 = !DILocation(line: 976, column: 7, scope: !3453)
!3640 = !DILocation(line: 977, column: 7, scope: !3453)
!3641 = !DILocation(line: 978, column: 7, scope: !3453)
!3642 = !DILocation(line: 979, column: 7, scope: !3453)
!3643 = !DILocation(line: 980, column: 7, scope: !3453)
!3644 = !DILocation(line: 981, column: 7, scope: !3453)
!3645 = !DILocation(line: 982, column: 7, scope: !3453)
!3646 = !DILocation(line: 983, column: 7, scope: !3453)
!3647 = !DILocation(line: 984, column: 7, scope: !3453)
!3648 = !DILocation(line: 988, column: 7, scope: !3453)
!3649 = !DILocation(line: 991, column: 4, scope: !3455)
!3650 = !DILocation(line: 0, scope: !3455)
!3651 = !DILocation(line: 992, column: 4, scope: !3455)
!3652 = !DILocation(line: 993, column: 4, scope: !3455)
!3653 = !DILocation(line: 994, column: 4, scope: !3455)
!3654 = !DILocation(line: 995, column: 4, scope: !3455)
!3655 = !DILocation(line: 996, column: 4, scope: !3455)
!3656 = !DILocation(line: 997, column: 7, scope: !3455)
!3657 = !DILocation(line: 999, column: 7, scope: !3453)
!3658 = !DILocation(line: 1000, column: 7, scope: !3453)
!3659 = !DILocation(line: 1001, column: 7, scope: !3453)
!3660 = !DILocation(line: 1002, column: 7, scope: !3453)
!3661 = !DILocation(line: 1003, column: 7, scope: !3453)
!3662 = !DILocation(line: 1004, column: 7, scope: !3453)
!3663 = !DILocation(line: 1005, column: 7, scope: !3453)
!3664 = !DILocation(line: 1006, column: 7, scope: !3453)
!3665 = !DILocation(line: 1007, column: 7, scope: !3453)
!3666 = !DILocation(line: 1008, column: 7, scope: !3453)
!3667 = !DILocation(line: 1009, column: 7, scope: !3453)
!3668 = !DILocation(line: 1010, column: 7, scope: !3453)
!3669 = !DILocation(line: 1011, column: 7, scope: !3453)
!3670 = !DILocation(line: 1012, column: 7, scope: !3453)
!3671 = !DILocation(line: 1013, column: 7, scope: !3453)
!3672 = !DILocation(line: 1014, column: 7, scope: !3453)
!3673 = !DILocation(line: 1015, column: 7, scope: !3453)
!3674 = !DILocation(line: 1016, column: 7, scope: !3453)
!3675 = !DILocation(line: 1017, column: 7, scope: !3453)
!3676 = !DILocation(line: 1018, column: 7, scope: !3453)
!3677 = !DILocation(line: 1019, column: 7, scope: !3453)
!3678 = !DILocation(line: 1020, column: 7, scope: !3453)
!3679 = !DILocation(line: 1021, column: 7, scope: !3453)
!3680 = !DILocation(line: 1024, column: 4, scope: !3457)
!3681 = !DILocation(line: 0, scope: !3457)
!3682 = !DILocation(line: 1025, column: 4, scope: !3457)
!3683 = !DILocation(line: 1026, column: 4, scope: !3457)
!3684 = !DILocation(line: 1027, column: 4, scope: !3457)
!3685 = !DILocation(line: 1028, column: 4, scope: !3457)
!3686 = !DILocation(line: 1029, column: 4, scope: !3457)
!3687 = !DILocation(line: 1030, column: 4, scope: !3457)
!3688 = !DILocation(line: 1031, column: 4, scope: !3457)
!3689 = !DILocation(line: 1032, column: 4, scope: !3457)
!3690 = !DILocation(line: 1033, column: 4, scope: !3457)
!3691 = !DILocation(line: 1034, column: 4, scope: !3457)
!3692 = !DILocation(line: 1035, column: 4, scope: !3457)
!3693 = !DILocation(line: 1036, column: 4, scope: !3457)
!3694 = !DILocation(line: 1037, column: 4, scope: !3457)
!3695 = !DILocation(line: 1038, column: 4, scope: !3457)
!3696 = !DILocation(line: 1039, column: 4, scope: !3457)
!3697 = !DILocation(line: 1040, column: 4, scope: !3457)
!3698 = !DILocation(line: 1041, column: 4, scope: !3457)
!3699 = !DILocation(line: 1044, column: 8, scope: !3459)
!3700 = !DILocation(line: 0, scope: !3459)
!3701 = !DILocation(line: 1045, column: 8, scope: !3459)
!3702 = !DILocation(line: 1047, column: 4, scope: !3457)
!3703 = !DILocation(line: 1048, column: 4, scope: !3457)
!3704 = !DILocation(line: 1049, column: 4, scope: !3457)
!3705 = !DILocation(line: 1050, column: 4, scope: !3457)
!3706 = !DILocation(line: 1051, column: 4, scope: !3457)
!3707 = !DILocation(line: 1052, column: 4, scope: !3457)
!3708 = !DILocation(line: 1053, column: 4, scope: !3457)
!3709 = !DILocation(line: 1054, column: 4, scope: !3457)
!3710 = !DILocation(line: 1055, column: 4, scope: !3457)
!3711 = !DILocation(line: 1056, column: 4, scope: !3457)
!3712 = !DILocation(line: 1057, column: 4, scope: !3457)
!3713 = !DILocation(line: 1058, column: 4, scope: !3457)
!3714 = !DILocation(line: 1060, column: 7, scope: !3453)
!3715 = !DILocation(line: 1062, column: 3, scope: !3435)
!3716 = !DILocation(line: 1063, column: 6, scope: !3435)
!3717 = !DILocation(line: 1068, column: 24, scope: !3435)
!3718 = !DILocation(line: 1068, column: 3, scope: !3435)
!3719 = !DILocation(line: 1069, column: 24, scope: !3435)
!3720 = !DILocation(line: 1069, column: 3, scope: !3435)
!3721 = !DILocation(line: 1072, column: 24, scope: !3435)
!3722 = !DILocation(line: 1072, column: 3, scope: !3435)
!3723 = !DILocation(line: 1075, column: 24, scope: !3435)
!3724 = !DILocation(line: 1075, column: 3, scope: !3435)
!3725 = !DILocation(line: 1078, column: 24, scope: !3435)
!3726 = !DILocation(line: 1078, column: 3, scope: !3435)
!3727 = !DILocation(line: 1081, column: 1, scope: !3435)
!3728 = distinct !DISubprogram(name: "next_pass_1", scope: !3, file: !3, line: 512, type: !3729, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3731)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!2378, !2378, !2189}
!3731 = !{!3732, !3733}
!3732 = !DILocalVariable(name: "list", arg: 1, scope: !3728, file: !3, line: 512, type: !2378)
!3733 = !DILocalVariable(name: "pass", arg: 2, scope: !3728, file: !3, line: 512, type: !2189)
!3734 = !DILocation(line: 0, scope: !3728)
!3735 = !DILocation(line: 515, column: 3, scope: !3728)
!3736 = !DILocation(line: 517, column: 11, scope: !3728)
!3737 = !DILocation(line: 517, column: 9, scope: !3728)
!3738 = !DILocation(line: 519, column: 20, scope: !3728)
!3739 = !DILocation(line: 519, column: 3, scope: !3728)
!3740 = distinct !DISubprogram(name: "register_dump_files", scope: !3, file: !3, line: 450, type: !3741, scopeLine: 451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3743)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{null, !2189, !625}
!3743 = !{!3744, !3745}
!3744 = !DILocalVariable(name: "pass", arg: 1, scope: !3740, file: !3, line: 450, type: !2189)
!3745 = !DILocalVariable(name: "properties", arg: 2, scope: !3740, file: !3, line: 450, type: !625)
!3746 = !DILocation(line: 0, scope: !3740)
!3747 = !DILocation(line: 452, column: 9, scope: !3740)
!3748 = !DILocation(line: 452, column: 29, scope: !3740)
!3749 = !DILocation(line: 453, column: 3, scope: !3740)
!3750 = !DILocation(line: 454, column: 1, scope: !3740)
!3751 = distinct !DISubprogram(name: "do_per_function_toporder", scope: !3, file: !3, line: 1125, type: !3752, scopeLine: 1126, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3754)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{null, !1535, !629}
!3754 = !{!3755, !3756, !3757, !3758}
!3755 = !DILocalVariable(name: "callback", arg: 1, scope: !3751, file: !3, line: 1125, type: !1535)
!3756 = !DILocalVariable(name: "data", arg: 2, scope: !3751, file: !3, line: 1125, type: !629)
!3757 = !DILocalVariable(name: "i", scope: !3751, file: !3, line: 1127, type: !625)
!3758 = !DILocalVariable(name: "node", scope: !3759, file: !3, line: 1140, type: !2116)
!3759 = distinct !DILexicalBlock(scope: !3760, file: !3, line: 1139, column: 2)
!3760 = distinct !DILexicalBlock(scope: !3761, file: !3, line: 1138, column: 7)
!3761 = distinct !DILexicalBlock(scope: !3762, file: !3, line: 1138, column: 7)
!3762 = distinct !DILexicalBlock(scope: !3763, file: !3, line: 1132, column: 5)
!3763 = distinct !DILexicalBlock(scope: !3751, file: !3, line: 1129, column: 7)
!3764 = !DILocation(line: 0, scope: !3751)
!3765 = !DILocation(line: 1129, column: 7, scope: !3763)
!3766 = !DILocation(line: 1129, column: 7, scope: !3751)
!3767 = !DILocation(line: 1130, column: 5, scope: !3763)
!3768 = !DILocation(line: 1133, column: 7, scope: !3762)
!3769 = !DILocation(line: 1134, column: 15, scope: !3762)
!3770 = !DILocation(line: 1134, column: 13, scope: !3762)
!3771 = !DILocation(line: 1135, column: 34, scope: !3762)
!3772 = !DILocation(line: 1135, column: 16, scope: !3762)
!3773 = !DILocation(line: 1135, column: 14, scope: !3762)
!3774 = !DILocation(line: 1136, column: 12, scope: !3775)
!3775 = distinct !DILexicalBlock(scope: !3762, file: !3, line: 1136, column: 7)
!3776 = !DILocation(line: 0, scope: !3775)
!3777 = !DILocation(line: 1136, column: 30, scope: !3778)
!3778 = distinct !DILexicalBlock(scope: !3775, file: !3, line: 1136, column: 7)
!3779 = !DILocation(line: 1136, column: 7, scope: !3775)
!3780 = !DILocation(line: 1137, column: 9, scope: !3778)
!3781 = !DILocation(line: 1137, column: 19, scope: !3778)
!3782 = !DILocation(line: 1137, column: 27, scope: !3778)
!3783 = !DILocation(line: 1136, column: 7, scope: !3778)
!3784 = distinct !{!3784, !3779, !3785}
!3785 = !DILocation(line: 1137, column: 29, scope: !3775)
!3786 = !DILocation(line: 1138, column: 12, scope: !3761)
!3787 = !DILocation(line: 0, scope: !3761)
!3788 = !DILocation(line: 1138, column: 30, scope: !3760)
!3789 = !DILocation(line: 1138, column: 7, scope: !3761)
!3790 = !DILocation(line: 1140, column: 31, scope: !3759)
!3791 = !DILocation(line: 0, scope: !3759)
!3792 = !DILocation(line: 1143, column: 13, scope: !3759)
!3793 = !DILocation(line: 1144, column: 10, scope: !3759)
!3794 = !DILocation(line: 1144, column: 18, scope: !3759)
!3795 = !DILocation(line: 1145, column: 14, scope: !3796)
!3796 = distinct !DILexicalBlock(scope: !3759, file: !3, line: 1145, column: 8)
!3797 = !DILocation(line: 1145, column: 8, scope: !3796)
!3798 = !DILocation(line: 1145, column: 8, scope: !3759)
!3799 = !DILocation(line: 1147, column: 19, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3796, file: !3, line: 1146, column: 6)
!3801 = !DILocation(line: 1147, column: 8, scope: !3800)
!3802 = !DILocation(line: 1148, column: 38, scope: !3800)
!3803 = !DILocation(line: 1148, column: 30, scope: !3800)
!3804 = !DILocation(line: 1149, column: 8, scope: !3800)
!3805 = !DILocation(line: 1150, column: 8, scope: !3800)
!3806 = !DILocation(line: 1151, column: 8, scope: !3800)
!3807 = !DILocation(line: 1152, column: 30, scope: !3800)
!3808 = !DILocation(line: 1153, column: 8, scope: !3800)
!3809 = !DILocation(line: 1154, column: 8, scope: !3800)
!3810 = !DILocation(line: 1155, column: 6, scope: !3800)
!3811 = !DILocation(line: 1138, column: 7, scope: !3760)
!3812 = distinct !{!3812, !3789, !3813}
!3813 = !DILocation(line: 1156, column: 2, scope: !3761)
!3814 = !DILocation(line: 1158, column: 13, scope: !3751)
!3815 = !DILocation(line: 1158, column: 3, scope: !3751)
!3816 = !DILocation(line: 1159, column: 9, scope: !3751)
!3817 = !DILocation(line: 1160, column: 10, scope: !3751)
!3818 = !DILocation(line: 1161, column: 1, scope: !3751)
!3819 = distinct !DISubprogram(name: "pass_init_dump_file", scope: !3, file: !3, line: 1352, type: !3820, scopeLine: 1353, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3822)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{!624, !2189}
!3822 = !{!3823, !3824, !3827, !3830}
!3823 = !DILocalVariable(name: "pass", arg: 1, scope: !3819, file: !3, line: 1352, type: !2189)
!3824 = !DILocalVariable(name: "initializing_dump", scope: !3825, file: !3, line: 1357, type: !624)
!3825 = distinct !DILexicalBlock(scope: !3826, file: !3, line: 1356, column: 5)
!3826 = distinct !DILexicalBlock(scope: !3819, file: !3, line: 1355, column: 7)
!3827 = !DILocalVariable(name: "dname", scope: !3828, file: !3, line: 1362, type: !630)
!3828 = distinct !DILexicalBlock(scope: !3829, file: !3, line: 1361, column: 2)
!3829 = distinct !DILexicalBlock(scope: !3825, file: !3, line: 1360, column: 11)
!3830 = !DILocalVariable(name: "aname", scope: !3828, file: !3, line: 1362, type: !630)
!3831 = !DILocation(line: 0, scope: !3819)
!3832 = !DILocation(line: 1355, column: 13, scope: !3826)
!3833 = !DILocation(line: 1355, column: 32, scope: !3826)
!3834 = !DILocation(line: 1355, column: 7, scope: !3819)
!3835 = !DILocation(line: 1357, column: 33, scope: !3825)
!3836 = !DILocation(line: 1357, column: 32, scope: !3825)
!3837 = !DILocation(line: 0, scope: !3825)
!3838 = !DILocation(line: 1358, column: 50, scope: !3825)
!3839 = !DILocation(line: 1358, column: 24, scope: !3825)
!3840 = !DILocation(line: 1358, column: 22, scope: !3825)
!3841 = !DILocation(line: 1359, column: 37, scope: !3825)
!3842 = !DILocation(line: 1359, column: 19, scope: !3825)
!3843 = !DILocation(line: 1359, column: 17, scope: !3825)
!3844 = !DILocation(line: 1360, column: 11, scope: !3829)
!3845 = !DILocation(line: 1360, column: 24, scope: !3829)
!3846 = !DILocation(line: 1360, column: 21, scope: !3829)
!3847 = !DILocation(line: 1363, column: 23, scope: !3828)
!3848 = !DILocation(line: 1363, column: 12, scope: !3828)
!3849 = !DILocation(line: 0, scope: !3828)
!3850 = !DILocation(line: 1364, column: 13, scope: !3828)
!3851 = !DILocation(line: 1366, column: 13, scope: !3828)
!3852 = !DILocation(line: 1367, column: 7, scope: !3828)
!3853 = !DILocation(line: 1367, column: 13, scope: !3828)
!3854 = !DILocation(line: 1367, column: 32, scope: !3828)
!3855 = !DILocation(line: 1369, column: 34, scope: !3828)
!3856 = !DILocation(line: 1369, column: 9, scope: !3828)
!3857 = !DILocation(line: 1366, column: 4, scope: !3828)
!3858 = !DILocation(line: 1372, column: 2, scope: !3828)
!3859 = !DILocation(line: 0, scope: !3826)
!3860 = !DILocation(line: 1377, column: 1, scope: !3819)
!3861 = distinct !DISubprogram(name: "pass_fini_dump_file", scope: !3, file: !3, line: 1383, type: !3150, scopeLine: 1384, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3862)
!3862 = !{!3863}
!3863 = !DILocalVariable(name: "pass", arg: 1, scope: !3861, file: !3, line: 1383, type: !2189)
!3864 = !DILocation(line: 0, scope: !3861)
!3865 = !DILocation(line: 1386, column: 7, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3861, file: !3, line: 1386, column: 7)
!3867 = !DILocation(line: 1386, column: 7, scope: !3861)
!3868 = !DILocation(line: 1388, column: 7, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3866, file: !3, line: 1387, column: 5)
!3870 = !DILocation(line: 1389, column: 22, scope: !3869)
!3871 = !DILocation(line: 1390, column: 5, scope: !3869)
!3872 = !DILocation(line: 1392, column: 7, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3861, file: !3, line: 1392, column: 7)
!3874 = !DILocation(line: 1392, column: 7, scope: !3861)
!3875 = !DILocation(line: 1394, column: 23, scope: !3876)
!3876 = distinct !DILexicalBlock(scope: !3873, file: !3, line: 1393, column: 5)
!3877 = !DILocation(line: 1394, column: 7, scope: !3876)
!3878 = !DILocation(line: 1395, column: 17, scope: !3876)
!3879 = !DILocation(line: 1396, column: 5, scope: !3876)
!3880 = !DILocation(line: 1397, column: 1, scope: !3861)
!3881 = distinct !DISubprogram(name: "execute_ipa_summary_passes", scope: !3, file: !3, line: 1413, type: !3882, scopeLine: 1414, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3884)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{null, !2172}
!3884 = !{!3885, !3886}
!3885 = !DILocalVariable(name: "ipa_pass", arg: 1, scope: !3881, file: !3, line: 1413, type: !2172)
!3886 = !DILocalVariable(name: "pass", scope: !3887, file: !3, line: 1417, type: !2189)
!3887 = distinct !DILexicalBlock(scope: !3881, file: !3, line: 1416, column: 5)
!3888 = !DILocation(line: 0, scope: !3881)
!3889 = !DILocation(line: 1415, column: 3, scope: !3881)
!3890 = !DILocation(line: 1417, column: 42, scope: !3887)
!3891 = !DILocation(line: 0, scope: !3887)
!3892 = !DILocation(line: 1420, column: 26, scope: !3893)
!3893 = distinct !DILexicalBlock(scope: !3887, file: !3, line: 1420, column: 11)
!3894 = !DILocation(line: 1420, column: 31, scope: !3893)
!3895 = !DILocation(line: 1421, column: 4, scope: !3893)
!3896 = !DILocation(line: 1421, column: 15, scope: !3893)
!3897 = !DILocation(line: 1421, column: 9, scope: !3893)
!3898 = !DILocation(line: 1421, column: 20, scope: !3893)
!3899 = !DILocation(line: 1421, column: 23, scope: !3893)
!3900 = !DILocation(line: 1422, column: 4, scope: !3893)
!3901 = !DILocation(line: 1422, column: 17, scope: !3893)
!3902 = !DILocation(line: 1422, column: 7, scope: !3893)
!3903 = !DILocation(line: 1420, column: 11, scope: !3887)
!3904 = !DILocation(line: 1424, column: 4, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3893, file: !3, line: 1423, column: 2)
!3906 = !DILocation(line: 1427, column: 14, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !3905, file: !3, line: 1427, column: 8)
!3908 = !DILocation(line: 1427, column: 8, scope: !3907)
!3909 = !DILocation(line: 1428, column: 6, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3911, file: !3, line: 1428, column: 6)
!3911 = distinct !DILexicalBlock(scope: !3907, file: !3, line: 1428, column: 6)
!3912 = !DILocation(line: 1427, column: 8, scope: !3905)
!3913 = !DILocation(line: 1430, column: 14, scope: !3905)
!3914 = !DILocation(line: 1430, column: 4, scope: !3905)
!3915 = !DILocation(line: 1433, column: 14, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3905, file: !3, line: 1433, column: 8)
!3917 = !DILocation(line: 1433, column: 8, scope: !3916)
!3918 = !DILocation(line: 1434, column: 6, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3920, file: !3, line: 1434, column: 6)
!3920 = distinct !DILexicalBlock(scope: !3916, file: !3, line: 1434, column: 6)
!3921 = !DILocation(line: 1433, column: 8, scope: !3905)
!3922 = !DILocation(line: 1436, column: 4, scope: !3905)
!3923 = !DILocation(line: 1437, column: 2, scope: !3905)
!3924 = !DILocation(line: 1438, column: 58, scope: !3887)
!3925 = distinct !{!3925, !3889, !3926}
!3926 = !DILocation(line: 1439, column: 5, scope: !3881)
!3927 = !DILocation(line: 1440, column: 1, scope: !3881)
!3928 = distinct !DISubprogram(name: "execute_all_ipa_transforms", scope: !3, file: !3, line: 1487, type: !2201, scopeLine: 1488, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3929)
!3929 = !{!3930, !3931}
!3930 = !DILocalVariable(name: "node", scope: !3928, file: !3, line: 1489, type: !2116)
!3931 = !DILocalVariable(name: "i", scope: !3932, file: !3, line: 1495, type: !7)
!3932 = distinct !DILexicalBlock(scope: !3933, file: !3, line: 1494, column: 5)
!3933 = distinct !DILexicalBlock(scope: !3928, file: !3, line: 1493, column: 7)
!3934 = !DILocation(line: 1490, column: 8, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3928, file: !3, line: 1490, column: 7)
!3936 = !DILocation(line: 1490, column: 7, scope: !3928)
!3937 = !DILocation(line: 1492, column: 23, scope: !3928)
!3938 = !DILocation(line: 1492, column: 10, scope: !3928)
!3939 = !DILocation(line: 0, scope: !3928)
!3940 = !DILocation(line: 1493, column: 13, scope: !3933)
!3941 = !DILocation(line: 1493, column: 7, scope: !3933)
!3942 = !DILocation(line: 1493, column: 7, scope: !3928)
!3943 = !DILocation(line: 1497, column: 7, scope: !3944)
!3944 = distinct !DILexicalBlock(scope: !3932, file: !3, line: 1497, column: 7)
!3945 = !DILocation(line: 1497, column: 23, scope: !3946)
!3946 = distinct !DILexicalBlock(scope: !3944, file: !3, line: 1497, column: 7)
!3947 = !DILocation(line: 0, scope: !3944)
!3948 = !DILocation(line: 0, scope: !3932)
!3949 = !DILocation(line: 1497, column: 21, scope: !3946)
!3950 = !DILocation(line: 1500, column: 6, scope: !3946)
!3951 = !DILocation(line: 1499, column: 2, scope: !3946)
!3952 = !DILocation(line: 1498, column: 6, scope: !3946)
!3953 = !DILocation(line: 1497, column: 7, scope: !3946)
!3954 = distinct !{!3954, !3943, !3955}
!3955 = !DILocation(line: 1502, column: 12, scope: !3944)
!3956 = !DILocation(line: 1503, column: 7, scope: !3932)
!3957 = !DILocation(line: 1504, column: 37, scope: !3932)
!3958 = !DILocation(line: 1505, column: 5, scope: !3932)
!3959 = !DILocation(line: 1506, column: 1, scope: !3928)
!3960 = distinct !DISubprogram(name: "VEC_ipa_opt_pass_base_length", scope: !1434, file: !1434, line: 176, type: !3961, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3965)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{!7, !3963}
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2164)
!3965 = !{!3966}
!3966 = !DILocalVariable(name: "vec_", arg: 1, scope: !3960, file: !1434, line: 176, type: !3963)
!3967 = !DILocation(line: 0, scope: !3960)
!3968 = !DILocation(line: 176, column: 1, scope: !3960)
!3969 = distinct !DISubprogram(name: "execute_one_ipa_transform_pass", scope: !3, file: !3, line: 1445, type: !3970, scopeLine: 1447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3972)
!3970 = !DISubroutineType(types: !3971)
!3971 = !{null, !2116, !2172}
!3972 = !{!3973, !3974, !3975, !3976}
!3973 = !DILocalVariable(name: "node", arg: 1, scope: !3969, file: !3, line: 1445, type: !2116)
!3974 = !DILocalVariable(name: "ipa_pass", arg: 2, scope: !3969, file: !3, line: 1446, type: !2172)
!3975 = !DILocalVariable(name: "pass", scope: !3969, file: !3, line: 1448, type: !2189)
!3976 = !DILocalVariable(name: "todo_after", scope: !3969, file: !3, line: 1449, type: !7)
!3977 = !DILocation(line: 0, scope: !3969)
!3978 = !DILocation(line: 1448, column: 38, scope: !3969)
!3979 = !DILocation(line: 1451, column: 16, scope: !3969)
!3980 = !DILocation(line: 1452, column: 18, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3969, file: !3, line: 1452, column: 7)
!3982 = !DILocation(line: 1452, column: 8, scope: !3981)
!3983 = !DILocation(line: 1452, column: 7, scope: !3969)
!3984 = !DILocation(line: 1457, column: 21, scope: !3969)
!3985 = !DILocation(line: 1457, column: 26, scope: !3969)
!3986 = !DILocation(line: 1457, column: 36, scope: !3969)
!3987 = !DILocation(line: 1457, column: 52, scope: !3969)
!3988 = !DILocation(line: 1457, column: 18, scope: !3969)
!3989 = !DILocation(line: 1459, column: 3, scope: !3969)
!3990 = !DILocation(line: 1462, column: 27, scope: !3969)
!3991 = !DILocation(line: 1462, column: 3, scope: !3969)
!3992 = !DILocation(line: 1465, column: 13, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3969, file: !3, line: 1465, column: 7)
!3994 = !DILocation(line: 1465, column: 19, scope: !3993)
!3995 = !DILocation(line: 1466, column: 5, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3997, file: !3, line: 1466, column: 5)
!3997 = distinct !DILexicalBlock(scope: !3993, file: !3, line: 1466, column: 5)
!3998 = !DILocation(line: 1465, column: 7, scope: !3969)
!3999 = !DILocation(line: 1469, column: 26, scope: !3969)
!4000 = !DILocation(line: 1469, column: 16, scope: !3969)
!4001 = !DILocation(line: 1472, column: 13, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !3969, file: !3, line: 1472, column: 7)
!4003 = !DILocation(line: 1472, column: 19, scope: !4002)
!4004 = !DILocation(line: 1473, column: 5, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !4006, file: !3, line: 1473, column: 5)
!4006 = distinct !DILexicalBlock(scope: !4002, file: !3, line: 1473, column: 5)
!4007 = !DILocation(line: 1472, column: 7, scope: !3969)
!4008 = !DILocation(line: 1476, column: 3, scope: !3969)
!4009 = !DILocation(line: 1477, column: 3, scope: !3969)
!4010 = !DILocation(line: 1479, column: 3, scope: !3969)
!4011 = !DILocation(line: 1481, column: 16, scope: !3969)
!4012 = !DILocation(line: 1482, column: 1, scope: !3969)
!4013 = distinct !DISubprogram(name: "VEC_ipa_opt_pass_base_index", scope: !1434, file: !1434, line: 176, type: !4014, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4016)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{!2171, !3963, !7}
!4016 = !{!4017, !4018}
!4017 = !DILocalVariable(name: "vec_", arg: 1, scope: !4013, file: !1434, line: 176, type: !3963)
!4018 = !DILocalVariable(name: "ix_", arg: 2, scope: !4013, file: !1434, line: 176, type: !7)
!4019 = !DILocation(line: 0, scope: !4013)
!4020 = !DILocation(line: 176, column: 1, scope: !4013)
!4021 = distinct !DISubprogram(name: "VEC_ipa_opt_pass_heap_free", scope: !1434, file: !1434, line: 177, type: !4022, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4025)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{null, !4024}
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!4025 = !{!4026}
!4026 = !DILocalVariable(name: "vec_", arg: 1, scope: !4021, file: !1434, line: 177, type: !4024)
!4027 = !DILocation(line: 0, scope: !4021)
!4028 = !DILocation(line: 177, column: 1, scope: !4029)
!4029 = distinct !DILexicalBlock(scope: !4021, file: !1434, line: 177, column: 1)
!4030 = !DILocation(line: 177, column: 1, scope: !4021)
!4031 = distinct !DISubprogram(name: "execute_one_pass", scope: !3, file: !3, line: 1511, type: !3820, scopeLine: 1512, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4032)
!4032 = !{!4033, !4034, !4035, !4036, !4037}
!4033 = !DILocalVariable(name: "pass", arg: 1, scope: !4031, file: !3, line: 1511, type: !2189)
!4034 = !DILocalVariable(name: "initializing_dump", scope: !4031, file: !3, line: 1513, type: !624)
!4035 = !DILocalVariable(name: "todo_after", scope: !4031, file: !3, line: 1514, type: !7)
!4036 = !DILocalVariable(name: "gate_status", scope: !4031, file: !3, line: 1516, type: !624)
!4037 = !DILocalVariable(name: "node", scope: !4038, file: !3, line: 1595, type: !2116)
!4038 = distinct !DILexicalBlock(scope: !4039, file: !3, line: 1594, column: 5)
!4039 = distinct !DILexicalBlock(scope: !4031, file: !3, line: 1593, column: 7)
!4040 = !DILocation(line: 0, scope: !4031)
!4041 = !DILocation(line: 1516, column: 3, scope: !4031)
!4042 = !DILocation(line: 1520, column: 13, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !4031, file: !3, line: 1520, column: 7)
!4044 = !DILocation(line: 1520, column: 18, scope: !4043)
!4045 = !DILocation(line: 1520, column: 37, scope: !4043)
!4046 = !DILocation(line: 1520, column: 51, scope: !4043)
!4047 = !DILocation(line: 1520, column: 7, scope: !4031)
!4048 = !DILocation(line: 1521, column: 5, scope: !4043)
!4049 = !DILocation(line: 1523, column: 5, scope: !4043)
!4050 = !DILocation(line: 1525, column: 16, scope: !4031)
!4051 = !DILocation(line: 1529, column: 24, scope: !4031)
!4052 = !DILocation(line: 1529, column: 29, scope: !4031)
!4053 = !DILocation(line: 1529, column: 17, scope: !4031)
!4054 = !DILocation(line: 1529, column: 47, scope: !4031)
!4055 = !DILocation(line: 1529, column: 15, scope: !4031)
!4056 = !DILocation(line: 1532, column: 3, scope: !4031)
!4057 = !DILocation(line: 1534, column: 8, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !4031, file: !3, line: 1534, column: 7)
!4059 = !DILocation(line: 1534, column: 7, scope: !4031)
!4060 = !DILocation(line: 1537, column: 7, scope: !4061)
!4061 = distinct !DILexicalBlock(scope: !4058, file: !3, line: 1535, column: 5)
!4062 = !DILocation(line: 1542, column: 51, scope: !4031)
!4063 = !DILocation(line: 1542, column: 3, scope: !4031)
!4064 = !DILocation(line: 1544, column: 8, scope: !4065)
!4065 = distinct !DILexicalBlock(scope: !4031, file: !3, line: 1544, column: 7)
!4066 = !DILocation(line: 1544, column: 19, scope: !4065)
!4067 = !DILocation(line: 1544, column: 23, scope: !4065)
!4068 = !DILocation(line: 1544, column: 7, scope: !4031)
!4069 = !DILocation(line: 1545, column: 14, scope: !4065)
!4070 = !DILocation(line: 1545, column: 37, scope: !4065)
!4071 = !DILocation(line: 1545, column: 31, scope: !4065)
!4072 = !DILocation(line: 1545, column: 5, scope: !4065)
!4073 = !DILocation(line: 1549, column: 21, scope: !4031)
!4074 = !DILocation(line: 1549, column: 26, scope: !4031)
!4075 = !DILocation(line: 1549, column: 36, scope: !4031)
!4076 = !DILocation(line: 1549, column: 52, scope: !4031)
!4077 = !DILocation(line: 1549, column: 18, scope: !4031)
!4078 = !DILocation(line: 1551, column: 23, scope: !4031)
!4079 = !DILocation(line: 1554, column: 23, scope: !4031)
!4080 = !DILocation(line: 1554, column: 3, scope: !4031)
!4081 = !DILocation(line: 1562, column: 13, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !4031, file: !3, line: 1562, column: 7)
!4083 = !DILocation(line: 1562, column: 19, scope: !4082)
!4084 = !DILocation(line: 1563, column: 5, scope: !4085)
!4085 = distinct !DILexicalBlock(scope: !4086, file: !3, line: 1563, column: 5)
!4086 = distinct !DILexicalBlock(scope: !4082, file: !3, line: 1563, column: 5)
!4087 = !DILocation(line: 1562, column: 7, scope: !4031)
!4088 = !DILocation(line: 1566, column: 13, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !4031, file: !3, line: 1566, column: 7)
!4090 = !DILocation(line: 1566, column: 7, scope: !4089)
!4091 = !DILocation(line: 1566, column: 7, scope: !4031)
!4092 = !DILocation(line: 1568, column: 20, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !4089, file: !3, line: 1567, column: 5)
!4094 = !DILocation(line: 1569, column: 7, scope: !4093)
!4095 = !DILocation(line: 1570, column: 5, scope: !4093)
!4096 = !DILocation(line: 1573, column: 13, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4031, file: !3, line: 1573, column: 7)
!4098 = !DILocation(line: 1573, column: 19, scope: !4097)
!4099 = !DILocation(line: 1574, column: 5, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !4101, file: !3, line: 1574, column: 5)
!4101 = distinct !DILexicalBlock(scope: !4097, file: !3, line: 1574, column: 5)
!4102 = !DILocation(line: 1573, column: 7, scope: !4031)
!4103 = !DILocation(line: 1576, column: 3, scope: !4031)
!4104 = !DILocation(line: 1578, column: 7, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !4031, file: !3, line: 1578, column: 7)
!4106 = !DILocation(line: 1579, column: 10, scope: !4105)
!4107 = !DILocation(line: 1579, column: 7, scope: !4105)
!4108 = !DILocation(line: 1580, column: 10, scope: !4105)
!4109 = !DILocation(line: 1580, column: 28, scope: !4105)
!4110 = !DILocation(line: 1581, column: 10, scope: !4105)
!4111 = !DILocation(line: 1582, column: 7, scope: !4105)
!4112 = !DILocation(line: 1582, column: 17, scope: !4105)
!4113 = !DILocation(line: 1582, column: 33, scope: !4105)
!4114 = !DILocation(line: 1583, column: 4, scope: !4105)
!4115 = !DILocation(line: 1578, column: 7, scope: !4031)
!4116 = !DILocation(line: 1585, column: 33, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !4105, file: !3, line: 1584, column: 5)
!4118 = !DILocation(line: 1585, column: 7, scope: !4117)
!4119 = !DILocation(line: 1585, column: 54, scope: !4117)
!4120 = !DILocation(line: 1585, column: 60, scope: !4117)
!4121 = !DILocation(line: 1586, column: 18, scope: !4117)
!4122 = !DILocation(line: 1587, column: 30, scope: !4117)
!4123 = !DILocation(line: 1587, column: 7, scope: !4117)
!4124 = !DILocation(line: 1588, column: 5, scope: !4117)
!4125 = !DILocation(line: 1591, column: 36, scope: !4031)
!4126 = !DILocation(line: 1591, column: 28, scope: !4031)
!4127 = !DILocation(line: 1591, column: 3, scope: !4031)
!4128 = !DILocation(line: 1592, column: 3, scope: !4031)
!4129 = !DILocation(line: 1593, column: 13, scope: !4039)
!4130 = !DILocation(line: 1593, column: 18, scope: !4039)
!4131 = !DILocation(line: 1593, column: 7, scope: !4031)
!4132 = !DILocation(line: 0, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4134, file: !3, line: 1597, column: 13)
!4134 = distinct !DILexicalBlock(scope: !4135, file: !3, line: 1596, column: 7)
!4135 = distinct !DILexicalBlock(scope: !4038, file: !3, line: 1596, column: 7)
!4136 = !DILocation(line: 1596, column: 12, scope: !4135)
!4137 = !DILocation(line: 0, scope: !4135)
!4138 = !DILocation(line: 0, scope: !4038)
!4139 = !DILocation(line: 1596, column: 7, scope: !4135)
!4140 = !DILocation(line: 1597, column: 19, scope: !4133)
!4141 = !DILocation(line: 1597, column: 13, scope: !4133)
!4142 = !DILocation(line: 1597, column: 13, scope: !4134)
!4143 = !DILocation(line: 1598, column: 11, scope: !4133)
!4144 = !DILocation(line: 1596, column: 52, scope: !4134)
!4145 = !DILocation(line: 1596, column: 7, scope: !4134)
!4146 = distinct !{!4146, !4139, !4147}
!4147 = !DILocation(line: 1598, column: 11, scope: !4135)
!4148 = !DILocation(line: 1602, column: 8, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !4031, file: !3, line: 1602, column: 7)
!4150 = !DILocation(line: 1602, column: 7, scope: !4031)
!4151 = !DILocation(line: 1603, column: 5, scope: !4149)
!4152 = !DILocation(line: 1605, column: 3, scope: !4031)
!4153 = !DILocation(line: 1607, column: 13, scope: !4154)
!4154 = distinct !DILexicalBlock(scope: !4031, file: !3, line: 1607, column: 7)
!4155 = !DILocation(line: 1607, column: 18, scope: !4154)
!4156 = !DILocation(line: 1607, column: 37, scope: !4154)
!4157 = !DILocation(line: 1607, column: 51, scope: !4154)
!4158 = !DILocation(line: 1607, column: 7, scope: !4031)
!4159 = !DILocation(line: 1608, column: 5, scope: !4154)
!4160 = !DILocation(line: 1613, column: 3, scope: !4031)
!4161 = !DILocation(line: 1614, column: 1, scope: !4031)
!4162 = distinct !DISubprogram(name: "execute_todo", scope: !3, file: !3, line: 1276, type: !4163, scopeLine: 1277, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4165)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{null, !7}
!4165 = !{!4166}
!4166 = !DILocalVariable(name: "flags", arg: 1, scope: !4162, file: !3, line: 1276, type: !7)
!4167 = !DILocation(line: 0, scope: !4162)
!4168 = !DILocation(line: 1285, column: 25, scope: !4162)
!4169 = !DILocation(line: 1285, column: 23, scope: !4162)
!4170 = !DILocation(line: 1287, column: 51, scope: !4162)
!4171 = !DILocation(line: 1287, column: 43, scope: !4162)
!4172 = !DILocation(line: 1287, column: 3, scope: !4162)
!4173 = !DILocation(line: 1293, column: 13, scope: !4174)
!4174 = distinct !DILexicalBlock(scope: !4162, file: !3, line: 1293, column: 7)
!4175 = !DILocation(line: 1293, column: 7, scope: !4162)
!4176 = !DILocation(line: 1295, column: 7, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4174, file: !3, line: 1294, column: 5)
!4178 = !DILocation(line: 1296, column: 46, scope: !4177)
!4179 = !DILocation(line: 1296, column: 7, scope: !4177)
!4180 = !DILocation(line: 1297, column: 5, scope: !4177)
!4181 = !DILocation(line: 1299, column: 14, scope: !4182)
!4182 = distinct !DILexicalBlock(scope: !4162, file: !3, line: 1299, column: 7)
!4183 = !DILocation(line: 1299, column: 37, scope: !4182)
!4184 = !DILocation(line: 1299, column: 34, scope: !4182)
!4185 = !DILocation(line: 1299, column: 51, scope: !4182)
!4186 = !DILocation(line: 1301, column: 7, scope: !4187)
!4187 = distinct !DILexicalBlock(scope: !4182, file: !3, line: 1300, column: 5)
!4188 = !DILocation(line: 1302, column: 20, scope: !4187)
!4189 = !DILocation(line: 1302, column: 7, scope: !4187)
!4190 = !DILocation(line: 1305, column: 15, scope: !4187)
!4191 = !DILocation(line: 1305, column: 7, scope: !4187)
!4192 = !DILocation(line: 1306, column: 5, scope: !4187)
!4193 = !DILocation(line: 1308, column: 13, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4162, file: !3, line: 1308, column: 7)
!4195 = !DILocation(line: 1308, column: 7, scope: !4162)
!4196 = !DILocation(line: 1309, column: 5, scope: !4194)
!4197 = !DILocation(line: 1313, column: 13, scope: !4198)
!4198 = distinct !DILexicalBlock(scope: !4162, file: !3, line: 1313, column: 7)
!4199 = !DILocation(line: 1313, column: 7, scope: !4162)
!4200 = !DILocation(line: 1314, column: 21, scope: !4198)
!4201 = !DILocation(line: 1314, column: 5, scope: !4198)
!4202 = !DILocation(line: 1315, column: 1, scope: !4162)
!4203 = distinct !DISubprogram(name: "do_per_function", scope: !3, file: !3, line: 1088, type: !3752, scopeLine: 1089, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4204)
!4204 = !{!4205, !4206, !4207}
!4205 = !DILocalVariable(name: "callback", arg: 1, scope: !4203, file: !3, line: 1088, type: !1535)
!4206 = !DILocalVariable(name: "data", arg: 2, scope: !4203, file: !3, line: 1088, type: !629)
!4207 = !DILocalVariable(name: "node", scope: !4208, file: !3, line: 1094, type: !2116)
!4208 = distinct !DILexicalBlock(scope: !4209, file: !3, line: 1093, column: 5)
!4209 = distinct !DILexicalBlock(scope: !4203, file: !3, line: 1090, column: 7)
!4210 = !DILocation(line: 0, scope: !4203)
!4211 = !DILocation(line: 1090, column: 7, scope: !4209)
!4212 = !DILocation(line: 1090, column: 7, scope: !4203)
!4213 = !DILocation(line: 1091, column: 5, scope: !4209)
!4214 = !DILocation(line: 1095, column: 12, scope: !4215)
!4215 = distinct !DILexicalBlock(scope: !4208, file: !3, line: 1095, column: 7)
!4216 = !DILocation(line: 0, scope: !4215)
!4217 = !DILocation(line: 0, scope: !4208)
!4218 = !DILocation(line: 1095, column: 7, scope: !4215)
!4219 = !DILocation(line: 1096, column: 12, scope: !4220)
!4220 = distinct !DILexicalBlock(scope: !4221, file: !3, line: 1096, column: 6)
!4221 = distinct !DILexicalBlock(scope: !4215, file: !3, line: 1095, column: 7)
!4222 = !DILocation(line: 1096, column: 6, scope: !4220)
!4223 = !DILocation(line: 1096, column: 21, scope: !4220)
!4224 = !DILocation(line: 1096, column: 49, scope: !4220)
!4225 = !DILocation(line: 1096, column: 24, scope: !4220)
!4226 = !DILocation(line: 1097, column: 6, scope: !4220)
!4227 = !DILocation(line: 1097, column: 17, scope: !4220)
!4228 = !DILocation(line: 1097, column: 11, scope: !4220)
!4229 = !DILocation(line: 1097, column: 26, scope: !4220)
!4230 = !DILocation(line: 0, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4220, file: !3, line: 1098, column: 4)
!4232 = !DILocation(line: 1099, column: 17, scope: !4231)
!4233 = !DILocation(line: 1097, column: 35, scope: !4220)
!4234 = !DILocation(line: 1097, column: 59, scope: !4220)
!4235 = !DILocation(line: 1097, column: 40, scope: !4220)
!4236 = !DILocation(line: 1096, column: 6, scope: !4221)
!4237 = !DILocation(line: 1099, column: 6, scope: !4231)
!4238 = !DILocation(line: 1100, column: 36, scope: !4231)
!4239 = !DILocation(line: 1100, column: 28, scope: !4231)
!4240 = !DILocation(line: 1101, column: 6, scope: !4231)
!4241 = !DILocation(line: 1102, column: 11, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4231, file: !3, line: 1102, column: 10)
!4243 = !DILocation(line: 1102, column: 10, scope: !4231)
!4244 = !DILocation(line: 1104, column: 10, scope: !4245)
!4245 = distinct !DILexicalBlock(scope: !4242, file: !3, line: 1103, column: 8)
!4246 = !DILocation(line: 1105, column: 10, scope: !4245)
!4247 = !DILocation(line: 1106, column: 8, scope: !4245)
!4248 = !DILocation(line: 1107, column: 28, scope: !4231)
!4249 = !DILocation(line: 1108, column: 6, scope: !4231)
!4250 = !DILocation(line: 1109, column: 6, scope: !4231)
!4251 = !DILocation(line: 1110, column: 4, scope: !4231)
!4252 = !DILocation(line: 1095, column: 52, scope: !4221)
!4253 = !DILocation(line: 1095, column: 7, scope: !4221)
!4254 = distinct !{!4254, !4218, !4255}
!4255 = !DILocation(line: 1110, column: 4, scope: !4215)
!4256 = !DILocation(line: 1112, column: 1, scope: !4203)
!4257 = distinct !DISubprogram(name: "clear_last_verified", scope: !3, file: !3, line: 1331, type: !1536, scopeLine: 1332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4258)
!4258 = !{!4259}
!4259 = !DILocalVariable(name: "data", arg: 1, scope: !4257, file: !3, line: 1331, type: !629)
!4260 = !DILocation(line: 0, scope: !4257)
!4261 = !DILocation(line: 1333, column: 3, scope: !4257)
!4262 = !DILocation(line: 1333, column: 9, scope: !4257)
!4263 = !DILocation(line: 1333, column: 23, scope: !4257)
!4264 = !DILocation(line: 1334, column: 1, scope: !4257)
!4265 = distinct !DISubprogram(name: "update_properties_after_pass", scope: !3, file: !3, line: 1403, type: !1536, scopeLine: 1404, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4266)
!4266 = !{!4267, !4268}
!4267 = !DILocalVariable(name: "data", arg: 1, scope: !4265, file: !3, line: 1403, type: !629)
!4268 = !DILocalVariable(name: "pass", scope: !4265, file: !3, line: 1405, type: !2189)
!4269 = !DILocation(line: 0, scope: !4265)
!4270 = !DILocation(line: 1406, column: 28, scope: !4265)
!4271 = !DILocation(line: 1406, column: 34, scope: !4265)
!4272 = !DILocation(line: 1406, column: 58, scope: !4265)
!4273 = !DILocation(line: 1406, column: 50, scope: !4265)
!4274 = !DILocation(line: 1407, column: 23, scope: !4265)
!4275 = !DILocation(line: 1407, column: 16, scope: !4265)
!4276 = !DILocation(line: 1407, column: 14, scope: !4265)
!4277 = !DILocation(line: 1406, column: 25, scope: !4265)
!4278 = !DILocation(line: 1408, column: 1, scope: !4265)
!4279 = distinct !DISubprogram(name: "verify_interpass_invariants", scope: !3, file: !3, line: 1321, type: !2201, scopeLine: 1322, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2468)
!4280 = !DILocation(line: 1326, column: 1, scope: !4279)
!4281 = distinct !DISubprogram(name: "VEC_ipa_opt_pass_heap_safe_push", scope: !1434, file: !1434, line: 177, type: !4282, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4285)
!4282 = !DISubroutineType(types: !4283)
!4283 = !{!4284, !4024, !2171}
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!4285 = !{!4286, !4287}
!4286 = !DILocalVariable(name: "vec_", arg: 1, scope: !4281, file: !1434, line: 177, type: !4024)
!4287 = !DILocalVariable(name: "obj_", arg: 2, scope: !4281, file: !1434, line: 177, type: !2171)
!4288 = !DILocation(line: 0, scope: !4281)
!4289 = !DILocation(line: 177, column: 1, scope: !4281)
!4290 = distinct !DISubprogram(name: "execute_pass_list", scope: !3, file: !3, line: 1617, type: !3150, scopeLine: 1618, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4291)
!4291 = !{!4292}
!4292 = !DILocalVariable(name: "pass", arg: 1, scope: !4290, file: !3, line: 1617, type: !2189)
!4293 = !DILocation(line: 0, scope: !4290)
!4294 = !DILocation(line: 1619, column: 3, scope: !4290)
!4295 = !DILocation(line: 1621, column: 7, scope: !4296)
!4296 = distinct !DILexicalBlock(scope: !4290, file: !3, line: 1620, column: 5)
!4297 = !DILocation(line: 1623, column: 11, scope: !4298)
!4298 = distinct !DILexicalBlock(scope: !4296, file: !3, line: 1623, column: 11)
!4299 = !DILocation(line: 1623, column: 35, scope: !4298)
!4300 = !DILocation(line: 1623, column: 44, scope: !4298)
!4301 = !DILocation(line: 1623, column: 38, scope: !4298)
!4302 = !DILocation(line: 1623, column: 11, scope: !4296)
!4303 = !DILocation(line: 1624, column: 9, scope: !4298)
!4304 = !DILocation(line: 1625, column: 20, scope: !4296)
!4305 = !DILocation(line: 1626, column: 5, scope: !4296)
!4306 = distinct !{!4306, !4294, !4307}
!4307 = !DILocation(line: 1627, column: 14, scope: !4290)
!4308 = !DILocation(line: 1628, column: 1, scope: !4290)
!4309 = distinct !DISubprogram(name: "ipa_write_summaries", scope: !3, file: !3, line: 1688, type: !2201, scopeLine: 1689, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4310)
!4310 = !{!4311, !4313, !4314, !4315, !4316}
!4311 = !DILocalVariable(name: "set", scope: !4309, file: !3, line: 1690, type: !4312)
!4312 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_node_set", file: !600, line: 283, baseType: !2207)
!4313 = !DILocalVariable(name: "order", scope: !4309, file: !3, line: 1691, type: !2115)
!4314 = !DILocalVariable(name: "i", scope: !4309, file: !3, line: 1692, type: !625)
!4315 = !DILocalVariable(name: "order_pos", scope: !4309, file: !3, line: 1692, type: !625)
!4316 = !DILocalVariable(name: "node", scope: !4317, file: !3, line: 1710, type: !2116)
!4317 = distinct !DILexicalBlock(scope: !4318, file: !3, line: 1709, column: 5)
!4318 = distinct !DILexicalBlock(scope: !4319, file: !3, line: 1708, column: 3)
!4319 = distinct !DILexicalBlock(scope: !4309, file: !3, line: 1708, column: 3)
!4320 = !DILocation(line: 1694, column: 8, scope: !4321)
!4321 = distinct !DILexicalBlock(scope: !4309, file: !3, line: 1694, column: 7)
!4322 = !DILocation(line: 1694, column: 26, scope: !4321)
!4323 = !DILocation(line: 1694, column: 29, scope: !4321)
!4324 = !DILocation(line: 1694, column: 40, scope: !4321)
!4325 = !DILocation(line: 1694, column: 43, scope: !4321)
!4326 = !DILocation(line: 1694, column: 7, scope: !4309)
!4327 = !DILocation(line: 1697, column: 3, scope: !4309)
!4328 = !DILocation(line: 1698, column: 9, scope: !4309)
!4329 = !DILocation(line: 0, scope: !4309)
!4330 = !DILocation(line: 1704, column: 11, scope: !4309)
!4331 = !DILocation(line: 1705, column: 15, scope: !4309)
!4332 = !DILocation(line: 1706, column: 3, scope: !4309)
!4333 = !DILocation(line: 1708, column: 8, scope: !4319)
!4334 = !DILocation(line: 0, scope: !4319)
!4335 = !DILocation(line: 1708, column: 29, scope: !4318)
!4336 = !DILocation(line: 1708, column: 3, scope: !4319)
!4337 = !DILocation(line: 1710, column: 34, scope: !4317)
!4338 = !DILocation(line: 0, scope: !4317)
!4339 = !DILocation(line: 1712, column: 17, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4317, file: !3, line: 1712, column: 11)
!4341 = !DILocation(line: 1712, column: 11, scope: !4340)
!4342 = !DILocation(line: 1712, column: 11, scope: !4317)
!4343 = !DILocation(line: 1720, column: 15, scope: !4344)
!4344 = distinct !DILexicalBlock(scope: !4340, file: !3, line: 1713, column: 2)
!4345 = !DILocation(line: 1720, column: 4, scope: !4344)
!4346 = !DILocation(line: 1721, column: 4, scope: !4344)
!4347 = !DILocation(line: 1722, column: 4, scope: !4344)
!4348 = !DILocation(line: 1723, column: 2, scope: !4344)
!4349 = !DILocation(line: 1724, column: 7, scope: !4317)
!4350 = !DILocation(line: 1708, column: 3, scope: !4318)
!4351 = distinct !{!4351, !4336, !4352}
!4352 = !DILocation(line: 1725, column: 5, scope: !4319)
!4353 = !DILocation(line: 1727, column: 3, scope: !4309)
!4354 = !DILocation(line: 1728, column: 3, scope: !4309)
!4355 = !DILocation(line: 1730, column: 3, scope: !4309)
!4356 = !DILocation(line: 1731, column: 13, scope: !4309)
!4357 = !DILocation(line: 1731, column: 3, scope: !4309)
!4358 = !DILocation(line: 1732, column: 1, scope: !4309)
!4359 = distinct !DISubprogram(name: "ipa_write_summaries_1", scope: !3, file: !3, line: 1671, type: !4360, scopeLine: 1672, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4362)
!4360 = !DISubroutineType(types: !4361)
!4361 = !{null, !4312}
!4362 = !{!4363, !4364}
!4363 = !DILocalVariable(name: "set", arg: 1, scope: !4359, file: !3, line: 1671, type: !4312)
!4364 = !DILocalVariable(name: "state", scope: !4359, file: !3, line: 1673, type: !4365)
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4366, size: 64)
!4366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_out_decl_state", file: !2266, line: 517, size: 1472, elements: !4367)
!4367 = !{!4368, !4380, !4381}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !4366, file: !2266, line: 521, baseType: !4369, size: 1344)
!4369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4370, size: 1344, elements: !2278)
!4370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_tree_ref_encoder", file: !2266, line: 493, size: 192, elements: !4371)
!4371 = !{!4372, !4373, !4374}
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "tree_hash_table", scope: !4370, file: !2266, line: 495, baseType: !1517, size: 64)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "next_index", scope: !4370, file: !2266, line: 496, baseType: !7, size: 32, offset: 64)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "trees", scope: !4370, file: !2266, line: 497, baseType: !4375, size: 64, offset: 128)
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4376 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_heap", file: !135, line: 184, baseType: !4377)
!4377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_heap", file: !135, line: 184, size: 128, elements: !4378)
!4378 = !{!4379}
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4377, file: !135, line: 184, baseType: !1570, size: 128)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "cgraph_node_encoder", scope: !4366, file: !2266, line: 524, baseType: !2283, size: 64, offset: 1344)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "fn_decl", scope: !4366, file: !2266, line: 528, baseType: !632, size: 64, offset: 1408)
!4382 = !DILocation(line: 0, scope: !4359)
!4383 = !DILocation(line: 1673, column: 38, scope: !4359)
!4384 = !DILocation(line: 1674, column: 3, scope: !4359)
!4385 = !DILocation(line: 1676, column: 8, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4359, file: !3, line: 1676, column: 7)
!4387 = !DILocation(line: 1676, column: 7, scope: !4359)
!4388 = !DILocation(line: 1677, column: 28, scope: !4386)
!4389 = !DILocation(line: 1677, column: 5, scope: !4386)
!4390 = !DILocation(line: 1678, column: 26, scope: !4359)
!4391 = !DILocation(line: 1678, column: 3, scope: !4359)
!4392 = !DILocation(line: 1680, column: 3, scope: !4359)
!4393 = !DILocation(line: 1681, column: 3, scope: !4359)
!4394 = !DILocation(line: 1682, column: 3, scope: !4359)
!4395 = !DILocation(line: 1683, column: 1, scope: !4359)
!4396 = distinct !DISubprogram(name: "ipa_write_summaries_of_cgraph_node_set", scope: !3, file: !3, line: 1739, type: !4360, scopeLine: 1740, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4397)
!4397 = !{!4398}
!4398 = !DILocalVariable(name: "set", arg: 1, scope: !4396, file: !3, line: 1739, type: !4312)
!4399 = !DILocation(line: 0, scope: !4396)
!4400 = !DILocation(line: 1741, column: 7, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4396, file: !3, line: 1741, column: 7)
!4402 = !DILocation(line: 1741, column: 25, scope: !4401)
!4403 = !DILocation(line: 1741, column: 30, scope: !4401)
!4404 = !DILocation(line: 1741, column: 41, scope: !4401)
!4405 = !DILocation(line: 1741, column: 44, scope: !4401)
!4406 = !DILocation(line: 1741, column: 7, scope: !4396)
!4407 = !DILocation(line: 1742, column: 5, scope: !4401)
!4408 = !DILocation(line: 1743, column: 1, scope: !4396)
!4409 = distinct !DISubprogram(name: "ipa_read_summaries", scope: !3, file: !3, line: 1785, type: !2201, scopeLine: 1786, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2468)
!4410 = !DILocation(line: 1787, column: 8, scope: !4411)
!4411 = distinct !DILexicalBlock(scope: !4409, file: !3, line: 1787, column: 7)
!4412 = !DILocation(line: 1787, column: 7, scope: !4409)
!4413 = !DILocation(line: 1788, column: 27, scope: !4411)
!4414 = !DILocation(line: 1788, column: 5, scope: !4411)
!4415 = !DILocation(line: 1789, column: 25, scope: !4409)
!4416 = !DILocation(line: 1789, column: 3, scope: !4409)
!4417 = !DILocation(line: 1790, column: 1, scope: !4409)
!4418 = distinct !DISubprogram(name: "ipa_read_summaries_1", scope: !3, file: !3, line: 1749, type: !3150, scopeLine: 1750, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4419)
!4419 = !{!4420, !4421}
!4420 = !DILocalVariable(name: "pass", arg: 1, scope: !4418, file: !3, line: 1749, type: !2189)
!4421 = !DILocalVariable(name: "ipa_pass", scope: !4422, file: !3, line: 1753, type: !2172)
!4422 = distinct !DILexicalBlock(scope: !4418, file: !3, line: 1752, column: 5)
!4423 = !DILocation(line: 0, scope: !4418)
!4424 = !DILocation(line: 1751, column: 3, scope: !4418)
!4425 = !DILocation(line: 0, scope: !4422)
!4426 = !DILocation(line: 1755, column: 7, scope: !4422)
!4427 = !DILocation(line: 1756, column: 7, scope: !4422)
!4428 = !DILocation(line: 1757, column: 7, scope: !4422)
!4429 = !DILocation(line: 1759, column: 17, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4422, file: !3, line: 1759, column: 11)
!4431 = !DILocation(line: 1759, column: 22, scope: !4430)
!4432 = !DILocation(line: 1759, column: 30, scope: !4430)
!4433 = !DILocation(line: 1759, column: 33, scope: !4430)
!4434 = !DILocation(line: 1759, column: 11, scope: !4422)
!4435 = !DILocation(line: 1761, column: 14, scope: !4436)
!4436 = distinct !DILexicalBlock(scope: !4437, file: !3, line: 1761, column: 8)
!4437 = distinct !DILexicalBlock(scope: !4430, file: !3, line: 1760, column: 2)
!4438 = !DILocation(line: 1761, column: 19, scope: !4436)
!4439 = !DILocation(line: 1761, column: 31, scope: !4436)
!4440 = !DILocation(line: 1761, column: 44, scope: !4436)
!4441 = !DILocation(line: 1761, column: 34, scope: !4436)
!4442 = !DILocation(line: 1761, column: 8, scope: !4437)
!4443 = !DILocation(line: 1764, column: 18, scope: !4444)
!4444 = distinct !DILexicalBlock(scope: !4445, file: !3, line: 1764, column: 12)
!4445 = distinct !DILexicalBlock(scope: !4436, file: !3, line: 1762, column: 6)
!4446 = !DILocation(line: 1764, column: 12, scope: !4444)
!4447 = !DILocation(line: 1765, column: 3, scope: !4448)
!4448 = distinct !DILexicalBlock(scope: !4449, file: !3, line: 1765, column: 3)
!4449 = distinct !DILexicalBlock(scope: !4444, file: !3, line: 1765, column: 3)
!4450 = !DILocation(line: 1764, column: 12, scope: !4445)
!4451 = !DILocation(line: 1767, column: 18, scope: !4445)
!4452 = !DILocation(line: 1767, column: 8, scope: !4445)
!4453 = !DILocation(line: 1770, column: 18, scope: !4454)
!4454 = distinct !DILexicalBlock(scope: !4445, file: !3, line: 1770, column: 12)
!4455 = !DILocation(line: 1770, column: 12, scope: !4454)
!4456 = !DILocation(line: 1771, column: 3, scope: !4457)
!4457 = distinct !DILexicalBlock(scope: !4458, file: !3, line: 1771, column: 3)
!4458 = distinct !DILexicalBlock(scope: !4454, file: !3, line: 1771, column: 3)
!4459 = !DILocation(line: 1770, column: 12, scope: !4445)
!4460 = !DILocation(line: 1774, column: 14, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !4437, file: !3, line: 1774, column: 8)
!4462 = !DILocation(line: 1774, column: 8, scope: !4461)
!4463 = !DILocation(line: 1774, column: 18, scope: !4461)
!4464 = !DILocation(line: 1774, column: 32, scope: !4461)
!4465 = !DILocation(line: 1774, column: 37, scope: !4461)
!4466 = !DILocation(line: 1774, column: 8, scope: !4437)
!4467 = !DILocation(line: 1775, column: 6, scope: !4461)
!4468 = !DILocation(line: 1777, column: 20, scope: !4422)
!4469 = distinct !{!4469, !4424, !4470}
!4470 = !DILocation(line: 1778, column: 5, scope: !4418)
!4471 = !DILocation(line: 1779, column: 1, scope: !4418)
!4472 = distinct !DISubprogram(name: "execute_ipa_pass_list", scope: !3, file: !3, line: 1795, type: !3150, scopeLine: 1796, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4473)
!4473 = !{!4474}
!4474 = !DILocalVariable(name: "pass", arg: 1, scope: !4472, file: !3, line: 1795, type: !2189)
!4475 = !DILocation(line: 0, scope: !4472)
!4476 = !DILocation(line: 1797, column: 3, scope: !4472)
!4477 = !DILocation(line: 1799, column: 7, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4472, file: !3, line: 1798, column: 5)
!4479 = !DILocation(line: 1800, column: 7, scope: !4478)
!4480 = !DILocation(line: 1801, column: 7, scope: !4478)
!4481 = !DILocation(line: 1802, column: 11, scope: !4482)
!4482 = distinct !DILexicalBlock(scope: !4478, file: !3, line: 1802, column: 11)
!4483 = !DILocation(line: 1802, column: 35, scope: !4482)
!4484 = !DILocation(line: 1802, column: 44, scope: !4482)
!4485 = !DILocation(line: 1802, column: 38, scope: !4482)
!4486 = !DILocation(line: 1802, column: 11, scope: !4478)
!4487 = !DILocation(line: 1804, column: 19, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4489, file: !3, line: 1804, column: 8)
!4489 = distinct !DILexicalBlock(scope: !4482, file: !3, line: 1803, column: 2)
!4490 = !DILocation(line: 1804, column: 24, scope: !4488)
!4491 = !DILocation(line: 1804, column: 8, scope: !4489)
!4492 = !DILocation(line: 1806, column: 8, scope: !4493)
!4493 = distinct !DILexicalBlock(scope: !4488, file: !3, line: 1805, column: 6)
!4494 = !DILocation(line: 1808, column: 12, scope: !4493)
!4495 = !DILocation(line: 1807, column: 8, scope: !4493)
!4496 = !DILocation(line: 1809, column: 8, scope: !4493)
!4497 = !DILocation(line: 1810, column: 6, scope: !4493)
!4498 = !DILocation(line: 1811, column: 29, scope: !4499)
!4499 = distinct !DILexicalBlock(scope: !4488, file: !3, line: 1811, column: 13)
!4500 = !DILocation(line: 1812, column: 6, scope: !4499)
!4501 = !DILocation(line: 1812, column: 25, scope: !4499)
!4502 = !DILocation(line: 1811, column: 13, scope: !4488)
!4503 = !DILocation(line: 1813, column: 6, scope: !4499)
!4504 = !DILocation(line: 1815, column: 6, scope: !4499)
!4505 = !DILocation(line: 1817, column: 7, scope: !4478)
!4506 = !DILocation(line: 1818, column: 7, scope: !4478)
!4507 = !DILocation(line: 1819, column: 20, scope: !4478)
!4508 = !DILocation(line: 1820, column: 5, scope: !4478)
!4509 = distinct !{!4509, !4476, !4510}
!4510 = !DILocation(line: 1821, column: 14, scope: !4472)
!4511 = !DILocation(line: 1822, column: 1, scope: !4472)
!4512 = distinct !DISubprogram(name: "execute_all_ipa_stmt_fixups", scope: !3, file: !3, line: 1862, type: !2233, scopeLine: 1863, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4513)
!4513 = !{!4514, !4515}
!4514 = !DILocalVariable(name: "node", arg: 1, scope: !4512, file: !3, line: 1862, type: !2116)
!4515 = !DILocalVariable(name: "stmts", arg: 2, scope: !4512, file: !3, line: 1862, type: !2235)
!4516 = !DILocation(line: 0, scope: !4512)
!4517 = !DILocation(line: 1864, column: 28, scope: !4512)
!4518 = !DILocation(line: 1864, column: 3, scope: !4512)
!4519 = !DILocation(line: 1865, column: 1, scope: !4512)
!4520 = distinct !DISubprogram(name: "execute_ipa_stmt_fixups", scope: !3, file: !3, line: 1827, type: !4521, scopeLine: 1829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4523)
!4521 = !DISubroutineType(types: !4522)
!4522 = !{null, !2189, !2116, !2235}
!4523 = !{!4524, !4525, !4526, !4527}
!4524 = !DILocalVariable(name: "pass", arg: 1, scope: !4520, file: !3, line: 1827, type: !2189)
!4525 = !DILocalVariable(name: "node", arg: 2, scope: !4520, file: !3, line: 1828, type: !2116)
!4526 = !DILocalVariable(name: "stmts", arg: 3, scope: !4520, file: !3, line: 1828, type: !2235)
!4527 = !DILocalVariable(name: "ipa_pass", scope: !4528, file: !3, line: 1836, type: !2172)
!4528 = distinct !DILexicalBlock(scope: !4529, file: !3, line: 1835, column: 2)
!4529 = distinct !DILexicalBlock(scope: !4530, file: !3, line: 1833, column: 11)
!4530 = distinct !DILexicalBlock(scope: !4520, file: !3, line: 1831, column: 5)
!4531 = !DILocation(line: 0, scope: !4520)
!4532 = !DILocation(line: 1830, column: 3, scope: !4520)
!4533 = !DILocation(line: 1833, column: 17, scope: !4529)
!4534 = !DILocation(line: 1833, column: 22, scope: !4529)
!4535 = !DILocation(line: 1834, column: 4, scope: !4529)
!4536 = !DILocation(line: 1834, column: 15, scope: !4529)
!4537 = !DILocation(line: 1834, column: 9, scope: !4529)
!4538 = !DILocation(line: 1834, column: 20, scope: !4529)
!4539 = !DILocation(line: 1834, column: 23, scope: !4529)
!4540 = !DILocation(line: 1833, column: 11, scope: !4530)
!4541 = !DILocation(line: 0, scope: !4528)
!4542 = !DILocation(line: 1838, column: 18, scope: !4543)
!4543 = distinct !DILexicalBlock(scope: !4528, file: !3, line: 1838, column: 8)
!4544 = !DILocation(line: 1838, column: 8, scope: !4543)
!4545 = !DILocation(line: 1838, column: 8, scope: !4528)
!4546 = !DILocation(line: 1840, column: 8, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !4543, file: !3, line: 1839, column: 6)
!4548 = !DILocation(line: 1842, column: 18, scope: !4549)
!4549 = distinct !DILexicalBlock(scope: !4547, file: !3, line: 1842, column: 12)
!4550 = !DILocation(line: 1842, column: 12, scope: !4549)
!4551 = !DILocation(line: 1843, column: 3, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4553, file: !3, line: 1843, column: 3)
!4553 = distinct !DILexicalBlock(scope: !4549, file: !3, line: 1843, column: 3)
!4554 = !DILocation(line: 1842, column: 12, scope: !4547)
!4555 = !DILocation(line: 1845, column: 18, scope: !4547)
!4556 = !DILocation(line: 1845, column: 8, scope: !4547)
!4557 = !DILocation(line: 1848, column: 18, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4547, file: !3, line: 1848, column: 12)
!4559 = !DILocation(line: 1848, column: 12, scope: !4558)
!4560 = !DILocation(line: 1849, column: 3, scope: !4561)
!4561 = distinct !DILexicalBlock(scope: !4562, file: !3, line: 1849, column: 3)
!4562 = distinct !DILexicalBlock(scope: !4558, file: !3, line: 1849, column: 3)
!4563 = !DILocation(line: 1848, column: 12, scope: !4547)
!4564 = !DILocation(line: 1850, column: 8, scope: !4547)
!4565 = !DILocation(line: 1851, column: 6, scope: !4547)
!4566 = !DILocation(line: 1852, column: 14, scope: !4567)
!4567 = distinct !DILexicalBlock(scope: !4528, file: !3, line: 1852, column: 8)
!4568 = !DILocation(line: 1852, column: 8, scope: !4567)
!4569 = !DILocation(line: 1852, column: 8, scope: !4528)
!4570 = !DILocation(line: 1853, column: 6, scope: !4567)
!4571 = !DILocation(line: 1855, column: 20, scope: !4530)
!4572 = distinct !{!4572, !4532, !4573}
!4573 = !DILocation(line: 1856, column: 5, scope: !4520)
!4574 = !DILocation(line: 1857, column: 1, scope: !4520)
!4575 = distinct !DISubprogram(name: "dump_properties", scope: !3, file: !3, line: 1872, type: !4576, scopeLine: 1873, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4578)
!4576 = !DISubroutineType(types: !4577)
!4577 = !{null, !2475, !7}
!4578 = !{!4579, !4580}
!4579 = !DILocalVariable(name: "dump", arg: 1, scope: !4575, file: !3, line: 1872, type: !2475)
!4580 = !DILocalVariable(name: "props", arg: 2, scope: !4575, file: !3, line: 1872, type: !7)
!4581 = !DILocation(line: 0, scope: !4575)
!4582 = !DILocation(line: 1874, column: 3, scope: !4575)
!4583 = !DILocation(line: 1875, column: 13, scope: !4584)
!4584 = distinct !DILexicalBlock(scope: !4575, file: !3, line: 1875, column: 7)
!4585 = !DILocation(line: 1875, column: 7, scope: !4575)
!4586 = !DILocation(line: 1876, column: 5, scope: !4584)
!4587 = !DILocation(line: 1877, column: 13, scope: !4588)
!4588 = distinct !DILexicalBlock(scope: !4575, file: !3, line: 1877, column: 7)
!4589 = !DILocation(line: 1877, column: 7, scope: !4575)
!4590 = !DILocation(line: 1878, column: 5, scope: !4588)
!4591 = !DILocation(line: 1879, column: 13, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4575, file: !3, line: 1879, column: 7)
!4593 = !DILocation(line: 1879, column: 7, scope: !4575)
!4594 = !DILocation(line: 1880, column: 5, scope: !4592)
!4595 = !DILocation(line: 1881, column: 13, scope: !4596)
!4596 = distinct !DILexicalBlock(scope: !4575, file: !3, line: 1881, column: 7)
!4597 = !DILocation(line: 1881, column: 7, scope: !4575)
!4598 = !DILocation(line: 1882, column: 5, scope: !4596)
!4599 = !DILocation(line: 1883, column: 13, scope: !4600)
!4600 = distinct !DILexicalBlock(scope: !4575, file: !3, line: 1883, column: 7)
!4601 = !DILocation(line: 1883, column: 7, scope: !4575)
!4602 = !DILocation(line: 1884, column: 5, scope: !4600)
!4603 = !DILocation(line: 1885, column: 13, scope: !4604)
!4604 = distinct !DILexicalBlock(scope: !4575, file: !3, line: 1885, column: 7)
!4605 = !DILocation(line: 1885, column: 7, scope: !4575)
!4606 = !DILocation(line: 1886, column: 5, scope: !4604)
!4607 = !DILocation(line: 1887, column: 13, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !4575, file: !3, line: 1887, column: 7)
!4609 = !DILocation(line: 1887, column: 7, scope: !4575)
!4610 = !DILocation(line: 1888, column: 5, scope: !4608)
!4611 = !DILocation(line: 1889, column: 13, scope: !4612)
!4612 = distinct !DILexicalBlock(scope: !4575, file: !3, line: 1889, column: 7)
!4613 = !DILocation(line: 1889, column: 7, scope: !4575)
!4614 = !DILocation(line: 1890, column: 5, scope: !4612)
!4615 = !DILocation(line: 1891, column: 13, scope: !4616)
!4616 = distinct !DILexicalBlock(scope: !4575, file: !3, line: 1891, column: 7)
!4617 = !DILocation(line: 1891, column: 7, scope: !4575)
!4618 = !DILocation(line: 1892, column: 5, scope: !4616)
!4619 = !DILocation(line: 1893, column: 13, scope: !4620)
!4620 = distinct !DILexicalBlock(scope: !4575, file: !3, line: 1893, column: 7)
!4621 = !DILocation(line: 1893, column: 7, scope: !4575)
!4622 = !DILocation(line: 1894, column: 5, scope: !4620)
!4623 = !DILocation(line: 1895, column: 1, scope: !4575)
!4624 = distinct !DISubprogram(name: "debug_properties", scope: !3, file: !3, line: 1898, type: !4163, scopeLine: 1899, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4625)
!4625 = !{!4626}
!4626 = !DILocalVariable(name: "props", arg: 1, scope: !4624, file: !3, line: 1898, type: !7)
!4627 = !DILocation(line: 0, scope: !4624)
!4628 = !DILocation(line: 1900, column: 20, scope: !4624)
!4629 = !DILocation(line: 1900, column: 3, scope: !4624)
!4630 = !DILocation(line: 1901, column: 1, scope: !4624)
!4631 = distinct !DISubprogram(name: "function_called_by_processed_nodes_p", scope: !3, file: !3, line: 1907, type: !2182, scopeLine: 1908, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4632)
!4632 = !{!4633}
!4633 = !DILocalVariable(name: "e", scope: !4631, file: !3, line: 1909, type: !2121)
!4634 = !DILocation(line: 1910, column: 25, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !4631, file: !3, line: 1910, column: 3)
!4636 = !DILocation(line: 1910, column: 12, scope: !4635)
!4637 = !DILocation(line: 1910, column: 49, scope: !4635)
!4638 = !DILocation(line: 0, scope: !4639)
!4639 = distinct !DILexicalBlock(scope: !4640, file: !3, line: 1912, column: 11)
!4640 = distinct !DILexicalBlock(scope: !4641, file: !3, line: 1911, column: 5)
!4641 = distinct !DILexicalBlock(scope: !4635, file: !3, line: 1910, column: 3)
!4642 = !DILocation(line: 1910, column: 8, scope: !4635)
!4643 = !DILocation(line: 0, scope: !4635)
!4644 = !DILocation(line: 0, scope: !4631)
!4645 = !DILocation(line: 1910, column: 3, scope: !4635)
!4646 = !DILocation(line: 1912, column: 14, scope: !4639)
!4647 = !DILocation(line: 1912, column: 22, scope: !4639)
!4648 = !DILocation(line: 1912, column: 27, scope: !4639)
!4649 = !DILocation(line: 1912, column: 11, scope: !4640)
!4650 = !DILocation(line: 1914, column: 23, scope: !4651)
!4651 = distinct !DILexicalBlock(scope: !4640, file: !3, line: 1914, column: 11)
!4652 = !DILocation(line: 1914, column: 12, scope: !4651)
!4653 = !DILocation(line: 1914, column: 11, scope: !4640)
!4654 = !DILocation(line: 1916, column: 11, scope: !4655)
!4655 = distinct !DILexicalBlock(scope: !4640, file: !3, line: 1916, column: 11)
!4656 = !DILocation(line: 1916, column: 11, scope: !4640)
!4657 = !DILocation(line: 1918, column: 23, scope: !4658)
!4658 = distinct !DILexicalBlock(scope: !4640, file: !3, line: 1918, column: 11)
!4659 = !DILocation(line: 1918, column: 12, scope: !4658)
!4660 = !DILocation(line: 1918, column: 31, scope: !4658)
!4661 = !DILocation(line: 1918, column: 53, scope: !4658)
!4662 = !DILocation(line: 1918, column: 35, scope: !4658)
!4663 = !DILocation(line: 1918, column: 11, scope: !4640)
!4664 = !DILocation(line: 1910, column: 68, scope: !4641)
!4665 = !DILocation(line: 1910, column: 3, scope: !4641)
!4666 = distinct !{!4666, !4645, !4667}
!4667 = !DILocation(line: 1920, column: 5, scope: !4635)
!4668 = !DILocation(line: 1921, column: 7, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4631, file: !3, line: 1921, column: 7)
!4670 = !DILocation(line: 1921, column: 20, scope: !4669)
!4671 = !DILocation(line: 1921, column: 17, scope: !4669)
!4672 = !DILocation(line: 1923, column: 7, scope: !4673)
!4673 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 1922, column: 5)
!4674 = !DILocation(line: 1924, column: 25, scope: !4673)
!4675 = !DILocation(line: 1924, column: 39, scope: !4673)
!4676 = !DILocation(line: 1924, column: 7, scope: !4673)
!4677 = !DILocation(line: 1925, column: 5, scope: !4673)
!4678 = !DILocation(line: 1926, column: 10, scope: !4631)
!4679 = !DILocation(line: 1926, column: 3, scope: !4631)
!4680 = distinct !DISubprogram(name: "gt_ggc_ma_order", scope: !2402, file: !2402, line: 26, type: !1536, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4681)
!4681 = !{!4682, !4683, !4686}
!4682 = !DILocalVariable(name: "x_p", arg: 1, scope: !4680, file: !2402, line: 26, type: !629)
!4683 = !DILocalVariable(name: "i0", scope: !4684, file: !2402, line: 29, type: !1103)
!4684 = distinct !DILexicalBlock(scope: !4685, file: !2402, line: 28, column: 22)
!4685 = distinct !DILexicalBlock(scope: !4680, file: !2402, line: 28, column: 7)
!4686 = !DILocalVariable(name: "a__", scope: !4687, file: !2402, line: 33, type: !4688)
!4687 = distinct !DILexicalBlock(scope: !4684, file: !2402, line: 33, column: 5)
!4688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1317)
!4689 = !DILocation(line: 0, scope: !4680)
!4690 = !DILocation(line: 28, column: 7, scope: !4685)
!4691 = !DILocation(line: 28, column: 13, scope: !4685)
!4692 = !DILocation(line: 28, column: 7, scope: !4680)
!4693 = !DILocation(line: 30, column: 5, scope: !4694)
!4694 = distinct !DILexicalBlock(scope: !4684, file: !2402, line: 30, column: 5)
!4695 = !DILocation(line: 0, scope: !4684)
!4696 = !DILocation(line: 0, scope: !4694)
!4697 = !DILocation(line: 30, column: 33, scope: !4698)
!4698 = distinct !DILexicalBlock(scope: !4694, file: !2402, line: 30, column: 5)
!4699 = !DILocation(line: 30, column: 24, scope: !4698)
!4700 = !DILocation(line: 30, column: 21, scope: !4698)
!4701 = !DILocation(line: 31, column: 7, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4703, file: !2402, line: 31, column: 7)
!4703 = distinct !DILexicalBlock(scope: !4704, file: !2402, line: 31, column: 7)
!4704 = distinct !DILexicalBlock(scope: !4698, file: !2402, line: 30, column: 48)
!4705 = !DILocation(line: 31, column: 7, scope: !4703)
!4706 = !DILocation(line: 30, column: 44, scope: !4698)
!4707 = !DILocation(line: 30, column: 5, scope: !4698)
!4708 = distinct !{!4708, !4693, !4709}
!4709 = !DILocation(line: 32, column: 5, scope: !4694)
!4710 = !DILocation(line: 0, scope: !4687)
!4711 = !DILocation(line: 33, column: 5, scope: !4712)
!4712 = distinct !DILexicalBlock(scope: !4687, file: !2402, line: 33, column: 5)
!4713 = !DILocation(line: 33, column: 5, scope: !4687)
!4714 = !DILocation(line: 35, column: 1, scope: !4680)
!4715 = distinct !DISubprogram(name: "gt_pch_na_order", scope: !2402, file: !2402, line: 57, type: !1536, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4716)
!4716 = !{!4717, !4718}
!4717 = !DILocalVariable(name: "x_p", arg: 1, scope: !4715, file: !2402, line: 57, type: !629)
!4718 = !DILocalVariable(name: "i1", scope: !4719, file: !2402, line: 60, type: !1103)
!4719 = distinct !DILexicalBlock(scope: !4720, file: !2402, line: 59, column: 22)
!4720 = distinct !DILexicalBlock(scope: !4715, file: !2402, line: 59, column: 7)
!4721 = !DILocation(line: 0, scope: !4715)
!4722 = !DILocation(line: 59, column: 7, scope: !4720)
!4723 = !DILocation(line: 59, column: 13, scope: !4720)
!4724 = !DILocation(line: 59, column: 7, scope: !4715)
!4725 = !DILocation(line: 61, column: 5, scope: !4726)
!4726 = distinct !DILexicalBlock(scope: !4719, file: !2402, line: 61, column: 5)
!4727 = !DILocation(line: 0, scope: !4719)
!4728 = !DILocation(line: 0, scope: !4726)
!4729 = !DILocation(line: 61, column: 33, scope: !4730)
!4730 = distinct !DILexicalBlock(scope: !4726, file: !2402, line: 61, column: 5)
!4731 = !DILocation(line: 61, column: 24, scope: !4730)
!4732 = !DILocation(line: 61, column: 21, scope: !4730)
!4733 = !DILocation(line: 62, column: 7, scope: !4734)
!4734 = distinct !DILexicalBlock(scope: !4735, file: !2402, line: 62, column: 7)
!4735 = distinct !DILexicalBlock(scope: !4736, file: !2402, line: 62, column: 7)
!4736 = distinct !DILexicalBlock(scope: !4730, file: !2402, line: 61, column: 48)
!4737 = !DILocation(line: 62, column: 7, scope: !4735)
!4738 = !DILocation(line: 61, column: 44, scope: !4730)
!4739 = !DILocation(line: 61, column: 5, scope: !4730)
!4740 = distinct !{!4740, !4725, !4741}
!4741 = !DILocation(line: 63, column: 5, scope: !4726)
!4742 = !DILocation(line: 64, column: 25, scope: !4719)
!4743 = !DILocation(line: 64, column: 5, scope: !4719)
!4744 = !DILocation(line: 65, column: 3, scope: !4719)
!4745 = !DILocation(line: 66, column: 1, scope: !4715)
!4746 = distinct !DISubprogram(name: "make_pass_instance", scope: !3, file: !3, line: 460, type: !4747, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4749)
!4747 = !DISubroutineType(types: !4748)
!4748 = !{!2189, !2189, !624}
!4749 = !{!4750, !4751, !4752}
!4750 = !DILocalVariable(name: "pass", arg: 1, scope: !4746, file: !3, line: 460, type: !2189)
!4751 = !DILocalVariable(name: "track_duplicates", arg: 2, scope: !4746, file: !3, line: 460, type: !624)
!4752 = !DILocalVariable(name: "new_pass", scope: !4753, file: !3, line: 466, type: !2189)
!4753 = distinct !DILexicalBlock(scope: !4754, file: !3, line: 465, column: 5)
!4754 = distinct !DILexicalBlock(scope: !4746, file: !3, line: 464, column: 7)
!4755 = !DILocation(line: 0, scope: !4746)
!4756 = !DILocation(line: 464, column: 13, scope: !4754)
!4757 = !DILocation(line: 464, column: 7, scope: !4754)
!4758 = !DILocation(line: 464, column: 7, scope: !4746)
!4759 = !DILocation(line: 468, column: 17, scope: !4760)
!4760 = distinct !DILexicalBlock(scope: !4753, file: !3, line: 468, column: 11)
!4761 = !DILocation(line: 468, column: 22, scope: !4760)
!4762 = !DILocation(line: 469, column: 11, scope: !4760)
!4763 = !DILocation(line: 469, column: 25, scope: !4760)
!4764 = !DILocation(line: 470, column: 11, scope: !4760)
!4765 = !DILocation(line: 470, column: 25, scope: !4760)
!4766 = !DILocation(line: 468, column: 11, scope: !4753)
!4767 = !DILocation(line: 472, column: 22, scope: !4768)
!4768 = distinct !DILexicalBlock(scope: !4760, file: !3, line: 471, column: 9)
!4769 = !DILocation(line: 0, scope: !4753)
!4770 = !DILocation(line: 473, column: 29, scope: !4768)
!4771 = !DILocation(line: 473, column: 11, scope: !4768)
!4772 = !DILocation(line: 474, column: 9, scope: !4768)
!4773 = !DILocation(line: 475, column: 27, scope: !4774)
!4774 = distinct !DILexicalBlock(scope: !4760, file: !3, line: 475, column: 16)
!4775 = !DILocation(line: 475, column: 16, scope: !4760)
!4776 = !DILocation(line: 477, column: 41, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4774, file: !3, line: 476, column: 9)
!4778 = !DILocation(line: 477, column: 22, scope: !4777)
!4779 = !DILocation(line: 478, column: 29, scope: !4777)
!4780 = !DILocation(line: 478, column: 11, scope: !4777)
!4781 = !DILocation(line: 479, column: 9, scope: !4777)
!4782 = !DILocation(line: 481, column: 9, scope: !4774)
!4783 = !DILocation(line: 0, scope: !4760)
!4784 = !DILocation(line: 483, column: 17, scope: !4753)
!4785 = !DILocation(line: 483, column: 22, scope: !4753)
!4786 = !DILocation(line: 485, column: 17, scope: !4753)
!4787 = !DILocation(line: 485, column: 34, scope: !4753)
!4788 = !DILocation(line: 491, column: 18, scope: !4789)
!4789 = distinct !DILexicalBlock(scope: !4753, file: !3, line: 491, column: 11)
!4790 = !DILocation(line: 491, column: 12, scope: !4789)
!4791 = !DILocation(line: 491, column: 23, scope: !4789)
!4792 = !DILocation(line: 491, column: 26, scope: !4789)
!4793 = !DILocation(line: 491, column: 40, scope: !4789)
!4794 = !DILocation(line: 491, column: 48, scope: !4789)
!4795 = !DILocation(line: 491, column: 51, scope: !4789)
!4796 = !DILocation(line: 491, column: 11, scope: !4753)
!4797 = !DILocation(line: 493, column: 36, scope: !4798)
!4798 = distinct !DILexicalBlock(scope: !4789, file: !3, line: 492, column: 9)
!4799 = !DILocation(line: 494, column: 42, scope: !4798)
!4800 = !DILocation(line: 494, column: 21, scope: !4798)
!4801 = !DILocation(line: 494, column: 40, scope: !4798)
!4802 = !DILocation(line: 495, column: 2, scope: !4798)
!4803 = !DILocation(line: 500, column: 13, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4754, file: !3, line: 499, column: 5)
!4805 = !DILocation(line: 500, column: 30, scope: !4804)
!4806 = !DILocation(line: 501, column: 32, scope: !4804)
!4807 = !DILocation(line: 503, column: 49, scope: !4804)
!4808 = !DILocation(line: 503, column: 7, scope: !4804)
!4809 = !DILocation(line: 505, column: 3, scope: !4746)
!4810 = !DILocation(line: 506, column: 1, scope: !4746)
!4811 = distinct !DISubprogram(name: "register_dump_files_1", scope: !3, file: !3, line: 418, type: !4812, scopeLine: 419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4814)
!4812 = !DISubroutineType(types: !4813)
!4813 = !{!625, !2189, !625}
!4814 = !{!4815, !4816, !4817}
!4815 = !DILocalVariable(name: "pass", arg: 1, scope: !4811, file: !3, line: 418, type: !2189)
!4816 = !DILocalVariable(name: "properties", arg: 2, scope: !4811, file: !3, line: 418, type: !625)
!4817 = !DILocalVariable(name: "new_properties", scope: !4818, file: !3, line: 422, type: !625)
!4818 = distinct !DILexicalBlock(scope: !4811, file: !3, line: 421, column: 5)
!4819 = !DILocation(line: 0, scope: !4811)
!4820 = !DILocation(line: 420, column: 3, scope: !4811)
!4821 = !DILocation(line: 422, column: 48, scope: !4818)
!4822 = !DILocation(line: 422, column: 40, scope: !4818)
!4823 = !DILocation(line: 423, column: 16, scope: !4818)
!4824 = !DILocation(line: 423, column: 9, scope: !4818)
!4825 = !DILocation(line: 423, column: 7, scope: !4818)
!4826 = !DILocation(line: 0, scope: !4818)
!4827 = !DILocation(line: 425, column: 17, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4818, file: !3, line: 425, column: 11)
!4829 = !DILocation(line: 425, column: 11, scope: !4828)
!4830 = !DILocation(line: 425, column: 22, scope: !4828)
!4831 = !DILocation(line: 425, column: 25, scope: !4828)
!4832 = !DILocation(line: 425, column: 39, scope: !4828)
!4833 = !DILocation(line: 425, column: 11, scope: !4818)
!4834 = !DILocation(line: 426, column: 9, scope: !4828)
!4835 = !DILocation(line: 428, column: 17, scope: !4836)
!4836 = distinct !DILexicalBlock(scope: !4818, file: !3, line: 428, column: 11)
!4837 = !DILocation(line: 428, column: 11, scope: !4836)
!4838 = !DILocation(line: 428, column: 11, scope: !4818)
!4839 = !DILocation(line: 429, column: 26, scope: !4836)
!4840 = !DILocation(line: 429, column: 9, scope: !4836)
!4841 = !DILocation(line: 433, column: 17, scope: !4842)
!4842 = distinct !DILexicalBlock(scope: !4818, file: !3, line: 433, column: 11)
!4843 = !DILocation(line: 433, column: 11, scope: !4842)
!4844 = !DILocation(line: 433, column: 11, scope: !4818)
!4845 = !DILocation(line: 438, column: 20, scope: !4818)
!4846 = !DILocation(line: 439, column: 5, scope: !4818)
!4847 = distinct !{!4847, !4820, !4848}
!4848 = !DILocation(line: 440, column: 14, scope: !4811)
!4849 = !DILocation(line: 442, column: 3, scope: !4811)
!4850 = distinct !DISubprogram(name: "execute_function_todo", scope: !3, file: !3, line: 1166, type: !1536, scopeLine: 1167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4851)
!4851 = !{!4852, !4853, !4854, !4857}
!4852 = !DILocalVariable(name: "data", arg: 1, scope: !4850, file: !3, line: 1166, type: !629)
!4853 = !DILocalVariable(name: "flags", scope: !4850, file: !3, line: 1168, type: !7)
!4854 = !DILocalVariable(name: "cleanup", scope: !4855, file: !3, line: 1180, type: !624)
!4855 = distinct !DILexicalBlock(scope: !4856, file: !3, line: 1179, column: 5)
!4856 = distinct !DILexicalBlock(scope: !4850, file: !3, line: 1178, column: 7)
!4857 = !DILocalVariable(name: "update_flags", scope: !4858, file: !3, line: 1197, type: !7)
!4858 = distinct !DILexicalBlock(scope: !4859, file: !3, line: 1196, column: 5)
!4859 = distinct !DILexicalBlock(scope: !4850, file: !3, line: 1195, column: 7)
!4860 = !DILocation(line: 0, scope: !4850)
!4861 = !DILocation(line: 1168, column: 24, scope: !4850)
!4862 = !DILocation(line: 1169, column: 7, scope: !4863)
!4863 = distinct !DILexicalBlock(scope: !4850, file: !3, line: 1169, column: 7)
!4864 = !DILocation(line: 1169, column: 13, scope: !4863)
!4865 = !DILocation(line: 1169, column: 7, scope: !4850)
!4866 = !DILocation(line: 1171, column: 19, scope: !4850)
!4867 = !DILocation(line: 1171, column: 12, scope: !4850)
!4868 = !DILocation(line: 1171, column: 9, scope: !4850)
!4869 = !DILocation(line: 1172, column: 8, scope: !4870)
!4870 = distinct !DILexicalBlock(scope: !4850, file: !3, line: 1172, column: 7)
!4871 = !DILocation(line: 1172, column: 7, scope: !4850)
!4872 = !DILocation(line: 1175, column: 3, scope: !4850)
!4873 = !DILocation(line: 1178, column: 13, scope: !4856)
!4874 = !DILocation(line: 1178, column: 7, scope: !4850)
!4875 = !DILocation(line: 1180, column: 22, scope: !4855)
!4876 = !DILocation(line: 0, scope: !4855)
!4877 = !DILocation(line: 1182, column: 11, scope: !4878)
!4878 = distinct !DILexicalBlock(scope: !4855, file: !3, line: 1182, column: 11)
!4879 = !DILocation(line: 1182, column: 19, scope: !4878)
!4880 = !DILocation(line: 1182, column: 23, scope: !4878)
!4881 = !DILocation(line: 1182, column: 29, scope: !4878)
!4882 = !DILocation(line: 1182, column: 11, scope: !4855)
!4883 = !DILocation(line: 1191, column: 19, scope: !4884)
!4884 = distinct !DILexicalBlock(scope: !4855, file: !3, line: 1191, column: 11)
!4885 = !DILocation(line: 1191, column: 42, scope: !4884)
!4886 = !DILocation(line: 1191, column: 64, scope: !4884)
!4887 = !DILocation(line: 1191, column: 45, scope: !4884)
!4888 = !DILocation(line: 1192, column: 8, scope: !4884)
!4889 = !DILocation(line: 1191, column: 11, scope: !4855)
!4890 = !DILocation(line: 1195, column: 13, scope: !4859)
!4891 = !DILocation(line: 1195, column: 7, scope: !4850)
!4892 = !DILocation(line: 0, scope: !4858)
!4893 = !DILocation(line: 1198, column: 7, scope: !4858)
!4894 = !DILocation(line: 1199, column: 7, scope: !4858)
!4895 = !DILocation(line: 1199, column: 13, scope: !4858)
!4896 = !DILocation(line: 1199, column: 27, scope: !4858)
!4897 = !DILocation(line: 1200, column: 5, scope: !4858)
!4898 = !DILocation(line: 1202, column: 13, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4850, file: !3, line: 1202, column: 7)
!4900 = !DILocation(line: 1202, column: 7, scope: !4850)
!4901 = !DILocation(line: 1203, column: 5, scope: !4899)
!4902 = !DILocation(line: 1205, column: 13, scope: !4903)
!4903 = distinct !DILexicalBlock(scope: !4850, file: !3, line: 1205, column: 7)
!4904 = !DILocation(line: 1205, column: 7, scope: !4850)
!4905 = !DILocation(line: 1207, column: 11, scope: !4906)
!4906 = distinct !DILexicalBlock(scope: !4903, file: !3, line: 1206, column: 5)
!4907 = !DILocation(line: 1208, column: 2, scope: !4908)
!4908 = distinct !DILexicalBlock(scope: !4906, file: !3, line: 1207, column: 11)
!4909 = !DILocation(line: 1209, column: 7, scope: !4906)
!4910 = !DILocation(line: 1210, column: 5, scope: !4906)
!4911 = !DILocation(line: 1212, column: 13, scope: !4912)
!4912 = distinct !DILexicalBlock(scope: !4850, file: !3, line: 1212, column: 7)
!4913 = !DILocation(line: 1212, column: 7, scope: !4850)
!4914 = !DILocation(line: 1213, column: 5, scope: !4912)
!4915 = !DILocation(line: 1215, column: 14, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !4850, file: !3, line: 1215, column: 7)
!4917 = !DILocation(line: 1215, column: 35, scope: !4916)
!4918 = !DILocation(line: 1215, column: 32, scope: !4916)
!4919 = !DILocation(line: 1215, column: 48, scope: !4916)
!4920 = !DILocation(line: 1217, column: 11, scope: !4921)
!4921 = distinct !DILexicalBlock(scope: !4922, file: !3, line: 1217, column: 11)
!4922 = distinct !DILexicalBlock(scope: !4916, file: !3, line: 1216, column: 5)
!4923 = !DILocation(line: 1217, column: 17, scope: !4921)
!4924 = !DILocation(line: 1217, column: 33, scope: !4921)
!4925 = !DILocation(line: 1217, column: 11, scope: !4922)
!4926 = !DILocation(line: 1218, column: 66, scope: !4921)
!4927 = !DILocation(line: 1218, column: 9, scope: !4921)
!4928 = !DILocation(line: 1221, column: 8, scope: !4929)
!4929 = distinct !DILexicalBlock(scope: !4930, file: !3, line: 1221, column: 8)
!4930 = distinct !DILexicalBlock(scope: !4921, file: !3, line: 1220, column: 2)
!4931 = !DILocation(line: 1221, column: 19, scope: !4929)
!4932 = !DILocation(line: 1221, column: 8, scope: !4930)
!4933 = !DILocation(line: 1222, column: 41, scope: !4929)
!4934 = !DILocation(line: 1222, column: 55, scope: !4929)
!4935 = !DILocation(line: 1222, column: 6, scope: !4929)
!4936 = !DILocation(line: 1223, column: 36, scope: !4937)
!4937 = distinct !DILexicalBlock(scope: !4929, file: !3, line: 1223, column: 13)
!4938 = !DILocation(line: 1224, column: 6, scope: !4937)
!4939 = !DILocation(line: 1224, column: 21, scope: !4937)
!4940 = !DILocation(line: 1223, column: 13, scope: !4929)
!4941 = !DILocation(line: 1225, column: 36, scope: !4937)
!4942 = !DILocation(line: 1225, column: 6, scope: !4937)
!4943 = !DILocation(line: 1227, column: 28, scope: !4937)
!4944 = !DILocation(line: 1227, column: 6, scope: !4937)
!4945 = !DILocation(line: 1229, column: 9, scope: !4946)
!4946 = distinct !DILexicalBlock(scope: !4930, file: !3, line: 1229, column: 8)
!4947 = !DILocation(line: 1229, column: 15, scope: !4946)
!4948 = !DILocation(line: 1229, column: 31, scope: !4946)
!4949 = !DILocation(line: 1230, column: 11, scope: !4946)
!4950 = !DILocation(line: 1230, column: 29, scope: !4946)
!4951 = !DILocation(line: 1230, column: 8, scope: !4946)
!4952 = !DILocation(line: 1231, column: 12, scope: !4946)
!4953 = !DILocation(line: 1231, column: 23, scope: !4946)
!4954 = !DILocation(line: 1229, column: 8, scope: !4930)
!4955 = !DILocation(line: 1232, column: 31, scope: !4946)
!4956 = !DILocation(line: 1232, column: 47, scope: !4946)
!4957 = !DILocation(line: 1232, column: 6, scope: !4946)
!4958 = !DILocation(line: 1237, column: 15, scope: !4922)
!4959 = !DILocation(line: 1237, column: 7, scope: !4922)
!4960 = !DILocation(line: 1238, column: 5, scope: !4922)
!4961 = !DILocation(line: 1240, column: 13, scope: !4962)
!4962 = distinct !DILexicalBlock(scope: !4850, file: !3, line: 1240, column: 7)
!4963 = !DILocation(line: 1240, column: 7, scope: !4850)
!4964 = !DILocation(line: 1242, column: 11, scope: !4965)
!4965 = distinct !DILexicalBlock(scope: !4966, file: !3, line: 1242, column: 11)
!4966 = distinct !DILexicalBlock(scope: !4962, file: !3, line: 1241, column: 5)
!4967 = !DILocation(line: 1242, column: 26, scope: !4965)
!4968 = !DILocation(line: 1242, column: 11, scope: !4966)
!4969 = !DILocation(line: 1244, column: 4, scope: !4970)
!4970 = distinct !DILexicalBlock(scope: !4965, file: !3, line: 1243, column: 2)
!4971 = !DILocation(line: 1245, column: 4, scope: !4970)
!4972 = !DILocation(line: 1246, column: 4, scope: !4970)
!4973 = !DILocation(line: 1247, column: 4, scope: !4970)
!4974 = !DILocation(line: 1248, column: 4, scope: !4970)
!4975 = !DILocation(line: 1249, column: 4, scope: !4970)
!4976 = !DILocation(line: 1250, column: 4, scope: !4970)
!4977 = !DILocation(line: 1251, column: 2, scope: !4970)
!4978 = !DILocation(line: 1252, column: 31, scope: !4979)
!4979 = distinct !DILexicalBlock(scope: !4965, file: !3, line: 1252, column: 16)
!4980 = !DILocation(line: 1252, column: 16, scope: !4965)
!4981 = !DILocation(line: 1253, column: 2, scope: !4979)
!4982 = !DILocation(line: 1255, column: 2, scope: !4979)
!4983 = !DILocation(line: 1271, column: 31, scope: !4850)
!4984 = !DILocation(line: 1271, column: 3, scope: !4850)
!4985 = !DILocation(line: 1271, column: 9, scope: !4850)
!4986 = !DILocation(line: 1271, column: 23, scope: !4850)
!4987 = !DILocation(line: 1272, column: 1, scope: !4850)
!4988 = distinct !DISubprogram(name: "VEC_ipa_opt_pass_heap_reserve", scope: !1434, file: !1434, line: 177, type: !4989, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4991)
!4989 = !DISubroutineType(types: !4990)
!4990 = !{!625, !4024, !625}
!4991 = !{!4992, !4993, !4994}
!4992 = !DILocalVariable(name: "vec_", arg: 1, scope: !4988, file: !1434, line: 177, type: !4024)
!4993 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4988, file: !1434, line: 177, type: !625)
!4994 = !DILocalVariable(name: "extend", scope: !4988, file: !1434, line: 177, type: !625)
!4995 = !DILocation(line: 0, scope: !4988)
!4996 = !DILocation(line: 177, column: 1, scope: !4988)
!4997 = !DILocation(line: 177, column: 1, scope: !4998)
!4998 = distinct !DILexicalBlock(scope: !4988, file: !1434, line: 177, column: 1)
!4999 = distinct !DISubprogram(name: "VEC_ipa_opt_pass_base_quick_push", scope: !1434, file: !1434, line: 176, type: !5000, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5003)
!5000 = !DISubroutineType(types: !5001)
!5001 = !{!4284, !5002, !2171}
!5002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!5003 = !{!5004, !5005, !5006}
!5004 = !DILocalVariable(name: "vec_", arg: 1, scope: !4999, file: !1434, line: 176, type: !5002)
!5005 = !DILocalVariable(name: "obj_", arg: 2, scope: !4999, file: !1434, line: 176, type: !2171)
!5006 = !DILocalVariable(name: "slot_", scope: !4999, file: !1434, line: 176, type: !4284)
!5007 = !DILocation(line: 0, scope: !4999)
!5008 = !DILocation(line: 176, column: 1, scope: !4999)
!5009 = distinct !DISubprogram(name: "VEC_ipa_opt_pass_base_space", scope: !1434, file: !1434, line: 176, type: !5010, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5012)
!5010 = !DISubroutineType(types: !5011)
!5011 = !{!625, !5002, !625}
!5012 = !{!5013, !5014}
!5013 = !DILocalVariable(name: "vec_", arg: 1, scope: !5009, file: !1434, line: 176, type: !5002)
!5014 = !DILocalVariable(name: "alloc_", arg: 2, scope: !5009, file: !1434, line: 176, type: !625)
!5015 = !DILocation(line: 0, scope: !5009)
!5016 = !DILocation(line: 176, column: 1, scope: !5009)
!5017 = distinct !DISubprogram(name: "ipa_write_summaries_2", scope: !3, file: !3, line: 1635, type: !5018, scopeLine: 1637, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5020)
!5018 = !DISubroutineType(types: !5019)
!5019 = !{null, !2189, !4312, !4365}
!5020 = !{!5021, !5022, !5023, !5024}
!5021 = !DILocalVariable(name: "pass", arg: 1, scope: !5017, file: !3, line: 1635, type: !2189)
!5022 = !DILocalVariable(name: "set", arg: 2, scope: !5017, file: !3, line: 1635, type: !4312)
!5023 = !DILocalVariable(name: "state", arg: 3, scope: !5017, file: !3, line: 1636, type: !4365)
!5024 = !DILocalVariable(name: "ipa_pass", scope: !5025, file: !3, line: 1640, type: !2172)
!5025 = distinct !DILexicalBlock(scope: !5017, file: !3, line: 1639, column: 5)
!5026 = !DILocation(line: 0, scope: !5017)
!5027 = !DILocation(line: 1638, column: 3, scope: !5017)
!5028 = !DILocation(line: 0, scope: !5025)
!5029 = !DILocation(line: 1641, column: 7, scope: !5025)
!5030 = !DILocation(line: 1642, column: 7, scope: !5025)
!5031 = !DILocation(line: 1643, column: 7, scope: !5025)
!5032 = !DILocation(line: 1644, column: 17, scope: !5033)
!5033 = distinct !DILexicalBlock(scope: !5025, file: !3, line: 1644, column: 11)
!5034 = !DILocation(line: 1644, column: 22, scope: !5033)
!5035 = !DILocation(line: 1645, column: 4, scope: !5033)
!5036 = !DILocation(line: 1645, column: 17, scope: !5033)
!5037 = !DILocation(line: 1645, column: 7, scope: !5033)
!5038 = !DILocation(line: 1646, column: 4, scope: !5033)
!5039 = !DILocation(line: 1646, column: 15, scope: !5033)
!5040 = !DILocation(line: 1646, column: 9, scope: !5033)
!5041 = !DILocation(line: 1646, column: 20, scope: !5033)
!5042 = !DILocation(line: 1646, column: 23, scope: !5033)
!5043 = !DILocation(line: 1644, column: 11, scope: !5025)
!5044 = !DILocation(line: 1649, column: 14, scope: !5045)
!5045 = distinct !DILexicalBlock(scope: !5046, file: !3, line: 1649, column: 8)
!5046 = distinct !DILexicalBlock(scope: !5033, file: !3, line: 1647, column: 2)
!5047 = !DILocation(line: 1649, column: 8, scope: !5045)
!5048 = !DILocation(line: 1650, column: 6, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !5050, file: !3, line: 1650, column: 6)
!5050 = distinct !DILexicalBlock(scope: !5045, file: !3, line: 1650, column: 6)
!5051 = !DILocation(line: 1649, column: 8, scope: !5046)
!5052 = !DILocation(line: 1652, column: 14, scope: !5046)
!5053 = !DILocation(line: 1652, column: 4, scope: !5046)
!5054 = !DILocation(line: 1655, column: 14, scope: !5055)
!5055 = distinct !DILexicalBlock(scope: !5046, file: !3, line: 1655, column: 8)
!5056 = !DILocation(line: 1655, column: 8, scope: !5055)
!5057 = !DILocation(line: 1656, column: 6, scope: !5058)
!5058 = distinct !DILexicalBlock(scope: !5059, file: !3, line: 1656, column: 6)
!5059 = distinct !DILexicalBlock(scope: !5055, file: !3, line: 1656, column: 6)
!5060 = !DILocation(line: 1655, column: 8, scope: !5046)
!5061 = !DILocation(line: 1659, column: 17, scope: !5062)
!5062 = distinct !DILexicalBlock(scope: !5025, file: !3, line: 1659, column: 11)
!5063 = !DILocation(line: 1659, column: 11, scope: !5062)
!5064 = !DILocation(line: 1659, column: 21, scope: !5062)
!5065 = !DILocation(line: 1659, column: 35, scope: !5062)
!5066 = !DILocation(line: 1659, column: 40, scope: !5062)
!5067 = !DILocation(line: 1659, column: 11, scope: !5025)
!5068 = !DILocation(line: 1660, column: 2, scope: !5062)
!5069 = !DILocation(line: 1662, column: 20, scope: !5025)
!5070 = distinct !{!5070, !5027, !5071}
!5071 = !DILocation(line: 1663, column: 5, scope: !5017)
!5072 = !DILocation(line: 1664, column: 1, scope: !5017)
!5073 = distinct !DISubprogram(name: "gt_pch_pa_order", scope: !2402, file: !2402, line: 39, type: !5074, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5077)
!5074 = !DISubroutineType(types: !5075)
!5075 = !{null, !629, !629, !5076, !629}
!5076 = !DIDerivedType(tag: DW_TAG_typedef, name: "gt_pointer_operator", file: !2406, line: 38, baseType: !1560)
!5077 = !{!5078, !5079, !5080, !5081, !5082}
!5078 = !DILocalVariable(name: "this_obj", arg: 1, scope: !5073, file: !2402, line: 39, type: !629)
!5079 = !DILocalVariable(name: "x_p", arg: 2, scope: !5073, file: !2402, line: 40, type: !629)
!5080 = !DILocalVariable(name: "op", arg: 3, scope: !5073, file: !2402, line: 41, type: !5076)
!5081 = !DILocalVariable(name: "cookie", arg: 4, scope: !5073, file: !2402, line: 42, type: !629)
!5082 = !DILocalVariable(name: "i0", scope: !5083, file: !2402, line: 45, type: !1103)
!5083 = distinct !DILexicalBlock(scope: !5084, file: !2402, line: 44, column: 22)
!5084 = distinct !DILexicalBlock(scope: !5073, file: !2402, line: 44, column: 7)
!5085 = !DILocation(line: 0, scope: !5073)
!5086 = !DILocation(line: 44, column: 7, scope: !5084)
!5087 = !DILocation(line: 44, column: 13, scope: !5084)
!5088 = !DILocation(line: 44, column: 7, scope: !5073)
!5089 = !DILocation(line: 46, column: 5, scope: !5090)
!5090 = distinct !DILexicalBlock(scope: !5083, file: !2402, line: 46, column: 5)
!5091 = !DILocation(line: 0, scope: !5090)
!5092 = !DILocation(line: 0, scope: !5083)
!5093 = !DILocation(line: 46, column: 33, scope: !5094)
!5094 = distinct !DILexicalBlock(scope: !5090, file: !2402, line: 46, column: 5)
!5095 = !DILocation(line: 46, column: 24, scope: !5094)
!5096 = !DILocation(line: 46, column: 21, scope: !5094)
!5097 = !DILocation(line: 47, column: 20, scope: !5098)
!5098 = distinct !DILexicalBlock(scope: !5099, file: !2402, line: 47, column: 11)
!5099 = distinct !DILexicalBlock(scope: !5094, file: !2402, line: 46, column: 48)
!5100 = !DILocation(line: 47, column: 27, scope: !5098)
!5101 = !DILocation(line: 47, column: 11, scope: !5099)
!5102 = !DILocation(line: 48, column: 15, scope: !5098)
!5103 = !DILocation(line: 48, column: 13, scope: !5098)
!5104 = !DILocation(line: 48, column: 9, scope: !5098)
!5105 = !DILocation(line: 46, column: 44, scope: !5094)
!5106 = !DILocation(line: 46, column: 5, scope: !5094)
!5107 = distinct !{!5107, !5089, !5108}
!5108 = !DILocation(line: 49, column: 5, scope: !5090)
!5109 = !DILocation(line: 50, column: 26, scope: !5110)
!5110 = distinct !DILexicalBlock(scope: !5083, file: !2402, line: 50, column: 9)
!5111 = !DILocation(line: 50, column: 9, scope: !5083)
!5112 = !DILocation(line: 51, column: 7, scope: !5110)
!5113 = !DILocation(line: 53, column: 1, scope: !5073)
