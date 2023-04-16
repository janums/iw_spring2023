; ModuleID = 'ipa-reference.bc'
source_filename = "ipa-reference.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.ipa_opt_pass_d = type { %struct.opt_pass, void ()*, void (%struct.cgraph_node_set_def*)*, void ()*, void (%struct.cgraph_node*)*, void (%struct.cgraph_node*, %union.gimple_statement_d**)*, i32, i32 (%struct.cgraph_node*)*, void (%struct.varpool_node*)* }
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
%struct.cgraph_node_set_def = type { %struct.htab*, %struct.VEC_cgraph_node_ptr_gc*, i8* }
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.VEC_cgraph_node_ptr_gc = type { %struct.VEC_cgraph_node_ptr_base }
%struct.VEC_cgraph_node_ptr_base = type { i32, i32, [1 x %struct.cgraph_node*] }
%struct.cgraph_node = type { %union.tree_node*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.htab*, i8*, %struct.VEC_ipa_opt_pass_heap*, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
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
%struct.rtx_def = type opaque
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
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
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
%struct.splay_tree_s = type { %struct.splay_tree_node_s*, i32 (i64, i64)*, void (i64)*, void (i64)*, i8* (i32, i8*)*, void (i8*, i8*)*, i8* }
%struct.splay_tree_node_s = type { i64, i64, %struct.splay_tree_node_s*, %struct.splay_tree_node_s* }
%struct.ggc_root_tab = type { i8*, i64, i64, void (i8*)*, void (i8*)* }
%struct.VEC_ipa_reference_vars_info_t_heap = type { %struct.VEC_ipa_reference_vars_info_t_base }
%struct.VEC_ipa_reference_vars_info_t_base = type { i32, i32, [1 x %struct.ipa_reference_vars_info_d*] }
%struct.ipa_reference_vars_info_d = type { %struct.ipa_reference_local_vars_info_d*, %struct.ipa_reference_global_vars_info_d* }
%struct.ipa_reference_local_vars_info_d = type { %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8, i8 }
%struct.ipa_reference_global_vars_info_d = type { %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def* }
%struct.diagnostic_context = type { %struct.pretty_print_info*, [12 x i32], i8, i8, [870 x i32], i8, i8, void (%struct.diagnostic_context*, %struct.diagnostic_info*)*, void (%struct.diagnostic_context*, %struct.diagnostic_info*)*, void (i8*, [1 x %struct.__va_list_tag]*)*, %union.tree_node*, %struct.line_map*, i32, i8 }
%struct.pretty_print_info = type { %struct.output_buffer*, i8*, i32, i32, i32, %struct.pp_wrapping_mode_t, i8 (%struct.pretty_print_info*, %struct.text_info*, i8*, i32, i8, i8, i8)*, i8, i8, i8 }
%struct.output_buffer = type { %struct.obstack, %struct.obstack, %struct.obstack*, %struct.chunk_info*, %struct._IO_FILE*, i32, [128 x i8] }
%struct.chunk_info = type { %struct.chunk_info*, [60 x i8*] }
%struct.pp_wrapping_mode_t = type { i32, i32 }
%struct.text_info = type { i8*, [1 x %struct.__va_list_tag]*, i32, i32*, %union.tree_node** }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.diagnostic_info = type { %struct.text_info, i32, i32, %union.tree_node*, i32, i32 }
%struct.line_map = type { i8*, i32, i32, i32, i8, i8, i8 }
%struct.cgraph_node_hook_list = type opaque
%struct.lang_hooks = type { i8*, i64, void (%union.tree_node*)*, i64 (i32)*, i32 (i32, i8**)*, void (%struct.diagnostic_context*)*, i32 (i64, i8*, i32)*, i8 (i8*, i64)*, i8 (i8**)*, i8 ()*, void ()*, void (i32)*, i8 (%union.tree_node*)*, i32 (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void ()*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)*, i32 (%union.tree_node*, %union.tree_node*)*, void (%struct.diagnostic_context*, i8*, %struct.diagnostic_info*)*, i64 (i64)*, %struct.attribute_spec*, %struct.attribute_spec*, %struct.attribute_spec*, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i8 (%union.tree_node*)*, i32 (%union.tree_node**, %struct.gimple_seq_d**, %struct.gimple_seq_d**)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void ()*, %union.tree_node* (%union.tree_node*, i8*, i8*)*, %union.tree_node* ()*, %union.tree_node* (%union.tree_node*)*, i8 }
%struct.attribute_spec = type { i8*, i32, i32, i8, i8, i8, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* }
%struct.lang_hooks_for_tree_inlining = type { i8 (%union.tree_node*, %union.tree_node*)* }
%struct.lang_hooks_for_callgraph = type { %union.tree_node* (%union.tree_node**, i32*)* }
%struct.lang_hooks_for_tree_dump = type { i8 (i8*, %union.tree_node*)*, i32 (%union.tree_node*)* }
%struct.lang_hooks_for_decls = type { i32 ()*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* ()*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, i8 (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i8 (%union.tree_node*)*, void ()*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, i32 (%union.tree_node*)*, i8 (%union.tree_node*, i8)*, i8 (%union.tree_node*, i8)*, i8 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)* }
%struct.lang_hooks_for_types = type { %union.tree_node* (i32)*, i32 (%union.tree_node*)*, %union.tree_node* (i32, i32)*, %union.tree_node* (i32, i32)*, i8 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void (%union.tree_node*, i8*)*, void (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void (%struct.gimplify_omp_ctx*, %union.tree_node*)*, i8 (%union.tree_node*, %union.tree_node*)*, i8 (%union.tree_node*, %struct.array_descr_info*)*, void (%union.tree_node*, %union.tree_node**, %union.tree_node**)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, i8 }
%struct.gimplify_omp_ctx = type opaque
%struct.array_descr_info = type opaque
%struct.lang_hooks_for_lto = type { void (i8*)*, void (i8*, i64, i8*)*, void ()* }
%struct.pointer_set_t = type opaque
%struct.cgraph_2node_hook_list = type opaque
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.bitmap_iterator = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, i64 }
%struct.ipa_dfs_info = type { i32, i32, i8, i8, %struct.cgraph_node*, i8* }
%struct.cgraph_node_set_iterator = type { %struct.cgraph_node_set_def*, i32 }
%struct.lto_simple_output_block = type { i32, %struct.lto_out_decl_state*, %struct.lto_output_stream* }
%struct.lto_out_decl_state = type { [7 x %struct.lto_tree_ref_encoder], %struct.lto_cgraph_encoder_d*, %union.tree_node* }
%struct.lto_tree_ref_encoder = type { %struct.htab*, i32, %struct.VEC_tree_heap* }
%struct.VEC_tree_heap = type { %struct.VEC_tree_base }
%struct.lto_output_stream = type { %struct.lto_char_ptr_base*, %struct.lto_char_ptr_base*, i8*, i32, i32, i32 }
%struct.lto_char_ptr_base = type { i8* }
%struct.lto_input_block = type { i8*, i32, i32 }
%struct.walk_stmt_info = type { %struct.gimple_stmt_iterator, i8*, %struct.pointer_set_t*, i8, i8, i8, i8, %union.tree_node* }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.ssa_operand_iterator_d = type { i8, i32, %struct.def_optype_d*, %struct.use_optype_d*, i32, i32, %union.gimple_statement_d* }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_type_symtab, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_type* }
%union.tree_type_symtab = type { i8* }
%struct.lang_type = type opaque
%struct.gimple_statement_asm = type { %struct.gimple_statement_with_memory_ops_base, i8*, i8, i8, i8, i8, [1 x %union.tree_node*] }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, %union.tree_node*, %union.tree_node* }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, %struct.def_optype_d*, %struct.use_optype_d* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [11 x i8] c"static-var\00", align 1
@pass_ipa_reference = dso_local local_unnamed_addr global %struct.ipa_opt_pass_d { %struct.opt_pass { i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8 ()* @gate_reference, i32 ()* @propagate, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0 }, void ()* @generate_summary, void (%struct.cgraph_node_set_def*)* @ipa_reference_write_summary, void ()* @ipa_reference_read_summary, void (%struct.cgraph_node*)* null, void (%struct.cgraph_node*, %union.gimple_statement_d**)* null, i32 0, i32 (%struct.cgraph_node*)* null, void (%struct.varpool_node*)* null }, align 8, !dbg !0
@reference_vars_to_consider = internal global %struct.splay_tree_s* null, align 8, !dbg !2053
@gt_ggc_r_gt_ipa_reference_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { i8* bitcast (%struct.splay_tree_s** @reference_vars_to_consider to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_m_IP9tree_node12splay_tree_s, void (i8*)* @gt_pch_n_IP9tree_node12splay_tree_s }, %struct.ggc_root_tab zeroinitializer], align 16, !dbg !2039
@memory_identifier_string = common dso_local local_unnamed_addr global %union.tree_node* null, align 8, !dbg !2092
@ipa_reference_vars_vector = internal global %struct.VEC_ipa_reference_vars_info_t_heap* null, align 8, !dbg !2094
@flag_ipa_reference = external dso_local local_unnamed_addr global i32, align 4
@global_dc = external dso_local local_unnamed_addr global %struct.diagnostic_context*, align 8
@cgraph_n_nodes = external dso_local local_unnamed_addr global i32, align 4
@function_insertion_hook_holder = internal unnamed_addr global %struct.cgraph_node_hook_list* null, align 8, !dbg !2096
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"reduced\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"ipa-reference.c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@all_module_statics = internal unnamed_addr global %struct.bitmap_head_def* null, align 8, !dbg !2100
@global_info_obstack = internal global %struct.bitmap_obstack zeroinitializer, align 8, !dbg !2102
@.str.4 = private unnamed_addr constant [22 x i8] c"\0AFunction name:%s/%i:\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0A  locals read: \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"\0A  locals written: \00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"\0A  next cycle: %s/%i \00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"\0A    locals read: \00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"\0A    locals written: \00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"\0A  globals read: \00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"\0A  globals written: \00", align 1
@cgraph_nodes = external dso_local local_unnamed_addr global %struct.cgraph_node*, align 8
@local_info_obstack = internal global %struct.bitmap_obstack zeroinitializer, align 8, !dbg !2104
@bitmap_zero_bits = external dso_local global %struct.bitmap_element_def, align 8
@lang_hooks = external dso_local local_unnamed_addr global %struct.lang_hooks, align 8
@visited_nodes = internal unnamed_addr global %struct.pointer_set_t* null, align 8, !dbg !2116
@module_statics_escape = internal unnamed_addr global %struct.bitmap_head_def* null, align 8, !dbg !2120
@module_statics_written = internal unnamed_addr global %struct.bitmap_head_def* null, align 8, !dbg !2122
@.str.14 = private unnamed_addr constant [29 x i8] c"Not TREE_ADDRESSABLE var %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"read-only var %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"\0APromotable global:%s\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"\0A  calls read all: \00", align 1
@ipa_init.init_p = internal unnamed_addr global i1 false, align 1, !dbg !2124
@.str.18 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@node_removal_hook_holder = internal unnamed_addr global %struct.cgraph_node_hook_list* null, align 8, !dbg !2110
@node_duplication_hook_holder = internal unnamed_addr global %struct.cgraph_2node_hook_list* null, align 8, !dbg !2112
@varpool_nodes_queue = external dso_local local_unnamed_addr global %struct.varpool_node*, align 8
@.str.19 = private unnamed_addr constant [11 x i8] c"./cgraph.h\00", align 1
@tree_code_type = external dso_local local_unnamed_addr constant [0 x i32], align 4
@.str.20 = private unnamed_addr constant [24 x i8] c"\0A local analysis of %s\0A\00", align 1
@current_function_decl = external dso_local local_unnamed_addr global %union.tree_node*, align 8
@.str.21 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@.str.23 = private unnamed_addr constant [17 x i8] c"./lto-streamer.h\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !2129 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !2142, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !2143, metadata !DIExpression()), !dbg !2144
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2145
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2146
  ret i32 %call, !dbg !2147
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2148 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2151
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2152
  ret i32 %call, !dbg !2153
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2154 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2208, metadata !DIExpression()), !dbg !2209
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2210
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2210
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2210
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2210
  %cmp = icmp uge i8* %0, %1, !dbg !2210
  %conv1 = zext i1 %cmp to i64, !dbg !2210
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2210
  %tobool = icmp eq i64 %expval, 0, !dbg !2210
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2210

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2210
  br label %cond.end, !dbg !2210

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2210
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2210
  %2 = load i8, i8* %0, align 1, !dbg !2210
  %conv3 = zext i8 %2 to i32, !dbg !2210
  br label %cond.end, !dbg !2210

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2210
  ret i32 %cond, !dbg !2211
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2212 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2214, metadata !DIExpression()), !dbg !2215
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2216
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2216
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2216
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2216
  %cmp = icmp uge i8* %0, %1, !dbg !2216
  %conv1 = zext i1 %cmp to i64, !dbg !2216
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2216
  %tobool = icmp eq i64 %expval, 0, !dbg !2216
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2216

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2216
  br label %cond.end, !dbg !2216

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2216
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2216
  %2 = load i8, i8* %0, align 1, !dbg !2216
  %conv3 = zext i8 %2 to i32, !dbg !2216
  br label %cond.end, !dbg !2216

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2216
  ret i32 %cond, !dbg !2217
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2218 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2219
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2219
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2219
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2219
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2219
  %cmp = icmp uge i8* %1, %2, !dbg !2219
  %conv1 = zext i1 %cmp to i64, !dbg !2219
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2219
  %tobool = icmp eq i64 %expval, 0, !dbg !2219
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2219

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2219
  br label %cond.end, !dbg !2219

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2219
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2219
  %3 = load i8, i8* %1, align 1, !dbg !2219
  %conv3 = zext i8 %3 to i32, !dbg !2219
  br label %cond.end, !dbg !2219

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2219
  ret i32 %cond, !dbg !2220
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2221 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2225, metadata !DIExpression()), !dbg !2226
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2227
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2228
  ret i32 %call, !dbg !2229
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2230 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2234, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2235, metadata !DIExpression()), !dbg !2236
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2237
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2237
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2237
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2237
  %cmp = icmp uge i8* %0, %1, !dbg !2237
  %conv1 = zext i1 %cmp to i64, !dbg !2237
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2237
  %tobool = icmp eq i64 %expval, 0, !dbg !2237
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2237

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2237
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2237
  br label %cond.end, !dbg !2237

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2237
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2237
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2237
  store i8 %conv2, i8* %0, align 1, !dbg !2237
  %conv6 = and i32 %__c, 255, !dbg !2237
  br label %cond.end, !dbg !2237

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2237
  ret i32 %cond, !dbg !2238
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2239 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2241, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2242, metadata !DIExpression()), !dbg !2243
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2244
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2244
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2244
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2244
  %cmp = icmp uge i8* %0, %1, !dbg !2244
  %conv1 = zext i1 %cmp to i64, !dbg !2244
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2244
  %tobool = icmp eq i64 %expval, 0, !dbg !2244
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2244

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2244
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2244
  br label %cond.end, !dbg !2244

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2244
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2244
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2244
  store i8 %conv2, i8* %0, align 1, !dbg !2244
  %conv6 = and i32 %__c, 255, !dbg !2244
  br label %cond.end, !dbg !2244

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2244
  ret i32 %cond, !dbg !2245
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2246 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2248, metadata !DIExpression()), !dbg !2249
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2250
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2250
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2250
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2250
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2250
  %cmp = icmp uge i8* %1, %2, !dbg !2250
  %conv1 = zext i1 %cmp to i64, !dbg !2250
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2250
  %tobool = icmp eq i64 %expval, 0, !dbg !2250
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2250

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2250
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2250
  br label %cond.end, !dbg !2250

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2250
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2250
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2250
  store i8 %conv4, i8* %1, align 1, !dbg !2250
  %conv6 = and i32 %__c, 255, !dbg !2250
  br label %cond.end, !dbg !2250

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2250
  ret i32 %cond, !dbg !2251
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2252 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2258, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2259, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2260, metadata !DIExpression()), !dbg !2261
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2262
  ret i64 %call, !dbg !2263
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2264 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2266, metadata !DIExpression()), !dbg !2267
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2268
  %0 = load i32, i32* %_flags, align 8, !dbg !2268
  %and = lshr i32 %0, 4, !dbg !2268
  %and.lobit = and i32 %and, 1, !dbg !2268
  ret i32 %and.lobit, !dbg !2269
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2270 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2272, metadata !DIExpression()), !dbg !2273
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2274
  %0 = load i32, i32* %_flags, align 8, !dbg !2274
  %and = lshr i32 %0, 5, !dbg !2274
  %and.lobit = and i32 %and, 1, !dbg !2274
  ret i32 %and.lobit, !dbg !2275
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2276 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2279, metadata !DIExpression()), !dbg !2280
  %__c.off = add i32 %__c, 128, !dbg !2281
  %0 = icmp ult i32 %__c.off, 384, !dbg !2281
  br i1 %0, label %cond.true, label %cond.end, !dbg !2281

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2282
  %1 = load i32*, i32** %call, align 8, !dbg !2283
  %idxprom = sext i32 %__c to i64, !dbg !2284
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2284
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2284
  br label %cond.end, !dbg !2285

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2285
  ret i32 %cond, !dbg !2286
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2287 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2289, metadata !DIExpression()), !dbg !2290
  %__c.off = add i32 %__c, 128, !dbg !2291
  %0 = icmp ult i32 %__c.off, 384, !dbg !2291
  br i1 %0, label %cond.true, label %cond.end, !dbg !2291

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2292
  %1 = load i32*, i32** %call, align 8, !dbg !2293
  %idxprom = sext i32 %__c to i64, !dbg !2294
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2294
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2294
  br label %cond.end, !dbg !2295

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2295
  ret i32 %cond, !dbg !2296
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2297 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2302, metadata !DIExpression()), !dbg !2303
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2304
  %conv = trunc i64 %call to i32, !dbg !2305
  ret i32 %conv, !dbg !2306
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2307 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2311, metadata !DIExpression()), !dbg !2312
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2313
  ret i64 %call, !dbg !2314
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2315 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2320, metadata !DIExpression()), !dbg !2321
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2322
  ret i64 %call, !dbg !2323
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2324 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2330, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2331, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2332, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2333, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2334, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i64 0, metadata !2335, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2336, metadata !DIExpression()), !dbg !2340
  br label %while.cond, !dbg !2341

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2342
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2340
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2336, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2335, metadata !DIExpression()), !dbg !2340
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2343
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2341

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2344
  %div = lshr i64 %add, 1, !dbg !2346
  call void @llvm.dbg.value(metadata i64 %div, metadata !2337, metadata !DIExpression()), !dbg !2340
  %mul = mul i64 %div, %__size, !dbg !2347
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2348
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2338, metadata !DIExpression()), !dbg !2340
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2349
  call void @llvm.dbg.value(metadata i32 %call, metadata !2339, metadata !DIExpression()), !dbg !2340
  %cmp1 = icmp slt i32 %call, 0, !dbg !2350
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2352

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2353
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2355

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2356
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2335, metadata !DIExpression()), !dbg !2340
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2340
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2340
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2336, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2335, metadata !DIExpression()), !dbg !2340
  br label %while.cond, !dbg !2341, !llvm.loop !2357

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2340
  ret i8* %retval.0, !dbg !2359
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2360 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2366, metadata !DIExpression()), !dbg !2367
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2368
  ret double %call, !dbg !2369
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2370 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2379, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2380, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i32 %base, metadata !2381, metadata !DIExpression()), !dbg !2382
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2383
  ret i64 %call, !dbg !2384
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2385 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2391, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2392, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i32 %base, metadata !2393, metadata !DIExpression()), !dbg !2394
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2395
  ret i64 %call, !dbg !2396
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2397 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2408, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2409, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i32 %base, metadata !2410, metadata !DIExpression()), !dbg !2411
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2412
  ret i64 %call, !dbg !2413
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2414 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2418, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2419, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata i32 %base, metadata !2420, metadata !DIExpression()), !dbg !2421
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2422
  ret i64 %call, !dbg !2423
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2424 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2466, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2467, metadata !DIExpression()), !dbg !2468
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2469
  ret i32 %call, !dbg !2470
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2471 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2473, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2474, metadata !DIExpression()), !dbg !2475
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2476
  ret i32 %call, !dbg !2477
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2478 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2482, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2483, metadata !DIExpression()), !dbg !2484
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2485
  ret i32 %call, !dbg !2486
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2487 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2491, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2492, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2493, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2494, metadata !DIExpression()), !dbg !2495
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2496
  ret i32 %call, !dbg !2497
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2498 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2502, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2503, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2504, metadata !DIExpression()), !dbg !2505
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2504, metadata !DIExpression(DW_OP_deref)), !dbg !2505
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2506
  ret i32 %call, !dbg !2507
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2508 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2512, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2513, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2514, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2515, metadata !DIExpression()), !dbg !2516
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2515, metadata !DIExpression(DW_OP_deref)), !dbg !2516
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2517
  ret i32 %call, !dbg !2518
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2519 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2543, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2544, metadata !DIExpression()), !dbg !2545
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2546
  ret i32 %call, !dbg !2547
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2548 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2550, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2551, metadata !DIExpression()), !dbg !2552
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2553
  ret i32 %call, !dbg !2554
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2555 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2559, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2560, metadata !DIExpression()), !dbg !2561
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2562
  ret i32 %call, !dbg !2563
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2564 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2568, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2569, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2570, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2571, metadata !DIExpression()), !dbg !2572
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2573
  ret i32 %call, !dbg !2574
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %struct.bitmap_head_def* @ipa_reference_get_read_global(%struct.cgraph_node* %fn) local_unnamed_addr #5 !dbg !2575 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %fn, metadata !2579, metadata !DIExpression()), !dbg !2581
  %call = tail call fastcc %struct.ipa_reference_global_vars_info_d* @get_global_reference_vars_info(%struct.cgraph_node* %fn) #7, !dbg !2582
  call void @llvm.dbg.value(metadata %struct.ipa_reference_global_vars_info_d* %call, metadata !2580, metadata !DIExpression()), !dbg !2581
  %tobool = icmp eq %struct.ipa_reference_global_vars_info_d* %call, null, !dbg !2583
  br i1 %tobool, label %cleanup, label %if.then, !dbg !2585

if.then:                                          ; preds = %entry
  %statics_read = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, %struct.ipa_reference_global_vars_info_d* %call, i64 0, i32 0, !dbg !2586
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_read, align 8, !dbg !2586
  br label %cleanup, !dbg !2587

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %struct.bitmap_head_def* [ %0, %if.then ], [ null, %entry ], !dbg !2588
  ret %struct.bitmap_head_def* %retval.0, !dbg !2589
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.ipa_reference_global_vars_info_d* @get_global_reference_vars_info(%struct.cgraph_node* %fn) unnamed_addr #5 !dbg !2590 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %fn, metadata !2594, metadata !DIExpression()), !dbg !2596
  %call = tail call fastcc %struct.ipa_reference_vars_info_d* @get_reference_vars_info(%struct.cgraph_node* %fn) #7, !dbg !2597
  call void @llvm.dbg.value(metadata %struct.ipa_reference_vars_info_d* %call, metadata !2595, metadata !DIExpression()), !dbg !2596
  %tobool = icmp eq %struct.ipa_reference_vars_info_d* %call, null, !dbg !2598
  br i1 %tobool, label %cleanup, label %if.then, !dbg !2600

if.then:                                          ; preds = %entry
  %global = getelementptr inbounds %struct.ipa_reference_vars_info_d, %struct.ipa_reference_vars_info_d* %call, i64 0, i32 1, !dbg !2601
  %0 = load %struct.ipa_reference_global_vars_info_d*, %struct.ipa_reference_global_vars_info_d** %global, align 8, !dbg !2601
  br label %cleanup, !dbg !2602

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %struct.ipa_reference_global_vars_info_d* [ %0, %if.then ], [ null, %entry ], !dbg !2603
  ret %struct.ipa_reference_global_vars_info_d* %retval.0, !dbg !2604
}

; Function Attrs: nounwind uwtable
define dso_local %struct.bitmap_head_def* @ipa_reference_get_written_global(%struct.cgraph_node* %fn) local_unnamed_addr #5 !dbg !2605 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %fn, metadata !2607, metadata !DIExpression()), !dbg !2609
  %call = tail call fastcc %struct.ipa_reference_global_vars_info_d* @get_global_reference_vars_info(%struct.cgraph_node* %fn) #7, !dbg !2610
  call void @llvm.dbg.value(metadata %struct.ipa_reference_global_vars_info_d* %call, metadata !2608, metadata !DIExpression()), !dbg !2609
  %tobool = icmp eq %struct.ipa_reference_global_vars_info_d* %call, null, !dbg !2611
  br i1 %tobool, label %cleanup, label %if.then, !dbg !2613

if.then:                                          ; preds = %entry
  %statics_written = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, %struct.ipa_reference_global_vars_info_d* %call, i64 0, i32 1, !dbg !2614
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_written, align 8, !dbg !2614
  br label %cleanup, !dbg !2615

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %struct.bitmap_head_def* [ %0, %if.then ], [ null, %entry ], !dbg !2616
  ret %struct.bitmap_head_def* %retval.0, !dbg !2617
}

; Function Attrs: nounwind uwtable
define dso_local %struct.bitmap_head_def* @ipa_reference_get_not_read_global(%struct.cgraph_node* %fn) local_unnamed_addr #5 !dbg !2618 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %fn, metadata !2620, metadata !DIExpression()), !dbg !2622
  %call = tail call fastcc %struct.ipa_reference_global_vars_info_d* @get_global_reference_vars_info(%struct.cgraph_node* %fn) #7, !dbg !2623
  call void @llvm.dbg.value(metadata %struct.ipa_reference_global_vars_info_d* %call, metadata !2621, metadata !DIExpression()), !dbg !2622
  %tobool = icmp eq %struct.ipa_reference_global_vars_info_d* %call, null, !dbg !2624
  br i1 %tobool, label %cleanup, label %if.then, !dbg !2626

if.then:                                          ; preds = %entry
  %statics_not_read = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, %struct.ipa_reference_global_vars_info_d* %call, i64 0, i32 2, !dbg !2627
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_not_read, align 8, !dbg !2627
  br label %cleanup, !dbg !2628

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %struct.bitmap_head_def* [ %0, %if.then ], [ null, %entry ], !dbg !2629
  ret %struct.bitmap_head_def* %retval.0, !dbg !2630
}

; Function Attrs: nounwind uwtable
define dso_local %struct.bitmap_head_def* @ipa_reference_get_not_written_global(%struct.cgraph_node* %fn) local_unnamed_addr #5 !dbg !2631 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %fn, metadata !2633, metadata !DIExpression()), !dbg !2635
  %call = tail call fastcc %struct.ipa_reference_global_vars_info_d* @get_global_reference_vars_info(%struct.cgraph_node* %fn) #7, !dbg !2636
  call void @llvm.dbg.value(metadata %struct.ipa_reference_global_vars_info_d* %call, metadata !2634, metadata !DIExpression()), !dbg !2635
  %tobool = icmp eq %struct.ipa_reference_global_vars_info_d* %call, null, !dbg !2637
  br i1 %tobool, label %cleanup, label %if.then, !dbg !2639

if.then:                                          ; preds = %entry
  %statics_not_written = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, %struct.ipa_reference_global_vars_info_d* %call, i64 0, i32 3, !dbg !2640
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_not_written, align 8, !dbg !2640
  br label %cleanup, !dbg !2641

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %struct.bitmap_head_def* [ %0, %if.then ], [ null, %entry ], !dbg !2642
  ret %struct.bitmap_head_def* %retval.0, !dbg !2643
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_reference() #5 !dbg !2644 {
entry:
  %0 = load i32, i32* @flag_ipa_reference, align 4, !dbg !2645
  %tobool = icmp eq i32 %0, 0, !dbg !2645
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !2646

land.rhs:                                         ; preds = %entry
  %1 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !2647
  %arrayidx = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %1, i64 0, i32 1, i64 4, !dbg !2647
  %2 = load i32, i32* %arrayidx, align 8, !dbg !2647
  %tobool1 = icmp eq i32 %2, 0, !dbg !2647
  br i1 %tobool1, label %lor.rhs, label %lor.end, !dbg !2648

lor.rhs:                                          ; preds = %land.rhs
  %arrayidx3 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %1, i64 0, i32 1, i64 5, !dbg !2649
  %3 = load i32, i32* %arrayidx3, align 4, !dbg !2649
  %tobool4 = icmp eq i32 %3, 0, !dbg !2648
  %phitmp2 = zext i1 %tobool4 to i8, !dbg !2648
  br label %lor.end, !dbg !2648

lor.end:                                          ; preds = %land.rhs, %lor.rhs
  %4 = phi i8 [ 0, %land.rhs ], [ %phitmp2, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %entry, %lor.end
  %5 = phi i8 [ 0, %entry ], [ %4, %lor.end ]
  ret i8 %5, !dbg !2650
}

; Function Attrs: nounwind uwtable
define internal i32 @propagate() #5 !dbg !2651 {
entry:
  %read_all = alloca i8, align 1
  %write_all = alloca i8, align 1
  %index = alloca i32, align 4
  %bi = alloca %struct.bitmap_iterator, align 8
  %0 = load i32, i32* @cgraph_n_nodes, align 4, !dbg !2705
  %conv = sext i32 %0 to i64, !dbg !2705
  %call = tail call i8* @xcalloc(i64 %conv, i64 8) #6, !dbg !2705
  %1 = bitcast i8* %call to %struct.cgraph_node**, !dbg !2705
  call void @llvm.dbg.value(metadata %struct.cgraph_node** %1, metadata !2655, metadata !DIExpression()), !dbg !2706
  %call1 = tail call i32 @ipa_utils_reduced_inorder(%struct.cgraph_node** %1, i8 zeroext 0, i8 zeroext 1, i8 (%struct.cgraph_edge*)* null) #6, !dbg !2707
  call void @llvm.dbg.value(metadata i32 %call1, metadata !2656, metadata !DIExpression()), !dbg !2706
  %2 = load %struct.cgraph_node_hook_list*, %struct.cgraph_node_hook_list** @function_insertion_hook_holder, align 8, !dbg !2708
  tail call void @cgraph_remove_function_insertion_hook(%struct.cgraph_node_hook_list* %2) #6, !dbg !2709
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2710
  %tobool = icmp eq %struct._IO_FILE* %3, null, !dbg !2710
  br i1 %tobool, label %if.end, label %if.then, !dbg !2712

if.then:                                          ; preds = %entry
  tail call void @dump_cgraph(%struct._IO_FILE* nonnull %3) #6, !dbg !2713
  br label %if.end, !dbg !2713

if.end:                                           ; preds = %entry, %if.then
  %call2 = tail call i32 @ipa_utils_reduced_inorder(%struct.cgraph_node** %1, i8 zeroext 1, i8 zeroext 1, i8 (%struct.cgraph_edge*)* null) #6, !dbg !2714
  call void @llvm.dbg.value(metadata i32 %call2, metadata !2656, metadata !DIExpression()), !dbg !2706
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2715
  %tobool3 = icmp eq %struct._IO_FILE* %4, null, !dbg !2715
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !2717

if.then4:                                         ; preds = %if.end
  tail call void @ipa_utils_print_order(%struct._IO_FILE* nonnull %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.cgraph_node** %1, i32 %call2) #6, !dbg !2718
  br label %if.end5, !dbg !2718

if.end5:                                          ; preds = %if.end, %if.then4
  call void @llvm.dbg.value(metadata i32 0, metadata !2657, metadata !DIExpression()), !dbg !2706
  %5 = sext i32 %call2 to i64, !dbg !2719
  br label %for.cond, !dbg !2719

for.cond:                                         ; preds = %while.end127, %if.end5
  %indvars.iv13 = phi i64 [ %indvars.iv.next14, %while.end127 ], [ 0, %if.end5 ], !dbg !2720
  call void @llvm.dbg.value(metadata i64 %indvars.iv13, metadata !2657, metadata !DIExpression()), !dbg !2706
  %cmp = icmp slt i64 %indvars.iv13, %5, !dbg !2721
  br i1 %cmp, label %for.body, label %for.end129, !dbg !2722

for.body:                                         ; preds = %for.cond
  %call7 = call i8* @xcalloc(i64 1, i64 32) #6, !dbg !2723
  %6 = bitcast i8* %call7 to %struct.ipa_reference_global_vars_info_d*, !dbg !2723
  call void @llvm.dbg.value(metadata %struct.ipa_reference_global_vars_info_d* %6, metadata !2662, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i8* %read_all, metadata !2665, metadata !DIExpression(DW_OP_deref)), !dbg !2724
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %read_all) #8, !dbg !2725
  call void @llvm.dbg.value(metadata i8* %write_all, metadata !2666, metadata !DIExpression(DW_OP_deref)), !dbg !2724
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %write_all) #8, !dbg !2726
  %arrayidx = getelementptr inbounds %struct.cgraph_node*, %struct.cgraph_node** %1, i64 %indvars.iv13, !dbg !2727
  %7 = load %struct.cgraph_node*, %struct.cgraph_node** %arrayidx, align 8, !dbg !2727
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %7, metadata !2653, metadata !DIExpression()), !dbg !2706
  %call8 = call fastcc %struct.ipa_reference_vars_info_d* @get_reference_vars_info(%struct.cgraph_node* %7) #7, !dbg !2728
  call void @llvm.dbg.value(metadata %struct.ipa_reference_vars_info_d* %call8, metadata !2658, metadata !DIExpression()), !dbg !2724
  %tobool9 = icmp eq %struct.ipa_reference_vars_info_d* %call8, null, !dbg !2729
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !2731

if.then10:                                        ; preds = %for.body
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2732
  call void @dump_cgraph_node(%struct._IO_FILE* %8, %struct.cgraph_node* %7) #6, !dbg !2734
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2735
  call void @dump_cgraph(%struct._IO_FILE* %9) #6, !dbg !2736
  call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 1245, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !2737
  br label %if.end11, !dbg !2738

if.end11:                                         ; preds = %for.body, %if.then10
  %global = getelementptr inbounds %struct.ipa_reference_vars_info_d, %struct.ipa_reference_vars_info_d* %call8, i64 0, i32 1, !dbg !2739
  %10 = load %struct.ipa_reference_global_vars_info_d*, %struct.ipa_reference_global_vars_info_d** %global, align 8, !dbg !2739
  %tobool12 = icmp eq %struct.ipa_reference_global_vars_info_d* %10, null, !dbg !2739
  br i1 %tobool12, label %cond.end, label %cond.true, !dbg !2739

cond.true:                                        ; preds = %if.end11
  call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 1248, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !2739
  br label %cond.end, !dbg !2739

cond.end:                                         ; preds = %if.end11, %cond.true
  %local = getelementptr inbounds %struct.ipa_reference_vars_info_d, %struct.ipa_reference_vars_info_d* %call8, i64 0, i32 0, !dbg !2740
  %11 = load %struct.ipa_reference_local_vars_info_d*, %struct.ipa_reference_local_vars_info_d** %local, align 8, !dbg !2740
  call void @llvm.dbg.value(metadata %struct.ipa_reference_local_vars_info_d* %11, metadata !2663, metadata !DIExpression()), !dbg !2724
  %calls_read_all = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %11, i64 0, i32 2, !dbg !2741
  %12 = load i8, i8* %calls_read_all, align 8, !dbg !2741
  call void @llvm.dbg.value(metadata i8 %12, metadata !2665, metadata !DIExpression()), !dbg !2724
  store i8 %12, i8* %read_all, align 1, !dbg !2742
  %calls_write_all = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %11, i64 0, i32 3, !dbg !2743
  %13 = load i8, i8* %calls_write_all, align 1, !dbg !2743
  call void @llvm.dbg.value(metadata i8 %13, metadata !2666, metadata !DIExpression()), !dbg !2724
  store i8 %13, i8* %write_all, align 1, !dbg !2744
  %call13 = call i32 @cgraph_function_body_availability(%struct.cgraph_node* %7) #6, !dbg !2745
  %cmp14 = icmp ult i32 %call13, 3, !dbg !2747
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !2748

if.then16:                                        ; preds = %cond.end
  %decl = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %7, i64 0, i32 0, !dbg !2749
  %14 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !2749
  call void @llvm.dbg.value(metadata i8* %read_all, metadata !2665, metadata !DIExpression(DW_OP_deref)), !dbg !2724
  call void @llvm.dbg.value(metadata i8* %write_all, metadata !2666, metadata !DIExpression(DW_OP_deref)), !dbg !2724
  call fastcc void @read_write_all_from_decl(%union.tree_node* %14, i8* nonnull %read_all, i8* nonnull %write_all) #7, !dbg !2750
  br label %if.end17, !dbg !2750

if.end17:                                         ; preds = %if.then16, %cond.end
  %callees = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %7, i64 0, i32 1, !dbg !2751
  br label %for.cond18, !dbg !2753

for.cond18:                                       ; preds = %for.inc, %if.end17
  %e.0.in = phi %struct.cgraph_edge** [ %callees, %if.end17 ], [ %next_callee, %for.inc ]
  %e.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %e.0.in, align 8, !dbg !2754
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e.0, metadata !2664, metadata !DIExpression()), !dbg !2724
  %tobool19 = icmp eq %struct.cgraph_edge* %e.0, null, !dbg !2755
  br i1 %tobool19, label %for.end, label %for.body20, !dbg !2755

for.body20:                                       ; preds = %for.cond18
  %callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 2, !dbg !2756
  %15 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !2756
  %call21 = call i32 @cgraph_function_body_availability(%struct.cgraph_node* %15) #6, !dbg !2759
  %cmp22 = icmp ult i32 %call21, 3, !dbg !2760
  br i1 %cmp22, label %if.then24, label %for.inc, !dbg !2761

if.then24:                                        ; preds = %for.body20
  %16 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !2762
  %decl26 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %16, i64 0, i32 0, !dbg !2763
  %17 = load %union.tree_node*, %union.tree_node** %decl26, align 8, !dbg !2763
  call void @llvm.dbg.value(metadata i8* %read_all, metadata !2665, metadata !DIExpression(DW_OP_deref)), !dbg !2724
  call void @llvm.dbg.value(metadata i8* %write_all, metadata !2666, metadata !DIExpression(DW_OP_deref)), !dbg !2724
  call fastcc void @read_write_all_from_decl(%union.tree_node* %17, i8* nonnull %read_all, i8* nonnull %write_all) #7, !dbg !2764
  br label %for.inc, !dbg !2764

for.inc:                                          ; preds = %for.body20, %if.then24
  %next_callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 6, !dbg !2765
  br label %for.cond18, !dbg !2766, !llvm.loop !2767

for.end:                                          ; preds = %for.cond18
  br label %while.cond, !dbg !2769

while.cond:                                       ; preds = %for.end51, %for.end
  %.pn7 = phi %struct.cgraph_node* [ %7, %for.end ], [ %w.0, %for.end51 ]
  %.pn3.in.in = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %.pn7, i64 0, i32 16, !dbg !2724
  %.pn3.in = bitcast i8** %.pn3.in.in to %struct.ipa_dfs_info**, !dbg !2724
  %.pn3 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %.pn3.in, align 8, !dbg !2724
  %w.0.in = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %.pn3, i64 0, i32 4, !dbg !2724
  %w.0 = load %struct.cgraph_node*, %struct.cgraph_node** %w.0.in, align 8, !dbg !2724
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %w.0, metadata !2654, metadata !DIExpression()), !dbg !2706
  %tobool28 = icmp eq %struct.cgraph_node* %w.0, null, !dbg !2769
  br i1 %tobool28, label %while.end, label %while.body, !dbg !2769

while.body:                                       ; preds = %while.cond
  %call29 = call fastcc %struct.ipa_reference_vars_info_d* @get_reference_vars_info(%struct.cgraph_node* nonnull %w.0) #7, !dbg !2770
  %local30 = getelementptr inbounds %struct.ipa_reference_vars_info_d, %struct.ipa_reference_vars_info_d* %call29, i64 0, i32 0, !dbg !2771
  %18 = load %struct.ipa_reference_local_vars_info_d*, %struct.ipa_reference_local_vars_info_d** %local30, align 8, !dbg !2771
  call void @llvm.dbg.value(metadata %struct.ipa_reference_local_vars_info_d* %18, metadata !2668, metadata !DIExpression()), !dbg !2772
  %call31 = call i32 @cgraph_function_body_availability(%struct.cgraph_node* nonnull %w.0) #6, !dbg !2773
  %cmp32 = icmp ult i32 %call31, 3, !dbg !2775
  br i1 %cmp32, label %if.then34, label %if.end36, !dbg !2776

if.then34:                                        ; preds = %while.body
  %decl35 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %w.0, i64 0, i32 0, !dbg !2777
  %19 = load %union.tree_node*, %union.tree_node** %decl35, align 8, !dbg !2777
  call void @llvm.dbg.value(metadata i8* %read_all, metadata !2665, metadata !DIExpression(DW_OP_deref)), !dbg !2724
  call void @llvm.dbg.value(metadata i8* %write_all, metadata !2666, metadata !DIExpression(DW_OP_deref)), !dbg !2724
  call fastcc void @read_write_all_from_decl(%union.tree_node* %19, i8* nonnull %read_all, i8* nonnull %write_all) #7, !dbg !2778
  br label %if.end36, !dbg !2778

if.end36:                                         ; preds = %if.then34, %while.body
  %callees37 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %w.0, i64 0, i32 1, !dbg !2779
  br label %for.cond38, !dbg !2781

for.cond38:                                       ; preds = %for.inc49, %if.end36
  %e.1.in = phi %struct.cgraph_edge** [ %callees37, %if.end36 ], [ %next_callee50, %for.inc49 ]
  %e.1 = load %struct.cgraph_edge*, %struct.cgraph_edge** %e.1.in, align 8, !dbg !2782
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e.1, metadata !2664, metadata !DIExpression()), !dbg !2724
  %tobool39 = icmp eq %struct.cgraph_edge* %e.1, null, !dbg !2783
  br i1 %tobool39, label %for.end51, label %for.body40, !dbg !2783

for.body40:                                       ; preds = %for.cond38
  %callee41 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.1, i64 0, i32 2, !dbg !2784
  %20 = load %struct.cgraph_node*, %struct.cgraph_node** %callee41, align 8, !dbg !2784
  %call42 = call i32 @cgraph_function_body_availability(%struct.cgraph_node* %20) #6, !dbg !2787
  %cmp43 = icmp ult i32 %call42, 3, !dbg !2788
  br i1 %cmp43, label %if.then45, label %for.inc49, !dbg !2789

if.then45:                                        ; preds = %for.body40
  %21 = load %struct.cgraph_node*, %struct.cgraph_node** %callee41, align 8, !dbg !2790
  %decl47 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %21, i64 0, i32 0, !dbg !2791
  %22 = load %union.tree_node*, %union.tree_node** %decl47, align 8, !dbg !2791
  call void @llvm.dbg.value(metadata i8* %read_all, metadata !2665, metadata !DIExpression(DW_OP_deref)), !dbg !2724
  call void @llvm.dbg.value(metadata i8* %write_all, metadata !2666, metadata !DIExpression(DW_OP_deref)), !dbg !2724
  call fastcc void @read_write_all_from_decl(%union.tree_node* %22, i8* nonnull %read_all, i8* nonnull %write_all) #7, !dbg !2792
  br label %for.inc49, !dbg !2792

for.inc49:                                        ; preds = %for.body40, %if.then45
  %next_callee50 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.1, i64 0, i32 6, !dbg !2793
  br label %for.cond38, !dbg !2794, !llvm.loop !2795

for.end51:                                        ; preds = %for.cond38
  %calls_read_all52 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %18, i64 0, i32 2, !dbg !2797
  %23 = load i8, i8* %calls_read_all52, align 8, !dbg !2797
  %24 = load i8, i8* %read_all, align 1, !dbg !2798
  call void @llvm.dbg.value(metadata i8 %24, metadata !2665, metadata !DIExpression()), !dbg !2724
  %or1 = or i8 %24, %23, !dbg !2798
  call void @llvm.dbg.value(metadata i8 %or1, metadata !2665, metadata !DIExpression()), !dbg !2724
  store i8 %or1, i8* %read_all, align 1, !dbg !2798
  %calls_write_all56 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %18, i64 0, i32 3, !dbg !2799
  %25 = load i8, i8* %calls_write_all56, align 1, !dbg !2799
  %26 = load i8, i8* %write_all, align 1, !dbg !2800
  call void @llvm.dbg.value(metadata i8 %26, metadata !2666, metadata !DIExpression()), !dbg !2724
  %or592 = or i8 %26, %25, !dbg !2800
  call void @llvm.dbg.value(metadata i8 %or592, metadata !2666, metadata !DIExpression()), !dbg !2724
  store i8 %or592, i8* %write_all, align 1, !dbg !2800
  br label %while.cond, !dbg !2769, !llvm.loop !2801

while.end:                                        ; preds = %while.cond
  %27 = load i8, i8* %read_all, align 1, !dbg !2803
  call void @llvm.dbg.value(metadata i8 %27, metadata !2665, metadata !DIExpression()), !dbg !2724
  %tobool63 = icmp eq i8 %27, 0, !dbg !2803
  br i1 %tobool63, label %if.else, label %if.then64, !dbg !2805

if.then64:                                        ; preds = %while.end
  %28 = load i64, i64* bitcast (%struct.bitmap_head_def** @all_module_statics to i64*), align 8, !dbg !2806
  %29 = bitcast i8* %call7 to i64*, !dbg !2807
  store i64 %28, i64* %29, align 8, !dbg !2807
  br label %if.end69, !dbg !2808

if.else:                                          ; preds = %while.end
  %call65 = call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* nonnull @global_info_obstack) #6, !dbg !2809
  %statics_read66 = bitcast i8* %call7 to %struct.bitmap_head_def**, !dbg !2811
  store %struct.bitmap_head_def* %call65, %struct.bitmap_head_def** %statics_read66, align 8, !dbg !2812
  %statics_read68 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %11, i64 0, i32 0, !dbg !2813
  %30 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_read68, align 8, !dbg !2813
  call void @bitmap_copy(%struct.bitmap_head_def* %call65, %struct.bitmap_head_def* %30) #6, !dbg !2814
  br label %if.end69

if.end69:                                         ; preds = %if.else, %if.then64
  %31 = load i8, i8* %write_all, align 1, !dbg !2815
  call void @llvm.dbg.value(metadata i8 %31, metadata !2666, metadata !DIExpression()), !dbg !2724
  %tobool70 = icmp eq i8 %31, 0, !dbg !2815
  br i1 %tobool70, label %if.else72, label %if.then71, !dbg !2817

if.then71:                                        ; preds = %if.end69
  %32 = load i64, i64* bitcast (%struct.bitmap_head_def** @all_module_statics to i64*), align 8, !dbg !2818
  %statics_written = getelementptr inbounds i8, i8* %call7, i64 8, !dbg !2819
  %33 = bitcast i8* %statics_written to i64*, !dbg !2820
  store i64 %32, i64* %33, align 8, !dbg !2820
  %.pre10 = bitcast i8* %statics_written to %struct.bitmap_head_def**, !dbg !2821
  br label %if.end77, !dbg !2823

if.else72:                                        ; preds = %if.end69
  %call73 = call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* nonnull @global_info_obstack) #6, !dbg !2824
  %statics_written74 = getelementptr inbounds i8, i8* %call7, i64 8, !dbg !2826
  %34 = bitcast i8* %statics_written74 to %struct.bitmap_head_def**, !dbg !2826
  store %struct.bitmap_head_def* %call73, %struct.bitmap_head_def** %34, align 8, !dbg !2827
  %statics_written76 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %11, i64 0, i32 1, !dbg !2828
  %35 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_written76, align 8, !dbg !2828
  call void @bitmap_copy(%struct.bitmap_head_def* %call73, %struct.bitmap_head_def* %35) #6, !dbg !2829
  br label %if.end77

if.end77:                                         ; preds = %if.else72, %if.then71
  %.pre-phi = phi %struct.bitmap_head_def** [ %34, %if.else72 ], [ %.pre10, %if.then71 ], !dbg !2821
  call fastcc void @propagate_bits(%struct.ipa_reference_global_vars_info_d* %6, %struct.cgraph_node* %7) #7, !dbg !2830
  %statics_read88 = bitcast i8* %call7 to %struct.bitmap_head_def**, !dbg !2831
  br label %while.cond80, !dbg !2833

while.cond80:                                     ; preds = %if.end97, %if.end77
  %.pn8 = phi %struct.cgraph_node* [ %7, %if.end77 ], [ %w.1, %if.end97 ]
  %.pn4.in.in = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %.pn8, i64 0, i32 16, !dbg !2724
  %.pn4.in = bitcast i8** %.pn4.in.in to %struct.ipa_dfs_info**, !dbg !2724
  %.pn4 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %.pn4.in, align 8, !dbg !2724
  %w.1.in = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %.pn4, i64 0, i32 4, !dbg !2724
  %w.1 = load %struct.cgraph_node*, %struct.cgraph_node** %w.1.in, align 8, !dbg !2724
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %w.1, metadata !2654, metadata !DIExpression()), !dbg !2706
  %tobool81 = icmp eq %struct.cgraph_node* %w.1, null, !dbg !2833
  br i1 %tobool81, label %while.end100, label %while.body82, !dbg !2833

while.body82:                                     ; preds = %while.cond80
  %call83 = call fastcc %struct.ipa_reference_vars_info_d* @get_reference_vars_info(%struct.cgraph_node* nonnull %w.1) #7, !dbg !2834
  call void @llvm.dbg.value(metadata %struct.ipa_reference_vars_info_d* %call83, metadata !2670, metadata !DIExpression()), !dbg !2835
  %local85 = getelementptr inbounds %struct.ipa_reference_vars_info_d, %struct.ipa_reference_vars_info_d* %call83, i64 0, i32 0, !dbg !2836
  %36 = load %struct.ipa_reference_local_vars_info_d*, %struct.ipa_reference_local_vars_info_d** %local85, align 8, !dbg !2836
  call void @llvm.dbg.value(metadata %struct.ipa_reference_local_vars_info_d* %36, metadata !2672, metadata !DIExpression()), !dbg !2835
  %37 = load i8, i8* %read_all, align 1, !dbg !2837
  call void @llvm.dbg.value(metadata i8 %37, metadata !2665, metadata !DIExpression()), !dbg !2724
  %tobool86 = icmp eq i8 %37, 0, !dbg !2837
  br i1 %tobool86, label %if.then87, label %if.end91, !dbg !2838

if.then87:                                        ; preds = %while.body82
  %38 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_read88, align 8, !dbg !2839
  %statics_read89 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %36, i64 0, i32 0, !dbg !2840
  %39 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_read89, align 8, !dbg !2840
  %call90 = call zeroext i8 @bitmap_ior_into(%struct.bitmap_head_def* %38, %struct.bitmap_head_def* %39) #6, !dbg !2841
  br label %if.end91, !dbg !2841

if.end91:                                         ; preds = %while.body82, %if.then87
  %40 = load i8, i8* %write_all, align 1, !dbg !2842
  call void @llvm.dbg.value(metadata i8 %40, metadata !2666, metadata !DIExpression()), !dbg !2724
  %tobool92 = icmp eq i8 %40, 0, !dbg !2842
  br i1 %tobool92, label %if.then93, label %if.end97, !dbg !2843

if.then93:                                        ; preds = %if.end91
  %41 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %.pre-phi, align 8, !dbg !2844
  %statics_written95 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %36, i64 0, i32 1, !dbg !2845
  %42 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_written95, align 8, !dbg !2845
  %call96 = call zeroext i8 @bitmap_ior_into(%struct.bitmap_head_def* %41, %struct.bitmap_head_def* %42) #6, !dbg !2846
  br label %if.end97, !dbg !2846

if.end97:                                         ; preds = %if.end91, %if.then93
  call fastcc void @propagate_bits(%struct.ipa_reference_global_vars_info_d* %6, %struct.cgraph_node* nonnull %w.1) #7, !dbg !2847
  br label %while.cond80, !dbg !2833, !llvm.loop !2848

while.end100:                                     ; preds = %while.cond80
  %43 = bitcast %struct.ipa_reference_global_vars_info_d** %global to i8**, !dbg !2850
  store i8* %call7, i8** %43, align 8, !dbg !2850
  br label %while.cond104, !dbg !2851

while.cond104:                                    ; preds = %cond.end113, %while.end100
  %.pn9 = phi %struct.cgraph_node* [ %7, %while.end100 ], [ %w.2, %cond.end113 ]
  %.pn5.in.in = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %.pn9, i64 0, i32 16, !dbg !2724
  %.pn5.in = bitcast i8** %.pn5.in.in to %struct.ipa_dfs_info**, !dbg !2724
  %.pn5 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %.pn5.in, align 8, !dbg !2724
  %w.2.in = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %.pn5, i64 0, i32 4, !dbg !2724
  %w.2 = load %struct.cgraph_node*, %struct.cgraph_node** %w.2.in, align 8, !dbg !2724
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %w.2, metadata !2654, metadata !DIExpression()), !dbg !2706
  %tobool105 = icmp eq %struct.cgraph_node* %w.2, null, !dbg !2851
  br i1 %tobool105, label %while.end127, label %while.body106, !dbg !2851

while.body106:                                    ; preds = %while.cond104
  %call108 = call fastcc %struct.ipa_reference_vars_info_d* @get_reference_vars_info(%struct.cgraph_node* nonnull %w.2) #7, !dbg !2852
  call void @llvm.dbg.value(metadata %struct.ipa_reference_vars_info_d* %call108, metadata !2673, metadata !DIExpression()), !dbg !2853
  %global109 = getelementptr inbounds %struct.ipa_reference_vars_info_d, %struct.ipa_reference_vars_info_d* %call108, i64 0, i32 1, !dbg !2854
  %44 = load %struct.ipa_reference_global_vars_info_d*, %struct.ipa_reference_global_vars_info_d** %global109, align 8, !dbg !2854
  %tobool110 = icmp eq %struct.ipa_reference_global_vars_info_d* %44, null, !dbg !2854
  br i1 %tobool110, label %cond.end113, label %cond.true111, !dbg !2854

cond.true111:                                     ; preds = %while.body106
  call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 1339, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !2854
  br label %cond.end113, !dbg !2854

cond.end113:                                      ; preds = %while.body106, %cond.true111
  %call115 = call i8* @xcalloc(i64 1, i64 32) #6, !dbg !2855
  %45 = bitcast %struct.ipa_reference_global_vars_info_d** %global109 to i8**, !dbg !2856
  store i8* %call115, i8** %45, align 8, !dbg !2856
  %46 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_read88, align 8, !dbg !2857
  %call118 = call fastcc %struct.bitmap_head_def* @copy_global_bitmap(%struct.bitmap_head_def* %46) #7, !dbg !2858
  %47 = load %struct.ipa_reference_global_vars_info_d*, %struct.ipa_reference_global_vars_info_d** %global109, align 8, !dbg !2859
  %statics_read120 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, %struct.ipa_reference_global_vars_info_d* %47, i64 0, i32 0, !dbg !2860
  store %struct.bitmap_head_def* %call118, %struct.bitmap_head_def** %statics_read120, align 8, !dbg !2861
  %48 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %.pre-phi, align 8, !dbg !2862
  %call122 = call fastcc %struct.bitmap_head_def* @copy_global_bitmap(%struct.bitmap_head_def* %48) #7, !dbg !2863
  %49 = load %struct.ipa_reference_global_vars_info_d*, %struct.ipa_reference_global_vars_info_d** %global109, align 8, !dbg !2864
  %statics_written124 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, %struct.ipa_reference_global_vars_info_d* %49, i64 0, i32 1, !dbg !2865
  store %struct.bitmap_head_def* %call122, %struct.bitmap_head_def** %statics_written124, align 8, !dbg !2866
  br label %while.cond104, !dbg !2851, !llvm.loop !2867

while.end127:                                     ; preds = %while.cond104
  call void @llvm.dbg.value(metadata i8* %write_all, metadata !2666, metadata !DIExpression(DW_OP_deref)), !dbg !2724
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %write_all) #8, !dbg !2869
  call void @llvm.dbg.value(metadata i8* %read_all, metadata !2665, metadata !DIExpression(DW_OP_deref)), !dbg !2724
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %read_all) #8, !dbg !2869
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1, !dbg !2870
  call void @llvm.dbg.value(metadata i32 undef, metadata !2657, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2706
  br label %for.cond, !dbg !2871, !llvm.loop !2872

for.end129:                                       ; preds = %for.cond
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2874
  %tobool130 = icmp eq %struct._IO_FILE* %50, null, !dbg !2874
  br i1 %tobool130, label %if.end255, label %for.cond132.preheader, !dbg !2875

for.cond132.preheader:                            ; preds = %for.end129
  %51 = bitcast i32* %index to i8*, !dbg !2876
  %52 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !2876
  %53 = sext i32 %call2 to i64, !dbg !2877
  br label %for.cond132, !dbg !2877

for.cond132:                                      ; preds = %for.cond132.preheader, %if.end251
  %indvars.iv11 = phi i64 [ 0, %for.cond132.preheader ], [ %indvars.iv.next12, %if.end251 ], !dbg !2878
  call void @llvm.dbg.value(metadata i64 %indvars.iv11, metadata !2657, metadata !DIExpression()), !dbg !2706
  %cmp133 = icmp slt i64 %indvars.iv11, %53, !dbg !2879
  br i1 %cmp133, label %for.body135, label %if.end255.loopexit, !dbg !2877

for.body135:                                      ; preds = %for.cond132
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %51) #8, !dbg !2880
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %52) #8, !dbg !2881
  %arrayidx141 = getelementptr inbounds %struct.cgraph_node*, %struct.cgraph_node** %1, i64 %indvars.iv11, !dbg !2882
  %54 = load %struct.cgraph_node*, %struct.cgraph_node** %arrayidx141, align 8, !dbg !2882
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %54, metadata !2653, metadata !DIExpression()), !dbg !2706
  %call142 = call fastcc %struct.ipa_reference_vars_info_d* @get_reference_vars_info(%struct.cgraph_node* %54) #7, !dbg !2883
  call void @llvm.dbg.value(metadata %struct.ipa_reference_vars_info_d* %call142, metadata !2675, metadata !DIExpression()), !dbg !2876
  %global143 = getelementptr inbounds %struct.ipa_reference_vars_info_d, %struct.ipa_reference_vars_info_d* %call142, i64 0, i32 1, !dbg !2884
  %55 = load %struct.ipa_reference_global_vars_info_d*, %struct.ipa_reference_global_vars_info_d** %global143, align 8, !dbg !2884
  call void @llvm.dbg.value(metadata %struct.ipa_reference_global_vars_info_d* %55, metadata !2681, metadata !DIExpression()), !dbg !2876
  %local144 = getelementptr inbounds %struct.ipa_reference_vars_info_d, %struct.ipa_reference_vars_info_d* %call142, i64 0, i32 0, !dbg !2885
  %56 = load %struct.ipa_reference_local_vars_info_d*, %struct.ipa_reference_local_vars_info_d** %local144, align 8, !dbg !2885
  call void @llvm.dbg.value(metadata %struct.ipa_reference_local_vars_info_d* %56, metadata !2682, metadata !DIExpression()), !dbg !2876
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2886
  %call145 = call i8* @cgraph_node_name(%struct.cgraph_node* %54) #6, !dbg !2887
  %uid = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %54, i64 0, i32 24, !dbg !2888
  %58 = load i32, i32* %uid, align 8, !dbg !2888
  %call146 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %call145, i32 %58) #6, !dbg !2889
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2890
  %call147 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2891
  %statics_read148 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %56, i64 0, i32 0, !dbg !2892
  %60 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_read148, align 8, !dbg !2892
  %tobool149 = icmp eq %struct.bitmap_head_def* %60, null, !dbg !2894
  br i1 %tobool149, label %if.end160, label %if.then150, !dbg !2895

if.then150:                                       ; preds = %for.body135
  call void @llvm.dbg.value(metadata i32* %index, metadata !2683, metadata !DIExpression(DW_OP_deref)), !dbg !2876
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2684, metadata !DIExpression(DW_OP_deref)), !dbg !2876
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* nonnull %60, i32 0, i32* nonnull %index) #7, !dbg !2896
  br label %for.cond152, !dbg !2896

for.cond152:                                      ; preds = %for.body155, %if.then150
  call void @llvm.dbg.value(metadata i32* %index, metadata !2683, metadata !DIExpression(DW_OP_deref)), !dbg !2876
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2684, metadata !DIExpression(DW_OP_deref)), !dbg !2876
  %call153 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %index) #7, !dbg !2898
  %tobool154 = icmp eq i8 %call153, 0, !dbg !2896
  br i1 %tobool154, label %if.end160.loopexit, label %for.body155, !dbg !2896

for.body155:                                      ; preds = %for.cond152
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2900
  %62 = load i32, i32* %index, align 4, !dbg !2902
  call void @llvm.dbg.value(metadata i32 %62, metadata !2683, metadata !DIExpression()), !dbg !2876
  %call156 = call fastcc i8* @get_static_name(i32 %62) #7, !dbg !2903
  %call157 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %call156) #6, !dbg !2904
  call void @llvm.dbg.value(metadata i32* %index, metadata !2683, metadata !DIExpression(DW_OP_deref)), !dbg !2876
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2684, metadata !DIExpression(DW_OP_deref)), !dbg !2876
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %index) #7, !dbg !2898
  br label %for.cond152, !dbg !2898, !llvm.loop !2905

if.end160.loopexit:                               ; preds = %for.cond152
  br label %if.end160, !dbg !2907

if.end160:                                        ; preds = %if.end160.loopexit, %for.body135
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2907
  %call161 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !2908
  %statics_written162 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %56, i64 0, i32 1, !dbg !2909
  %64 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_written162, align 8, !dbg !2909
  %tobool163 = icmp eq %struct.bitmap_head_def* %64, null, !dbg !2911
  br i1 %tobool163, label %if.end174, label %if.then164, !dbg !2912

if.then164:                                       ; preds = %if.end160
  call void @llvm.dbg.value(metadata i32* %index, metadata !2683, metadata !DIExpression(DW_OP_deref)), !dbg !2876
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2684, metadata !DIExpression(DW_OP_deref)), !dbg !2876
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* nonnull %64, i32 0, i32* nonnull %index) #7, !dbg !2913
  br label %for.cond166, !dbg !2913

for.cond166:                                      ; preds = %for.body169, %if.then164
  call void @llvm.dbg.value(metadata i32* %index, metadata !2683, metadata !DIExpression(DW_OP_deref)), !dbg !2876
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2684, metadata !DIExpression(DW_OP_deref)), !dbg !2876
  %call167 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %index) #7, !dbg !2915
  %tobool168 = icmp eq i8 %call167, 0, !dbg !2913
  br i1 %tobool168, label %if.end174.loopexit, label %for.body169, !dbg !2913

for.body169:                                      ; preds = %for.cond166
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2917
  %66 = load i32, i32* %index, align 4, !dbg !2919
  call void @llvm.dbg.value(metadata i32 %66, metadata !2683, metadata !DIExpression()), !dbg !2876
  %call170 = call fastcc i8* @get_static_name(i32 %66) #7, !dbg !2920
  %call171 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %call170) #6, !dbg !2921
  call void @llvm.dbg.value(metadata i32* %index, metadata !2683, metadata !DIExpression(DW_OP_deref)), !dbg !2876
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2684, metadata !DIExpression(DW_OP_deref)), !dbg !2876
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %index) #7, !dbg !2915
  br label %for.cond166, !dbg !2915, !llvm.loop !2922

if.end174.loopexit:                               ; preds = %for.cond166
  br label %if.end174, !dbg !2924

if.end174:                                        ; preds = %if.end174.loopexit, %if.end160
  br label %while.cond177, !dbg !2924

while.cond177:                                    ; preds = %if.end214, %if.end174
  %.pn6 = phi %struct.cgraph_node* [ %54, %if.end174 ], [ %w.3, %if.end214 ]
  %.pn.in.in = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %.pn6, i64 0, i32 16, !dbg !2876
  %.pn.in = bitcast i8** %.pn.in.in to %struct.ipa_dfs_info**, !dbg !2876
  %.pn = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %.pn.in, align 8, !dbg !2876
  %w.3.in = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %.pn, i64 0, i32 4, !dbg !2876
  %w.3 = load %struct.cgraph_node*, %struct.cgraph_node** %w.3.in, align 8, !dbg !2876
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %w.3, metadata !2654, metadata !DIExpression()), !dbg !2706
  %tobool178 = icmp eq %struct.cgraph_node* %w.3, null, !dbg !2924
  br i1 %tobool178, label %while.end217, label %while.body179, !dbg !2924

while.body179:                                    ; preds = %while.cond177
  %call181 = call fastcc %struct.ipa_reference_vars_info_d* @get_reference_vars_info(%struct.cgraph_node* nonnull %w.3) #7, !dbg !2925
  call void @llvm.dbg.value(metadata %struct.ipa_reference_vars_info_d* %call181, metadata !2693, metadata !DIExpression()), !dbg !2926
  %local183 = getelementptr inbounds %struct.ipa_reference_vars_info_d, %struct.ipa_reference_vars_info_d* %call181, i64 0, i32 0, !dbg !2927
  %67 = load %struct.ipa_reference_local_vars_info_d*, %struct.ipa_reference_local_vars_info_d** %local183, align 8, !dbg !2927
  call void @llvm.dbg.value(metadata %struct.ipa_reference_local_vars_info_d* %67, metadata !2695, metadata !DIExpression()), !dbg !2926
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2928
  %call184 = call i8* @cgraph_node_name(%struct.cgraph_node* nonnull %w.3) #6, !dbg !2929
  %uid185 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %w.3, i64 0, i32 24, !dbg !2930
  %69 = load i32, i32* %uid185, align 8, !dbg !2930
  %call186 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* %call184, i32 %69) #6, !dbg !2931
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2932
  %call187 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !2933
  %statics_read188 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %67, i64 0, i32 0, !dbg !2934
  %71 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_read188, align 8, !dbg !2934
  %tobool189 = icmp eq %struct.bitmap_head_def* %71, null, !dbg !2936
  br i1 %tobool189, label %if.end200, label %if.then190, !dbg !2937

if.then190:                                       ; preds = %while.body179
  call void @llvm.dbg.value(metadata i32* %index, metadata !2683, metadata !DIExpression(DW_OP_deref)), !dbg !2876
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2684, metadata !DIExpression(DW_OP_deref)), !dbg !2876
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* nonnull %71, i32 0, i32* nonnull %index) #7, !dbg !2938
  br label %for.cond192, !dbg !2938

for.cond192:                                      ; preds = %for.body195, %if.then190
  call void @llvm.dbg.value(metadata i32* %index, metadata !2683, metadata !DIExpression(DW_OP_deref)), !dbg !2876
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2684, metadata !DIExpression(DW_OP_deref)), !dbg !2876
  %call193 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %index) #7, !dbg !2940
  %tobool194 = icmp eq i8 %call193, 0, !dbg !2938
  br i1 %tobool194, label %if.end200.loopexit, label %for.body195, !dbg !2938

for.body195:                                      ; preds = %for.cond192
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2942
  %73 = load i32, i32* %index, align 4, !dbg !2944
  call void @llvm.dbg.value(metadata i32 %73, metadata !2683, metadata !DIExpression()), !dbg !2876
  %call196 = call fastcc i8* @get_static_name(i32 %73) #7, !dbg !2945
  %call197 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %call196) #6, !dbg !2946
  call void @llvm.dbg.value(metadata i32* %index, metadata !2683, metadata !DIExpression(DW_OP_deref)), !dbg !2876
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2684, metadata !DIExpression(DW_OP_deref)), !dbg !2876
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %index) #7, !dbg !2940
  br label %for.cond192, !dbg !2940, !llvm.loop !2947

if.end200.loopexit:                               ; preds = %for.cond192
  br label %if.end200, !dbg !2949

if.end200:                                        ; preds = %if.end200.loopexit, %while.body179
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2949
  %call201 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !2950
  %statics_written202 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %67, i64 0, i32 1, !dbg !2951
  %75 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_written202, align 8, !dbg !2951
  %tobool203 = icmp eq %struct.bitmap_head_def* %75, null, !dbg !2953
  br i1 %tobool203, label %if.end214, label %if.then204, !dbg !2954

if.then204:                                       ; preds = %if.end200
  call void @llvm.dbg.value(metadata i32* %index, metadata !2683, metadata !DIExpression(DW_OP_deref)), !dbg !2876
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2684, metadata !DIExpression(DW_OP_deref)), !dbg !2876
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* nonnull %75, i32 0, i32* nonnull %index) #7, !dbg !2955
  br label %for.cond206, !dbg !2955

for.cond206:                                      ; preds = %for.body209, %if.then204
  call void @llvm.dbg.value(metadata i32* %index, metadata !2683, metadata !DIExpression(DW_OP_deref)), !dbg !2876
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2684, metadata !DIExpression(DW_OP_deref)), !dbg !2876
  %call207 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %index) #7, !dbg !2957
  %tobool208 = icmp eq i8 %call207, 0, !dbg !2955
  br i1 %tobool208, label %if.end214.loopexit, label %for.body209, !dbg !2955

for.body209:                                      ; preds = %for.cond206
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2959
  %77 = load i32, i32* %index, align 4, !dbg !2961
  call void @llvm.dbg.value(metadata i32 %77, metadata !2683, metadata !DIExpression()), !dbg !2876
  %call210 = call fastcc i8* @get_static_name(i32 %77) #7, !dbg !2962
  %call211 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %call210) #6, !dbg !2963
  call void @llvm.dbg.value(metadata i32* %index, metadata !2683, metadata !DIExpression(DW_OP_deref)), !dbg !2876
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2684, metadata !DIExpression(DW_OP_deref)), !dbg !2876
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %index) #7, !dbg !2957
  br label %for.cond206, !dbg !2957, !llvm.loop !2964

if.end214.loopexit:                               ; preds = %for.cond206
  br label %if.end214, !dbg !2924

if.end214:                                        ; preds = %if.end214.loopexit, %if.end200
  br label %while.cond177, !dbg !2924, !llvm.loop !2966

while.end217:                                     ; preds = %while.cond177
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2968
  %call218 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !2969
  %statics_read219 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, %struct.ipa_reference_global_vars_info_d* %55, i64 0, i32 0, !dbg !2970
  %79 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_read219, align 8, !dbg !2970
  %80 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @all_module_statics, align 8, !dbg !2972
  %cmp220 = icmp eq %struct.bitmap_head_def* %79, %80, !dbg !2973
  br i1 %cmp220, label %if.then222, label %if.else224, !dbg !2974

if.then222:                                       ; preds = %while.end217
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2975
  %call223 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !2976
  br label %if.end234, !dbg !2976

if.else224:                                       ; preds = %while.end217
  call void @llvm.dbg.value(metadata i32* %index, metadata !2683, metadata !DIExpression(DW_OP_deref)), !dbg !2876
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2684, metadata !DIExpression(DW_OP_deref)), !dbg !2876
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %79, i32 0, i32* nonnull %index) #7, !dbg !2977
  br label %for.cond226, !dbg !2977

for.cond226:                                      ; preds = %for.body229, %if.else224
  call void @llvm.dbg.value(metadata i32* %index, metadata !2683, metadata !DIExpression(DW_OP_deref)), !dbg !2876
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2684, metadata !DIExpression(DW_OP_deref)), !dbg !2876
  %call227 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %index) #7, !dbg !2979
  %tobool228 = icmp eq i8 %call227, 0, !dbg !2977
  br i1 %tobool228, label %if.end234.loopexit, label %for.body229, !dbg !2977

for.body229:                                      ; preds = %for.cond226
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2981
  %83 = load i32, i32* %index, align 4, !dbg !2983
  call void @llvm.dbg.value(metadata i32 %83, metadata !2683, metadata !DIExpression()), !dbg !2876
  %call230 = call fastcc i8* @get_static_name(i32 %83) #7, !dbg !2984
  %call231 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %call230) #6, !dbg !2985
  call void @llvm.dbg.value(metadata i32* %index, metadata !2683, metadata !DIExpression(DW_OP_deref)), !dbg !2876
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2684, metadata !DIExpression(DW_OP_deref)), !dbg !2876
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %index) #7, !dbg !2979
  br label %for.cond226, !dbg !2979, !llvm.loop !2986

if.end234.loopexit:                               ; preds = %for.cond226
  br label %if.end234, !dbg !2988

if.end234:                                        ; preds = %if.end234.loopexit, %if.then222
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2988
  %call235 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %84, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !2989
  %statics_written236 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, %struct.ipa_reference_global_vars_info_d* %55, i64 0, i32 1, !dbg !2990
  %85 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_written236, align 8, !dbg !2990
  %86 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @all_module_statics, align 8, !dbg !2992
  %cmp237 = icmp eq %struct.bitmap_head_def* %85, %86, !dbg !2993
  br i1 %cmp237, label %if.then239, label %if.else241, !dbg !2994

if.then239:                                       ; preds = %if.end234
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2995
  %call240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !2996
  br label %if.end251, !dbg !2996

if.else241:                                       ; preds = %if.end234
  call void @llvm.dbg.value(metadata i32* %index, metadata !2683, metadata !DIExpression(DW_OP_deref)), !dbg !2876
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2684, metadata !DIExpression(DW_OP_deref)), !dbg !2876
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %85, i32 0, i32* nonnull %index) #7, !dbg !2997
  br label %for.cond243, !dbg !2997

for.cond243:                                      ; preds = %for.body246, %if.else241
  call void @llvm.dbg.value(metadata i32* %index, metadata !2683, metadata !DIExpression(DW_OP_deref)), !dbg !2876
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2684, metadata !DIExpression(DW_OP_deref)), !dbg !2876
  %call244 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %index) #7, !dbg !2999
  %tobool245 = icmp eq i8 %call244, 0, !dbg !2997
  br i1 %tobool245, label %if.end251.loopexit, label %for.body246, !dbg !2997

for.body246:                                      ; preds = %for.cond243
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3001
  %89 = load i32, i32* %index, align 4, !dbg !3003
  call void @llvm.dbg.value(metadata i32 %89, metadata !2683, metadata !DIExpression()), !dbg !2876
  %call247 = call fastcc i8* @get_static_name(i32 %89) #7, !dbg !3004
  %call248 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %call247) #6, !dbg !3005
  call void @llvm.dbg.value(metadata i32* %index, metadata !2683, metadata !DIExpression(DW_OP_deref)), !dbg !2876
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2684, metadata !DIExpression(DW_OP_deref)), !dbg !2876
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %index) #7, !dbg !2999
  br label %for.cond243, !dbg !2999, !llvm.loop !3006

if.end251.loopexit:                               ; preds = %for.cond243
  br label %if.end251, !dbg !3008

if.end251:                                        ; preds = %if.end251.loopexit, %if.then239
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %52) #8, !dbg !3008
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %51) #8, !dbg !3008
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1, !dbg !3009
  call void @llvm.dbg.value(metadata i32 undef, metadata !2657, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2706
  br label %for.cond132, !dbg !3010, !llvm.loop !3011

if.end255.loopexit:                               ; preds = %for.cond132
  br label %if.end255, !dbg !3013

if.end255:                                        ; preds = %if.end255.loopexit, %for.end129
  call void @llvm.dbg.value(metadata i32 0, metadata !2657, metadata !DIExpression()), !dbg !2706
  %90 = sext i32 %call2 to i64, !dbg !3013
  br label %for.cond256, !dbg !3013

for.cond256:                                      ; preds = %for.inc284, %if.end255
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc284 ], [ 0, %if.end255 ], !dbg !3014
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2657, metadata !DIExpression()), !dbg !2706
  %cmp257 = icmp slt i64 %indvars.iv, %90, !dbg !3015
  br i1 %cmp257, label %for.body259, label %for.end286, !dbg !3016

for.body259:                                      ; preds = %for.cond256
  %arrayidx263 = getelementptr inbounds %struct.cgraph_node*, %struct.cgraph_node** %1, i64 %indvars.iv, !dbg !3017
  %91 = load %struct.cgraph_node*, %struct.cgraph_node** %arrayidx263, align 8, !dbg !3017
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %91, metadata !2653, metadata !DIExpression()), !dbg !2706
  %call264 = call fastcc %struct.ipa_reference_vars_info_d* @get_reference_vars_info(%struct.cgraph_node* %91) #7, !dbg !3018
  call void @llvm.dbg.value(metadata %struct.ipa_reference_vars_info_d* %call264, metadata !2696, metadata !DIExpression()), !dbg !3019
  %global265 = getelementptr inbounds %struct.ipa_reference_vars_info_d, %struct.ipa_reference_vars_info_d* %call264, i64 0, i32 1, !dbg !3020
  %92 = load %struct.ipa_reference_global_vars_info_d*, %struct.ipa_reference_global_vars_info_d** %global265, align 8, !dbg !3020
  call void @llvm.dbg.value(metadata %struct.ipa_reference_global_vars_info_d* %92, metadata !2700, metadata !DIExpression()), !dbg !3019
  %call266 = call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* nonnull @global_info_obstack) #6, !dbg !3021
  %statics_not_read = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, %struct.ipa_reference_global_vars_info_d* %92, i64 0, i32 2, !dbg !3022
  store %struct.bitmap_head_def* %call266, %struct.bitmap_head_def** %statics_not_read, align 8, !dbg !3023
  %call267 = call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* nonnull @global_info_obstack) #6, !dbg !3024
  %statics_not_written = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, %struct.ipa_reference_global_vars_info_d* %92, i64 0, i32 3, !dbg !3025
  store %struct.bitmap_head_def* %call267, %struct.bitmap_head_def** %statics_not_written, align 8, !dbg !3026
  %statics_read268 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, %struct.ipa_reference_global_vars_info_d* %92, i64 0, i32 0, !dbg !3027
  %93 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_read268, align 8, !dbg !3027
  %94 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @all_module_statics, align 8, !dbg !3029
  %cmp269 = icmp eq %struct.bitmap_head_def* %93, %94, !dbg !3030
  br i1 %cmp269, label %if.end275, label %if.then271, !dbg !3031

if.then271:                                       ; preds = %for.body259
  %95 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_not_read, align 8, !dbg !3032
  %call274 = call zeroext i8 @bitmap_and_compl(%struct.bitmap_head_def* %95, %struct.bitmap_head_def* %94, %struct.bitmap_head_def* %93) #6, !dbg !3033
  %.pre = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @all_module_statics, align 8, !dbg !3034
  br label %if.end275, !dbg !3033

if.end275:                                        ; preds = %for.body259, %if.then271
  %96 = phi %struct.bitmap_head_def* [ %93, %for.body259 ], [ %.pre, %if.then271 ], !dbg !3034
  %statics_written276 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, %struct.ipa_reference_global_vars_info_d* %92, i64 0, i32 1, !dbg !3036
  %97 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_written276, align 8, !dbg !3036
  %cmp277 = icmp eq %struct.bitmap_head_def* %97, %96, !dbg !3037
  br i1 %cmp277, label %for.inc284, label %if.then279, !dbg !3038

if.then279:                                       ; preds = %if.end275
  %98 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_not_written, align 8, !dbg !3039
  %call282 = call zeroext i8 @bitmap_and_compl(%struct.bitmap_head_def* %98, %struct.bitmap_head_def* %96, %struct.bitmap_head_def* %97) #6, !dbg !3040
  br label %for.inc284, !dbg !3040

for.inc284:                                       ; preds = %if.end275, %if.then279
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3041
  call void @llvm.dbg.value(metadata i32 undef, metadata !2657, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2706
  br label %for.cond256, !dbg !3042, !llvm.loop !3043

for.end286:                                       ; preds = %for.cond256
  call void @free(i8* %call) #6, !dbg !3045
  br label %for.cond287, !dbg !3046

for.cond287:                                      ; preds = %for.inc307, %for.end286
  %node.0.in = phi %struct.cgraph_node** [ @cgraph_nodes, %for.end286 ], [ %next, %for.inc307 ]
  %node.0 = load %struct.cgraph_node*, %struct.cgraph_node** %node.0.in, align 8, !dbg !3047
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.0, metadata !2653, metadata !DIExpression()), !dbg !2706
  %tobool288 = icmp eq %struct.cgraph_node* %node.0, null, !dbg !3048
  br i1 %tobool288, label %for.end308, label %for.body289, !dbg !3048

for.body289:                                      ; preds = %for.cond287
  %call291 = call fastcc %struct.ipa_reference_vars_info_d* @get_reference_vars_info(%struct.cgraph_node* nonnull %node.0) #7, !dbg !3049
  call void @llvm.dbg.value(metadata %struct.ipa_reference_vars_info_d* %call291, metadata !2701, metadata !DIExpression()), !dbg !3050
  %aux292 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 16, !dbg !3051
  %99 = load i8*, i8** %aux292, align 8, !dbg !3051
  %tobool293 = icmp eq i8* %99, null, !dbg !3053
  br i1 %tobool293, label %if.end297, label %if.then294, !dbg !3054

if.then294:                                       ; preds = %for.body289
  call void @free(i8* nonnull %99) #6, !dbg !3055
  store i8* null, i8** %aux292, align 8, !dbg !3057
  br label %if.end297, !dbg !3058

if.end297:                                        ; preds = %for.body289, %if.then294
  %call298 = call i32 @cgraph_function_body_availability(%struct.cgraph_node* nonnull %node.0) #6, !dbg !3059
  %cmp299 = icmp eq i32 %call298, 2, !dbg !3061
  br i1 %cmp299, label %if.then301, label %if.else302, !dbg !3062

if.then301:                                       ; preds = %if.end297
  call fastcc void @clean_function(%struct.cgraph_node* nonnull %node.0) #7, !dbg !3063
  br label %for.inc307, !dbg !3063

if.else302:                                       ; preds = %if.end297
  %tobool303 = icmp eq %struct.ipa_reference_vars_info_d* %call291, null, !dbg !3064
  br i1 %tobool303, label %for.inc307, label %if.then304, !dbg !3066

if.then304:                                       ; preds = %if.else302
  call fastcc void @clean_function_local_data(%struct.cgraph_node* nonnull %node.0) #7, !dbg !3067
  br label %for.inc307, !dbg !3067

for.inc307:                                       ; preds = %if.else302, %if.then301, %if.then304
  %next = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 3, !dbg !3068
  br label %for.cond287, !dbg !3069, !llvm.loop !3070

for.end308:                                       ; preds = %for.cond287
  call void @bitmap_obstack_release(%struct.bitmap_obstack* nonnull @local_info_obstack) #6, !dbg !3072
  ret i32 0, !dbg !3073
}

; Function Attrs: nounwind uwtable
define internal void @generate_summary() #5 !dbg !3074 {
entry:
  %index = alloca i32, align 4
  %bi = alloca %struct.bitmap_iterator, align 8
  %index92 = alloca i32, align 4
  %bi93 = alloca %struct.bitmap_iterator, align 8
  %0 = bitcast i32* %index to i8*, !dbg !3103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3103
  %1 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !3104
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #8, !dbg !3104
  tail call fastcc void @ipa_init() #7, !dbg !3105
  %call = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* nonnull @local_info_obstack) #6, !dbg !3106
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call, metadata !3080, metadata !DIExpression()), !dbg !3107
  %call1 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* nonnull @local_info_obstack) #6, !dbg !3108
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call1, metadata !3081, metadata !DIExpression()), !dbg !3107
  %call2 = tail call fastcc %struct.varpool_node* @varpool_first_static_initializer() #7, !dbg !3109
  call void @llvm.dbg.value(metadata %struct.varpool_node* %call2, metadata !3077, metadata !DIExpression()), !dbg !3107
  br label %for.cond, !dbg !3109

for.cond:                                         ; preds = %for.body, %entry
  %vnode.0 = phi %struct.varpool_node* [ %call2, %entry ], [ %call3, %for.body ], !dbg !3111
  call void @llvm.dbg.value(metadata %struct.varpool_node* %vnode.0, metadata !3077, metadata !DIExpression()), !dbg !3107
  %tobool = icmp eq %struct.varpool_node* %vnode.0, null, !dbg !3109
  br i1 %tobool, label %for.end, label %for.body, !dbg !3109

for.body:                                         ; preds = %for.cond
  tail call fastcc void @analyze_variable(%struct.varpool_node* nonnull %vnode.0) #7, !dbg !3112
  %call3 = tail call fastcc %struct.varpool_node* @varpool_next_static_initializer(%struct.varpool_node* nonnull %vnode.0) #7, !dbg !3114
  call void @llvm.dbg.value(metadata %struct.varpool_node* %call3, metadata !3077, metadata !DIExpression()), !dbg !3107
  br label %for.cond, !dbg !3114, !llvm.loop !3115

for.end:                                          ; preds = %for.cond
  br label %for.cond4, !dbg !3117

for.cond4:                                        ; preds = %for.inc8, %for.end
  %node.0.in = phi %struct.cgraph_node** [ @cgraph_nodes, %for.end ], [ %next, %for.inc8 ]
  %node.0 = load %struct.cgraph_node*, %struct.cgraph_node** %node.0.in, align 8, !dbg !3119
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.0, metadata !3076, metadata !DIExpression()), !dbg !3107
  %tobool5 = icmp eq %struct.cgraph_node* %node.0, null, !dbg !3120
  br i1 %tobool5, label %for.end9, label %for.body6, !dbg !3120

for.body6:                                        ; preds = %for.cond4
  %call7 = tail call i32 @cgraph_function_body_availability(%struct.cgraph_node* nonnull %node.0) #6, !dbg !3121
  %cmp = icmp ugt i32 %call7, 1, !dbg !3124
  br i1 %cmp, label %if.then, label %for.inc8, !dbg !3125

if.then:                                          ; preds = %for.body6
  tail call fastcc void @analyze_function(%struct.cgraph_node* nonnull %node.0) #7, !dbg !3126
  br label %for.inc8, !dbg !3126

for.inc8:                                         ; preds = %for.body6, %if.then
  %next = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 3, !dbg !3127
  br label %for.cond4, !dbg !3128, !llvm.loop !3129

for.end9:                                         ; preds = %for.cond4
  %2 = load %struct.pointer_set_t*, %struct.pointer_set_t** @visited_nodes, align 8, !dbg !3131
  tail call void @pointer_set_destroy(%struct.pointer_set_t* %2) #6, !dbg !3132
  store %struct.pointer_set_t* null, %struct.pointer_set_t** @visited_nodes, align 8, !dbg !3133
  %3 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @module_statics_escape, align 8, !dbg !3134
  call void @llvm.dbg.value(metadata i32* %index, metadata !3078, metadata !DIExpression(DW_OP_deref)), !dbg !3107
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3079, metadata !DIExpression(DW_OP_deref)), !dbg !3107
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %3, i32 0, i32* nonnull %index) #7, !dbg !3134
  br label %for.cond10, !dbg !3134

for.cond10:                                       ; preds = %for.body13, %for.end9
  call void @llvm.dbg.value(metadata i32* %index, metadata !3078, metadata !DIExpression(DW_OP_deref)), !dbg !3107
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3079, metadata !DIExpression(DW_OP_deref)), !dbg !3107
  %call11 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %index) #7, !dbg !3136
  %tobool12 = icmp eq i8 %call11, 0, !dbg !3134
  br i1 %tobool12, label %for.end15, label %for.body13, !dbg !3134

for.body13:                                       ; preds = %for.cond10
  %4 = load %struct.splay_tree_s*, %struct.splay_tree_s** @reference_vars_to_consider, align 8, !dbg !3138
  %5 = load i32, i32* %index, align 4, !dbg !3140
  call void @llvm.dbg.value(metadata i32 %5, metadata !3078, metadata !DIExpression()), !dbg !3107
  %conv = zext i32 %5 to i64, !dbg !3140
  call void @splay_tree_remove(%struct.splay_tree_s* %4, i64 %conv) #6, !dbg !3141
  call void @llvm.dbg.value(metadata i32* %index, metadata !3078, metadata !DIExpression(DW_OP_deref)), !dbg !3107
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3079, metadata !DIExpression(DW_OP_deref)), !dbg !3107
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %index) #7, !dbg !3136
  br label %for.cond10, !dbg !3136, !llvm.loop !3142

for.end15:                                        ; preds = %for.cond10
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @all_module_statics, align 8, !dbg !3144
  %7 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @module_statics_escape, align 8, !dbg !3145
  %call16 = call zeroext i8 @bitmap_and_compl_into(%struct.bitmap_head_def* %6, %struct.bitmap_head_def* %7) #6, !dbg !3146
  %8 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @all_module_statics, align 8, !dbg !3147
  %9 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @module_statics_written, align 8, !dbg !3148
  %call17 = call zeroext i8 @bitmap_and_compl(%struct.bitmap_head_def* %call, %struct.bitmap_head_def* %8, %struct.bitmap_head_def* %9) #6, !dbg !3149
  %10 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @all_module_statics, align 8, !dbg !3150
  call void @llvm.dbg.value(metadata i32* %index, metadata !3078, metadata !DIExpression(DW_OP_deref)), !dbg !3107
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3079, metadata !DIExpression(DW_OP_deref)), !dbg !3107
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %10, i32 0, i32* nonnull %index) #7, !dbg !3150
  br label %for.cond18, !dbg !3150

for.cond18:                                       ; preds = %for.inc28, %for.end15
  call void @llvm.dbg.value(metadata i32* %index, metadata !3078, metadata !DIExpression(DW_OP_deref)), !dbg !3107
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3079, metadata !DIExpression(DW_OP_deref)), !dbg !3107
  %call19 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %index) #7, !dbg !3151
  %tobool20 = icmp eq i8 %call19, 0, !dbg !3150
  br i1 %tobool20, label %for.end29, label %for.body21, !dbg !3150

for.body21:                                       ; preds = %for.cond18
  %11 = load i32, i32* %index, align 4, !dbg !3152
  call void @llvm.dbg.value(metadata i32 %11, metadata !3078, metadata !DIExpression()), !dbg !3107
  %call22 = call fastcc %union.tree_node* @get_static_decl(i32 %11) #7, !dbg !3153
  call void @llvm.dbg.value(metadata %union.tree_node* %call22, metadata !3082, metadata !DIExpression()), !dbg !3154
  %12 = getelementptr inbounds %union.tree_node, %union.tree_node* %call22, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3155
  %bf.load = load i64, i64* %12, align 8, !dbg !3156
  %bf.clear = and i64 %bf.load, -262145, !dbg !3156
  store i64 %bf.clear, i64* %12, align 8, !dbg !3156
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3157
  %tobool23 = icmp eq %struct._IO_FILE* %13, null, !dbg !3157
  br i1 %tobool23, label %for.inc28, label %if.then24, !dbg !3159

if.then24:                                        ; preds = %for.body21
  %14 = load i32, i32* %index, align 4, !dbg !3160
  call void @llvm.dbg.value(metadata i32 %14, metadata !3078, metadata !DIExpression()), !dbg !3107
  %call25 = call fastcc i8* @get_static_name(i32 %14) #7, !dbg !3161
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i8* %call25) #6, !dbg !3162
  br label %for.inc28, !dbg !3162

for.inc28:                                        ; preds = %for.body21, %if.then24
  call void @llvm.dbg.value(metadata i32* %index, metadata !3078, metadata !DIExpression(DW_OP_deref)), !dbg !3107
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3079, metadata !DIExpression(DW_OP_deref)), !dbg !3107
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %index) #7, !dbg !3151
  br label %for.cond18, !dbg !3151, !llvm.loop !3163

for.end29:                                        ; preds = %for.cond18
  %15 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @all_module_statics, align 8, !dbg !3165
  %16 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @module_statics_written, align 8, !dbg !3166
  %call30 = call zeroext i8 @bitmap_and_compl(%struct.bitmap_head_def* %call, %struct.bitmap_head_def* %15, %struct.bitmap_head_def* %16) #6, !dbg !3167
  call void @llvm.dbg.value(metadata i32* %index, metadata !3078, metadata !DIExpression(DW_OP_deref)), !dbg !3107
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3079, metadata !DIExpression(DW_OP_deref)), !dbg !3107
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %call, i32 0, i32* nonnull %index) #7, !dbg !3168
  br label %for.cond31, !dbg !3168

for.cond31:                                       ; preds = %for.inc49, %for.end29
  call void @llvm.dbg.value(metadata i32* %index, metadata !3078, metadata !DIExpression(DW_OP_deref)), !dbg !3107
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3079, metadata !DIExpression(DW_OP_deref)), !dbg !3107
  %call32 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %index) #7, !dbg !3169
  %tobool33 = icmp eq i8 %call32, 0, !dbg !3168
  br i1 %tobool33, label %for.end50, label %for.body34, !dbg !3168

for.body34:                                       ; preds = %for.cond31
  %17 = load i32, i32* %index, align 4, !dbg !3170
  call void @llvm.dbg.value(metadata i32 %17, metadata !3078, metadata !DIExpression()), !dbg !3107
  %call36 = call fastcc %union.tree_node* @get_static_decl(i32 %17) #7, !dbg !3171
  call void @llvm.dbg.value(metadata %union.tree_node* %call36, metadata !3086, metadata !DIExpression()), !dbg !3172
  %section_name = getelementptr inbounds %union.tree_node, %union.tree_node* %call36, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !3173
  %18 = load %union.tree_node*, %union.tree_node** %section_name, align 8, !dbg !3173
  %cmp37 = icmp eq %union.tree_node* %18, null, !dbg !3175
  br i1 %cmp37, label %if.then39, label %for.inc49, !dbg !3176

if.then39:                                        ; preds = %for.body34
  %19 = getelementptr inbounds %union.tree_node, %union.tree_node* %call36, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3177
  %bf.load41 = load i64, i64* %19, align 8, !dbg !3179
  %bf.set = or i64 %bf.load41, 1048576, !dbg !3179
  store i64 %bf.set, i64* %19, align 8, !dbg !3179
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3180
  %tobool43 = icmp eq %struct._IO_FILE* %20, null, !dbg !3180
  br i1 %tobool43, label %for.inc49, label %if.then44, !dbg !3182

if.then44:                                        ; preds = %if.then39
  %21 = load i32, i32* %index, align 4, !dbg !3183
  call void @llvm.dbg.value(metadata i32 %21, metadata !3078, metadata !DIExpression()), !dbg !3107
  %call45 = call fastcc i8* @get_static_name(i32 %21) #7, !dbg !3184
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i8* %call45) #6, !dbg !3185
  br label %for.inc49, !dbg !3185

for.inc49:                                        ; preds = %if.then39, %for.body34, %if.then44
  call void @llvm.dbg.value(metadata i32* %index, metadata !3078, metadata !DIExpression(DW_OP_deref)), !dbg !3107
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3079, metadata !DIExpression(DW_OP_deref)), !dbg !3107
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %index) #7, !dbg !3169
  br label %for.cond31, !dbg !3169, !llvm.loop !3186

for.end50:                                        ; preds = %for.cond31
  %22 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @module_statics_escape, align 8, !dbg !3188
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %22) #6, !dbg !3188
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** @module_statics_escape, align 8, !dbg !3188
  %23 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @module_statics_written, align 8, !dbg !3189
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %23) #6, !dbg !3189
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** @module_statics_escape, align 8, !dbg !3190
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** @module_statics_written, align 8, !dbg !3191
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3192
  %tobool51 = icmp eq %struct._IO_FILE* %24, null, !dbg !3192
  br i1 %tobool51, label %if.end61, label %if.then52, !dbg !3194

if.then52:                                        ; preds = %for.end50
  %25 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @all_module_statics, align 8, !dbg !3195
  call void @llvm.dbg.value(metadata i32* %index, metadata !3078, metadata !DIExpression(DW_OP_deref)), !dbg !3107
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3079, metadata !DIExpression(DW_OP_deref)), !dbg !3107
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %25, i32 0, i32* nonnull %index) #7, !dbg !3195
  br label %for.cond53, !dbg !3195

for.cond53:                                       ; preds = %for.body56, %if.then52
  call void @llvm.dbg.value(metadata i32* %index, metadata !3078, metadata !DIExpression(DW_OP_deref)), !dbg !3107
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3079, metadata !DIExpression(DW_OP_deref)), !dbg !3107
  %call54 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %index) #7, !dbg !3197
  %tobool55 = icmp eq i8 %call54, 0, !dbg !3195
  br i1 %tobool55, label %if.end61.loopexit, label %for.body56, !dbg !3195

for.body56:                                       ; preds = %for.cond53
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3199
  %27 = load i32, i32* %index, align 4, !dbg !3201
  call void @llvm.dbg.value(metadata i32 %27, metadata !3078, metadata !DIExpression()), !dbg !3107
  %call57 = call fastcc i8* @get_static_name(i32 %27) #7, !dbg !3202
  %call58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i8* %call57) #6, !dbg !3203
  call void @llvm.dbg.value(metadata i32* %index, metadata !3078, metadata !DIExpression(DW_OP_deref)), !dbg !3107
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3079, metadata !DIExpression(DW_OP_deref)), !dbg !3107
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %index) #7, !dbg !3197
  br label %for.cond53, !dbg !3197, !llvm.loop !3204

if.end61.loopexit:                                ; preds = %for.cond53
  br label %if.end61, !dbg !3206

if.end61:                                         ; preds = %if.end61.loopexit, %for.end50
  br label %for.cond62, !dbg !3206

for.cond62:                                       ; preds = %for.inc79, %if.end61
  %node.1.in = phi %struct.cgraph_node** [ @cgraph_nodes, %if.end61 ], [ %next80, %for.inc79 ]
  %node.1 = load %struct.cgraph_node*, %struct.cgraph_node** %node.1.in, align 8, !dbg !3207
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.1, metadata !3076, metadata !DIExpression()), !dbg !3107
  %tobool63 = icmp eq %struct.cgraph_node* %node.1, null, !dbg !3208
  br i1 %tobool63, label %for.end81, label %for.body64, !dbg !3208

for.body64:                                       ; preds = %for.cond62
  %call65 = call i32 @cgraph_function_body_availability(%struct.cgraph_node* nonnull %node.1) #6, !dbg !3209
  %cmp66 = icmp ugt i32 %call65, 1, !dbg !3210
  br i1 %cmp66, label %if.then68, label %for.inc79, !dbg !3211

if.then68:                                        ; preds = %for.body64
  %call69 = call fastcc %struct.ipa_reference_vars_info_d* @get_reference_vars_info(%struct.cgraph_node* nonnull %node.1) #7, !dbg !3212
  %local = getelementptr inbounds %struct.ipa_reference_vars_info_d, %struct.ipa_reference_vars_info_d* %call69, i64 0, i32 0, !dbg !3213
  %28 = load %struct.ipa_reference_local_vars_info_d*, %struct.ipa_reference_local_vars_info_d** %local, align 8, !dbg !3213
  call void @llvm.dbg.value(metadata %struct.ipa_reference_local_vars_info_d* %28, metadata !3090, metadata !DIExpression()), !dbg !3214
  %statics_read = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %28, i64 0, i32 0, !dbg !3215
  %29 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_read, align 8, !dbg !3215
  %tobool70 = icmp eq %struct.bitmap_head_def* %29, null, !dbg !3217
  br i1 %tobool70, label %if.end73, label %if.then71, !dbg !3218

if.then71:                                        ; preds = %if.then68
  %30 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @all_module_statics, align 8, !dbg !3219
  call void @bitmap_and_into(%struct.bitmap_head_def* nonnull %29, %struct.bitmap_head_def* %30) #6, !dbg !3220
  br label %if.end73, !dbg !3220

if.end73:                                         ; preds = %if.then68, %if.then71
  %statics_written = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %28, i64 0, i32 1, !dbg !3221
  %31 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_written, align 8, !dbg !3221
  %tobool74 = icmp eq %struct.bitmap_head_def* %31, null, !dbg !3223
  br i1 %tobool74, label %for.inc79, label %if.then75, !dbg !3224

if.then75:                                        ; preds = %if.end73
  %32 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @all_module_statics, align 8, !dbg !3225
  call void @bitmap_and_into(%struct.bitmap_head_def* nonnull %31, %struct.bitmap_head_def* %32) #6, !dbg !3226
  br label %for.inc79, !dbg !3226

for.inc79:                                        ; preds = %if.end73, %for.body64, %if.then75
  %next80 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.1, i64 0, i32 3, !dbg !3227
  br label %for.cond62, !dbg !3228, !llvm.loop !3229

for.end81:                                        ; preds = %for.cond62
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %call) #6, !dbg !3231
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3080, metadata !DIExpression()), !dbg !3107
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %call1) #6, !dbg !3232
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3081, metadata !DIExpression()), !dbg !3107
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3233
  %tobool82 = icmp eq %struct._IO_FILE* %33, null, !dbg !3233
  br i1 %tobool82, label %if.end138, label %if.then83, !dbg !3234

if.then83:                                        ; preds = %for.end81
  %34 = bitcast i32* %index92 to i8*, !dbg !3235
  %35 = bitcast %struct.bitmap_iterator* %bi93 to i8*, !dbg !3235
  br label %for.cond84, !dbg !3236

for.cond84:                                       ; preds = %for.inc135, %if.then83
  %node.2.in = phi %struct.cgraph_node** [ @cgraph_nodes, %if.then83 ], [ %next136, %for.inc135 ]
  %node.2 = load %struct.cgraph_node*, %struct.cgraph_node** %node.2.in, align 8, !dbg !3237
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.2, metadata !3076, metadata !DIExpression()), !dbg !3107
  %tobool85 = icmp eq %struct.cgraph_node* %node.2, null, !dbg !3238
  br i1 %tobool85, label %if.end138.loopexit, label %for.body86, !dbg !3238

for.body86:                                       ; preds = %for.cond84
  %call87 = call i32 @cgraph_function_body_availability(%struct.cgraph_node* nonnull %node.2) #6, !dbg !3239
  %cmp88 = icmp ugt i32 %call87, 1, !dbg !3240
  br i1 %cmp88, label %if.then90, label %for.inc135, !dbg !3241

if.then90:                                        ; preds = %for.body86
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %34) #8, !dbg !3242
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %35) #8, !dbg !3243
  %call94 = call fastcc %struct.ipa_reference_vars_info_d* @get_reference_vars_info(%struct.cgraph_node* nonnull %node.2) #7, !dbg !3244
  %local95 = getelementptr inbounds %struct.ipa_reference_vars_info_d, %struct.ipa_reference_vars_info_d* %call94, i64 0, i32 0, !dbg !3245
  %36 = load %struct.ipa_reference_local_vars_info_d*, %struct.ipa_reference_local_vars_info_d** %local95, align 8, !dbg !3245
  call void @llvm.dbg.value(metadata %struct.ipa_reference_local_vars_info_d* %36, metadata !3095, metadata !DIExpression()), !dbg !3235
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3246
  %call96 = call i8* @cgraph_node_name(%struct.cgraph_node* nonnull %node.2) #6, !dbg !3247
  %uid = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.2, i64 0, i32 24, !dbg !3248
  %38 = load i32, i32* %uid, align 8, !dbg !3248
  %call97 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %call96, i32 %38) #6, !dbg !3249
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3250
  %call98 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !3251
  %statics_read99 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %36, i64 0, i32 0, !dbg !3252
  %40 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_read99, align 8, !dbg !3252
  %tobool100 = icmp eq %struct.bitmap_head_def* %40, null, !dbg !3254
  br i1 %tobool100, label %if.end111, label %if.then101, !dbg !3255

if.then101:                                       ; preds = %if.then90
  call void @llvm.dbg.value(metadata i32* %index92, metadata !3101, metadata !DIExpression(DW_OP_deref)), !dbg !3235
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi93, metadata !3102, metadata !DIExpression(DW_OP_deref)), !dbg !3235
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi93, %struct.bitmap_head_def* nonnull %40, i32 0, i32* nonnull %index92) #7, !dbg !3256
  br label %for.cond103, !dbg !3256

for.cond103:                                      ; preds = %for.body106, %if.then101
  call void @llvm.dbg.value(metadata i32* %index92, metadata !3101, metadata !DIExpression(DW_OP_deref)), !dbg !3235
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi93, metadata !3102, metadata !DIExpression(DW_OP_deref)), !dbg !3235
  %call104 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi93, i32* nonnull %index92) #7, !dbg !3258
  %tobool105 = icmp eq i8 %call104, 0, !dbg !3256
  br i1 %tobool105, label %if.end111.loopexit, label %for.body106, !dbg !3256

for.body106:                                      ; preds = %for.cond103
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3260
  %42 = load i32, i32* %index92, align 4, !dbg !3262
  call void @llvm.dbg.value(metadata i32 %42, metadata !3101, metadata !DIExpression()), !dbg !3235
  %call107 = call fastcc i8* @get_static_name(i32 %42) #7, !dbg !3263
  %call108 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %call107) #6, !dbg !3264
  call void @llvm.dbg.value(metadata i32* %index92, metadata !3101, metadata !DIExpression(DW_OP_deref)), !dbg !3235
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi93, metadata !3102, metadata !DIExpression(DW_OP_deref)), !dbg !3235
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi93, i32* nonnull %index92) #7, !dbg !3258
  br label %for.cond103, !dbg !3258, !llvm.loop !3265

if.end111.loopexit:                               ; preds = %for.cond103
  br label %if.end111, !dbg !3267

if.end111:                                        ; preds = %if.end111.loopexit, %if.then90
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3267
  %call112 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3268
  %statics_written113 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %36, i64 0, i32 1, !dbg !3269
  %44 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_written113, align 8, !dbg !3269
  %tobool114 = icmp eq %struct.bitmap_head_def* %44, null, !dbg !3271
  br i1 %tobool114, label %if.end125, label %if.then115, !dbg !3272

if.then115:                                       ; preds = %if.end111
  call void @llvm.dbg.value(metadata i32* %index92, metadata !3101, metadata !DIExpression(DW_OP_deref)), !dbg !3235
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi93, metadata !3102, metadata !DIExpression(DW_OP_deref)), !dbg !3235
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi93, %struct.bitmap_head_def* nonnull %44, i32 0, i32* nonnull %index92) #7, !dbg !3273
  br label %for.cond117, !dbg !3273

for.cond117:                                      ; preds = %for.body120, %if.then115
  call void @llvm.dbg.value(metadata i32* %index92, metadata !3101, metadata !DIExpression(DW_OP_deref)), !dbg !3235
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi93, metadata !3102, metadata !DIExpression(DW_OP_deref)), !dbg !3235
  %call118 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi93, i32* nonnull %index92) #7, !dbg !3275
  %tobool119 = icmp eq i8 %call118, 0, !dbg !3273
  br i1 %tobool119, label %if.end125.loopexit, label %for.body120, !dbg !3273

for.body120:                                      ; preds = %for.cond117
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3277
  %46 = load i32, i32* %index92, align 4, !dbg !3279
  call void @llvm.dbg.value(metadata i32 %46, metadata !3101, metadata !DIExpression()), !dbg !3235
  %call121 = call fastcc i8* @get_static_name(i32 %46) #7, !dbg !3280
  %call122 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %call121) #6, !dbg !3281
  call void @llvm.dbg.value(metadata i32* %index92, metadata !3101, metadata !DIExpression(DW_OP_deref)), !dbg !3235
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi93, metadata !3102, metadata !DIExpression(DW_OP_deref)), !dbg !3235
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi93, i32* nonnull %index92) #7, !dbg !3275
  br label %for.cond117, !dbg !3275, !llvm.loop !3282

if.end125.loopexit:                               ; preds = %for.cond117
  br label %if.end125, !dbg !3284

if.end125:                                        ; preds = %if.end125.loopexit, %if.end111
  %calls_read_all = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %36, i64 0, i32 2, !dbg !3284
  %47 = load i8, i8* %calls_read_all, align 8, !dbg !3284
  %tobool126 = icmp eq i8 %47, 0, !dbg !3286
  br i1 %tobool126, label %if.end129, label %if.then127, !dbg !3287

if.then127:                                       ; preds = %if.end125
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3288
  %call128 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !3289
  br label %if.end129, !dbg !3289

if.end129:                                        ; preds = %if.end125, %if.then127
  %calls_write_all = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %36, i64 0, i32 3, !dbg !3290
  %49 = load i8, i8* %calls_write_all, align 1, !dbg !3290
  %tobool130 = icmp eq i8 %49, 0, !dbg !3292
  br i1 %tobool130, label %if.end133, label %if.then131, !dbg !3293

if.then131:                                       ; preds = %if.end129
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3294
  %call132 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !3295
  br label %if.end133, !dbg !3295

if.end133:                                        ; preds = %if.end129, %if.then131
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %35) #8, !dbg !3296
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %34) #8, !dbg !3296
  br label %for.inc135, !dbg !3297

for.inc135:                                       ; preds = %for.body86, %if.end133
  %next136 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.2, i64 0, i32 3, !dbg !3298
  br label %for.cond84, !dbg !3299, !llvm.loop !3300

if.end138.loopexit:                               ; preds = %for.cond84
  br label %if.end138, !dbg !3302

if.end138:                                        ; preds = %if.end138.loopexit, %for.end81
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #8, !dbg !3302
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3302
  ret void, !dbg !3302
}

; Function Attrs: nounwind uwtable
define internal void @ipa_reference_write_summary(%struct.cgraph_node_set_def* %set) #5 !dbg !3303 {
entry:
  %csi = alloca %struct.cgraph_node_set_iterator, align 8
  %tmp = alloca %struct.cgraph_node_set_iterator, align 8
  %tmp6 = alloca %struct.cgraph_node_set_iterator, align 8
  %index = alloca i32, align 4
  %bi = alloca %struct.bitmap_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.cgraph_node_set_def* %set, metadata !3308, metadata !DIExpression()), !dbg !3364
  %call = tail call %struct.lto_simple_output_block* @lto_create_simple_output_block(i32 6) #6, !dbg !3365
  call void @llvm.dbg.value(metadata %struct.lto_simple_output_block* %call, metadata !3310, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i32 0, metadata !3347, metadata !DIExpression()), !dbg !3364
  %0 = bitcast %struct.cgraph_node_set_iterator* %csi to i8*, !dbg !3366
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !3366
  %1 = bitcast %struct.cgraph_node_set_iterator* %tmp to i8*, !dbg !3367
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3367
  %call1 = tail call fastcc { %struct.cgraph_node_set_def*, i32 } @csi_start(%struct.cgraph_node_set_def* %set) #7, !dbg !3367
  %2 = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %tmp, i64 0, i32 0, !dbg !3367
  %3 = extractvalue { %struct.cgraph_node_set_def*, i32 } %call1, 0, !dbg !3367
  store %struct.cgraph_node_set_def* %3, %struct.cgraph_node_set_def** %2, align 8, !dbg !3367
  %4 = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %tmp, i64 0, i32 1, !dbg !3367
  %5 = extractvalue { %struct.cgraph_node_set_def*, i32 } %call1, 1, !dbg !3367
  store i32 %5, i32* %4, align 8, !dbg !3367
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %1, i64 16, i1 false), !dbg !3367
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3367
  %6 = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %csi, i64 0, i32 0, !dbg !3369
  %7 = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %csi, i64 0, i32 1, !dbg !3369
  br label %for.cond, !dbg !3371

for.cond:                                         ; preds = %for.body, %entry
  %count.0 = phi i32 [ 0, %entry ], [ %spec.select, %for.body ], !dbg !3364
  call void @llvm.dbg.value(metadata i32 %count.0, metadata !3347, metadata !DIExpression()), !dbg !3364
  %8 = load %struct.cgraph_node_set_def*, %struct.cgraph_node_set_def** %6, align 8, !dbg !3372
  %9 = load i32, i32* %7, align 8, !dbg !3372
  %call2 = call fastcc zeroext i8 @csi_end_p(%struct.cgraph_node_set_def* %8, i32 %9) #7, !dbg !3372
  %tobool = icmp eq i8 %call2, 0, !dbg !3373
  br i1 %tobool, label %for.body, label %for.end, !dbg !3374

for.body:                                         ; preds = %for.cond
  %10 = load %struct.cgraph_node_set_def*, %struct.cgraph_node_set_def** %6, align 8, !dbg !3375
  %11 = load i32, i32* %7, align 8, !dbg !3375
  %call3 = call fastcc %struct.cgraph_node* @csi_node(%struct.cgraph_node_set_def* %10, i32 %11) #7, !dbg !3375
  %call4 = call fastcc zeroext i8 @write_node_summary_p(%struct.cgraph_node* %call3) #7, !dbg !3377
  %tobool5 = icmp ne i8 %call4, 0, !dbg !3377
  %inc = zext i1 %tobool5 to i32, !dbg !3378
  %spec.select = add i32 %count.0, %inc, !dbg !3378
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !3347, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata %struct.cgraph_node_set_iterator* %csi, metadata !3348, metadata !DIExpression(DW_OP_deref)), !dbg !3364
  call fastcc void @csi_next(%struct.cgraph_node_set_iterator* nonnull %csi) #7, !dbg !3379
  br label %for.cond, !dbg !3380, !llvm.loop !3381

for.end:                                          ; preds = %for.cond
  %count.0.lcssa = phi i32 [ %count.0, %for.cond ], !dbg !3364
  call void @llvm.dbg.value(metadata i32 %count.0.lcssa, metadata !3347, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i32 %count.0.lcssa, metadata !3347, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i32 %count.0.lcssa, metadata !3347, metadata !DIExpression()), !dbg !3364
  %main_stream = getelementptr inbounds %struct.lto_simple_output_block, %struct.lto_simple_output_block* %call, i64 0, i32 2, !dbg !3383
  %12 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !3383
  %conv = zext i32 %count.0.lcssa to i64, !dbg !3384
  call void @lto_output_uleb128_stream(%struct.lto_output_stream* %12, i64 %conv) #6, !dbg !3385
  %13 = bitcast %struct.cgraph_node_set_iterator* %tmp6 to i8*, !dbg !3386
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %13) #8, !dbg !3386
  %call7 = call fastcc { %struct.cgraph_node_set_def*, i32 } @csi_start(%struct.cgraph_node_set_def* %set) #7, !dbg !3386
  %14 = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %tmp6, i64 0, i32 0, !dbg !3386
  %15 = extractvalue { %struct.cgraph_node_set_def*, i32 } %call7, 0, !dbg !3386
  store %struct.cgraph_node_set_def* %15, %struct.cgraph_node_set_def** %14, align 8, !dbg !3386
  %16 = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %tmp6, i64 0, i32 1, !dbg !3386
  %17 = extractvalue { %struct.cgraph_node_set_def*, i32 } %call7, 1, !dbg !3386
  store i32 %17, i32* %16, align 8, !dbg !3386
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %13, i64 16, i1 false), !dbg !3386
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #8, !dbg !3386
  %18 = bitcast i32* %index to i8*, !dbg !3387
  %19 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !3387
  %decl_state = getelementptr inbounds %struct.lto_simple_output_block, %struct.lto_simple_output_block* %call, i64 0, i32 1, !dbg !3387
  br label %for.cond8, !dbg !3388

for.cond8:                                        ; preds = %for.inc55, %for.end
  %20 = load %struct.cgraph_node_set_def*, %struct.cgraph_node_set_def** %6, align 8, !dbg !3389
  %21 = load i32, i32* %7, align 8, !dbg !3389
  %call9 = call fastcc zeroext i8 @csi_end_p(%struct.cgraph_node_set_def* %20, i32 %21) #7, !dbg !3389
  %tobool10 = icmp eq i8 %call9, 0, !dbg !3390
  br i1 %tobool10, label %for.body12, label %for.end56, !dbg !3391

for.body12:                                       ; preds = %for.cond8
  %22 = load %struct.cgraph_node_set_def*, %struct.cgraph_node_set_def** %6, align 8, !dbg !3392
  %23 = load i32, i32* %7, align 8, !dbg !3392
  %call13 = call fastcc %struct.cgraph_node* @csi_node(%struct.cgraph_node_set_def* %22, i32 %23) #7, !dbg !3392
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call13, metadata !3309, metadata !DIExpression()), !dbg !3364
  %call14 = call fastcc zeroext i8 @write_node_summary_p(%struct.cgraph_node* %call13) #7, !dbg !3393
  %tobool15 = icmp eq i8 %call14, 0, !dbg !3393
  br i1 %tobool15, label %for.inc55, label %if.then16, !dbg !3394

if.then16:                                        ; preds = %for.body12
  %call17 = call fastcc %struct.ipa_reference_vars_info_d* @get_reference_vars_info(%struct.cgraph_node* %call13) #7, !dbg !3395
  %local = getelementptr inbounds %struct.ipa_reference_vars_info_d, %struct.ipa_reference_vars_info_d* %call17, i64 0, i32 0, !dbg !3396
  %24 = load %struct.ipa_reference_local_vars_info_d*, %struct.ipa_reference_local_vars_info_d** %local, align 8, !dbg !3396
  call void @llvm.dbg.value(metadata %struct.ipa_reference_local_vars_info_d* %24, metadata !3354, metadata !DIExpression()), !dbg !3387
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #8, !dbg !3397
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %19) #8, !dbg !3398
  %25 = load %struct.lto_out_decl_state*, %struct.lto_out_decl_state** %decl_state, align 8, !dbg !3399
  %cgraph_node_encoder = getelementptr inbounds %struct.lto_out_decl_state, %struct.lto_out_decl_state* %25, i64 0, i32 1, !dbg !3400
  %26 = load %struct.lto_cgraph_encoder_d*, %struct.lto_cgraph_encoder_d** %cgraph_node_encoder, align 8, !dbg !3400
  call void @llvm.dbg.value(metadata %struct.lto_cgraph_encoder_d* %26, metadata !3362, metadata !DIExpression()), !dbg !3387
  %call18 = call i32 @lto_cgraph_encoder_encode(%struct.lto_cgraph_encoder_d* %26, %struct.cgraph_node* %call13) #6, !dbg !3401
  call void @llvm.dbg.value(metadata i32 %call18, metadata !3363, metadata !DIExpression()), !dbg !3387
  %27 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !3402
  %conv20 = sext i32 %call18 to i64, !dbg !3403
  call void @lto_output_uleb128_stream(%struct.lto_output_stream* %27, i64 %conv20) #6, !dbg !3404
  %calls_read_all = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %24, i64 0, i32 2, !dbg !3405
  %28 = load i8, i8* %calls_read_all, align 8, !dbg !3405
  %tobool21 = icmp eq i8 %28, 0, !dbg !3407
  %29 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !3408
  br i1 %tobool21, label %if.else, label %if.then22, !dbg !3409

if.then22:                                        ; preds = %if.then16
  call void @lto_output_sleb128_stream(%struct.lto_output_stream* %29, i64 -1) #6, !dbg !3410
  br label %if.end36, !dbg !3410

if.else:                                          ; preds = %if.then16
  %statics_read = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %24, i64 0, i32 0, !dbg !3411
  %30 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_read, align 8, !dbg !3411
  %call25 = call i64 @bitmap_count_bits(%struct.bitmap_head_def* %30) #6, !dbg !3413
  call void @lto_output_sleb128_stream(%struct.lto_output_stream* %29, i64 %call25) #6, !dbg !3414
  %31 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_read, align 8, !dbg !3415
  call void @llvm.dbg.value(metadata i32* %index, metadata !3360, metadata !DIExpression(DW_OP_deref)), !dbg !3387
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3361, metadata !DIExpression(DW_OP_deref)), !dbg !3387
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %31, i32 0, i32* nonnull %index) #7, !dbg !3415
  br label %for.cond27, !dbg !3415

for.cond27:                                       ; preds = %for.body30, %if.else
  call void @llvm.dbg.value(metadata i32* %index, metadata !3360, metadata !DIExpression(DW_OP_deref)), !dbg !3387
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3361, metadata !DIExpression(DW_OP_deref)), !dbg !3387
  %call28 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %index) #7, !dbg !3417
  %tobool29 = icmp eq i8 %call28, 0, !dbg !3415
  br i1 %tobool29, label %if.end36.loopexit, label %for.body30, !dbg !3415

for.body30:                                       ; preds = %for.cond27
  %32 = load %struct.lto_out_decl_state*, %struct.lto_out_decl_state** %decl_state, align 8, !dbg !3419
  %33 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !3420
  %34 = load i32, i32* %index, align 4, !dbg !3421
  call void @llvm.dbg.value(metadata i32 %34, metadata !3360, metadata !DIExpression()), !dbg !3387
  %call33 = call fastcc %union.tree_node* @get_static_decl(i32 %34) #7, !dbg !3422
  call void @lto_output_var_decl_index(%struct.lto_out_decl_state* %32, %struct.lto_output_stream* %33, %union.tree_node* %call33) #6, !dbg !3423
  call void @llvm.dbg.value(metadata i32* %index, metadata !3360, metadata !DIExpression(DW_OP_deref)), !dbg !3387
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3361, metadata !DIExpression(DW_OP_deref)), !dbg !3387
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %index) #7, !dbg !3417
  br label %for.cond27, !dbg !3417, !llvm.loop !3424

if.end36.loopexit:                                ; preds = %for.cond27
  br label %if.end36, !dbg !3426

if.end36:                                         ; preds = %if.end36.loopexit, %if.then22
  %calls_write_all = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %24, i64 0, i32 3, !dbg !3426
  %35 = load i8, i8* %calls_write_all, align 1, !dbg !3426
  %tobool37 = icmp eq i8 %35, 0, !dbg !3428
  %36 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !3429
  br i1 %tobool37, label %if.else40, label %if.then38, !dbg !3430

if.then38:                                        ; preds = %if.end36
  call void @lto_output_sleb128_stream(%struct.lto_output_stream* %36, i64 -1) #6, !dbg !3431
  br label %if.end53, !dbg !3431

if.else40:                                        ; preds = %if.end36
  %statics_written = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %24, i64 0, i32 1, !dbg !3432
  %37 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_written, align 8, !dbg !3432
  %call42 = call i64 @bitmap_count_bits(%struct.bitmap_head_def* %37) #6, !dbg !3434
  call void @lto_output_sleb128_stream(%struct.lto_output_stream* %36, i64 %call42) #6, !dbg !3435
  %38 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_written, align 8, !dbg !3436
  call void @llvm.dbg.value(metadata i32* %index, metadata !3360, metadata !DIExpression(DW_OP_deref)), !dbg !3387
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3361, metadata !DIExpression(DW_OP_deref)), !dbg !3387
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %38, i32 0, i32* nonnull %index) #7, !dbg !3436
  br label %for.cond44, !dbg !3436

for.cond44:                                       ; preds = %for.body47, %if.else40
  call void @llvm.dbg.value(metadata i32* %index, metadata !3360, metadata !DIExpression(DW_OP_deref)), !dbg !3387
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3361, metadata !DIExpression(DW_OP_deref)), !dbg !3387
  %call45 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %index) #7, !dbg !3438
  %tobool46 = icmp eq i8 %call45, 0, !dbg !3436
  br i1 %tobool46, label %if.end53.loopexit, label %for.body47, !dbg !3436

for.body47:                                       ; preds = %for.cond44
  %39 = load %struct.lto_out_decl_state*, %struct.lto_out_decl_state** %decl_state, align 8, !dbg !3440
  %40 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !3441
  %41 = load i32, i32* %index, align 4, !dbg !3442
  call void @llvm.dbg.value(metadata i32 %41, metadata !3360, metadata !DIExpression()), !dbg !3387
  %call50 = call fastcc %union.tree_node* @get_static_decl(i32 %41) #7, !dbg !3443
  call void @lto_output_var_decl_index(%struct.lto_out_decl_state* %39, %struct.lto_output_stream* %40, %union.tree_node* %call50) #6, !dbg !3444
  call void @llvm.dbg.value(metadata i32* %index, metadata !3360, metadata !DIExpression(DW_OP_deref)), !dbg !3387
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3361, metadata !DIExpression(DW_OP_deref)), !dbg !3387
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %index) #7, !dbg !3438
  br label %for.cond44, !dbg !3438, !llvm.loop !3445

if.end53.loopexit:                                ; preds = %for.cond44
  br label %if.end53, !dbg !3447

if.end53:                                         ; preds = %if.end53.loopexit, %if.then38
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %19) #8, !dbg !3447
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #8, !dbg !3447
  br label %for.inc55, !dbg !3448

for.inc55:                                        ; preds = %for.body12, %if.end53
  call void @llvm.dbg.value(metadata %struct.cgraph_node_set_iterator* %csi, metadata !3348, metadata !DIExpression(DW_OP_deref)), !dbg !3364
  call fastcc void @csi_next(%struct.cgraph_node_set_iterator* nonnull %csi) #7, !dbg !3449
  br label %for.cond8, !dbg !3450, !llvm.loop !3451

for.end56:                                        ; preds = %for.cond8
  call void @lto_destroy_simple_output_block(%struct.lto_simple_output_block* %call) #6, !dbg !3453
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !3454
  ret void, !dbg !3454
}

; Function Attrs: nounwind uwtable
define internal void @ipa_reference_read_summary() #5 !dbg !3455 {
entry:
  %data = alloca i8*, align 8
  %len = alloca i64, align 8
  %call = tail call %struct.lto_file_decl_data** @lto_get_file_decl_data() #6, !dbg !3496
  call void @llvm.dbg.value(metadata %struct.lto_file_decl_data** %call, metadata !3457, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata i32 0, metadata !3460, metadata !DIExpression()), !dbg !3497
  tail call fastcc void @ipa_init() #7, !dbg !3498
  %0 = bitcast i8** %data to i8*, !dbg !3499
  %1 = bitcast i64* %len to i8*, !dbg !3499
  br label %while.cond, !dbg !3500

while.cond:                                       ; preds = %if.end49, %entry
  %j.0 = phi i32 [ 0, %entry ], [ %inc, %if.end49 ], !dbg !3497
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !3460, metadata !DIExpression()), !dbg !3497
  %inc = add i32 %j.0, 1, !dbg !3501
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3460, metadata !DIExpression()), !dbg !3497
  %idxprom = zext i32 %j.0 to i64, !dbg !3502
  %arrayidx = getelementptr inbounds %struct.lto_file_decl_data*, %struct.lto_file_decl_data** %call, i64 %idxprom, !dbg !3502
  %2 = load %struct.lto_file_decl_data*, %struct.lto_file_decl_data** %arrayidx, align 8, !dbg !3502
  call void @llvm.dbg.value(metadata %struct.lto_file_decl_data* %2, metadata !3459, metadata !DIExpression()), !dbg !3497
  %tobool = icmp eq %struct.lto_file_decl_data* %2, null, !dbg !3500
  br i1 %tobool, label %while.end, label %while.body, !dbg !3500

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3503
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3504
  call void @llvm.dbg.value(metadata i8** %data, metadata !3461, metadata !DIExpression(DW_OP_deref)), !dbg !3499
  call void @llvm.dbg.value(metadata i64* %len, metadata !3463, metadata !DIExpression(DW_OP_deref)), !dbg !3499
  %call1 = call %struct.lto_input_block* @lto_create_simple_input_block(%struct.lto_file_decl_data* nonnull %2, i32 6, i8** nonnull %data, i64* nonnull %len) #6, !dbg !3505
  call void @llvm.dbg.value(metadata %struct.lto_input_block* %call1, metadata !3464, metadata !DIExpression()), !dbg !3499
  %tobool2 = icmp eq %struct.lto_input_block* %call1, null, !dbg !3506
  br i1 %tobool2, label %if.end49, label %if.then, !dbg !3507

if.then:                                          ; preds = %while.body
  %call3 = call i64 @lto_input_uleb128(%struct.lto_input_block* nonnull %call1) #6, !dbg !3508
  %conv = trunc i64 %call3 to i32, !dbg !3508
  call void @llvm.dbg.value(metadata i32 %conv, metadata !3474, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata i32 0, metadata !3471, metadata !DIExpression()), !dbg !3509
  %cgraph_node_encoder = getelementptr inbounds %struct.lto_file_decl_data, %struct.lto_file_decl_data* %2, i64 0, i32 2, !dbg !3510
  br label %for.cond, !dbg !3511

for.cond:                                         ; preds = %for.inc46, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc47, %for.inc46 ], !dbg !3512
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3471, metadata !DIExpression()), !dbg !3509
  %exitcond2 = icmp eq i32 %i.0, %conv, !dbg !3513
  br i1 %exitcond2, label %for.end48, label %for.body, !dbg !3514

for.body:                                         ; preds = %for.cond
  %call6 = call i64 @lto_input_uleb128(%struct.lto_input_block* nonnull %call1) #6, !dbg !3515
  %conv7 = trunc i64 %call6 to i32, !dbg !3515
  call void @llvm.dbg.value(metadata i32 %conv7, metadata !3479, metadata !DIExpression()), !dbg !3510
  %3 = load %struct.lto_cgraph_encoder_d*, %struct.lto_cgraph_encoder_d** %cgraph_node_encoder, align 8, !dbg !3516
  call void @llvm.dbg.value(metadata %struct.lto_cgraph_encoder_d* %3, metadata !3483, metadata !DIExpression()), !dbg !3510
  %call8 = call %struct.cgraph_node* @lto_cgraph_encoder_deref(%struct.lto_cgraph_encoder_d* %3, i32 %conv7) #6, !dbg !3517
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call8, metadata !3480, metadata !DIExpression()), !dbg !3510
  %call9 = call fastcc %struct.ipa_reference_local_vars_info_d* @init_function_info(%struct.cgraph_node* %call8) #7, !dbg !3518
  call void @llvm.dbg.value(metadata %struct.ipa_reference_local_vars_info_d* %call9, metadata !3481, metadata !DIExpression()), !dbg !3510
  %call10 = call i64 @lto_input_sleb128(%struct.lto_input_block* nonnull %call1) #6, !dbg !3519
  %conv11 = trunc i64 %call10 to i32, !dbg !3519
  call void @llvm.dbg.value(metadata i32 %conv11, metadata !3482, metadata !DIExpression()), !dbg !3510
  %cmp12 = icmp eq i32 %conv11, -1, !dbg !3520
  br i1 %cmp12, label %if.then14, label %for.cond15.preheader, !dbg !3521

for.cond15.preheader:                             ; preds = %for.body
  %statics_read = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %call9, i64 0, i32 0, !dbg !3522
  br label %for.cond15, !dbg !3523

if.then14:                                        ; preds = %for.body
  %calls_read_all = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %call9, i64 0, i32 2, !dbg !3524
  store i8 1, i8* %calls_read_all, align 8, !dbg !3525
  br label %if.end, !dbg !3526

for.cond15:                                       ; preds = %for.cond15.preheader, %for.body18
  %j5.0 = phi i32 [ %inc23, %for.body18 ], [ 0, %for.cond15.preheader ], !dbg !3527
  call void @llvm.dbg.value(metadata i32 %j5.0, metadata !3475, metadata !DIExpression()), !dbg !3510
  %exitcond = icmp eq i32 %j5.0, %conv11, !dbg !3528
  br i1 %exitcond, label %if.end.loopexit, label %for.body18, !dbg !3523

for.body18:                                       ; preds = %for.cond15
  %call19 = call i64 @lto_input_uleb128(%struct.lto_input_block* nonnull %call1) #6, !dbg !3529
  %conv20 = trunc i64 %call19 to i32, !dbg !3529
  call void @llvm.dbg.value(metadata i32 %conv20, metadata !3484, metadata !DIExpression()), !dbg !3522
  %call21 = call fastcc %union.tree_node* @lto_file_decl_data_get_var_decl(%struct.lto_file_decl_data* nonnull %2, i32 %conv20) #7, !dbg !3530
  call void @llvm.dbg.value(metadata %union.tree_node* %call21, metadata !3489, metadata !DIExpression()), !dbg !3522
  call fastcc void @add_static_var(%union.tree_node* %call21) #7, !dbg !3531
  %4 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_read, align 8, !dbg !3532
  %uid = getelementptr inbounds %union.tree_node, %union.tree_node* %call21, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3533
  %5 = load i32, i32* %uid, align 4, !dbg !3533
  %call22 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %4, i32 %5) #6, !dbg !3534
  %inc23 = add nuw i32 %j5.0, 1, !dbg !3535
  call void @llvm.dbg.value(metadata i32 %inc23, metadata !3475, metadata !DIExpression()), !dbg !3510
  br label %for.cond15, !dbg !3536, !llvm.loop !3537

if.end.loopexit:                                  ; preds = %for.cond15
  br label %if.end, !dbg !3539

if.end:                                           ; preds = %if.end.loopexit, %if.then14
  %call24 = call i64 @lto_input_sleb128(%struct.lto_input_block* nonnull %call1) #6, !dbg !3539
  %conv25 = trunc i64 %call24 to i32, !dbg !3539
  call void @llvm.dbg.value(metadata i32 %conv25, metadata !3482, metadata !DIExpression()), !dbg !3510
  %cmp26 = icmp eq i32 %conv25, -1, !dbg !3540
  br i1 %cmp26, label %if.then28, label %for.cond30.preheader, !dbg !3541

for.cond30.preheader:                             ; preds = %if.end
  %statics_written = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %call9, i64 0, i32 1, !dbg !3542
  br label %for.cond30, !dbg !3543

if.then28:                                        ; preds = %if.end
  %calls_write_all = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %call9, i64 0, i32 3, !dbg !3544
  store i8 1, i8* %calls_write_all, align 1, !dbg !3545
  br label %for.inc46, !dbg !3546

for.cond30:                                       ; preds = %for.cond30.preheader, %for.body33
  %j5.1 = phi i32 [ %inc43, %for.body33 ], [ 0, %for.cond30.preheader ], !dbg !3547
  call void @llvm.dbg.value(metadata i32 %j5.1, metadata !3475, metadata !DIExpression()), !dbg !3510
  %exitcond1 = icmp eq i32 %j5.1, %conv25, !dbg !3548
  br i1 %exitcond1, label %for.inc46.loopexit, label %for.body33, !dbg !3543

for.body33:                                       ; preds = %for.cond30
  %call35 = call i64 @lto_input_uleb128(%struct.lto_input_block* nonnull %call1) #6, !dbg !3549
  %conv36 = trunc i64 %call35 to i32, !dbg !3549
  call void @llvm.dbg.value(metadata i32 %conv36, metadata !3490, metadata !DIExpression()), !dbg !3542
  %call38 = call fastcc %union.tree_node* @lto_file_decl_data_get_var_decl(%struct.lto_file_decl_data* nonnull %2, i32 %conv36) #7, !dbg !3550
  call void @llvm.dbg.value(metadata %union.tree_node* %call38, metadata !3495, metadata !DIExpression()), !dbg !3542
  call fastcc void @add_static_var(%union.tree_node* %call38) #7, !dbg !3551
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_written, align 8, !dbg !3552
  %uid40 = getelementptr inbounds %union.tree_node, %union.tree_node* %call38, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3553
  %7 = load i32, i32* %uid40, align 4, !dbg !3553
  %call41 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %6, i32 %7) #6, !dbg !3554
  %inc43 = add nuw i32 %j5.1, 1, !dbg !3555
  call void @llvm.dbg.value(metadata i32 %inc43, metadata !3475, metadata !DIExpression()), !dbg !3510
  br label %for.cond30, !dbg !3556, !llvm.loop !3557

for.inc46.loopexit:                               ; preds = %for.cond30
  br label %for.inc46, !dbg !3559

for.inc46:                                        ; preds = %for.inc46.loopexit, %if.then28
  %inc47 = add i32 %i.0, 1, !dbg !3559
  call void @llvm.dbg.value(metadata i32 %inc47, metadata !3471, metadata !DIExpression()), !dbg !3509
  br label %for.cond, !dbg !3560, !llvm.loop !3561

for.end48:                                        ; preds = %for.cond
  %8 = load i8*, i8** %data, align 8, !dbg !3563
  call void @llvm.dbg.value(metadata i8* %8, metadata !3461, metadata !DIExpression()), !dbg !3499
  %9 = load i64, i64* %len, align 8, !dbg !3564
  call void @llvm.dbg.value(metadata i64 %9, metadata !3463, metadata !DIExpression()), !dbg !3499
  call void @lto_destroy_simple_input_block(%struct.lto_file_decl_data* nonnull %2, i32 6, %struct.lto_input_block* nonnull %call1, i8* %8, i64 %9) #6, !dbg !3565
  br label %if.end49, !dbg !3566

if.end49:                                         ; preds = %while.body, %for.end48
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3567
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3567
  br label %while.cond, !dbg !3500, !llvm.loop !3568

while.end:                                        ; preds = %while.cond
  ret void, !dbg !3569
}

declare dso_local void @gt_ggc_m_IP9tree_node12splay_tree_s(i8*) #2

declare dso_local void @gt_pch_n_IP9tree_node12splay_tree_s(i8*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ipa_reference_vars_info_d* @get_reference_vars_info(%struct.cgraph_node* %node) unnamed_addr #0 !dbg !3570 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !3574, metadata !DIExpression()), !dbg !3575
  %0 = load %struct.VEC_ipa_reference_vars_info_t_heap*, %struct.VEC_ipa_reference_vars_info_t_heap** @ipa_reference_vars_vector, align 8, !dbg !3576
  %tobool = icmp eq %struct.VEC_ipa_reference_vars_info_t_heap* %0, null, !dbg !3576
  br i1 %tobool, label %return, label %lor.lhs.false, !dbg !3578

lor.lhs.false:                                    ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_heap, %struct.VEC_ipa_reference_vars_info_t_heap* %0, i64 0, i32 0, !dbg !3579
  %call = tail call fastcc i32 @VEC_ipa_reference_vars_info_t_base_length(%struct.VEC_ipa_reference_vars_info_t_base* nonnull %base) #7, !dbg !3579
  %uid = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 24, !dbg !3580
  %1 = load i32, i32* %uid, align 8, !dbg !3580
  %cmp = icmp ugt i32 %call, %1, !dbg !3581
  br i1 %cmp, label %if.end, label %return, !dbg !3582

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.VEC_ipa_reference_vars_info_t_heap*, %struct.VEC_ipa_reference_vars_info_t_heap** @ipa_reference_vars_vector, align 8, !dbg !3583
  %base4 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_heap, %struct.VEC_ipa_reference_vars_info_t_heap* %2, i64 0, i32 0, !dbg !3583
  %call9 = tail call fastcc %struct.ipa_reference_vars_info_d* @VEC_ipa_reference_vars_info_t_base_index(%struct.VEC_ipa_reference_vars_info_t_base* %base4, i32 %1) #7, !dbg !3583
  br label %return, !dbg !3584

return:                                           ; preds = %lor.lhs.false, %entry, %if.end
  %retval.0 = phi %struct.ipa_reference_vars_info_d* [ %call9, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ], !dbg !3575
  ret %struct.ipa_reference_vars_info_d* %retval.0, !dbg !3585
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_ipa_reference_vars_info_t_base_length(%struct.VEC_ipa_reference_vars_info_t_base* %vec_) unnamed_addr #0 !dbg !3586 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_reference_vars_info_t_base* %vec_, metadata !3592, metadata !DIExpression()), !dbg !3593
  %tobool = icmp eq %struct.VEC_ipa_reference_vars_info_t_base* %vec_, null, !dbg !3594
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3594

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, %struct.VEC_ipa_reference_vars_info_t_base* %vec_, i64 0, i32 0, !dbg !3594
  %0 = load i32, i32* %num, align 8, !dbg !3594
  br label %cond.end, !dbg !3594

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3594
  ret i32 %cond, !dbg !3594
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ipa_reference_vars_info_d* @VEC_ipa_reference_vars_info_t_base_index(%struct.VEC_ipa_reference_vars_info_t_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3595 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_reference_vars_info_t_base* %vec_, metadata !3599, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3600, metadata !DIExpression()), !dbg !3601
  br label %land.end, !dbg !3602

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3602
  %arrayidx = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, %struct.VEC_ipa_reference_vars_info_t_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3602
  %0 = load %struct.ipa_reference_vars_info_d*, %struct.ipa_reference_vars_info_d** %arrayidx, align 8, !dbg !3602
  ret %struct.ipa_reference_vars_info_d* %0, !dbg !3602
}

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #2

declare dso_local i32 @ipa_utils_reduced_inorder(%struct.cgraph_node**, i8 zeroext, i8 zeroext, i8 (%struct.cgraph_edge*)*) local_unnamed_addr #2

declare dso_local void @cgraph_remove_function_insertion_hook(%struct.cgraph_node_hook_list*) local_unnamed_addr #2

declare dso_local void @dump_cgraph(%struct._IO_FILE*) local_unnamed_addr #2

declare dso_local void @ipa_utils_print_order(%struct._IO_FILE*, i8*, %struct.cgraph_node**, i32) local_unnamed_addr #2

declare dso_local void @dump_cgraph_node(%struct._IO_FILE*, %struct.cgraph_node*) local_unnamed_addr #2

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

declare dso_local i32 @cgraph_function_body_availability(%struct.cgraph_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @read_write_all_from_decl(%union.tree_node* %decl, i8* %read_all, i8* %write_all) unnamed_addr #5 !dbg !3603 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !3607, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i8* %read_all, metadata !3608, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i8* %write_all, metadata !3609, metadata !DIExpression()), !dbg !3611
  %call = tail call i32 @flags_from_decl_or_type(%union.tree_node* %decl) #6, !dbg !3612
  call void @llvm.dbg.value(metadata i32 %call, metadata !3610, metadata !DIExpression()), !dbg !3611
  %and = and i32 %call, 1, !dbg !3613
  %tobool = icmp eq i32 %and, 0, !dbg !3613
  br i1 %tobool, label %if.else, label %if.end8, !dbg !3615

if.else:                                          ; preds = %entry
  %and1 = and i32 %call, 2, !dbg !3616
  %tobool2 = icmp eq i32 %and1, 0, !dbg !3616
  store i8 1, i8* %read_all, align 1, !dbg !3618
  %and5 = and i32 %call, 72, !dbg !3619
  %cmp = icmp ne i32 %and5, 72, !dbg !3622
  %or.cond = and i1 %tobool2, %cmp, !dbg !3623
  br i1 %or.cond, label %if.then6, label %if.end8, !dbg !3623

if.then6:                                         ; preds = %if.else
  store i8 1, i8* %write_all, align 1, !dbg !3624
  br label %if.end8, !dbg !3625

if.end8:                                          ; preds = %entry, %if.else, %if.then6
  ret void, !dbg !3626
}

declare dso_local %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack*) local_unnamed_addr #2

declare dso_local void @bitmap_copy(%struct.bitmap_head_def*, %struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @propagate_bits(%struct.ipa_reference_global_vars_info_d* %x_global, %struct.cgraph_node* %x) unnamed_addr #5 !dbg !3627 {
entry:
  call void @llvm.dbg.value(metadata %struct.ipa_reference_global_vars_info_d* %x_global, metadata !3631, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %x, metadata !3632, metadata !DIExpression()), !dbg !3644
  %callees = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %x, i64 0, i32 1, !dbg !3645
  %statics_read = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, %struct.ipa_reference_global_vars_info_d* %x_global, i64 0, i32 0, !dbg !3646
  %0 = bitcast %struct.ipa_reference_global_vars_info_d* %x_global to i64*, !dbg !3648
  %statics_written = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, %struct.ipa_reference_global_vars_info_d* %x_global, i64 0, i32 1, !dbg !3652
  %1 = bitcast %struct.bitmap_head_def** %statics_written to i64*, !dbg !3654
  br label %for.cond, !dbg !3658

for.cond:                                         ; preds = %cleanup50, %entry
  %e.0.in = phi %struct.cgraph_edge** [ %callees, %entry ], [ %next_callee, %cleanup50 ]
  %e.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %e.0.in, align 8, !dbg !3659
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e.0, metadata !3633, metadata !DIExpression()), !dbg !3644
  %tobool = icmp eq %struct.cgraph_edge* %e.0, null, !dbg !3660
  br i1 %tobool, label %for.end, label %for.body, !dbg !3660

for.body:                                         ; preds = %for.cond
  %callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 2, !dbg !3661
  %2 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !3661
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %2, metadata !3634, metadata !DIExpression()), !dbg !3662
  %call = tail call i32 @cgraph_function_body_availability(%struct.cgraph_node* %2) #6, !dbg !3663
  %cmp = icmp ugt i32 %call, 2, !dbg !3664
  br i1 %cmp, label %if.then, label %if.end49, !dbg !3665

if.then:                                          ; preds = %for.body
  %call2 = tail call fastcc %struct.ipa_reference_vars_info_d* @get_reference_vars_info(%struct.cgraph_node* %2) #7, !dbg !3666
  %tobool3 = icmp eq %struct.ipa_reference_vars_info_d* %call2, null, !dbg !3666
  br i1 %tobool3, label %if.else47, label %if.then4, !dbg !3667

if.then4:                                         ; preds = %if.then
  %call5 = tail call fastcc %struct.ipa_reference_vars_info_d* @get_reference_vars_info(%struct.cgraph_node* %2) #7, !dbg !3668
  call void @llvm.dbg.value(metadata %struct.ipa_reference_vars_info_d* %call5, metadata !3638, metadata !DIExpression()), !dbg !3669
  %global = getelementptr inbounds %struct.ipa_reference_vars_info_d, %struct.ipa_reference_vars_info_d* %call5, i64 0, i32 1, !dbg !3670
  %3 = load %struct.ipa_reference_global_vars_info_d*, %struct.ipa_reference_global_vars_info_d** %global, align 8, !dbg !3670
  call void @llvm.dbg.value(metadata %struct.ipa_reference_global_vars_info_d* %3, metadata !3643, metadata !DIExpression()), !dbg !3669
  %tobool7 = icmp eq %struct.ipa_reference_global_vars_info_d* %3, null, !dbg !3671
  br i1 %tobool7, label %cleanup, label %if.end, !dbg !3673

if.end:                                           ; preds = %if.then4
  %4 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_read, align 8, !dbg !3674
  %5 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @all_module_statics, align 8, !dbg !3675
  %cmp9 = icmp eq %struct.bitmap_head_def* %4, %5, !dbg !3676
  br i1 %cmp9, label %if.end26, label %if.then10, !dbg !3677

if.then10:                                        ; preds = %if.end
  %statics_read11 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, %struct.ipa_reference_global_vars_info_d* %3, i64 0, i32 0, !dbg !3678
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_read11, align 8, !dbg !3678
  %cmp12 = icmp eq %struct.bitmap_head_def* %6, %5, !dbg !3679
  br i1 %cmp12, label %if.then13, label %if.else, !dbg !3680

if.then13:                                        ; preds = %if.then10
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* %4) #6, !dbg !3681
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %statics_read, align 8, !dbg !3681
  %7 = load i64, i64* bitcast (%struct.bitmap_head_def** @all_module_statics to i64*), align 8, !dbg !3682
  store i64 %7, i64* %0, align 8, !dbg !3683
  br label %if.end26, !dbg !3684

if.else:                                          ; preds = %if.then10
  %cmp19 = icmp eq %struct.bitmap_head_def* %4, %6, !dbg !3685
  br i1 %cmp19, label %if.end26, label %if.then20, !dbg !3687

if.then20:                                        ; preds = %if.else
  %call23 = tail call zeroext i8 @bitmap_ior_into(%struct.bitmap_head_def* %4, %struct.bitmap_head_def* %6) #6, !dbg !3688
  br label %if.end26, !dbg !3688

if.end26:                                         ; preds = %if.else, %if.end, %if.then13, %if.then20
  %8 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_written, align 8, !dbg !3689
  %9 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @all_module_statics, align 8, !dbg !3690
  %cmp27 = icmp eq %struct.bitmap_head_def* %8, %9, !dbg !3691
  br i1 %cmp27, label %cleanup, label %if.then28, !dbg !3692

if.then28:                                        ; preds = %if.end26
  %statics_written29 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, %struct.ipa_reference_global_vars_info_d* %3, i64 0, i32 1, !dbg !3693
  %10 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_written29, align 8, !dbg !3693
  %cmp30 = icmp eq %struct.bitmap_head_def* %10, %9, !dbg !3694
  br i1 %cmp30, label %if.then31, label %if.else35, !dbg !3695

if.then31:                                        ; preds = %if.then28
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* %8) #6, !dbg !3696
  %11 = load i64, i64* bitcast (%struct.bitmap_head_def** @all_module_statics to i64*), align 8, !dbg !3697
  store i64 %11, i64* %1, align 8, !dbg !3698
  br label %cleanup, !dbg !3699

if.else35:                                        ; preds = %if.then28
  %cmp38 = icmp eq %struct.bitmap_head_def* %8, %10, !dbg !3700
  br i1 %cmp38, label %cleanup, label %if.then39, !dbg !3702

if.then39:                                        ; preds = %if.else35
  %call42 = tail call zeroext i8 @bitmap_ior_into(%struct.bitmap_head_def* %8, %struct.bitmap_head_def* %10) #6, !dbg !3703
  br label %cleanup, !dbg !3703

cleanup:                                          ; preds = %if.else35, %if.end26, %if.then4, %if.then39, %if.then31
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then4 ], [ true, %if.then31 ], [ true, %if.then39 ], [ true, %if.else35 ], [ true, %if.end26 ]
  br i1 %cleanup.dest.slot.0, label %if.end49, label %cleanup50

if.else47:                                        ; preds = %if.then
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 577, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !3704
  br label %if.end49

if.end49:                                         ; preds = %if.else47, %cleanup, %for.body
  br label %cleanup50, !dbg !3705

cleanup50:                                        ; preds = %cleanup, %if.end49
  %next_callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 6, !dbg !3706
  br label %for.cond, !dbg !3707, !llvm.loop !3708

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3710
}

declare dso_local zeroext i8 @bitmap_ior_into(%struct.bitmap_head_def*, %struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.bitmap_head_def* @copy_global_bitmap(%struct.bitmap_head_def* %src) unnamed_addr #5 !dbg !3711 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %src, metadata !3715, metadata !DIExpression()), !dbg !3717
  %tobool = icmp eq %struct.bitmap_head_def* %src, null, !dbg !3718
  br i1 %tobool, label %cleanup, label %if.end, !dbg !3720

if.end:                                           ; preds = %entry
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @all_module_statics, align 8, !dbg !3721
  %cmp = icmp eq %struct.bitmap_head_def* %0, %src, !dbg !3723
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !3724

if.then1:                                         ; preds = %if.end
  br label %cleanup, !dbg !3725

if.end2:                                          ; preds = %if.end
  %call = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* nonnull @global_info_obstack) #6, !dbg !3726
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call, metadata !3716, metadata !DIExpression()), !dbg !3717
  tail call void @bitmap_copy(%struct.bitmap_head_def* %call, %struct.bitmap_head_def* nonnull %src) #6, !dbg !3727
  br label %cleanup, !dbg !3728

cleanup:                                          ; preds = %entry, %if.end2, %if.then1
  %retval.0 = phi %struct.bitmap_head_def* [ %src, %if.then1 ], [ %call, %if.end2 ], [ null, %entry ], !dbg !3717
  ret %struct.bitmap_head_def* %retval.0, !dbg !3729
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

declare dso_local i8* @cgraph_node_name(%struct.cgraph_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* %bi, %struct.bitmap_head_def* %map, i32 %start_bit, i32* %bit_no) unnamed_addr #0 !dbg !3730 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3739, metadata !DIExpression()), !dbg !3743
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %map, metadata !3740, metadata !DIExpression()), !dbg !3743
  call void @llvm.dbg.value(metadata i32 0, metadata !3741, metadata !DIExpression()), !dbg !3743
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !3742, metadata !DIExpression()), !dbg !3743
  %0 = bitcast %struct.bitmap_head_def* %map to i64*, !dbg !3744
  %1 = load i64, i64* %0, align 8, !dbg !3744
  %2 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !3745
  store i64 %1, i64* %2, align 8, !dbg !3745
  %elt2 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 1, !dbg !3746
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %elt2, align 8, !dbg !3747
  %elt11 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !3748
  %3 = inttoptr i64 %1 to %struct.bitmap_element_def*, !dbg !3751
  br label %while.body, !dbg !3751

while.body:                                       ; preds = %entry, %if.end5
  %tobool = icmp eq i64 %1, 0, !dbg !3752
  br i1 %tobool, label %if.then, label %if.end, !dbg !3753

if.then:                                          ; preds = %while.body
  store %struct.bitmap_element_def* @bitmap_zero_bits, %struct.bitmap_element_def** %elt11, align 8, !dbg !3754
  br label %while.end, !dbg !3756

if.end:                                           ; preds = %while.body
  br i1 false, label %if.end5, label %while.end.loopexit, !dbg !3757

if.end5:                                          ; preds = %if.end
  br label %while.body, !dbg !3751, !llvm.loop !3758

while.end.loopexit:                               ; preds = %if.end
  br label %while.end, !dbg !3760

while.end:                                        ; preds = %while.end.loopexit, %if.then
  %4 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %5 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %6 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ], !dbg !3760
  %indx9 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %6, i64 0, i32 2, !dbg !3762
  %7 = load i32, i32* %indx9, align 8, !dbg !3762
  %cmp11 = icmp eq i32 %7, 0, !dbg !3763
  br i1 %cmp11, label %if.end15, label %if.then12, !dbg !3764

if.then12:                                        ; preds = %while.end
  %indx14 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %5, i64 0, i32 2, !dbg !3765
  %8 = load i32, i32* %indx14, align 8, !dbg !3765
  %mul = shl i32 %8, 7, !dbg !3766
  call void @llvm.dbg.value(metadata i32 %mul, metadata !3741, metadata !DIExpression()), !dbg !3743
  br label %if.end15, !dbg !3767

if.end15:                                         ; preds = %while.end, %if.then12
  %start_bit.addr.0 = phi i32 [ %mul, %if.then12 ], [ 0, %while.end ]
  call void @llvm.dbg.value(metadata i32 %start_bit.addr.0, metadata !3741, metadata !DIExpression()), !dbg !3743
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !3768
  store i32 0, i32* %word_no, align 8, !dbg !3769
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %4, i64 0, i32 3, i64 0, !dbg !3770
  %9 = load i64, i64* %arrayidx, align 8, !dbg !3770
  %bits21 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !3771
  store i64 %9, i64* %bits21, align 8, !dbg !3772
  %tobool23 = icmp eq i64 %9, 0, !dbg !3773
  %lnot.ext = zext i1 %tobool23 to i32, !dbg !3773
  %add = or i32 %start_bit.addr.0, %lnot.ext, !dbg !3774
  call void @llvm.dbg.value(metadata i32 %add, metadata !3741, metadata !DIExpression()), !dbg !3743
  store i32 %add, i32* %bit_no, align 4, !dbg !3775
  ret void, !dbg !3776
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !3777 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3781, metadata !DIExpression()), !dbg !3786
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !3782, metadata !DIExpression()), !dbg !3786
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !3787
  %0 = load i64, i64* %bits, align 8, !dbg !3787
  %tobool = icmp eq i64 %0, 0, !dbg !3788
  br i1 %tobool, label %if.end, label %next_bit, !dbg !3789

next_bit.loopexit:                                ; preds = %while.body9
  %.lcssa6 = phi i64 [ %10, %while.body9 ], !dbg !3790
  br label %next_bit, !dbg !3793

next_bit:                                         ; preds = %next_bit.loopexit, %entry
  %1 = phi i64 [ %.lcssa6, %next_bit.loopexit ], [ %0, %entry ]
  call void @llvm.dbg.label(metadata !3783), !dbg !3794
  br label %while.cond, !dbg !3793

while.cond:                                       ; preds = %while.body, %next_bit
  %2 = phi i64 [ %.pre, %while.body ], [ %1, %next_bit ], !dbg !3795
  %and = and i64 %2, 1, !dbg !3796
  %tobool2 = icmp eq i64 %and, 0, !dbg !3797
  br i1 %tobool2, label %while.body, label %return.loopexit, !dbg !3793

while.body:                                       ; preds = %while.cond
  %shr = lshr i64 %2, 1, !dbg !3798
  store i64 %shr, i64* %bits, align 8, !dbg !3798
  %3 = load i32, i32* %bit_no, align 4, !dbg !3800
  %add = add i32 %3, 1, !dbg !3800
  store i32 %add, i32* %bit_no, align 4, !dbg !3800
  %.pre = load i64, i64* %bits, align 8, !dbg !3795
  br label %while.cond, !dbg !3793, !llvm.loop !3801

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %bit_no, align 4, !dbg !3803
  %sub = add i32 %4, 63, !dbg !3804
  %div = and i32 %sub, -64, !dbg !3805
  store i32 %div, i32* %bit_no, align 4, !dbg !3806
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !3807
  %5 = load i32, i32* %word_no, align 8, !dbg !3808
  %inc = add i32 %5, 1, !dbg !3808
  store i32 %inc, i32* %word_no, align 8, !dbg !3808
  %elt1 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !3809
  %6 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !3809
  br label %while.body6, !dbg !3810

while.body6:                                      ; preds = %if.end, %if.end26
  %7 = phi i32 [ %inc, %if.end ], [ 0, %if.end26 ]
  br label %while.cond7, !dbg !3811

while.cond7:                                      ; preds = %if.end16, %while.body6
  %8 = phi i32 [ %inc19, %if.end16 ], [ %7, %while.body6 ], !dbg !3812
  %cmp = icmp eq i32 %8, 2, !dbg !3813
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %elt1, align 8, !dbg !3809
  br i1 %cmp, label %while.end20, label %while.body9, !dbg !3811

while.body9:                                      ; preds = %while.cond7
  %idxprom = zext i32 %8 to i64, !dbg !3790
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %9, i64 0, i32 3, i64 %idxprom, !dbg !3790
  %10 = load i64, i64* %arrayidx, align 8, !dbg !3790
  store i64 %10, i64* %bits, align 8, !dbg !3814
  %tobool14 = icmp eq i64 %10, 0, !dbg !3815
  br i1 %tobool14, label %if.end16, label %next_bit.loopexit, !dbg !3817

if.end16:                                         ; preds = %while.body9
  %11 = load i32, i32* %bit_no, align 4, !dbg !3818
  %add17 = add i32 %11, 64, !dbg !3818
  store i32 %add17, i32* %bit_no, align 4, !dbg !3818
  %12 = load i32, i32* %word_no, align 8, !dbg !3819
  %inc19 = add i32 %12, 1, !dbg !3819
  store i32 %inc19, i32* %word_no, align 8, !dbg !3819
  br label %while.cond7, !dbg !3811, !llvm.loop !3820

while.end20:                                      ; preds = %while.cond7
  %.lcssa = phi %struct.bitmap_element_def* [ %9, %while.cond7 ], !dbg !3809
  %13 = bitcast %struct.bitmap_element_def* %.lcssa to i64*, !dbg !3822
  %14 = load i64, i64* %13, align 8, !dbg !3822
  store i64 %14, i64* %6, align 8, !dbg !3823
  %tobool24 = icmp eq i64 %14, 0, !dbg !3824
  br i1 %tobool24, label %return.loopexit1, label %if.end26, !dbg !3826

if.end26:                                         ; preds = %while.end20
  %15 = inttoptr i64 %14 to %struct.bitmap_element_def*, !dbg !3826
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %15, i64 0, i32 2, !dbg !3827
  %16 = load i32, i32* %indx, align 8, !dbg !3827
  %mul28 = shl i32 %16, 7, !dbg !3828
  store i32 %mul28, i32* %bit_no, align 4, !dbg !3829
  store i32 0, i32* %word_no, align 8, !dbg !3830
  br label %while.body6, !dbg !3810, !llvm.loop !3831

return.loopexit:                                  ; preds = %while.cond
  br label %return, !dbg !3833

return.loopexit1:                                 ; preds = %while.end20
  br label %return, !dbg !3833

return:                                           ; preds = %return.loopexit1, %return.loopexit
  %retval.0 = phi i8 [ 1, %return.loopexit ], [ 0, %return.loopexit1 ], !dbg !3786
  ret i8 %retval.0, !dbg !3833
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @get_static_name(i32 %index) unnamed_addr #5 !dbg !3834 {
entry:
  call void @llvm.dbg.value(metadata i32 %index, metadata !3838, metadata !DIExpression()), !dbg !3840
  %0 = load %struct.splay_tree_s*, %struct.splay_tree_s** @reference_vars_to_consider, align 8, !dbg !3841
  %conv = sext i32 %index to i64, !dbg !3842
  %call = tail call %struct.splay_tree_node_s* @splay_tree_lookup(%struct.splay_tree_s* %0, i64 %conv) #6, !dbg !3843
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %call, metadata !3839, metadata !DIExpression()), !dbg !3840
  %tobool = icmp eq %struct.splay_tree_node_s* %call, null, !dbg !3844
  br i1 %tobool, label %cleanup, label %if.then, !dbg !3846

if.then:                                          ; preds = %entry
  %1 = load i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 22), align 8, !dbg !3847
  %value = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %call, i64 0, i32 1, !dbg !3848
  %2 = bitcast i64* %value to %union.tree_node**, !dbg !3848
  %3 = load %union.tree_node*, %union.tree_node** %2, align 8, !dbg !3848
  %call1 = tail call i8* %1(%union.tree_node* %3, i32 2) #6, !dbg !3849
  br label %cleanup, !dbg !3850

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i8* [ %call1, %if.then ], [ null, %entry ], !dbg !3840
  ret i8* %retval.0, !dbg !3851
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_next(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !3852 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3856, metadata !DIExpression()), !dbg !3858
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !3857, metadata !DIExpression()), !dbg !3858
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !3859
  %0 = load i64, i64* %bits, align 8, !dbg !3860
  %shr = lshr i64 %0, 1, !dbg !3860
  store i64 %shr, i64* %bits, align 8, !dbg !3860
  %1 = load i32, i32* %bit_no, align 4, !dbg !3861
  %add = add i32 %1, 1, !dbg !3861
  store i32 %add, i32* %bit_no, align 4, !dbg !3861
  ret void, !dbg !3862
}

declare dso_local zeroext i8 @bitmap_and_compl(%struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*) local_unnamed_addr #2

declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @clean_function(%struct.cgraph_node* %fn) unnamed_addr #5 !dbg !3863 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %fn, metadata !3865, metadata !DIExpression()), !dbg !3868
  %call = tail call fastcc %struct.ipa_reference_vars_info_d* @get_reference_vars_info(%struct.cgraph_node* %fn) #7, !dbg !3869
  call void @llvm.dbg.value(metadata %struct.ipa_reference_vars_info_d* %call, metadata !3866, metadata !DIExpression()), !dbg !3868
  %global = getelementptr inbounds %struct.ipa_reference_vars_info_d, %struct.ipa_reference_vars_info_d* %call, i64 0, i32 1, !dbg !3870
  %0 = load %struct.ipa_reference_global_vars_info_d*, %struct.ipa_reference_global_vars_info_d** %global, align 8, !dbg !3870
  call void @llvm.dbg.value(metadata %struct.ipa_reference_global_vars_info_d* %0, metadata !3867, metadata !DIExpression()), !dbg !3868
  tail call fastcc void @clean_function_local_data(%struct.cgraph_node* %fn) #7, !dbg !3871
  %tobool = icmp eq %struct.ipa_reference_global_vars_info_d* %0, null, !dbg !3872
  br i1 %tobool, label %if.end31, label %if.then, !dbg !3874

if.then:                                          ; preds = %entry
  %statics_read = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, %struct.ipa_reference_global_vars_info_d* %0, i64 0, i32 0, !dbg !3875
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_read, align 8, !dbg !3875
  %tobool1 = icmp eq %struct.bitmap_head_def* %1, null, !dbg !3878
  br i1 %tobool1, label %if.end, label %land.lhs.true, !dbg !3879

land.lhs.true:                                    ; preds = %if.then
  %2 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @all_module_statics, align 8, !dbg !3880
  %cmp = icmp eq %struct.bitmap_head_def* %1, %2, !dbg !3881
  br i1 %cmp, label %if.end, label %if.then3, !dbg !3882

if.then3:                                         ; preds = %land.lhs.true
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* nonnull %1) #6, !dbg !3883
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %statics_read, align 8, !dbg !3883
  br label %if.end, !dbg !3883

if.end:                                           ; preds = %land.lhs.true, %if.then, %if.then3
  %statics_written = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, %struct.ipa_reference_global_vars_info_d* %0, i64 0, i32 1, !dbg !3884
  %3 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_written, align 8, !dbg !3884
  %tobool6 = icmp eq %struct.bitmap_head_def* %3, null, !dbg !3886
  br i1 %tobool6, label %if.end13, label %land.lhs.true7, !dbg !3887

land.lhs.true7:                                   ; preds = %if.end
  %4 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @all_module_statics, align 8, !dbg !3888
  %cmp9 = icmp eq %struct.bitmap_head_def* %3, %4, !dbg !3889
  br i1 %cmp9, label %if.end13, label %if.then10, !dbg !3890

if.then10:                                        ; preds = %land.lhs.true7
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* nonnull %3) #6, !dbg !3891
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %statics_written, align 8, !dbg !3891
  br label %if.end13, !dbg !3891

if.end13:                                         ; preds = %land.lhs.true7, %if.end, %if.then10
  %statics_not_read = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, %struct.ipa_reference_global_vars_info_d* %0, i64 0, i32 2, !dbg !3892
  %5 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_not_read, align 8, !dbg !3892
  %tobool14 = icmp eq %struct.bitmap_head_def* %5, null, !dbg !3894
  br i1 %tobool14, label %if.end21, label %land.lhs.true15, !dbg !3895

land.lhs.true15:                                  ; preds = %if.end13
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @all_module_statics, align 8, !dbg !3896
  %cmp17 = icmp eq %struct.bitmap_head_def* %5, %6, !dbg !3897
  br i1 %cmp17, label %if.end21, label %if.then18, !dbg !3898

if.then18:                                        ; preds = %land.lhs.true15
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* nonnull %5) #6, !dbg !3899
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %statics_not_read, align 8, !dbg !3899
  br label %if.end21, !dbg !3899

if.end21:                                         ; preds = %land.lhs.true15, %if.end13, %if.then18
  %statics_not_written = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, %struct.ipa_reference_global_vars_info_d* %0, i64 0, i32 3, !dbg !3900
  %7 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_not_written, align 8, !dbg !3900
  %tobool22 = icmp eq %struct.bitmap_head_def* %7, null, !dbg !3902
  br i1 %tobool22, label %if.end29, label %land.lhs.true23, !dbg !3903

land.lhs.true23:                                  ; preds = %if.end21
  %8 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @all_module_statics, align 8, !dbg !3904
  %cmp25 = icmp eq %struct.bitmap_head_def* %7, %8, !dbg !3905
  br i1 %cmp25, label %if.end29, label %if.then26, !dbg !3906

if.then26:                                        ; preds = %land.lhs.true23
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* nonnull %7) #6, !dbg !3907
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %statics_not_written, align 8, !dbg !3907
  br label %if.end29, !dbg !3907

if.end29:                                         ; preds = %land.lhs.true23, %if.end21, %if.then26
  %9 = bitcast %struct.ipa_reference_global_vars_info_d* %0 to i8*, !dbg !3908
  tail call void @free(i8* nonnull %9) #6, !dbg !3909
  store %struct.ipa_reference_global_vars_info_d* null, %struct.ipa_reference_global_vars_info_d** %global, align 8, !dbg !3910
  br label %if.end31, !dbg !3911

if.end31:                                         ; preds = %entry, %if.end29
  %call32 = tail call fastcc %struct.ipa_reference_vars_info_d* @get_reference_vars_info(%struct.cgraph_node* %fn) #7, !dbg !3912
  %10 = bitcast %struct.ipa_reference_vars_info_d* %call32 to i8*, !dbg !3912
  tail call void @free(i8* %10) #6, !dbg !3913
  tail call fastcc void @set_reference_vars_info(%struct.cgraph_node* %fn, %struct.ipa_reference_vars_info_d* null) #7, !dbg !3914
  ret void, !dbg !3915
}

; Function Attrs: nounwind uwtable
define internal fastcc void @clean_function_local_data(%struct.cgraph_node* %fn) unnamed_addr #5 !dbg !3916 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %fn, metadata !3918, metadata !DIExpression()), !dbg !3921
  %call = tail call fastcc %struct.ipa_reference_vars_info_d* @get_reference_vars_info(%struct.cgraph_node* %fn) #7, !dbg !3922
  call void @llvm.dbg.value(metadata %struct.ipa_reference_vars_info_d* %call, metadata !3919, metadata !DIExpression()), !dbg !3921
  %local = getelementptr inbounds %struct.ipa_reference_vars_info_d, %struct.ipa_reference_vars_info_d* %call, i64 0, i32 0, !dbg !3923
  %0 = load %struct.ipa_reference_local_vars_info_d*, %struct.ipa_reference_local_vars_info_d** %local, align 8, !dbg !3923
  call void @llvm.dbg.value(metadata %struct.ipa_reference_local_vars_info_d* %0, metadata !3920, metadata !DIExpression()), !dbg !3921
  %tobool = icmp eq %struct.ipa_reference_local_vars_info_d* %0, null, !dbg !3924
  br i1 %tobool, label %if.end15, label %if.then, !dbg !3926

if.then:                                          ; preds = %entry
  %statics_read = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %0, i64 0, i32 0, !dbg !3927
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_read, align 8, !dbg !3927
  %tobool1 = icmp eq %struct.bitmap_head_def* %1, null, !dbg !3930
  br i1 %tobool1, label %if.end, label %land.lhs.true, !dbg !3931

land.lhs.true:                                    ; preds = %if.then
  %2 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @all_module_statics, align 8, !dbg !3932
  %cmp = icmp eq %struct.bitmap_head_def* %1, %2, !dbg !3933
  br i1 %cmp, label %if.end, label %if.then3, !dbg !3934

if.then3:                                         ; preds = %land.lhs.true
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* nonnull %1) #6, !dbg !3935
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %statics_read, align 8, !dbg !3935
  br label %if.end, !dbg !3935

if.end:                                           ; preds = %land.lhs.true, %if.then, %if.then3
  %statics_written = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %0, i64 0, i32 1, !dbg !3936
  %3 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_written, align 8, !dbg !3936
  %tobool6 = icmp eq %struct.bitmap_head_def* %3, null, !dbg !3938
  br i1 %tobool6, label %if.end13, label %land.lhs.true7, !dbg !3939

land.lhs.true7:                                   ; preds = %if.end
  %4 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @all_module_statics, align 8, !dbg !3940
  %cmp9 = icmp eq %struct.bitmap_head_def* %3, %4, !dbg !3941
  br i1 %cmp9, label %if.end13, label %if.then10, !dbg !3942

if.then10:                                        ; preds = %land.lhs.true7
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* nonnull %3) #6, !dbg !3943
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %statics_written, align 8, !dbg !3943
  br label %if.end13, !dbg !3943

if.end13:                                         ; preds = %land.lhs.true7, %if.end, %if.then10
  %5 = bitcast %struct.ipa_reference_local_vars_info_d* %0 to i8*, !dbg !3944
  tail call void @free(i8* nonnull %5) #6, !dbg !3945
  store %struct.ipa_reference_local_vars_info_d* null, %struct.ipa_reference_local_vars_info_d** %local, align 8, !dbg !3946
  br label %if.end15, !dbg !3947

if.end15:                                         ; preds = %entry, %if.end13
  ret void, !dbg !3948
}

declare dso_local void @bitmap_obstack_release(%struct.bitmap_obstack*) local_unnamed_addr #2

declare dso_local i32 @flags_from_decl_or_type(%union.tree_node*) local_unnamed_addr #2

declare dso_local void @bitmap_obstack_free(%struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #1

declare dso_local %struct.splay_tree_node_s* @splay_tree_lookup(%struct.splay_tree_s*, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @set_reference_vars_info(%struct.cgraph_node* %node, %struct.ipa_reference_vars_info_d* %info) unnamed_addr #0 !dbg !3949 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !3953, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata %struct.ipa_reference_vars_info_d* %info, metadata !3954, metadata !DIExpression()), !dbg !3955
  %0 = load %struct.VEC_ipa_reference_vars_info_t_heap*, %struct.VEC_ipa_reference_vars_info_t_heap** @ipa_reference_vars_vector, align 8, !dbg !3956
  %tobool = icmp eq %struct.VEC_ipa_reference_vars_info_t_heap* %0, null, !dbg !3956
  br i1 %tobool, label %entry.if.then_crit_edge, label %lor.lhs.false, !dbg !3958

entry.if.then_crit_edge:                          ; preds = %entry
  %uid2.phi.trans.insert = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 24, !dbg !3959
  %.pre = load i32, i32* %uid2.phi.trans.insert, align 8, !dbg !3960
  br label %if.then, !dbg !3958

lor.lhs.false:                                    ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_heap, %struct.VEC_ipa_reference_vars_info_t_heap* %0, i64 0, i32 0, !dbg !3961
  %call = tail call fastcc i32 @VEC_ipa_reference_vars_info_t_base_length(%struct.VEC_ipa_reference_vars_info_t_base* nonnull %base) #7, !dbg !3961
  %uid = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 24, !dbg !3962
  %1 = load i32, i32* %uid, align 8, !dbg !3962
  %cmp = icmp ugt i32 %call, %1, !dbg !3963
  br i1 %cmp, label %if.end, label %if.then, !dbg !3964

if.then:                                          ; preds = %entry.if.then_crit_edge, %lor.lhs.false
  %2 = phi i32 [ %.pre, %entry.if.then_crit_edge ], [ %1, %lor.lhs.false ], !dbg !3960
  %uid2 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 24, !dbg !3960
  %add = add nsw i32 %2, 1, !dbg !3960
  tail call fastcc void @VEC_ipa_reference_vars_info_t_heap_safe_grow_cleared(%struct.VEC_ipa_reference_vars_info_t_heap** nonnull @ipa_reference_vars_vector, i32 %add) #7, !dbg !3960
  %.pre1 = load i32, i32* %uid2, align 8, !dbg !3965
  br label %if.end, !dbg !3960

if.end:                                           ; preds = %lor.lhs.false, %if.then
  %3 = phi i32 [ %1, %lor.lhs.false ], [ %.pre1, %if.then ], !dbg !3965
  %4 = load %struct.VEC_ipa_reference_vars_info_t_heap*, %struct.VEC_ipa_reference_vars_info_t_heap** @ipa_reference_vars_vector, align 8, !dbg !3965
  %base5 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_heap, %struct.VEC_ipa_reference_vars_info_t_heap* %4, i64 0, i32 0, !dbg !3965
  %call10 = tail call fastcc %struct.ipa_reference_vars_info_d* @VEC_ipa_reference_vars_info_t_base_replace(%struct.VEC_ipa_reference_vars_info_t_base* %base5, i32 %3, %struct.ipa_reference_vars_info_d* %info) #7, !dbg !3965
  ret void, !dbg !3966
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_ipa_reference_vars_info_t_heap_safe_grow_cleared(%struct.VEC_ipa_reference_vars_info_t_heap** %vec_, i32 %size_) unnamed_addr #0 !dbg !3967 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_reference_vars_info_t_heap** @ipa_reference_vars_vector, metadata !3972, metadata !DIExpression()), !dbg !3975
  call void @llvm.dbg.value(metadata i32 %size_, metadata !3973, metadata !DIExpression()), !dbg !3975
  %0 = load %struct.VEC_ipa_reference_vars_info_t_heap*, %struct.VEC_ipa_reference_vars_info_t_heap** @ipa_reference_vars_vector, align 8, !dbg !3976
  %tobool = icmp eq %struct.VEC_ipa_reference_vars_info_t_heap* %0, null, !dbg !3976
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3976

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_heap, %struct.VEC_ipa_reference_vars_info_t_heap* %0, i64 0, i32 0, !dbg !3976
  br label %cond.end, !dbg !3976

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_ipa_reference_vars_info_t_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3976
  %call = tail call fastcc i32 @VEC_ipa_reference_vars_info_t_base_length(%struct.VEC_ipa_reference_vars_info_t_base* %cond) #7, !dbg !3976
  call void @llvm.dbg.value(metadata i32 %call, metadata !3974, metadata !DIExpression()), !dbg !3975
  tail call fastcc void @VEC_ipa_reference_vars_info_t_heap_safe_grow(%struct.VEC_ipa_reference_vars_info_t_heap** nonnull @ipa_reference_vars_vector, i32 %size_) #7, !dbg !3976
  %1 = load %struct.VEC_ipa_reference_vars_info_t_heap*, %struct.VEC_ipa_reference_vars_info_t_heap** @ipa_reference_vars_vector, align 8, !dbg !3976
  %tobool1 = icmp eq %struct.VEC_ipa_reference_vars_info_t_heap* %1, null, !dbg !3976
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !3976

cond.true2:                                       ; preds = %cond.end
  %base3 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_heap, %struct.VEC_ipa_reference_vars_info_t_heap* %1, i64 0, i32 0, !dbg !3976
  br label %cond.end5, !dbg !3976

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_ipa_reference_vars_info_t_base* [ %base3, %cond.true2 ], [ null, %cond.end ], !dbg !3976
  %call7 = tail call fastcc %struct.ipa_reference_vars_info_d** @VEC_ipa_reference_vars_info_t_base_address(%struct.VEC_ipa_reference_vars_info_t_base* %cond6) #7, !dbg !3976
  %idxprom = sext i32 %call to i64, !dbg !3976
  %arrayidx = getelementptr inbounds %struct.ipa_reference_vars_info_d*, %struct.ipa_reference_vars_info_d** %call7, i64 %idxprom, !dbg !3976
  %2 = bitcast %struct.ipa_reference_vars_info_d** %arrayidx to i8*, !dbg !3976
  %sub = sub nsw i32 %size_, %call, !dbg !3976
  %conv = sext i32 %sub to i64, !dbg !3976
  %mul = shl nsw i64 %conv, 3, !dbg !3976
  %call8 = tail call i8* @memset(i8* %2, i32 0, i64 %mul) #6, !dbg !3976
  ret void, !dbg !3976
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ipa_reference_vars_info_d* @VEC_ipa_reference_vars_info_t_base_replace(%struct.VEC_ipa_reference_vars_info_t_base* %vec_, i32 %ix_, %struct.ipa_reference_vars_info_d* %obj_) unnamed_addr #0 !dbg !3977 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_reference_vars_info_t_base* %vec_, metadata !3982, metadata !DIExpression()), !dbg !3986
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3983, metadata !DIExpression()), !dbg !3986
  call void @llvm.dbg.value(metadata %struct.ipa_reference_vars_info_d* %obj_, metadata !3984, metadata !DIExpression()), !dbg !3986
  %idxprom = zext i32 %ix_ to i64, !dbg !3987
  %arrayidx = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, %struct.VEC_ipa_reference_vars_info_t_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3987
  %0 = load %struct.ipa_reference_vars_info_d*, %struct.ipa_reference_vars_info_d** %arrayidx, align 8, !dbg !3987
  call void @llvm.dbg.value(metadata %struct.ipa_reference_vars_info_d* %0, metadata !3985, metadata !DIExpression()), !dbg !3986
  store %struct.ipa_reference_vars_info_d* %obj_, %struct.ipa_reference_vars_info_d** %arrayidx, align 8, !dbg !3987
  ret %struct.ipa_reference_vars_info_d* %0, !dbg !3987
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_ipa_reference_vars_info_t_heap_safe_grow(%struct.VEC_ipa_reference_vars_info_t_heap** %vec_, i32 %size_) unnamed_addr #0 !dbg !3988 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_reference_vars_info_t_heap** @ipa_reference_vars_vector, metadata !3990, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata i32 %size_, metadata !3991, metadata !DIExpression()), !dbg !3992
  %cmp = icmp sgt i32 %size_, -1, !dbg !3993
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3993

land.rhs:                                         ; preds = %entry
  %0 = load %struct.VEC_ipa_reference_vars_info_t_heap*, %struct.VEC_ipa_reference_vars_info_t_heap** @ipa_reference_vars_vector, align 8, !dbg !3993
  %tobool = icmp eq %struct.VEC_ipa_reference_vars_info_t_heap* %0, null, !dbg !3993
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3993

cond.true:                                        ; preds = %land.rhs
  %base = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_heap, %struct.VEC_ipa_reference_vars_info_t_heap* %0, i64 0, i32 0, !dbg !3993
  br label %cond.end, !dbg !3993

cond.end:                                         ; preds = %land.rhs, %cond.true
  %cond = phi %struct.VEC_ipa_reference_vars_info_t_base* [ %base, %cond.true ], [ null, %land.rhs ], !dbg !3993
  %call = tail call fastcc i32 @VEC_ipa_reference_vars_info_t_base_length(%struct.VEC_ipa_reference_vars_info_t_base* %cond) #7, !dbg !3993
  br label %land.end

land.end:                                         ; preds = %cond.end, %entry
  %1 = load %struct.VEC_ipa_reference_vars_info_t_heap*, %struct.VEC_ipa_reference_vars_info_t_heap** @ipa_reference_vars_vector, align 8, !dbg !3993
  %tobool2 = icmp eq %struct.VEC_ipa_reference_vars_info_t_heap* %1, null, !dbg !3993
  br i1 %tobool2, label %cond.end11, label %cond.true3, !dbg !3993

cond.true3:                                       ; preds = %land.end
  %num = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_heap, %struct.VEC_ipa_reference_vars_info_t_heap* %1, i64 0, i32 0, i32 0, !dbg !3993
  %2 = load i32, i32* %num, align 8, !dbg !3993
  br label %cond.end11, !dbg !3993

cond.end11:                                       ; preds = %land.end, %cond.true3
  %cond12 = phi i32 [ %2, %cond.true3 ], [ 0, %land.end ], !dbg !3993
  %sub = sub nsw i32 %size_, %cond12, !dbg !3993
  %call13 = tail call fastcc i32 @VEC_ipa_reference_vars_info_t_heap_reserve_exact(%struct.VEC_ipa_reference_vars_info_t_heap** nonnull @ipa_reference_vars_vector, i32 %sub) #7, !dbg !3993
  %3 = load %struct.VEC_ipa_reference_vars_info_t_heap*, %struct.VEC_ipa_reference_vars_info_t_heap** @ipa_reference_vars_vector, align 8, !dbg !3993
  %num20 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_heap, %struct.VEC_ipa_reference_vars_info_t_heap* %3, i64 0, i32 0, i32 0, !dbg !3993
  store i32 %size_, i32* %num20, align 8, !dbg !3993
  ret void, !dbg !3993
}

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ipa_reference_vars_info_d** @VEC_ipa_reference_vars_info_t_base_address(%struct.VEC_ipa_reference_vars_info_t_base* %vec_) unnamed_addr #0 !dbg !3994 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_reference_vars_info_t_base* %vec_, metadata !3999, metadata !DIExpression()), !dbg !4000
  %tobool = icmp eq %struct.VEC_ipa_reference_vars_info_t_base* %vec_, null, !dbg !4001
  %arraydecay = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, %struct.VEC_ipa_reference_vars_info_t_base* %vec_, i64 0, i32 2, i64 0, !dbg !4001
  %cond = select i1 %tobool, %struct.ipa_reference_vars_info_d** null, %struct.ipa_reference_vars_info_d** %arraydecay, !dbg !4001
  ret %struct.ipa_reference_vars_info_d** %cond, !dbg !4001
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_ipa_reference_vars_info_t_heap_reserve_exact(%struct.VEC_ipa_reference_vars_info_t_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4002 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_reference_vars_info_t_heap** @ipa_reference_vars_vector, metadata !4006, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !4007, metadata !DIExpression()), !dbg !4009
  %0 = load %struct.VEC_ipa_reference_vars_info_t_heap*, %struct.VEC_ipa_reference_vars_info_t_heap** @ipa_reference_vars_vector, align 8, !dbg !4010
  %tobool = icmp eq %struct.VEC_ipa_reference_vars_info_t_heap* %0, null, !dbg !4010
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4010

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_heap, %struct.VEC_ipa_reference_vars_info_t_heap* %0, i64 0, i32 0, !dbg !4010
  br label %cond.end, !dbg !4010

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_ipa_reference_vars_info_t_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4010
  %call = tail call fastcc i32 @VEC_ipa_reference_vars_info_t_base_space(%struct.VEC_ipa_reference_vars_info_t_base* %cond, i32 %alloc_) #7, !dbg !4010
  %tobool1 = icmp eq i32 %call, 0, !dbg !4010
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !4010
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !4008, metadata !DIExpression()), !dbg !4009
  br i1 %tobool1, label %if.then, label %if.end, !dbg !4010

if.then:                                          ; preds = %cond.end
  %1 = load i8*, i8** bitcast (%struct.VEC_ipa_reference_vars_info_t_heap** @ipa_reference_vars_vector to i8**), align 8, !dbg !4011
  %call3 = tail call i8* @vec_heap_p_reserve_exact(i8* %1, i32 %alloc_) #6, !dbg !4011
  store i8* %call3, i8** bitcast (%struct.VEC_ipa_reference_vars_info_t_heap** @ipa_reference_vars_vector to i8**), align 8, !dbg !4011
  br label %if.end, !dbg !4011

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !4010
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_ipa_reference_vars_info_t_base_space(%struct.VEC_ipa_reference_vars_info_t_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4013 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_reference_vars_info_t_base* %vec_, metadata !4017, metadata !DIExpression()), !dbg !4019
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !4018, metadata !DIExpression()), !dbg !4019
  %tobool = icmp eq %struct.VEC_ipa_reference_vars_info_t_base* %vec_, null, !dbg !4020
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !4020

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, %struct.VEC_ipa_reference_vars_info_t_base* %vec_, i64 0, i32 1, !dbg !4020
  %0 = load i32, i32* %alloc, align 4, !dbg !4020
  %num = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, %struct.VEC_ipa_reference_vars_info_t_base* %vec_, i64 0, i32 0, !dbg !4020
  %1 = load i32, i32* %num, align 8, !dbg !4020
  %sub = sub i32 %0, %1, !dbg !4020
  %cmp1 = icmp uge i32 %sub, %alloc_, !dbg !4020
  br label %cond.end, !dbg !4020

cond.false:                                       ; preds = %entry
  %tobool3 = icmp eq i32 %alloc_, 0, !dbg !4020
  br label %cond.end, !dbg !4020

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i1 [ %cmp1, %cond.true ], [ %tobool3, %cond.false ]
  %cond = zext i1 %cond.in to i32, !dbg !4020
  ret i32 %cond, !dbg !4020
}

declare dso_local i8* @vec_heap_p_reserve_exact(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ipa_init() unnamed_addr #5 !dbg !2108 {
entry:
  %.b = load i1, i1* @ipa_init.init_p, align 1, !dbg !4021
  br i1 %.b, label %return, label %if.end, !dbg !4023

if.end:                                           ; preds = %entry
  store i1 true, i1* @ipa_init.init_p, align 1, !dbg !4024
  %call = tail call %union.tree_node* @build_string(i32 7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !4025
  store %union.tree_node* %call, %union.tree_node** @memory_identifier_string, align 8, !dbg !4026
  %call1 = tail call %struct.splay_tree_s* @splay_tree_new_with_allocator(i32 (i64, i64)* nonnull @splay_tree_compare_ints, void (i64)* null, void (i64)* null, i8* (i32, i8*)* nonnull @ggc_splay_alloc, void (i8*, i8*)* nonnull @ggc_splay_dont_free, i8* null) #6, !dbg !4027
  store %struct.splay_tree_s* %call1, %struct.splay_tree_s** @reference_vars_to_consider, align 8, !dbg !4028
  tail call void @bitmap_obstack_initialize(%struct.bitmap_obstack* nonnull @local_info_obstack) #6, !dbg !4029
  tail call void @bitmap_obstack_initialize(%struct.bitmap_obstack* nonnull @global_info_obstack) #6, !dbg !4030
  %call2 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* nonnull @local_info_obstack) #6, !dbg !4031
  store %struct.bitmap_head_def* %call2, %struct.bitmap_head_def** @module_statics_escape, align 8, !dbg !4032
  %call3 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* nonnull @local_info_obstack) #6, !dbg !4033
  store %struct.bitmap_head_def* %call3, %struct.bitmap_head_def** @module_statics_written, align 8, !dbg !4034
  %call4 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* nonnull @global_info_obstack) #6, !dbg !4035
  store %struct.bitmap_head_def* %call4, %struct.bitmap_head_def** @all_module_statics, align 8, !dbg !4036
  %call5 = tail call %struct.pointer_set_t* @pointer_set_create() #6, !dbg !4037
  store %struct.pointer_set_t* %call5, %struct.pointer_set_t** @visited_nodes, align 8, !dbg !4038
  %call6 = tail call %struct.cgraph_node_hook_list* @cgraph_add_function_insertion_hook(void (%struct.cgraph_node*, i8*)* nonnull @add_new_function, i8* null) #6, !dbg !4039
  store %struct.cgraph_node_hook_list* %call6, %struct.cgraph_node_hook_list** @function_insertion_hook_holder, align 8, !dbg !4040
  %call7 = tail call %struct.cgraph_node_hook_list* @cgraph_add_node_removal_hook(void (%struct.cgraph_node*, i8*)* nonnull @remove_node_data, i8* null) #6, !dbg !4041
  store %struct.cgraph_node_hook_list* %call7, %struct.cgraph_node_hook_list** @node_removal_hook_holder, align 8, !dbg !4042
  %call8 = tail call %struct.cgraph_2node_hook_list* @cgraph_add_node_duplication_hook(void (%struct.cgraph_node*, %struct.cgraph_node*, i8*)* nonnull @duplicate_node_data, i8* null) #6, !dbg !4043
  store %struct.cgraph_2node_hook_list* %call8, %struct.cgraph_2node_hook_list** @node_duplication_hook_holder, align 8, !dbg !4044
  br label %return, !dbg !4045

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !4045
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.varpool_node* @varpool_first_static_initializer() unnamed_addr #0 !dbg !4046 {
entry:
  br label %for.cond, !dbg !4051

for.cond:                                         ; preds = %for.inc, %entry
  %node.0.in = phi %struct.varpool_node** [ @varpool_nodes_queue, %entry ], [ %next_needed, %for.inc ]
  %node.0 = load %struct.varpool_node*, %struct.varpool_node** %node.0.in, align 8, !dbg !4053
  call void @llvm.dbg.value(metadata %struct.varpool_node* %node.0, metadata !4050, metadata !DIExpression()), !dbg !4054
  %tobool = icmp eq %struct.varpool_node* %node.0, null, !dbg !4055
  br i1 %tobool, label %cleanup, label %for.body, !dbg !4055

for.body:                                         ; preds = %for.cond
  %0 = bitcast %struct.varpool_node* %node.0 to i64**, !dbg !4056
  %1 = load i64*, i64** %0, align 8, !dbg !4056
  %bf.load = load i64, i64* %1, align 8, !dbg !4056
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4056
  %cmp = icmp eq i64 %bf.cast1, 32, !dbg !4056
  br i1 %cmp, label %for.body.cond.end_crit_edge, label %cond.true, !dbg !4056

for.body.cond.end_crit_edge:                      ; preds = %for.body
  %2 = bitcast i64* %1 to %struct.tree_decl_common*, !dbg !4056
  br label %cond.end, !dbg !4056

cond.true:                                        ; preds = %for.body
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i32 595, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4056
  %.phi.trans.insert = bitcast %struct.varpool_node* %node.0 to %struct.tree_decl_common**, !dbg !4059
  %.pre = load %struct.tree_decl_common*, %struct.tree_decl_common** %.phi.trans.insert, align 8, !dbg !4061
  br label %cond.end, !dbg !4056

cond.end:                                         ; preds = %for.body.cond.end_crit_edge, %cond.true
  %3 = phi %struct.tree_decl_common* [ %2, %for.body.cond.end_crit_edge ], [ %.pre, %cond.true ], !dbg !4061
  %initial = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %3, i64 0, i32 5, !dbg !4061
  %4 = load %union.tree_node*, %union.tree_node** %initial, align 8, !dbg !4061
  %tobool2 = icmp eq %union.tree_node* %4, null, !dbg !4061
  br i1 %tobool2, label %for.inc, label %cleanup, !dbg !4062

for.inc:                                          ; preds = %cond.end
  %next_needed = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %node.0, i64 0, i32 2, !dbg !4063
  br label %for.cond, !dbg !4064, !llvm.loop !4065

cleanup:                                          ; preds = %cond.end, %for.cond
  %retval.0 = phi %struct.varpool_node* [ %node.0, %cond.end ], [ null, %for.cond ], !dbg !4054
  ret %struct.varpool_node* %retval.0, !dbg !4067
}

; Function Attrs: nounwind uwtable
define internal fastcc void @analyze_variable(%struct.varpool_node* %vnode) unnamed_addr #5 !dbg !4068 {
entry:
  %wi = alloca %struct.walk_stmt_info, align 8
  call void @llvm.dbg.value(metadata %struct.varpool_node* %vnode, metadata !4070, metadata !DIExpression()), !dbg !4089
  %0 = bitcast %struct.walk_stmt_info* %wi to i8*, !dbg !4090
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #8, !dbg !4090
  %1 = bitcast %struct.varpool_node* %vnode to %struct.tree_decl_common**, !dbg !4091
  %2 = load %struct.tree_decl_common*, %struct.tree_decl_common** %1, align 8, !dbg !4091
  %call = call i8* @memset(i8* nonnull %0, i32 0, i64 56) #6, !dbg !4092
  %3 = load i64, i64* bitcast (%struct.pointer_set_t** @visited_nodes to i64*), align 8, !dbg !4093
  %pset = getelementptr inbounds %struct.walk_stmt_info, %struct.walk_stmt_info* %wi, i64 0, i32 2, !dbg !4094
  %4 = bitcast %struct.pointer_set_t** %pset to i64*, !dbg !4095
  store i64 %3, i64* %4, align 8, !dbg !4095
  %initial = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %2, i64 0, i32 5, !dbg !4096
  %.cast = inttoptr i64 %3 to %struct.pointer_set_t*, !dbg !4096
  %call2 = call %union.tree_node* @walk_tree_1(%union.tree_node** nonnull %initial, %union.tree_node* (%union.tree_node**, i32*, i8*)* nonnull @scan_initializer_for_static_refs, i8* nonnull %0, %struct.pointer_set_t* %.cast, %union.tree_node* (%union.tree_node**, i32*, %union.tree_node* (%union.tree_node**, i32*, i8*)*, i8*, %struct.pointer_set_t*)* null) #6, !dbg !4096
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #8, !dbg !4097
  ret void, !dbg !4097
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.varpool_node* @varpool_next_static_initializer(%struct.varpool_node* %node) unnamed_addr #0 !dbg !4098 {
entry:
  call void @llvm.dbg.value(metadata %struct.varpool_node* %node, metadata !4102, metadata !DIExpression()), !dbg !4103
  br label %for.cond, !dbg !4104

for.cond:                                         ; preds = %for.inc, %entry
  %node.pn = phi %struct.varpool_node* [ %node, %entry ], [ %node.addr.0, %for.inc ]
  %node.addr.0.in = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %node.pn, i64 0, i32 2, !dbg !4106
  %node.addr.0 = load %struct.varpool_node*, %struct.varpool_node** %node.addr.0.in, align 8, !dbg !4106
  call void @llvm.dbg.value(metadata %struct.varpool_node* %node.addr.0, metadata !4102, metadata !DIExpression()), !dbg !4103
  %tobool = icmp eq %struct.varpool_node* %node.addr.0, null, !dbg !4107
  br i1 %tobool, label %return, label %for.body, !dbg !4107

for.body:                                         ; preds = %for.cond
  %0 = bitcast %struct.varpool_node* %node.addr.0 to i64**, !dbg !4108
  %1 = load i64*, i64** %0, align 8, !dbg !4108
  %bf.load = load i64, i64* %1, align 8, !dbg !4108
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4108
  %cmp = icmp eq i64 %bf.cast1, 32, !dbg !4108
  br i1 %cmp, label %for.body.cond.end_crit_edge, label %cond.true, !dbg !4108

for.body.cond.end_crit_edge:                      ; preds = %for.body
  %2 = bitcast i64* %1 to %struct.tree_decl_common*, !dbg !4108
  br label %cond.end, !dbg !4108

cond.true:                                        ; preds = %for.body
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i32 608, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4108
  %.phi.trans.insert = bitcast %struct.varpool_node* %node.addr.0 to %struct.tree_decl_common**, !dbg !4111
  %.pre = load %struct.tree_decl_common*, %struct.tree_decl_common** %.phi.trans.insert, align 8, !dbg !4113
  br label %cond.end, !dbg !4108

cond.end:                                         ; preds = %for.body.cond.end_crit_edge, %cond.true
  %3 = phi %struct.tree_decl_common* [ %2, %for.body.cond.end_crit_edge ], [ %.pre, %cond.true ], !dbg !4113
  %initial = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %3, i64 0, i32 5, !dbg !4113
  %4 = load %union.tree_node*, %union.tree_node** %initial, align 8, !dbg !4113
  %tobool2 = icmp eq %union.tree_node* %4, null, !dbg !4113
  br i1 %tobool2, label %for.inc, label %return, !dbg !4114

for.inc:                                          ; preds = %cond.end
  br label %for.cond, !dbg !4115, !llvm.loop !4116

return:                                           ; preds = %cond.end, %for.cond
  %retval.0 = phi %struct.varpool_node* [ %node.addr.0, %cond.end ], [ null, %for.cond ], !dbg !4103
  ret %struct.varpool_node* %retval.0, !dbg !4118
}

; Function Attrs: nounwind uwtable
define internal fastcc void @analyze_function(%struct.cgraph_node* %fn) unnamed_addr #5 !dbg !4119 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %iter = alloca %struct.ssa_operand_iterator_d, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %tmp26 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %fn, metadata !4121, metadata !DIExpression()), !dbg !4146
  %decl1 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %fn, i64 0, i32 0, !dbg !4147
  %0 = load %union.tree_node*, %union.tree_node** %decl1, align 8, !dbg !4147
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !4122, metadata !DIExpression()), !dbg !4146
  %f = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 1, !dbg !4148
  %1 = load %struct.function*, %struct.function** %f, align 8, !dbg !4148
  call void @llvm.dbg.value(metadata %struct.function* %1, metadata !4123, metadata !DIExpression()), !dbg !4146
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4149
  %tobool = icmp eq %struct._IO_FILE* %2, null, !dbg !4149
  br i1 %tobool, label %if.end, label %if.then, !dbg !4151

if.then:                                          ; preds = %entry
  %call = tail call i8* @cgraph_node_name(%struct.cgraph_node* %fn) #6, !dbg !4152
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i8* %call) #6, !dbg !4153
  %.pre = load %struct.function*, %struct.function** %f, align 8, !dbg !4154
  br label %if.end, !dbg !4153

if.end:                                           ; preds = %entry, %if.then
  %3 = phi %struct.function* [ %1, %entry ], [ %.pre, %if.then ], !dbg !4154
  tail call void @push_cfun(%struct.function* %3) #6, !dbg !4155
  store %union.tree_node* %0, %union.tree_node** @current_function_decl, align 8, !dbg !4156
  %call5 = tail call fastcc %struct.ipa_reference_local_vars_info_d* @init_function_info(%struct.cgraph_node* %fn) #7, !dbg !4157
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !4158
  %4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4158
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %4, i64 0, i32 0, !dbg !4158
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !4158
  %6 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !4159
  %7 = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %iter, i64 0, i32 0, !dbg !4159
  %8 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !4160
  %9 = bitcast %struct.gimple_stmt_iterator* %tmp26 to i8*, !dbg !4162
  br label %for.cond, !dbg !4158

for.cond:                                         ; preds = %for.end34, %if.end
  %10 = phi %struct.control_flow_graph* [ %4, %if.end ], [ %.pre2, %for.end34 ], !dbg !4164
  %.pn = phi %struct.basic_block_def* [ %5, %if.end ], [ %this_block.0, %for.end34 ]
  %this_block.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !4165
  %this_block.0 = load %struct.basic_block_def*, %struct.basic_block_def** %this_block.0.in, align 8, !dbg !4165
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %this_block.0, metadata !4124, metadata !DIExpression()), !dbg !4146
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %10, i64 0, i32 1, !dbg !4164
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !4164
  %cmp = icmp eq %struct.basic_block_def* %this_block.0, %11, !dbg !4164
  br i1 %cmp, label %for.end37, label %for.body, !dbg !4158

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #8, !dbg !4166
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %7) #8, !dbg !4167
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #8, !dbg !4168
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %this_block.0) #6, !dbg !4168
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* nonnull align 8 %8, i64 24, i1 false), !dbg !4168
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #8, !dbg !4168
  br label %for.cond7, !dbg !4169

for.cond7:                                        ; preds = %for.inc24, %for.body
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4126, metadata !DIExpression(DW_OP_deref)), !dbg !4159
  %call8 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !4170
  %tobool9 = icmp eq i8 %call8, 0, !dbg !4172
  br i1 %tobool9, label %for.body10, label %for.end25, !dbg !4173

for.body10:                                       ; preds = %for.cond7
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4126, metadata !DIExpression(DW_OP_deref)), !dbg !4159
  %call11 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !4174
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call11, metadata !4130, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !4133, metadata !DIExpression(DW_OP_deref)), !dbg !4159
  %call12 = call fastcc %struct.ssa_use_operand_d* @op_iter_init_phiuse(%struct.ssa_operand_iterator_d* nonnull %iter, %union.gimple_statement_d* %call11, i32 1) #7, !dbg !4176
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call12, metadata !4132, metadata !DIExpression()), !dbg !4159
  br label %for.cond13, !dbg !4176

for.cond13:                                       ; preds = %for.inc, %for.body10
  %use.0 = phi %struct.ssa_use_operand_d* [ %call12, %for.body10 ], [ %call23, %for.inc ], !dbg !4178
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use.0, metadata !4132, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !4133, metadata !DIExpression(DW_OP_deref)), !dbg !4159
  %call14 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !4179
  %tobool15 = icmp eq i8 %call14, 0, !dbg !4179
  br i1 %tobool15, label %for.body17, label %for.inc24, !dbg !4176

for.body17:                                       ; preds = %for.cond13
  %call18 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use.0) #7, !dbg !4181
  call void @llvm.dbg.value(metadata %union.tree_node* %call18, metadata !4131, metadata !DIExpression()), !dbg !4159
  %12 = getelementptr inbounds %union.tree_node, %union.tree_node* %call18, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4183
  %bf.load = load i64, i64* %12, align 8, !dbg !4183
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4185
  %cmp19 = icmp eq i64 %bf.cast1, 121, !dbg !4185
  br i1 %cmp19, label %if.then20, label %for.inc, !dbg !4186

if.then20:                                        ; preds = %for.body17
  %call21 = call %union.tree_node* @get_base_var(%union.tree_node* %call18) #6, !dbg !4187
  call fastcc void @mark_address_taken(%union.tree_node* %call21) #7, !dbg !4188
  br label %for.inc, !dbg !4188

for.inc:                                          ; preds = %for.body17, %if.then20
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !4133, metadata !DIExpression(DW_OP_deref)), !dbg !4159
  %call23 = call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !4179
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call23, metadata !4132, metadata !DIExpression()), !dbg !4159
  br label %for.cond13, !dbg !4179, !llvm.loop !4189

for.inc24:                                        ; preds = %for.cond13
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4126, metadata !DIExpression(DW_OP_deref)), !dbg !4159
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !4191
  br label %for.cond7, !dbg !4192, !llvm.loop !4193

for.end25:                                        ; preds = %for.cond7
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #8, !dbg !4195
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp26, %struct.basic_block_def* %this_block.0) #7, !dbg !4195
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* nonnull align 8 %9, i64 24, i1 false), !dbg !4195
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #8, !dbg !4195
  br label %for.cond27, !dbg !4196

for.cond27:                                       ; preds = %for.body31, %for.end25
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4126, metadata !DIExpression(DW_OP_deref)), !dbg !4159
  %call28 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !4197
  %tobool29 = icmp eq i8 %call28, 0, !dbg !4199
  br i1 %tobool29, label %for.body31, label %for.end34, !dbg !4200

for.body31:                                       ; preds = %for.cond27
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4126, metadata !DIExpression(DW_OP_deref)), !dbg !4159
  %call32 = call fastcc %union.tree_node* @scan_stmt_for_static_refs(%struct.gimple_stmt_iterator* nonnull %gsi, %struct.cgraph_node* %fn) #7, !dbg !4201
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4126, metadata !DIExpression(DW_OP_deref)), !dbg !4159
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !4202
  br label %for.cond27, !dbg !4203, !llvm.loop !4204

for.end34:                                        ; preds = %for.cond27
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %7) #8, !dbg !4206
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #8, !dbg !4206
  %.pre2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4164
  br label %for.cond, !dbg !4164, !llvm.loop !4207

for.end37:                                        ; preds = %for.cond
  %call38 = call fastcc %struct.ipa_reference_vars_info_d* @get_reference_vars_info(%struct.cgraph_node* %fn) #7, !dbg !4209
  %local39 = getelementptr inbounds %struct.ipa_reference_vars_info_d, %struct.ipa_reference_vars_info_d* %call38, i64 0, i32 0, !dbg !4210
  %13 = load %struct.ipa_reference_local_vars_info_d*, %struct.ipa_reference_local_vars_info_d** %local39, align 8, !dbg !4210
  call void @llvm.dbg.value(metadata %struct.ipa_reference_local_vars_info_d* %13, metadata !4125, metadata !DIExpression()), !dbg !4146
  %call40 = call i32 @flags_from_decl_or_type(%union.tree_node* %0) #6, !dbg !4211
  %and = and i32 %call40, 72, !dbg !4213
  %cmp41 = icmp eq i32 %and, 72, !dbg !4214
  br i1 %cmp41, label %if.then42, label %if.end43, !dbg !4215

if.then42:                                        ; preds = %for.end37
  %calls_write_all = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %13, i64 0, i32 3, !dbg !4216
  store i8 0, i8* %calls_write_all, align 1, !dbg !4218
  %statics_written = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %13, i64 0, i32 1, !dbg !4219
  %14 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_written, align 8, !dbg !4219
  call void @bitmap_clear(%struct.bitmap_head_def* %14) #6, !dbg !4220
  br label %if.end43, !dbg !4221

if.end43:                                         ; preds = %if.then42, %for.end37
  %calls_write_all44 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %13, i64 0, i32 3, !dbg !4222
  %15 = load i8, i8* %calls_write_all44, align 1, !dbg !4222
  %tobool45 = icmp eq i8 %15, 0, !dbg !4224
  br i1 %tobool45, label %if.end49, label %if.then46, !dbg !4225

if.then46:                                        ; preds = %if.end43
  %statics_written47 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %13, i64 0, i32 1, !dbg !4226
  %16 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_written47, align 8, !dbg !4226
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %16) #6, !dbg !4226
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %statics_written47, align 8, !dbg !4226
  br label %if.end49, !dbg !4226

if.end49:                                         ; preds = %if.end43, %if.then46
  %calls_read_all = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %13, i64 0, i32 2, !dbg !4227
  %17 = load i8, i8* %calls_read_all, align 8, !dbg !4227
  %tobool50 = icmp eq i8 %17, 0, !dbg !4229
  br i1 %tobool50, label %if.end53, label %if.then51, !dbg !4230

if.then51:                                        ; preds = %if.end49
  %statics_read = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %13, i64 0, i32 0, !dbg !4231
  %18 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_read, align 8, !dbg !4231
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %18) #6, !dbg !4231
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %statics_read, align 8, !dbg !4231
  br label %if.end53, !dbg !4231

if.end53:                                         ; preds = %if.end49, %if.then51
  call void @pop_cfun() #6, !dbg !4232
  store %union.tree_node* null, %union.tree_node** @current_function_decl, align 8, !dbg !4233
  ret void, !dbg !4234
}

declare dso_local void @pointer_set_destroy(%struct.pointer_set_t*) local_unnamed_addr #2

declare dso_local void @splay_tree_remove(%struct.splay_tree_s*, i64) local_unnamed_addr #2

declare dso_local zeroext i8 @bitmap_and_compl_into(%struct.bitmap_head_def*, %struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @get_static_decl(i32 %index) unnamed_addr #5 !dbg !4235 {
entry:
  call void @llvm.dbg.value(metadata i32 %index, metadata !4239, metadata !DIExpression()), !dbg !4241
  %0 = load %struct.splay_tree_s*, %struct.splay_tree_s** @reference_vars_to_consider, align 8, !dbg !4242
  %conv = sext i32 %index to i64, !dbg !4243
  %call = tail call %struct.splay_tree_node_s* @splay_tree_lookup(%struct.splay_tree_s* %0, i64 %conv) #6, !dbg !4244
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %call, metadata !4240, metadata !DIExpression()), !dbg !4241
  %tobool = icmp eq %struct.splay_tree_node_s* %call, null, !dbg !4245
  br i1 %tobool, label %cleanup, label %if.then, !dbg !4247

if.then:                                          ; preds = %entry
  %value = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %call, i64 0, i32 1, !dbg !4248
  %1 = bitcast i64* %value to %union.tree_node**, !dbg !4248
  %2 = load %union.tree_node*, %union.tree_node** %1, align 8, !dbg !4248
  br label %cleanup, !dbg !4249

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %2, %if.then ], [ null, %entry ], !dbg !4241
  ret %union.tree_node* %retval.0, !dbg !4250
}

declare dso_local void @bitmap_and_into(%struct.bitmap_head_def*, %struct.bitmap_head_def*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_string(i32, i8*) local_unnamed_addr #2

declare dso_local %struct.splay_tree_s* @splay_tree_new_with_allocator(i32 (i64, i64)*, void (i64)*, void (i64)*, i8* (i32, i8*)*, void (i8*, i8*)*, i8*) local_unnamed_addr #2

declare dso_local i32 @splay_tree_compare_ints(i64, i64) #2

declare dso_local i8* @ggc_splay_alloc(i32, i8*) #2

declare dso_local void @ggc_splay_dont_free(i8*, i8*) #2

declare dso_local void @bitmap_obstack_initialize(%struct.bitmap_obstack*) local_unnamed_addr #2

declare dso_local %struct.pointer_set_t* @pointer_set_create() local_unnamed_addr #2

declare dso_local %struct.cgraph_node_hook_list* @cgraph_add_function_insertion_hook(void (%struct.cgraph_node*, i8*)*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @add_new_function(%struct.cgraph_node* %node, i8* %data) #5 !dbg !4251 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !4255, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i8* %data, metadata !4256, metadata !DIExpression()), !dbg !4257
  tail call fastcc void @analyze_function(%struct.cgraph_node* %node) #7, !dbg !4258
  store %struct.pointer_set_t* null, %struct.pointer_set_t** @visited_nodes, align 8, !dbg !4259
  ret void, !dbg !4260
}

declare dso_local %struct.cgraph_node_hook_list* @cgraph_add_node_removal_hook(void (%struct.cgraph_node*, i8*)*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @remove_node_data(%struct.cgraph_node* %node, i8* %data) #5 !dbg !4261 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !4263, metadata !DIExpression()), !dbg !4265
  call void @llvm.dbg.value(metadata i8* %data, metadata !4264, metadata !DIExpression()), !dbg !4265
  %call = tail call fastcc %struct.ipa_reference_vars_info_d* @get_reference_vars_info(%struct.cgraph_node* %node) #7, !dbg !4266
  %tobool = icmp eq %struct.ipa_reference_vars_info_d* %call, null, !dbg !4266
  br i1 %tobool, label %if.end, label %if.then, !dbg !4268

if.then:                                          ; preds = %entry
  tail call fastcc void @clean_function(%struct.cgraph_node* %node) #7, !dbg !4269
  br label %if.end, !dbg !4269

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !4270
}

declare dso_local %struct.cgraph_2node_hook_list* @cgraph_add_node_duplication_hook(void (%struct.cgraph_node*, %struct.cgraph_node*, i8*)*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @duplicate_node_data(%struct.cgraph_node* %src, %struct.cgraph_node* %dst, i8* %data) #5 !dbg !4271 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %src, metadata !4275, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %dst, metadata !4276, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata i8* %data, metadata !4277, metadata !DIExpression()), !dbg !4282
  %call = tail call fastcc %struct.ipa_reference_global_vars_info_d* @get_global_reference_vars_info(%struct.cgraph_node* %src) #7, !dbg !4283
  call void @llvm.dbg.value(metadata %struct.ipa_reference_global_vars_info_d* %call, metadata !4278, metadata !DIExpression()), !dbg !4282
  %call1 = tail call fastcc %struct.ipa_reference_local_vars_info_d* @get_local_reference_vars_info(%struct.cgraph_node* %src) #7, !dbg !4284
  call void @llvm.dbg.value(metadata %struct.ipa_reference_local_vars_info_d* %call1, metadata !4279, metadata !DIExpression()), !dbg !4282
  %tobool = icmp ne %struct.ipa_reference_local_vars_info_d* %call1, null, !dbg !4285
  %tobool2 = icmp ne %struct.ipa_reference_global_vars_info_d* %call, null, !dbg !4287
  %or.cond = or i1 %tobool, %tobool2, !dbg !4288
  br i1 %or.cond, label %if.end, label %cleanup.cont, !dbg !4288

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc %struct.ipa_reference_local_vars_info_d* @init_function_info(%struct.cgraph_node* %dst) #7, !dbg !4289
  %tobool4 = icmp eq %struct.ipa_reference_local_vars_info_d* %call1, null, !dbg !4290
  br i1 %tobool4, label %if.end13, label %if.then5, !dbg !4292

if.then5:                                         ; preds = %if.end
  %call6 = tail call fastcc %struct.ipa_reference_local_vars_info_d* @get_local_reference_vars_info(%struct.cgraph_node* %dst) #7, !dbg !4293
  call void @llvm.dbg.value(metadata %struct.ipa_reference_local_vars_info_d* %call6, metadata !4281, metadata !DIExpression()), !dbg !4282
  %statics_read = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %call1, i64 0, i32 0, !dbg !4295
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_read, align 8, !dbg !4295
  %call7 = tail call fastcc %struct.bitmap_head_def* @copy_local_bitmap(%struct.bitmap_head_def* %0) #7, !dbg !4296
  %statics_read8 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %call6, i64 0, i32 0, !dbg !4297
  store %struct.bitmap_head_def* %call7, %struct.bitmap_head_def** %statics_read8, align 8, !dbg !4298
  %statics_written = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %call1, i64 0, i32 1, !dbg !4299
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_written, align 8, !dbg !4299
  %call9 = tail call fastcc %struct.bitmap_head_def* @copy_local_bitmap(%struct.bitmap_head_def* %1) #7, !dbg !4300
  %statics_written10 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %call6, i64 0, i32 1, !dbg !4301
  store %struct.bitmap_head_def* %call9, %struct.bitmap_head_def** %statics_written10, align 8, !dbg !4302
  %calls_read_all = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %call1, i64 0, i32 2, !dbg !4303
  %2 = load i8, i8* %calls_read_all, align 8, !dbg !4303
  %calls_read_all11 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %call6, i64 0, i32 2, !dbg !4304
  store i8 %2, i8* %calls_read_all11, align 8, !dbg !4305
  %calls_write_all = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %call1, i64 0, i32 3, !dbg !4306
  %3 = load i8, i8* %calls_write_all, align 1, !dbg !4306
  %calls_write_all12 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %call6, i64 0, i32 3, !dbg !4307
  store i8 %3, i8* %calls_write_all12, align 1, !dbg !4308
  br label %if.end13, !dbg !4309

if.end13:                                         ; preds = %if.end, %if.then5
  %tobool14 = icmp eq %struct.ipa_reference_global_vars_info_d* %call, null, !dbg !4310
  br i1 %tobool14, label %cleanup.cont, label %if.then15, !dbg !4312

if.then15:                                        ; preds = %if.end13
  %call16 = tail call i8* @xcalloc(i64 1, i64 32) #6, !dbg !4313
  %call17 = tail call fastcc %struct.ipa_reference_vars_info_d* @get_reference_vars_info(%struct.cgraph_node* %dst) #7, !dbg !4315
  %global = getelementptr inbounds %struct.ipa_reference_vars_info_d, %struct.ipa_reference_vars_info_d* %call17, i64 0, i32 1, !dbg !4316
  %4 = bitcast %struct.ipa_reference_global_vars_info_d** %global to i8**, !dbg !4317
  store i8* %call16, i8** %4, align 8, !dbg !4317
  %call18 = tail call fastcc %struct.ipa_reference_global_vars_info_d* @get_global_reference_vars_info(%struct.cgraph_node* %dst) #7, !dbg !4318
  call void @llvm.dbg.value(metadata %struct.ipa_reference_global_vars_info_d* %call18, metadata !4280, metadata !DIExpression()), !dbg !4282
  %statics_read19 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, %struct.ipa_reference_global_vars_info_d* %call, i64 0, i32 0, !dbg !4319
  %5 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_read19, align 8, !dbg !4319
  %call20 = tail call fastcc %struct.bitmap_head_def* @copy_global_bitmap(%struct.bitmap_head_def* %5) #7, !dbg !4320
  %statics_read21 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, %struct.ipa_reference_global_vars_info_d* %call18, i64 0, i32 0, !dbg !4321
  store %struct.bitmap_head_def* %call20, %struct.bitmap_head_def** %statics_read21, align 8, !dbg !4322
  %statics_written22 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, %struct.ipa_reference_global_vars_info_d* %call, i64 0, i32 1, !dbg !4323
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_written22, align 8, !dbg !4323
  %call23 = tail call fastcc %struct.bitmap_head_def* @copy_global_bitmap(%struct.bitmap_head_def* %6) #7, !dbg !4324
  %statics_written24 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, %struct.ipa_reference_global_vars_info_d* %call18, i64 0, i32 1, !dbg !4325
  store %struct.bitmap_head_def* %call23, %struct.bitmap_head_def** %statics_written24, align 8, !dbg !4326
  %statics_not_read = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, %struct.ipa_reference_global_vars_info_d* %call, i64 0, i32 2, !dbg !4327
  %7 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_not_read, align 8, !dbg !4327
  %call25 = tail call fastcc %struct.bitmap_head_def* @copy_global_bitmap(%struct.bitmap_head_def* %7) #7, !dbg !4328
  %statics_not_read26 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, %struct.ipa_reference_global_vars_info_d* %call18, i64 0, i32 2, !dbg !4329
  store %struct.bitmap_head_def* %call25, %struct.bitmap_head_def** %statics_not_read26, align 8, !dbg !4330
  %statics_not_written = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, %struct.ipa_reference_global_vars_info_d* %call, i64 0, i32 3, !dbg !4331
  %8 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_not_written, align 8, !dbg !4331
  %call27 = tail call fastcc %struct.bitmap_head_def* @copy_global_bitmap(%struct.bitmap_head_def* %8) #7, !dbg !4332
  %statics_not_written28 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, %struct.ipa_reference_global_vars_info_d* %call18, i64 0, i32 3, !dbg !4333
  store %struct.bitmap_head_def* %call27, %struct.bitmap_head_def** %statics_not_written28, align 8, !dbg !4334
  br label %cleanup.cont, !dbg !4335

cleanup.cont:                                     ; preds = %if.end13, %entry, %if.then15
  ret void, !dbg !4336
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.ipa_reference_local_vars_info_d* @get_local_reference_vars_info(%struct.cgraph_node* %fn) unnamed_addr #5 !dbg !4337 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %fn, metadata !4341, metadata !DIExpression()), !dbg !4343
  %call = tail call fastcc %struct.ipa_reference_vars_info_d* @get_reference_vars_info(%struct.cgraph_node* %fn) #7, !dbg !4344
  call void @llvm.dbg.value(metadata %struct.ipa_reference_vars_info_d* %call, metadata !4342, metadata !DIExpression()), !dbg !4343
  %tobool = icmp eq %struct.ipa_reference_vars_info_d* %call, null, !dbg !4345
  br i1 %tobool, label %cleanup, label %if.then, !dbg !4347

if.then:                                          ; preds = %entry
  %local = getelementptr inbounds %struct.ipa_reference_vars_info_d, %struct.ipa_reference_vars_info_d* %call, i64 0, i32 0, !dbg !4348
  %0 = load %struct.ipa_reference_local_vars_info_d*, %struct.ipa_reference_local_vars_info_d** %local, align 8, !dbg !4348
  br label %cleanup, !dbg !4349

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %struct.ipa_reference_local_vars_info_d* [ %0, %if.then ], [ null, %entry ], !dbg !4350
  ret %struct.ipa_reference_local_vars_info_d* %retval.0, !dbg !4351
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.ipa_reference_local_vars_info_d* @init_function_info(%struct.cgraph_node* %fn) unnamed_addr #5 !dbg !4352 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %fn, metadata !4354, metadata !DIExpression()), !dbg !4357
  %call = tail call i8* @xcalloc(i64 1, i64 16) #6, !dbg !4358
  %0 = bitcast i8* %call to %struct.ipa_reference_vars_info_d*, !dbg !4358
  call void @llvm.dbg.value(metadata %struct.ipa_reference_vars_info_d* %0, metadata !4355, metadata !DIExpression()), !dbg !4357
  %call1 = tail call i8* @xcalloc(i64 1, i64 24) #6, !dbg !4359
  %1 = bitcast i8* %call1 to %struct.ipa_reference_local_vars_info_d*, !dbg !4359
  call void @llvm.dbg.value(metadata %struct.ipa_reference_local_vars_info_d* %1, metadata !4356, metadata !DIExpression()), !dbg !4357
  tail call fastcc void @set_reference_vars_info(%struct.cgraph_node* %fn, %struct.ipa_reference_vars_info_d* %0) #7, !dbg !4360
  %2 = bitcast i8* %call to i8**, !dbg !4361
  store i8* %call1, i8** %2, align 8, !dbg !4361
  %call2 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* nonnull @local_info_obstack) #6, !dbg !4362
  %statics_read = bitcast i8* %call1 to %struct.bitmap_head_def**, !dbg !4363
  store %struct.bitmap_head_def* %call2, %struct.bitmap_head_def** %statics_read, align 8, !dbg !4364
  %call3 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* nonnull @local_info_obstack) #6, !dbg !4365
  %statics_written = getelementptr inbounds i8, i8* %call1, i64 8, !dbg !4366
  %3 = bitcast i8* %statics_written to %struct.bitmap_head_def**, !dbg !4366
  store %struct.bitmap_head_def* %call3, %struct.bitmap_head_def** %3, align 8, !dbg !4367
  ret %struct.ipa_reference_local_vars_info_d* %1, !dbg !4368
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.bitmap_head_def* @copy_local_bitmap(%struct.bitmap_head_def* %src) unnamed_addr #5 !dbg !4369 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %src, metadata !4371, metadata !DIExpression()), !dbg !4373
  %tobool = icmp eq %struct.bitmap_head_def* %src, null, !dbg !4374
  br i1 %tobool, label %cleanup, label %if.end, !dbg !4376

if.end:                                           ; preds = %entry
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @all_module_statics, align 8, !dbg !4377
  %cmp = icmp eq %struct.bitmap_head_def* %0, %src, !dbg !4379
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4380

if.then1:                                         ; preds = %if.end
  br label %cleanup, !dbg !4381

if.end2:                                          ; preds = %if.end
  %call = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* nonnull @local_info_obstack) #6, !dbg !4382
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call, metadata !4372, metadata !DIExpression()), !dbg !4373
  tail call void @bitmap_copy(%struct.bitmap_head_def* %call, %struct.bitmap_head_def* nonnull %src) #6, !dbg !4383
  br label %cleanup, !dbg !4384

cleanup:                                          ; preds = %entry, %if.end2, %if.then1
  %retval.0 = phi %struct.bitmap_head_def* [ %src, %if.then1 ], [ %call, %if.end2 ], [ null, %entry ], !dbg !4373
  ret %struct.bitmap_head_def* %retval.0, !dbg !4385
}

declare dso_local %union.tree_node* @walk_tree_1(%union.tree_node**, %union.tree_node* (%union.tree_node**, i32*, i8*)*, i8*, %struct.pointer_set_t*, %union.tree_node* (%union.tree_node**, i32*, %union.tree_node* (%union.tree_node**, i32*, i8*)*, i8*, %struct.pointer_set_t*)*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @scan_initializer_for_static_refs(%union.tree_node** %tp, i32* %walk_subtrees, i8* %data) #5 !dbg !4386 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %tp, metadata !4391, metadata !DIExpression()), !dbg !4395
  call void @llvm.dbg.value(metadata i32* %walk_subtrees, metadata !4392, metadata !DIExpression()), !dbg !4395
  call void @llvm.dbg.value(metadata i8* %data, metadata !4393, metadata !DIExpression()), !dbg !4395
  %0 = load %union.tree_node*, %union.tree_node** %tp, align 8, !dbg !4396
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !4394, metadata !DIExpression()), !dbg !4395
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4397
  %bf.load = load i64, i64* %1, align 8, !dbg !4397
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4399
  %cmp = icmp eq i64 %bf.cast1, 121, !dbg !4399
  br i1 %cmp, label %if.then, label %if.else, !dbg !4400

if.then:                                          ; preds = %entry
  %call = tail call %union.tree_node* @get_base_var(%union.tree_node* %0) #6, !dbg !4401
  tail call fastcc void @mark_address_taken(%union.tree_node* %call) #7, !dbg !4403
  store i32 0, i32* %walk_subtrees, align 4, !dbg !4404
  br label %if.end14, !dbg !4405

if.else:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast1, !dbg !4406
  %2 = load i32, i32* %arrayidx, align 4, !dbg !4406
  %cmp5 = icmp eq i32 %2, 2, !dbg !4406
  br i1 %cmp5, label %if.then13, label %lor.lhs.false, !dbg !4406

lor.lhs.false:                                    ; preds = %if.else
  %cmp12 = icmp eq i32 %2, 3, !dbg !4406
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !4408

if.then13:                                        ; preds = %lor.lhs.false, %if.else
  store i32 0, i32* %walk_subtrees, align 4, !dbg !4409
  br label %if.end14, !dbg !4410

if.end14:                                         ; preds = %lor.lhs.false, %if.then13, %if.then
  ret %union.tree_node* null, !dbg !4411
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mark_address_taken(%union.tree_node* %x) unnamed_addr #5 !dbg !4412 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %x, metadata !4416, metadata !DIExpression()), !dbg !4417
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %x, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4418
  %bf.load = load i64, i64* %0, align 8, !dbg !4418
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4420
  %cmp = icmp eq i64 %bf.cast1, 32, !dbg !4420
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @module_statics_escape, align 8, !dbg !4421
  %tobool = icmp ne %struct.bitmap_head_def* %1, null, !dbg !4421
  %or.cond = and i1 %cmp, %tobool, !dbg !4422
  br i1 %or.cond, label %land.lhs.true1, label %if.end, !dbg !4422

land.lhs.true1:                                   ; preds = %entry
  %call = tail call fastcc zeroext i8 @has_proper_scope_for_analysis(%union.tree_node* %x) #7, !dbg !4423
  %tobool2 = icmp eq i8 %call, 0, !dbg !4423
  br i1 %tobool2, label %if.end, label %if.then, !dbg !4424

if.then:                                          ; preds = %land.lhs.true1
  %2 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @module_statics_escape, align 8, !dbg !4425
  %uid = getelementptr inbounds %union.tree_node, %union.tree_node* %x, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4426
  %3 = load i32, i32* %uid, align 4, !dbg !4426
  %call3 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %2, i32 %3) #6, !dbg !4427
  br label %if.end, !dbg !4427

if.end:                                           ; preds = %land.lhs.true1, %if.then, %entry
  ret void, !dbg !4428
}

declare dso_local %union.tree_node* @get_base_var(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @has_proper_scope_for_analysis(%union.tree_node* %t) unnamed_addr #0 !dbg !4429 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !4433, metadata !DIExpression()), !dbg !4434
  %preserve_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4435
  %0 = bitcast i40* %preserve_flag to i64*, !dbg !4435
  %bf.load = load i64, i64* %0, align 8, !dbg !4435
  %bf.cast1 = and i64 %bf.load, 8192, !dbg !4435
  %tobool = icmp eq i64 %bf.cast1, 0, !dbg !4435
  br i1 %tobool, label %if.end, label %return, !dbg !4437

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4438
  %bf.load1 = load i64, i64* %1, align 8, !dbg !4438
  %bf.cast42 = and i64 %bf.load1, 524288, !dbg !4438
  %tobool5 = icmp eq i64 %bf.cast42, 0, !dbg !4438
  br i1 %tobool5, label %if.end7, label %return, !dbg !4440

if.end7:                                          ; preds = %if.end
  %bf.cast123 = and i64 %bf.load1, 67108864, !dbg !4441
  %tobool13 = icmp eq i64 %bf.cast123, 0, !dbg !4441
  br i1 %tobool13, label %land.lhs.true, label %if.end7.if.end21_crit_edge, !dbg !4443

if.end7.if.end21_crit_edge:                       ; preds = %if.end7
  %.pre = and i64 %bf.load, 33554432, !dbg !4444
  br label %if.end21, !dbg !4443

land.lhs.true:                                    ; preds = %if.end7
  %bf.cast184 = and i64 %bf.load, 33554432, !dbg !4446
  %tobool19 = icmp eq i64 %bf.cast184, 0, !dbg !4446
  br i1 %tobool19, label %return, label %if.end21, !dbg !4447

if.end21:                                         ; preds = %if.end7.if.end21_crit_edge, %land.lhs.true
  %bf.cast275.pre-phi = phi i64 [ %.pre, %if.end7.if.end21_crit_edge ], [ %bf.cast184, %land.lhs.true ], !dbg !4444
  %tobool28 = icmp eq i64 %bf.cast275.pre-phi, 0, !dbg !4444
  br i1 %tobool28, label %lor.lhs.false, label %return, !dbg !4448

lor.lhs.false:                                    ; preds = %if.end21
  %bf.cast336 = and i64 %bf.load1, 134217728, !dbg !4449
  %tobool34 = icmp eq i64 %bf.cast336, 0, !dbg !4449
  br i1 %tobool34, label %if.end36, label %return, !dbg !4450

if.end36:                                         ; preds = %lor.lhs.false
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4451
  %2 = bitcast %union.tree_node** %type to %struct.tree_type**, !dbg !4451
  %3 = load %struct.tree_type*, %struct.tree_type** %2, align 8, !dbg !4451
  %needs_constructing_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %3, i64 0, i32 6, !dbg !4451
  %bf.load38 = load i32, i32* %needs_constructing_flag, align 4, !dbg !4451
  %bf.clear40 = and i32 %bf.load38, 2048, !dbg !4451
  %tobool41 = icmp eq i32 %bf.clear40, 0, !dbg !4451
  br i1 %tobool41, label %if.end43, label %return, !dbg !4453

if.end43:                                         ; preds = %if.end36
  %4 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @all_module_statics, align 8, !dbg !4454
  %uid = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4456
  %5 = load i32, i32* %uid, align 4, !dbg !4456
  %call = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %4, i32 %5) #6, !dbg !4457
  %tobool44 = icmp eq i32 %call, 0, !dbg !4457
  br i1 %tobool44, label %if.then45, label %return, !dbg !4458

if.then45:                                        ; preds = %if.end43
  tail call fastcc void @add_static_var(%union.tree_node* %t) #7, !dbg !4459
  br label %return, !dbg !4459

return:                                           ; preds = %if.end43, %if.end36, %lor.lhs.false, %if.end21, %land.lhs.true, %if.end, %entry, %if.then45
  %retval.0 = phi i8 [ 0, %entry ], [ 0, %if.end ], [ 0, %land.lhs.true ], [ 0, %lor.lhs.false ], [ 0, %if.end21 ], [ 0, %if.end36 ], [ 1, %if.then45 ], [ 1, %if.end43 ], !dbg !4434
  ret i8 %retval.0, !dbg !4460
}

declare dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

declare dso_local i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @add_static_var(%union.tree_node* %var) unnamed_addr #0 !dbg !4461 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !4463, metadata !DIExpression()), !dbg !4465
  %uid1 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4466
  %0 = load i32, i32* %uid1, align 4, !dbg !4466
  call void @llvm.dbg.value(metadata i32 %0, metadata !4464, metadata !DIExpression()), !dbg !4465
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4467
  %bf.load = load i64, i64* %1, align 8, !dbg !4467
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4467
  %cmp = icmp eq i64 %bf.cast1, 32, !dbg !4467
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !4467

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 293, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4467
  br label %cond.end, !dbg !4467

cond.end:                                         ; preds = %entry, %cond.true
  %2 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @all_module_statics, align 8, !dbg !4468
  %call = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %2, i32 %0) #6, !dbg !4470
  %tobool = icmp eq i32 %call, 0, !dbg !4470
  br i1 %tobool, label %if.then, label %if.end, !dbg !4471

if.then:                                          ; preds = %cond.end
  %3 = load %struct.splay_tree_s*, %struct.splay_tree_s** @reference_vars_to_consider, align 8, !dbg !4472
  %conv = sext i32 %0 to i64, !dbg !4474
  %4 = ptrtoint %union.tree_node* %var to i64, !dbg !4475
  %call2 = tail call %struct.splay_tree_node_s* @splay_tree_insert(%struct.splay_tree_s* %3, i64 %conv, i64 %4) #6, !dbg !4476
  %5 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @all_module_statics, align 8, !dbg !4477
  %call3 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %5, i32 %0) #6, !dbg !4478
  br label %if.end, !dbg !4479

if.end:                                           ; preds = %cond.end, %if.then
  ret void, !dbg !4480
}

declare dso_local %struct.splay_tree_node_s* @splay_tree_insert(%struct.splay_tree_s*, i64, i64) local_unnamed_addr #2

declare dso_local void @push_cfun(%struct.function*) local_unnamed_addr #2

declare dso_local void @gsi_start_phis(%struct.gimple_stmt_iterator* sret, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !4481 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !4485, metadata !DIExpression()), !dbg !4486
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !4487
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !4487
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !4488
  %conv1 = zext i1 %cmp to i8, !dbg !4489
  ret i8 %conv1, !dbg !4490
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !4491 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !4495, metadata !DIExpression()), !dbg !4496
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !4497
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !4497
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !4498
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !4498
  ret %union.gimple_statement_d* %1, !dbg !4499
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @op_iter_init_phiuse(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %phi, i32 %flags) unnamed_addr #0 !dbg !4500 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !4506, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %phi, metadata !4507, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata i32 1, metadata !4508, metadata !DIExpression()), !dbg !4511
  %call = tail call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %phi) #7, !dbg !4512
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4509, metadata !DIExpression()), !dbg !4511
  tail call fastcc void @clear_and_done_ssa_iter(%struct.ssa_operand_iterator_d* %ptr) #7, !dbg !4513
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !4514
  store i8 0, i8* %done, align 8, !dbg !4515
  %call1 = tail call zeroext i8 @is_gimple_reg(%union.tree_node* %call) #6, !dbg !4516
  %tobool = icmp eq i8 %call1, 0, !dbg !4516
  call void @llvm.dbg.value(metadata i1 %tobool, metadata !4510, metadata !DIExpression()), !dbg !4511
  br i1 %tobool, label %if.then, label %if.end, !dbg !4517

if.then:                                          ; preds = %entry
  store i8 1, i8* %done, align 8, !dbg !4518
  br label %cleanup, !dbg !4521

if.end:                                           ; preds = %entry
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !4522
  store %union.gimple_statement_d* %phi, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !4523
  %call7 = tail call fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %phi) #7, !dbg !4524
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !4525
  store i32 %call7, i32* %num_phi, align 4, !dbg !4526
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !4527
  store i32 2, i32* %iter_type, align 4, !dbg !4528
  %call8 = tail call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* %ptr) #7, !dbg !4529
  br label %cleanup, !dbg !4530

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.ssa_use_operand_d* [ null, %if.then ], [ %call8, %if.end ], !dbg !4511
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !4531
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !4532 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !4538, metadata !DIExpression()), !dbg !4539
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !4540
  %0 = load i8, i8* %done, align 8, !dbg !4540
  ret i8 %0, !dbg !4541
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use) unnamed_addr #0 !dbg !4542 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !4546, metadata !DIExpression()), !dbg !4547
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !4548
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !4548
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !4549
  ret %union.tree_node* %1, !dbg !4550
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !4551 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !4555, metadata !DIExpression()), !dbg !4557
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !4558
  %0 = load %struct.use_optype_d*, %struct.use_optype_d** %uses, align 8, !dbg !4558
  %tobool = icmp eq %struct.use_optype_d* %0, null, !dbg !4560
  br i1 %tobool, label %if.end, label %if.then, !dbg !4561

if.then:                                          ; preds = %entry
  %use_ptr = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %0, i64 0, i32 1, !dbg !4562
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_ptr, metadata !4556, metadata !DIExpression()), !dbg !4557
  %1 = bitcast %struct.use_optype_d* %0 to i64*, !dbg !4564
  %2 = load i64, i64* %1, align 8, !dbg !4564
  %3 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !4565
  store i64 %2, i64* %3, align 8, !dbg !4565
  br label %cleanup, !dbg !4566

if.end:                                           ; preds = %entry
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !4567
  %4 = load i32, i32* %phi_i, align 8, !dbg !4567
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !4569
  %5 = load i32, i32* %num_phi, align 4, !dbg !4569
  %cmp = icmp slt i32 %4, %5, !dbg !4570
  br i1 %cmp, label %if.then4, label %if.end6, !dbg !4571

if.then4:                                         ; preds = %if.end
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !4572
  %6 = load %union.gimple_statement_d*, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !4572
  %inc = add nsw i32 %4, 1, !dbg !4572
  store i32 %inc, i32* %phi_i, align 8, !dbg !4572
  %call = tail call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %6, i32 %4) #7, !dbg !4572
  br label %cleanup, !dbg !4574

if.end6:                                          ; preds = %if.end
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !4575
  store i8 1, i8* %done, align 8, !dbg !4576
  br label %cleanup, !dbg !4577

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  %retval.0 = phi %struct.ssa_use_operand_d* [ %use_ptr, %if.then ], [ %call, %if.then4 ], [ null, %if.end6 ], !dbg !4557
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !4578
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !4579 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !4584, metadata !DIExpression()), !dbg !4585
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !4586
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !4586
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !4587
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !4587
  %2 = load i64, i64* %1, align 8, !dbg !4587
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !4588
  store i64 %2, i64* %3, align 8, !dbg !4588
  ret void, !dbg !4589
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4590 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4594, metadata !DIExpression()), !dbg !4597
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !4595, metadata !DIExpression()), !dbg !4598
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #7, !dbg !4599
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !4596, metadata !DIExpression()), !dbg !4597
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %call) #7, !dbg !4600
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !4601
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !4602
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !4603
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !4604
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !4605
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !4606
  ret void, !dbg !4607
}

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @scan_stmt_for_static_refs(%struct.gimple_stmt_iterator* %gsip, %struct.cgraph_node* %fn) unnamed_addr #5 !dbg !4608 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsip, metadata !4612, metadata !DIExpression()), !dbg !4616
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %fn, metadata !4613, metadata !DIExpression()), !dbg !4616
  %call = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsip) #7, !dbg !4617
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !4614, metadata !DIExpression()), !dbg !4616
  call void @llvm.dbg.value(metadata %struct.ipa_reference_local_vars_info_d* null, metadata !4615, metadata !DIExpression()), !dbg !4616
  %call1 = tail call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %call) #7, !dbg !4618
  %tobool = icmp eq i8 %call1, 0, !dbg !4618
  br i1 %tobool, label %if.end, label %cleanup, !dbg !4620

if.end:                                           ; preds = %entry
  %tobool2 = icmp eq %struct.cgraph_node* %fn, null, !dbg !4621
  br i1 %tobool2, label %if.end6, label %if.then3, !dbg !4623

if.then3:                                         ; preds = %if.end
  %call4 = tail call fastcc %struct.ipa_reference_vars_info_d* @get_reference_vars_info(%struct.cgraph_node* nonnull %fn) #7, !dbg !4624
  %local5 = getelementptr inbounds %struct.ipa_reference_vars_info_d, %struct.ipa_reference_vars_info_d* %call4, i64 0, i32 0, !dbg !4625
  %0 = load %struct.ipa_reference_local_vars_info_d*, %struct.ipa_reference_local_vars_info_d** %local5, align 8, !dbg !4625
  %1 = bitcast %struct.ipa_reference_local_vars_info_d* %0 to i8*, !dbg !4616
  call void @llvm.dbg.value(metadata %struct.ipa_reference_local_vars_info_d* %0, metadata !4615, metadata !DIExpression()), !dbg !4616
  br label %if.end6, !dbg !4626

if.end6:                                          ; preds = %if.end, %if.then3
  %2 = phi i8* [ %1, %if.then3 ], [ null, %if.end ], !dbg !4616
  %local.0 = phi %struct.ipa_reference_local_vars_info_d* [ %0, %if.then3 ], [ null, %if.end ], !dbg !4616
  call void @llvm.dbg.value(metadata %struct.ipa_reference_local_vars_info_d* %local.0, metadata !4615, metadata !DIExpression()), !dbg !4616
  %call7 = tail call zeroext i8 @walk_stmt_load_store_addr_ops(%union.gimple_statement_d* %call, i8* %2, i8 (%union.gimple_statement_d*, %union.tree_node*, i8*)* nonnull @mark_load, i8 (%union.gimple_statement_d*, %union.tree_node*, i8*)* nonnull @mark_store, i8 (%union.gimple_statement_d*, %union.tree_node*, i8*)* nonnull @mark_address) #6, !dbg !4627
  %call8 = tail call fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %call) #7, !dbg !4628
  %tobool9 = icmp eq i8 %call8, 0, !dbg !4628
  br i1 %tobool9, label %if.else, label %if.then10, !dbg !4630

if.then10:                                        ; preds = %if.end6
  tail call fastcc void @check_call(%struct.ipa_reference_local_vars_info_d* %local.0, %union.gimple_statement_d* %call) #7, !dbg !4631
  br label %cleanup, !dbg !4631

if.else:                                          ; preds = %if.end6
  %call11 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %call) #7, !dbg !4632
  %cmp = icmp eq i32 %call11, 7, !dbg !4634
  br i1 %cmp, label %if.then12, label %cleanup, !dbg !4635

if.then12:                                        ; preds = %if.else
  tail call fastcc void @check_asm_memory_clobber(%struct.ipa_reference_local_vars_info_d* %local.0, %union.gimple_statement_d* %call) #7, !dbg !4636
  br label %cleanup, !dbg !4636

cleanup:                                          ; preds = %entry, %if.then10, %if.then12, %if.else
  ret %union.tree_node* undef, !dbg !4637
}

declare dso_local void @bitmap_clear(%struct.bitmap_head_def*) local_unnamed_addr #2

declare dso_local void @pop_cfun() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4638 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4643, metadata !DIExpression()), !dbg !4644
  %result = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 3, !dbg !4645
  %0 = load %union.tree_node*, %union.tree_node** %result, align 8, !dbg !4645
  ret %union.tree_node* %0, !dbg !4646
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @clear_and_done_ssa_iter(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !4647 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !4651, metadata !DIExpression()), !dbg !4652
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !4653
  store %struct.def_optype_d* null, %struct.def_optype_d** %defs, align 8, !dbg !4654
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !4655
  store %struct.use_optype_d* null, %struct.use_optype_d** %uses, align 8, !dbg !4656
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !4657
  store i32 0, i32* %iter_type, align 4, !dbg !4658
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !4659
  store i32 0, i32* %phi_i, align 8, !dbg !4660
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !4661
  store i32 0, i32* %num_phi, align 4, !dbg !4662
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !4663
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !4664
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !4665
  store i8 1, i8* %done, align 8, !dbg !4666
  ret void, !dbg !4667
}

declare dso_local zeroext i8 @is_gimple_reg(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4668 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4672, metadata !DIExpression()), !dbg !4673
  %nargs = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 2, !dbg !4674
  %0 = load i32, i32* %nargs, align 4, !dbg !4674
  ret i32 %0, !dbg !4675
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !4676 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4680, metadata !DIExpression()), !dbg !4682
  call void @llvm.dbg.value(metadata i32 %i, metadata !4681, metadata !DIExpression()), !dbg !4682
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %i) #7, !dbg !4683
  %imm_use = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 0, !dbg !4684
  ret %struct.ssa_use_operand_d* %imm_use, !dbg !4685
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !4686 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4691, metadata !DIExpression()), !dbg !4693
  call void @llvm.dbg.value(metadata i32 %index, metadata !4692, metadata !DIExpression()), !dbg !4693
  %capacity = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 1, !dbg !4694
  %0 = load i32, i32* %capacity, align 8, !dbg !4694
  %cmp = icmp ult i32 %0, %index, !dbg !4694
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4694

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i32 3103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4694
  br label %cond.end, !dbg !4694

cond.end:                                         ; preds = %entry, %cond.true
  %idxprom = zext i32 %index to i64, !dbg !4695
  %arrayidx = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 %idxprom, !dbg !4695
  ret %struct.phi_arg_d* %arrayidx, !dbg !4696
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4697 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4704, metadata !DIExpression()), !dbg !4705
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !4706
  %0 = load i32, i32* %flags, align 8, !dbg !4706
  %and = and i32 %0, 512, !dbg !4707
  %tobool = icmp eq i32 %and, 0, !dbg !4707
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !4708

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !4709
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !4709
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !4710
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !4711

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !4712
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !4712
  br label %cond.end, !dbg !4711

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !4711
  ret %struct.gimple_seq_d* %cond, !dbg !4713
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !4714 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !4721, metadata !DIExpression()), !dbg !4722
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !4723
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4723

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !4724
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !4724
  br label %cond.end, !dbg !4723

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !4723
  ret %struct.gimple_seq_node_d* %cond, !dbg !4725
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4726 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4730, metadata !DIExpression()), !dbg !4731
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !4732
  %cmp = icmp eq i32 %call, 2, !dbg !4733
  %conv1 = zext i1 %cmp to i8, !dbg !4732
  ret i8 %conv1, !dbg !4734
}

declare dso_local zeroext i8 @walk_stmt_load_store_addr_ops(%union.gimple_statement_d*, i8*, i8 (%union.gimple_statement_d*, %union.tree_node*, i8*)*, i8 (%union.gimple_statement_d*, %union.tree_node*, i8*)*, i8 (%union.gimple_statement_d*, %union.tree_node*, i8*)*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @mark_load(%union.gimple_statement_d* %stmt, %union.tree_node* %t, i8* %data) #5 !dbg !4735 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4739, metadata !DIExpression()), !dbg !4743
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !4740, metadata !DIExpression()), !dbg !4743
  call void @llvm.dbg.value(metadata i8* %data, metadata !4741, metadata !DIExpression()), !dbg !4743
  call void @llvm.dbg.value(metadata i8* %data, metadata !4742, metadata !DIExpression()), !dbg !4743
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4744
  %bf.load = load i64, i64* %0, align 8, !dbg !4744
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4746
  %cmp = icmp eq i64 %bf.cast1, 32, !dbg !4746
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4747

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc zeroext i8 @has_proper_scope_for_analysis(%union.tree_node* %t) #7, !dbg !4748
  %tobool = icmp eq i8 %call, 0, !dbg !4748
  br i1 %tobool, label %if.end, label %if.then, !dbg !4749

if.then:                                          ; preds = %land.lhs.true
  %statics_read = bitcast i8* %data to %struct.bitmap_head_def**, !dbg !4750
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %statics_read, align 8, !dbg !4750
  %uid = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4751
  %2 = load i32, i32* %uid, align 4, !dbg !4751
  %call1 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %1, i32 %2) #6, !dbg !4752
  br label %if.end, !dbg !4752

if.end:                                           ; preds = %land.lhs.true, %if.then, %entry
  ret i8 0, !dbg !4753
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @mark_store(%union.gimple_statement_d* %stmt, %union.tree_node* %t, i8* %data) #5 !dbg !4754 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4756, metadata !DIExpression()), !dbg !4760
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !4757, metadata !DIExpression()), !dbg !4760
  call void @llvm.dbg.value(metadata i8* %data, metadata !4758, metadata !DIExpression()), !dbg !4760
  call void @llvm.dbg.value(metadata i8* %data, metadata !4759, metadata !DIExpression()), !dbg !4760
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4761
  %bf.load = load i64, i64* %0, align 8, !dbg !4761
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4763
  %cmp = icmp eq i64 %bf.cast1, 32, !dbg !4763
  br i1 %cmp, label %land.lhs.true, label %if.end10, !dbg !4764

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc zeroext i8 @has_proper_scope_for_analysis(%union.tree_node* %t) #7, !dbg !4765
  %tobool = icmp eq i8 %call, 0, !dbg !4765
  br i1 %tobool, label %if.end10, label %if.then, !dbg !4766

if.then:                                          ; preds = %land.lhs.true
  %tobool1 = icmp eq i8* %data, null, !dbg !4767
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !4770

if.then2:                                         ; preds = %if.then
  %statics_written = getelementptr inbounds i8, i8* %data, i64 8, !dbg !4771
  %1 = bitcast i8* %statics_written to %struct.bitmap_head_def**, !dbg !4771
  %2 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %1, align 8, !dbg !4771
  %uid = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4772
  %3 = load i32, i32* %uid, align 4, !dbg !4772
  %call3 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %2, i32 %3) #6, !dbg !4773
  br label %if.end, !dbg !4773

if.end:                                           ; preds = %if.then, %if.then2
  %4 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @module_statics_written, align 8, !dbg !4774
  %tobool4 = icmp eq %struct.bitmap_head_def* %4, null, !dbg !4774
  br i1 %tobool4, label %if.end10, label %if.then5, !dbg !4776

if.then5:                                         ; preds = %if.end
  %uid7 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4777
  %5 = load i32, i32* %uid7, align 4, !dbg !4777
  %call8 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* nonnull %4, i32 %5) #6, !dbg !4778
  br label %if.end10, !dbg !4778

if.end10:                                         ; preds = %if.end, %land.lhs.true, %if.then5, %entry
  ret i8 0, !dbg !4779
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @mark_address(%union.gimple_statement_d* %stmt, %union.tree_node* %addr, i8* %data) #5 !dbg !4780 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4782, metadata !DIExpression()), !dbg !4785
  call void @llvm.dbg.value(metadata %union.tree_node* %addr, metadata !4783, metadata !DIExpression()), !dbg !4785
  call void @llvm.dbg.value(metadata i8* %data, metadata !4784, metadata !DIExpression()), !dbg !4785
  br label %while.cond, !dbg !4786

while.cond:                                       ; preds = %while.body, %entry
  %addr.addr.0 = phi %union.tree_node* [ %addr, %entry ], [ %0, %while.body ]
  call void @llvm.dbg.value(metadata %union.tree_node* %addr.addr.0, metadata !4783, metadata !DIExpression()), !dbg !4785
  %call = tail call fastcc zeroext i8 @handled_component_p(%union.tree_node* %addr.addr.0) #7, !dbg !4787
  %tobool = icmp eq i8 %call, 0, !dbg !4786
  br i1 %tobool, label %while.end, label %while.body, !dbg !4786

while.body:                                       ; preds = %while.cond
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %addr.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4788
  %0 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !4788
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !4783, metadata !DIExpression()), !dbg !4785
  br label %while.cond, !dbg !4786, !llvm.loop !4789

while.end:                                        ; preds = %while.cond
  %addr.addr.0.lcssa = phi %union.tree_node* [ %addr.addr.0, %while.cond ]
  call void @llvm.dbg.value(metadata %union.tree_node* %addr.addr.0.lcssa, metadata !4783, metadata !DIExpression()), !dbg !4785
  call void @llvm.dbg.value(metadata %union.tree_node* %addr.addr.0.lcssa, metadata !4783, metadata !DIExpression()), !dbg !4785
  call void @llvm.dbg.value(metadata %union.tree_node* %addr.addr.0.lcssa, metadata !4783, metadata !DIExpression()), !dbg !4785
  tail call fastcc void @mark_address_taken(%union.tree_node* %addr.addr.0.lcssa) #7, !dbg !4790
  ret i8 0, !dbg !4791
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4792 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4794, metadata !DIExpression()), !dbg !4795
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !4796
  %cmp = icmp eq i32 %call, 8, !dbg !4797
  %conv1 = zext i1 %cmp to i8, !dbg !4796
  ret i8 %conv1, !dbg !4798
}

; Function Attrs: nounwind uwtable
define internal fastcc void @check_call(%struct.ipa_reference_local_vars_info_d* %local, %union.gimple_statement_d* %stmt) unnamed_addr #5 !dbg !4799 {
entry:
  call void @llvm.dbg.value(metadata %struct.ipa_reference_local_vars_info_d* %local, metadata !4803, metadata !DIExpression()), !dbg !4807
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4804, metadata !DIExpression()), !dbg !4807
  %call = tail call i32 @gimple_call_flags(%union.gimple_statement_d* %stmt) #6, !dbg !4808
  call void @llvm.dbg.value(metadata i32 %call, metadata !4805, metadata !DIExpression()), !dbg !4807
  %call1 = tail call fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %stmt) #7, !dbg !4809
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !4806, metadata !DIExpression()), !dbg !4807
  %tobool = icmp ne %union.tree_node* %call1, null, !dbg !4810
  %and = and i32 %call, 1, !dbg !4812
  %tobool2 = icmp ne i32 %and, 0, !dbg !4812
  %or.cond = or i1 %tobool, %tobool2, !dbg !4815
  br i1 %or.cond, label %if.end13, label %if.else, !dbg !4815

if.else:                                          ; preds = %entry
  %and4 = and i32 %call, 2, !dbg !4816
  %tobool5 = icmp eq i32 %and4, 0, !dbg !4816
  %calls_read_all = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %local, i64 0, i32 2, !dbg !4818
  store i8 1, i8* %calls_read_all, align 8, !dbg !4818
  %and9 = and i32 %call, 72, !dbg !4819
  %cmp = icmp ne i32 %and9, 72, !dbg !4822
  %or.cond1 = and i1 %tobool5, %cmp, !dbg !4823
  br i1 %or.cond1, label %if.then10, label %if.end13, !dbg !4823

if.then10:                                        ; preds = %if.else
  %calls_write_all = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %local, i64 0, i32 3, !dbg !4824
  store i8 1, i8* %calls_write_all, align 1, !dbg !4825
  br label %if.end13, !dbg !4826

if.end13:                                         ; preds = %if.else, %if.then10, %entry
  ret void, !dbg !4827
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4828 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4832, metadata !DIExpression()), !dbg !4833
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !4834
  %bf.load = load i32, i32* %0, align 8, !dbg !4834
  %bf.clear = and i32 %bf.load, 255, !dbg !4834
  ret i32 %bf.clear, !dbg !4835
}

; Function Attrs: nounwind uwtable
define internal fastcc void @check_asm_memory_clobber(%struct.ipa_reference_local_vars_info_d* %local, %union.gimple_statement_d* %stmt) unnamed_addr #5 !dbg !4836 {
entry:
  call void @llvm.dbg.value(metadata %struct.ipa_reference_local_vars_info_d* %local, metadata !4838, metadata !DIExpression()), !dbg !4842
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4839, metadata !DIExpression()), !dbg !4842
  call void @llvm.dbg.value(metadata i64 0, metadata !4840, metadata !DIExpression()), !dbg !4842
  %calls_read_all = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %local, i64 0, i32 2, !dbg !4843
  %calls_write_all = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, %struct.ipa_reference_local_vars_info_d* %local, i64 0, i32 3, !dbg !4843
  br label %for.cond, !dbg !4849

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i64 [ 0, %entry ], [ %inc, %for.inc ], !dbg !4850
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !4840, metadata !DIExpression()), !dbg !4842
  %call = tail call fastcc i32 @gimple_asm_nclobbers(%union.gimple_statement_d* %stmt) #7, !dbg !4851
  %conv = zext i32 %call to i64, !dbg !4851
  %cmp = icmp ult i64 %i.0, %conv, !dbg !4852
  br i1 %cmp, label %for.body, label %for.end, !dbg !4853

for.body:                                         ; preds = %for.cond
  %conv2 = trunc i64 %i.0 to i32, !dbg !4854
  %call3 = tail call fastcc %union.tree_node* @gimple_asm_clobber_op(%union.gimple_statement_d* %stmt, i32 %conv2) #7, !dbg !4855
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !4841, metadata !DIExpression()), !dbg !4842
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4856
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !4856
  %2 = load %union.tree_node*, %union.tree_node** @memory_identifier_string, align 8, !dbg !4857
  %call4 = tail call i32 @simple_cst_equal(%union.tree_node* %1, %union.tree_node* %2) #6, !dbg !4858
  %cmp5 = icmp eq i32 %call4, 1, !dbg !4859
  br i1 %cmp5, label %if.then, label %for.inc, !dbg !4860

if.then:                                          ; preds = %for.body
  store i8 1, i8* %calls_read_all, align 8, !dbg !4861
  store i8 1, i8* %calls_write_all, align 1, !dbg !4862
  br label %for.inc, !dbg !4863

for.inc:                                          ; preds = %for.body, %if.then
  %inc = add nuw nsw i64 %i.0, 1, !dbg !4864
  call void @llvm.dbg.value(metadata i64 %inc, metadata !4840, metadata !DIExpression()), !dbg !4842
  br label %for.cond, !dbg !4865, !llvm.loop !4866

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4868
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @handled_component_p(%union.tree_node* %t) unnamed_addr #0 !dbg !4869 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !4876, metadata !DIExpression()), !dbg !4877
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4878
  %bf.load = load i64, i64* %0, align 8, !dbg !4878
  %1 = trunc i64 %bf.load to i16, !dbg !4878
  switch i16 %1, label %sw.default [
    i16 42, label %return
    i16 41, label %return
    i16 45, label %return
    i16 46, label %return
    i16 118, label %return
    i16 43, label %return
    i16 44, label %return
  ], !dbg !4879

sw.default:                                       ; preds = %entry
  br label %return, !dbg !4880

return:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %sw.default
  %retval.0 = phi i8 [ 0, %sw.default ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], !dbg !4882
  ret i8 %retval.0, !dbg !4883
}

declare dso_local i32 @gimple_call_flags(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4884 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4886, metadata !DIExpression()), !dbg !4888
  %call = tail call fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) #7, !dbg !4889
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4887, metadata !DIExpression()), !dbg !4888
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4890
  %bf.load = load i64, i64* %0, align 8, !dbg !4890
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4892
  %cmp = icmp eq i64 %bf.cast1, 121, !dbg !4892
  br i1 %cmp, label %if.then, label %cleanup, !dbg !4893

if.then:                                          ; preds = %entry
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4894
  %1 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !4894
  br label %cleanup, !dbg !4895

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %1, %if.then ], [ null, %entry ], !dbg !4888
  ret %union.tree_node* %retval.0, !dbg !4896
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4897 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4899, metadata !DIExpression()), !dbg !4900
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #7, !dbg !4901
  ret %union.tree_node* %call, !dbg !4902
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !4903 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4907, metadata !DIExpression()), !dbg !4909
  call void @llvm.dbg.value(metadata i32 %i, metadata !4908, metadata !DIExpression()), !dbg !4909
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #7, !dbg !4910
  %tobool = icmp eq i8 %call, 0, !dbg !4910
  br i1 %tobool, label %return, label %if.then, !dbg !4912

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #7, !dbg !4913
  %idxprom = zext i32 %i to i64, !dbg !4913
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 %idxprom, !dbg !4913
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !4913
  br label %return, !dbg !4915

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ null, %entry ], !dbg !4916
  ret %union.tree_node* %retval.0, !dbg !4917
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4918 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4920, metadata !DIExpression()), !dbg !4921
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !4922
  %cmp = icmp eq i32 %call, 0, !dbg !4923
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !4924

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !4925
  %cmp2 = icmp ult i32 %call1, 10, !dbg !4926
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !4927
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4928 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4932, metadata !DIExpression()), !dbg !4934
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #7, !dbg !4935
  %idxprom = zext i32 %call to i64, !dbg !4936
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !4936
  %0 = load i64, i64* %arrayidx, align 8, !dbg !4936
  call void @llvm.dbg.value(metadata i64 %0, metadata !4933, metadata !DIExpression()), !dbg !4934
  %cmp = icmp eq i64 %0, 0, !dbg !4937
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4937

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4937
  br label %cond.end, !dbg !4937

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !4938
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !4939
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !4940
  ret %union.tree_node** %2, !dbg !4941
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4942 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4946, metadata !DIExpression()), !dbg !4947
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !4948
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #7, !dbg !4949
  ret i32 %call1, !dbg !4950
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !4951 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !4955, metadata !DIExpression()), !dbg !4956
  %idxprom = zext i32 %code to i64, !dbg !4957
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !4957
  %0 = load i32, i32* %arrayidx, align 4, !dbg !4957
  ret i32 %0, !dbg !4958
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_asm_nclobbers(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4959 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4961, metadata !DIExpression()), !dbg !4962
  %gimple_asm = bitcast %union.gimple_statement_d* %gs to %struct.gimple_statement_asm*, !dbg !4963
  %nc = getelementptr inbounds %struct.gimple_statement_asm, %struct.gimple_statement_asm* %gimple_asm, i64 0, i32 4, !dbg !4964
  %0 = load i8, i8* %nc, align 2, !dbg !4964
  %conv = zext i8 %0 to i32, !dbg !4965
  ret i32 %conv, !dbg !4966
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_asm_clobber_op(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !4967 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4969, metadata !DIExpression()), !dbg !4971
  call void @llvm.dbg.value(metadata i32 %index, metadata !4970, metadata !DIExpression()), !dbg !4971
  %gimple_asm = bitcast %union.gimple_statement_d* %gs to %struct.gimple_statement_asm*, !dbg !4972
  %nc = getelementptr inbounds %struct.gimple_statement_asm, %struct.gimple_statement_asm* %gimple_asm, i64 0, i32 4, !dbg !4972
  %0 = load i8, i8* %nc, align 2, !dbg !4972
  %conv = zext i8 %0 to i32, !dbg !4972
  %cmp = icmp ult i32 %conv, %index, !dbg !4972
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4972

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i32 2688, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4972
  br label %cond.end, !dbg !4972

cond.end:                                         ; preds = %entry, %cond.true
  %ni = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 0, i32 0, i32 3, !dbg !4973
  %1 = bitcast %union.tree_node*** %ni to i8*, !dbg !4973
  %2 = load i8, i8* %1, align 8, !dbg !4973
  %conv3 = zext i8 %2 to i32, !dbg !4974
  %add = add i32 %conv3, %index, !dbg !4975
  %no = getelementptr inbounds %struct.gimple_statement_asm, %struct.gimple_statement_asm* %gimple_asm, i64 0, i32 3, !dbg !4976
  %3 = load i8, i8* %no, align 1, !dbg !4976
  %conv5 = zext i8 %3 to i32, !dbg !4977
  %add6 = add i32 %add, %conv5, !dbg !4978
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %add6) #7, !dbg !4979
  ret %union.tree_node* %call, !dbg !4980
}

declare dso_local i32 @simple_cst_equal(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %struct.lto_simple_output_block* @lto_create_simple_output_block(i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { %struct.cgraph_node_set_def*, i32 } @csi_start(%struct.cgraph_node_set_def* %set) unnamed_addr #0 !dbg !4981 {
entry:
  %retval = alloca %struct.cgraph_node_set_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.cgraph_node_set_def* %set, metadata !4985, metadata !DIExpression()), !dbg !4987
  %set1 = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %retval, i64 0, i32 0, !dbg !4988
  store %struct.cgraph_node_set_def* %set, %struct.cgraph_node_set_def** %set1, align 8, !dbg !4989
  %index = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %retval, i64 0, i32 1, !dbg !4990
  store i32 0, i32* %index, align 8, !dbg !4991
  %0 = bitcast %struct.cgraph_node_set_iterator* %retval to { %struct.cgraph_node_set_def*, i32 }*, !dbg !4992
  %1 = load { %struct.cgraph_node_set_def*, i32 }, { %struct.cgraph_node_set_def*, i32 }* %0, align 8, !dbg !4992
  ret { %struct.cgraph_node_set_def*, i32 } %1, !dbg !4992
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @csi_end_p(%struct.cgraph_node_set_def* %csi.coerce0, i32 %csi.coerce1) unnamed_addr #0 !dbg !4993 {
entry:
  %nodes = getelementptr inbounds %struct.cgraph_node_set_def, %struct.cgraph_node_set_def* %csi.coerce0, i64 0, i32 1, !dbg !4998
  %0 = load %struct.VEC_cgraph_node_ptr_gc*, %struct.VEC_cgraph_node_ptr_gc** %nodes, align 8, !dbg !4998
  %tobool = icmp eq %struct.VEC_cgraph_node_ptr_gc* %0, null, !dbg !4998
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4998

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_cgraph_node_ptr_gc, %struct.VEC_cgraph_node_ptr_gc* %0, i64 0, i32 0, !dbg !4998
  br label %cond.end, !dbg !4998

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_cgraph_node_ptr_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4998
  %call = tail call fastcc i32 @VEC_cgraph_node_ptr_base_length(%struct.VEC_cgraph_node_ptr_base* %cond) #7, !dbg !4998
  %cmp = icmp ule i32 %call, %csi.coerce1, !dbg !4999
  %conv3 = zext i1 %cmp to i8, !dbg !5000
  ret i8 %conv3, !dbg !5001
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @write_node_summary_p(%struct.cgraph_node* %node) unnamed_addr #5 !dbg !5002 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !5006, metadata !DIExpression()), !dbg !5007
  %inlined_to = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 19, i32 2, !dbg !5008
  %0 = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to, align 8, !dbg !5008
  %cmp = icmp eq %struct.cgraph_node* %0, null, !dbg !5008
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !5008

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 1032, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !5008
  br label %cond.end, !dbg !5008

cond.end:                                         ; preds = %entry, %cond.true
  %analyzed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 27, !dbg !5009
  %bf.load = load i16, i16* %analyzed, align 4, !dbg !5009
  %bf.clear = and i16 %bf.load, 32, !dbg !5009
  %tobool = icmp eq i16 %bf.clear, 0, !dbg !5010
  br i1 %tobool, label %land.end, label %land.lhs.true, !dbg !5011

land.lhs.true:                                    ; preds = %cond.end
  %call = tail call i32 @cgraph_function_body_availability(%struct.cgraph_node* %node) #6, !dbg !5012
  %cmp1 = icmp ugt i32 %call, 1, !dbg !5013
  br i1 %cmp1, label %land.rhs, label %land.end, !dbg !5014

land.rhs:                                         ; preds = %land.lhs.true
  %call2 = tail call fastcc %struct.ipa_reference_vars_info_d* @get_reference_vars_info(%struct.cgraph_node* %node) #7, !dbg !5015
  %cmp3 = icmp ne %struct.ipa_reference_vars_info_d* %call2, null, !dbg !5016
  %phitmp = zext i1 %cmp3 to i8
  br label %land.end

land.end:                                         ; preds = %cond.end, %land.rhs, %land.lhs.true
  %1 = phi i8 [ 0, %land.lhs.true ], [ 0, %cond.end ], [ %phitmp, %land.rhs ]
  ret i8 %1, !dbg !5017
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.cgraph_node* @csi_node(%struct.cgraph_node_set_def* %csi.coerce0, i32 %csi.coerce1) unnamed_addr #0 !dbg !5018 {
entry:
  %nodes = getelementptr inbounds %struct.cgraph_node_set_def, %struct.cgraph_node_set_def* %csi.coerce0, i64 0, i32 1, !dbg !5023
  %0 = load %struct.VEC_cgraph_node_ptr_gc*, %struct.VEC_cgraph_node_ptr_gc** %nodes, align 8, !dbg !5023
  %tobool = icmp eq %struct.VEC_cgraph_node_ptr_gc* %0, null, !dbg !5023
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5023

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_cgraph_node_ptr_gc, %struct.VEC_cgraph_node_ptr_gc* %0, i64 0, i32 0, !dbg !5023
  br label %cond.end, !dbg !5023

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_cgraph_node_ptr_base* [ %base, %cond.true ], [ null, %entry ], !dbg !5023
  %call = tail call fastcc %struct.cgraph_node* @VEC_cgraph_node_ptr_base_index(%struct.VEC_cgraph_node_ptr_base* %cond, i32 %csi.coerce1) #7, !dbg !5023
  ret %struct.cgraph_node* %call, !dbg !5024
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @csi_next(%struct.cgraph_node_set_iterator* %csi) unnamed_addr #0 !dbg !5025 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node_set_iterator* %csi, metadata !5030, metadata !DIExpression()), !dbg !5031
  %index = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %csi, i64 0, i32 1, !dbg !5032
  %0 = load i32, i32* %index, align 8, !dbg !5033
  %inc = add i32 %0, 1, !dbg !5033
  store i32 %inc, i32* %index, align 8, !dbg !5033
  ret void, !dbg !5034
}

declare dso_local void @lto_output_uleb128_stream(%struct.lto_output_stream*, i64) local_unnamed_addr #2

declare dso_local i32 @lto_cgraph_encoder_encode(%struct.lto_cgraph_encoder_d*, %struct.cgraph_node*) local_unnamed_addr #2

declare dso_local void @lto_output_sleb128_stream(%struct.lto_output_stream*, i64) local_unnamed_addr #2

declare dso_local i64 @bitmap_count_bits(%struct.bitmap_head_def*) local_unnamed_addr #2

declare dso_local void @lto_output_var_decl_index(%struct.lto_out_decl_state*, %struct.lto_output_stream*, %union.tree_node*) local_unnamed_addr #2

declare dso_local void @lto_destroy_simple_output_block(%struct.lto_simple_output_block*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_cgraph_node_ptr_base_length(%struct.VEC_cgraph_node_ptr_base* %vec_) unnamed_addr #0 !dbg !5035 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_node_ptr_base* %vec_, metadata !5041, metadata !DIExpression()), !dbg !5042
  %tobool = icmp eq %struct.VEC_cgraph_node_ptr_base* %vec_, null, !dbg !5043
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5043

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, %struct.VEC_cgraph_node_ptr_base* %vec_, i64 0, i32 0, !dbg !5043
  %0 = load i32, i32* %num, align 8, !dbg !5043
  br label %cond.end, !dbg !5043

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !5043
  ret i32 %cond, !dbg !5043
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.cgraph_node* @VEC_cgraph_node_ptr_base_index(%struct.VEC_cgraph_node_ptr_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !5044 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_node_ptr_base* %vec_, metadata !5048, metadata !DIExpression()), !dbg !5050
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !5049, metadata !DIExpression()), !dbg !5050
  br label %land.end, !dbg !5051

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !5051
  %arrayidx = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, %struct.VEC_cgraph_node_ptr_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !5051
  %0 = load %struct.cgraph_node*, %struct.cgraph_node** %arrayidx, align 8, !dbg !5051
  ret %struct.cgraph_node* %0, !dbg !5051
}

declare dso_local %struct.lto_file_decl_data** @lto_get_file_decl_data() local_unnamed_addr #2

declare dso_local %struct.lto_input_block* @lto_create_simple_input_block(%struct.lto_file_decl_data*, i32, i8**, i64*) local_unnamed_addr #2

declare dso_local i64 @lto_input_uleb128(%struct.lto_input_block*) local_unnamed_addr #2

declare dso_local %struct.cgraph_node* @lto_cgraph_encoder_deref(%struct.lto_cgraph_encoder_d*, i32) local_unnamed_addr #2

declare dso_local i64 @lto_input_sleb128(%struct.lto_input_block*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @lto_file_decl_data_get_var_decl(%struct.lto_file_decl_data* %data, i32 %idx) unnamed_addr #0 !dbg !5052 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_file_decl_data* %data, metadata !5056, metadata !DIExpression()), !dbg !5059
  call void @llvm.dbg.value(metadata i32 %idx, metadata !5057, metadata !DIExpression()), !dbg !5059
  %current_decl_state = getelementptr inbounds %struct.lto_file_decl_data, %struct.lto_file_decl_data* %data, i64 0, i32 0, !dbg !5060
  %0 = load %struct.lto_in_decl_state*, %struct.lto_in_decl_state** %current_decl_state, align 8, !dbg !5060
  call void @llvm.dbg.value(metadata %struct.lto_in_decl_state* %0, metadata !5058, metadata !DIExpression()), !dbg !5059
  %size = getelementptr inbounds %struct.lto_in_decl_state, %struct.lto_in_decl_state* %0, i64 0, i32 0, i64 3, i32 1, !dbg !5060
  %1 = load i32, i32* %size, align 8, !dbg !5060
  %cmp = icmp ugt i32 %1, %idx, !dbg !5060
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !5060

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i32 1044, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !5060
  br label %cond.end, !dbg !5060

cond.end:                                         ; preds = %entry, %cond.true
  %trees = getelementptr inbounds %struct.lto_in_decl_state, %struct.lto_in_decl_state* %0, i64 0, i32 0, i64 3, i32 0, !dbg !5060
  %2 = load %union.tree_node**, %union.tree_node*** %trees, align 8, !dbg !5060
  %idxprom = zext i32 %idx to i64, !dbg !5060
  %arrayidx3 = getelementptr inbounds %union.tree_node*, %union.tree_node** %2, i64 %idxprom, !dbg !5060
  %3 = load %union.tree_node*, %union.tree_node** %arrayidx3, align 8, !dbg !5060
  ret %union.tree_node* %3, !dbg !5060
}

declare dso_local void @lto_destroy_simple_input_block(%struct.lto_file_decl_data*, i32, %struct.lto_input_block*, i8*, i64) local_unnamed_addr #2

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
!llvm.module.flags = !{!2125, !2126, !2127}
!llvm.ident = !{!2128}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_ipa_reference", scope: !2, file: !3, line: 1495, type: !1782, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !541, globals: !2038, nameTableKind: None)
!3 = !DIFile(filename: "ipa-reference.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !201, !207, !212, !217, !235, !242, !249, !272, !279, !455, !462, !489, !527}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !6, line: 39, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200}
!9 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!19 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!20 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!21 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!22 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!23 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!24 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!25 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!26 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!27 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!28 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!29 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!30 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!31 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!32 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!33 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!34 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!35 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!36 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!37 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!38 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!39 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!40 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!41 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!42 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!43 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!44 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!45 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!46 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!47 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!48 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!49 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!50 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!51 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!52 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!53 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!54 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!55 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!56 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!57 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!58 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!59 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!60 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!61 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!62 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!63 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!64 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!65 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!66 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!67 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!68 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!69 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!70 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!71 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!72 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!73 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!74 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!75 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!76 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!77 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!78 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!79 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!80 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!81 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!82 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!83 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!84 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!85 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!86 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!87 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!88 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!89 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!90 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!91 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!92 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!93 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!94 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!95 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!96 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!97 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!98 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!99 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!100 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!101 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!102 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!103 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!104 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!105 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!106 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!107 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!108 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!109 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!110 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!111 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!112 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!113 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!114 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!115 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!116 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!117 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!118 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!119 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!120 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!121 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!122 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!123 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!124 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!125 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!126 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!127 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!128 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!129 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!130 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!131 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!132 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!133 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!134 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!135 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!136 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!137 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!138 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!139 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!140 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!141 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!142 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!143 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!144 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!145 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!146 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!147 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!148 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!149 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!150 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!151 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!152 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!153 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!154 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!155 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!156 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!157 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!158 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!159 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!160 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!161 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!162 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!163 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!164 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!165 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!166 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!167 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!168 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!169 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!170 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!171 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!172 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!173 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!174 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!175 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!176 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!177 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!178 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!179 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!180 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!181 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!182 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!183 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!184 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!185 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!186 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!187 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!188 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!189 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!190 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!191 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!192 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!193 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!194 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!195 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!196 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!197 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!198 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!199 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!200 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!201 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !202, line: 363, baseType: !7, size: 32, elements: !203)
!202 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!203 = !{!204, !205, !206}
!204 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!205 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!206 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!207 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !202, line: 355, baseType: !7, size: 32, elements: !208)
!208 = !{!209, !210, !211}
!209 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!210 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!211 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !213, line: 474, baseType: !7, size: 32, elements: !214)
!213 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!214 = !{!215, !216}
!215 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!216 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!217 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !6, line: 280, baseType: !7, size: 32, elements: !218)
!218 = !{!219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234}
!219 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!220 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!221 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!222 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!223 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!224 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!225 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!226 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!227 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!228 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!229 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!230 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!231 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!232 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!233 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!234 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!235 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !6, line: 1817, baseType: !7, size: 32, elements: !236)
!236 = !{!237, !238, !239, !240, !241}
!237 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!238 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!239 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!240 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!241 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!242 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !6, line: 1805, baseType: !7, size: 32, elements: !243)
!243 = !{!244, !245, !246, !247, !248}
!244 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!245 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!246 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!247 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!248 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!249 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !250, line: 309, baseType: !7, size: 32, elements: !251)
!250 = !DIFile(filename: "./cgraph.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!251 = !{!252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271}
!252 = !DIEnumerator(name: "CIF_OK", value: 0, isUnsigned: true)
!253 = !DIEnumerator(name: "CIF_UNSPECIFIED", value: 1, isUnsigned: true)
!254 = !DIEnumerator(name: "CIF_FUNCTION_NOT_CONSIDERED", value: 2, isUnsigned: true)
!255 = !DIEnumerator(name: "CIF_BODY_NOT_AVAILABLE", value: 3, isUnsigned: true)
!256 = !DIEnumerator(name: "CIF_REDEFINED_EXTERN_INLINE", value: 4, isUnsigned: true)
!257 = !DIEnumerator(name: "CIF_FUNCTION_NOT_INLINABLE", value: 5, isUnsigned: true)
!258 = !DIEnumerator(name: "CIF_FUNCTION_NOT_INLINE_CANDIDATE", value: 6, isUnsigned: true)
!259 = !DIEnumerator(name: "CIF_LARGE_FUNCTION_GROWTH_LIMIT", value: 7, isUnsigned: true)
!260 = !DIEnumerator(name: "CIF_LARGE_STACK_FRAME_GROWTH_LIMIT", value: 8, isUnsigned: true)
!261 = !DIEnumerator(name: "CIF_MAX_INLINE_INSNS_SINGLE_LIMIT", value: 9, isUnsigned: true)
!262 = !DIEnumerator(name: "CIF_MAX_INLINE_INSNS_AUTO_LIMIT", value: 10, isUnsigned: true)
!263 = !DIEnumerator(name: "CIF_INLINE_UNIT_GROWTH_LIMIT", value: 11, isUnsigned: true)
!264 = !DIEnumerator(name: "CIF_RECURSIVE_INLINING", value: 12, isUnsigned: true)
!265 = !DIEnumerator(name: "CIF_UNLIKELY_CALL", value: 13, isUnsigned: true)
!266 = !DIEnumerator(name: "CIF_NOT_DECLARED_INLINED", value: 14, isUnsigned: true)
!267 = !DIEnumerator(name: "CIF_OPTIMIZING_FOR_SIZE", value: 15, isUnsigned: true)
!268 = !DIEnumerator(name: "CIF_TARGET_OPTION_MISMATCH", value: 16, isUnsigned: true)
!269 = !DIEnumerator(name: "CIF_MISMATCHED_ARGUMENTS", value: 17, isUnsigned: true)
!270 = !DIEnumerator(name: "CIF_ORIGINALLY_INDIRECT_CALL", value: 18, isUnsigned: true)
!271 = !DIEnumerator(name: "CIF_N_REASONS", value: 19, isUnsigned: true)
!272 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "opt_pass_type", file: !273, line: 104, baseType: !7, size: 32, elements: !274)
!273 = !DIFile(filename: "./tree-pass.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!274 = !{!275, !276, !277, !278}
!275 = !DIEnumerator(name: "GIMPLE_PASS", value: 0, isUnsigned: true)
!276 = !DIEnumerator(name: "RTL_PASS", value: 1, isUnsigned: true)
!277 = !DIEnumerator(name: "SIMPLE_IPA_PASS", value: 2, isUnsigned: true)
!278 = !DIEnumerator(name: "IPA_PASS", value: 3, isUnsigned: true)
!279 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !280, line: 74, baseType: !7, size: 32, elements: !281)
!280 = !DIFile(filename: "./timevar.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!281 = !{!282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454}
!282 = !DIEnumerator(name: "TV_NONE", value: 0, isUnsigned: true)
!283 = !DIEnumerator(name: "TV_TOTAL", value: 1, isUnsigned: true)
!284 = !DIEnumerator(name: "TV_GC", value: 2, isUnsigned: true)
!285 = !DIEnumerator(name: "TV_DUMP", value: 3, isUnsigned: true)
!286 = !DIEnumerator(name: "TV_CGRAPH", value: 4, isUnsigned: true)
!287 = !DIEnumerator(name: "TV_CGRAPHOPT", value: 5, isUnsigned: true)
!288 = !DIEnumerator(name: "TV_IPA_CONSTANT_PROP", value: 6, isUnsigned: true)
!289 = !DIEnumerator(name: "TV_IPA_LTO_GIMPLE_IO", value: 7, isUnsigned: true)
!290 = !DIEnumerator(name: "TV_IPA_LTO_DECL_IO", value: 8, isUnsigned: true)
!291 = !DIEnumerator(name: "TV_IPA_LTO_CGRAPH_IO", value: 9, isUnsigned: true)
!292 = !DIEnumerator(name: "TV_LTO", value: 10, isUnsigned: true)
!293 = !DIEnumerator(name: "TV_WHOPR_WPA", value: 11, isUnsigned: true)
!294 = !DIEnumerator(name: "TV_WHOPR_WPA_IO", value: 12, isUnsigned: true)
!295 = !DIEnumerator(name: "TV_WHOPR_LTRANS", value: 13, isUnsigned: true)
!296 = !DIEnumerator(name: "TV_WHOPR_WPA_FIXUP", value: 14, isUnsigned: true)
!297 = !DIEnumerator(name: "TV_WHOPR_WPA_LTRANS_EXEC", value: 15, isUnsigned: true)
!298 = !DIEnumerator(name: "TV_IPA_REFERENCE", value: 16, isUnsigned: true)
!299 = !DIEnumerator(name: "TV_IPA_PURE_CONST", value: 17, isUnsigned: true)
!300 = !DIEnumerator(name: "TV_IPA_TYPE_ESCAPE", value: 18, isUnsigned: true)
!301 = !DIEnumerator(name: "TV_IPA_PTA", value: 19, isUnsigned: true)
!302 = !DIEnumerator(name: "TV_IPA_SRA", value: 20, isUnsigned: true)
!303 = !DIEnumerator(name: "TV_IPA_FREE_LANG_DATA", value: 21, isUnsigned: true)
!304 = !DIEnumerator(name: "TV_CFG", value: 22, isUnsigned: true)
!305 = !DIEnumerator(name: "TV_CLEANUP_CFG", value: 23, isUnsigned: true)
!306 = !DIEnumerator(name: "TV_CFG_VERIFY", value: 24, isUnsigned: true)
!307 = !DIEnumerator(name: "TV_DELETE_TRIVIALLY_DEAD", value: 25, isUnsigned: true)
!308 = !DIEnumerator(name: "TV_LIFE", value: 26, isUnsigned: true)
!309 = !DIEnumerator(name: "TV_LIFE_UPDATE", value: 27, isUnsigned: true)
!310 = !DIEnumerator(name: "TV_DF_SCAN", value: 28, isUnsigned: true)
!311 = !DIEnumerator(name: "TV_DF_MD", value: 29, isUnsigned: true)
!312 = !DIEnumerator(name: "TV_DF_RD", value: 30, isUnsigned: true)
!313 = !DIEnumerator(name: "TV_DF_LR", value: 31, isUnsigned: true)
!314 = !DIEnumerator(name: "TV_DF_LIVE", value: 32, isUnsigned: true)
!315 = !DIEnumerator(name: "TV_DF_UREC", value: 33, isUnsigned: true)
!316 = !DIEnumerator(name: "TV_DF_CHAIN", value: 34, isUnsigned: true)
!317 = !DIEnumerator(name: "TV_DF_BYTE_LR", value: 35, isUnsigned: true)
!318 = !DIEnumerator(name: "TV_DF_NOTE", value: 36, isUnsigned: true)
!319 = !DIEnumerator(name: "TV_REG_STATS", value: 37, isUnsigned: true)
!320 = !DIEnumerator(name: "TV_ALIAS_ANALYSIS", value: 38, isUnsigned: true)
!321 = !DIEnumerator(name: "TV_ALIAS_STMT_WALK", value: 39, isUnsigned: true)
!322 = !DIEnumerator(name: "TV_REG_SCAN", value: 40, isUnsigned: true)
!323 = !DIEnumerator(name: "TV_REBUILD_JUMP", value: 41, isUnsigned: true)
!324 = !DIEnumerator(name: "TV_CPP", value: 42, isUnsigned: true)
!325 = !DIEnumerator(name: "TV_LEX", value: 43, isUnsigned: true)
!326 = !DIEnumerator(name: "TV_PARSE", value: 44, isUnsigned: true)
!327 = !DIEnumerator(name: "TV_NAME_LOOKUP", value: 45, isUnsigned: true)
!328 = !DIEnumerator(name: "TV_INLINE_HEURISTICS", value: 46, isUnsigned: true)
!329 = !DIEnumerator(name: "TV_INTEGRATION", value: 47, isUnsigned: true)
!330 = !DIEnumerator(name: "TV_TREE_GIMPLIFY", value: 48, isUnsigned: true)
!331 = !DIEnumerator(name: "TV_TREE_EH", value: 49, isUnsigned: true)
!332 = !DIEnumerator(name: "TV_TREE_CFG", value: 50, isUnsigned: true)
!333 = !DIEnumerator(name: "TV_TREE_CLEANUP_CFG", value: 51, isUnsigned: true)
!334 = !DIEnumerator(name: "TV_TREE_VRP", value: 52, isUnsigned: true)
!335 = !DIEnumerator(name: "TV_TREE_COPY_PROP", value: 53, isUnsigned: true)
!336 = !DIEnumerator(name: "TV_TREE_STORE_COPY_PROP", value: 54, isUnsigned: true)
!337 = !DIEnumerator(name: "TV_FIND_REFERENCED_VARS", value: 55, isUnsigned: true)
!338 = !DIEnumerator(name: "TV_TREE_PTA", value: 56, isUnsigned: true)
!339 = !DIEnumerator(name: "TV_TREE_INSERT_PHI_NODES", value: 57, isUnsigned: true)
!340 = !DIEnumerator(name: "TV_TREE_SSA_REWRITE_BLOCKS", value: 58, isUnsigned: true)
!341 = !DIEnumerator(name: "TV_TREE_SSA_OTHER", value: 59, isUnsigned: true)
!342 = !DIEnumerator(name: "TV_TREE_SSA_INCREMENTAL", value: 60, isUnsigned: true)
!343 = !DIEnumerator(name: "TV_TREE_OPS", value: 61, isUnsigned: true)
!344 = !DIEnumerator(name: "TV_TREE_SSA_DOMINATOR_OPTS", value: 62, isUnsigned: true)
!345 = !DIEnumerator(name: "TV_TREE_SRA", value: 63, isUnsigned: true)
!346 = !DIEnumerator(name: "TV_TREE_STORE_CCP", value: 64, isUnsigned: true)
!347 = !DIEnumerator(name: "TV_TREE_CCP", value: 65, isUnsigned: true)
!348 = !DIEnumerator(name: "TV_TREE_PHI_CPROP", value: 66, isUnsigned: true)
!349 = !DIEnumerator(name: "TV_TREE_SPLIT_EDGES", value: 67, isUnsigned: true)
!350 = !DIEnumerator(name: "TV_TREE_REASSOC", value: 68, isUnsigned: true)
!351 = !DIEnumerator(name: "TV_TREE_PRE", value: 69, isUnsigned: true)
!352 = !DIEnumerator(name: "TV_TREE_REDPHI", value: 70, isUnsigned: true)
!353 = !DIEnumerator(name: "TV_TREE_FRE", value: 71, isUnsigned: true)
!354 = !DIEnumerator(name: "TV_TREE_SINK", value: 72, isUnsigned: true)
!355 = !DIEnumerator(name: "TV_TREE_PHIOPT", value: 73, isUnsigned: true)
!356 = !DIEnumerator(name: "TV_TREE_FORWPROP", value: 74, isUnsigned: true)
!357 = !DIEnumerator(name: "TV_TREE_PHIPROP", value: 75, isUnsigned: true)
!358 = !DIEnumerator(name: "TV_TREE_DCE", value: 76, isUnsigned: true)
!359 = !DIEnumerator(name: "TV_TREE_CD_DCE", value: 77, isUnsigned: true)
!360 = !DIEnumerator(name: "TV_TREE_CALL_CDCE", value: 78, isUnsigned: true)
!361 = !DIEnumerator(name: "TV_TREE_DSE", value: 79, isUnsigned: true)
!362 = !DIEnumerator(name: "TV_TREE_MERGE_PHI", value: 80, isUnsigned: true)
!363 = !DIEnumerator(name: "TV_TREE_LOOP", value: 81, isUnsigned: true)
!364 = !DIEnumerator(name: "TV_TREE_LOOP_BOUNDS", value: 82, isUnsigned: true)
!365 = !DIEnumerator(name: "TV_LIM", value: 83, isUnsigned: true)
!366 = !DIEnumerator(name: "TV_TREE_LOOP_IVCANON", value: 84, isUnsigned: true)
!367 = !DIEnumerator(name: "TV_SCEV_CONST", value: 85, isUnsigned: true)
!368 = !DIEnumerator(name: "TV_TREE_LOOP_UNSWITCH", value: 86, isUnsigned: true)
!369 = !DIEnumerator(name: "TV_COMPLETE_UNROLL", value: 87, isUnsigned: true)
!370 = !DIEnumerator(name: "TV_TREE_PARALLELIZE_LOOPS", value: 88, isUnsigned: true)
!371 = !DIEnumerator(name: "TV_TREE_VECTORIZATION", value: 89, isUnsigned: true)
!372 = !DIEnumerator(name: "TV_TREE_SLP_VECTORIZATION", value: 90, isUnsigned: true)
!373 = !DIEnumerator(name: "TV_GRAPHITE_TRANSFORMS", value: 91, isUnsigned: true)
!374 = !DIEnumerator(name: "TV_GRAPHITE_DATA_DEPS", value: 92, isUnsigned: true)
!375 = !DIEnumerator(name: "TV_GRAPHITE_CODE_GEN", value: 93, isUnsigned: true)
!376 = !DIEnumerator(name: "TV_TREE_LINEAR_TRANSFORM", value: 94, isUnsigned: true)
!377 = !DIEnumerator(name: "TV_TREE_LOOP_DISTRIBUTION", value: 95, isUnsigned: true)
!378 = !DIEnumerator(name: "TV_CHECK_DATA_DEPS", value: 96, isUnsigned: true)
!379 = !DIEnumerator(name: "TV_TREE_PREFETCH", value: 97, isUnsigned: true)
!380 = !DIEnumerator(name: "TV_TREE_LOOP_IVOPTS", value: 98, isUnsigned: true)
!381 = !DIEnumerator(name: "TV_PREDCOM", value: 99, isUnsigned: true)
!382 = !DIEnumerator(name: "TV_TREE_LOOP_INIT", value: 100, isUnsigned: true)
!383 = !DIEnumerator(name: "TV_TREE_LOOP_FINI", value: 101, isUnsigned: true)
!384 = !DIEnumerator(name: "TV_TREE_CH", value: 102, isUnsigned: true)
!385 = !DIEnumerator(name: "TV_TREE_SSA_UNCPROP", value: 103, isUnsigned: true)
!386 = !DIEnumerator(name: "TV_TREE_SSA_TO_NORMAL", value: 104, isUnsigned: true)
!387 = !DIEnumerator(name: "TV_TREE_NRV", value: 105, isUnsigned: true)
!388 = !DIEnumerator(name: "TV_TREE_COPY_RENAME", value: 106, isUnsigned: true)
!389 = !DIEnumerator(name: "TV_TREE_SSA_VERIFY", value: 107, isUnsigned: true)
!390 = !DIEnumerator(name: "TV_TREE_STMT_VERIFY", value: 108, isUnsigned: true)
!391 = !DIEnumerator(name: "TV_TREE_SWITCH_CONVERSION", value: 109, isUnsigned: true)
!392 = !DIEnumerator(name: "TV_CGRAPH_VERIFY", value: 110, isUnsigned: true)
!393 = !DIEnumerator(name: "TV_DOM_FRONTIERS", value: 111, isUnsigned: true)
!394 = !DIEnumerator(name: "TV_DOMINANCE", value: 112, isUnsigned: true)
!395 = !DIEnumerator(name: "TV_CONTROL_DEPENDENCES", value: 113, isUnsigned: true)
!396 = !DIEnumerator(name: "TV_OVERLOAD", value: 114, isUnsigned: true)
!397 = !DIEnumerator(name: "TV_TEMPLATE_INSTANTIATION", value: 115, isUnsigned: true)
!398 = !DIEnumerator(name: "TV_EXPAND", value: 116, isUnsigned: true)
!399 = !DIEnumerator(name: "TV_VARCONST", value: 117, isUnsigned: true)
!400 = !DIEnumerator(name: "TV_LOWER_SUBREG", value: 118, isUnsigned: true)
!401 = !DIEnumerator(name: "TV_JUMP", value: 119, isUnsigned: true)
!402 = !DIEnumerator(name: "TV_FWPROP", value: 120, isUnsigned: true)
!403 = !DIEnumerator(name: "TV_CSE", value: 121, isUnsigned: true)
!404 = !DIEnumerator(name: "TV_DCE", value: 122, isUnsigned: true)
!405 = !DIEnumerator(name: "TV_DSE1", value: 123, isUnsigned: true)
!406 = !DIEnumerator(name: "TV_DSE2", value: 124, isUnsigned: true)
!407 = !DIEnumerator(name: "TV_LOOP", value: 125, isUnsigned: true)
!408 = !DIEnumerator(name: "TV_LOOP_MOVE_INVARIANTS", value: 126, isUnsigned: true)
!409 = !DIEnumerator(name: "TV_LOOP_UNSWITCH", value: 127, isUnsigned: true)
!410 = !DIEnumerator(name: "TV_LOOP_UNROLL", value: 128, isUnsigned: true)
!411 = !DIEnumerator(name: "TV_LOOP_DOLOOP", value: 129, isUnsigned: true)
!412 = !DIEnumerator(name: "TV_CPROP", value: 130, isUnsigned: true)
!413 = !DIEnumerator(name: "TV_PRE", value: 131, isUnsigned: true)
!414 = !DIEnumerator(name: "TV_HOIST", value: 132, isUnsigned: true)
!415 = !DIEnumerator(name: "TV_LSM", value: 133, isUnsigned: true)
!416 = !DIEnumerator(name: "TV_TRACER", value: 134, isUnsigned: true)
!417 = !DIEnumerator(name: "TV_WEB", value: 135, isUnsigned: true)
!418 = !DIEnumerator(name: "TV_AUTO_INC_DEC", value: 136, isUnsigned: true)
!419 = !DIEnumerator(name: "TV_CSE2", value: 137, isUnsigned: true)
!420 = !DIEnumerator(name: "TV_BRANCH_PROB", value: 138, isUnsigned: true)
!421 = !DIEnumerator(name: "TV_VPT", value: 139, isUnsigned: true)
!422 = !DIEnumerator(name: "TV_COMBINE", value: 140, isUnsigned: true)
!423 = !DIEnumerator(name: "TV_IFCVT", value: 141, isUnsigned: true)
!424 = !DIEnumerator(name: "TV_REGMOVE", value: 142, isUnsigned: true)
!425 = !DIEnumerator(name: "TV_MODE_SWITCH", value: 143, isUnsigned: true)
!426 = !DIEnumerator(name: "TV_SMS", value: 144, isUnsigned: true)
!427 = !DIEnumerator(name: "TV_SCHED", value: 145, isUnsigned: true)
!428 = !DIEnumerator(name: "TV_LOCAL_ALLOC", value: 146, isUnsigned: true)
!429 = !DIEnumerator(name: "TV_GLOBAL_ALLOC", value: 147, isUnsigned: true)
!430 = !DIEnumerator(name: "TV_IRA", value: 148, isUnsigned: true)
!431 = !DIEnumerator(name: "TV_RELOAD", value: 149, isUnsigned: true)
!432 = !DIEnumerator(name: "TV_RELOAD_CSE_REGS", value: 150, isUnsigned: true)
!433 = !DIEnumerator(name: "TV_SEQABSTR", value: 151, isUnsigned: true)
!434 = !DIEnumerator(name: "TV_GCSE_AFTER_RELOAD", value: 152, isUnsigned: true)
!435 = !DIEnumerator(name: "TV_THREAD_PROLOGUE_AND_EPILOGUE", value: 153, isUnsigned: true)
!436 = !DIEnumerator(name: "TV_IFCVT2", value: 154, isUnsigned: true)
!437 = !DIEnumerator(name: "TV_COMBINE_STACK_ADJUST", value: 155, isUnsigned: true)
!438 = !DIEnumerator(name: "TV_PEEPHOLE2", value: 156, isUnsigned: true)
!439 = !DIEnumerator(name: "TV_RENAME_REGISTERS", value: 157, isUnsigned: true)
!440 = !DIEnumerator(name: "TV_CPROP_REGISTERS", value: 158, isUnsigned: true)
!441 = !DIEnumerator(name: "TV_SCHED2", value: 159, isUnsigned: true)
!442 = !DIEnumerator(name: "TV_MACH_DEP", value: 160, isUnsigned: true)
!443 = !DIEnumerator(name: "TV_DBR_SCHED", value: 161, isUnsigned: true)
!444 = !DIEnumerator(name: "TV_REORDER_BLOCKS", value: 162, isUnsigned: true)
!445 = !DIEnumerator(name: "TV_SHORTEN_BRANCH", value: 163, isUnsigned: true)
!446 = !DIEnumerator(name: "TV_REG_STACK", value: 164, isUnsigned: true)
!447 = !DIEnumerator(name: "TV_FINAL", value: 165, isUnsigned: true)
!448 = !DIEnumerator(name: "TV_SYMOUT", value: 166, isUnsigned: true)
!449 = !DIEnumerator(name: "TV_VAR_TRACKING", value: 167, isUnsigned: true)
!450 = !DIEnumerator(name: "TV_TREE_IFCOMBINE", value: 168, isUnsigned: true)
!451 = !DIEnumerator(name: "TV_PLUGIN_INIT", value: 169, isUnsigned: true)
!452 = !DIEnumerator(name: "TV_PLUGIN_RUN", value: 170, isUnsigned: true)
!453 = !DIEnumerator(name: "TV_REST_OF_COMPILATION", value: 171, isUnsigned: true)
!454 = !DIEnumerator(name: "TIMEVAR_LAST", value: 172, isUnsigned: true)
!455 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ssa_op_iter_type", file: !456, line: 119, baseType: !7, size: 32, elements: !457)
!456 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!457 = !{!458, !459, !460, !461}
!458 = !DIEnumerator(name: "ssa_op_iter_none", value: 0, isUnsigned: true)
!459 = !DIEnumerator(name: "ssa_op_iter_tree", value: 1, isUnsigned: true)
!460 = !DIEnumerator(name: "ssa_op_iter_use", value: 2, isUnsigned: true)
!461 = !DIEnumerator(name: "ssa_op_iter_def", value: 3, isUnsigned: true)
!462 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_statement_structure_enum", file: !463, line: 727, baseType: !7, size: 32, elements: !464)
!463 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!464 = !{!465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488}
!465 = !DIEnumerator(name: "GSS_BASE", value: 0, isUnsigned: true)
!466 = !DIEnumerator(name: "GSS_WITH_OPS", value: 1, isUnsigned: true)
!467 = !DIEnumerator(name: "GSS_WITH_MEM_OPS_BASE", value: 2, isUnsigned: true)
!468 = !DIEnumerator(name: "GSS_WITH_MEM_OPS", value: 3, isUnsigned: true)
!469 = !DIEnumerator(name: "GSS_ASM", value: 4, isUnsigned: true)
!470 = !DIEnumerator(name: "GSS_BIND", value: 5, isUnsigned: true)
!471 = !DIEnumerator(name: "GSS_PHI", value: 6, isUnsigned: true)
!472 = !DIEnumerator(name: "GSS_TRY", value: 7, isUnsigned: true)
!473 = !DIEnumerator(name: "GSS_CATCH", value: 8, isUnsigned: true)
!474 = !DIEnumerator(name: "GSS_EH_FILTER", value: 9, isUnsigned: true)
!475 = !DIEnumerator(name: "GSS_EH_MNT", value: 10, isUnsigned: true)
!476 = !DIEnumerator(name: "GSS_EH_CTRL", value: 11, isUnsigned: true)
!477 = !DIEnumerator(name: "GSS_WCE", value: 12, isUnsigned: true)
!478 = !DIEnumerator(name: "GSS_OMP", value: 13, isUnsigned: true)
!479 = !DIEnumerator(name: "GSS_OMP_CRITICAL", value: 14, isUnsigned: true)
!480 = !DIEnumerator(name: "GSS_OMP_FOR", value: 15, isUnsigned: true)
!481 = !DIEnumerator(name: "GSS_OMP_PARALLEL", value: 16, isUnsigned: true)
!482 = !DIEnumerator(name: "GSS_OMP_TASK", value: 17, isUnsigned: true)
!483 = !DIEnumerator(name: "GSS_OMP_SECTIONS", value: 18, isUnsigned: true)
!484 = !DIEnumerator(name: "GSS_OMP_SINGLE", value: 19, isUnsigned: true)
!485 = !DIEnumerator(name: "GSS_OMP_CONTINUE", value: 20, isUnsigned: true)
!486 = !DIEnumerator(name: "GSS_OMP_ATOMIC_LOAD", value: 21, isUnsigned: true)
!487 = !DIEnumerator(name: "GSS_OMP_ATOMIC_STORE", value: 22, isUnsigned: true)
!488 = !DIEnumerator(name: "LAST_GSS_ENUM", value: 23, isUnsigned: true)
!489 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_code", file: !463, line: 51, baseType: !7, size: 32, elements: !490)
!490 = !{!491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526}
!491 = !DIEnumerator(name: "GIMPLE_ERROR_MARK", value: 0, isUnsigned: true)
!492 = !DIEnumerator(name: "GIMPLE_COND", value: 1, isUnsigned: true)
!493 = !DIEnumerator(name: "GIMPLE_DEBUG", value: 2, isUnsigned: true)
!494 = !DIEnumerator(name: "GIMPLE_GOTO", value: 3, isUnsigned: true)
!495 = !DIEnumerator(name: "GIMPLE_LABEL", value: 4, isUnsigned: true)
!496 = !DIEnumerator(name: "GIMPLE_SWITCH", value: 5, isUnsigned: true)
!497 = !DIEnumerator(name: "GIMPLE_ASSIGN", value: 6, isUnsigned: true)
!498 = !DIEnumerator(name: "GIMPLE_ASM", value: 7, isUnsigned: true)
!499 = !DIEnumerator(name: "GIMPLE_CALL", value: 8, isUnsigned: true)
!500 = !DIEnumerator(name: "GIMPLE_RETURN", value: 9, isUnsigned: true)
!501 = !DIEnumerator(name: "GIMPLE_BIND", value: 10, isUnsigned: true)
!502 = !DIEnumerator(name: "GIMPLE_CATCH", value: 11, isUnsigned: true)
!503 = !DIEnumerator(name: "GIMPLE_EH_FILTER", value: 12, isUnsigned: true)
!504 = !DIEnumerator(name: "GIMPLE_EH_MUST_NOT_THROW", value: 13, isUnsigned: true)
!505 = !DIEnumerator(name: "GIMPLE_RESX", value: 14, isUnsigned: true)
!506 = !DIEnumerator(name: "GIMPLE_EH_DISPATCH", value: 15, isUnsigned: true)
!507 = !DIEnumerator(name: "GIMPLE_PHI", value: 16, isUnsigned: true)
!508 = !DIEnumerator(name: "GIMPLE_TRY", value: 17, isUnsigned: true)
!509 = !DIEnumerator(name: "GIMPLE_NOP", value: 18, isUnsigned: true)
!510 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_LOAD", value: 19, isUnsigned: true)
!511 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_STORE", value: 20, isUnsigned: true)
!512 = !DIEnumerator(name: "GIMPLE_OMP_CONTINUE", value: 21, isUnsigned: true)
!513 = !DIEnumerator(name: "GIMPLE_OMP_CRITICAL", value: 22, isUnsigned: true)
!514 = !DIEnumerator(name: "GIMPLE_OMP_FOR", value: 23, isUnsigned: true)
!515 = !DIEnumerator(name: "GIMPLE_OMP_MASTER", value: 24, isUnsigned: true)
!516 = !DIEnumerator(name: "GIMPLE_OMP_ORDERED", value: 25, isUnsigned: true)
!517 = !DIEnumerator(name: "GIMPLE_OMP_PARALLEL", value: 26, isUnsigned: true)
!518 = !DIEnumerator(name: "GIMPLE_OMP_TASK", value: 27, isUnsigned: true)
!519 = !DIEnumerator(name: "GIMPLE_OMP_RETURN", value: 28, isUnsigned: true)
!520 = !DIEnumerator(name: "GIMPLE_OMP_SECTION", value: 29, isUnsigned: true)
!521 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS", value: 30, isUnsigned: true)
!522 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS_SWITCH", value: 31, isUnsigned: true)
!523 = !DIEnumerator(name: "GIMPLE_OMP_SINGLE", value: 32, isUnsigned: true)
!524 = !DIEnumerator(name: "GIMPLE_PREDICT", value: 33, isUnsigned: true)
!525 = !DIEnumerator(name: "GIMPLE_WITH_CLEANUP_EXPR", value: 34, isUnsigned: true)
!526 = !DIEnumerator(name: "LAST_AND_UNUSED_GIMPLE_CODE", value: 35, isUnsigned: true)
!527 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lto_section_type", file: !528, line: 256, baseType: !7, size: 32, elements: !529)
!528 = !DIFile(filename: "./lto-streamer.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!529 = !{!530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540}
!530 = !DIEnumerator(name: "LTO_section_decls", value: 0, isUnsigned: true)
!531 = !DIEnumerator(name: "LTO_section_function_body", value: 1, isUnsigned: true)
!532 = !DIEnumerator(name: "LTO_section_static_initializer", value: 2, isUnsigned: true)
!533 = !DIEnumerator(name: "LTO_section_cgraph", value: 3, isUnsigned: true)
!534 = !DIEnumerator(name: "LTO_section_jump_functions", value: 4, isUnsigned: true)
!535 = !DIEnumerator(name: "LTO_section_ipa_pure_const", value: 5, isUnsigned: true)
!536 = !DIEnumerator(name: "LTO_section_ipa_reference", value: 6, isUnsigned: true)
!537 = !DIEnumerator(name: "LTO_section_symtab", value: 7, isUnsigned: true)
!538 = !DIEnumerator(name: "LTO_section_wpa_fixup", value: 8, isUnsigned: true)
!539 = !DIEnumerator(name: "LTO_section_opts", value: 9, isUnsigned: true)
!540 = !DIEnumerator(name: "LTO_N_SECTION_TYPES", value: 10, isUnsigned: true)
!541 = !{!542, !543, !544, !545, !548, !549, !7, !551, !1986, !1993, !1217, !556, !2003, !2016, !2021, !5, !2030, !2033, !2020, !852, !2036, !885, !546}
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!544 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !547)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_node", file: !250, line: 181, size: 2496, elements: !554)
!554 = !{!555, !1729, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1869, !1923, !1933, !1937, !1963, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !553, file: !250, line: 182, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !557, line: 56, baseType: !558)
!557 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !6, line: 3371, size: 1792, elements: !560)
!560 = !{!561, !594, !600, !613, !620, !627, !632, !641, !647, !660, !672, !710, !718, !746, !763, !764, !769, !778, !784, !789, !793, !797, !1378, !1427, !1433, !1439, !1446, !1459, !1473, !1490, !1502, !1524, !1539, !1711}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !559, file: !6, line: 3372, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !6, line: 360, size: 64, elements: !563)
!563 = !{!564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !562, file: !6, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !562, file: !6, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !562, file: !6, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !562, file: !6, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !562, file: !6, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !562, file: !6, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !562, file: !6, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !562, file: !6, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !562, file: !6, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !562, file: !6, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !562, file: !6, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !562, file: !6, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !562, file: !6, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !562, file: !6, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !562, file: !6, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !562, file: !6, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !562, file: !6, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !562, file: !6, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !562, file: !6, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !562, file: !6, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !562, file: !6, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !562, file: !6, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !562, file: !6, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !562, file: !6, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !562, file: !6, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !562, file: !6, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !562, file: !6, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !562, file: !6, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !562, file: !6, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !562, file: !6, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !559, file: !6, line: 3373, baseType: !595, size: 192)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !6, line: 402, size: 192, elements: !596)
!596 = !{!597, !598, !599}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !595, file: !6, line: 403, baseType: !562, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !595, file: !6, line: 404, baseType: !556, size: 64, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !595, file: !6, line: 405, baseType: !556, size: 64, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !559, file: !6, line: 3374, baseType: !601, size: 320)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !6, line: 1384, size: 320, elements: !602)
!602 = !{!603, !604}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !601, file: !6, line: 1385, baseType: !595, size: 192)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !601, file: !6, line: 1386, baseType: !605, size: 128, offset: 192)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !606, line: 58, baseType: !607)
!606 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !606, line: 54, size: 128, elements: !608)
!608 = !{!609, !611}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !607, file: !606, line: 56, baseType: !610, size: 64)
!610 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !607, file: !606, line: 57, baseType: !612, size: 64, offset: 64)
!612 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !559, file: !6, line: 3375, baseType: !614, size: 256)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !6, line: 1397, size: 256, elements: !615)
!615 = !{!616, !617}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !614, file: !6, line: 1398, baseType: !595, size: 192)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !614, file: !6, line: 1399, baseType: !618, size: 64, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !6, line: 1392, flags: DIFlagFwdDecl)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !559, file: !6, line: 3376, baseType: !621, size: 256)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !6, line: 1408, size: 256, elements: !622)
!622 = !{!623, !624}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !621, file: !6, line: 1409, baseType: !595, size: 192)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !621, file: !6, line: 1410, baseType: !625, size: 64, offset: 192)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !6, line: 1403, flags: DIFlagFwdDecl)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !559, file: !6, line: 3377, baseType: !628, size: 256)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !6, line: 1437, size: 256, elements: !629)
!629 = !{!630, !631}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !628, file: !6, line: 1438, baseType: !595, size: 192)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !628, file: !6, line: 1439, baseType: !556, size: 64, offset: 192)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !559, file: !6, line: 3378, baseType: !633, size: 256)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !6, line: 1418, size: 256, elements: !634)
!634 = !{!635, !636, !637}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !633, file: !6, line: 1419, baseType: !595, size: 192)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !633, file: !6, line: 1420, baseType: !544, size: 32, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !633, file: !6, line: 1421, baseType: !638, size: 8, offset: 224)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !547, size: 8, elements: !639)
!639 = !{!640}
!640 = !DISubrange(count: 1)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !559, file: !6, line: 3379, baseType: !642, size: 320)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !6, line: 1428, size: 320, elements: !643)
!643 = !{!644, !645, !646}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !642, file: !6, line: 1429, baseType: !595, size: 192)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !642, file: !6, line: 1430, baseType: !556, size: 64, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !642, file: !6, line: 1431, baseType: !556, size: 64, offset: 256)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !559, file: !6, line: 3380, baseType: !648, size: 320)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !6, line: 1460, size: 320, elements: !649)
!649 = !{!650, !651}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !648, file: !6, line: 1461, baseType: !595, size: 192)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !648, file: !6, line: 1462, baseType: !652, size: 128, offset: 192)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !653, line: 31, size: 128, elements: !654)
!653 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!654 = !{!655, !658, !659}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !652, file: !653, line: 32, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !543)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !652, file: !653, line: 33, baseType: !7, size: 32, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !652, file: !653, line: 34, baseType: !7, size: 32, offset: 96)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !559, file: !6, line: 3381, baseType: !661, size: 384)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !6, line: 2507, size: 384, elements: !662)
!662 = !{!663, !664, !669, !670, !671}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !661, file: !6, line: 2508, baseType: !595, size: 192)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !661, file: !6, line: 2509, baseType: !665, size: 32, offset: 192)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !666, line: 58, baseType: !667)
!666 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !668, line: 44, baseType: !7)
!668 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!669 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !661, file: !6, line: 2510, baseType: !7, size: 32, offset: 224)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !661, file: !6, line: 2511, baseType: !556, size: 64, offset: 256)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !661, file: !6, line: 2512, baseType: !556, size: 64, offset: 320)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !559, file: !6, line: 3382, baseType: !673, size: 896)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !6, line: 2652, size: 896, elements: !674)
!674 = !{!675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !673, file: !6, line: 2653, baseType: !661, size: 384)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !673, file: !6, line: 2654, baseType: !556, size: 64, offset: 384)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !673, file: !6, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !673, file: !6, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !673, file: !6, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !673, file: !6, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !673, file: !6, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !673, file: !6, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !673, file: !6, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !673, file: !6, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !673, file: !6, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !673, file: !6, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !673, file: !6, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !673, file: !6, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !673, file: !6, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !673, file: !6, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !673, file: !6, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !673, file: !6, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !673, file: !6, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !673, file: !6, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !673, file: !6, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !673, file: !6, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !673, file: !6, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !673, file: !6, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !673, file: !6, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !673, file: !6, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !673, file: !6, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !673, file: !6, line: 2703, baseType: !7, size: 32, offset: 512)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !673, file: !6, line: 2705, baseType: !556, size: 64, offset: 576)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !673, file: !6, line: 2706, baseType: !556, size: 64, offset: 640)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !673, file: !6, line: 2707, baseType: !556, size: 64, offset: 704)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !673, file: !6, line: 2708, baseType: !556, size: 64, offset: 768)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !673, file: !6, line: 2711, baseType: !708, size: 64, offset: 832)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !6, line: 2711, flags: DIFlagFwdDecl)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !559, file: !6, line: 3383, baseType: !711, size: 960)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !6, line: 2756, size: 960, elements: !712)
!712 = !{!713, !714}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !711, file: !6, line: 2757, baseType: !673, size: 896)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !711, file: !6, line: 2758, baseType: !715, size: 64, offset: 896)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !557, line: 50, baseType: !716)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !557, line: 49, flags: DIFlagFwdDecl)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !559, file: !6, line: 3384, baseType: !719, size: 1472)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !6, line: 3114, size: 1472, elements: !720)
!720 = !{!721, !742, !743, !744, !745}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !719, file: !6, line: 3115, baseType: !722, size: 1216)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !6, line: 2984, size: 1216, elements: !723)
!723 = !{!724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !722, file: !6, line: 2985, baseType: !711, size: 960)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !722, file: !6, line: 2986, baseType: !556, size: 64, offset: 960)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !722, file: !6, line: 2987, baseType: !556, size: 64, offset: 1024)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !722, file: !6, line: 2988, baseType: !556, size: 64, offset: 1088)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !722, file: !6, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !722, file: !6, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !722, file: !6, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !722, file: !6, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !722, file: !6, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !722, file: !6, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !722, file: !6, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !722, file: !6, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !722, file: !6, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !722, file: !6, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !722, file: !6, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !722, file: !6, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !722, file: !6, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !722, file: !6, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !719, file: !6, line: 3117, baseType: !556, size: 64, offset: 1216)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !719, file: !6, line: 3119, baseType: !556, size: 64, offset: 1280)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !719, file: !6, line: 3121, baseType: !556, size: 64, offset: 1344)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !719, file: !6, line: 3123, baseType: !556, size: 64, offset: 1408)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !559, file: !6, line: 3385, baseType: !747, size: 1088)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !6, line: 2874, size: 1088, elements: !748)
!748 = !{!749, !750, !751}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !747, file: !6, line: 2875, baseType: !711, size: 960)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !747, file: !6, line: 2876, baseType: !715, size: 64, offset: 960)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !747, file: !6, line: 2877, baseType: !752, size: 64, offset: 1024)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !754, line: 172, size: 128, elements: !755)
!754 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!755 = !{!756, !757, !758, !759, !760, !761, !762}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !753, file: !754, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !753, file: !754, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !753, file: !754, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !753, file: !754, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !753, file: !754, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !753, file: !754, line: 195, baseType: !7, size: 32, offset: 32)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !753, file: !754, line: 199, baseType: !556, size: 64, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !559, file: !6, line: 3386, baseType: !722, size: 1216)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !559, file: !6, line: 3387, baseType: !765, size: 1280)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !6, line: 3093, size: 1280, elements: !766)
!766 = !{!767, !768}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !765, file: !6, line: 3094, baseType: !722, size: 1216)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !765, file: !6, line: 3095, baseType: !752, size: 64, offset: 1216)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !559, file: !6, line: 3388, baseType: !770, size: 1216)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !6, line: 2824, size: 1216, elements: !771)
!771 = !{!772, !773, !774, !775, !776, !777}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !770, file: !6, line: 2825, baseType: !673, size: 896)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !770, file: !6, line: 2827, baseType: !556, size: 64, offset: 896)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !770, file: !6, line: 2828, baseType: !556, size: 64, offset: 960)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !770, file: !6, line: 2829, baseType: !556, size: 64, offset: 1024)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !770, file: !6, line: 2830, baseType: !556, size: 64, offset: 1088)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !770, file: !6, line: 2831, baseType: !556, size: 64, offset: 1152)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !559, file: !6, line: 3389, baseType: !779, size: 1024)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !6, line: 2850, size: 1024, elements: !780)
!780 = !{!781, !782, !783}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !779, file: !6, line: 2851, baseType: !711, size: 960)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !779, file: !6, line: 2852, baseType: !544, size: 32, offset: 960)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !779, file: !6, line: 2853, baseType: !544, size: 32, offset: 992)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !559, file: !6, line: 3390, baseType: !785, size: 1024)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !6, line: 2857, size: 1024, elements: !786)
!786 = !{!787, !788}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !785, file: !6, line: 2858, baseType: !711, size: 960)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !785, file: !6, line: 2859, baseType: !752, size: 64, offset: 960)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !559, file: !6, line: 3391, baseType: !790, size: 960)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !6, line: 2862, size: 960, elements: !791)
!791 = !{!792}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !790, file: !6, line: 2863, baseType: !711, size: 960)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !559, file: !6, line: 3392, baseType: !794, size: 1472)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !6, line: 3304, size: 1472, elements: !795)
!795 = !{!796}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !794, file: !6, line: 3305, baseType: !719, size: 1472)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !559, file: !6, line: 3393, baseType: !798, size: 1792)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !6, line: 3248, size: 1792, elements: !799)
!799 = !{!800, !801, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !798, file: !6, line: 3249, baseType: !719, size: 1472)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !798, file: !6, line: 3251, baseType: !802, size: 64, offset: 1472)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !804, line: 463, size: 1152, elements: !805)
!804 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!805 = !{!806, !809, !1125, !1126, !1298, !1301, !1302, !1303, !1304, !1305, !1306, !1330, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !803, file: !804, line: 464, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !804, line: 464, flags: DIFlagFwdDecl)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !803, file: !804, line: 467, baseType: !810, size: 64, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !202, line: 374, size: 640, elements: !812)
!812 = !{!813, !1100, !1101, !1114, !1115, !1116, !1117, !1118, !1119, !1121, !1123, !1124}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !811, file: !202, line: 377, baseType: !814, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !557, line: 111, baseType: !815)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !202, line: 217, size: 832, elements: !817)
!817 = !{!818, !1063, !1064, !1065, !1068, !1074, !1075, !1076, !1094, !1095, !1096, !1097, !1098, !1099}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !816, file: !202, line: 219, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !202, line: 151, baseType: !821)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !202, line: 151, size: 128, elements: !822)
!822 = !{!823}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !821, file: !202, line: 151, baseType: !824, size: 128)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !202, line: 150, baseType: !825)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !202, line: 150, size: 128, elements: !826)
!826 = !{!827, !828, !829}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !825, file: !202, line: 150, baseType: !7, size: 32)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !825, file: !202, line: 150, baseType: !7, size: 32, offset: 32)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !825, file: !202, line: 150, baseType: !830, size: 64, offset: 64)
!830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !831, size: 64, elements: !639)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !557, line: 108, baseType: !832)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !202, line: 122, size: 512, elements: !834)
!834 = !{!835, !836, !837, !1055, !1056, !1057, !1058, !1059, !1060, !1061}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !833, file: !202, line: 124, baseType: !815, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !833, file: !202, line: 125, baseType: !815, size: 64, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !833, file: !202, line: 131, baseType: !838, size: 64, offset: 128)
!838 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !202, line: 128, size: 64, elements: !839)
!839 = !{!840, !1054}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !838, file: !202, line: 129, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !557, line: 66, baseType: !842)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !463, line: 143, size: 192, elements: !844)
!844 = !{!845, !1052, !1053}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !843, file: !463, line: 145, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !557, line: 69, baseType: !847)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !463, line: 136, size: 192, elements: !849)
!849 = !{!850, !1050, !1051}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !848, file: !463, line: 137, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !557, line: 58, baseType: !852)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !463, line: 737, size: 768, elements: !854)
!854 = !{!855, !872, !905, !911, !916, !921, !928, !934, !940, !945, !959, !964, !970, !975, !985, !990, !1008, !1015, !1022, !1028, !1033, !1039, !1045}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !853, file: !463, line: 738, baseType: !856, size: 256)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !463, line: 271, size: 256, elements: !857)
!857 = !{!858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !856, file: !463, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !856, file: !463, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !856, file: !463, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !856, file: !463, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !856, file: !463, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !856, file: !463, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !856, file: !463, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !856, file: !463, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !856, file: !463, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !856, file: !463, line: 312, baseType: !7, size: 32, offset: 32)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !856, file: !463, line: 316, baseType: !665, size: 32, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !856, file: !463, line: 319, baseType: !7, size: 32, offset: 96)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !856, file: !463, line: 323, baseType: !815, size: 64, offset: 128)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !856, file: !463, line: 327, baseType: !556, size: 64, offset: 192)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !853, file: !463, line: 739, baseType: !873, size: 448)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !463, line: 350, size: 448, elements: !874)
!874 = !{!875, !903}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !873, file: !463, line: 353, baseType: !876, size: 384)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !463, line: 333, size: 384, elements: !877)
!877 = !{!878, !879, !886}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !876, file: !463, line: 336, baseType: !856, size: 256)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !876, file: !463, line: 343, baseType: !880, size: 64, offset: 256)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !456, line: 37, size: 128, elements: !882)
!882 = !{!883, !884}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !881, file: !456, line: 39, baseType: !880, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !881, file: !456, line: 40, baseType: !885, size: 64, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !876, file: !463, line: 344, baseType: !887, size: 64, offset: 320)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !456, line: 45, size: 320, elements: !889)
!889 = !{!890, !891}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !888, file: !456, line: 47, baseType: !887, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !888, file: !456, line: 48, baseType: !892, size: 256, offset: 64)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !6, line: 1883, size: 256, elements: !893)
!893 = !{!894, !896, !897, !902}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !892, file: !6, line: 1884, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !892, file: !6, line: 1885, baseType: !895, size: 64, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !892, file: !6, line: 1891, baseType: !898, size: 64, offset: 128)
!898 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !892, file: !6, line: 1891, size: 64, elements: !899)
!899 = !{!900, !901}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !898, file: !6, line: 1891, baseType: !851, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !898, file: !6, line: 1891, baseType: !556, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !892, file: !6, line: 1892, baseType: !885, size: 64, offset: 192)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !873, file: !463, line: 359, baseType: !904, size: 64, offset: 384)
!904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !556, size: 64, elements: !639)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !853, file: !463, line: 740, baseType: !906, size: 512)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !463, line: 365, size: 512, elements: !907)
!907 = !{!908, !909, !910}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !906, file: !463, line: 368, baseType: !876, size: 384)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !906, file: !463, line: 373, baseType: !556, size: 64, offset: 384)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !906, file: !463, line: 374, baseType: !556, size: 64, offset: 448)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !853, file: !463, line: 741, baseType: !912, size: 576)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !463, line: 380, size: 576, elements: !913)
!913 = !{!914, !915}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !912, file: !463, line: 383, baseType: !906, size: 512)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !912, file: !463, line: 389, baseType: !904, size: 64, offset: 512)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !853, file: !463, line: 742, baseType: !917, size: 320)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !463, line: 395, size: 320, elements: !918)
!918 = !{!919, !920}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !917, file: !463, line: 397, baseType: !856, size: 256)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !917, file: !463, line: 400, baseType: !841, size: 64, offset: 256)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !853, file: !463, line: 743, baseType: !922, size: 448)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !463, line: 406, size: 448, elements: !923)
!923 = !{!924, !925, !926, !927}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !922, file: !463, line: 408, baseType: !856, size: 256)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !922, file: !463, line: 412, baseType: !556, size: 64, offset: 256)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !922, file: !463, line: 420, baseType: !556, size: 64, offset: 320)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !922, file: !463, line: 423, baseType: !841, size: 64, offset: 384)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !853, file: !463, line: 744, baseType: !929, size: 384)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !463, line: 429, size: 384, elements: !930)
!930 = !{!931, !932, !933}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !929, file: !463, line: 431, baseType: !856, size: 256)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !929, file: !463, line: 434, baseType: !556, size: 64, offset: 256)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !929, file: !463, line: 437, baseType: !841, size: 64, offset: 320)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !853, file: !463, line: 745, baseType: !935, size: 384)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !463, line: 443, size: 384, elements: !936)
!936 = !{!937, !938, !939}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !935, file: !463, line: 445, baseType: !856, size: 256)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !935, file: !463, line: 449, baseType: !556, size: 64, offset: 256)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !935, file: !463, line: 453, baseType: !841, size: 64, offset: 320)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !853, file: !463, line: 746, baseType: !941, size: 320)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !463, line: 459, size: 320, elements: !942)
!942 = !{!943, !944}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !941, file: !463, line: 461, baseType: !856, size: 256)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !941, file: !463, line: 464, baseType: !556, size: 64, offset: 256)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !853, file: !463, line: 747, baseType: !946, size: 768)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !463, line: 469, size: 768, elements: !947)
!947 = !{!948, !949, !950, !951, !952}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !946, file: !463, line: 471, baseType: !856, size: 256)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !946, file: !463, line: 474, baseType: !7, size: 32, offset: 256)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !946, file: !463, line: 475, baseType: !7, size: 32, offset: 288)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !946, file: !463, line: 478, baseType: !556, size: 64, offset: 320)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !946, file: !463, line: 481, baseType: !953, size: 384, offset: 384)
!953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !954, size: 384, elements: !639)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !6, line: 1917, size: 384, elements: !955)
!955 = !{!956, !957, !958}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !954, file: !6, line: 1920, baseType: !892, size: 256)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !954, file: !6, line: 1921, baseType: !556, size: 64, offset: 256)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !954, file: !6, line: 1922, baseType: !665, size: 32, offset: 320)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !853, file: !463, line: 748, baseType: !960, size: 320)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !463, line: 487, size: 320, elements: !961)
!961 = !{!962, !963}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !960, file: !463, line: 490, baseType: !856, size: 256)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !960, file: !463, line: 494, baseType: !544, size: 32, offset: 256)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !853, file: !463, line: 749, baseType: !965, size: 384)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !463, line: 500, size: 384, elements: !966)
!966 = !{!967, !968, !969}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !965, file: !463, line: 502, baseType: !856, size: 256)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !965, file: !463, line: 506, baseType: !841, size: 64, offset: 256)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !965, file: !463, line: 510, baseType: !841, size: 64, offset: 320)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !853, file: !463, line: 750, baseType: !971, size: 320)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !463, line: 529, size: 320, elements: !972)
!972 = !{!973, !974}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !971, file: !463, line: 531, baseType: !856, size: 256)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !971, file: !463, line: 540, baseType: !841, size: 64, offset: 256)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !853, file: !463, line: 751, baseType: !976, size: 704)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !463, line: 546, size: 704, elements: !977)
!977 = !{!978, !979, !980, !981, !982, !983, !984}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !976, file: !463, line: 549, baseType: !906, size: 512)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !976, file: !463, line: 553, baseType: !549, size: 64, offset: 512)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !976, file: !463, line: 557, baseType: !543, size: 8, offset: 576)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !976, file: !463, line: 558, baseType: !543, size: 8, offset: 584)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !976, file: !463, line: 559, baseType: !543, size: 8, offset: 592)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !976, file: !463, line: 560, baseType: !543, size: 8, offset: 600)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !976, file: !463, line: 566, baseType: !904, size: 64, offset: 640)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !853, file: !463, line: 752, baseType: !986, size: 384)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !463, line: 571, size: 384, elements: !987)
!987 = !{!988, !989}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !986, file: !463, line: 573, baseType: !917, size: 320)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !986, file: !463, line: 577, baseType: !556, size: 64, offset: 320)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !853, file: !463, line: 753, baseType: !991, size: 576)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !463, line: 600, size: 576, elements: !992)
!992 = !{!993, !994, !995, !998, !1007}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !991, file: !463, line: 602, baseType: !917, size: 320)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !991, file: !463, line: 605, baseType: !556, size: 64, offset: 320)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !991, file: !463, line: 609, baseType: !996, size: 64, offset: 384)
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !997, line: 46, baseType: !610)
!997 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!998 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !991, file: !463, line: 612, baseType: !999, size: 64, offset: 448)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !463, line: 581, size: 320, elements: !1001)
!1001 = !{!1002, !1003, !1004, !1005, !1006}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1000, file: !463, line: 583, baseType: !5, size: 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1000, file: !463, line: 586, baseType: !556, size: 64, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1000, file: !463, line: 589, baseType: !556, size: 64, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1000, file: !463, line: 592, baseType: !556, size: 64, offset: 192)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1000, file: !463, line: 595, baseType: !556, size: 64, offset: 256)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !991, file: !463, line: 616, baseType: !841, size: 64, offset: 512)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !853, file: !463, line: 754, baseType: !1009, size: 512)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !463, line: 622, size: 512, elements: !1010)
!1010 = !{!1011, !1012, !1013, !1014}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1009, file: !463, line: 624, baseType: !917, size: 320)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1009, file: !463, line: 628, baseType: !556, size: 64, offset: 320)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1009, file: !463, line: 632, baseType: !556, size: 64, offset: 384)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1009, file: !463, line: 636, baseType: !556, size: 64, offset: 448)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !853, file: !463, line: 755, baseType: !1016, size: 704)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !463, line: 642, size: 704, elements: !1017)
!1017 = !{!1018, !1019, !1020, !1021}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1016, file: !463, line: 644, baseType: !1009, size: 512)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1016, file: !463, line: 648, baseType: !556, size: 64, offset: 512)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1016, file: !463, line: 652, baseType: !556, size: 64, offset: 576)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1016, file: !463, line: 653, baseType: !556, size: 64, offset: 640)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !853, file: !463, line: 756, baseType: !1023, size: 448)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !463, line: 663, size: 448, elements: !1024)
!1024 = !{!1025, !1026, !1027}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1023, file: !463, line: 665, baseType: !917, size: 320)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1023, file: !463, line: 668, baseType: !556, size: 64, offset: 320)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1023, file: !463, line: 673, baseType: !556, size: 64, offset: 384)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !853, file: !463, line: 757, baseType: !1029, size: 384)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !463, line: 694, size: 384, elements: !1030)
!1030 = !{!1031, !1032}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1029, file: !463, line: 696, baseType: !917, size: 320)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1029, file: !463, line: 699, baseType: !556, size: 64, offset: 320)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !853, file: !463, line: 758, baseType: !1034, size: 384)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !463, line: 681, size: 384, elements: !1035)
!1035 = !{!1036, !1037, !1038}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1034, file: !463, line: 683, baseType: !856, size: 256)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1034, file: !463, line: 686, baseType: !556, size: 64, offset: 256)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1034, file: !463, line: 689, baseType: !556, size: 64, offset: 320)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !853, file: !463, line: 759, baseType: !1040, size: 384)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !463, line: 707, size: 384, elements: !1041)
!1041 = !{!1042, !1043, !1044}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1040, file: !463, line: 709, baseType: !856, size: 256)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1040, file: !463, line: 712, baseType: !556, size: 64, offset: 256)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1040, file: !463, line: 712, baseType: !556, size: 64, offset: 320)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !853, file: !463, line: 760, baseType: !1046, size: 320)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !463, line: 718, size: 320, elements: !1047)
!1047 = !{!1048, !1049}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1046, file: !463, line: 720, baseType: !856, size: 256)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1046, file: !463, line: 723, baseType: !556, size: 64, offset: 256)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !848, file: !463, line: 138, baseType: !847, size: 64, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !848, file: !463, line: 139, baseType: !847, size: 64, offset: 128)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !843, file: !463, line: 146, baseType: !846, size: 64, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !843, file: !463, line: 152, baseType: !841, size: 64, offset: 128)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !838, file: !202, line: 130, baseType: !715, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !833, file: !202, line: 134, baseType: !548, size: 64, offset: 192)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !833, file: !202, line: 137, baseType: !556, size: 64, offset: 256)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !833, file: !202, line: 138, baseType: !665, size: 32, offset: 320)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !833, file: !202, line: 142, baseType: !7, size: 32, offset: 352)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !833, file: !202, line: 144, baseType: !544, size: 32, offset: 384)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !833, file: !202, line: 145, baseType: !544, size: 32, offset: 416)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !833, file: !202, line: 146, baseType: !1062, size: 64, offset: 448)
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !202, line: 119, baseType: !612)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !816, file: !202, line: 220, baseType: !819, size: 64, offset: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !816, file: !202, line: 223, baseType: !548, size: 64, offset: 128)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !816, file: !202, line: 226, baseType: !1066, size: 64, offset: 192)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !202, line: 185, flags: DIFlagFwdDecl)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !816, file: !202, line: 229, baseType: !1069, size: 128, offset: 256)
!1069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1070, size: 128, elements: !1072)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !202, line: 229, flags: DIFlagFwdDecl)
!1072 = !{!1073}
!1073 = !DISubrange(count: 2)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !816, file: !202, line: 232, baseType: !815, size: 64, offset: 384)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !816, file: !202, line: 233, baseType: !815, size: 64, offset: 448)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !816, file: !202, line: 238, baseType: !1077, size: 64, offset: 512)
!1077 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !202, line: 235, size: 64, elements: !1078)
!1078 = !{!1079, !1085}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1077, file: !202, line: 236, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !202, line: 273, size: 128, elements: !1082)
!1082 = !{!1083, !1084}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1081, file: !202, line: 275, baseType: !841, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1081, file: !202, line: 278, baseType: !841, size: 64, offset: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1077, file: !202, line: 237, baseType: !1086, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !202, line: 259, size: 320, elements: !1088)
!1088 = !{!1089, !1090, !1091, !1092, !1093}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1087, file: !202, line: 261, baseType: !715, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1087, file: !202, line: 262, baseType: !715, size: 64, offset: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1087, file: !202, line: 266, baseType: !715, size: 64, offset: 128)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1087, file: !202, line: 267, baseType: !715, size: 64, offset: 192)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1087, file: !202, line: 270, baseType: !544, size: 32, offset: 256)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !816, file: !202, line: 241, baseType: !1062, size: 64, offset: 576)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !816, file: !202, line: 244, baseType: !544, size: 32, offset: 640)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !816, file: !202, line: 247, baseType: !544, size: 32, offset: 672)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !816, file: !202, line: 250, baseType: !544, size: 32, offset: 704)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !816, file: !202, line: 253, baseType: !544, size: 32, offset: 736)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !816, file: !202, line: 256, baseType: !544, size: 32, offset: 768)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !811, file: !202, line: 378, baseType: !814, size: 64, offset: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !811, file: !202, line: 381, baseType: !1102, size: 64, offset: 128)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !202, line: 282, baseType: !1104)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !202, line: 282, size: 128, elements: !1105)
!1105 = !{!1106}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1104, file: !202, line: 282, baseType: !1107, size: 128)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !202, line: 281, baseType: !1108)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !202, line: 281, size: 128, elements: !1109)
!1109 = !{!1110, !1111, !1112}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1108, file: !202, line: 281, baseType: !7, size: 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1108, file: !202, line: 281, baseType: !7, size: 32, offset: 32)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1108, file: !202, line: 281, baseType: !1113, size: 64, offset: 64)
!1113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !814, size: 64, elements: !639)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !811, file: !202, line: 384, baseType: !544, size: 32, offset: 192)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !811, file: !202, line: 387, baseType: !544, size: 32, offset: 224)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !811, file: !202, line: 390, baseType: !544, size: 32, offset: 256)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !811, file: !202, line: 394, baseType: !1102, size: 64, offset: 320)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !811, file: !202, line: 396, baseType: !201, size: 32, offset: 384)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !811, file: !202, line: 399, baseType: !1120, size: 64, offset: 416)
!1120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 64, elements: !1072)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !811, file: !202, line: 402, baseType: !1122, size: 64, offset: 480)
!1122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !1072)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !811, file: !202, line: 406, baseType: !544, size: 32, offset: 544)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !811, file: !202, line: 409, baseType: !544, size: 32, offset: 576)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !803, file: !804, line: 470, baseType: !842, size: 64, offset: 128)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !803, file: !804, line: 473, baseType: !1127, size: 64, offset: 192)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !754, line: 39, size: 1152, elements: !1129)
!1129 = !{!1130, !1180, !1193, !1205, !1206, !1275, !1276, !1280, !1281, !1282, !1283, !1284}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1128, file: !754, line: 41, baseType: !1131, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1132, line: 144, baseType: !1133)
!1132 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1132, line: 100, size: 896, elements: !1135)
!1135 = !{!1136, !1144, !1149, !1154, !1156, !1157, !1158, !1159, !1160, !1161, !1166, !1168, !1169, !1174, !1179}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1134, file: !1132, line: 102, baseType: !1137, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1132, line: 52, baseType: !1138)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!1141, !1142}
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1132, line: 47, baseType: !7)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1134, file: !1132, line: 105, baseType: !1145, size: 64, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1132, line: 59, baseType: !1146)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!544, !1142, !1142}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1134, file: !1132, line: 108, baseType: !1150, size: 64, offset: 128)
!1150 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1132, line: 63, baseType: !1151)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{null, !548}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1134, file: !1132, line: 111, baseType: !1155, size: 64, offset: 192)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1134, file: !1132, line: 114, baseType: !996, size: 64, offset: 256)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1134, file: !1132, line: 117, baseType: !996, size: 64, offset: 320)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1134, file: !1132, line: 120, baseType: !996, size: 64, offset: 384)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1134, file: !1132, line: 124, baseType: !7, size: 32, offset: 448)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1134, file: !1132, line: 128, baseType: !7, size: 32, offset: 480)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1134, file: !1132, line: 131, baseType: !1162, size: 64, offset: 512)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1132, line: 75, baseType: !1163)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!548, !996, !996}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1134, file: !1132, line: 132, baseType: !1167, size: 64, offset: 576)
!1167 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1132, line: 78, baseType: !1151)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1134, file: !1132, line: 135, baseType: !548, size: 64, offset: 640)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1134, file: !1132, line: 136, baseType: !1170, size: 64, offset: 704)
!1170 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1132, line: 82, baseType: !1171)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!548, !548, !996, !996}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1134, file: !1132, line: 137, baseType: !1175, size: 64, offset: 768)
!1175 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1132, line: 83, baseType: !1176)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{null, !548, !548}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1134, file: !1132, line: 141, baseType: !7, size: 32, offset: 832)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1128, file: !754, line: 48, baseType: !1181, size: 64, offset: 64)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !463, line: 35, baseType: !1183)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !463, line: 35, size: 128, elements: !1184)
!1184 = !{!1185}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1183, file: !463, line: 35, baseType: !1186, size: 128)
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !463, line: 33, baseType: !1187)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !463, line: 33, size: 128, elements: !1188)
!1188 = !{!1189, !1190, !1191}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1187, file: !463, line: 33, baseType: !7, size: 32)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1187, file: !463, line: 33, baseType: !7, size: 32, offset: 32)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1187, file: !463, line: 33, baseType: !1192, size: 64, offset: 64)
!1192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !851, size: 64, elements: !639)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1128, file: !754, line: 51, baseType: !1194, size: 64, offset: 128)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !6, line: 183, baseType: !1196)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !6, line: 183, size: 128, elements: !1197)
!1197 = !{!1198}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1196, file: !6, line: 183, baseType: !1199, size: 128)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !6, line: 182, baseType: !1200)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !6, line: 182, size: 128, elements: !1201)
!1201 = !{!1202, !1203, !1204}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1200, file: !6, line: 182, baseType: !7, size: 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1200, file: !6, line: 182, baseType: !7, size: 32, offset: 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1200, file: !6, line: 182, baseType: !904, size: 64, offset: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1128, file: !754, line: 54, baseType: !556, size: 64, offset: 192)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1128, file: !754, line: 57, baseType: !1207, size: 128, offset: 256)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1208, line: 31, size: 128, elements: !1209)
!1208 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1209 = !{!1210, !1211, !1212, !1213, !1214, !1215, !1216}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1207, file: !1208, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1207, file: !1208, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1207, file: !1208, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1207, file: !1208, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1207, file: !1208, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1207, file: !1208, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1207, file: !1208, line: 56, baseType: !1217, size: 64, offset: 64)
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !557, line: 47, baseType: !1218)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !1220, line: 75, size: 256, elements: !1221)
!1220 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1221 = !{!1222, !1234, !1235, !1236}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1219, file: !1220, line: 76, baseType: !1223, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !1220, line: 68, baseType: !1225)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !1220, line: 63, size: 320, elements: !1226)
!1226 = !{!1227, !1229, !1230, !1231}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1225, file: !1220, line: 64, baseType: !1228, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1225, file: !1220, line: 65, baseType: !1228, size: 64, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !1225, file: !1220, line: 66, baseType: !7, size: 32, offset: 128)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1225, file: !1220, line: 67, baseType: !1232, size: 128, offset: 192)
!1232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1233, size: 128, elements: !1072)
!1233 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !1220, line: 29, baseType: !610)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !1219, file: !1220, line: 77, baseType: !1223, size: 64, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !1219, file: !1220, line: 78, baseType: !7, size: 32, offset: 128)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !1219, file: !1220, line: 79, baseType: !1237, size: 64, offset: 192)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !1220, line: 49, baseType: !1239)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !1220, line: 45, size: 832, elements: !1240)
!1240 = !{!1241, !1242, !1243}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1239, file: !1220, line: 46, baseType: !1228, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !1239, file: !1220, line: 47, baseType: !1218, size: 64, offset: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !1239, file: !1220, line: 48, baseType: !1244, size: 704, offset: 128)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !1245, line: 164, size: 704, elements: !1246)
!1245 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1246 = !{!1247, !1248, !1258, !1259, !1260, !1261, !1262, !1263, !1267, !1271, !1272, !1273, !1274}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !1244, file: !1245, line: 166, baseType: !612, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !1244, file: !1245, line: 167, baseType: !1249, size: 64, offset: 64)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !1245, line: 157, size: 192, elements: !1251)
!1251 = !{!1252, !1253, !1254}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1250, file: !1245, line: 159, baseType: !546, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1250, file: !1245, line: 160, baseType: !1249, size: 64, offset: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !1250, file: !1245, line: 161, baseType: !1255, size: 32, offset: 128)
!1255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !547, size: 32, elements: !1256)
!1256 = !{!1257}
!1257 = !DISubrange(count: 4)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !1244, file: !1245, line: 168, baseType: !546, size: 64, offset: 128)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !1244, file: !1245, line: 169, baseType: !546, size: 64, offset: 192)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !1244, file: !1245, line: 170, baseType: !546, size: 64, offset: 256)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !1244, file: !1245, line: 171, baseType: !612, size: 64, offset: 320)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !1244, file: !1245, line: 172, baseType: !544, size: 32, offset: 384)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !1244, file: !1245, line: 176, baseType: !1264, size: 64, offset: 448)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!1249, !548, !612}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !1244, file: !1245, line: 177, baseType: !1268, size: 64, offset: 512)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{null, !548, !1249}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !1244, file: !1245, line: 178, baseType: !548, size: 64, offset: 576)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !1244, file: !1245, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !1244, file: !1245, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !1244, file: !1245, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1128, file: !754, line: 60, baseType: !1207, size: 128, offset: 384)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1128, file: !754, line: 64, baseType: !1277, size: 64, offset: 512)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1279, line: 33, flags: DIFlagFwdDecl)
!1279 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1128, file: !754, line: 67, baseType: !556, size: 64, offset: 576)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1128, file: !754, line: 73, baseType: !1131, size: 64, offset: 640)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1128, file: !754, line: 77, baseType: !1217, size: 64, offset: 704)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1128, file: !754, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1128, file: !754, line: 82, baseType: !1285, size: 320, offset: 832)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !456, line: 62, size: 320, elements: !1286)
!1286 = !{!1287, !1293, !1294, !1295, !1296, !1297}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1285, file: !456, line: 63, baseType: !1288, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !456, line: 56, size: 128, elements: !1290)
!1290 = !{!1291, !1292}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1289, file: !456, line: 57, baseType: !1288, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1289, file: !456, line: 58, baseType: !638, size: 8, offset: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1285, file: !456, line: 64, baseType: !7, size: 32, offset: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1285, file: !456, line: 66, baseType: !7, size: 32, offset: 96)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1285, file: !456, line: 68, baseType: !543, size: 8, offset: 128)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1285, file: !456, line: 70, baseType: !880, size: 64, offset: 192)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1285, file: !456, line: 71, baseType: !887, size: 64, offset: 256)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !803, file: !804, line: 476, baseType: !1299, size: 64, offset: 256)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !804, line: 476, flags: DIFlagFwdDecl)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !803, file: !804, line: 479, baseType: !1131, size: 64, offset: 320)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !803, file: !804, line: 484, baseType: !556, size: 64, offset: 384)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !803, file: !804, line: 488, baseType: !556, size: 64, offset: 448)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !803, file: !804, line: 493, baseType: !556, size: 64, offset: 512)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !803, file: !804, line: 496, baseType: !556, size: 64, offset: 576)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !803, file: !804, line: 501, baseType: !1307, size: 64, offset: 640)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !213, line: 2355, size: 576, elements: !1309)
!1309 = !{!1310, !1313, !1314, !1315, !1316, !1318, !1319, !1324, !1325, !1326, !1327, !1328, !1329}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1308, file: !213, line: 2356, baseType: !1311, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !213, line: 2356, flags: DIFlagFwdDecl)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1308, file: !213, line: 2357, baseType: !549, size: 64, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1308, file: !213, line: 2358, baseType: !544, size: 32, offset: 128)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1308, file: !213, line: 2359, baseType: !544, size: 32, offset: 160)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1308, file: !213, line: 2360, baseType: !1317, size: 128, offset: 192)
!1317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !544, size: 128, elements: !1256)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1308, file: !213, line: 2364, baseType: !544, size: 32, offset: 320)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1308, file: !213, line: 2367, baseType: !1320, size: 128, offset: 384)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !213, line: 2349, size: 128, elements: !1321)
!1321 = !{!1322, !1323}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1320, file: !213, line: 2351, baseType: !715, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1320, file: !213, line: 2352, baseType: !612, size: 64, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1308, file: !213, line: 2371, baseType: !212, size: 32, offset: 512)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1308, file: !213, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1308, file: !213, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1308, file: !213, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1308, file: !213, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1308, file: !213, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !803, file: !804, line: 504, baseType: !1331, size: 64, offset: 704)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !804, line: 504, flags: DIFlagFwdDecl)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !803, file: !804, line: 507, baseType: !1131, size: 64, offset: 768)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !803, file: !804, line: 510, baseType: !544, size: 32, offset: 832)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !803, file: !804, line: 513, baseType: !544, size: 32, offset: 864)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !803, file: !804, line: 516, baseType: !665, size: 32, offset: 896)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !803, file: !804, line: 519, baseType: !665, size: 32, offset: 928)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !803, file: !804, line: 522, baseType: !7, size: 32, offset: 960)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !803, file: !804, line: 523, baseType: !7, size: 32, offset: 992)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !803, file: !804, line: 528, baseType: !549, size: 64, offset: 1024)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !803, file: !804, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !803, file: !804, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !803, file: !804, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !803, file: !804, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !803, file: !804, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !803, file: !804, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !803, file: !804, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !803, file: !804, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !803, file: !804, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !803, file: !804, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !803, file: !804, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !803, file: !804, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !803, file: !804, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !803, file: !804, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !803, file: !804, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !803, file: !804, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !798, file: !6, line: 3254, baseType: !556, size: 64, offset: 1536)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !798, file: !6, line: 3257, baseType: !556, size: 64, offset: 1600)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !798, file: !6, line: 3258, baseType: !556, size: 64, offset: 1664)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !798, file: !6, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !798, file: !6, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !798, file: !6, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !798, file: !6, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !798, file: !6, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !798, file: !6, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !798, file: !6, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !798, file: !6, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !798, file: !6, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !798, file: !6, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !798, file: !6, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !798, file: !6, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !798, file: !6, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !798, file: !6, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !798, file: !6, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !798, file: !6, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !798, file: !6, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !798, file: !6, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !559, file: !6, line: 3394, baseType: !1379, size: 1344)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !6, line: 2279, size: 1344, elements: !1380)
!1380 = !{!1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1406, !1407, !1408, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1379, file: !6, line: 2280, baseType: !595, size: 192)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1379, file: !6, line: 2281, baseType: !556, size: 64, offset: 192)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1379, file: !6, line: 2282, baseType: !556, size: 64, offset: 256)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1379, file: !6, line: 2283, baseType: !556, size: 64, offset: 320)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1379, file: !6, line: 2284, baseType: !556, size: 64, offset: 384)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1379, file: !6, line: 2285, baseType: !7, size: 32, offset: 448)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1379, file: !6, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1379, file: !6, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1379, file: !6, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1379, file: !6, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1379, file: !6, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1379, file: !6, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1379, file: !6, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1379, file: !6, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1379, file: !6, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1379, file: !6, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1379, file: !6, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1379, file: !6, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1379, file: !6, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1379, file: !6, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1379, file: !6, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1379, file: !6, line: 2305, baseType: !7, size: 32, offset: 512)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1379, file: !6, line: 2306, baseType: !1404, size: 32, offset: 544)
!1404 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1405, line: 31, baseType: !544)
!1405 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1379, file: !6, line: 2307, baseType: !556, size: 64, offset: 576)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1379, file: !6, line: 2308, baseType: !556, size: 64, offset: 640)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1379, file: !6, line: 2314, baseType: !1409, size: 64, offset: 704)
!1409 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !6, line: 2309, size: 64, elements: !1410)
!1410 = !{!1411, !1412, !1413}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1409, file: !6, line: 2310, baseType: !544, size: 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1409, file: !6, line: 2311, baseType: !549, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1409, file: !6, line: 2312, baseType: !1414, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !6, line: 2277, flags: DIFlagFwdDecl)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1379, file: !6, line: 2315, baseType: !556, size: 64, offset: 768)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1379, file: !6, line: 2316, baseType: !556, size: 64, offset: 832)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1379, file: !6, line: 2317, baseType: !556, size: 64, offset: 896)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1379, file: !6, line: 2318, baseType: !556, size: 64, offset: 960)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1379, file: !6, line: 2319, baseType: !556, size: 64, offset: 1024)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1379, file: !6, line: 2320, baseType: !556, size: 64, offset: 1088)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1379, file: !6, line: 2321, baseType: !556, size: 64, offset: 1152)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1379, file: !6, line: 2322, baseType: !556, size: 64, offset: 1216)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1379, file: !6, line: 2324, baseType: !1425, size: 64, offset: 1280)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !6, line: 2324, flags: DIFlagFwdDecl)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !559, file: !6, line: 3395, baseType: !1428, size: 320)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !6, line: 1469, size: 320, elements: !1429)
!1429 = !{!1430, !1431, !1432}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1428, file: !6, line: 1470, baseType: !595, size: 192)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1428, file: !6, line: 1471, baseType: !556, size: 64, offset: 192)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1428, file: !6, line: 1472, baseType: !556, size: 64, offset: 256)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !559, file: !6, line: 3396, baseType: !1434, size: 320)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !6, line: 1482, size: 320, elements: !1435)
!1435 = !{!1436, !1437, !1438}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1434, file: !6, line: 1483, baseType: !595, size: 192)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1434, file: !6, line: 1484, baseType: !544, size: 32, offset: 192)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1434, file: !6, line: 1485, baseType: !904, size: 64, offset: 256)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !559, file: !6, line: 3397, baseType: !1440, size: 384)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !6, line: 1829, size: 384, elements: !1441)
!1441 = !{!1442, !1443, !1444, !1445}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1440, file: !6, line: 1830, baseType: !595, size: 192)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1440, file: !6, line: 1831, baseType: !665, size: 32, offset: 192)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1440, file: !6, line: 1832, baseType: !556, size: 64, offset: 256)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1440, file: !6, line: 1835, baseType: !904, size: 64, offset: 320)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !559, file: !6, line: 3398, baseType: !1447, size: 704)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !6, line: 1898, size: 704, elements: !1448)
!1448 = !{!1449, !1450, !1451, !1452, !1453, !1458}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1447, file: !6, line: 1899, baseType: !595, size: 192)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1447, file: !6, line: 1902, baseType: !556, size: 64, offset: 192)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1447, file: !6, line: 1905, baseType: !851, size: 64, offset: 256)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1447, file: !6, line: 1908, baseType: !7, size: 32, offset: 320)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1447, file: !6, line: 1911, baseType: !1454, size: 64, offset: 384)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !754, line: 117, size: 128, elements: !1456)
!1456 = !{!1457}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1455, file: !754, line: 120, baseType: !1207, size: 128)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1447, file: !6, line: 1914, baseType: !892, size: 256, offset: 448)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !559, file: !6, line: 3399, baseType: !1460, size: 704)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !6, line: 2008, size: 704, elements: !1461)
!1461 = !{!1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1460, file: !6, line: 2009, baseType: !595, size: 192)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1460, file: !6, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1460, file: !6, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1460, file: !6, line: 2014, baseType: !665, size: 32, offset: 224)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1460, file: !6, line: 2016, baseType: !556, size: 64, offset: 256)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1460, file: !6, line: 2017, baseType: !1194, size: 64, offset: 320)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1460, file: !6, line: 2019, baseType: !556, size: 64, offset: 384)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1460, file: !6, line: 2020, baseType: !556, size: 64, offset: 448)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1460, file: !6, line: 2021, baseType: !556, size: 64, offset: 512)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1460, file: !6, line: 2022, baseType: !556, size: 64, offset: 576)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1460, file: !6, line: 2023, baseType: !556, size: 64, offset: 640)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !559, file: !6, line: 3400, baseType: !1474, size: 832)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !6, line: 2430, size: 832, elements: !1475)
!1475 = !{!1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1474, file: !6, line: 2431, baseType: !595, size: 192)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1474, file: !6, line: 2433, baseType: !556, size: 64, offset: 192)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1474, file: !6, line: 2434, baseType: !556, size: 64, offset: 256)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1474, file: !6, line: 2435, baseType: !556, size: 64, offset: 320)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1474, file: !6, line: 2436, baseType: !556, size: 64, offset: 384)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1474, file: !6, line: 2437, baseType: !1194, size: 64, offset: 448)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1474, file: !6, line: 2438, baseType: !556, size: 64, offset: 512)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1474, file: !6, line: 2440, baseType: !556, size: 64, offset: 576)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1474, file: !6, line: 2441, baseType: !556, size: 64, offset: 640)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1474, file: !6, line: 2443, baseType: !1486, size: 128, offset: 704)
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !6, line: 182, baseType: !1487)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !6, line: 182, size: 128, elements: !1488)
!1488 = !{!1489}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1487, file: !6, line: 182, baseType: !1199, size: 128)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !559, file: !6, line: 3401, baseType: !1491, size: 320)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !6, line: 3327, size: 320, elements: !1492)
!1492 = !{!1493, !1494, !1501}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1491, file: !6, line: 3329, baseType: !595, size: 192)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1491, file: !6, line: 3330, baseType: !1495, size: 64, offset: 192)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !6, line: 3320, size: 192, elements: !1497)
!1497 = !{!1498, !1499, !1500}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1496, file: !6, line: 3322, baseType: !1495, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1496, file: !6, line: 3323, baseType: !1495, size: 64, offset: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1496, file: !6, line: 3324, baseType: !556, size: 64, offset: 128)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1491, file: !6, line: 3331, baseType: !1495, size: 64, offset: 256)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !559, file: !6, line: 3402, baseType: !1503, size: 256)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !6, line: 1540, size: 256, elements: !1504)
!1504 = !{!1505, !1506}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1503, file: !6, line: 1541, baseType: !595, size: 192)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1503, file: !6, line: 1542, baseType: !1507, size: 64, offset: 192)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !6, line: 1538, baseType: !1509)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !6, line: 1538, size: 192, elements: !1510)
!1510 = !{!1511}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1509, file: !6, line: 1538, baseType: !1512, size: 192)
!1512 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !6, line: 1537, baseType: !1513)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !6, line: 1537, size: 192, elements: !1514)
!1514 = !{!1515, !1516, !1517}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1513, file: !6, line: 1537, baseType: !7, size: 32)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1513, file: !6, line: 1537, baseType: !7, size: 32, offset: 32)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1513, file: !6, line: 1537, baseType: !1518, size: 128, offset: 64)
!1518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1519, size: 128, elements: !639)
!1519 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !6, line: 1535, baseType: !1520)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !6, line: 1532, size: 128, elements: !1521)
!1521 = !{!1522, !1523}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1520, file: !6, line: 1533, baseType: !556, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1520, file: !6, line: 1534, baseType: !556, size: 64, offset: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !559, file: !6, line: 3403, baseType: !1525, size: 512)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !6, line: 1938, size: 512, elements: !1526)
!1526 = !{!1527, !1528, !1529, !1530, !1536, !1537, !1538}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1525, file: !6, line: 1939, baseType: !595, size: 192)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1525, file: !6, line: 1940, baseType: !665, size: 32, offset: 192)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1525, file: !6, line: 1941, baseType: !217, size: 32, offset: 224)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1525, file: !6, line: 1946, baseType: !1531, size: 32, offset: 256)
!1531 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !6, line: 1942, size: 32, elements: !1532)
!1532 = !{!1533, !1534, !1535}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1531, file: !6, line: 1943, baseType: !235, size: 32)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1531, file: !6, line: 1944, baseType: !242, size: 32)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1531, file: !6, line: 1945, baseType: !5, size: 32)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1525, file: !6, line: 1950, baseType: !841, size: 64, offset: 320)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1525, file: !6, line: 1951, baseType: !841, size: 64, offset: 384)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1525, file: !6, line: 1953, baseType: !904, size: 64, offset: 448)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !559, file: !6, line: 3404, baseType: !1540, size: 1664)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !6, line: 3337, size: 1664, elements: !1541)
!1541 = !{!1542, !1543}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1540, file: !6, line: 3338, baseType: !595, size: 192)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1540, file: !6, line: 3341, baseType: !1544, size: 1472, offset: 192)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1545, line: 410, size: 1472, elements: !1546)
!1545 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1546 = !{!1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1544, file: !1545, line: 412, baseType: !544, size: 32)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1544, file: !1545, line: 413, baseType: !544, size: 32, offset: 32)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1544, file: !1545, line: 414, baseType: !544, size: 32, offset: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1544, file: !1545, line: 415, baseType: !544, size: 32, offset: 96)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1544, file: !1545, line: 416, baseType: !544, size: 32, offset: 128)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1544, file: !1545, line: 417, baseType: !544, size: 32, offset: 160)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1544, file: !1545, line: 418, baseType: !543, size: 8, offset: 192)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1544, file: !1545, line: 419, baseType: !543, size: 8, offset: 200)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1544, file: !1545, line: 420, baseType: !1556, size: 8, offset: 208)
!1556 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1544, file: !1545, line: 421, baseType: !1556, size: 8, offset: 216)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1544, file: !1545, line: 422, baseType: !1556, size: 8, offset: 224)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1544, file: !1545, line: 423, baseType: !1556, size: 8, offset: 232)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1544, file: !1545, line: 424, baseType: !1556, size: 8, offset: 240)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1544, file: !1545, line: 425, baseType: !1556, size: 8, offset: 248)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1544, file: !1545, line: 426, baseType: !1556, size: 8, offset: 256)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1544, file: !1545, line: 427, baseType: !1556, size: 8, offset: 264)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1544, file: !1545, line: 428, baseType: !1556, size: 8, offset: 272)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1544, file: !1545, line: 429, baseType: !1556, size: 8, offset: 280)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1544, file: !1545, line: 430, baseType: !1556, size: 8, offset: 288)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1544, file: !1545, line: 431, baseType: !1556, size: 8, offset: 296)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1544, file: !1545, line: 432, baseType: !1556, size: 8, offset: 304)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1544, file: !1545, line: 433, baseType: !1556, size: 8, offset: 312)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1544, file: !1545, line: 434, baseType: !1556, size: 8, offset: 320)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1544, file: !1545, line: 435, baseType: !1556, size: 8, offset: 328)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1544, file: !1545, line: 436, baseType: !1556, size: 8, offset: 336)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1544, file: !1545, line: 437, baseType: !1556, size: 8, offset: 344)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1544, file: !1545, line: 438, baseType: !1556, size: 8, offset: 352)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1544, file: !1545, line: 439, baseType: !1556, size: 8, offset: 360)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1544, file: !1545, line: 440, baseType: !1556, size: 8, offset: 368)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1544, file: !1545, line: 441, baseType: !1556, size: 8, offset: 376)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1544, file: !1545, line: 442, baseType: !1556, size: 8, offset: 384)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1544, file: !1545, line: 443, baseType: !1556, size: 8, offset: 392)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1544, file: !1545, line: 444, baseType: !1556, size: 8, offset: 400)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1544, file: !1545, line: 445, baseType: !1556, size: 8, offset: 408)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1544, file: !1545, line: 446, baseType: !1556, size: 8, offset: 416)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1544, file: !1545, line: 447, baseType: !1556, size: 8, offset: 424)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1544, file: !1545, line: 448, baseType: !1556, size: 8, offset: 432)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1544, file: !1545, line: 449, baseType: !1556, size: 8, offset: 440)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1544, file: !1545, line: 450, baseType: !1556, size: 8, offset: 448)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1544, file: !1545, line: 451, baseType: !1556, size: 8, offset: 456)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1544, file: !1545, line: 452, baseType: !1556, size: 8, offset: 464)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1544, file: !1545, line: 453, baseType: !1556, size: 8, offset: 472)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1544, file: !1545, line: 454, baseType: !1556, size: 8, offset: 480)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1544, file: !1545, line: 455, baseType: !1556, size: 8, offset: 488)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1544, file: !1545, line: 456, baseType: !1556, size: 8, offset: 496)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1544, file: !1545, line: 457, baseType: !1556, size: 8, offset: 504)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1544, file: !1545, line: 458, baseType: !1556, size: 8, offset: 512)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1544, file: !1545, line: 459, baseType: !1556, size: 8, offset: 520)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1544, file: !1545, line: 460, baseType: !1556, size: 8, offset: 528)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1544, file: !1545, line: 461, baseType: !1556, size: 8, offset: 536)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1544, file: !1545, line: 462, baseType: !1556, size: 8, offset: 544)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1544, file: !1545, line: 463, baseType: !1556, size: 8, offset: 552)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1544, file: !1545, line: 464, baseType: !1556, size: 8, offset: 560)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1544, file: !1545, line: 465, baseType: !1556, size: 8, offset: 568)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1544, file: !1545, line: 466, baseType: !1556, size: 8, offset: 576)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1544, file: !1545, line: 467, baseType: !1556, size: 8, offset: 584)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1544, file: !1545, line: 468, baseType: !1556, size: 8, offset: 592)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1544, file: !1545, line: 469, baseType: !1556, size: 8, offset: 600)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1544, file: !1545, line: 470, baseType: !1556, size: 8, offset: 608)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1544, file: !1545, line: 471, baseType: !1556, size: 8, offset: 616)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1544, file: !1545, line: 472, baseType: !1556, size: 8, offset: 624)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1544, file: !1545, line: 473, baseType: !1556, size: 8, offset: 632)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1544, file: !1545, line: 474, baseType: !1556, size: 8, offset: 640)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1544, file: !1545, line: 475, baseType: !1556, size: 8, offset: 648)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1544, file: !1545, line: 476, baseType: !1556, size: 8, offset: 656)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1544, file: !1545, line: 477, baseType: !1556, size: 8, offset: 664)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1544, file: !1545, line: 478, baseType: !1556, size: 8, offset: 672)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1544, file: !1545, line: 479, baseType: !1556, size: 8, offset: 680)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1544, file: !1545, line: 480, baseType: !1556, size: 8, offset: 688)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1544, file: !1545, line: 481, baseType: !1556, size: 8, offset: 696)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1544, file: !1545, line: 482, baseType: !1556, size: 8, offset: 704)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1544, file: !1545, line: 483, baseType: !1556, size: 8, offset: 712)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1544, file: !1545, line: 484, baseType: !1556, size: 8, offset: 720)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1544, file: !1545, line: 485, baseType: !1556, size: 8, offset: 728)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1544, file: !1545, line: 486, baseType: !1556, size: 8, offset: 736)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1544, file: !1545, line: 487, baseType: !1556, size: 8, offset: 744)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1544, file: !1545, line: 488, baseType: !1556, size: 8, offset: 752)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1544, file: !1545, line: 489, baseType: !1556, size: 8, offset: 760)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1544, file: !1545, line: 490, baseType: !1556, size: 8, offset: 768)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1544, file: !1545, line: 491, baseType: !1556, size: 8, offset: 776)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1544, file: !1545, line: 492, baseType: !1556, size: 8, offset: 784)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1544, file: !1545, line: 493, baseType: !1556, size: 8, offset: 792)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1544, file: !1545, line: 494, baseType: !1556, size: 8, offset: 800)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1544, file: !1545, line: 495, baseType: !1556, size: 8, offset: 808)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1544, file: !1545, line: 496, baseType: !1556, size: 8, offset: 816)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1544, file: !1545, line: 497, baseType: !1556, size: 8, offset: 824)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1544, file: !1545, line: 498, baseType: !1556, size: 8, offset: 832)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1544, file: !1545, line: 499, baseType: !1556, size: 8, offset: 840)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1544, file: !1545, line: 500, baseType: !1556, size: 8, offset: 848)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1544, file: !1545, line: 501, baseType: !1556, size: 8, offset: 856)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1544, file: !1545, line: 502, baseType: !1556, size: 8, offset: 864)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1544, file: !1545, line: 503, baseType: !1556, size: 8, offset: 872)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1544, file: !1545, line: 504, baseType: !1556, size: 8, offset: 880)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1544, file: !1545, line: 505, baseType: !1556, size: 8, offset: 888)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1544, file: !1545, line: 506, baseType: !1556, size: 8, offset: 896)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1544, file: !1545, line: 507, baseType: !1556, size: 8, offset: 904)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1544, file: !1545, line: 508, baseType: !1556, size: 8, offset: 912)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1544, file: !1545, line: 509, baseType: !1556, size: 8, offset: 920)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1544, file: !1545, line: 510, baseType: !1556, size: 8, offset: 928)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1544, file: !1545, line: 511, baseType: !1556, size: 8, offset: 936)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1544, file: !1545, line: 512, baseType: !1556, size: 8, offset: 944)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1544, file: !1545, line: 513, baseType: !1556, size: 8, offset: 952)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1544, file: !1545, line: 514, baseType: !1556, size: 8, offset: 960)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1544, file: !1545, line: 515, baseType: !1556, size: 8, offset: 968)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1544, file: !1545, line: 516, baseType: !1556, size: 8, offset: 976)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1544, file: !1545, line: 517, baseType: !1556, size: 8, offset: 984)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1544, file: !1545, line: 518, baseType: !1556, size: 8, offset: 992)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1544, file: !1545, line: 519, baseType: !1556, size: 8, offset: 1000)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1544, file: !1545, line: 520, baseType: !1556, size: 8, offset: 1008)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1544, file: !1545, line: 521, baseType: !1556, size: 8, offset: 1016)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1544, file: !1545, line: 522, baseType: !1556, size: 8, offset: 1024)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1544, file: !1545, line: 523, baseType: !1556, size: 8, offset: 1032)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1544, file: !1545, line: 524, baseType: !1556, size: 8, offset: 1040)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1544, file: !1545, line: 525, baseType: !1556, size: 8, offset: 1048)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1544, file: !1545, line: 526, baseType: !1556, size: 8, offset: 1056)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1544, file: !1545, line: 527, baseType: !1556, size: 8, offset: 1064)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1544, file: !1545, line: 528, baseType: !1556, size: 8, offset: 1072)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1544, file: !1545, line: 529, baseType: !1556, size: 8, offset: 1080)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1544, file: !1545, line: 530, baseType: !1556, size: 8, offset: 1088)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1544, file: !1545, line: 531, baseType: !1556, size: 8, offset: 1096)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1544, file: !1545, line: 532, baseType: !1556, size: 8, offset: 1104)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1544, file: !1545, line: 533, baseType: !1556, size: 8, offset: 1112)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1544, file: !1545, line: 534, baseType: !1556, size: 8, offset: 1120)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1544, file: !1545, line: 535, baseType: !1556, size: 8, offset: 1128)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1544, file: !1545, line: 536, baseType: !1556, size: 8, offset: 1136)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1544, file: !1545, line: 537, baseType: !1556, size: 8, offset: 1144)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1544, file: !1545, line: 538, baseType: !1556, size: 8, offset: 1152)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1544, file: !1545, line: 539, baseType: !1556, size: 8, offset: 1160)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1544, file: !1545, line: 540, baseType: !1556, size: 8, offset: 1168)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1544, file: !1545, line: 541, baseType: !1556, size: 8, offset: 1176)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1544, file: !1545, line: 542, baseType: !1556, size: 8, offset: 1184)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1544, file: !1545, line: 543, baseType: !1556, size: 8, offset: 1192)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1544, file: !1545, line: 544, baseType: !1556, size: 8, offset: 1200)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1544, file: !1545, line: 545, baseType: !1556, size: 8, offset: 1208)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1544, file: !1545, line: 546, baseType: !1556, size: 8, offset: 1216)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1544, file: !1545, line: 547, baseType: !1556, size: 8, offset: 1224)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1544, file: !1545, line: 548, baseType: !1556, size: 8, offset: 1232)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1544, file: !1545, line: 549, baseType: !1556, size: 8, offset: 1240)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1544, file: !1545, line: 550, baseType: !1556, size: 8, offset: 1248)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1544, file: !1545, line: 551, baseType: !1556, size: 8, offset: 1256)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1544, file: !1545, line: 552, baseType: !1556, size: 8, offset: 1264)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1544, file: !1545, line: 553, baseType: !1556, size: 8, offset: 1272)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1544, file: !1545, line: 554, baseType: !1556, size: 8, offset: 1280)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1544, file: !1545, line: 555, baseType: !1556, size: 8, offset: 1288)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1544, file: !1545, line: 556, baseType: !1556, size: 8, offset: 1296)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1544, file: !1545, line: 557, baseType: !1556, size: 8, offset: 1304)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1544, file: !1545, line: 558, baseType: !1556, size: 8, offset: 1312)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1544, file: !1545, line: 559, baseType: !1556, size: 8, offset: 1320)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1544, file: !1545, line: 560, baseType: !1556, size: 8, offset: 1328)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1544, file: !1545, line: 561, baseType: !1556, size: 8, offset: 1336)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1544, file: !1545, line: 562, baseType: !1556, size: 8, offset: 1344)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1544, file: !1545, line: 563, baseType: !1556, size: 8, offset: 1352)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1544, file: !1545, line: 564, baseType: !1556, size: 8, offset: 1360)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1544, file: !1545, line: 565, baseType: !1556, size: 8, offset: 1368)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1544, file: !1545, line: 566, baseType: !1556, size: 8, offset: 1376)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1544, file: !1545, line: 567, baseType: !1556, size: 8, offset: 1384)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1544, file: !1545, line: 568, baseType: !1556, size: 8, offset: 1392)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1544, file: !1545, line: 569, baseType: !1556, size: 8, offset: 1400)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1544, file: !1545, line: 570, baseType: !1556, size: 8, offset: 1408)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1544, file: !1545, line: 571, baseType: !1556, size: 8, offset: 1416)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1544, file: !1545, line: 572, baseType: !1556, size: 8, offset: 1424)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1544, file: !1545, line: 573, baseType: !1556, size: 8, offset: 1432)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1544, file: !1545, line: 574, baseType: !1556, size: 8, offset: 1440)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !559, file: !6, line: 3405, baseType: !1712, size: 384)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !6, line: 3352, size: 384, elements: !1713)
!1713 = !{!1714, !1715}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1712, file: !6, line: 3353, baseType: !595, size: 192)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1712, file: !6, line: 3356, baseType: !1716, size: 192, offset: 192)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1545, line: 578, size: 192, elements: !1717)
!1717 = !{!1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1716, file: !1545, line: 580, baseType: !544, size: 32)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1716, file: !1545, line: 581, baseType: !544, size: 32, offset: 32)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1716, file: !1545, line: 582, baseType: !544, size: 32, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1716, file: !1545, line: 583, baseType: !544, size: 32, offset: 96)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1716, file: !1545, line: 584, baseType: !543, size: 8, offset: 128)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1716, file: !1545, line: 585, baseType: !543, size: 8, offset: 136)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1716, file: !1545, line: 586, baseType: !543, size: 8, offset: 144)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1716, file: !1545, line: 587, baseType: !543, size: 8, offset: 152)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1716, file: !1545, line: 588, baseType: !543, size: 8, offset: 160)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1716, file: !1545, line: 589, baseType: !543, size: 8, offset: 168)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1716, file: !1545, line: 590, baseType: !543, size: 8, offset: 176)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "callees", scope: !553, file: !250, line: 183, baseType: !1730, size: 64, offset: 64)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_edge", file: !250, line: 314, size: 768, elements: !1732)
!1732 = !{!1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1744, !1745, !1746, !1747, !1749, !1750, !1751}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1731, file: !250, line: 316, baseType: !1062, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1731, file: !250, line: 317, baseType: !552, size: 64, offset: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "callee", scope: !1731, file: !250, line: 318, baseType: !552, size: 64, offset: 128)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "prev_caller", scope: !1731, file: !250, line: 319, baseType: !1730, size: 64, offset: 192)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "next_caller", scope: !1731, file: !250, line: 320, baseType: !1730, size: 64, offset: 256)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "prev_callee", scope: !1731, file: !250, line: 321, baseType: !1730, size: 64, offset: 320)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "next_callee", scope: !1731, file: !250, line: 322, baseType: !1730, size: 64, offset: 384)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "call_stmt", scope: !1731, file: !250, line: 323, baseType: !851, size: 64, offset: 448)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1731, file: !250, line: 324, baseType: !548, size: 64, offset: 512)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "inline_failed", scope: !1731, file: !250, line: 327, baseType: !1743, size: 32, offset: 576)
!1743 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_inline_failed_t", file: !250, line: 312, baseType: !249)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "lto_stmt_uid", scope: !1731, file: !250, line: 330, baseType: !7, size: 32, offset: 608)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !1731, file: !250, line: 334, baseType: !544, size: 32, offset: 640)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1731, file: !250, line: 336, baseType: !544, size: 32, offset: 672)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "loop_nest", scope: !1731, file: !250, line: 338, baseType: !1748, size: 16, offset: 704)
!1748 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "indirect_call", scope: !1731, file: !250, line: 340, baseType: !7, size: 1, offset: 720, flags: DIFlagBitField, extraData: i64 720)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "call_stmt_cannot_inline_p", scope: !1731, file: !250, line: 342, baseType: !7, size: 1, offset: 721, flags: DIFlagBitField, extraData: i64 720)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "can_throw_external", scope: !1731, file: !250, line: 344, baseType: !7, size: 1, offset: 722, flags: DIFlagBitField, extraData: i64 720)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "callers", scope: !553, file: !250, line: 184, baseType: !1730, size: 64, offset: 128)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !553, file: !250, line: 185, baseType: !552, size: 64, offset: 192)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !553, file: !250, line: 186, baseType: !552, size: 64, offset: 256)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !553, file: !250, line: 188, baseType: !552, size: 64, offset: 320)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !553, file: !250, line: 190, baseType: !552, size: 64, offset: 384)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "next_nested", scope: !553, file: !250, line: 192, baseType: !552, size: 64, offset: 448)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "next_needed", scope: !553, file: !250, line: 194, baseType: !552, size: 64, offset: 512)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "next_sibling_clone", scope: !553, file: !250, line: 196, baseType: !552, size: 64, offset: 576)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sibling_clone", scope: !553, file: !250, line: 197, baseType: !552, size: 64, offset: 640)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "clones", scope: !553, file: !250, line: 198, baseType: !552, size: 64, offset: 704)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "clone_of", scope: !553, file: !250, line: 199, baseType: !552, size: 64, offset: 768)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "same_body", scope: !553, file: !250, line: 202, baseType: !552, size: 64, offset: 832)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "same_comdat_group", scope: !553, file: !250, line: 204, baseType: !552, size: 64, offset: 896)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "call_site_hash", scope: !553, file: !250, line: 207, baseType: !1131, size: 64, offset: 960)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !553, file: !250, line: 209, baseType: !548, size: 64, offset: 1024)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "ipa_transforms_to_apply", scope: !553, file: !250, line: 214, baseType: !1768, size: 64, offset: 1088)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_opt_pass_heap", file: !804, line: 177, baseType: !1770)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_opt_pass_heap", file: !804, line: 177, size: 128, elements: !1771)
!1771 = !{!1772}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1770, file: !804, line: 177, baseType: !1773, size: 128)
!1773 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_opt_pass_base", file: !804, line: 176, baseType: !1774)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_opt_pass_base", file: !804, line: 176, size: 128, elements: !1775)
!1775 = !{!1776, !1777, !1778}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1774, file: !804, line: 176, baseType: !7, size: 32)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1774, file: !804, line: 176, baseType: !7, size: 32, offset: 32)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1774, file: !804, line: 176, baseType: !1779, size: 64, offset: 64)
!1779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1780, size: 64, elements: !639)
!1780 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_opt_pass", file: !804, line: 174, baseType: !1781)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_opt_pass_d", file: !273, line: 173, size: 1152, elements: !1783)
!1783 = !{!1784, !1808, !1812, !1835, !1836, !1840, !1845, !1846, !1850}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !1782, file: !273, line: 175, baseType: !1785, size: 640)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !273, line: 114, size: 640, elements: !1786)
!1786 = !{!1787, !1788, !1789, !1793, !1797, !1799, !1800, !1801, !1803, !1804, !1805, !1806, !1807}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1785, file: !273, line: 117, baseType: !272, size: 32)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1785, file: !273, line: 121, baseType: !549, size: 64, offset: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !1785, file: !273, line: 125, baseType: !1790, size: 64, offset: 128)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!543}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !1785, file: !273, line: 130, baseType: !1794, size: 64, offset: 192)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!7}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !1785, file: !273, line: 133, baseType: !1798, size: 64, offset: 256)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1785, file: !273, line: 136, baseType: !1798, size: 64, offset: 320)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !1785, file: !273, line: 139, baseType: !544, size: 32, offset: 384)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !1785, file: !273, line: 143, baseType: !1802, size: 32, offset: 416)
!1802 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !280, line: 80, baseType: !279)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !1785, file: !273, line: 146, baseType: !7, size: 32, offset: 448)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !1785, file: !273, line: 147, baseType: !7, size: 32, offset: 480)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !1785, file: !273, line: 148, baseType: !7, size: 32, offset: 512)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !1785, file: !273, line: 151, baseType: !7, size: 32, offset: 544)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !1785, file: !273, line: 152, baseType: !7, size: 32, offset: 576)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "generate_summary", scope: !1782, file: !273, line: 179, baseType: !1809, size: 64, offset: 640)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{null}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "write_summary", scope: !1782, file: !273, line: 182, baseType: !1813, size: 64, offset: 704)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{null, !1816}
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_node_set_def", file: !250, line: 276, size: 192, elements: !1818)
!1818 = !{!1819, !1820, !1834}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "hashtab", scope: !1817, file: !250, line: 278, baseType: !1131, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !1817, file: !250, line: 279, baseType: !1821, size: 64, offset: 64)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_gc", file: !250, line: 272, baseType: !1823)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_gc", file: !250, line: 272, size: 128, elements: !1824)
!1824 = !{!1825}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1823, file: !250, line: 272, baseType: !1826, size: 128)
!1826 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_base", file: !250, line: 270, baseType: !1827)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_base", file: !250, line: 270, size: 128, elements: !1828)
!1828 = !{!1829, !1830, !1831}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1827, file: !250, line: 270, baseType: !7, size: 32)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1827, file: !250, line: 270, baseType: !7, size: 32, offset: 32)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1827, file: !250, line: 270, baseType: !1832, size: 64, offset: 64)
!1832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1833, size: 64, elements: !639)
!1833 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_node_ptr", file: !250, line: 268, baseType: !552)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1817, file: !250, line: 280, baseType: !548, size: 64, offset: 128)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "read_summary", scope: !1782, file: !273, line: 187, baseType: !1809, size: 64, offset: 768)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "function_read_summary", scope: !1782, file: !273, line: 188, baseType: !1837, size: 64, offset: 832)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{null, !552}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_fixup", scope: !1782, file: !273, line: 191, baseType: !1841, size: 64, offset: 896)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{null, !552, !1844}
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "function_transform_todo_flags_start", scope: !1782, file: !273, line: 195, baseType: !7, size: 32, offset: 960)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "function_transform", scope: !1782, file: !273, line: 196, baseType: !1847, size: 64, offset: 1024)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!7, !552}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "variable_transform", scope: !1782, file: !273, line: 197, baseType: !1851, size: 64, offset: 1088)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{null, !1854}
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varpool_node", file: !250, line: 358, size: 320, elements: !1856)
!1856 = !{!1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1855, file: !250, line: 359, baseType: !556, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1855, file: !250, line: 361, baseType: !1854, size: 64, offset: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "next_needed", scope: !1855, file: !250, line: 363, baseType: !1854, size: 64, offset: 128)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "extra_name", scope: !1855, file: !250, line: 366, baseType: !1854, size: 64, offset: 192)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !1855, file: !250, line: 368, baseType: !544, size: 32, offset: 256)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "needed", scope: !1855, file: !250, line: 372, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "force_output", scope: !1855, file: !250, line: 375, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "analyzed", scope: !1855, file: !250, line: 378, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "finalized", scope: !1855, file: !250, line: 380, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !1855, file: !250, line: 382, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "externally_visible", scope: !1855, file: !250, line: 384, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1855, file: !250, line: 387, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !553, file: !250, line: 216, baseType: !1870, size: 320, offset: 1152)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_local_info", file: !250, line: 88, size: 320, elements: !1871)
!1871 = !{!1872, !1907, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "lto_file_data", scope: !1870, file: !250, line: 90, baseType: !1873, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_file_decl_data", file: !528, line: 540, size: 512, elements: !1875)
!1875 = !{!1876, !1889, !1890, !1902, !1903, !1904, !1905, !1906}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "current_decl_state", scope: !1874, file: !528, line: 543, baseType: !1877, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_in_decl_state", file: !528, line: 502, size: 960, elements: !1879)
!1879 = !{!1880, !1888}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !1878, file: !528, line: 505, baseType: !1881, size: 896)
!1881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1882, size: 896, elements: !1886)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_tree_ref_table", file: !528, line: 473, size: 128, elements: !1883)
!1883 = !{!1884, !1885}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "trees", scope: !1882, file: !528, line: 476, baseType: !885, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1882, file: !528, line: 479, baseType: !7, size: 32, offset: 64)
!1886 = !{!1887}
!1887 = !DISubrange(count: 7)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "fn_decl", scope: !1878, file: !528, line: 509, baseType: !556, size: 64, offset: 896)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "global_decl_state", scope: !1874, file: !528, line: 547, baseType: !1877, size: 64, offset: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "cgraph_node_encoder", scope: !1874, file: !528, line: 550, baseType: !1891, size: 64, offset: 128)
!1891 = !DIDerivedType(tag: DW_TAG_typedef, name: "lto_cgraph_encoder_t", file: !528, line: 470, baseType: !1892)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_cgraph_encoder_d", file: !528, line: 461, size: 128, elements: !1894)
!1894 = !{!1895, !1896}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1893, file: !528, line: 464, baseType: !1277, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !1893, file: !528, line: 467, baseType: !1897, size: 64, offset: 64)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_heap", file: !250, line: 271, baseType: !1899)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_heap", file: !250, line: 271, size: 128, elements: !1900)
!1900 = !{!1901}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1899, file: !250, line: 271, baseType: !1826, size: 128)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl_states", scope: !1874, file: !528, line: 553, baseType: !1131, size: 64, offset: 192)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "file_name", scope: !1874, file: !528, line: 556, baseType: !549, size: 64, offset: 256)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "needs_ltrans_p", scope: !1874, file: !528, line: 559, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "section_hash_table", scope: !1874, file: !528, line: 562, baseType: !1131, size: 64, offset: 384)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "renaming_hash_table", scope: !1874, file: !528, line: 565, baseType: !1131, size: 64, offset: 448)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "inline_summary", scope: !1870, file: !250, line: 92, baseType: !1908, size: 192, offset: 64)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inline_summary", file: !250, line: 57, size: 192, elements: !1909)
!1909 = !{!1910, !1911, !1912, !1913, !1914}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_self_stack_size", scope: !1908, file: !250, line: 60, baseType: !612, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "self_size", scope: !1908, file: !250, line: 63, baseType: !544, size: 32, offset: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "size_inlining_benefit", scope: !1908, file: !250, line: 65, baseType: !544, size: 32, offset: 96)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "self_time", scope: !1908, file: !250, line: 67, baseType: !544, size: 32, offset: 128)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "time_inlining_benefit", scope: !1908, file: !250, line: 69, baseType: !544, size: 32, offset: 160)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !1870, file: !250, line: 96, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "externally_visible", scope: !1870, file: !250, line: 99, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "finalized", scope: !1870, file: !250, line: 102, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "inlinable", scope: !1870, file: !250, line: 105, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1870, file: !250, line: 108, baseType: !7, size: 1, offset: 260, flags: DIFlagBitField, extraData: i64 256)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "redefined_extern_inline", scope: !1870, file: !250, line: 112, baseType: !7, size: 1, offset: 261, flags: DIFlagBitField, extraData: i64 256)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "for_functions_valid", scope: !1870, file: !250, line: 116, baseType: !7, size: 1, offset: 262, flags: DIFlagBitField, extraData: i64 256)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "vtable_method", scope: !1870, file: !250, line: 120, baseType: !7, size: 1, offset: 263, flags: DIFlagBitField, extraData: i64 256)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !553, file: !250, line: 217, baseType: !1924, size: 320, offset: 1472)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_global_info", file: !250, line: 126, size: 320, elements: !1925)
!1925 = !{!1926, !1927, !1928, !1929, !1930, !1931, !1932}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_stack_size", scope: !1924, file: !250, line: 128, baseType: !612, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "stack_frame_offset", scope: !1924, file: !250, line: 130, baseType: !612, size: 64, offset: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "inlined_to", scope: !1924, file: !250, line: 134, baseType: !552, size: 64, offset: 128)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1924, file: !250, line: 137, baseType: !544, size: 32, offset: 192)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1924, file: !250, line: 138, baseType: !544, size: 32, offset: 224)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_growth", scope: !1924, file: !250, line: 141, baseType: !544, size: 32, offset: 256)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "inlined", scope: !1924, file: !250, line: 144, baseType: !543, size: 8, offset: 288)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !553, file: !250, line: 218, baseType: !1934, size: 32, offset: 1792)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_rtl_info", file: !250, line: 150, size: 32, elements: !1935)
!1935 = !{!1936}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_incoming_stack_boundary", scope: !1934, file: !250, line: 151, baseType: !7, size: 32)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "clone", scope: !553, file: !250, line: 219, baseType: !1938, size: 192, offset: 1856)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_clone_info", file: !250, line: 171, size: 192, elements: !1939)
!1939 = !{!1940, !1961, !1962}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "tree_map", scope: !1938, file: !250, line: 173, baseType: !1941, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_replace_map_p_gc", file: !250, line: 169, baseType: !1943)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_replace_map_p_gc", file: !250, line: 169, size: 128, elements: !1944)
!1944 = !{!1945}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1943, file: !250, line: 169, baseType: !1946, size: 128)
!1946 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_replace_map_p_base", file: !250, line: 168, baseType: !1947)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_replace_map_p_base", file: !250, line: 168, size: 128, elements: !1948)
!1948 = !{!1949, !1950, !1951}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1947, file: !250, line: 168, baseType: !7, size: 32)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1947, file: !250, line: 168, baseType: !7, size: 32, offset: 32)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1947, file: !250, line: 168, baseType: !1952, size: 64, offset: 64)
!1952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1953, size: 64, elements: !639)
!1953 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_replace_map_p", file: !250, line: 167, baseType: !1954)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_replace_map", file: !250, line: 156, size: 192, elements: !1956)
!1956 = !{!1957, !1958, !1959, !1960}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "old_tree", scope: !1955, file: !250, line: 159, baseType: !556, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "new_tree", scope: !1955, file: !250, line: 161, baseType: !556, size: 64, offset: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "replace_p", scope: !1955, file: !250, line: 163, baseType: !543, size: 8, offset: 128)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "ref_p", scope: !1955, file: !250, line: 165, baseType: !543, size: 8, offset: 136)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "args_to_skip", scope: !1938, file: !250, line: 174, baseType: !1217, size: 64, offset: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "combined_args_to_skip", scope: !1938, file: !250, line: 175, baseType: !1217, size: 64, offset: 128)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "thunk", scope: !553, file: !250, line: 220, baseType: !1964, size: 256, offset: 2048)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_thunk_info", file: !250, line: 74, size: 256, elements: !1965)
!1965 = !{!1966, !1967, !1968, !1969, !1970, !1971}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_offset", scope: !1964, file: !250, line: 76, baseType: !612, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_value", scope: !1964, file: !250, line: 77, baseType: !612, size: 64, offset: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1964, file: !250, line: 78, baseType: !556, size: 64, offset: 128)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "this_adjusting", scope: !1964, file: !250, line: 79, baseType: !543, size: 8, offset: 192)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_offset_p", scope: !1964, file: !250, line: 80, baseType: !543, size: 8, offset: 200)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "thunk_p", scope: !1964, file: !250, line: 82, baseType: !543, size: 8, offset: 208)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !553, file: !250, line: 223, baseType: !1062, size: 64, offset: 2304)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !553, file: !250, line: 225, baseType: !544, size: 32, offset: 2368)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !553, file: !250, line: 227, baseType: !544, size: 32, offset: 2400)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !553, file: !250, line: 231, baseType: !544, size: 32, offset: 2432)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "needed", scope: !553, file: !250, line: 238, baseType: !7, size: 1, offset: 2464, flags: DIFlagBitField, extraData: i64 2464)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "address_taken", scope: !553, file: !250, line: 241, baseType: !7, size: 1, offset: 2465, flags: DIFlagBitField, extraData: i64 2464)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_and_needed", scope: !553, file: !250, line: 244, baseType: !7, size: 1, offset: 2466, flags: DIFlagBitField, extraData: i64 2464)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "reachable", scope: !553, file: !250, line: 251, baseType: !7, size: 1, offset: 2467, flags: DIFlagBitField, extraData: i64 2464)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "lowered", scope: !553, file: !250, line: 253, baseType: !7, size: 1, offset: 2468, flags: DIFlagBitField, extraData: i64 2464)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "analyzed", scope: !553, file: !250, line: 256, baseType: !7, size: 1, offset: 2469, flags: DIFlagBitField, extraData: i64 2464)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !553, file: !250, line: 258, baseType: !7, size: 1, offset: 2470, flags: DIFlagBitField, extraData: i64 2464)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !553, file: !250, line: 260, baseType: !7, size: 1, offset: 2471, flags: DIFlagBitField, extraData: i64 2464)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "finalized_by_frontend", scope: !553, file: !250, line: 262, baseType: !7, size: 1, offset: 2472, flags: DIFlagBitField, extraData: i64 2464)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "same_body_alias", scope: !553, file: !250, line: 265, baseType: !7, size: 1, offset: 2473, flags: DIFlagBitField, extraData: i64 2464)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_reference_global_vars_info_d", file: !3, line: 110, size: 256, elements: !1988)
!1988 = !{!1989, !1990, !1991, !1992}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "statics_read", scope: !1987, file: !3, line: 112, baseType: !1217, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "statics_written", scope: !1987, file: !3, line: 113, baseType: !1217, size: 64, offset: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "statics_not_read", scope: !1987, file: !3, line: 114, baseType: !1217, size: 64, offset: 128)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "statics_not_written", scope: !1987, file: !3, line: 115, baseType: !1217, size: 64, offset: 192)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_dfs_info", file: !1995, line: 26, size: 256, elements: !1996)
!1995 = !DIFile(filename: "./ipa-utils.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1996 = !{!1997, !1998, !1999, !2000, !2001, !2002}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "dfn_number", scope: !1994, file: !1995, line: 27, baseType: !544, size: 32)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "low_link", scope: !1994, file: !1995, line: 28, baseType: !544, size: 32, offset: 32)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "new_node", scope: !1994, file: !1995, line: 29, baseType: !543, size: 8, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "on_stack", scope: !1994, file: !1995, line: 30, baseType: !543, size: 8, offset: 72)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "next_cycle", scope: !1994, file: !1995, line: 31, baseType: !552, size: 64, offset: 128)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1994, file: !1995, line: 32, baseType: !548, size: 64, offset: 192)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_reference_vars_info_t_heap", file: !3, line: 174, baseType: !2005)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_reference_vars_info_t_heap", file: !3, line: 174, size: 128, elements: !2006)
!2006 = !{!2007}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2005, file: !3, line: 174, baseType: !2008, size: 128)
!2008 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_reference_vars_info_t_base", file: !3, line: 173, baseType: !2009)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_reference_vars_info_t_base", file: !3, line: 173, size: 128, elements: !2010)
!2010 = !{!2011, !2012, !2013}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2009, file: !3, line: 173, baseType: !7, size: 32)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2009, file: !3, line: 173, baseType: !7, size: 32, offset: 32)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2009, file: !3, line: 173, baseType: !2014, size: 64, offset: 64)
!2014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2015, size: 64, elements: !639)
!2015 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_reference_vars_info_t", file: !3, line: 126, baseType: !2016)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_reference_vars_info_d", file: !3, line: 120, size: 128, elements: !2018)
!2018 = !{!2019, !2028}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !2017, file: !3, line: 122, baseType: !2020, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_reference_local_vars_info_t", file: !3, line: 118, baseType: !2021)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_reference_local_vars_info_d", file: !3, line: 85, size: 192, elements: !2023)
!2023 = !{!2024, !2025, !2026, !2027}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "statics_read", scope: !2022, file: !3, line: 87, baseType: !1217, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "statics_written", scope: !2022, file: !3, line: 88, baseType: !1217, size: 64, offset: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "calls_read_all", scope: !2022, file: !3, line: 95, baseType: !543, size: 8, offset: 128)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "calls_write_all", scope: !2022, file: !3, line: 96, baseType: !543, size: 8, offset: 136)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !2017, file: !3, line: 123, baseType: !2029, size: 64, offset: 64)
!2029 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_reference_global_vars_info_t", file: !3, line: 119, baseType: !1986)
!2030 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_value", file: !2031, line: 63, baseType: !2032)
!2031 = !DIFile(filename: "./include/splay-tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2032 = !DIDerivedType(tag: DW_TAG_typedef, name: "libi_uhostptr_t", file: !2031, line: 41, baseType: !610)
!2033 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_operand_p", file: !456, line: 30, baseType: !2034)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_use_operand_t", file: !6, line: 1893, baseType: !892)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !853)
!2038 = !{!0, !2039, !2053, !2092, !2094, !2096, !2100, !2102, !2104, !2106, !2110, !2112, !2116, !2120, !2122}
!2039 = !DIGlobalVariableExpression(var: !2040, expr: !DIExpression())
!2040 = distinct !DIGlobalVariable(name: "gt_ggc_r_gt_ipa_reference_h", scope: !2, file: !2041, line: 24, type: !2042, isLocal: false, isDefinition: true)
!2041 = !DIFile(filename: "./gt-ipa-reference.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2043, size: 640, elements: !1072)
!2043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2044)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ggc_root_tab", file: !2045, line: 69, size: 320, elements: !2046)
!2045 = !DIFile(filename: "./ggc.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2046 = !{!2047, !2048, !2049, !2050, !2052}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2044, file: !2045, line: 70, baseType: !548, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "nelt", scope: !2044, file: !2045, line: 71, baseType: !996, size: 64, offset: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !2044, file: !2045, line: 72, baseType: !996, size: 64, offset: 128)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !2044, file: !2045, line: 73, baseType: !2051, size: 64, offset: 192)
!2051 = !DIDerivedType(tag: DW_TAG_typedef, name: "gt_pointer_walker", file: !2045, line: 65, baseType: !1151)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "pchw", scope: !2044, file: !2045, line: 74, baseType: !2051, size: 64, offset: 256)
!2053 = !DIGlobalVariableExpression(var: !2054, expr: !DIExpression())
!2054 = distinct !DIGlobalVariable(name: "reference_vars_to_consider", scope: !2, file: !3, line: 135, type: !2055, isLocal: true, isDefinition: true)
!2055 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree", file: !2031, line: 128, baseType: !2056)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "splay_tree_s", file: !2031, line: 109, size: 448, elements: !2058)
!2058 = !{!2059, !2069, !2074, !2079, !2084, !2089, !2091}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2057, file: !2031, line: 111, baseType: !2060, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_node", file: !2031, line: 66, baseType: !2061)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "splay_tree_node_s", file: !2031, line: 96, size: 256, elements: !2063)
!2063 = !{!2064, !2066, !2067, !2068}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2062, file: !2031, line: 98, baseType: !2065, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_key", file: !2031, line: 62, baseType: !2032)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2062, file: !2031, line: 101, baseType: !2030, size: 64, offset: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !2062, file: !2031, line: 104, baseType: !2060, size: 64, offset: 128)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !2062, file: !2031, line: 105, baseType: !2060, size: 64, offset: 192)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !2057, file: !2031, line: 114, baseType: !2070, size: 64, offset: 64)
!2070 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_compare_fn", file: !2031, line: 70, baseType: !2071)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!544, !2065, !2065}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "delete_key", scope: !2057, file: !2031, line: 117, baseType: !2075, size: 64, offset: 128)
!2075 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_delete_key_fn", file: !2031, line: 74, baseType: !2076)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{null, !2065}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "delete_value", scope: !2057, file: !2031, line: 120, baseType: !2080, size: 64, offset: 192)
!2080 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_delete_value_fn", file: !2031, line: 78, baseType: !2081)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{null, !2030}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "allocate", scope: !2057, file: !2031, line: 123, baseType: !2085, size: 64, offset: 256)
!2085 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_allocate_fn", file: !2031, line: 87, baseType: !2086)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!548, !544, !548}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "deallocate", scope: !2057, file: !2031, line: 124, baseType: !2090, size: 64, offset: 320)
!2090 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_deallocate_fn", file: !2031, line: 93, baseType: !1176)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_data", scope: !2057, file: !2031, line: 125, baseType: !548, size: 64, offset: 384)
!2092 = !DIGlobalVariableExpression(var: !2093, expr: !DIExpression())
!2093 = distinct !DIGlobalVariable(name: "memory_identifier_string", scope: !2, file: !3, line: 170, type: !556, isLocal: false, isDefinition: true)
!2094 = !DIGlobalVariableExpression(var: !2095, expr: !DIExpression())
!2095 = distinct !DIGlobalVariable(name: "ipa_reference_vars_vector", scope: !2, file: !3, line: 175, type: !2003, isLocal: true, isDefinition: true)
!2096 = !DIGlobalVariableExpression(var: !2097, expr: !DIExpression())
!2097 = distinct !DIGlobalVariable(name: "function_insertion_hook_holder", scope: !2, file: !3, line: 159, type: !2098, isLocal: true, isDefinition: true)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_node_hook_list", file: !250, line: 520, flags: DIFlagFwdDecl)
!2100 = !DIGlobalVariableExpression(var: !2101, expr: !DIExpression())
!2101 = distinct !DIGlobalVariable(name: "all_module_statics", scope: !2, file: !3, line: 148, type: !1217, isLocal: true, isDefinition: true)
!2102 = !DIGlobalVariableExpression(var: !2103, expr: !DIExpression())
!2103 = distinct !DIGlobalVariable(name: "global_info_obstack", scope: !2, file: !3, line: 156, type: !1238, isLocal: true, isDefinition: true)
!2104 = !DIGlobalVariableExpression(var: !2105, expr: !DIExpression())
!2105 = distinct !DIGlobalVariable(name: "local_info_obstack", scope: !2, file: !3, line: 154, type: !1238, isLocal: true, isDefinition: true)
!2106 = !DIGlobalVariableExpression(var: !2107, expr: !DIExpression())
!2107 = distinct !DIGlobalVariable(name: "init_p", scope: !2108, file: !3, line: 587, type: !543, isLocal: true, isDefinition: true)
!2108 = distinct !DISubprogram(name: "ipa_init", scope: !3, file: !3, line: 585, type: !1810, scopeLine: 586, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2109)
!2109 = !{}
!2110 = !DIGlobalVariableExpression(var: !2111, expr: !DIExpression())
!2111 = distinct !DIGlobalVariable(name: "node_removal_hook_holder", scope: !2, file: !3, line: 161, type: !2098, isLocal: true, isDefinition: true)
!2112 = !DIGlobalVariableExpression(var: !2113, expr: !DIExpression())
!2113 = distinct !DIGlobalVariable(name: "node_duplication_hook_holder", scope: !2, file: !3, line: 160, type: !2114, isLocal: true, isDefinition: true)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_2node_hook_list", file: !250, line: 522, flags: DIFlagFwdDecl)
!2116 = !DIGlobalVariableExpression(var: !2117, expr: !DIExpression())
!2117 = distinct !DIGlobalVariable(name: "visited_nodes", scope: !2, file: !3, line: 150, type: !2118, isLocal: true, isDefinition: true)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_set_t", file: !6, line: 5199, flags: DIFlagFwdDecl)
!2120 = !DIGlobalVariableExpression(var: !2121, expr: !DIExpression())
!2121 = distinct !DIGlobalVariable(name: "module_statics_escape", scope: !2, file: !3, line: 139, type: !1217, isLocal: true, isDefinition: true)
!2122 = !DIGlobalVariableExpression(var: !2123, expr: !DIExpression())
!2123 = distinct !DIGlobalVariable(name: "module_statics_written", scope: !2, file: !3, line: 143, type: !1217, isLocal: true, isDefinition: true)
!2124 = !DIGlobalVariableExpression(var: !2107, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!2125 = !{i32 2, !"Dwarf Version", i32 4}
!2126 = !{i32 2, !"Debug Info Version", i32 3}
!2127 = !{i32 1, !"wchar_size", i32 4}
!2128 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!2129 = distinct !DISubprogram(name: "vprintf", scope: !2130, file: !2130, line: 39, type: !2131, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2141)
!2130 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!544, !2133, !2134}
!2133 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !549)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2136)
!2136 = !{!2137, !2138, !2139, !2140}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2135, file: !3, baseType: !7, size: 32)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2135, file: !3, baseType: !7, size: 32, offset: 32)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2135, file: !3, baseType: !548, size: 64, offset: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2135, file: !3, baseType: !548, size: 64, offset: 128)
!2141 = !{!2142, !2143}
!2142 = !DILocalVariable(name: "__fmt", arg: 1, scope: !2129, file: !2130, line: 39, type: !2133)
!2143 = !DILocalVariable(name: "__arg", arg: 2, scope: !2129, file: !2130, line: 39, type: !2134)
!2144 = !DILocation(line: 0, scope: !2129)
!2145 = !DILocation(line: 41, column: 20, scope: !2129)
!2146 = !DILocation(line: 41, column: 10, scope: !2129)
!2147 = !DILocation(line: 41, column: 3, scope: !2129)
!2148 = distinct !DISubprogram(name: "getchar", scope: !2130, file: !2130, line: 47, type: !2149, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2109)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!544}
!2151 = !DILocation(line: 49, column: 16, scope: !2148)
!2152 = !DILocation(line: 49, column: 10, scope: !2148)
!2153 = !DILocation(line: 49, column: 3, scope: !2148)
!2154 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !2130, file: !2130, line: 56, type: !2155, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2207)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!544, !2157}
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2159, line: 7, baseType: !2160)
!2159 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2161, line: 49, size: 1728, elements: !2162)
!2161 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2162 = !{!2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2178, !2180, !2181, !2182, !2185, !2186, !2187, !2188, !2191, !2193, !2196, !2199, !2200, !2201, !2202, !2203}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2160, file: !2161, line: 51, baseType: !544, size: 32)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2160, file: !2161, line: 54, baseType: !546, size: 64, offset: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2160, file: !2161, line: 55, baseType: !546, size: 64, offset: 128)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2160, file: !2161, line: 56, baseType: !546, size: 64, offset: 192)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2160, file: !2161, line: 57, baseType: !546, size: 64, offset: 256)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2160, file: !2161, line: 58, baseType: !546, size: 64, offset: 320)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2160, file: !2161, line: 59, baseType: !546, size: 64, offset: 384)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2160, file: !2161, line: 60, baseType: !546, size: 64, offset: 448)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2160, file: !2161, line: 61, baseType: !546, size: 64, offset: 512)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2160, file: !2161, line: 64, baseType: !546, size: 64, offset: 576)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2160, file: !2161, line: 65, baseType: !546, size: 64, offset: 640)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2160, file: !2161, line: 66, baseType: !546, size: 64, offset: 704)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2160, file: !2161, line: 68, baseType: !2176, size: 64, offset: 768)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2161, line: 36, flags: DIFlagFwdDecl)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2160, file: !2161, line: 70, baseType: !2179, size: 64, offset: 832)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2160, file: !2161, line: 72, baseType: !544, size: 32, offset: 896)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2160, file: !2161, line: 73, baseType: !544, size: 32, offset: 928)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2160, file: !2161, line: 74, baseType: !2183, size: 64, offset: 960)
!2183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2184, line: 152, baseType: !612)
!2184 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2160, file: !2161, line: 77, baseType: !1748, size: 16, offset: 1024)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2160, file: !2161, line: 78, baseType: !1556, size: 8, offset: 1040)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2160, file: !2161, line: 79, baseType: !638, size: 8, offset: 1048)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2160, file: !2161, line: 81, baseType: !2189, size: 64, offset: 1088)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2161, line: 43, baseType: null)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2160, file: !2161, line: 89, baseType: !2192, size: 64, offset: 1152)
!2192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2184, line: 153, baseType: !612)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2160, file: !2161, line: 91, baseType: !2194, size: 64, offset: 1216)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2161, line: 37, flags: DIFlagFwdDecl)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2160, file: !2161, line: 92, baseType: !2197, size: 64, offset: 1280)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2161, line: 38, flags: DIFlagFwdDecl)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2160, file: !2161, line: 93, baseType: !2179, size: 64, offset: 1344)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2160, file: !2161, line: 94, baseType: !548, size: 64, offset: 1408)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2160, file: !2161, line: 95, baseType: !996, size: 64, offset: 1472)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2160, file: !2161, line: 96, baseType: !544, size: 32, offset: 1536)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2160, file: !2161, line: 98, baseType: !2204, size: 160, offset: 1568)
!2204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !547, size: 160, elements: !2205)
!2205 = !{!2206}
!2206 = !DISubrange(count: 20)
!2207 = !{!2208}
!2208 = !DILocalVariable(name: "__fp", arg: 1, scope: !2154, file: !2130, line: 56, type: !2157)
!2209 = !DILocation(line: 0, scope: !2154)
!2210 = !DILocation(line: 58, column: 10, scope: !2154)
!2211 = !DILocation(line: 58, column: 3, scope: !2154)
!2212 = distinct !DISubprogram(name: "getc_unlocked", scope: !2130, file: !2130, line: 66, type: !2155, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2213)
!2213 = !{!2214}
!2214 = !DILocalVariable(name: "__fp", arg: 1, scope: !2212, file: !2130, line: 66, type: !2157)
!2215 = !DILocation(line: 0, scope: !2212)
!2216 = !DILocation(line: 68, column: 10, scope: !2212)
!2217 = !DILocation(line: 68, column: 3, scope: !2212)
!2218 = distinct !DISubprogram(name: "getchar_unlocked", scope: !2130, file: !2130, line: 73, type: !2149, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2109)
!2219 = !DILocation(line: 75, column: 10, scope: !2218)
!2220 = !DILocation(line: 75, column: 3, scope: !2218)
!2221 = distinct !DISubprogram(name: "putchar", scope: !2130, file: !2130, line: 82, type: !2222, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2224)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{!544, !544}
!2224 = !{!2225}
!2225 = !DILocalVariable(name: "__c", arg: 1, scope: !2221, file: !2130, line: 82, type: !544)
!2226 = !DILocation(line: 0, scope: !2221)
!2227 = !DILocation(line: 84, column: 21, scope: !2221)
!2228 = !DILocation(line: 84, column: 10, scope: !2221)
!2229 = !DILocation(line: 84, column: 3, scope: !2221)
!2230 = distinct !DISubprogram(name: "fputc_unlocked", scope: !2130, file: !2130, line: 91, type: !2231, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2233)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{!544, !544, !2157}
!2233 = !{!2234, !2235}
!2234 = !DILocalVariable(name: "__c", arg: 1, scope: !2230, file: !2130, line: 91, type: !544)
!2235 = !DILocalVariable(name: "__stream", arg: 2, scope: !2230, file: !2130, line: 91, type: !2157)
!2236 = !DILocation(line: 0, scope: !2230)
!2237 = !DILocation(line: 93, column: 10, scope: !2230)
!2238 = !DILocation(line: 93, column: 3, scope: !2230)
!2239 = distinct !DISubprogram(name: "putc_unlocked", scope: !2130, file: !2130, line: 101, type: !2231, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2240)
!2240 = !{!2241, !2242}
!2241 = !DILocalVariable(name: "__c", arg: 1, scope: !2239, file: !2130, line: 101, type: !544)
!2242 = !DILocalVariable(name: "__stream", arg: 2, scope: !2239, file: !2130, line: 101, type: !2157)
!2243 = !DILocation(line: 0, scope: !2239)
!2244 = !DILocation(line: 103, column: 10, scope: !2239)
!2245 = !DILocation(line: 103, column: 3, scope: !2239)
!2246 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2130, file: !2130, line: 108, type: !2222, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2247)
!2247 = !{!2248}
!2248 = !DILocalVariable(name: "__c", arg: 1, scope: !2246, file: !2130, line: 108, type: !544)
!2249 = !DILocation(line: 0, scope: !2246)
!2250 = !DILocation(line: 110, column: 10, scope: !2246)
!2251 = !DILocation(line: 110, column: 3, scope: !2246)
!2252 = distinct !DISubprogram(name: "getline", scope: !2130, file: !2130, line: 118, type: !2253, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2257)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{!2255, !545, !2256, !2157}
!2255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2184, line: 193, baseType: !612)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!2257 = !{!2258, !2259, !2260}
!2258 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2252, file: !2130, line: 118, type: !545)
!2259 = !DILocalVariable(name: "__n", arg: 2, scope: !2252, file: !2130, line: 118, type: !2256)
!2260 = !DILocalVariable(name: "__stream", arg: 3, scope: !2252, file: !2130, line: 118, type: !2157)
!2261 = !DILocation(line: 0, scope: !2252)
!2262 = !DILocation(line: 120, column: 10, scope: !2252)
!2263 = !DILocation(line: 120, column: 3, scope: !2252)
!2264 = distinct !DISubprogram(name: "feof_unlocked", scope: !2130, file: !2130, line: 128, type: !2155, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2265)
!2265 = !{!2266}
!2266 = !DILocalVariable(name: "__stream", arg: 1, scope: !2264, file: !2130, line: 128, type: !2157)
!2267 = !DILocation(line: 0, scope: !2264)
!2268 = !DILocation(line: 130, column: 10, scope: !2264)
!2269 = !DILocation(line: 130, column: 3, scope: !2264)
!2270 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2130, file: !2130, line: 135, type: !2155, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2271)
!2271 = !{!2272}
!2272 = !DILocalVariable(name: "__stream", arg: 1, scope: !2270, file: !2130, line: 135, type: !2157)
!2273 = !DILocation(line: 0, scope: !2270)
!2274 = !DILocation(line: 137, column: 10, scope: !2270)
!2275 = !DILocation(line: 137, column: 3, scope: !2270)
!2276 = distinct !DISubprogram(name: "tolower", scope: !2277, file: !2277, line: 207, type: !2222, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2278)
!2277 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2278 = !{!2279}
!2279 = !DILocalVariable(name: "__c", arg: 1, scope: !2276, file: !2277, line: 207, type: !544)
!2280 = !DILocation(line: 0, scope: !2276)
!2281 = !DILocation(line: 209, column: 22, scope: !2276)
!2282 = !DILocation(line: 209, column: 39, scope: !2276)
!2283 = !DILocation(line: 209, column: 38, scope: !2276)
!2284 = !DILocation(line: 209, column: 37, scope: !2276)
!2285 = !DILocation(line: 209, column: 10, scope: !2276)
!2286 = !DILocation(line: 209, column: 3, scope: !2276)
!2287 = distinct !DISubprogram(name: "toupper", scope: !2277, file: !2277, line: 213, type: !2222, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2288)
!2288 = !{!2289}
!2289 = !DILocalVariable(name: "__c", arg: 1, scope: !2287, file: !2277, line: 213, type: !544)
!2290 = !DILocation(line: 0, scope: !2287)
!2291 = !DILocation(line: 215, column: 22, scope: !2287)
!2292 = !DILocation(line: 215, column: 39, scope: !2287)
!2293 = !DILocation(line: 215, column: 38, scope: !2287)
!2294 = !DILocation(line: 215, column: 37, scope: !2287)
!2295 = !DILocation(line: 215, column: 10, scope: !2287)
!2296 = !DILocation(line: 215, column: 3, scope: !2287)
!2297 = distinct !DISubprogram(name: "atoi", scope: !2298, file: !2298, line: 361, type: !2299, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2301)
!2298 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!544, !549}
!2301 = !{!2302}
!2302 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2297, file: !2298, line: 361, type: !549)
!2303 = !DILocation(line: 0, scope: !2297)
!2304 = !DILocation(line: 363, column: 16, scope: !2297)
!2305 = !DILocation(line: 363, column: 10, scope: !2297)
!2306 = !DILocation(line: 363, column: 3, scope: !2297)
!2307 = distinct !DISubprogram(name: "atol", scope: !2298, file: !2298, line: 366, type: !2308, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2310)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{!612, !549}
!2310 = !{!2311}
!2311 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2307, file: !2298, line: 366, type: !549)
!2312 = !DILocation(line: 0, scope: !2307)
!2313 = !DILocation(line: 368, column: 10, scope: !2307)
!2314 = !DILocation(line: 368, column: 3, scope: !2307)
!2315 = distinct !DISubprogram(name: "atoll", scope: !2298, file: !2298, line: 373, type: !2316, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2319)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!2318, !549}
!2318 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2319 = !{!2320}
!2320 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2315, file: !2298, line: 373, type: !549)
!2321 = !DILocation(line: 0, scope: !2315)
!2322 = !DILocation(line: 375, column: 10, scope: !2315)
!2323 = !DILocation(line: 375, column: 3, scope: !2315)
!2324 = distinct !DISubprogram(name: "bsearch", scope: !2325, file: !2325, line: 20, type: !2326, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2329)
!2325 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!548, !1142, !1142, !996, !996, !2328}
!2328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2298, line: 808, baseType: !1146)
!2329 = !{!2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339}
!2330 = !DILocalVariable(name: "__key", arg: 1, scope: !2324, file: !2325, line: 20, type: !1142)
!2331 = !DILocalVariable(name: "__base", arg: 2, scope: !2324, file: !2325, line: 20, type: !1142)
!2332 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2324, file: !2325, line: 20, type: !996)
!2333 = !DILocalVariable(name: "__size", arg: 4, scope: !2324, file: !2325, line: 20, type: !996)
!2334 = !DILocalVariable(name: "__compar", arg: 5, scope: !2324, file: !2325, line: 21, type: !2328)
!2335 = !DILocalVariable(name: "__l", scope: !2324, file: !2325, line: 23, type: !996)
!2336 = !DILocalVariable(name: "__u", scope: !2324, file: !2325, line: 23, type: !996)
!2337 = !DILocalVariable(name: "__idx", scope: !2324, file: !2325, line: 23, type: !996)
!2338 = !DILocalVariable(name: "__p", scope: !2324, file: !2325, line: 24, type: !1142)
!2339 = !DILocalVariable(name: "__comparison", scope: !2324, file: !2325, line: 25, type: !544)
!2340 = !DILocation(line: 0, scope: !2324)
!2341 = !DILocation(line: 29, column: 3, scope: !2324)
!2342 = !DILocation(line: 27, column: 7, scope: !2324)
!2343 = !DILocation(line: 29, column: 14, scope: !2324)
!2344 = !DILocation(line: 31, column: 20, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2324, file: !2325, line: 30, column: 5)
!2346 = !DILocation(line: 31, column: 27, scope: !2345)
!2347 = !DILocation(line: 32, column: 56, scope: !2345)
!2348 = !DILocation(line: 32, column: 47, scope: !2345)
!2349 = !DILocation(line: 33, column: 22, scope: !2345)
!2350 = !DILocation(line: 34, column: 24, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2345, file: !2325, line: 34, column: 11)
!2352 = !DILocation(line: 34, column: 11, scope: !2345)
!2353 = !DILocation(line: 36, column: 29, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2351, file: !2325, line: 36, column: 16)
!2355 = !DILocation(line: 36, column: 16, scope: !2351)
!2356 = !DILocation(line: 37, column: 14, scope: !2354)
!2357 = distinct !{!2357, !2341, !2358}
!2358 = !DILocation(line: 40, column: 5, scope: !2324)
!2359 = !DILocation(line: 43, column: 1, scope: !2324)
!2360 = distinct !DISubprogram(name: "atof", scope: !2361, file: !2361, line: 25, type: !2362, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2365)
!2361 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!2364, !549}
!2364 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2365 = !{!2366}
!2366 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2360, file: !2361, line: 25, type: !549)
!2367 = !DILocation(line: 0, scope: !2360)
!2368 = !DILocation(line: 27, column: 10, scope: !2360)
!2369 = !DILocation(line: 27, column: 3, scope: !2360)
!2370 = distinct !DISubprogram(name: "strtoimax", scope: !2371, file: !2371, line: 324, type: !2372, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2378)
!2371 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!2374, !2133, !2377, !544}
!2374 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2375, line: 101, baseType: !2376)
!2375 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2184, line: 72, baseType: !612)
!2377 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !545)
!2378 = !{!2379, !2380, !2381}
!2379 = !DILocalVariable(name: "nptr", arg: 1, scope: !2370, file: !2371, line: 324, type: !2133)
!2380 = !DILocalVariable(name: "endptr", arg: 2, scope: !2370, file: !2371, line: 324, type: !2377)
!2381 = !DILocalVariable(name: "base", arg: 3, scope: !2370, file: !2371, line: 324, type: !544)
!2382 = !DILocation(line: 0, scope: !2370)
!2383 = !DILocation(line: 327, column: 10, scope: !2370)
!2384 = !DILocation(line: 327, column: 3, scope: !2370)
!2385 = distinct !DISubprogram(name: "strtoumax", scope: !2371, file: !2371, line: 336, type: !2386, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2390)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!2388, !2133, !2377, !544}
!2388 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2375, line: 102, baseType: !2389)
!2389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2184, line: 73, baseType: !610)
!2390 = !{!2391, !2392, !2393}
!2391 = !DILocalVariable(name: "nptr", arg: 1, scope: !2385, file: !2371, line: 336, type: !2133)
!2392 = !DILocalVariable(name: "endptr", arg: 2, scope: !2385, file: !2371, line: 336, type: !2377)
!2393 = !DILocalVariable(name: "base", arg: 3, scope: !2385, file: !2371, line: 336, type: !544)
!2394 = !DILocation(line: 0, scope: !2385)
!2395 = !DILocation(line: 339, column: 10, scope: !2385)
!2396 = !DILocation(line: 339, column: 3, scope: !2385)
!2397 = distinct !DISubprogram(name: "wcstoimax", scope: !2371, file: !2371, line: 348, type: !2398, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2407)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!2374, !2400, !2404, !544}
!2400 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2401)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2403)
!2403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2371, line: 34, baseType: !544)
!2404 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2405)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2407 = !{!2408, !2409, !2410}
!2408 = !DILocalVariable(name: "nptr", arg: 1, scope: !2397, file: !2371, line: 348, type: !2400)
!2409 = !DILocalVariable(name: "endptr", arg: 2, scope: !2397, file: !2371, line: 348, type: !2404)
!2410 = !DILocalVariable(name: "base", arg: 3, scope: !2397, file: !2371, line: 348, type: !544)
!2411 = !DILocation(line: 0, scope: !2397)
!2412 = !DILocation(line: 351, column: 10, scope: !2397)
!2413 = !DILocation(line: 351, column: 3, scope: !2397)
!2414 = distinct !DISubprogram(name: "wcstoumax", scope: !2371, file: !2371, line: 362, type: !2415, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2417)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!2388, !2400, !2404, !544}
!2417 = !{!2418, !2419, !2420}
!2418 = !DILocalVariable(name: "nptr", arg: 1, scope: !2414, file: !2371, line: 362, type: !2400)
!2419 = !DILocalVariable(name: "endptr", arg: 2, scope: !2414, file: !2371, line: 362, type: !2404)
!2420 = !DILocalVariable(name: "base", arg: 3, scope: !2414, file: !2371, line: 362, type: !544)
!2421 = !DILocation(line: 0, scope: !2414)
!2422 = !DILocation(line: 365, column: 10, scope: !2414)
!2423 = !DILocation(line: 365, column: 3, scope: !2414)
!2424 = distinct !DISubprogram(name: "stat", scope: !2425, file: !2425, line: 453, type: !2426, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2465)
!2425 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!544, !549, !2428}
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2430, line: 46, size: 1152, elements: !2431)
!2430 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2431 = !{!2432, !2434, !2436, !2438, !2440, !2442, !2444, !2445, !2446, !2447, !2449, !2451, !2459, !2460, !2461}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2429, file: !2430, line: 48, baseType: !2433, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2184, line: 145, baseType: !610)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2429, file: !2430, line: 53, baseType: !2435, size: 64, offset: 64)
!2435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2184, line: 148, baseType: !610)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2429, file: !2430, line: 61, baseType: !2437, size: 64, offset: 128)
!2437 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2184, line: 151, baseType: !610)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2429, file: !2430, line: 62, baseType: !2439, size: 32, offset: 192)
!2439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2184, line: 150, baseType: !7)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2429, file: !2430, line: 64, baseType: !2441, size: 32, offset: 224)
!2441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2184, line: 146, baseType: !7)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2429, file: !2430, line: 65, baseType: !2443, size: 32, offset: 256)
!2443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2184, line: 147, baseType: !7)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2429, file: !2430, line: 67, baseType: !544, size: 32, offset: 288)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2429, file: !2430, line: 69, baseType: !2433, size: 64, offset: 320)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2429, file: !2430, line: 74, baseType: !2183, size: 64, offset: 384)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2429, file: !2430, line: 78, baseType: !2448, size: 64, offset: 448)
!2448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2184, line: 174, baseType: !612)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2429, file: !2430, line: 80, baseType: !2450, size: 64, offset: 512)
!2450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2184, line: 179, baseType: !612)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2429, file: !2430, line: 91, baseType: !2452, size: 128, offset: 576)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2453, line: 10, size: 128, elements: !2454)
!2453 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2454 = !{!2455, !2457}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2452, file: !2453, line: 12, baseType: !2456, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2184, line: 160, baseType: !612)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2452, file: !2453, line: 16, baseType: !2458, size: 64, offset: 64)
!2458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2184, line: 196, baseType: !612)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2429, file: !2430, line: 92, baseType: !2452, size: 128, offset: 704)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2429, file: !2430, line: 93, baseType: !2452, size: 128, offset: 832)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2429, file: !2430, line: 106, baseType: !2462, size: 192, offset: 960)
!2462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2458, size: 192, elements: !2463)
!2463 = !{!2464}
!2464 = !DISubrange(count: 3)
!2465 = !{!2466, !2467}
!2466 = !DILocalVariable(name: "__path", arg: 1, scope: !2424, file: !2425, line: 453, type: !549)
!2467 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2424, file: !2425, line: 453, type: !2428)
!2468 = !DILocation(line: 0, scope: !2424)
!2469 = !DILocation(line: 455, column: 10, scope: !2424)
!2470 = !DILocation(line: 455, column: 3, scope: !2424)
!2471 = distinct !DISubprogram(name: "lstat", scope: !2425, file: !2425, line: 460, type: !2426, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2472)
!2472 = !{!2473, !2474}
!2473 = !DILocalVariable(name: "__path", arg: 1, scope: !2471, file: !2425, line: 460, type: !549)
!2474 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2471, file: !2425, line: 460, type: !2428)
!2475 = !DILocation(line: 0, scope: !2471)
!2476 = !DILocation(line: 462, column: 10, scope: !2471)
!2477 = !DILocation(line: 462, column: 3, scope: !2471)
!2478 = distinct !DISubprogram(name: "fstat", scope: !2425, file: !2425, line: 467, type: !2479, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2481)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!544, !544, !2428}
!2481 = !{!2482, !2483}
!2482 = !DILocalVariable(name: "__fd", arg: 1, scope: !2478, file: !2425, line: 467, type: !544)
!2483 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2478, file: !2425, line: 467, type: !2428)
!2484 = !DILocation(line: 0, scope: !2478)
!2485 = !DILocation(line: 469, column: 10, scope: !2478)
!2486 = !DILocation(line: 469, column: 3, scope: !2478)
!2487 = distinct !DISubprogram(name: "fstatat", scope: !2425, file: !2425, line: 474, type: !2488, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2490)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!544, !544, !549, !2428, !544}
!2490 = !{!2491, !2492, !2493, !2494}
!2491 = !DILocalVariable(name: "__fd", arg: 1, scope: !2487, file: !2425, line: 474, type: !544)
!2492 = !DILocalVariable(name: "__filename", arg: 2, scope: !2487, file: !2425, line: 474, type: !549)
!2493 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2487, file: !2425, line: 474, type: !2428)
!2494 = !DILocalVariable(name: "__flag", arg: 4, scope: !2487, file: !2425, line: 474, type: !544)
!2495 = !DILocation(line: 0, scope: !2487)
!2496 = !DILocation(line: 477, column: 10, scope: !2487)
!2497 = !DILocation(line: 477, column: 3, scope: !2487)
!2498 = distinct !DISubprogram(name: "mknod", scope: !2425, file: !2425, line: 483, type: !2499, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2501)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!544, !549, !2439, !2433}
!2501 = !{!2502, !2503, !2504}
!2502 = !DILocalVariable(name: "__path", arg: 1, scope: !2498, file: !2425, line: 483, type: !549)
!2503 = !DILocalVariable(name: "__mode", arg: 2, scope: !2498, file: !2425, line: 483, type: !2439)
!2504 = !DILocalVariable(name: "__dev", arg: 3, scope: !2498, file: !2425, line: 483, type: !2433)
!2505 = !DILocation(line: 0, scope: !2498)
!2506 = !DILocation(line: 485, column: 10, scope: !2498)
!2507 = !DILocation(line: 485, column: 3, scope: !2498)
!2508 = distinct !DISubprogram(name: "mknodat", scope: !2425, file: !2425, line: 491, type: !2509, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2511)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!544, !544, !549, !2439, !2433}
!2511 = !{!2512, !2513, !2514, !2515}
!2512 = !DILocalVariable(name: "__fd", arg: 1, scope: !2508, file: !2425, line: 491, type: !544)
!2513 = !DILocalVariable(name: "__path", arg: 2, scope: !2508, file: !2425, line: 491, type: !549)
!2514 = !DILocalVariable(name: "__mode", arg: 3, scope: !2508, file: !2425, line: 491, type: !2439)
!2515 = !DILocalVariable(name: "__dev", arg: 4, scope: !2508, file: !2425, line: 491, type: !2433)
!2516 = !DILocation(line: 0, scope: !2508)
!2517 = !DILocation(line: 494, column: 10, scope: !2508)
!2518 = !DILocation(line: 494, column: 3, scope: !2508)
!2519 = distinct !DISubprogram(name: "stat64", scope: !2425, file: !2425, line: 502, type: !2520, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2542)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{!544, !549, !2522}
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2430, line: 119, size: 1152, elements: !2524)
!2524 = !{!2525, !2526, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2538, !2539, !2540, !2541}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2523, file: !2430, line: 121, baseType: !2433, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2523, file: !2430, line: 123, baseType: !2527, size: 64, offset: 64)
!2527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2184, line: 149, baseType: !610)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2523, file: !2430, line: 124, baseType: !2437, size: 64, offset: 128)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2523, file: !2430, line: 125, baseType: !2439, size: 32, offset: 192)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2523, file: !2430, line: 132, baseType: !2441, size: 32, offset: 224)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2523, file: !2430, line: 133, baseType: !2443, size: 32, offset: 256)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2523, file: !2430, line: 135, baseType: !544, size: 32, offset: 288)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2523, file: !2430, line: 136, baseType: !2433, size: 64, offset: 320)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2523, file: !2430, line: 137, baseType: !2183, size: 64, offset: 384)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2523, file: !2430, line: 143, baseType: !2448, size: 64, offset: 448)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2523, file: !2430, line: 144, baseType: !2537, size: 64, offset: 512)
!2537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2184, line: 180, baseType: !612)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2523, file: !2430, line: 152, baseType: !2452, size: 128, offset: 576)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2523, file: !2430, line: 153, baseType: !2452, size: 128, offset: 704)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2523, file: !2430, line: 154, baseType: !2452, size: 128, offset: 832)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2523, file: !2430, line: 164, baseType: !2462, size: 192, offset: 960)
!2542 = !{!2543, !2544}
!2543 = !DILocalVariable(name: "__path", arg: 1, scope: !2519, file: !2425, line: 502, type: !549)
!2544 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2519, file: !2425, line: 502, type: !2522)
!2545 = !DILocation(line: 0, scope: !2519)
!2546 = !DILocation(line: 504, column: 10, scope: !2519)
!2547 = !DILocation(line: 504, column: 3, scope: !2519)
!2548 = distinct !DISubprogram(name: "lstat64", scope: !2425, file: !2425, line: 509, type: !2520, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2549)
!2549 = !{!2550, !2551}
!2550 = !DILocalVariable(name: "__path", arg: 1, scope: !2548, file: !2425, line: 509, type: !549)
!2551 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2548, file: !2425, line: 509, type: !2522)
!2552 = !DILocation(line: 0, scope: !2548)
!2553 = !DILocation(line: 511, column: 10, scope: !2548)
!2554 = !DILocation(line: 511, column: 3, scope: !2548)
!2555 = distinct !DISubprogram(name: "fstat64", scope: !2425, file: !2425, line: 516, type: !2556, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2558)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!544, !544, !2522}
!2558 = !{!2559, !2560}
!2559 = !DILocalVariable(name: "__fd", arg: 1, scope: !2555, file: !2425, line: 516, type: !544)
!2560 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2555, file: !2425, line: 516, type: !2522)
!2561 = !DILocation(line: 0, scope: !2555)
!2562 = !DILocation(line: 518, column: 10, scope: !2555)
!2563 = !DILocation(line: 518, column: 3, scope: !2555)
!2564 = distinct !DISubprogram(name: "fstatat64", scope: !2425, file: !2425, line: 523, type: !2565, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2567)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!544, !544, !549, !2522, !544}
!2567 = !{!2568, !2569, !2570, !2571}
!2568 = !DILocalVariable(name: "__fd", arg: 1, scope: !2564, file: !2425, line: 523, type: !544)
!2569 = !DILocalVariable(name: "__filename", arg: 2, scope: !2564, file: !2425, line: 523, type: !549)
!2570 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2564, file: !2425, line: 523, type: !2522)
!2571 = !DILocalVariable(name: "__flag", arg: 4, scope: !2564, file: !2425, line: 523, type: !544)
!2572 = !DILocation(line: 0, scope: !2564)
!2573 = !DILocation(line: 526, column: 10, scope: !2564)
!2574 = !DILocation(line: 526, column: 3, scope: !2564)
!2575 = distinct !DISubprogram(name: "ipa_reference_get_read_global", scope: !3, file: !3, line: 231, type: !2576, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2578)
!2576 = !DISubroutineType(types: !2577)
!2577 = !{!1217, !552}
!2578 = !{!2579, !2580}
!2579 = !DILocalVariable(name: "fn", arg: 1, scope: !2575, file: !3, line: 231, type: !552)
!2580 = !DILocalVariable(name: "g", scope: !2575, file: !3, line: 233, type: !2029)
!2581 = !DILocation(line: 0, scope: !2575)
!2582 = !DILocation(line: 233, column: 40, scope: !2575)
!2583 = !DILocation(line: 234, column: 7, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 234, column: 7)
!2585 = !DILocation(line: 234, column: 7, scope: !2575)
!2586 = !DILocation(line: 235, column: 15, scope: !2584)
!2587 = !DILocation(line: 235, column: 5, scope: !2584)
!2588 = !DILocation(line: 0, scope: !2584)
!2589 = !DILocation(line: 238, column: 1, scope: !2575)
!2590 = distinct !DISubprogram(name: "get_global_reference_vars_info", scope: !3, file: !3, line: 215, type: !2591, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2593)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!2029, !552}
!2593 = !{!2594, !2595}
!2594 = !DILocalVariable(name: "fn", arg: 1, scope: !2590, file: !3, line: 215, type: !552)
!2595 = !DILocalVariable(name: "info", scope: !2590, file: !3, line: 217, type: !2015)
!2596 = !DILocation(line: 0, scope: !2590)
!2597 = !DILocation(line: 217, column: 36, scope: !2590)
!2598 = !DILocation(line: 219, column: 7, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 219, column: 7)
!2600 = !DILocation(line: 219, column: 7, scope: !2590)
!2601 = !DILocation(line: 220, column: 18, scope: !2599)
!2602 = !DILocation(line: 220, column: 5, scope: !2599)
!2603 = !DILocation(line: 0, scope: !2599)
!2604 = !DILocation(line: 224, column: 1, scope: !2590)
!2605 = distinct !DISubprogram(name: "ipa_reference_get_written_global", scope: !3, file: !3, line: 246, type: !2576, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2606)
!2606 = !{!2607, !2608}
!2607 = !DILocalVariable(name: "fn", arg: 1, scope: !2605, file: !3, line: 246, type: !552)
!2608 = !DILocalVariable(name: "g", scope: !2605, file: !3, line: 248, type: !2029)
!2609 = !DILocation(line: 0, scope: !2605)
!2610 = !DILocation(line: 248, column: 40, scope: !2605)
!2611 = !DILocation(line: 249, column: 7, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2605, file: !3, line: 249, column: 7)
!2613 = !DILocation(line: 249, column: 7, scope: !2605)
!2614 = !DILocation(line: 250, column: 15, scope: !2612)
!2615 = !DILocation(line: 250, column: 5, scope: !2612)
!2616 = !DILocation(line: 0, scope: !2612)
!2617 = !DILocation(line: 253, column: 1, scope: !2605)
!2618 = distinct !DISubprogram(name: "ipa_reference_get_not_read_global", scope: !3, file: !3, line: 260, type: !2576, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2619)
!2619 = !{!2620, !2621}
!2620 = !DILocalVariable(name: "fn", arg: 1, scope: !2618, file: !3, line: 260, type: !552)
!2621 = !DILocalVariable(name: "g", scope: !2618, file: !3, line: 262, type: !2029)
!2622 = !DILocation(line: 0, scope: !2618)
!2623 = !DILocation(line: 262, column: 40, scope: !2618)
!2624 = !DILocation(line: 263, column: 7, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2618, file: !3, line: 263, column: 7)
!2626 = !DILocation(line: 263, column: 7, scope: !2618)
!2627 = !DILocation(line: 264, column: 15, scope: !2625)
!2628 = !DILocation(line: 264, column: 5, scope: !2625)
!2629 = !DILocation(line: 0, scope: !2625)
!2630 = !DILocation(line: 267, column: 1, scope: !2618)
!2631 = distinct !DISubprogram(name: "ipa_reference_get_not_written_global", scope: !3, file: !3, line: 275, type: !2576, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2632)
!2632 = !{!2633, !2634}
!2633 = !DILocalVariable(name: "fn", arg: 1, scope: !2631, file: !3, line: 275, type: !552)
!2634 = !DILocalVariable(name: "g", scope: !2631, file: !3, line: 277, type: !2029)
!2635 = !DILocation(line: 0, scope: !2631)
!2636 = !DILocation(line: 277, column: 40, scope: !2631)
!2637 = !DILocation(line: 278, column: 7, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2631, file: !3, line: 278, column: 7)
!2639 = !DILocation(line: 278, column: 7, scope: !2631)
!2640 = !DILocation(line: 279, column: 15, scope: !2638)
!2641 = !DILocation(line: 279, column: 5, scope: !2638)
!2642 = !DILocation(line: 0, scope: !2638)
!2643 = !DILocation(line: 282, column: 1, scope: !2631)
!2644 = distinct !DISubprogram(name: "gate_reference", scope: !3, file: !3, line: 1488, type: !1791, scopeLine: 1489, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2109)
!2645 = !DILocation(line: 1490, column: 11, scope: !2644)
!2646 = !DILocation(line: 1492, column: 4, scope: !2644)
!2647 = !DILocation(line: 1492, column: 9, scope: !2644)
!2648 = !DILocation(line: 1492, column: 20, scope: !2644)
!2649 = !DILocation(line: 1492, column: 23, scope: !2644)
!2650 = !DILocation(line: 1490, column: 3, scope: !2644)
!2651 = distinct !DISubprogram(name: "propagate", scope: !3, file: !3, line: 1206, type: !1795, scopeLine: 1207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2652)
!2652 = !{!2653, !2654, !2655, !2656, !2657, !2658, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2670, !2672, !2673, !2675, !2681, !2682, !2683, !2684, !2692, !2693, !2695, !2696, !2700, !2701}
!2653 = !DILocalVariable(name: "node", scope: !2651, file: !3, line: 1208, type: !552)
!2654 = !DILocalVariable(name: "w", scope: !2651, file: !3, line: 1209, type: !552)
!2655 = !DILocalVariable(name: "order", scope: !2651, file: !3, line: 1210, type: !551)
!2656 = !DILocalVariable(name: "order_pos", scope: !2651, file: !3, line: 1212, type: !544)
!2657 = !DILocalVariable(name: "i", scope: !2651, file: !3, line: 1213, type: !544)
!2658 = !DILocalVariable(name: "node_info", scope: !2659, file: !3, line: 1229, type: !2015)
!2659 = distinct !DILexicalBlock(scope: !2660, file: !3, line: 1228, column: 5)
!2660 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 1227, column: 3)
!2661 = distinct !DILexicalBlock(scope: !2651, file: !3, line: 1227, column: 3)
!2662 = !DILocalVariable(name: "node_g", scope: !2659, file: !3, line: 1230, type: !2029)
!2663 = !DILocalVariable(name: "node_l", scope: !2659, file: !3, line: 1232, type: !2020)
!2664 = !DILocalVariable(name: "e", scope: !2659, file: !3, line: 1233, type: !1730)
!2665 = !DILocalVariable(name: "read_all", scope: !2659, file: !3, line: 1235, type: !543)
!2666 = !DILocalVariable(name: "write_all", scope: !2659, file: !3, line: 1236, type: !543)
!2667 = !DILocalVariable(name: "w_info", scope: !2659, file: !3, line: 1237, type: !1993)
!2668 = !DILocalVariable(name: "w_l", scope: !2669, file: !3, line: 1269, type: !2020)
!2669 = distinct !DILexicalBlock(scope: !2659, file: !3, line: 1268, column: 2)
!2670 = !DILocalVariable(name: "w_ri", scope: !2671, file: !3, line: 1311, type: !2015)
!2671 = distinct !DILexicalBlock(scope: !2659, file: !3, line: 1310, column: 2)
!2672 = !DILocalVariable(name: "w_l", scope: !2671, file: !3, line: 1313, type: !2020)
!2673 = !DILocalVariable(name: "w_ri", scope: !2674, file: !3, line: 1336, type: !2015)
!2674 = distinct !DILexicalBlock(scope: !2659, file: !3, line: 1335, column: 2)
!2675 = !DILocalVariable(name: "node_info", scope: !2676, file: !3, line: 1353, type: !2015)
!2676 = distinct !DILexicalBlock(scope: !2677, file: !3, line: 1352, column: 2)
!2677 = distinct !DILexicalBlock(scope: !2678, file: !3, line: 1351, column: 7)
!2678 = distinct !DILexicalBlock(scope: !2679, file: !3, line: 1351, column: 7)
!2679 = distinct !DILexicalBlock(scope: !2680, file: !3, line: 1350, column: 5)
!2680 = distinct !DILexicalBlock(scope: !2651, file: !3, line: 1349, column: 7)
!2681 = !DILocalVariable(name: "node_g", scope: !2676, file: !3, line: 1354, type: !2029)
!2682 = !DILocalVariable(name: "node_l", scope: !2676, file: !3, line: 1355, type: !2020)
!2683 = !DILocalVariable(name: "index", scope: !2676, file: !3, line: 1356, type: !7)
!2684 = !DILocalVariable(name: "bi", scope: !2676, file: !3, line: 1357, type: !2685)
!2685 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_iterator", file: !1220, line: 218, baseType: !2686)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1220, line: 203, size: 256, elements: !2687)
!2687 = !{!2688, !2689, !2690, !2691}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "elt1", scope: !2686, file: !1220, line: 206, baseType: !1223, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "elt2", scope: !2686, file: !1220, line: 209, baseType: !1223, size: 64, offset: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "word_no", scope: !2686, file: !1220, line: 212, baseType: !7, size: 32, offset: 128)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2686, file: !1220, line: 217, baseType: !1233, size: 64, offset: 192)
!2692 = !DILocalVariable(name: "w_info", scope: !2676, file: !3, line: 1358, type: !1993)
!2693 = !DILocalVariable(name: "w_ri", scope: !2694, file: !3, line: 1388, type: !2015)
!2694 = distinct !DILexicalBlock(scope: !2676, file: !3, line: 1387, column: 6)
!2695 = !DILocalVariable(name: "w_l", scope: !2694, file: !3, line: 1390, type: !2020)
!2696 = !DILocalVariable(name: "node_info", scope: !2697, file: !3, line: 1440, type: !2015)
!2697 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 1439, column: 5)
!2698 = distinct !DILexicalBlock(scope: !2699, file: !3, line: 1438, column: 3)
!2699 = distinct !DILexicalBlock(scope: !2651, file: !3, line: 1438, column: 3)
!2700 = !DILocalVariable(name: "node_g", scope: !2697, file: !3, line: 1441, type: !2029)
!2701 = !DILocalVariable(name: "node_info", scope: !2702, file: !3, line: 1467, type: !2015)
!2702 = distinct !DILexicalBlock(scope: !2703, file: !3, line: 1466, column: 5)
!2703 = distinct !DILexicalBlock(scope: !2704, file: !3, line: 1465, column: 3)
!2704 = distinct !DILexicalBlock(scope: !2651, file: !3, line: 1465, column: 3)
!2705 = !DILocation(line: 1211, column: 5, scope: !2651)
!2706 = !DILocation(line: 0, scope: !2651)
!2707 = !DILocation(line: 1212, column: 19, scope: !2651)
!2708 = !DILocation(line: 1215, column: 42, scope: !2651)
!2709 = !DILocation(line: 1215, column: 3, scope: !2651)
!2710 = !DILocation(line: 1216, column: 7, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2651, file: !3, line: 1216, column: 7)
!2712 = !DILocation(line: 1216, column: 7, scope: !2651)
!2713 = !DILocation(line: 1217, column: 5, scope: !2711)
!2714 = !DILocation(line: 1223, column: 15, scope: !2651)
!2715 = !DILocation(line: 1224, column: 7, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2651, file: !3, line: 1224, column: 7)
!2717 = !DILocation(line: 1224, column: 7, scope: !2651)
!2718 = !DILocation(line: 1225, column: 5, scope: !2716)
!2719 = !DILocation(line: 1227, column: 8, scope: !2661)
!2720 = !DILocation(line: 0, scope: !2661)
!2721 = !DILocation(line: 1227, column: 17, scope: !2660)
!2722 = !DILocation(line: 1227, column: 3, scope: !2661)
!2723 = !DILocation(line: 1231, column: 2, scope: !2659)
!2724 = !DILocation(line: 0, scope: !2659)
!2725 = !DILocation(line: 1235, column: 7, scope: !2659)
!2726 = !DILocation(line: 1236, column: 7, scope: !2659)
!2727 = !DILocation(line: 1239, column: 14, scope: !2659)
!2728 = !DILocation(line: 1240, column: 19, scope: !2659)
!2729 = !DILocation(line: 1241, column: 12, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2659, file: !3, line: 1241, column: 11)
!2731 = !DILocation(line: 1241, column: 11, scope: !2659)
!2732 = !DILocation(line: 1243, column: 22, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2730, file: !3, line: 1242, column: 2)
!2734 = !DILocation(line: 1243, column: 4, scope: !2733)
!2735 = !DILocation(line: 1244, column: 17, scope: !2733)
!2736 = !DILocation(line: 1244, column: 4, scope: !2733)
!2737 = !DILocation(line: 1245, column: 4, scope: !2733)
!2738 = !DILocation(line: 1246, column: 2, scope: !2733)
!2739 = !DILocation(line: 1248, column: 7, scope: !2659)
!2740 = !DILocation(line: 1249, column: 27, scope: !2659)
!2741 = !DILocation(line: 1251, column: 26, scope: !2659)
!2742 = !DILocation(line: 1251, column: 16, scope: !2659)
!2743 = !DILocation(line: 1252, column: 27, scope: !2659)
!2744 = !DILocation(line: 1252, column: 17, scope: !2659)
!2745 = !DILocation(line: 1255, column: 11, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2659, file: !3, line: 1255, column: 11)
!2747 = !DILocation(line: 1255, column: 52, scope: !2746)
!2748 = !DILocation(line: 1255, column: 11, scope: !2659)
!2749 = !DILocation(line: 1256, column: 41, scope: !2746)
!2750 = !DILocation(line: 1256, column: 9, scope: !2746)
!2751 = !DILocation(line: 1258, column: 22, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2659, file: !3, line: 1258, column: 7)
!2753 = !DILocation(line: 1258, column: 12, scope: !2752)
!2754 = !DILocation(line: 0, scope: !2752)
!2755 = !DILocation(line: 1258, column: 7, scope: !2752)
!2756 = !DILocation(line: 1259, column: 51, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2758, file: !3, line: 1259, column: 13)
!2758 = distinct !DILexicalBlock(scope: !2752, file: !3, line: 1258, column: 7)
!2759 = !DILocation(line: 1259, column: 13, scope: !2757)
!2760 = !DILocation(line: 1259, column: 59, scope: !2757)
!2761 = !DILocation(line: 1259, column: 13, scope: !2758)
!2762 = !DILocation(line: 1260, column: 40, scope: !2757)
!2763 = !DILocation(line: 1260, column: 48, scope: !2757)
!2764 = !DILocation(line: 1260, column: 11, scope: !2757)
!2765 = !DILocation(line: 1258, column: 41, scope: !2758)
!2766 = !DILocation(line: 1258, column: 7, scope: !2758)
!2767 = distinct !{!2767, !2755, !2768}
!2768 = !DILocation(line: 1260, column: 75, scope: !2752)
!2769 = !DILocation(line: 1267, column: 7, scope: !2659)
!2770 = !DILocation(line: 1270, column: 6, scope: !2669)
!2771 = !DILocation(line: 1270, column: 35, scope: !2669)
!2772 = !DILocation(line: 0, scope: !2669)
!2773 = !DILocation(line: 1273, column: 8, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2669, file: !3, line: 1273, column: 8)
!2775 = !DILocation(line: 1273, column: 46, scope: !2774)
!2776 = !DILocation(line: 1273, column: 8, scope: !2669)
!2777 = !DILocation(line: 1274, column: 35, scope: !2774)
!2778 = !DILocation(line: 1274, column: 6, scope: !2774)
!2779 = !DILocation(line: 1276, column: 16, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2669, file: !3, line: 1276, column: 4)
!2781 = !DILocation(line: 1276, column: 9, scope: !2780)
!2782 = !DILocation(line: 0, scope: !2780)
!2783 = !DILocation(line: 1276, column: 4, scope: !2780)
!2784 = !DILocation(line: 1277, column: 48, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2786, file: !3, line: 1277, column: 10)
!2786 = distinct !DILexicalBlock(scope: !2780, file: !3, line: 1276, column: 4)
!2787 = !DILocation(line: 1277, column: 10, scope: !2785)
!2788 = !DILocation(line: 1277, column: 56, scope: !2785)
!2789 = !DILocation(line: 1277, column: 10, scope: !2786)
!2790 = !DILocation(line: 1278, column: 37, scope: !2785)
!2791 = !DILocation(line: 1278, column: 45, scope: !2785)
!2792 = !DILocation(line: 1278, column: 8, scope: !2785)
!2793 = !DILocation(line: 1276, column: 35, scope: !2786)
!2794 = !DILocation(line: 1276, column: 4, scope: !2786)
!2795 = distinct !{!2795, !2783, !2796}
!2796 = !DILocation(line: 1278, column: 72, scope: !2780)
!2797 = !DILocation(line: 1280, column: 21, scope: !2669)
!2798 = !DILocation(line: 1280, column: 13, scope: !2669)
!2799 = !DILocation(line: 1281, column: 22, scope: !2669)
!2800 = !DILocation(line: 1281, column: 14, scope: !2669)
!2801 = distinct !{!2801, !2769, !2802}
!2802 = !DILocation(line: 1285, column: 2, scope: !2659)
!2803 = !DILocation(line: 1289, column: 11, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2659, file: !3, line: 1289, column: 11)
!2805 = !DILocation(line: 1289, column: 11, scope: !2659)
!2806 = !DILocation(line: 1290, column: 25, scope: !2804)
!2807 = !DILocation(line: 1290, column: 23, scope: !2804)
!2808 = !DILocation(line: 1290, column: 2, scope: !2804)
!2809 = !DILocation(line: 1293, column: 27, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2804, file: !3, line: 1292, column: 2)
!2811 = !DILocation(line: 1293, column: 12, scope: !2810)
!2812 = !DILocation(line: 1293, column: 25, scope: !2810)
!2813 = !DILocation(line: 1295, column: 18, scope: !2810)
!2814 = !DILocation(line: 1294, column: 4, scope: !2810)
!2815 = !DILocation(line: 1297, column: 11, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2659, file: !3, line: 1297, column: 11)
!2817 = !DILocation(line: 1297, column: 11, scope: !2659)
!2818 = !DILocation(line: 1298, column: 28, scope: !2816)
!2819 = !DILocation(line: 1298, column: 10, scope: !2816)
!2820 = !DILocation(line: 1298, column: 26, scope: !2816)
!2821 = !DILocation(line: 0, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 1322, column: 8)
!2823 = !DILocation(line: 1298, column: 2, scope: !2816)
!2824 = !DILocation(line: 1301, column: 30, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2816, file: !3, line: 1300, column: 2)
!2826 = !DILocation(line: 1301, column: 12, scope: !2825)
!2827 = !DILocation(line: 1301, column: 28, scope: !2825)
!2828 = !DILocation(line: 1303, column: 18, scope: !2825)
!2829 = !DILocation(line: 1302, column: 4, scope: !2825)
!2830 = !DILocation(line: 1306, column: 7, scope: !2659)
!2831 = !DILocation(line: 0, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 1319, column: 8)
!2833 = !DILocation(line: 1309, column: 7, scope: !2659)
!2834 = !DILocation(line: 1312, column: 6, scope: !2671)
!2835 = !DILocation(line: 0, scope: !2671)
!2836 = !DILocation(line: 1313, column: 48, scope: !2671)
!2837 = !DILocation(line: 1319, column: 9, scope: !2832)
!2838 = !DILocation(line: 1319, column: 8, scope: !2671)
!2839 = !DILocation(line: 1320, column: 31, scope: !2832)
!2840 = !DILocation(line: 1321, column: 14, scope: !2832)
!2841 = !DILocation(line: 1320, column: 6, scope: !2832)
!2842 = !DILocation(line: 1322, column: 9, scope: !2822)
!2843 = !DILocation(line: 1322, column: 8, scope: !2671)
!2844 = !DILocation(line: 1323, column: 31, scope: !2822)
!2845 = !DILocation(line: 1324, column: 14, scope: !2822)
!2846 = !DILocation(line: 1323, column: 6, scope: !2822)
!2847 = !DILocation(line: 1325, column: 4, scope: !2671)
!2848 = distinct !{!2848, !2833, !2849}
!2849 = !DILocation(line: 1328, column: 2, scope: !2659)
!2850 = !DILocation(line: 1331, column: 25, scope: !2659)
!2851 = !DILocation(line: 1334, column: 7, scope: !2659)
!2852 = !DILocation(line: 1337, column: 6, scope: !2674)
!2853 = !DILocation(line: 0, scope: !2674)
!2854 = !DILocation(line: 1339, column: 4, scope: !2674)
!2855 = !DILocation(line: 1340, column: 26, scope: !2674)
!2856 = !DILocation(line: 1340, column: 24, scope: !2674)
!2857 = !DILocation(line: 1341, column: 61, scope: !2674)
!2858 = !DILocation(line: 1341, column: 33, scope: !2674)
!2859 = !DILocation(line: 1341, column: 10, scope: !2674)
!2860 = !DILocation(line: 1341, column: 18, scope: !2674)
!2861 = !DILocation(line: 1341, column: 31, scope: !2674)
!2862 = !DILocation(line: 1342, column: 64, scope: !2674)
!2863 = !DILocation(line: 1342, column: 36, scope: !2674)
!2864 = !DILocation(line: 1342, column: 10, scope: !2674)
!2865 = !DILocation(line: 1342, column: 18, scope: !2674)
!2866 = !DILocation(line: 1342, column: 34, scope: !2674)
!2867 = distinct !{!2867, !2851, !2868}
!2868 = !DILocation(line: 1346, column: 2, scope: !2659)
!2869 = !DILocation(line: 1347, column: 5, scope: !2660)
!2870 = !DILocation(line: 1227, column: 31, scope: !2660)
!2871 = !DILocation(line: 1227, column: 3, scope: !2660)
!2872 = distinct !{!2872, !2722, !2873}
!2873 = !DILocation(line: 1347, column: 5, scope: !2661)
!2874 = !DILocation(line: 1349, column: 7, scope: !2680)
!2875 = !DILocation(line: 1349, column: 7, scope: !2651)
!2876 = !DILocation(line: 0, scope: !2676)
!2877 = !DILocation(line: 1351, column: 7, scope: !2678)
!2878 = !DILocation(line: 0, scope: !2678)
!2879 = !DILocation(line: 1351, column: 21, scope: !2677)
!2880 = !DILocation(line: 1356, column: 4, scope: !2676)
!2881 = !DILocation(line: 1357, column: 4, scope: !2676)
!2882 = !DILocation(line: 1360, column: 11, scope: !2676)
!2883 = !DILocation(line: 1361, column: 16, scope: !2676)
!2884 = !DILocation(line: 1362, column: 24, scope: !2676)
!2885 = !DILocation(line: 1363, column: 24, scope: !2676)
!2886 = !DILocation(line: 1364, column: 13, scope: !2676)
!2887 = !DILocation(line: 1366, column: 6, scope: !2676)
!2888 = !DILocation(line: 1366, column: 37, scope: !2676)
!2889 = !DILocation(line: 1364, column: 4, scope: !2676)
!2890 = !DILocation(line: 1367, column: 13, scope: !2676)
!2891 = !DILocation(line: 1367, column: 4, scope: !2676)
!2892 = !DILocation(line: 1368, column: 16, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2676, file: !3, line: 1368, column: 8)
!2894 = !DILocation(line: 1368, column: 8, scope: !2893)
!2895 = !DILocation(line: 1368, column: 8, scope: !2676)
!2896 = !DILocation(line: 1369, column: 6, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2893, file: !3, line: 1369, column: 6)
!2898 = !DILocation(line: 1369, column: 6, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2897, file: !3, line: 1369, column: 6)
!2900 = !DILocation(line: 1372, column: 12, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2899, file: !3, line: 1371, column: 8)
!2902 = !DILocation(line: 1373, column: 22, scope: !2901)
!2903 = !DILocation(line: 1373, column: 5, scope: !2901)
!2904 = !DILocation(line: 1372, column: 3, scope: !2901)
!2905 = distinct !{!2905, !2896, !2906}
!2906 = !DILocation(line: 1374, column: 8, scope: !2897)
!2907 = !DILocation(line: 1375, column: 13, scope: !2676)
!2908 = !DILocation(line: 1375, column: 4, scope: !2676)
!2909 = !DILocation(line: 1376, column: 16, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2676, file: !3, line: 1376, column: 8)
!2911 = !DILocation(line: 1376, column: 8, scope: !2910)
!2912 = !DILocation(line: 1376, column: 8, scope: !2676)
!2913 = !DILocation(line: 1377, column: 6, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2910, file: !3, line: 1377, column: 6)
!2915 = !DILocation(line: 1377, column: 6, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2914, file: !3, line: 1377, column: 6)
!2917 = !DILocation(line: 1380, column: 11, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2916, file: !3, line: 1379, column: 8)
!2919 = !DILocation(line: 1381, column: 21, scope: !2918)
!2920 = !DILocation(line: 1381, column: 4, scope: !2918)
!2921 = !DILocation(line: 1380, column: 3, scope: !2918)
!2922 = distinct !{!2922, !2913, !2923}
!2923 = !DILocation(line: 1382, column: 8, scope: !2914)
!2924 = !DILocation(line: 1386, column: 4, scope: !2676)
!2925 = !DILocation(line: 1389, column: 3, scope: !2694)
!2926 = !DILocation(line: 0, scope: !2694)
!2927 = !DILocation(line: 1390, column: 52, scope: !2694)
!2928 = !DILocation(line: 1391, column: 17, scope: !2694)
!2929 = !DILocation(line: 1392, column: 10, scope: !2694)
!2930 = !DILocation(line: 1392, column: 35, scope: !2694)
!2931 = !DILocation(line: 1391, column: 8, scope: !2694)
!2932 = !DILocation(line: 1393, column: 17, scope: !2694)
!2933 = !DILocation(line: 1393, column: 8, scope: !2694)
!2934 = !DILocation(line: 1394, column: 17, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 1394, column: 12)
!2936 = !DILocation(line: 1394, column: 12, scope: !2935)
!2937 = !DILocation(line: 1394, column: 12, scope: !2694)
!2938 = !DILocation(line: 1395, column: 3, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2935, file: !3, line: 1395, column: 3)
!2940 = !DILocation(line: 1395, column: 3, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2939, file: !3, line: 1395, column: 3)
!2942 = !DILocation(line: 1398, column: 16, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2941, file: !3, line: 1397, column: 5)
!2944 = !DILocation(line: 1399, column: 26, scope: !2943)
!2945 = !DILocation(line: 1399, column: 9, scope: !2943)
!2946 = !DILocation(line: 1398, column: 7, scope: !2943)
!2947 = distinct !{!2947, !2938, !2948}
!2948 = !DILocation(line: 1400, column: 5, scope: !2939)
!2949 = !DILocation(line: 1402, column: 17, scope: !2694)
!2950 = !DILocation(line: 1402, column: 8, scope: !2694)
!2951 = !DILocation(line: 1403, column: 17, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 1403, column: 12)
!2953 = !DILocation(line: 1403, column: 12, scope: !2952)
!2954 = !DILocation(line: 1403, column: 12, scope: !2694)
!2955 = !DILocation(line: 1404, column: 3, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2952, file: !3, line: 1404, column: 3)
!2957 = !DILocation(line: 1404, column: 3, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2956, file: !3, line: 1404, column: 3)
!2959 = !DILocation(line: 1407, column: 16, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2958, file: !3, line: 1406, column: 5)
!2961 = !DILocation(line: 1408, column: 26, scope: !2960)
!2962 = !DILocation(line: 1408, column: 9, scope: !2960)
!2963 = !DILocation(line: 1407, column: 7, scope: !2960)
!2964 = distinct !{!2964, !2955, !2965}
!2965 = !DILocation(line: 1409, column: 5, scope: !2956)
!2966 = distinct !{!2966, !2924, !2967}
!2967 = !DILocation(line: 1413, column: 6, scope: !2676)
!2968 = !DILocation(line: 1414, column: 13, scope: !2676)
!2969 = !DILocation(line: 1414, column: 4, scope: !2676)
!2970 = !DILocation(line: 1415, column: 16, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2676, file: !3, line: 1415, column: 8)
!2972 = !DILocation(line: 1415, column: 32, scope: !2971)
!2973 = !DILocation(line: 1415, column: 29, scope: !2971)
!2974 = !DILocation(line: 1415, column: 8, scope: !2676)
!2975 = !DILocation(line: 1416, column: 15, scope: !2971)
!2976 = !DILocation(line: 1416, column: 6, scope: !2971)
!2977 = !DILocation(line: 1418, column: 6, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2971, file: !3, line: 1418, column: 6)
!2979 = !DILocation(line: 1418, column: 6, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2978, file: !3, line: 1418, column: 6)
!2981 = !DILocation(line: 1421, column: 19, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2980, file: !3, line: 1420, column: 8)
!2983 = !DILocation(line: 1422, column: 29, scope: !2982)
!2984 = !DILocation(line: 1422, column: 12, scope: !2982)
!2985 = !DILocation(line: 1421, column: 10, scope: !2982)
!2986 = distinct !{!2986, !2977, !2987}
!2987 = !DILocation(line: 1423, column: 8, scope: !2978)
!2988 = !DILocation(line: 1424, column: 13, scope: !2676)
!2989 = !DILocation(line: 1424, column: 4, scope: !2676)
!2990 = !DILocation(line: 1425, column: 16, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2676, file: !3, line: 1425, column: 8)
!2992 = !DILocation(line: 1425, column: 35, scope: !2991)
!2993 = !DILocation(line: 1425, column: 32, scope: !2991)
!2994 = !DILocation(line: 1425, column: 8, scope: !2676)
!2995 = !DILocation(line: 1426, column: 15, scope: !2991)
!2996 = !DILocation(line: 1426, column: 6, scope: !2991)
!2997 = !DILocation(line: 1428, column: 6, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2991, file: !3, line: 1428, column: 6)
!2999 = !DILocation(line: 1428, column: 6, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !2998, file: !3, line: 1428, column: 6)
!3001 = !DILocation(line: 1431, column: 12, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !3000, file: !3, line: 1430, column: 8)
!3003 = !DILocation(line: 1432, column: 22, scope: !3002)
!3004 = !DILocation(line: 1432, column: 5, scope: !3002)
!3005 = !DILocation(line: 1431, column: 3, scope: !3002)
!3006 = distinct !{!3006, !2997, !3007}
!3007 = !DILocation(line: 1433, column: 8, scope: !2998)
!3008 = !DILocation(line: 1434, column: 2, scope: !2677)
!3009 = !DILocation(line: 1351, column: 35, scope: !2677)
!3010 = !DILocation(line: 1351, column: 7, scope: !2677)
!3011 = distinct !{!3011, !2877, !3012}
!3012 = !DILocation(line: 1434, column: 2, scope: !2678)
!3013 = !DILocation(line: 1438, column: 8, scope: !2699)
!3014 = !DILocation(line: 0, scope: !2699)
!3015 = !DILocation(line: 1438, column: 17, scope: !2698)
!3016 = !DILocation(line: 1438, column: 3, scope: !2699)
!3017 = !DILocation(line: 1442, column: 14, scope: !2697)
!3018 = !DILocation(line: 1443, column: 19, scope: !2697)
!3019 = !DILocation(line: 0, scope: !2697)
!3020 = !DILocation(line: 1444, column: 27, scope: !2697)
!3021 = !DILocation(line: 1448, column: 34, scope: !2697)
!3022 = !DILocation(line: 1448, column: 15, scope: !2697)
!3023 = !DILocation(line: 1448, column: 32, scope: !2697)
!3024 = !DILocation(line: 1449, column: 37, scope: !2697)
!3025 = !DILocation(line: 1449, column: 15, scope: !2697)
!3026 = !DILocation(line: 1449, column: 35, scope: !2697)
!3027 = !DILocation(line: 1451, column: 19, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !2697, file: !3, line: 1451, column: 11)
!3029 = !DILocation(line: 1451, column: 35, scope: !3028)
!3030 = !DILocation(line: 1451, column: 32, scope: !3028)
!3031 = !DILocation(line: 1451, column: 11, scope: !2697)
!3032 = !DILocation(line: 1452, column: 28, scope: !3028)
!3033 = !DILocation(line: 1452, column: 2, scope: !3028)
!3034 = !DILocation(line: 1457, column: 7, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !2697, file: !3, line: 1456, column: 11)
!3036 = !DILocation(line: 1456, column: 19, scope: !3035)
!3037 = !DILocation(line: 1457, column: 4, scope: !3035)
!3038 = !DILocation(line: 1456, column: 11, scope: !2697)
!3039 = !DILocation(line: 1458, column: 28, scope: !3035)
!3040 = !DILocation(line: 1458, column: 2, scope: !3035)
!3041 = !DILocation(line: 1438, column: 31, scope: !2698)
!3042 = !DILocation(line: 1438, column: 3, scope: !2698)
!3043 = distinct !{!3043, !3016, !3044}
!3044 = !DILocation(line: 1461, column: 4, scope: !2699)
!3045 = !DILocation(line: 1463, column: 3, scope: !2651)
!3046 = !DILocation(line: 1465, column: 8, scope: !2704)
!3047 = !DILocation(line: 0, scope: !2704)
!3048 = !DILocation(line: 1465, column: 3, scope: !2704)
!3049 = !DILocation(line: 1468, column: 19, scope: !2702)
!3050 = !DILocation(line: 0, scope: !2702)
!3051 = !DILocation(line: 1471, column: 17, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !2702, file: !3, line: 1471, column: 11)
!3053 = !DILocation(line: 1471, column: 11, scope: !3052)
!3054 = !DILocation(line: 1471, column: 11, scope: !2702)
!3055 = !DILocation(line: 1473, column: 4, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3052, file: !3, line: 1472, column: 2)
!3057 = !DILocation(line: 1474, column: 14, scope: !3056)
!3058 = !DILocation(line: 1475, column: 2, scope: !3056)
!3059 = !DILocation(line: 1477, column: 11, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !2702, file: !3, line: 1477, column: 11)
!3061 = !DILocation(line: 1477, column: 52, scope: !3060)
!3062 = !DILocation(line: 1477, column: 11, scope: !2702)
!3063 = !DILocation(line: 1478, column: 2, scope: !3060)
!3064 = !DILocation(line: 1479, column: 16, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3060, file: !3, line: 1479, column: 16)
!3066 = !DILocation(line: 1479, column: 16, scope: !3060)
!3067 = !DILocation(line: 1480, column: 2, scope: !3065)
!3068 = !DILocation(line: 1465, column: 48, scope: !2703)
!3069 = !DILocation(line: 1465, column: 3, scope: !2703)
!3070 = distinct !{!3070, !3048, !3071}
!3071 = !DILocation(line: 1481, column: 5, scope: !2704)
!3072 = !DILocation(line: 1482, column: 3, scope: !2651)
!3073 = !DILocation(line: 1483, column: 3, scope: !2651)
!3074 = distinct !DISubprogram(name: "generate_summary", scope: !3, file: !3, line: 877, type: !1810, scopeLine: 878, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3075)
!3075 = !{!3076, !3077, !3078, !3079, !3080, !3081, !3082, !3086, !3090, !3095, !3101, !3102}
!3076 = !DILocalVariable(name: "node", scope: !3074, file: !3, line: 879, type: !552)
!3077 = !DILocalVariable(name: "vnode", scope: !3074, file: !3, line: 880, type: !1854)
!3078 = !DILocalVariable(name: "index", scope: !3074, file: !3, line: 881, type: !7)
!3079 = !DILocalVariable(name: "bi", scope: !3074, file: !3, line: 882, type: !2685)
!3080 = !DILocalVariable(name: "module_statics_readonly", scope: !3074, file: !3, line: 883, type: !1217)
!3081 = !DILocalVariable(name: "bm_temp", scope: !3074, file: !3, line: 884, type: !1217)
!3082 = !DILocalVariable(name: "var", scope: !3083, file: !3, line: 929, type: !556)
!3083 = distinct !DILexicalBlock(scope: !3084, file: !3, line: 928, column: 5)
!3084 = distinct !DILexicalBlock(scope: !3085, file: !3, line: 927, column: 3)
!3085 = distinct !DILexicalBlock(scope: !3074, file: !3, line: 927, column: 3)
!3086 = !DILocalVariable(name: "var", scope: !3087, file: !3, line: 944, type: !556)
!3087 = distinct !DILexicalBlock(scope: !3088, file: !3, line: 943, column: 5)
!3088 = distinct !DILexicalBlock(scope: !3089, file: !3, line: 942, column: 3)
!3089 = distinct !DILexicalBlock(scope: !3074, file: !3, line: 942, column: 3)
!3090 = !DILocalVariable(name: "l", scope: !3091, file: !3, line: 973, type: !2020)
!3091 = distinct !DILexicalBlock(scope: !3092, file: !3, line: 972, column: 7)
!3092 = distinct !DILexicalBlock(scope: !3093, file: !3, line: 971, column: 9)
!3093 = distinct !DILexicalBlock(scope: !3094, file: !3, line: 970, column: 3)
!3094 = distinct !DILexicalBlock(scope: !3074, file: !3, line: 970, column: 3)
!3095 = !DILocalVariable(name: "l", scope: !3096, file: !3, line: 995, type: !2020)
!3096 = distinct !DILexicalBlock(scope: !3097, file: !3, line: 994, column: 2)
!3097 = distinct !DILexicalBlock(scope: !3098, file: !3, line: 993, column: 11)
!3098 = distinct !DILexicalBlock(scope: !3099, file: !3, line: 992, column: 5)
!3099 = distinct !DILexicalBlock(scope: !3100, file: !3, line: 992, column: 5)
!3100 = distinct !DILexicalBlock(scope: !3074, file: !3, line: 991, column: 7)
!3101 = !DILocalVariable(name: "index", scope: !3096, file: !3, line: 996, type: !7)
!3102 = !DILocalVariable(name: "bi", scope: !3096, file: !3, line: 997, type: !2685)
!3103 = !DILocation(line: 881, column: 3, scope: !3074)
!3104 = !DILocation(line: 882, column: 3, scope: !3074)
!3105 = !DILocation(line: 886, column: 3, scope: !3074)
!3106 = !DILocation(line: 887, column: 29, scope: !3074)
!3107 = !DILocation(line: 0, scope: !3074)
!3108 = !DILocation(line: 888, column: 13, scope: !3074)
!3109 = !DILocation(line: 891, column: 3, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3074, file: !3, line: 891, column: 3)
!3111 = !DILocation(line: 0, scope: !3110)
!3112 = !DILocation(line: 892, column: 5, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3110, file: !3, line: 891, column: 3)
!3114 = !DILocation(line: 891, column: 3, scope: !3113)
!3115 = distinct !{!3115, !3109, !3116}
!3116 = !DILocation(line: 892, column: 28, scope: !3110)
!3117 = !DILocation(line: 905, column: 8, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3074, file: !3, line: 905, column: 3)
!3119 = !DILocation(line: 0, scope: !3118)
!3120 = !DILocation(line: 905, column: 3, scope: !3118)
!3121 = !DILocation(line: 906, column: 9, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3123, file: !3, line: 906, column: 9)
!3123 = distinct !DILexicalBlock(scope: !3118, file: !3, line: 905, column: 3)
!3124 = !DILocation(line: 906, column: 50, scope: !3122)
!3125 = !DILocation(line: 906, column: 9, scope: !3123)
!3126 = !DILocation(line: 907, column: 7, scope: !3122)
!3127 = !DILocation(line: 905, column: 48, scope: !3123)
!3128 = !DILocation(line: 905, column: 3, scope: !3123)
!3129 = distinct !{!3129, !3120, !3130}
!3130 = !DILocation(line: 907, column: 29, scope: !3118)
!3131 = !DILocation(line: 909, column: 24, scope: !3074)
!3132 = !DILocation(line: 909, column: 3, scope: !3074)
!3133 = !DILocation(line: 910, column: 17, scope: !3074)
!3134 = !DILocation(line: 914, column: 3, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3074, file: !3, line: 914, column: 3)
!3136 = !DILocation(line: 914, column: 3, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3135, file: !3, line: 914, column: 3)
!3138 = !DILocation(line: 916, column: 26, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 915, column: 5)
!3140 = !DILocation(line: 916, column: 54, scope: !3139)
!3141 = !DILocation(line: 916, column: 7, scope: !3139)
!3142 = distinct !{!3142, !3134, !3143}
!3143 = !DILocation(line: 917, column: 5, scope: !3135)
!3144 = !DILocation(line: 919, column: 26, scope: !3074)
!3145 = !DILocation(line: 920, column: 5, scope: !3074)
!3146 = !DILocation(line: 919, column: 3, scope: !3074)
!3147 = !DILocation(line: 922, column: 46, scope: !3074)
!3148 = !DILocation(line: 923, column: 7, scope: !3074)
!3149 = !DILocation(line: 922, column: 3, scope: !3074)
!3150 = !DILocation(line: 927, column: 3, scope: !3085)
!3151 = !DILocation(line: 927, column: 3, scope: !3084)
!3152 = !DILocation(line: 929, column: 35, scope: !3083)
!3153 = !DILocation(line: 929, column: 18, scope: !3083)
!3154 = !DILocation(line: 0, scope: !3083)
!3155 = !DILocation(line: 930, column: 7, scope: !3083)
!3156 = !DILocation(line: 930, column: 30, scope: !3083)
!3157 = !DILocation(line: 931, column: 11, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3083, file: !3, line: 931, column: 11)
!3159 = !DILocation(line: 931, column: 11, scope: !3083)
!3160 = !DILocation(line: 933, column: 21, scope: !3158)
!3161 = !DILocation(line: 933, column: 4, scope: !3158)
!3162 = !DILocation(line: 932, column: 2, scope: !3158)
!3163 = distinct !{!3163, !3150, !3164}
!3164 = !DILocation(line: 934, column: 5, scope: !3085)
!3165 = !DILocation(line: 940, column: 46, scope: !3074)
!3166 = !DILocation(line: 941, column: 7, scope: !3074)
!3167 = !DILocation(line: 940, column: 3, scope: !3074)
!3168 = !DILocation(line: 942, column: 3, scope: !3089)
!3169 = !DILocation(line: 942, column: 3, scope: !3088)
!3170 = !DILocation(line: 944, column: 35, scope: !3087)
!3171 = !DILocation(line: 944, column: 18, scope: !3087)
!3172 = !DILocation(line: 0, scope: !3087)
!3173 = !DILocation(line: 949, column: 11, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3087, file: !3, line: 949, column: 11)
!3175 = !DILocation(line: 949, column: 35, scope: !3174)
!3176 = !DILocation(line: 949, column: 11, scope: !3087)
!3177 = !DILocation(line: 951, column: 4, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3174, file: !3, line: 950, column: 2)
!3179 = !DILocation(line: 951, column: 24, scope: !3178)
!3180 = !DILocation(line: 952, column: 8, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3178, file: !3, line: 952, column: 8)
!3182 = !DILocation(line: 952, column: 8, scope: !3178)
!3183 = !DILocation(line: 954, column: 25, scope: !3181)
!3184 = !DILocation(line: 954, column: 8, scope: !3181)
!3185 = !DILocation(line: 953, column: 6, scope: !3181)
!3186 = distinct !{!3186, !3168, !3187}
!3187 = !DILocation(line: 956, column: 5, scope: !3089)
!3188 = !DILocation(line: 958, column: 3, scope: !3074)
!3189 = !DILocation(line: 959, column: 3, scope: !3074)
!3190 = !DILocation(line: 960, column: 25, scope: !3074)
!3191 = !DILocation(line: 961, column: 26, scope: !3074)
!3192 = !DILocation(line: 963, column: 7, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3074, file: !3, line: 963, column: 7)
!3194 = !DILocation(line: 963, column: 7, scope: !3074)
!3195 = !DILocation(line: 964, column: 5, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3193, file: !3, line: 964, column: 5)
!3197 = !DILocation(line: 964, column: 5, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3196, file: !3, line: 964, column: 5)
!3199 = !DILocation(line: 966, column: 11, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3198, file: !3, line: 965, column: 7)
!3201 = !DILocation(line: 967, column: 21, scope: !3200)
!3202 = !DILocation(line: 967, column: 4, scope: !3200)
!3203 = !DILocation(line: 966, column: 2, scope: !3200)
!3204 = distinct !{!3204, !3195, !3205}
!3205 = !DILocation(line: 968, column: 7, scope: !3196)
!3206 = !DILocation(line: 970, column: 8, scope: !3094)
!3207 = !DILocation(line: 0, scope: !3094)
!3208 = !DILocation(line: 970, column: 3, scope: !3094)
!3209 = !DILocation(line: 971, column: 9, scope: !3092)
!3210 = !DILocation(line: 971, column: 50, scope: !3092)
!3211 = !DILocation(line: 971, column: 9, scope: !3093)
!3212 = !DILocation(line: 974, column: 6, scope: !3091)
!3213 = !DILocation(line: 974, column: 38, scope: !3091)
!3214 = !DILocation(line: 0, scope: !3091)
!3215 = !DILocation(line: 980, column: 9, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3091, file: !3, line: 980, column: 6)
!3217 = !DILocation(line: 980, column: 6, scope: !3216)
!3218 = !DILocation(line: 980, column: 6, scope: !3091)
!3219 = !DILocation(line: 982, column: 7, scope: !3216)
!3220 = !DILocation(line: 981, column: 4, scope: !3216)
!3221 = !DILocation(line: 983, column: 9, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3091, file: !3, line: 983, column: 6)
!3223 = !DILocation(line: 983, column: 6, scope: !3222)
!3224 = !DILocation(line: 983, column: 6, scope: !3091)
!3225 = !DILocation(line: 985, column: 7, scope: !3222)
!3226 = !DILocation(line: 984, column: 4, scope: !3222)
!3227 = !DILocation(line: 970, column: 48, scope: !3093)
!3228 = !DILocation(line: 970, column: 3, scope: !3093)
!3229 = distinct !{!3229, !3208, !3230}
!3230 = !DILocation(line: 986, column: 7, scope: !3094)
!3231 = !DILocation(line: 988, column: 3, scope: !3074)
!3232 = !DILocation(line: 989, column: 3, scope: !3074)
!3233 = !DILocation(line: 991, column: 7, scope: !3100)
!3234 = !DILocation(line: 991, column: 7, scope: !3074)
!3235 = !DILocation(line: 0, scope: !3096)
!3236 = !DILocation(line: 992, column: 10, scope: !3099)
!3237 = !DILocation(line: 0, scope: !3099)
!3238 = !DILocation(line: 992, column: 5, scope: !3099)
!3239 = !DILocation(line: 993, column: 11, scope: !3097)
!3240 = !DILocation(line: 993, column: 52, scope: !3097)
!3241 = !DILocation(line: 993, column: 11, scope: !3098)
!3242 = !DILocation(line: 996, column: 4, scope: !3096)
!3243 = !DILocation(line: 997, column: 4, scope: !3096)
!3244 = !DILocation(line: 999, column: 8, scope: !3096)
!3245 = !DILocation(line: 999, column: 40, scope: !3096)
!3246 = !DILocation(line: 1000, column: 13, scope: !3096)
!3247 = !DILocation(line: 1002, column: 6, scope: !3096)
!3248 = !DILocation(line: 1002, column: 37, scope: !3096)
!3249 = !DILocation(line: 1000, column: 4, scope: !3096)
!3250 = !DILocation(line: 1003, column: 13, scope: !3096)
!3251 = !DILocation(line: 1003, column: 4, scope: !3096)
!3252 = !DILocation(line: 1004, column: 11, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3096, file: !3, line: 1004, column: 8)
!3254 = !DILocation(line: 1004, column: 8, scope: !3253)
!3255 = !DILocation(line: 1004, column: 8, scope: !3096)
!3256 = !DILocation(line: 1005, column: 6, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3253, file: !3, line: 1005, column: 6)
!3258 = !DILocation(line: 1005, column: 6, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3257, file: !3, line: 1005, column: 6)
!3260 = !DILocation(line: 1008, column: 19, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3259, file: !3, line: 1007, column: 8)
!3262 = !DILocation(line: 1009, column: 29, scope: !3261)
!3263 = !DILocation(line: 1009, column: 12, scope: !3261)
!3264 = !DILocation(line: 1008, column: 10, scope: !3261)
!3265 = distinct !{!3265, !3256, !3266}
!3266 = !DILocation(line: 1010, column: 8, scope: !3257)
!3267 = !DILocation(line: 1011, column: 13, scope: !3096)
!3268 = !DILocation(line: 1011, column: 4, scope: !3096)
!3269 = !DILocation(line: 1012, column: 11, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3096, file: !3, line: 1012, column: 8)
!3271 = !DILocation(line: 1012, column: 8, scope: !3270)
!3272 = !DILocation(line: 1012, column: 8, scope: !3096)
!3273 = !DILocation(line: 1013, column: 6, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !3270, file: !3, line: 1013, column: 6)
!3275 = !DILocation(line: 1013, column: 6, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3274, file: !3, line: 1013, column: 6)
!3277 = !DILocation(line: 1016, column: 18, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3276, file: !3, line: 1015, column: 8)
!3279 = !DILocation(line: 1017, column: 28, scope: !3278)
!3280 = !DILocation(line: 1017, column: 11, scope: !3278)
!3281 = !DILocation(line: 1016, column: 10, scope: !3278)
!3282 = distinct !{!3282, !3273, !3283}
!3283 = !DILocation(line: 1018, column: 8, scope: !3274)
!3284 = !DILocation(line: 1019, column: 11, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3096, file: !3, line: 1019, column: 8)
!3286 = !DILocation(line: 1019, column: 8, scope: !3285)
!3287 = !DILocation(line: 1019, column: 8, scope: !3096)
!3288 = !DILocation(line: 1020, column: 16, scope: !3285)
!3289 = !DILocation(line: 1020, column: 7, scope: !3285)
!3290 = !DILocation(line: 1021, column: 11, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3096, file: !3, line: 1021, column: 8)
!3292 = !DILocation(line: 1021, column: 8, scope: !3291)
!3293 = !DILocation(line: 1021, column: 8, scope: !3096)
!3294 = !DILocation(line: 1022, column: 16, scope: !3291)
!3295 = !DILocation(line: 1022, column: 7, scope: !3291)
!3296 = !DILocation(line: 1023, column: 2, scope: !3097)
!3297 = !DILocation(line: 1023, column: 2, scope: !3096)
!3298 = !DILocation(line: 992, column: 50, scope: !3098)
!3299 = !DILocation(line: 992, column: 5, scope: !3098)
!3300 = distinct !{!3300, !3238, !3301}
!3301 = !DILocation(line: 1023, column: 2, scope: !3099)
!3302 = !DILocation(line: 1024, column: 1, scope: !3074)
!3303 = distinct !DISubprogram(name: "ipa_reference_write_summary", scope: !3, file: !3, line: 1041, type: !3304, scopeLine: 1042, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3307)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{null, !3306}
!3306 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_node_set", file: !250, line: 283, baseType: !1816)
!3307 = !{!3308, !3309, !3310, !3347, !3348, !3354, !3360, !3361, !3362, !3363}
!3308 = !DILocalVariable(name: "set", arg: 1, scope: !3303, file: !3, line: 1041, type: !3306)
!3309 = !DILocalVariable(name: "node", scope: !3303, file: !3, line: 1043, type: !552)
!3310 = !DILocalVariable(name: "ob", scope: !3303, file: !3, line: 1044, type: !3311)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_simple_output_block", file: !528, line: 614, size: 192, elements: !3313)
!3313 = !{!3314, !3315, !3333}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "section_type", scope: !3312, file: !528, line: 616, baseType: !527, size: 32)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "decl_state", scope: !3312, file: !528, line: 617, baseType: !3316, size: 64, offset: 64)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_out_decl_state", file: !528, line: 517, size: 1472, elements: !3318)
!3318 = !{!3319, !3331, !3332}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !3317, file: !528, line: 521, baseType: !3320, size: 1344)
!3320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3321, size: 1344, elements: !1886)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_tree_ref_encoder", file: !528, line: 493, size: 192, elements: !3322)
!3322 = !{!3323, !3324, !3325}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "tree_hash_table", scope: !3321, file: !528, line: 495, baseType: !1131, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "next_index", scope: !3321, file: !528, line: 496, baseType: !7, size: 32, offset: 64)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "trees", scope: !3321, file: !528, line: 497, baseType: !3326, size: 64, offset: 128)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_heap", file: !6, line: 184, baseType: !3328)
!3328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_heap", file: !6, line: 184, size: 128, elements: !3329)
!3329 = !{!3330}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3328, file: !6, line: 184, baseType: !1199, size: 128)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "cgraph_node_encoder", scope: !3317, file: !528, line: 524, baseType: !1891, size: 64, offset: 1344)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "fn_decl", scope: !3317, file: !528, line: 528, baseType: !556, size: 64, offset: 1408)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "main_stream", scope: !3312, file: !528, line: 620, baseType: !3334, size: 64, offset: 128)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_output_stream", file: !528, line: 577, size: 320, elements: !3336)
!3336 = !{!3337, !3342, !3343, !3344, !3345, !3346}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "first_block", scope: !3335, file: !528, line: 580, baseType: !3338, size: 64)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_char_ptr_base", file: !528, line: 568, size: 64, elements: !3340)
!3340 = !{!3341}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3339, file: !528, line: 570, baseType: !546, size: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "current_block", scope: !3335, file: !528, line: 583, baseType: !3338, size: 64, offset: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "current_pointer", scope: !3335, file: !528, line: 586, baseType: !546, size: 64, offset: 128)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "left_in_block", scope: !3335, file: !528, line: 589, baseType: !7, size: 32, offset: 192)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !3335, file: !528, line: 592, baseType: !7, size: 32, offset: 224)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "total_size", scope: !3335, file: !528, line: 595, baseType: !7, size: 32, offset: 256)
!3347 = !DILocalVariable(name: "count", scope: !3303, file: !3, line: 1046, type: !7)
!3348 = !DILocalVariable(name: "csi", scope: !3303, file: !3, line: 1047, type: !3349)
!3349 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_node_set_iterator", file: !250, line: 305, baseType: !3350)
!3350 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !250, line: 301, size: 128, elements: !3351)
!3351 = !{!3352, !3353}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3350, file: !250, line: 303, baseType: !3306, size: 64)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3350, file: !250, line: 304, baseType: !7, size: 32, offset: 64)
!3354 = !DILocalVariable(name: "l", scope: !3355, file: !3, line: 1061, type: !2020)
!3355 = distinct !DILexicalBlock(scope: !3356, file: !3, line: 1060, column: 2)
!3356 = distinct !DILexicalBlock(scope: !3357, file: !3, line: 1059, column: 11)
!3357 = distinct !DILexicalBlock(scope: !3358, file: !3, line: 1057, column: 5)
!3358 = distinct !DILexicalBlock(scope: !3359, file: !3, line: 1056, column: 3)
!3359 = distinct !DILexicalBlock(scope: !3303, file: !3, line: 1056, column: 3)
!3360 = !DILocalVariable(name: "index", scope: !3355, file: !3, line: 1063, type: !7)
!3361 = !DILocalVariable(name: "bi", scope: !3355, file: !3, line: 1064, type: !2685)
!3362 = !DILocalVariable(name: "encoder", scope: !3355, file: !3, line: 1065, type: !1891)
!3363 = !DILocalVariable(name: "node_ref", scope: !3355, file: !3, line: 1066, type: !544)
!3364 = !DILocation(line: 0, scope: !3303)
!3365 = !DILocation(line: 1045, column: 7, scope: !3303)
!3366 = !DILocation(line: 1047, column: 3, scope: !3303)
!3367 = !DILocation(line: 1049, column: 14, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3303, file: !3, line: 1049, column: 3)
!3369 = !DILocation(line: 0, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3368, file: !3, line: 1049, column: 3)
!3371 = !DILocation(line: 1049, column: 8, scope: !3368)
!3372 = !DILocation(line: 1049, column: 32, scope: !3370)
!3373 = !DILocation(line: 1049, column: 31, scope: !3370)
!3374 = !DILocation(line: 1049, column: 3, scope: !3368)
!3375 = !DILocation(line: 1050, column: 31, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3370, file: !3, line: 1050, column: 9)
!3377 = !DILocation(line: 1050, column: 9, scope: !3376)
!3378 = !DILocation(line: 1050, column: 9, scope: !3370)
!3379 = !DILocation(line: 1049, column: 49, scope: !3370)
!3380 = !DILocation(line: 1049, column: 3, scope: !3370)
!3381 = distinct !{!3381, !3374, !3382}
!3382 = !DILocation(line: 1051, column: 7, scope: !3368)
!3383 = !DILocation(line: 1053, column: 34, scope: !3303)
!3384 = !DILocation(line: 1053, column: 47, scope: !3303)
!3385 = !DILocation(line: 1053, column: 3, scope: !3303)
!3386 = !DILocation(line: 1056, column: 14, scope: !3359)
!3387 = !DILocation(line: 0, scope: !3355)
!3388 = !DILocation(line: 1056, column: 8, scope: !3359)
!3389 = !DILocation(line: 1056, column: 32, scope: !3358)
!3390 = !DILocation(line: 1056, column: 31, scope: !3358)
!3391 = !DILocation(line: 1056, column: 3, scope: !3359)
!3392 = !DILocation(line: 1058, column: 14, scope: !3357)
!3393 = !DILocation(line: 1059, column: 11, scope: !3356)
!3394 = !DILocation(line: 1059, column: 11, scope: !3357)
!3395 = !DILocation(line: 1062, column: 8, scope: !3355)
!3396 = !DILocation(line: 1062, column: 40, scope: !3355)
!3397 = !DILocation(line: 1063, column: 4, scope: !3355)
!3398 = !DILocation(line: 1064, column: 4, scope: !3355)
!3399 = !DILocation(line: 1068, column: 18, scope: !3355)
!3400 = !DILocation(line: 1068, column: 30, scope: !3355)
!3401 = !DILocation(line: 1069, column: 15, scope: !3355)
!3402 = !DILocation(line: 1070, column: 35, scope: !3355)
!3403 = !DILocation(line: 1070, column: 48, scope: !3355)
!3404 = !DILocation(line: 1070, column: 4, scope: !3355)
!3405 = !DILocation(line: 1073, column: 11, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3355, file: !3, line: 1073, column: 8)
!3407 = !DILocation(line: 1073, column: 8, scope: !3406)
!3408 = !DILocation(line: 0, scope: !3406)
!3409 = !DILocation(line: 1073, column: 8, scope: !3355)
!3410 = !DILocation(line: 1074, column: 6, scope: !3406)
!3411 = !DILocation(line: 1078, column: 29, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3406, file: !3, line: 1076, column: 6)
!3413 = !DILocation(line: 1078, column: 7, scope: !3412)
!3414 = !DILocation(line: 1077, column: 8, scope: !3412)
!3415 = !DILocation(line: 1079, column: 8, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3412, file: !3, line: 1079, column: 8)
!3417 = !DILocation(line: 1079, column: 8, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3416, file: !3, line: 1079, column: 8)
!3419 = !DILocation(line: 1080, column: 33, scope: !3418)
!3420 = !DILocation(line: 1080, column: 49, scope: !3418)
!3421 = !DILocation(line: 1081, column: 25, scope: !3418)
!3422 = !DILocation(line: 1081, column: 8, scope: !3418)
!3423 = !DILocation(line: 1080, column: 3, scope: !3418)
!3424 = distinct !{!3424, !3415, !3425}
!3425 = !DILocation(line: 1081, column: 31, scope: !3416)
!3426 = !DILocation(line: 1085, column: 11, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3355, file: !3, line: 1085, column: 8)
!3428 = !DILocation(line: 1085, column: 8, scope: !3427)
!3429 = !DILocation(line: 0, scope: !3427)
!3430 = !DILocation(line: 1085, column: 8, scope: !3355)
!3431 = !DILocation(line: 1086, column: 6, scope: !3427)
!3432 = !DILocation(line: 1090, column: 29, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3427, file: !3, line: 1088, column: 6)
!3434 = !DILocation(line: 1090, column: 7, scope: !3433)
!3435 = !DILocation(line: 1089, column: 8, scope: !3433)
!3436 = !DILocation(line: 1091, column: 8, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !3433, file: !3, line: 1091, column: 8)
!3438 = !DILocation(line: 1091, column: 8, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3437, file: !3, line: 1091, column: 8)
!3440 = !DILocation(line: 1092, column: 33, scope: !3439)
!3441 = !DILocation(line: 1092, column: 49, scope: !3439)
!3442 = !DILocation(line: 1093, column: 25, scope: !3439)
!3443 = !DILocation(line: 1093, column: 8, scope: !3439)
!3444 = !DILocation(line: 1092, column: 3, scope: !3439)
!3445 = distinct !{!3445, !3436, !3446}
!3446 = !DILocation(line: 1093, column: 31, scope: !3437)
!3447 = !DILocation(line: 1095, column: 2, scope: !3356)
!3448 = !DILocation(line: 1095, column: 2, scope: !3355)
!3449 = !DILocation(line: 1056, column: 49, scope: !3358)
!3450 = !DILocation(line: 1056, column: 3, scope: !3358)
!3451 = distinct !{!3451, !3391, !3452}
!3452 = !DILocation(line: 1096, column: 5, scope: !3359)
!3453 = !DILocation(line: 1097, column: 3, scope: !3303)
!3454 = !DILocation(line: 1098, column: 1, scope: !3303)
!3455 = distinct !DISubprogram(name: "ipa_reference_read_summary", scope: !3, file: !3, line: 1104, type: !1810, scopeLine: 1105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3456)
!3456 = !{!3457, !3459, !3460, !3461, !3463, !3464, !3471, !3474, !3475, !3479, !3480, !3481, !3482, !3483, !3484, !3489, !3490, !3495}
!3457 = !DILocalVariable(name: "file_data_vec", scope: !3455, file: !3, line: 1106, type: !3458)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!3459 = !DILocalVariable(name: "file_data", scope: !3455, file: !3, line: 1108, type: !1873)
!3460 = !DILocalVariable(name: "j", scope: !3455, file: !3, line: 1109, type: !7)
!3461 = !DILocalVariable(name: "data", scope: !3462, file: !3, line: 1115, type: !549)
!3462 = distinct !DILexicalBlock(scope: !3455, file: !3, line: 1114, column: 5)
!3463 = !DILocalVariable(name: "len", scope: !3462, file: !3, line: 1116, type: !996)
!3464 = !DILocalVariable(name: "ib", scope: !3462, file: !3, line: 1117, type: !3465)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_input_block", file: !528, line: 363, size: 128, elements: !3467)
!3467 = !{!3468, !3469, !3470}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3466, file: !528, line: 365, baseType: !549, size: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3466, file: !528, line: 366, baseType: !7, size: 32, offset: 64)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3466, file: !528, line: 367, baseType: !7, size: 32, offset: 96)
!3471 = !DILocalVariable(name: "i", scope: !3472, file: !3, line: 1123, type: !7)
!3472 = distinct !DILexicalBlock(scope: !3473, file: !3, line: 1122, column: 2)
!3473 = distinct !DILexicalBlock(scope: !3462, file: !3, line: 1121, column: 11)
!3474 = !DILocalVariable(name: "f_count", scope: !3472, file: !3, line: 1124, type: !7)
!3475 = !DILocalVariable(name: "j", scope: !3476, file: !3, line: 1128, type: !7)
!3476 = distinct !DILexicalBlock(scope: !3477, file: !3, line: 1127, column: 6)
!3477 = distinct !DILexicalBlock(scope: !3478, file: !3, line: 1126, column: 4)
!3478 = distinct !DILexicalBlock(scope: !3472, file: !3, line: 1126, column: 4)
!3479 = !DILocalVariable(name: "index", scope: !3476, file: !3, line: 1128, type: !7)
!3480 = !DILocalVariable(name: "node", scope: !3476, file: !3, line: 1129, type: !552)
!3481 = !DILocalVariable(name: "l", scope: !3476, file: !3, line: 1130, type: !2020)
!3482 = !DILocalVariable(name: "v_count", scope: !3476, file: !3, line: 1131, type: !544)
!3483 = !DILocalVariable(name: "encoder", scope: !3476, file: !3, line: 1132, type: !1891)
!3484 = !DILocalVariable(name: "var_index", scope: !3485, file: !3, line: 1146, type: !7)
!3485 = distinct !DILexicalBlock(scope: !3486, file: !3, line: 1145, column: 5)
!3486 = distinct !DILexicalBlock(scope: !3487, file: !3, line: 1144, column: 3)
!3487 = distinct !DILexicalBlock(scope: !3488, file: !3, line: 1144, column: 3)
!3488 = distinct !DILexicalBlock(scope: !3476, file: !3, line: 1141, column: 12)
!3489 = !DILocalVariable(name: "v_decl", scope: !3485, file: !3, line: 1147, type: !556)
!3490 = !DILocalVariable(name: "var_index", scope: !3491, file: !3, line: 1160, type: !7)
!3491 = distinct !DILexicalBlock(scope: !3492, file: !3, line: 1159, column: 5)
!3492 = distinct !DILexicalBlock(scope: !3493, file: !3, line: 1158, column: 3)
!3493 = distinct !DILexicalBlock(scope: !3494, file: !3, line: 1158, column: 3)
!3494 = distinct !DILexicalBlock(scope: !3476, file: !3, line: 1155, column: 12)
!3495 = !DILocalVariable(name: "v_decl", scope: !3491, file: !3, line: 1161, type: !556)
!3496 = !DILocation(line: 1107, column: 7, scope: !3455)
!3497 = !DILocation(line: 0, scope: !3455)
!3498 = !DILocation(line: 1111, column: 3, scope: !3455)
!3499 = !DILocation(line: 0, scope: !3462)
!3500 = !DILocation(line: 1113, column: 3, scope: !3455)
!3501 = !DILocation(line: 1113, column: 38, scope: !3455)
!3502 = !DILocation(line: 1113, column: 23, scope: !3455)
!3503 = !DILocation(line: 1115, column: 7, scope: !3462)
!3504 = !DILocation(line: 1116, column: 7, scope: !3462)
!3505 = !DILocation(line: 1118, column: 4, scope: !3462)
!3506 = !DILocation(line: 1121, column: 11, scope: !3473)
!3507 = !DILocation(line: 1121, column: 11, scope: !3462)
!3508 = !DILocation(line: 1124, column: 27, scope: !3472)
!3509 = !DILocation(line: 0, scope: !3472)
!3510 = !DILocation(line: 0, scope: !3476)
!3511 = !DILocation(line: 1126, column: 9, scope: !3478)
!3512 = !DILocation(line: 0, scope: !3478)
!3513 = !DILocation(line: 1126, column: 18, scope: !3477)
!3514 = !DILocation(line: 1126, column: 4, scope: !3478)
!3515 = !DILocation(line: 1134, column: 16, scope: !3476)
!3516 = !DILocation(line: 1135, column: 29, scope: !3476)
!3517 = !DILocation(line: 1136, column: 15, scope: !3476)
!3518 = !DILocation(line: 1137, column: 12, scope: !3476)
!3519 = !DILocation(line: 1140, column: 18, scope: !3476)
!3520 = !DILocation(line: 1141, column: 20, scope: !3488)
!3521 = !DILocation(line: 1141, column: 12, scope: !3476)
!3522 = !DILocation(line: 0, scope: !3485)
!3523 = !DILocation(line: 1144, column: 3, scope: !3487)
!3524 = !DILocation(line: 1142, column: 13, scope: !3488)
!3525 = !DILocation(line: 1142, column: 28, scope: !3488)
!3526 = !DILocation(line: 1142, column: 10, scope: !3488)
!3527 = !DILocation(line: 0, scope: !3487)
!3528 = !DILocation(line: 1144, column: 17, scope: !3486)
!3529 = !DILocation(line: 1146, column: 32, scope: !3485)
!3530 = !DILocation(line: 1147, column: 21, scope: !3485)
!3531 = !DILocation(line: 1149, column: 7, scope: !3485)
!3532 = !DILocation(line: 1150, column: 26, scope: !3485)
!3533 = !DILocation(line: 1150, column: 40, scope: !3485)
!3534 = !DILocation(line: 1150, column: 7, scope: !3485)
!3535 = !DILocation(line: 1144, column: 43, scope: !3486)
!3536 = !DILocation(line: 1144, column: 3, scope: !3486)
!3537 = distinct !{!3537, !3523, !3538}
!3538 = !DILocation(line: 1151, column: 5, scope: !3487)
!3539 = !DILocation(line: 1154, column: 18, scope: !3476)
!3540 = !DILocation(line: 1155, column: 20, scope: !3494)
!3541 = !DILocation(line: 1155, column: 12, scope: !3476)
!3542 = !DILocation(line: 0, scope: !3491)
!3543 = !DILocation(line: 1158, column: 3, scope: !3493)
!3544 = !DILocation(line: 1156, column: 13, scope: !3494)
!3545 = !DILocation(line: 1156, column: 29, scope: !3494)
!3546 = !DILocation(line: 1156, column: 10, scope: !3494)
!3547 = !DILocation(line: 0, scope: !3493)
!3548 = !DILocation(line: 1158, column: 17, scope: !3492)
!3549 = !DILocation(line: 1160, column: 32, scope: !3491)
!3550 = !DILocation(line: 1161, column: 21, scope: !3491)
!3551 = !DILocation(line: 1163, column: 7, scope: !3491)
!3552 = !DILocation(line: 1164, column: 26, scope: !3491)
!3553 = !DILocation(line: 1164, column: 43, scope: !3491)
!3554 = !DILocation(line: 1164, column: 7, scope: !3491)
!3555 = !DILocation(line: 1158, column: 43, scope: !3492)
!3556 = !DILocation(line: 1158, column: 3, scope: !3492)
!3557 = distinct !{!3557, !3543, !3558}
!3558 = !DILocation(line: 1165, column: 5, scope: !3493)
!3559 = !DILocation(line: 1126, column: 30, scope: !3477)
!3560 = !DILocation(line: 1126, column: 4, scope: !3477)
!3561 = distinct !{!3561, !3514, !3562}
!3562 = !DILocation(line: 1166, column: 6, scope: !3478)
!3563 = !DILocation(line: 1170, column: 12, scope: !3472)
!3564 = !DILocation(line: 1170, column: 18, scope: !3472)
!3565 = !DILocation(line: 1168, column: 4, scope: !3472)
!3566 = !DILocation(line: 1171, column: 2, scope: !3472)
!3567 = !DILocation(line: 1172, column: 5, scope: !3455)
!3568 = distinct !{!3568, !3500, !3567}
!3569 = !DILocation(line: 1173, column: 1, scope: !3455)
!3570 = distinct !DISubprogram(name: "get_reference_vars_info", scope: !3, file: !3, line: 179, type: !3571, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3573)
!3571 = !DISubroutineType(types: !3572)
!3572 = !{!2015, !552}
!3573 = !{!3574}
!3574 = !DILocalVariable(name: "node", arg: 1, scope: !3570, file: !3, line: 179, type: !552)
!3575 = !DILocation(line: 0, scope: !3570)
!3576 = !DILocation(line: 181, column: 8, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3570, file: !3, line: 181, column: 7)
!3578 = !DILocation(line: 182, column: 7, scope: !3577)
!3579 = !DILocation(line: 182, column: 10, scope: !3577)
!3580 = !DILocation(line: 182, column: 99, scope: !3577)
!3581 = !DILocation(line: 182, column: 76, scope: !3577)
!3582 = !DILocation(line: 181, column: 7, scope: !3570)
!3583 = !DILocation(line: 184, column: 10, scope: !3570)
!3584 = !DILocation(line: 184, column: 3, scope: !3570)
!3585 = !DILocation(line: 185, column: 1, scope: !3570)
!3586 = distinct !DISubprogram(name: "VEC_ipa_reference_vars_info_t_base_length", scope: !3, file: !3, line: 173, type: !3587, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3591)
!3587 = !DISubroutineType(types: !3588)
!3588 = !{!7, !3589}
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2008)
!3591 = !{!3592}
!3592 = !DILocalVariable(name: "vec_", arg: 1, scope: !3586, file: !3, line: 173, type: !3589)
!3593 = !DILocation(line: 0, scope: !3586)
!3594 = !DILocation(line: 173, column: 1, scope: !3586)
!3595 = distinct !DISubprogram(name: "VEC_ipa_reference_vars_info_t_base_index", scope: !3, file: !3, line: 173, type: !3596, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3598)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{!2015, !3589, !7}
!3598 = !{!3599, !3600}
!3599 = !DILocalVariable(name: "vec_", arg: 1, scope: !3595, file: !3, line: 173, type: !3589)
!3600 = !DILocalVariable(name: "ix_", arg: 2, scope: !3595, file: !3, line: 173, type: !7)
!3601 = !DILocation(line: 0, scope: !3595)
!3602 = !DILocation(line: 173, column: 1, scope: !3595)
!3603 = distinct !DISubprogram(name: "read_write_all_from_decl", scope: !3, file: !3, line: 1179, type: !3604, scopeLine: 1180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3606)
!3604 = !DISubroutineType(types: !3605)
!3605 = !{null, !556, !542, !542}
!3606 = !{!3607, !3608, !3609, !3610}
!3607 = !DILocalVariable(name: "decl", arg: 1, scope: !3603, file: !3, line: 1179, type: !556)
!3608 = !DILocalVariable(name: "read_all", arg: 2, scope: !3603, file: !3, line: 1179, type: !542)
!3609 = !DILocalVariable(name: "write_all", arg: 3, scope: !3603, file: !3, line: 1179, type: !542)
!3610 = !DILocalVariable(name: "flags", scope: !3603, file: !3, line: 1181, type: !544)
!3611 = !DILocation(line: 0, scope: !3603)
!3612 = !DILocation(line: 1181, column: 15, scope: !3603)
!3613 = !DILocation(line: 1182, column: 13, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3603, file: !3, line: 1182, column: 7)
!3615 = !DILocation(line: 1182, column: 7, scope: !3603)
!3616 = !DILocation(line: 1184, column: 18, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3614, file: !3, line: 1184, column: 12)
!3618 = !DILocation(line: 0, scope: !3617)
!3619 = !DILocation(line: 1195, column: 18, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3621, file: !3, line: 1195, column: 11)
!3621 = distinct !DILexicalBlock(scope: !3617, file: !3, line: 1187, column: 5)
!3622 = !DILocation(line: 1196, column: 4, scope: !3620)
!3623 = !DILocation(line: 1184, column: 12, scope: !3614)
!3624 = !DILocation(line: 1197, column: 20, scope: !3620)
!3625 = !DILocation(line: 1197, column: 9, scope: !3620)
!3626 = !DILocation(line: 1199, column: 1, scope: !3603)
!3627 = distinct !DISubprogram(name: "propagate_bits", scope: !3, file: !3, line: 520, type: !3628, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3630)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{null, !2029, !552}
!3630 = !{!3631, !3632, !3633, !3634, !3638, !3643}
!3631 = !DILocalVariable(name: "x_global", arg: 1, scope: !3627, file: !3, line: 520, type: !2029)
!3632 = !DILocalVariable(name: "x", arg: 2, scope: !3627, file: !3, line: 520, type: !552)
!3633 = !DILocalVariable(name: "e", scope: !3627, file: !3, line: 522, type: !1730)
!3634 = !DILocalVariable(name: "y", scope: !3635, file: !3, line: 525, type: !552)
!3635 = distinct !DILexicalBlock(scope: !3636, file: !3, line: 524, column: 5)
!3636 = distinct !DILexicalBlock(scope: !3637, file: !3, line: 523, column: 3)
!3637 = distinct !DILexicalBlock(scope: !3627, file: !3, line: 523, column: 3)
!3638 = !DILocalVariable(name: "y_info", scope: !3639, file: !3, line: 532, type: !2015)
!3639 = distinct !DILexicalBlock(scope: !3640, file: !3, line: 531, column: 6)
!3640 = distinct !DILexicalBlock(scope: !3641, file: !3, line: 530, column: 8)
!3641 = distinct !DILexicalBlock(scope: !3642, file: !3, line: 529, column: 2)
!3642 = distinct !DILexicalBlock(scope: !3635, file: !3, line: 528, column: 11)
!3643 = !DILocalVariable(name: "y_global", scope: !3639, file: !3, line: 534, type: !2029)
!3644 = !DILocation(line: 0, scope: !3627)
!3645 = !DILocation(line: 523, column: 15, scope: !3637)
!3646 = !DILocation(line: 0, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3639, file: !3, line: 540, column: 12)
!3648 = !DILocation(line: 0, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !3650, file: !3, line: 545, column: 7)
!3650 = distinct !DILexicalBlock(scope: !3651, file: !3, line: 543, column: 9)
!3651 = distinct !DILexicalBlock(scope: !3647, file: !3, line: 542, column: 3)
!3652 = !DILocation(line: 0, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !3639, file: !3, line: 558, column: 12)
!3654 = !DILocation(line: 0, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3656, file: !3, line: 563, column: 7)
!3656 = distinct !DILexicalBlock(scope: !3657, file: !3, line: 561, column: 9)
!3657 = distinct !DILexicalBlock(scope: !3653, file: !3, line: 560, column: 3)
!3658 = !DILocation(line: 523, column: 8, scope: !3637)
!3659 = !DILocation(line: 0, scope: !3637)
!3660 = !DILocation(line: 523, column: 3, scope: !3637)
!3661 = !DILocation(line: 525, column: 34, scope: !3635)
!3662 = !DILocation(line: 0, scope: !3635)
!3663 = !DILocation(line: 528, column: 11, scope: !3642)
!3664 = !DILocation(line: 528, column: 57, scope: !3642)
!3665 = !DILocation(line: 528, column: 11, scope: !3635)
!3666 = !DILocation(line: 530, column: 8, scope: !3640)
!3667 = !DILocation(line: 530, column: 8, scope: !3641)
!3668 = !DILocation(line: 533, column: 5, scope: !3639)
!3669 = !DILocation(line: 0, scope: !3639)
!3670 = !DILocation(line: 534, column: 60, scope: !3639)
!3671 = !DILocation(line: 537, column: 13, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3639, file: !3, line: 537, column: 12)
!3673 = !DILocation(line: 537, column: 12, scope: !3639)
!3674 = !DILocation(line: 540, column: 22, scope: !3647)
!3675 = !DILocation(line: 541, column: 8, scope: !3647)
!3676 = !DILocation(line: 541, column: 5, scope: !3647)
!3677 = !DILocation(line: 540, column: 12, scope: !3639)
!3678 = !DILocation(line: 543, column: 19, scope: !3650)
!3679 = !DILocation(line: 544, column: 9, scope: !3650)
!3680 = !DILocation(line: 543, column: 9, scope: !3651)
!3681 = !DILocation(line: 546, column: 9, scope: !3649)
!3682 = !DILocation(line: 548, column: 6, scope: !3649)
!3683 = !DILocation(line: 548, column: 4, scope: !3649)
!3684 = !DILocation(line: 549, column: 7, scope: !3649)
!3685 = !DILocation(line: 553, column: 7, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3650, file: !3, line: 552, column: 14)
!3687 = !DILocation(line: 552, column: 14, scope: !3650)
!3688 = !DILocation(line: 554, column: 7, scope: !3686)
!3689 = !DILocation(line: 558, column: 22, scope: !3653)
!3690 = !DILocation(line: 559, column: 8, scope: !3653)
!3691 = !DILocation(line: 559, column: 5, scope: !3653)
!3692 = !DILocation(line: 558, column: 12, scope: !3639)
!3693 = !DILocation(line: 561, column: 19, scope: !3656)
!3694 = !DILocation(line: 562, column: 9, scope: !3656)
!3695 = !DILocation(line: 561, column: 9, scope: !3657)
!3696 = !DILocation(line: 564, column: 9, scope: !3655)
!3697 = !DILocation(line: 566, column: 6, scope: !3655)
!3698 = !DILocation(line: 566, column: 4, scope: !3655)
!3699 = !DILocation(line: 567, column: 7, scope: !3655)
!3700 = !DILocation(line: 571, column: 7, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3656, file: !3, line: 570, column: 14)
!3702 = !DILocation(line: 570, column: 14, scope: !3656)
!3703 = !DILocation(line: 572, column: 7, scope: !3701)
!3704 = !DILocation(line: 577, column: 6, scope: !3640)
!3705 = !DILocation(line: 579, column: 5, scope: !3636)
!3706 = !DILocation(line: 523, column: 34, scope: !3636)
!3707 = !DILocation(line: 523, column: 3, scope: !3636)
!3708 = distinct !{!3708, !3660, !3709}
!3709 = !DILocation(line: 579, column: 5, scope: !3637)
!3710 = !DILocation(line: 580, column: 1, scope: !3627)
!3711 = distinct !DISubprogram(name: "copy_global_bitmap", scope: !3, file: !3, line: 817, type: !3712, scopeLine: 818, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3714)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!1217, !1217}
!3714 = !{!3715, !3716}
!3715 = !DILocalVariable(name: "src", arg: 1, scope: !3711, file: !3, line: 817, type: !1217)
!3716 = !DILocalVariable(name: "dst", scope: !3711, file: !3, line: 819, type: !1217)
!3717 = !DILocation(line: 0, scope: !3711)
!3718 = !DILocation(line: 820, column: 8, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !3711, file: !3, line: 820, column: 7)
!3720 = !DILocation(line: 820, column: 7, scope: !3711)
!3721 = !DILocation(line: 822, column: 14, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3711, file: !3, line: 822, column: 7)
!3723 = !DILocation(line: 822, column: 11, scope: !3722)
!3724 = !DILocation(line: 822, column: 7, scope: !3711)
!3725 = !DILocation(line: 823, column: 5, scope: !3722)
!3726 = !DILocation(line: 824, column: 9, scope: !3711)
!3727 = !DILocation(line: 825, column: 3, scope: !3711)
!3728 = !DILocation(line: 826, column: 3, scope: !3711)
!3729 = !DILocation(line: 827, column: 1, scope: !3711)
!3730 = distinct !DISubprogram(name: "bmp_iter_set_init", scope: !1220, file: !1220, line: 224, type: !3731, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3738)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{null, !3733, !3734, !7, !3737}
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!3734 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_bitmap", file: !557, line: 48, baseType: !3735)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1219)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!3738 = !{!3739, !3740, !3741, !3742}
!3739 = !DILocalVariable(name: "bi", arg: 1, scope: !3730, file: !1220, line: 224, type: !3733)
!3740 = !DILocalVariable(name: "map", arg: 2, scope: !3730, file: !1220, line: 224, type: !3734)
!3741 = !DILocalVariable(name: "start_bit", arg: 3, scope: !3730, file: !1220, line: 225, type: !7)
!3742 = !DILocalVariable(name: "bit_no", arg: 4, scope: !3730, file: !1220, line: 225, type: !3737)
!3743 = !DILocation(line: 0, scope: !3730)
!3744 = !DILocation(line: 227, column: 19, scope: !3730)
!3745 = !DILocation(line: 227, column: 12, scope: !3730)
!3746 = !DILocation(line: 228, column: 7, scope: !3730)
!3747 = !DILocation(line: 228, column: 12, scope: !3730)
!3748 = !DILocation(line: 0, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3750, file: !1220, line: 233, column: 11)
!3750 = distinct !DILexicalBlock(scope: !3730, file: !1220, line: 232, column: 5)
!3751 = !DILocation(line: 231, column: 3, scope: !3730)
!3752 = !DILocation(line: 233, column: 12, scope: !3749)
!3753 = !DILocation(line: 233, column: 11, scope: !3750)
!3754 = !DILocation(line: 235, column: 13, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3749, file: !1220, line: 234, column: 2)
!3756 = !DILocation(line: 236, column: 4, scope: !3755)
!3757 = !DILocation(line: 239, column: 11, scope: !3750)
!3758 = distinct !{!3758, !3751, !3759}
!3759 = !DILocation(line: 242, column: 5, scope: !3730)
!3760 = !DILocation(line: 245, column: 11, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3730, file: !1220, line: 245, column: 7)
!3762 = !DILocation(line: 245, column: 17, scope: !3761)
!3763 = !DILocation(line: 245, column: 22, scope: !3761)
!3764 = !DILocation(line: 245, column: 7, scope: !3730)
!3765 = !DILocation(line: 246, column: 27, scope: !3761)
!3766 = !DILocation(line: 246, column: 32, scope: !3761)
!3767 = !DILocation(line: 246, column: 5, scope: !3761)
!3768 = !DILocation(line: 249, column: 7, scope: !3730)
!3769 = !DILocation(line: 249, column: 15, scope: !3730)
!3770 = !DILocation(line: 250, column: 14, scope: !3730)
!3771 = !DILocation(line: 251, column: 7, scope: !3730)
!3772 = !DILocation(line: 251, column: 12, scope: !3730)
!3773 = !DILocation(line: 257, column: 16, scope: !3730)
!3774 = !DILocation(line: 257, column: 13, scope: !3730)
!3775 = !DILocation(line: 259, column: 11, scope: !3730)
!3776 = !DILocation(line: 260, column: 1, scope: !3730)
!3777 = distinct !DISubprogram(name: "bmp_iter_set", scope: !1220, file: !1220, line: 393, type: !3778, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3780)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!543, !3733, !3737}
!3780 = !{!3781, !3782, !3783}
!3781 = !DILocalVariable(name: "bi", arg: 1, scope: !3777, file: !1220, line: 393, type: !3733)
!3782 = !DILocalVariable(name: "bit_no", arg: 2, scope: !3777, file: !1220, line: 393, type: !3737)
!3783 = !DILabel(scope: !3784, name: "next_bit", file: !1220, line: 398)
!3784 = distinct !DILexicalBlock(scope: !3785, file: !1220, line: 397, column: 5)
!3785 = distinct !DILexicalBlock(scope: !3777, file: !1220, line: 396, column: 7)
!3786 = !DILocation(line: 0, scope: !3777)
!3787 = !DILocation(line: 396, column: 11, scope: !3785)
!3788 = !DILocation(line: 396, column: 7, scope: !3785)
!3789 = !DILocation(line: 396, column: 7, scope: !3777)
!3790 = !DILocation(line: 419, column: 15, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3792, file: !1220, line: 418, column: 2)
!3792 = distinct !DILexicalBlock(scope: !3777, file: !1220, line: 415, column: 5)
!3793 = !DILocation(line: 399, column: 7, scope: !3784)
!3794 = !DILocation(line: 398, column: 5, scope: !3784)
!3795 = !DILocation(line: 399, column: 20, scope: !3784)
!3796 = !DILocation(line: 399, column: 25, scope: !3784)
!3797 = !DILocation(line: 399, column: 14, scope: !3784)
!3798 = !DILocation(line: 401, column: 13, scope: !3799)
!3799 = distinct !DILexicalBlock(scope: !3784, file: !1220, line: 400, column: 2)
!3800 = !DILocation(line: 402, column: 12, scope: !3799)
!3801 = distinct !{!3801, !3793, !3802}
!3802 = !DILocation(line: 403, column: 2, scope: !3784)
!3803 = !DILocation(line: 410, column: 15, scope: !3777)
!3804 = !DILocation(line: 410, column: 42, scope: !3777)
!3805 = !DILocation(line: 411, column: 26, scope: !3777)
!3806 = !DILocation(line: 410, column: 11, scope: !3777)
!3807 = !DILocation(line: 412, column: 7, scope: !3777)
!3808 = !DILocation(line: 412, column: 14, scope: !3777)
!3809 = !DILocation(line: 0, scope: !3792)
!3810 = !DILocation(line: 414, column: 3, scope: !3777)
!3811 = !DILocation(line: 417, column: 7, scope: !3792)
!3812 = !DILocation(line: 417, column: 18, scope: !3792)
!3813 = !DILocation(line: 417, column: 26, scope: !3792)
!3814 = !DILocation(line: 419, column: 13, scope: !3791)
!3815 = !DILocation(line: 420, column: 8, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3791, file: !1220, line: 420, column: 8)
!3817 = !DILocation(line: 420, column: 8, scope: !3791)
!3818 = !DILocation(line: 422, column: 12, scope: !3791)
!3819 = !DILocation(line: 423, column: 15, scope: !3791)
!3820 = distinct !{!3820, !3811, !3821}
!3821 = !DILocation(line: 424, column: 2, scope: !3792)
!3822 = !DILocation(line: 427, column: 28, scope: !3792)
!3823 = !DILocation(line: 427, column: 16, scope: !3792)
!3824 = !DILocation(line: 428, column: 12, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3792, file: !1220, line: 428, column: 11)
!3826 = !DILocation(line: 428, column: 11, scope: !3792)
!3827 = !DILocation(line: 430, column: 27, scope: !3792)
!3828 = !DILocation(line: 430, column: 32, scope: !3792)
!3829 = !DILocation(line: 430, column: 15, scope: !3792)
!3830 = !DILocation(line: 431, column: 19, scope: !3792)
!3831 = distinct !{!3831, !3810, !3832}
!3832 = !DILocation(line: 432, column: 5, scope: !3777)
!3833 = !DILocation(line: 433, column: 1, scope: !3777)
!3834 = distinct !DISubprogram(name: "get_static_name", scope: !3, file: !3, line: 506, type: !3835, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3837)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!549, !544}
!3837 = !{!3838, !3839}
!3838 = !DILocalVariable(name: "index", arg: 1, scope: !3834, file: !3, line: 506, type: !544)
!3839 = !DILocalVariable(name: "stn", scope: !3834, file: !3, line: 508, type: !2060)
!3840 = !DILocation(line: 0, scope: !3834)
!3841 = !DILocation(line: 509, column: 24, scope: !3834)
!3842 = !DILocation(line: 509, column: 52, scope: !3834)
!3843 = !DILocation(line: 509, column: 5, scope: !3834)
!3844 = !DILocation(line: 510, column: 7, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3834, file: !3, line: 510, column: 7)
!3846 = !DILocation(line: 510, column: 7, scope: !3834)
!3847 = !DILocation(line: 511, column: 23, scope: !3845)
!3848 = !DILocation(line: 511, column: 56, scope: !3845)
!3849 = !DILocation(line: 511, column: 12, scope: !3845)
!3850 = !DILocation(line: 511, column: 5, scope: !3845)
!3851 = !DILocation(line: 513, column: 1, scope: !3834)
!3852 = distinct !DISubprogram(name: "bmp_iter_next", scope: !1220, file: !1220, line: 382, type: !3853, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3855)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{null, !3733, !3737}
!3855 = !{!3856, !3857}
!3856 = !DILocalVariable(name: "bi", arg: 1, scope: !3852, file: !1220, line: 382, type: !3733)
!3857 = !DILocalVariable(name: "bit_no", arg: 2, scope: !3852, file: !1220, line: 382, type: !3737)
!3858 = !DILocation(line: 0, scope: !3852)
!3859 = !DILocation(line: 384, column: 7, scope: !3852)
!3860 = !DILocation(line: 384, column: 12, scope: !3852)
!3861 = !DILocation(line: 385, column: 11, scope: !3852)
!3862 = !DILocation(line: 386, column: 1, scope: !3852)
!3863 = distinct !DISubprogram(name: "clean_function", scope: !3, file: !3, line: 760, type: !1838, scopeLine: 761, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3864)
!3864 = !{!3865, !3866, !3867}
!3865 = !DILocalVariable(name: "fn", arg: 1, scope: !3863, file: !3, line: 760, type: !552)
!3866 = !DILocalVariable(name: "info", scope: !3863, file: !3, line: 762, type: !2015)
!3867 = !DILocalVariable(name: "g", scope: !3863, file: !3, line: 763, type: !2029)
!3868 = !DILocation(line: 0, scope: !3863)
!3869 = !DILocation(line: 762, column: 36, scope: !3863)
!3870 = !DILocation(line: 763, column: 46, scope: !3863)
!3871 = !DILocation(line: 765, column: 3, scope: !3863)
!3872 = !DILocation(line: 766, column: 7, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3863, file: !3, line: 766, column: 7)
!3874 = !DILocation(line: 766, column: 7, scope: !3863)
!3875 = !DILocation(line: 768, column: 14, scope: !3876)
!3876 = distinct !DILexicalBlock(scope: !3877, file: !3, line: 768, column: 11)
!3877 = distinct !DILexicalBlock(scope: !3873, file: !3, line: 767, column: 5)
!3878 = !DILocation(line: 768, column: 11, scope: !3876)
!3879 = !DILocation(line: 769, column: 4, scope: !3876)
!3880 = !DILocation(line: 769, column: 26, scope: !3876)
!3881 = !DILocation(line: 769, column: 23, scope: !3876)
!3882 = !DILocation(line: 768, column: 11, scope: !3877)
!3883 = !DILocation(line: 770, column: 2, scope: !3876)
!3884 = !DILocation(line: 772, column: 14, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3877, file: !3, line: 772, column: 11)
!3886 = !DILocation(line: 772, column: 11, scope: !3885)
!3887 = !DILocation(line: 773, column: 4, scope: !3885)
!3888 = !DILocation(line: 773, column: 29, scope: !3885)
!3889 = !DILocation(line: 773, column: 26, scope: !3885)
!3890 = !DILocation(line: 772, column: 11, scope: !3877)
!3891 = !DILocation(line: 774, column: 2, scope: !3885)
!3892 = !DILocation(line: 776, column: 14, scope: !3893)
!3893 = distinct !DILexicalBlock(scope: !3877, file: !3, line: 776, column: 11)
!3894 = !DILocation(line: 776, column: 11, scope: !3893)
!3895 = !DILocation(line: 777, column: 4, scope: !3893)
!3896 = !DILocation(line: 777, column: 30, scope: !3893)
!3897 = !DILocation(line: 777, column: 27, scope: !3893)
!3898 = !DILocation(line: 776, column: 11, scope: !3877)
!3899 = !DILocation(line: 778, column: 2, scope: !3893)
!3900 = !DILocation(line: 780, column: 14, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3877, file: !3, line: 780, column: 11)
!3902 = !DILocation(line: 780, column: 11, scope: !3901)
!3903 = !DILocation(line: 781, column: 4, scope: !3901)
!3904 = !DILocation(line: 781, column: 33, scope: !3901)
!3905 = !DILocation(line: 781, column: 30, scope: !3901)
!3906 = !DILocation(line: 780, column: 11, scope: !3877)
!3907 = !DILocation(line: 782, column: 2, scope: !3901)
!3908 = !DILocation(line: 783, column: 13, scope: !3877)
!3909 = !DILocation(line: 783, column: 7, scope: !3877)
!3910 = !DILocation(line: 784, column: 20, scope: !3877)
!3911 = !DILocation(line: 785, column: 5, scope: !3877)
!3912 = !DILocation(line: 787, column: 9, scope: !3863)
!3913 = !DILocation(line: 787, column: 3, scope: !3863)
!3914 = !DILocation(line: 788, column: 3, scope: !3863)
!3915 = !DILocation(line: 789, column: 1, scope: !3863)
!3916 = distinct !DISubprogram(name: "clean_function_local_data", scope: !3, file: !3, line: 740, type: !1838, scopeLine: 741, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3917)
!3917 = !{!3918, !3919, !3920}
!3918 = !DILocalVariable(name: "fn", arg: 1, scope: !3916, file: !3, line: 740, type: !552)
!3919 = !DILocalVariable(name: "info", scope: !3916, file: !3, line: 742, type: !2015)
!3920 = !DILocalVariable(name: "l", scope: !3916, file: !3, line: 743, type: !2020)
!3921 = !DILocation(line: 0, scope: !3916)
!3922 = !DILocation(line: 742, column: 36, scope: !3916)
!3923 = !DILocation(line: 743, column: 45, scope: !3916)
!3924 = !DILocation(line: 744, column: 7, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3916, file: !3, line: 744, column: 7)
!3926 = !DILocation(line: 744, column: 7, scope: !3916)
!3927 = !DILocation(line: 746, column: 14, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3929, file: !3, line: 746, column: 11)
!3929 = distinct !DILexicalBlock(scope: !3925, file: !3, line: 745, column: 5)
!3930 = !DILocation(line: 746, column: 11, scope: !3928)
!3931 = !DILocation(line: 747, column: 4, scope: !3928)
!3932 = !DILocation(line: 747, column: 26, scope: !3928)
!3933 = !DILocation(line: 747, column: 23, scope: !3928)
!3934 = !DILocation(line: 746, column: 11, scope: !3929)
!3935 = !DILocation(line: 748, column: 2, scope: !3928)
!3936 = !DILocation(line: 749, column: 14, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !3929, file: !3, line: 749, column: 11)
!3938 = !DILocation(line: 749, column: 11, scope: !3937)
!3939 = !DILocation(line: 750, column: 4, scope: !3937)
!3940 = !DILocation(line: 750, column: 28, scope: !3937)
!3941 = !DILocation(line: 750, column: 25, scope: !3937)
!3942 = !DILocation(line: 749, column: 11, scope: !3929)
!3943 = !DILocation(line: 751, column: 2, scope: !3937)
!3944 = !DILocation(line: 752, column: 13, scope: !3929)
!3945 = !DILocation(line: 752, column: 7, scope: !3929)
!3946 = !DILocation(line: 753, column: 19, scope: !3929)
!3947 = !DILocation(line: 754, column: 5, scope: !3929)
!3948 = !DILocation(line: 755, column: 1, scope: !3916)
!3949 = distinct !DISubprogram(name: "set_reference_vars_info", scope: !3, file: !3, line: 189, type: !3950, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3952)
!3950 = !DISubroutineType(types: !3951)
!3951 = !{null, !552, !2015}
!3952 = !{!3953, !3954}
!3953 = !DILocalVariable(name: "node", arg: 1, scope: !3949, file: !3, line: 189, type: !552)
!3954 = !DILocalVariable(name: "info", arg: 2, scope: !3949, file: !3, line: 189, type: !2015)
!3955 = !DILocation(line: 0, scope: !3949)
!3956 = !DILocation(line: 191, column: 8, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3949, file: !3, line: 191, column: 7)
!3958 = !DILocation(line: 192, column: 7, scope: !3957)
!3959 = !DILocation(line: 0, scope: !3957)
!3960 = !DILocation(line: 193, column: 6, scope: !3957)
!3961 = !DILocation(line: 192, column: 10, scope: !3957)
!3962 = !DILocation(line: 192, column: 99, scope: !3957)
!3963 = !DILocation(line: 192, column: 76, scope: !3957)
!3964 = !DILocation(line: 191, column: 7, scope: !3949)
!3965 = !DILocation(line: 194, column: 3, scope: !3949)
!3966 = !DILocation(line: 195, column: 1, scope: !3949)
!3967 = distinct !DISubprogram(name: "VEC_ipa_reference_vars_info_t_heap_safe_grow_cleared", scope: !3, file: !3, line: 174, type: !3968, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3971)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{null, !3970, !544}
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!3971 = !{!3972, !3973, !3974}
!3972 = !DILocalVariable(name: "vec_", arg: 1, scope: !3967, file: !3, line: 174, type: !3970)
!3973 = !DILocalVariable(name: "size_", arg: 2, scope: !3967, file: !3, line: 174, type: !544)
!3974 = !DILocalVariable(name: "oldsize", scope: !3967, file: !3, line: 174, type: !544)
!3975 = !DILocation(line: 0, scope: !3967)
!3976 = !DILocation(line: 174, column: 1, scope: !3967)
!3977 = distinct !DISubprogram(name: "VEC_ipa_reference_vars_info_t_base_replace", scope: !3, file: !3, line: 173, type: !3978, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3981)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{!2015, !3980, !7, !2015}
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!3981 = !{!3982, !3983, !3984, !3985}
!3982 = !DILocalVariable(name: "vec_", arg: 1, scope: !3977, file: !3, line: 173, type: !3980)
!3983 = !DILocalVariable(name: "ix_", arg: 2, scope: !3977, file: !3, line: 173, type: !7)
!3984 = !DILocalVariable(name: "obj_", arg: 3, scope: !3977, file: !3, line: 173, type: !2015)
!3985 = !DILocalVariable(name: "old_obj_", scope: !3977, file: !3, line: 173, type: !2015)
!3986 = !DILocation(line: 0, scope: !3977)
!3987 = !DILocation(line: 173, column: 1, scope: !3977)
!3988 = distinct !DISubprogram(name: "VEC_ipa_reference_vars_info_t_heap_safe_grow", scope: !3, file: !3, line: 174, type: !3968, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3989)
!3989 = !{!3990, !3991}
!3990 = !DILocalVariable(name: "vec_", arg: 1, scope: !3988, file: !3, line: 174, type: !3970)
!3991 = !DILocalVariable(name: "size_", arg: 2, scope: !3988, file: !3, line: 174, type: !544)
!3992 = !DILocation(line: 0, scope: !3988)
!3993 = !DILocation(line: 174, column: 1, scope: !3988)
!3994 = distinct !DISubprogram(name: "VEC_ipa_reference_vars_info_t_base_address", scope: !3, file: !3, line: 173, type: !3995, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3998)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{!3997, !3980}
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!3998 = !{!3999}
!3999 = !DILocalVariable(name: "vec_", arg: 1, scope: !3994, file: !3, line: 173, type: !3980)
!4000 = !DILocation(line: 0, scope: !3994)
!4001 = !DILocation(line: 173, column: 1, scope: !3994)
!4002 = distinct !DISubprogram(name: "VEC_ipa_reference_vars_info_t_heap_reserve_exact", scope: !3, file: !3, line: 174, type: !4003, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4005)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{!544, !3970, !544}
!4005 = !{!4006, !4007, !4008}
!4006 = !DILocalVariable(name: "vec_", arg: 1, scope: !4002, file: !3, line: 174, type: !3970)
!4007 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4002, file: !3, line: 174, type: !544)
!4008 = !DILocalVariable(name: "extend", scope: !4002, file: !3, line: 174, type: !544)
!4009 = !DILocation(line: 0, scope: !4002)
!4010 = !DILocation(line: 174, column: 1, scope: !4002)
!4011 = !DILocation(line: 174, column: 1, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !4002, file: !3, line: 174, column: 1)
!4013 = distinct !DISubprogram(name: "VEC_ipa_reference_vars_info_t_base_space", scope: !3, file: !3, line: 173, type: !4014, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4016)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{!544, !3980, !544}
!4016 = !{!4017, !4018}
!4017 = !DILocalVariable(name: "vec_", arg: 1, scope: !4013, file: !3, line: 173, type: !3980)
!4018 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4013, file: !3, line: 173, type: !544)
!4019 = !DILocation(line: 0, scope: !4013)
!4020 = !DILocation(line: 173, column: 1, scope: !4013)
!4021 = !DILocation(line: 589, column: 7, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !2108, file: !3, line: 589, column: 7)
!4023 = !DILocation(line: 589, column: 7, scope: !2108)
!4024 = !DILocation(line: 592, column: 10, scope: !2108)
!4025 = !DILocation(line: 594, column: 30, scope: !2108)
!4026 = !DILocation(line: 594, column: 28, scope: !2108)
!4027 = !DILocation(line: 597, column: 5, scope: !2108)
!4028 = !DILocation(line: 596, column: 30, scope: !2108)
!4029 = !DILocation(line: 599, column: 3, scope: !2108)
!4030 = !DILocation(line: 600, column: 3, scope: !2108)
!4031 = !DILocation(line: 601, column: 27, scope: !2108)
!4032 = !DILocation(line: 601, column: 25, scope: !2108)
!4033 = !DILocation(line: 602, column: 28, scope: !2108)
!4034 = !DILocation(line: 602, column: 26, scope: !2108)
!4035 = !DILocation(line: 603, column: 24, scope: !2108)
!4036 = !DILocation(line: 603, column: 22, scope: !2108)
!4037 = !DILocation(line: 609, column: 19, scope: !2108)
!4038 = !DILocation(line: 609, column: 17, scope: !2108)
!4039 = !DILocation(line: 612, column: 7, scope: !2108)
!4040 = !DILocation(line: 611, column: 34, scope: !2108)
!4041 = !DILocation(line: 614, column: 7, scope: !2108)
!4042 = !DILocation(line: 613, column: 28, scope: !2108)
!4043 = !DILocation(line: 616, column: 7, scope: !2108)
!4044 = !DILocation(line: 615, column: 32, scope: !2108)
!4045 = !DILocation(line: 617, column: 1, scope: !2108)
!4046 = distinct !DISubprogram(name: "varpool_first_static_initializer", scope: !250, file: !250, line: 590, type: !4047, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4049)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{!1854}
!4049 = !{!4050}
!4050 = !DILocalVariable(name: "node", scope: !4046, file: !250, line: 592, type: !1854)
!4051 = !DILocation(line: 593, column: 8, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !4046, file: !250, line: 593, column: 3)
!4053 = !DILocation(line: 0, scope: !4052)
!4054 = !DILocation(line: 0, scope: !4046)
!4055 = !DILocation(line: 593, column: 3, scope: !4052)
!4056 = !DILocation(line: 595, column: 7, scope: !4057)
!4057 = distinct !DILexicalBlock(scope: !4058, file: !250, line: 594, column: 5)
!4058 = distinct !DILexicalBlock(scope: !4052, file: !250, line: 593, column: 3)
!4059 = !DILocation(line: 0, scope: !4060)
!4060 = distinct !DILexicalBlock(scope: !4057, file: !250, line: 596, column: 11)
!4061 = !DILocation(line: 596, column: 11, scope: !4060)
!4062 = !DILocation(line: 596, column: 11, scope: !4057)
!4063 = !DILocation(line: 593, column: 55, scope: !4058)
!4064 = !DILocation(line: 593, column: 3, scope: !4058)
!4065 = distinct !{!4065, !4055, !4066}
!4066 = !DILocation(line: 598, column: 5, scope: !4052)
!4067 = !DILocation(line: 600, column: 1, scope: !4046)
!4068 = distinct !DISubprogram(name: "analyze_variable", scope: !3, file: !3, line: 626, type: !1852, scopeLine: 627, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4069)
!4069 = !{!4070, !4071, !4088}
!4070 = !DILocalVariable(name: "vnode", arg: 1, scope: !4068, file: !3, line: 626, type: !1854)
!4071 = !DILocalVariable(name: "wi", scope: !4068, file: !3, line: 628, type: !4072)
!4072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "walk_stmt_info", file: !463, line: 4652, size: 448, elements: !4073)
!4073 = !{!4074, !4081, !4082, !4083, !4084, !4085, !4086, !4087}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "gsi", scope: !4072, file: !463, line: 4655, baseType: !4075, size: 192)
!4075 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !463, line: 265, baseType: !4076)
!4076 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !463, line: 254, size: 192, elements: !4077)
!4077 = !{!4078, !4079, !4080}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !4076, file: !463, line: 257, baseType: !846, size: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !4076, file: !463, line: 263, baseType: !841, size: 64, offset: 64)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !4076, file: !463, line: 264, baseType: !814, size: 64, offset: 128)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4072, file: !463, line: 4659, baseType: !548, size: 64, offset: 192)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "pset", scope: !4072, file: !463, line: 4664, baseType: !2118, size: 64, offset: 256)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "val_only", scope: !4072, file: !463, line: 4678, baseType: !543, size: 8, offset: 320)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "is_lhs", scope: !4072, file: !463, line: 4681, baseType: !543, size: 8, offset: 328)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4072, file: !463, line: 4685, baseType: !543, size: 8, offset: 336)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "want_locations", scope: !4072, file: !463, line: 4688, baseType: !543, size: 8, offset: 344)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "callback_result", scope: !4072, file: !463, line: 4694, baseType: !556, size: 64, offset: 384)
!4088 = !DILocalVariable(name: "global", scope: !4068, file: !3, line: 629, type: !556)
!4089 = !DILocation(line: 0, scope: !4068)
!4090 = !DILocation(line: 628, column: 3, scope: !4068)
!4091 = !DILocation(line: 629, column: 24, scope: !4068)
!4092 = !DILocation(line: 631, column: 3, scope: !4068)
!4093 = !DILocation(line: 632, column: 13, scope: !4068)
!4094 = !DILocation(line: 632, column: 6, scope: !4068)
!4095 = !DILocation(line: 632, column: 11, scope: !4068)
!4096 = !DILocation(line: 633, column: 3, scope: !4068)
!4097 = !DILocation(line: 635, column: 1, scope: !4068)
!4098 = distinct !DISubprogram(name: "varpool_next_static_initializer", scope: !250, file: !250, line: 604, type: !4099, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4101)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{!1854, !1854}
!4101 = !{!4102}
!4102 = !DILocalVariable(name: "node", arg: 1, scope: !4098, file: !250, line: 604, type: !1854)
!4103 = !DILocation(line: 0, scope: !4098)
!4104 = !DILocation(line: 606, column: 8, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !4098, file: !250, line: 606, column: 3)
!4106 = !DILocation(line: 0, scope: !4105)
!4107 = !DILocation(line: 606, column: 3, scope: !4105)
!4108 = !DILocation(line: 608, column: 7, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4110, file: !250, line: 607, column: 5)
!4110 = distinct !DILexicalBlock(scope: !4105, file: !250, line: 606, column: 3)
!4111 = !DILocation(line: 0, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !4109, file: !250, line: 609, column: 11)
!4113 = !DILocation(line: 609, column: 11, scope: !4112)
!4114 = !DILocation(line: 609, column: 11, scope: !4109)
!4115 = !DILocation(line: 606, column: 3, scope: !4110)
!4116 = distinct !{!4116, !4107, !4117}
!4117 = !DILocation(line: 611, column: 5, scope: !4105)
!4118 = !DILocation(line: 613, column: 1, scope: !4098)
!4119 = distinct !DISubprogram(name: "analyze_function", scope: !3, file: !3, line: 663, type: !1838, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4120)
!4120 = !{!4121, !4122, !4123, !4124, !4125, !4126, !4130, !4131, !4132, !4133}
!4121 = !DILocalVariable(name: "fn", arg: 1, scope: !4119, file: !3, line: 663, type: !552)
!4122 = !DILocalVariable(name: "decl", scope: !4119, file: !3, line: 665, type: !556)
!4123 = !DILocalVariable(name: "this_cfun", scope: !4119, file: !3, line: 666, type: !802)
!4124 = !DILocalVariable(name: "this_block", scope: !4119, file: !3, line: 667, type: !814)
!4125 = !DILocalVariable(name: "local", scope: !4119, file: !3, line: 671, type: !2020)
!4126 = !DILocalVariable(name: "gsi", scope: !4127, file: !3, line: 682, type: !4075)
!4127 = distinct !DILexicalBlock(scope: !4128, file: !3, line: 681, column: 5)
!4128 = distinct !DILexicalBlock(scope: !4129, file: !3, line: 680, column: 3)
!4129 = distinct !DILexicalBlock(scope: !4119, file: !3, line: 680, column: 3)
!4130 = !DILocalVariable(name: "phi", scope: !4127, file: !3, line: 683, type: !851)
!4131 = !DILocalVariable(name: "op", scope: !4127, file: !3, line: 684, type: !556)
!4132 = !DILocalVariable(name: "use", scope: !4127, file: !3, line: 685, type: !2033)
!4133 = !DILocalVariable(name: "iter", scope: !4127, file: !3, line: 686, type: !4134)
!4134 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_op_iter", file: !456, line: 140, baseType: !4135)
!4135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_iterator_d", file: !456, line: 131, size: 320, elements: !4136)
!4136 = !{!4137, !4138, !4139, !4141, !4143, !4144, !4145}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !4135, file: !456, line: 133, baseType: !543, size: 8)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !4135, file: !456, line: 134, baseType: !455, size: 32, offset: 32)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "defs", scope: !4135, file: !456, line: 135, baseType: !4140, size: 64, offset: 64)
!4140 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_optype_p", file: !456, line: 42, baseType: !880)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "uses", scope: !4135, file: !456, line: 136, baseType: !4142, size: 64, offset: 128)
!4142 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_optype_p", file: !456, line: 50, baseType: !887)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "phi_i", scope: !4135, file: !456, line: 137, baseType: !544, size: 32, offset: 192)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "num_phi", scope: !4135, file: !456, line: 138, baseType: !544, size: 32, offset: 224)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "phi_stmt", scope: !4135, file: !456, line: 139, baseType: !851, size: 64, offset: 256)
!4146 = !DILocation(line: 0, scope: !4119)
!4147 = !DILocation(line: 665, column: 19, scope: !4119)
!4148 = !DILocation(line: 666, column: 32, scope: !4119)
!4149 = !DILocation(line: 673, column: 7, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4119, file: !3, line: 673, column: 7)
!4151 = !DILocation(line: 673, column: 7, scope: !4119)
!4152 = !DILocation(line: 674, column: 54, scope: !4150)
!4153 = !DILocation(line: 674, column: 5, scope: !4150)
!4154 = !DILocation(line: 676, column: 14, scope: !4119)
!4155 = !DILocation(line: 676, column: 3, scope: !4119)
!4156 = !DILocation(line: 677, column: 25, scope: !4119)
!4157 = !DILocation(line: 679, column: 3, scope: !4119)
!4158 = !DILocation(line: 680, column: 3, scope: !4129)
!4159 = !DILocation(line: 0, scope: !4127)
!4160 = !DILocation(line: 0, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4127, file: !3, line: 689, column: 7)
!4162 = !DILocation(line: 0, scope: !4163)
!4163 = distinct !DILexicalBlock(scope: !4127, file: !3, line: 702, column: 7)
!4164 = !DILocation(line: 680, column: 3, scope: !4128)
!4165 = !DILocation(line: 0, scope: !4129)
!4166 = !DILocation(line: 682, column: 7, scope: !4127)
!4167 = !DILocation(line: 686, column: 7, scope: !4127)
!4168 = !DILocation(line: 689, column: 18, scope: !4161)
!4169 = !DILocation(line: 689, column: 12, scope: !4161)
!4170 = !DILocation(line: 690, column: 6, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !4161, file: !3, line: 689, column: 7)
!4172 = !DILocation(line: 690, column: 5, scope: !4171)
!4173 = !DILocation(line: 689, column: 7, scope: !4161)
!4174 = !DILocation(line: 693, column: 10, scope: !4175)
!4175 = distinct !DILexicalBlock(scope: !4171, file: !3, line: 692, column: 2)
!4176 = !DILocation(line: 694, column: 4, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4175, file: !3, line: 694, column: 4)
!4178 = !DILocation(line: 0, scope: !4177)
!4179 = !DILocation(line: 694, column: 4, scope: !4180)
!4180 = distinct !DILexicalBlock(scope: !4177, file: !3, line: 694, column: 4)
!4181 = !DILocation(line: 696, column: 13, scope: !4182)
!4182 = distinct !DILexicalBlock(scope: !4180, file: !3, line: 695, column: 6)
!4183 = !DILocation(line: 697, column: 12, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4182, file: !3, line: 697, column: 12)
!4185 = !DILocation(line: 697, column: 27, scope: !4184)
!4186 = !DILocation(line: 697, column: 12, scope: !4182)
!4187 = !DILocation(line: 698, column: 23, scope: !4184)
!4188 = !DILocation(line: 698, column: 3, scope: !4184)
!4189 = distinct !{!4189, !4176, !4190}
!4190 = !DILocation(line: 699, column: 6, scope: !4177)
!4191 = !DILocation(line: 691, column: 5, scope: !4171)
!4192 = !DILocation(line: 689, column: 7, scope: !4171)
!4193 = distinct !{!4193, !4173, !4194}
!4194 = !DILocation(line: 700, column: 2, scope: !4161)
!4195 = !DILocation(line: 702, column: 18, scope: !4163)
!4196 = !DILocation(line: 702, column: 12, scope: !4163)
!4197 = !DILocation(line: 702, column: 46, scope: !4198)
!4198 = distinct !DILexicalBlock(scope: !4163, file: !3, line: 702, column: 7)
!4199 = !DILocation(line: 702, column: 45, scope: !4198)
!4200 = !DILocation(line: 702, column: 7, scope: !4163)
!4201 = !DILocation(line: 703, column: 2, scope: !4198)
!4202 = !DILocation(line: 702, column: 63, scope: !4198)
!4203 = !DILocation(line: 702, column: 7, scope: !4198)
!4204 = distinct !{!4204, !4200, !4205}
!4205 = !DILocation(line: 703, column: 37, scope: !4163)
!4206 = !DILocation(line: 704, column: 5, scope: !4128)
!4207 = distinct !{!4207, !4158, !4208}
!4208 = !DILocation(line: 704, column: 5, scope: !4129)
!4209 = !DILocation(line: 706, column: 11, scope: !4119)
!4210 = !DILocation(line: 706, column: 41, scope: !4119)
!4211 = !DILocation(line: 707, column: 8, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4119, file: !3, line: 707, column: 7)
!4213 = !DILocation(line: 707, column: 39, scope: !4212)
!4214 = !DILocation(line: 708, column: 7, scope: !4212)
!4215 = !DILocation(line: 707, column: 7, scope: !4119)
!4216 = !DILocation(line: 710, column: 14, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4212, file: !3, line: 709, column: 5)
!4218 = !DILocation(line: 710, column: 30, scope: !4217)
!4219 = !DILocation(line: 711, column: 28, scope: !4217)
!4220 = !DILocation(line: 711, column: 7, scope: !4217)
!4221 = !DILocation(line: 712, column: 5, scope: !4217)
!4222 = !DILocation(line: 715, column: 14, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4119, file: !3, line: 715, column: 7)
!4224 = !DILocation(line: 715, column: 7, scope: !4223)
!4225 = !DILocation(line: 715, column: 7, scope: !4119)
!4226 = !DILocation(line: 716, column: 5, scope: !4223)
!4227 = !DILocation(line: 717, column: 14, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4119, file: !3, line: 717, column: 7)
!4229 = !DILocation(line: 717, column: 7, scope: !4228)
!4230 = !DILocation(line: 717, column: 7, scope: !4119)
!4231 = !DILocation(line: 718, column: 5, scope: !4228)
!4232 = !DILocation(line: 734, column: 3, scope: !4119)
!4233 = !DILocation(line: 735, column: 25, scope: !4119)
!4234 = !DILocation(line: 736, column: 1, scope: !4119)
!4235 = distinct !DISubprogram(name: "get_static_decl", scope: !3, file: !3, line: 493, type: !4236, scopeLine: 494, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4238)
!4236 = !DISubroutineType(types: !4237)
!4237 = !{!556, !544}
!4238 = !{!4239, !4240}
!4239 = !DILocalVariable(name: "index", arg: 1, scope: !4235, file: !3, line: 493, type: !544)
!4240 = !DILocalVariable(name: "stn", scope: !4235, file: !3, line: 495, type: !2060)
!4241 = !DILocation(line: 0, scope: !4235)
!4242 = !DILocation(line: 496, column: 24, scope: !4235)
!4243 = !DILocation(line: 496, column: 52, scope: !4235)
!4244 = !DILocation(line: 496, column: 5, scope: !4235)
!4245 = !DILocation(line: 497, column: 7, scope: !4246)
!4246 = distinct !DILexicalBlock(scope: !4235, file: !3, line: 497, column: 7)
!4247 = !DILocation(line: 497, column: 7, scope: !4235)
!4248 = !DILocation(line: 498, column: 23, scope: !4246)
!4249 = !DILocation(line: 498, column: 5, scope: !4246)
!4250 = !DILocation(line: 500, column: 1, scope: !4235)
!4251 = distinct !DISubprogram(name: "add_new_function", scope: !3, file: !3, line: 793, type: !4252, scopeLine: 794, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4254)
!4252 = !DISubroutineType(types: !4253)
!4253 = !{null, !552, !548}
!4254 = !{!4255, !4256}
!4255 = !DILocalVariable(name: "node", arg: 1, scope: !4251, file: !3, line: 793, type: !552)
!4256 = !DILocalVariable(name: "data", arg: 2, scope: !4251, file: !3, line: 793, type: !548)
!4257 = !DILocation(line: 0, scope: !4251)
!4258 = !DILocation(line: 799, column: 3, scope: !4251)
!4259 = !DILocation(line: 800, column: 17, scope: !4251)
!4260 = !DILocation(line: 801, column: 1, scope: !4251)
!4261 = distinct !DISubprogram(name: "remove_node_data", scope: !3, file: !3, line: 867, type: !4252, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4262)
!4262 = !{!4263, !4264}
!4263 = !DILocalVariable(name: "node", arg: 1, scope: !4261, file: !3, line: 867, type: !552)
!4264 = !DILocalVariable(name: "data", arg: 2, scope: !4261, file: !3, line: 867, type: !548)
!4265 = !DILocation(line: 0, scope: !4261)
!4266 = !DILocation(line: 869, column: 7, scope: !4267)
!4267 = distinct !DILexicalBlock(scope: !4261, file: !3, line: 869, column: 7)
!4268 = !DILocation(line: 869, column: 7, scope: !4261)
!4269 = !DILocation(line: 870, column: 5, scope: !4267)
!4270 = !DILocation(line: 871, column: 1, scope: !4261)
!4271 = distinct !DISubprogram(name: "duplicate_node_data", scope: !3, file: !3, line: 832, type: !4272, scopeLine: 834, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4274)
!4272 = !DISubroutineType(types: !4273)
!4273 = !{null, !552, !552, !548}
!4274 = !{!4275, !4276, !4277, !4278, !4279, !4280, !4281}
!4275 = !DILocalVariable(name: "src", arg: 1, scope: !4271, file: !3, line: 832, type: !552)
!4276 = !DILocalVariable(name: "dst", arg: 2, scope: !4271, file: !3, line: 832, type: !552)
!4277 = !DILocalVariable(name: "data", arg: 3, scope: !4271, file: !3, line: 833, type: !548)
!4278 = !DILocalVariable(name: "ginfo", scope: !4271, file: !3, line: 835, type: !2029)
!4279 = !DILocalVariable(name: "linfo", scope: !4271, file: !3, line: 836, type: !2020)
!4280 = !DILocalVariable(name: "dst_ginfo", scope: !4271, file: !3, line: 837, type: !2029)
!4281 = !DILocalVariable(name: "dst_linfo", scope: !4271, file: !3, line: 838, type: !2020)
!4282 = !DILocation(line: 0, scope: !4271)
!4283 = !DILocation(line: 840, column: 11, scope: !4271)
!4284 = !DILocation(line: 841, column: 11, scope: !4271)
!4285 = !DILocation(line: 842, column: 8, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4271, file: !3, line: 842, column: 7)
!4287 = !DILocation(line: 842, column: 18, scope: !4286)
!4288 = !DILocation(line: 842, column: 14, scope: !4286)
!4289 = !DILocation(line: 844, column: 3, scope: !4271)
!4290 = !DILocation(line: 845, column: 7, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4271, file: !3, line: 845, column: 7)
!4292 = !DILocation(line: 845, column: 7, scope: !4271)
!4293 = !DILocation(line: 847, column: 19, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4291, file: !3, line: 846, column: 5)
!4295 = !DILocation(line: 848, column: 59, scope: !4294)
!4296 = !DILocation(line: 848, column: 33, scope: !4294)
!4297 = !DILocation(line: 848, column: 18, scope: !4294)
!4298 = !DILocation(line: 848, column: 31, scope: !4294)
!4299 = !DILocation(line: 849, column: 62, scope: !4294)
!4300 = !DILocation(line: 849, column: 36, scope: !4294)
!4301 = !DILocation(line: 849, column: 18, scope: !4294)
!4302 = !DILocation(line: 849, column: 34, scope: !4294)
!4303 = !DILocation(line: 850, column: 42, scope: !4294)
!4304 = !DILocation(line: 850, column: 18, scope: !4294)
!4305 = !DILocation(line: 850, column: 33, scope: !4294)
!4306 = !DILocation(line: 851, column: 43, scope: !4294)
!4307 = !DILocation(line: 851, column: 18, scope: !4294)
!4308 = !DILocation(line: 851, column: 34, scope: !4294)
!4309 = !DILocation(line: 852, column: 5, scope: !4294)
!4310 = !DILocation(line: 853, column: 7, scope: !4311)
!4311 = distinct !DILexicalBlock(scope: !4271, file: !3, line: 853, column: 7)
!4312 = !DILocation(line: 853, column: 7, scope: !4271)
!4313 = !DILocation(line: 855, column: 47, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4311, file: !3, line: 854, column: 5)
!4315 = !DILocation(line: 855, column: 7, scope: !4314)
!4316 = !DILocation(line: 855, column: 38, scope: !4314)
!4317 = !DILocation(line: 855, column: 45, scope: !4314)
!4318 = !DILocation(line: 856, column: 19, scope: !4314)
!4319 = !DILocation(line: 857, column: 60, scope: !4314)
!4320 = !DILocation(line: 857, column: 33, scope: !4314)
!4321 = !DILocation(line: 857, column: 18, scope: !4314)
!4322 = !DILocation(line: 857, column: 31, scope: !4314)
!4323 = !DILocation(line: 858, column: 63, scope: !4314)
!4324 = !DILocation(line: 858, column: 36, scope: !4314)
!4325 = !DILocation(line: 858, column: 18, scope: !4314)
!4326 = !DILocation(line: 858, column: 34, scope: !4314)
!4327 = !DILocation(line: 859, column: 64, scope: !4314)
!4328 = !DILocation(line: 859, column: 37, scope: !4314)
!4329 = !DILocation(line: 859, column: 18, scope: !4314)
!4330 = !DILocation(line: 859, column: 35, scope: !4314)
!4331 = !DILocation(line: 860, column: 67, scope: !4314)
!4332 = !DILocation(line: 860, column: 40, scope: !4314)
!4333 = !DILocation(line: 860, column: 18, scope: !4314)
!4334 = !DILocation(line: 860, column: 38, scope: !4314)
!4335 = !DILocation(line: 861, column: 5, scope: !4314)
!4336 = !DILocation(line: 862, column: 1, scope: !4271)
!4337 = distinct !DISubprogram(name: "get_local_reference_vars_info", scope: !3, file: !3, line: 200, type: !4338, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4340)
!4338 = !DISubroutineType(types: !4339)
!4339 = !{!2020, !552}
!4340 = !{!4341, !4342}
!4341 = !DILocalVariable(name: "fn", arg: 1, scope: !4337, file: !3, line: 200, type: !552)
!4342 = !DILocalVariable(name: "info", scope: !4337, file: !3, line: 202, type: !2015)
!4343 = !DILocation(line: 0, scope: !4337)
!4344 = !DILocation(line: 202, column: 36, scope: !4337)
!4345 = !DILocation(line: 204, column: 7, scope: !4346)
!4346 = distinct !DILexicalBlock(scope: !4337, file: !3, line: 204, column: 7)
!4347 = !DILocation(line: 204, column: 7, scope: !4337)
!4348 = !DILocation(line: 205, column: 18, scope: !4346)
!4349 = !DILocation(line: 205, column: 5, scope: !4346)
!4350 = !DILocation(line: 0, scope: !4346)
!4351 = !DILocation(line: 209, column: 1, scope: !4337)
!4352 = distinct !DISubprogram(name: "init_function_info", scope: !3, file: !3, line: 641, type: !4338, scopeLine: 642, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4353)
!4353 = !{!4354, !4355, !4356}
!4354 = !DILocalVariable(name: "fn", arg: 1, scope: !4352, file: !3, line: 641, type: !552)
!4355 = !DILocalVariable(name: "info", scope: !4352, file: !3, line: 643, type: !2015)
!4356 = !DILocalVariable(name: "l", scope: !4352, file: !3, line: 645, type: !2020)
!4357 = !DILocation(line: 0, scope: !4352)
!4358 = !DILocation(line: 644, column: 7, scope: !4352)
!4359 = !DILocation(line: 646, column: 7, scope: !4352)
!4360 = !DILocation(line: 649, column: 3, scope: !4352)
!4361 = !DILocation(line: 651, column: 15, scope: !4352)
!4362 = !DILocation(line: 652, column: 21, scope: !4352)
!4363 = !DILocation(line: 652, column: 6, scope: !4352)
!4364 = !DILocation(line: 652, column: 19, scope: !4352)
!4365 = !DILocation(line: 653, column: 24, scope: !4352)
!4366 = !DILocation(line: 653, column: 6, scope: !4352)
!4367 = !DILocation(line: 653, column: 22, scope: !4352)
!4368 = !DILocation(line: 655, column: 3, scope: !4352)
!4369 = distinct !DISubprogram(name: "copy_local_bitmap", scope: !3, file: !3, line: 804, type: !3712, scopeLine: 805, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4370)
!4370 = !{!4371, !4372}
!4371 = !DILocalVariable(name: "src", arg: 1, scope: !4369, file: !3, line: 804, type: !1217)
!4372 = !DILocalVariable(name: "dst", scope: !4369, file: !3, line: 806, type: !1217)
!4373 = !DILocation(line: 0, scope: !4369)
!4374 = !DILocation(line: 807, column: 8, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4369, file: !3, line: 807, column: 7)
!4376 = !DILocation(line: 807, column: 7, scope: !4369)
!4377 = !DILocation(line: 809, column: 14, scope: !4378)
!4378 = distinct !DILexicalBlock(scope: !4369, file: !3, line: 809, column: 7)
!4379 = !DILocation(line: 809, column: 11, scope: !4378)
!4380 = !DILocation(line: 809, column: 7, scope: !4369)
!4381 = !DILocation(line: 810, column: 5, scope: !4378)
!4382 = !DILocation(line: 811, column: 9, scope: !4369)
!4383 = !DILocation(line: 812, column: 3, scope: !4369)
!4384 = !DILocation(line: 813, column: 3, scope: !4369)
!4385 = !DILocation(line: 814, column: 1, scope: !4369)
!4386 = distinct !DISubprogram(name: "scan_initializer_for_static_refs", scope: !3, file: !3, line: 473, type: !4387, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4390)
!4387 = !DISubroutineType(types: !4388)
!4388 = !{!556, !885, !4389, !548}
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!4390 = !{!4391, !4392, !4393, !4394}
!4391 = !DILocalVariable(name: "tp", arg: 1, scope: !4386, file: !3, line: 473, type: !885)
!4392 = !DILocalVariable(name: "walk_subtrees", arg: 2, scope: !4386, file: !3, line: 473, type: !4389)
!4393 = !DILocalVariable(name: "data", arg: 3, scope: !4386, file: !3, line: 474, type: !548)
!4394 = !DILocalVariable(name: "t", scope: !4386, file: !3, line: 476, type: !556)
!4395 = !DILocation(line: 0, scope: !4386)
!4396 = !DILocation(line: 476, column: 12, scope: !4386)
!4397 = !DILocation(line: 478, column: 7, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !4386, file: !3, line: 478, column: 7)
!4399 = !DILocation(line: 478, column: 21, scope: !4398)
!4400 = !DILocation(line: 478, column: 7, scope: !4386)
!4401 = !DILocation(line: 480, column: 27, scope: !4402)
!4402 = distinct !DILexicalBlock(scope: !4398, file: !3, line: 479, column: 5)
!4403 = !DILocation(line: 480, column: 7, scope: !4402)
!4404 = !DILocation(line: 481, column: 22, scope: !4402)
!4405 = !DILocation(line: 482, column: 5, scope: !4402)
!4406 = !DILocation(line: 485, column: 12, scope: !4407)
!4407 = distinct !DILexicalBlock(scope: !4398, file: !3, line: 485, column: 12)
!4408 = !DILocation(line: 485, column: 12, scope: !4398)
!4409 = !DILocation(line: 486, column: 20, scope: !4407)
!4410 = !DILocation(line: 486, column: 5, scope: !4407)
!4411 = !DILocation(line: 488, column: 3, scope: !4386)
!4412 = distinct !DISubprogram(name: "mark_address_taken", scope: !3, file: !3, line: 342, type: !4413, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4415)
!4413 = !DISubroutineType(types: !4414)
!4414 = !{null, !556}
!4415 = !{!4416}
!4416 = !DILocalVariable(name: "x", arg: 1, scope: !4412, file: !3, line: 342, type: !556)
!4417 = !DILocation(line: 0, scope: !4412)
!4418 = !DILocation(line: 344, column: 7, scope: !4419)
!4419 = distinct !DILexicalBlock(scope: !4412, file: !3, line: 344, column: 7)
!4420 = !DILocation(line: 344, column: 21, scope: !4419)
!4421 = !DILocation(line: 345, column: 10, scope: !4419)
!4422 = !DILocation(line: 345, column: 7, scope: !4419)
!4423 = !DILocation(line: 345, column: 35, scope: !4419)
!4424 = !DILocation(line: 344, column: 7, scope: !4412)
!4425 = !DILocation(line: 346, column: 21, scope: !4419)
!4426 = !DILocation(line: 346, column: 44, scope: !4419)
!4427 = !DILocation(line: 346, column: 5, scope: !4419)
!4428 = !DILocation(line: 347, column: 1, scope: !4412)
!4429 = distinct !DISubprogram(name: "has_proper_scope_for_analysis", scope: !3, file: !3, line: 306, type: !4430, scopeLine: 307, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4432)
!4430 = !DISubroutineType(types: !4431)
!4431 = !{!543, !556}
!4432 = !{!4433}
!4433 = !DILocalVariable(name: "t", arg: 1, scope: !4429, file: !3, line: 306, type: !556)
!4434 = !DILocation(line: 0, scope: !4429)
!4435 = !DILocation(line: 310, column: 7, scope: !4436)
!4436 = distinct !DILexicalBlock(scope: !4429, file: !3, line: 310, column: 7)
!4437 = !DILocation(line: 310, column: 7, scope: !4429)
!4438 = !DILocation(line: 315, column: 7, scope: !4439)
!4439 = distinct !DILexicalBlock(scope: !4429, file: !3, line: 315, column: 7)
!4440 = !DILocation(line: 315, column: 7, scope: !4429)
!4441 = !DILocation(line: 319, column: 8, scope: !4442)
!4442 = distinct !DILexicalBlock(scope: !4429, file: !3, line: 319, column: 7)
!4443 = !DILocation(line: 319, column: 24, scope: !4442)
!4444 = !DILocation(line: 324, column: 7, scope: !4445)
!4445 = distinct !DILexicalBlock(scope: !4429, file: !3, line: 324, column: 7)
!4446 = !DILocation(line: 319, column: 28, scope: !4442)
!4447 = !DILocation(line: 319, column: 7, scope: !4429)
!4448 = !DILocation(line: 324, column: 25, scope: !4445)
!4449 = !DILocation(line: 324, column: 28, scope: !4445)
!4450 = !DILocation(line: 324, column: 7, scope: !4429)
!4451 = !DILocation(line: 328, column: 7, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4429, file: !3, line: 328, column: 7)
!4453 = !DILocation(line: 328, column: 7, scope: !4429)
!4454 = !DILocation(line: 333, column: 22, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4429, file: !3, line: 333, column: 7)
!4456 = !DILocation(line: 333, column: 42, scope: !4455)
!4457 = !DILocation(line: 333, column: 8, scope: !4455)
!4458 = !DILocation(line: 333, column: 7, scope: !4429)
!4459 = !DILocation(line: 334, column: 5, scope: !4455)
!4460 = !DILocation(line: 337, column: 1, scope: !4429)
!4461 = distinct !DISubprogram(name: "add_static_var", scope: !3, file: !3, line: 290, type: !4413, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4462)
!4462 = !{!4463, !4464}
!4463 = !DILocalVariable(name: "var", arg: 1, scope: !4461, file: !3, line: 290, type: !556)
!4464 = !DILocalVariable(name: "uid", scope: !4461, file: !3, line: 292, type: !544)
!4465 = !DILocation(line: 0, scope: !4461)
!4466 = !DILocation(line: 292, column: 13, scope: !4461)
!4467 = !DILocation(line: 293, column: 3, scope: !4461)
!4468 = !DILocation(line: 294, column: 22, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !4461, file: !3, line: 294, column: 7)
!4470 = !DILocation(line: 294, column: 8, scope: !4469)
!4471 = !DILocation(line: 294, column: 7, scope: !4461)
!4472 = !DILocation(line: 296, column: 26, scope: !4473)
!4473 = distinct !DILexicalBlock(scope: !4469, file: !3, line: 295, column: 5)
!4474 = !DILocation(line: 297, column: 5, scope: !4473)
!4475 = !DILocation(line: 297, column: 10, scope: !4473)
!4476 = !DILocation(line: 296, column: 7, scope: !4473)
!4477 = !DILocation(line: 298, column: 23, scope: !4473)
!4478 = !DILocation(line: 298, column: 7, scope: !4473)
!4479 = !DILocation(line: 299, column: 5, scope: !4473)
!4480 = !DILocation(line: 300, column: 1, scope: !4461)
!4481 = distinct !DISubprogram(name: "gsi_end_p", scope: !463, file: !463, line: 4467, type: !4482, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4484)
!4482 = !DISubroutineType(types: !4483)
!4483 = !{!543, !4075}
!4484 = !{!4485}
!4485 = !DILocalVariable(name: "i", arg: 1, scope: !4481, file: !463, line: 4467, type: !4075)
!4486 = !DILocation(line: 4467, column: 33, scope: !4481)
!4487 = !DILocation(line: 4469, column: 12, scope: !4481)
!4488 = !DILocation(line: 4469, column: 16, scope: !4481)
!4489 = !DILocation(line: 4469, column: 10, scope: !4481)
!4490 = !DILocation(line: 4469, column: 3, scope: !4481)
!4491 = distinct !DISubprogram(name: "gsi_stmt", scope: !463, file: !463, line: 4501, type: !4492, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4494)
!4492 = !DISubroutineType(types: !4493)
!4493 = !{!851, !4075}
!4494 = !{!4495}
!4495 = !DILocalVariable(name: "i", arg: 1, scope: !4491, file: !463, line: 4501, type: !4075)
!4496 = !DILocation(line: 4501, column: 32, scope: !4491)
!4497 = !DILocation(line: 4503, column: 12, scope: !4491)
!4498 = !DILocation(line: 4503, column: 17, scope: !4491)
!4499 = !DILocation(line: 4503, column: 3, scope: !4491)
!4500 = distinct !DISubprogram(name: "op_iter_init_phiuse", scope: !4501, file: !4501, line: 910, type: !4502, scopeLine: 911, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4505)
!4501 = !DIFile(filename: "./tree-flow-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4502 = !DISubroutineType(types: !4503)
!4503 = !{!2033, !4504, !851, !544}
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4505 = !{!4506, !4507, !4508, !4509, !4510}
!4506 = !DILocalVariable(name: "ptr", arg: 1, scope: !4500, file: !4501, line: 910, type: !4504)
!4507 = !DILocalVariable(name: "phi", arg: 2, scope: !4500, file: !4501, line: 910, type: !851)
!4508 = !DILocalVariable(name: "flags", arg: 3, scope: !4500, file: !4501, line: 910, type: !544)
!4509 = !DILocalVariable(name: "phi_def", scope: !4500, file: !4501, line: 912, type: !556)
!4510 = !DILocalVariable(name: "comp", scope: !4500, file: !4501, line: 913, type: !544)
!4511 = !DILocation(line: 0, scope: !4500)
!4512 = !DILocation(line: 912, column: 18, scope: !4500)
!4513 = !DILocation(line: 915, column: 3, scope: !4500)
!4514 = !DILocation(line: 916, column: 8, scope: !4500)
!4515 = !DILocation(line: 916, column: 13, scope: !4500)
!4516 = !DILocation(line: 920, column: 11, scope: !4500)
!4517 = !DILocation(line: 923, column: 7, scope: !4500)
!4518 = !DILocation(line: 925, column: 17, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4520, file: !4501, line: 924, column: 5)
!4520 = distinct !DILexicalBlock(scope: !4500, file: !4501, line: 923, column: 7)
!4521 = !DILocation(line: 926, column: 7, scope: !4519)
!4522 = !DILocation(line: 929, column: 8, scope: !4500)
!4523 = !DILocation(line: 929, column: 17, scope: !4500)
!4524 = !DILocation(line: 930, column: 18, scope: !4500)
!4525 = !DILocation(line: 930, column: 8, scope: !4500)
!4526 = !DILocation(line: 930, column: 16, scope: !4500)
!4527 = !DILocation(line: 931, column: 8, scope: !4500)
!4528 = !DILocation(line: 931, column: 18, scope: !4500)
!4529 = !DILocation(line: 932, column: 10, scope: !4500)
!4530 = !DILocation(line: 932, column: 3, scope: !4500)
!4531 = !DILocation(line: 933, column: 1, scope: !4500)
!4532 = distinct !DISubprogram(name: "op_iter_done", scope: !4501, file: !4501, line: 652, type: !4533, scopeLine: 653, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4537)
!4533 = !DISubroutineType(types: !4534)
!4534 = !{!543, !4535}
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4134)
!4537 = !{!4538}
!4538 = !DILocalVariable(name: "ptr", arg: 1, scope: !4532, file: !4501, line: 652, type: !4535)
!4539 = !DILocation(line: 0, scope: !4532)
!4540 = !DILocation(line: 654, column: 15, scope: !4532)
!4541 = !DILocation(line: 654, column: 3, scope: !4532)
!4542 = distinct !DISubprogram(name: "get_use_from_ptr", scope: !4501, file: !4501, line: 427, type: !4543, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4545)
!4543 = !DISubroutineType(types: !4544)
!4544 = !{!556, !2033}
!4545 = !{!4546}
!4546 = !DILocalVariable(name: "use", arg: 1, scope: !4542, file: !4501, line: 427, type: !2033)
!4547 = !DILocation(line: 0, scope: !4542)
!4548 = !DILocation(line: 429, column: 17, scope: !4542)
!4549 = !DILocation(line: 429, column: 10, scope: !4542)
!4550 = !DILocation(line: 429, column: 3, scope: !4542)
!4551 = distinct !DISubprogram(name: "op_iter_next_use", scope: !4501, file: !4501, line: 659, type: !4552, scopeLine: 660, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4554)
!4552 = !DISubroutineType(types: !4553)
!4553 = !{!2033, !4504}
!4554 = !{!4555, !4556}
!4555 = !DILocalVariable(name: "ptr", arg: 1, scope: !4551, file: !4501, line: 659, type: !4504)
!4556 = !DILocalVariable(name: "use_p", scope: !4551, file: !4501, line: 661, type: !2033)
!4557 = !DILocation(line: 0, scope: !4551)
!4558 = !DILocation(line: 665, column: 12, scope: !4559)
!4559 = distinct !DILexicalBlock(scope: !4551, file: !4501, line: 665, column: 7)
!4560 = !DILocation(line: 665, column: 7, scope: !4559)
!4561 = !DILocation(line: 665, column: 7, scope: !4551)
!4562 = !DILocation(line: 667, column: 15, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !4559, file: !4501, line: 666, column: 5)
!4564 = !DILocation(line: 668, column: 30, scope: !4563)
!4565 = !DILocation(line: 668, column: 17, scope: !4563)
!4566 = !DILocation(line: 669, column: 7, scope: !4563)
!4567 = !DILocation(line: 671, column: 12, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !4551, file: !4501, line: 671, column: 7)
!4569 = !DILocation(line: 671, column: 25, scope: !4568)
!4570 = !DILocation(line: 671, column: 18, scope: !4568)
!4571 = !DILocation(line: 671, column: 7, scope: !4551)
!4572 = !DILocation(line: 673, column: 14, scope: !4573)
!4573 = distinct !DILexicalBlock(scope: !4568, file: !4501, line: 672, column: 5)
!4574 = !DILocation(line: 673, column: 7, scope: !4573)
!4575 = !DILocation(line: 675, column: 8, scope: !4551)
!4576 = !DILocation(line: 675, column: 13, scope: !4551)
!4577 = !DILocation(line: 676, column: 3, scope: !4551)
!4578 = !DILocation(line: 677, column: 1, scope: !4551)
!4579 = distinct !DISubprogram(name: "gsi_next", scope: !463, file: !463, line: 4485, type: !4580, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4583)
!4580 = !DISubroutineType(types: !4581)
!4581 = !{null, !4582}
!4582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4583 = !{!4584}
!4584 = !DILocalVariable(name: "i", arg: 1, scope: !4579, file: !463, line: 4485, type: !4582)
!4585 = !DILocation(line: 0, scope: !4579)
!4586 = !DILocation(line: 4487, column: 15, scope: !4579)
!4587 = !DILocation(line: 4487, column: 20, scope: !4579)
!4588 = !DILocation(line: 4487, column: 10, scope: !4579)
!4589 = !DILocation(line: 4488, column: 1, scope: !4579)
!4590 = distinct !DISubprogram(name: "gsi_start_bb", scope: !463, file: !463, line: 4418, type: !4591, scopeLine: 4419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4593)
!4591 = !DISubroutineType(types: !4592)
!4592 = !{!4075, !814}
!4593 = !{!4594, !4595, !4596}
!4594 = !DILocalVariable(name: "bb", arg: 1, scope: !4590, file: !463, line: 4418, type: !814)
!4595 = !DILocalVariable(name: "i", scope: !4590, file: !463, line: 4420, type: !4075)
!4596 = !DILocalVariable(name: "seq", scope: !4590, file: !463, line: 4421, type: !841)
!4597 = !DILocation(line: 0, scope: !4590)
!4598 = !DILocation(line: 4420, column: 24, scope: !4590)
!4599 = !DILocation(line: 4423, column: 9, scope: !4590)
!4600 = !DILocation(line: 4424, column: 11, scope: !4590)
!4601 = !DILocation(line: 4424, column: 5, scope: !4590)
!4602 = !DILocation(line: 4424, column: 9, scope: !4590)
!4603 = !DILocation(line: 4425, column: 5, scope: !4590)
!4604 = !DILocation(line: 4425, column: 9, scope: !4590)
!4605 = !DILocation(line: 4426, column: 5, scope: !4590)
!4606 = !DILocation(line: 4426, column: 8, scope: !4590)
!4607 = !DILocation(line: 4429, column: 1, scope: !4590)
!4608 = distinct !DISubprogram(name: "scan_stmt_for_static_refs", scope: !3, file: !3, line: 445, type: !4609, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4611)
!4609 = !DISubroutineType(types: !4610)
!4610 = !{!556, !4582, !552}
!4611 = !{!4612, !4613, !4614, !4615}
!4612 = !DILocalVariable(name: "gsip", arg: 1, scope: !4608, file: !3, line: 445, type: !4582)
!4613 = !DILocalVariable(name: "fn", arg: 2, scope: !4608, file: !3, line: 446, type: !552)
!4614 = !DILocalVariable(name: "stmt", scope: !4608, file: !3, line: 448, type: !851)
!4615 = !DILocalVariable(name: "local", scope: !4608, file: !3, line: 449, type: !2020)
!4616 = !DILocation(line: 0, scope: !4608)
!4617 = !DILocation(line: 448, column: 17, scope: !4608)
!4618 = !DILocation(line: 451, column: 7, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !4608, file: !3, line: 451, column: 7)
!4620 = !DILocation(line: 451, column: 7, scope: !4608)
!4621 = !DILocation(line: 454, column: 7, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4608, file: !3, line: 454, column: 7)
!4623 = !DILocation(line: 454, column: 7, scope: !4608)
!4624 = !DILocation(line: 455, column: 13, scope: !4622)
!4625 = !DILocation(line: 455, column: 43, scope: !4622)
!4626 = !DILocation(line: 455, column: 5, scope: !4622)
!4627 = !DILocation(line: 458, column: 3, scope: !4608)
!4628 = !DILocation(line: 461, column: 7, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !4608, file: !3, line: 461, column: 7)
!4630 = !DILocation(line: 461, column: 7, scope: !4608)
!4631 = !DILocation(line: 462, column: 5, scope: !4629)
!4632 = !DILocation(line: 463, column: 12, scope: !4633)
!4633 = distinct !DILexicalBlock(scope: !4629, file: !3, line: 463, column: 12)
!4634 = !DILocation(line: 463, column: 31, scope: !4633)
!4635 = !DILocation(line: 463, column: 12, scope: !4629)
!4636 = !DILocation(line: 464, column: 5, scope: !4633)
!4637 = !DILocation(line: 467, column: 1, scope: !4608)
!4638 = distinct !DISubprogram(name: "gimple_phi_result", scope: !463, file: !463, line: 3071, type: !4639, scopeLine: 3072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4642)
!4639 = !DISubroutineType(types: !4640)
!4640 = !{!556, !4641}
!4641 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !557, line: 60, baseType: !2036)
!4642 = !{!4643}
!4643 = !DILocalVariable(name: "gs", arg: 1, scope: !4638, file: !463, line: 3071, type: !4641)
!4644 = !DILocation(line: 0, scope: !4638)
!4645 = !DILocation(line: 3074, column: 25, scope: !4638)
!4646 = !DILocation(line: 3074, column: 3, scope: !4638)
!4647 = distinct !DISubprogram(name: "clear_and_done_ssa_iter", scope: !4501, file: !4501, line: 729, type: !4648, scopeLine: 730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4650)
!4648 = !DISubroutineType(types: !4649)
!4649 = !{null, !4504}
!4650 = !{!4651}
!4651 = !DILocalVariable(name: "ptr", arg: 1, scope: !4647, file: !4501, line: 729, type: !4504)
!4652 = !DILocation(line: 0, scope: !4647)
!4653 = !DILocation(line: 731, column: 8, scope: !4647)
!4654 = !DILocation(line: 731, column: 13, scope: !4647)
!4655 = !DILocation(line: 732, column: 8, scope: !4647)
!4656 = !DILocation(line: 732, column: 13, scope: !4647)
!4657 = !DILocation(line: 733, column: 8, scope: !4647)
!4658 = !DILocation(line: 733, column: 18, scope: !4647)
!4659 = !DILocation(line: 734, column: 8, scope: !4647)
!4660 = !DILocation(line: 734, column: 14, scope: !4647)
!4661 = !DILocation(line: 735, column: 8, scope: !4647)
!4662 = !DILocation(line: 735, column: 16, scope: !4647)
!4663 = !DILocation(line: 736, column: 8, scope: !4647)
!4664 = !DILocation(line: 736, column: 17, scope: !4647)
!4665 = !DILocation(line: 737, column: 8, scope: !4647)
!4666 = !DILocation(line: 737, column: 13, scope: !4647)
!4667 = !DILocation(line: 738, column: 1, scope: !4647)
!4668 = distinct !DISubprogram(name: "gimple_phi_num_args", scope: !463, file: !463, line: 3061, type: !4669, scopeLine: 3062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4671)
!4669 = !DISubroutineType(types: !4670)
!4670 = !{!7, !4641}
!4671 = !{!4672}
!4672 = !DILocalVariable(name: "gs", arg: 1, scope: !4668, file: !463, line: 3061, type: !4641)
!4673 = !DILocation(line: 0, scope: !4668)
!4674 = !DILocation(line: 3064, column: 25, scope: !4668)
!4675 = !DILocation(line: 3064, column: 3, scope: !4668)
!4676 = distinct !DISubprogram(name: "gimple_phi_arg_imm_use_ptr", scope: !4501, file: !4501, line: 442, type: !4677, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4679)
!4677 = !DISubroutineType(types: !4678)
!4678 = !{!2033, !851, !544}
!4679 = !{!4680, !4681}
!4680 = !DILocalVariable(name: "gs", arg: 1, scope: !4676, file: !4501, line: 442, type: !851)
!4681 = !DILocalVariable(name: "i", arg: 2, scope: !4676, file: !4501, line: 442, type: !544)
!4682 = !DILocation(line: 0, scope: !4676)
!4683 = !DILocation(line: 444, column: 11, scope: !4676)
!4684 = !DILocation(line: 444, column: 35, scope: !4676)
!4685 = !DILocation(line: 444, column: 3, scope: !4676)
!4686 = distinct !DISubprogram(name: "gimple_phi_arg", scope: !463, file: !463, line: 3100, type: !4687, scopeLine: 3101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4690)
!4687 = !DISubroutineType(types: !4688)
!4688 = !{!4689, !851, !7}
!4689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!4690 = !{!4691, !4692}
!4691 = !DILocalVariable(name: "gs", arg: 1, scope: !4686, file: !463, line: 3100, type: !851)
!4692 = !DILocalVariable(name: "index", arg: 2, scope: !4686, file: !463, line: 3100, type: !7)
!4693 = !DILocation(line: 0, scope: !4686)
!4694 = !DILocation(line: 3103, column: 3, scope: !4686)
!4695 = !DILocation(line: 3104, column: 12, scope: !4686)
!4696 = !DILocation(line: 3104, column: 3, scope: !4686)
!4697 = distinct !DISubprogram(name: "bb_seq", scope: !463, file: !463, line: 237, type: !4698, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4703)
!4698 = !DISubroutineType(types: !4699)
!4699 = !{!841, !4700}
!4700 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !557, line: 112, baseType: !4701)
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4702, size: 64)
!4702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !816)
!4703 = !{!4704}
!4704 = !DILocalVariable(name: "bb", arg: 1, scope: !4697, file: !463, line: 237, type: !4700)
!4705 = !DILocation(line: 0, scope: !4697)
!4706 = !DILocation(line: 239, column: 17, scope: !4697)
!4707 = !DILocation(line: 239, column: 23, scope: !4697)
!4708 = !DILocation(line: 239, column: 33, scope: !4697)
!4709 = !DILocation(line: 239, column: 43, scope: !4697)
!4710 = !DILocation(line: 239, column: 36, scope: !4697)
!4711 = !DILocation(line: 239, column: 10, scope: !4697)
!4712 = !DILocation(line: 239, column: 68, scope: !4697)
!4713 = !DILocation(line: 239, column: 3, scope: !4697)
!4714 = distinct !DISubprogram(name: "gimple_seq_first", scope: !463, file: !463, line: 159, type: !4715, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4720)
!4715 = !DISubroutineType(types: !4716)
!4716 = !{!846, !4717}
!4717 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !557, line: 67, baseType: !4718)
!4718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4719, size: 64)
!4719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !843)
!4720 = !{!4721}
!4721 = !DILocalVariable(name: "s", arg: 1, scope: !4714, file: !463, line: 159, type: !4717)
!4722 = !DILocation(line: 0, scope: !4714)
!4723 = !DILocation(line: 161, column: 10, scope: !4714)
!4724 = !DILocation(line: 161, column: 17, scope: !4714)
!4725 = !DILocation(line: 161, column: 3, scope: !4714)
!4726 = distinct !DISubprogram(name: "is_gimple_debug", scope: !463, file: !463, line: 3249, type: !4727, scopeLine: 3250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4729)
!4727 = !DISubroutineType(types: !4728)
!4728 = !{!543, !4641}
!4729 = !{!4730}
!4730 = !DILocalVariable(name: "gs", arg: 1, scope: !4726, file: !463, line: 3249, type: !4641)
!4731 = !DILocation(line: 0, scope: !4726)
!4732 = !DILocation(line: 3251, column: 10, scope: !4726)
!4733 = !DILocation(line: 3251, column: 27, scope: !4726)
!4734 = !DILocation(line: 3251, column: 3, scope: !4726)
!4735 = distinct !DISubprogram(name: "mark_load", scope: !3, file: !3, line: 364, type: !4736, scopeLine: 365, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4738)
!4736 = !DISubroutineType(types: !4737)
!4737 = !{!543, !851, !556, !548}
!4738 = !{!4739, !4740, !4741, !4742}
!4739 = !DILocalVariable(name: "stmt", arg: 1, scope: !4735, file: !3, line: 364, type: !851)
!4740 = !DILocalVariable(name: "t", arg: 2, scope: !4735, file: !3, line: 364, type: !556)
!4741 = !DILocalVariable(name: "data", arg: 3, scope: !4735, file: !3, line: 364, type: !548)
!4742 = !DILocalVariable(name: "local", scope: !4735, file: !3, line: 366, type: !2020)
!4743 = !DILocation(line: 0, scope: !4735)
!4744 = !DILocation(line: 367, column: 7, scope: !4745)
!4745 = distinct !DILexicalBlock(scope: !4735, file: !3, line: 367, column: 7)
!4746 = !DILocation(line: 367, column: 21, scope: !4745)
!4747 = !DILocation(line: 368, column: 7, scope: !4745)
!4748 = !DILocation(line: 368, column: 10, scope: !4745)
!4749 = !DILocation(line: 367, column: 7, scope: !4735)
!4750 = !DILocation(line: 369, column: 28, scope: !4745)
!4751 = !DILocation(line: 369, column: 42, scope: !4745)
!4752 = !DILocation(line: 369, column: 5, scope: !4745)
!4753 = !DILocation(line: 370, column: 3, scope: !4735)
!4754 = distinct !DISubprogram(name: "mark_store", scope: !3, file: !3, line: 376, type: !4736, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4755)
!4755 = !{!4756, !4757, !4758, !4759}
!4756 = !DILocalVariable(name: "stmt", arg: 1, scope: !4754, file: !3, line: 376, type: !851)
!4757 = !DILocalVariable(name: "t", arg: 2, scope: !4754, file: !3, line: 376, type: !556)
!4758 = !DILocalVariable(name: "data", arg: 3, scope: !4754, file: !3, line: 376, type: !548)
!4759 = !DILocalVariable(name: "local", scope: !4754, file: !3, line: 378, type: !2020)
!4760 = !DILocation(line: 0, scope: !4754)
!4761 = !DILocation(line: 379, column: 7, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4754, file: !3, line: 379, column: 7)
!4763 = !DILocation(line: 379, column: 21, scope: !4762)
!4764 = !DILocation(line: 380, column: 7, scope: !4762)
!4765 = !DILocation(line: 380, column: 10, scope: !4762)
!4766 = !DILocation(line: 379, column: 7, scope: !4754)
!4767 = !DILocation(line: 382, column: 11, scope: !4768)
!4768 = distinct !DILexicalBlock(scope: !4769, file: !3, line: 382, column: 11)
!4769 = distinct !DILexicalBlock(scope: !4762, file: !3, line: 381, column: 5)
!4770 = !DILocation(line: 382, column: 11, scope: !4769)
!4771 = !DILocation(line: 383, column: 25, scope: !4768)
!4772 = !DILocation(line: 383, column: 42, scope: !4768)
!4773 = !DILocation(line: 383, column: 2, scope: !4768)
!4774 = !DILocation(line: 386, column: 11, scope: !4775)
!4775 = distinct !DILexicalBlock(scope: !4769, file: !3, line: 386, column: 11)
!4776 = !DILocation(line: 386, column: 11, scope: !4769)
!4777 = !DILocation(line: 387, column: 42, scope: !4775)
!4778 = !DILocation(line: 387, column: 2, scope: !4775)
!4779 = !DILocation(line: 389, column: 3, scope: !4754)
!4780 = distinct !DISubprogram(name: "mark_address", scope: !3, file: !3, line: 352, type: !4736, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4781)
!4781 = !{!4782, !4783, !4784}
!4782 = !DILocalVariable(name: "stmt", arg: 1, scope: !4780, file: !3, line: 352, type: !851)
!4783 = !DILocalVariable(name: "addr", arg: 2, scope: !4780, file: !3, line: 352, type: !556)
!4784 = !DILocalVariable(name: "data", arg: 3, scope: !4780, file: !3, line: 353, type: !548)
!4785 = !DILocation(line: 0, scope: !4780)
!4786 = !DILocation(line: 355, column: 3, scope: !4780)
!4787 = !DILocation(line: 355, column: 10, scope: !4780)
!4788 = !DILocation(line: 356, column: 12, scope: !4780)
!4789 = distinct !{!4789, !4786, !4788}
!4790 = !DILocation(line: 357, column: 3, scope: !4780)
!4791 = !DILocation(line: 358, column: 3, scope: !4780)
!4792 = distinct !DISubprogram(name: "is_gimple_call", scope: !463, file: !463, line: 1870, type: !4727, scopeLine: 1871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4793)
!4793 = !{!4794}
!4794 = !DILocalVariable(name: "gs", arg: 1, scope: !4792, file: !463, line: 1870, type: !4641)
!4795 = !DILocation(line: 0, scope: !4792)
!4796 = !DILocation(line: 1872, column: 10, scope: !4792)
!4797 = !DILocation(line: 1872, column: 27, scope: !4792)
!4798 = !DILocation(line: 1872, column: 3, scope: !4792)
!4799 = distinct !DISubprogram(name: "check_call", scope: !3, file: !3, line: 415, type: !4800, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4802)
!4800 = !DISubroutineType(types: !4801)
!4801 = !{null, !2020, !851}
!4802 = !{!4803, !4804, !4805, !4806}
!4803 = !DILocalVariable(name: "local", arg: 1, scope: !4799, file: !3, line: 415, type: !2020)
!4804 = !DILocalVariable(name: "stmt", arg: 2, scope: !4799, file: !3, line: 415, type: !851)
!4805 = !DILocalVariable(name: "flags", scope: !4799, file: !3, line: 417, type: !544)
!4806 = !DILocalVariable(name: "callee_t", scope: !4799, file: !3, line: 418, type: !556)
!4807 = !DILocation(line: 0, scope: !4799)
!4808 = !DILocation(line: 417, column: 15, scope: !4799)
!4809 = !DILocation(line: 418, column: 19, scope: !4799)
!4810 = !DILocation(line: 422, column: 8, scope: !4811)
!4811 = distinct !DILexicalBlock(scope: !4799, file: !3, line: 422, column: 7)
!4812 = !DILocation(line: 424, column: 17, scope: !4813)
!4813 = distinct !DILexicalBlock(scope: !4814, file: !3, line: 424, column: 11)
!4814 = distinct !DILexicalBlock(scope: !4811, file: !3, line: 423, column: 5)
!4815 = !DILocation(line: 422, column: 7, scope: !4799)
!4816 = !DILocation(line: 426, column: 22, scope: !4817)
!4817 = distinct !DILexicalBlock(scope: !4813, file: !3, line: 426, column: 16)
!4818 = !DILocation(line: 0, scope: !4817)
!4819 = !DILocation(line: 433, column: 15, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4821, file: !3, line: 433, column: 8)
!4821 = distinct !DILexicalBlock(scope: !4817, file: !3, line: 429, column: 2)
!4822 = !DILocation(line: 434, column: 8, scope: !4820)
!4823 = !DILocation(line: 426, column: 16, scope: !4813)
!4824 = !DILocation(line: 435, column: 13, scope: !4820)
!4825 = !DILocation(line: 435, column: 29, scope: !4820)
!4826 = !DILocation(line: 435, column: 6, scope: !4820)
!4827 = !DILocation(line: 438, column: 1, scope: !4799)
!4828 = distinct !DISubprogram(name: "gimple_code", scope: !463, file: !463, line: 1052, type: !4829, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4831)
!4829 = !DISubroutineType(types: !4830)
!4830 = !{!489, !4641}
!4831 = !{!4832}
!4832 = !DILocalVariable(name: "g", arg: 1, scope: !4828, file: !463, line: 1052, type: !4641)
!4833 = !DILocation(line: 0, scope: !4828)
!4834 = !DILocation(line: 1054, column: 20, scope: !4828)
!4835 = !DILocation(line: 1054, column: 3, scope: !4828)
!4836 = distinct !DISubprogram(name: "check_asm_memory_clobber", scope: !3, file: !3, line: 395, type: !4800, scopeLine: 396, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4837)
!4837 = !{!4838, !4839, !4840, !4841}
!4838 = !DILocalVariable(name: "local", arg: 1, scope: !4836, file: !3, line: 395, type: !2020)
!4839 = !DILocalVariable(name: "stmt", arg: 2, scope: !4836, file: !3, line: 395, type: !851)
!4840 = !DILocalVariable(name: "i", scope: !4836, file: !3, line: 397, type: !996)
!4841 = !DILocalVariable(name: "op", scope: !4836, file: !3, line: 398, type: !556)
!4842 = !DILocation(line: 0, scope: !4836)
!4843 = !DILocation(line: 0, scope: !4844)
!4844 = distinct !DILexicalBlock(scope: !4845, file: !3, line: 404, column: 2)
!4845 = distinct !DILexicalBlock(scope: !4846, file: !3, line: 403, column: 11)
!4846 = distinct !DILexicalBlock(scope: !4847, file: !3, line: 401, column: 5)
!4847 = distinct !DILexicalBlock(scope: !4848, file: !3, line: 400, column: 3)
!4848 = distinct !DILexicalBlock(scope: !4836, file: !3, line: 400, column: 3)
!4849 = !DILocation(line: 400, column: 8, scope: !4848)
!4850 = !DILocation(line: 0, scope: !4848)
!4851 = !DILocation(line: 400, column: 19, scope: !4847)
!4852 = !DILocation(line: 400, column: 17, scope: !4847)
!4853 = !DILocation(line: 400, column: 3, scope: !4848)
!4854 = !DILocation(line: 402, column: 41, scope: !4846)
!4855 = !DILocation(line: 402, column: 12, scope: !4846)
!4856 = !DILocation(line: 403, column: 28, scope: !4845)
!4857 = !DILocation(line: 403, column: 45, scope: !4845)
!4858 = !DILocation(line: 403, column: 11, scope: !4845)
!4859 = !DILocation(line: 403, column: 71, scope: !4845)
!4860 = !DILocation(line: 403, column: 11, scope: !4846)
!4861 = !DILocation(line: 406, column: 26, scope: !4844)
!4862 = !DILocation(line: 407, column: 27, scope: !4844)
!4863 = !DILocation(line: 408, column: 2, scope: !4844)
!4864 = !DILocation(line: 400, column: 49, scope: !4847)
!4865 = !DILocation(line: 400, column: 3, scope: !4847)
!4866 = distinct !{!4866, !4853, !4867}
!4867 = !DILocation(line: 409, column: 5, scope: !4848)
!4868 = !DILocation(line: 410, column: 1, scope: !4836)
!4869 = distinct !DISubprogram(name: "handled_component_p", scope: !6, file: !6, line: 4551, type: !4870, scopeLine: 4552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4875)
!4870 = !DISubroutineType(types: !4871)
!4871 = !{!543, !4872}
!4872 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_tree", file: !557, line: 59, baseType: !4873)
!4873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4874, size: 64)
!4874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !559)
!4875 = !{!4876}
!4876 = !DILocalVariable(name: "t", arg: 1, scope: !4869, file: !6, line: 4551, type: !4872)
!4877 = !DILocation(line: 0, scope: !4869)
!4878 = !DILocation(line: 4553, column: 11, scope: !4869)
!4879 = !DILocation(line: 4553, column: 3, scope: !4869)
!4880 = !DILocation(line: 4565, column: 7, scope: !4881)
!4881 = distinct !DILexicalBlock(scope: !4869, file: !6, line: 4554, column: 5)
!4882 = !DILocation(line: 0, scope: !4881)
!4883 = !DILocation(line: 4567, column: 1, scope: !4869)
!4884 = distinct !DISubprogram(name: "gimple_call_fndecl", scope: !463, file: !463, line: 1954, type: !4639, scopeLine: 1955, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4885)
!4885 = !{!4886, !4887}
!4886 = !DILocalVariable(name: "gs", arg: 1, scope: !4884, file: !463, line: 1954, type: !4641)
!4887 = !DILocalVariable(name: "addr", scope: !4884, file: !463, line: 1956, type: !556)
!4888 = !DILocation(line: 0, scope: !4884)
!4889 = !DILocation(line: 1956, column: 15, scope: !4884)
!4890 = !DILocation(line: 1957, column: 7, scope: !4891)
!4891 = distinct !DILexicalBlock(scope: !4884, file: !463, line: 1957, column: 7)
!4892 = !DILocation(line: 1957, column: 24, scope: !4891)
!4893 = !DILocation(line: 1957, column: 7, scope: !4884)
!4894 = !DILocation(line: 1958, column: 12, scope: !4891)
!4895 = !DILocation(line: 1958, column: 5, scope: !4891)
!4896 = !DILocation(line: 1960, column: 1, scope: !4884)
!4897 = distinct !DISubprogram(name: "gimple_call_fn", scope: !463, file: !463, line: 1911, type: !4639, scopeLine: 1912, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4898)
!4898 = !{!4899}
!4899 = !DILocalVariable(name: "gs", arg: 1, scope: !4897, file: !463, line: 1911, type: !4641)
!4900 = !DILocation(line: 0, scope: !4897)
!4901 = !DILocation(line: 1914, column: 10, scope: !4897)
!4902 = !DILocation(line: 1914, column: 3, scope: !4897)
!4903 = distinct !DISubprogram(name: "gimple_op", scope: !463, file: !463, line: 1631, type: !4904, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4906)
!4904 = !DISubroutineType(types: !4905)
!4905 = !{!556, !4641, !7}
!4906 = !{!4907, !4908}
!4907 = !DILocalVariable(name: "gs", arg: 1, scope: !4903, file: !463, line: 1631, type: !4641)
!4908 = !DILocalVariable(name: "i", arg: 2, scope: !4903, file: !463, line: 1631, type: !7)
!4909 = !DILocation(line: 0, scope: !4903)
!4910 = !DILocation(line: 1633, column: 7, scope: !4911)
!4911 = distinct !DILexicalBlock(scope: !4903, file: !463, line: 1633, column: 7)
!4912 = !DILocation(line: 1633, column: 7, scope: !4903)
!4913 = !DILocation(line: 1638, column: 14, scope: !4914)
!4914 = distinct !DILexicalBlock(scope: !4911, file: !463, line: 1634, column: 5)
!4915 = !DILocation(line: 1638, column: 7, scope: !4914)
!4916 = !DILocation(line: 0, scope: !4911)
!4917 = !DILocation(line: 1642, column: 1, scope: !4903)
!4918 = distinct !DISubprogram(name: "gimple_has_ops", scope: !463, file: !463, line: 1274, type: !4727, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4919)
!4919 = !{!4920}
!4920 = !DILocalVariable(name: "g", arg: 1, scope: !4918, file: !463, line: 1274, type: !4641)
!4921 = !DILocation(line: 0, scope: !4918)
!4922 = !DILocation(line: 1276, column: 10, scope: !4918)
!4923 = !DILocation(line: 1276, column: 26, scope: !4918)
!4924 = !DILocation(line: 1276, column: 41, scope: !4918)
!4925 = !DILocation(line: 1276, column: 44, scope: !4918)
!4926 = !DILocation(line: 1276, column: 60, scope: !4918)
!4927 = !DILocation(line: 1276, column: 3, scope: !4918)
!4928 = distinct !DISubprogram(name: "gimple_ops", scope: !463, file: !463, line: 1614, type: !4929, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4931)
!4929 = !DISubroutineType(types: !4930)
!4930 = !{!885, !851}
!4931 = !{!4932, !4933}
!4932 = !DILocalVariable(name: "gs", arg: 1, scope: !4928, file: !463, line: 1614, type: !851)
!4933 = !DILocalVariable(name: "off", scope: !4928, file: !463, line: 1616, type: !996)
!4934 = !DILocation(line: 0, scope: !4928)
!4935 = !DILocation(line: 1621, column: 28, scope: !4928)
!4936 = !DILocation(line: 1621, column: 9, scope: !4928)
!4937 = !DILocation(line: 1622, column: 3, scope: !4928)
!4938 = !DILocation(line: 1624, column: 20, scope: !4928)
!4939 = !DILocation(line: 1624, column: 32, scope: !4928)
!4940 = !DILocation(line: 1624, column: 10, scope: !4928)
!4941 = !DILocation(line: 1624, column: 3, scope: !4928)
!4942 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !463, file: !463, line: 1073, type: !4943, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4945)
!4943 = !DISubroutineType(types: !4944)
!4944 = !{!462, !851}
!4945 = !{!4946}
!4946 = !DILocalVariable(name: "gs", arg: 1, scope: !4942, file: !463, line: 1073, type: !851)
!4947 = !DILocation(line: 0, scope: !4942)
!4948 = !DILocation(line: 1075, column: 24, scope: !4942)
!4949 = !DILocation(line: 1075, column: 10, scope: !4942)
!4950 = !DILocation(line: 1075, column: 3, scope: !4942)
!4951 = distinct !DISubprogram(name: "gss_for_code", scope: !463, file: !463, line: 1061, type: !4952, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4954)
!4952 = !DISubroutineType(types: !4953)
!4953 = !{!462, !489}
!4954 = !{!4955}
!4955 = !DILocalVariable(name: "code", arg: 1, scope: !4951, file: !463, line: 1061, type: !489)
!4956 = !DILocation(line: 0, scope: !4951)
!4957 = !DILocation(line: 1066, column: 10, scope: !4951)
!4958 = !DILocation(line: 1066, column: 3, scope: !4951)
!4959 = distinct !DISubprogram(name: "gimple_asm_nclobbers", scope: !463, file: !463, line: 2601, type: !4669, scopeLine: 2602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4960)
!4960 = !{!4961}
!4961 = !DILocalVariable(name: "gs", arg: 1, scope: !4959, file: !463, line: 2601, type: !4641)
!4962 = !DILocation(line: 0, scope: !4959)
!4963 = !DILocation(line: 2604, column: 14, scope: !4959)
!4964 = !DILocation(line: 2604, column: 25, scope: !4959)
!4965 = !DILocation(line: 2604, column: 10, scope: !4959)
!4966 = !DILocation(line: 2604, column: 3, scope: !4959)
!4967 = distinct !DISubprogram(name: "gimple_asm_clobber_op", scope: !463, file: !463, line: 2685, type: !4904, scopeLine: 2686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4968)
!4968 = !{!4969, !4970}
!4969 = !DILocalVariable(name: "gs", arg: 1, scope: !4967, file: !463, line: 2685, type: !4641)
!4970 = !DILocalVariable(name: "index", arg: 2, scope: !4967, file: !463, line: 2685, type: !7)
!4971 = !DILocation(line: 0, scope: !4967)
!4972 = !DILocation(line: 2688, column: 3, scope: !4967)
!4973 = !DILocation(line: 2689, column: 48, scope: !4967)
!4974 = !DILocation(line: 2689, column: 33, scope: !4967)
!4975 = !DILocation(line: 2689, column: 31, scope: !4967)
!4976 = !DILocation(line: 2689, column: 68, scope: !4967)
!4977 = !DILocation(line: 2689, column: 53, scope: !4967)
!4978 = !DILocation(line: 2689, column: 51, scope: !4967)
!4979 = !DILocation(line: 2689, column: 10, scope: !4967)
!4980 = !DILocation(line: 2689, column: 3, scope: !4967)
!4981 = distinct !DISubprogram(name: "csi_start", scope: !250, file: !250, line: 668, type: !4982, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4984)
!4982 = !DISubroutineType(types: !4983)
!4983 = !{!3349, !3306}
!4984 = !{!4985, !4986}
!4985 = !DILocalVariable(name: "set", arg: 1, scope: !4981, file: !250, line: 668, type: !3306)
!4986 = !DILocalVariable(name: "csi", scope: !4981, file: !250, line: 670, type: !3349)
!4987 = !DILocation(line: 0, scope: !4981)
!4988 = !DILocation(line: 672, column: 7, scope: !4981)
!4989 = !DILocation(line: 672, column: 11, scope: !4981)
!4990 = !DILocation(line: 673, column: 7, scope: !4981)
!4991 = !DILocation(line: 673, column: 13, scope: !4981)
!4992 = !DILocation(line: 674, column: 3, scope: !4981)
!4993 = distinct !DISubprogram(name: "csi_end_p", scope: !250, file: !250, line: 647, type: !4994, scopeLine: 648, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4996)
!4994 = !DISubroutineType(types: !4995)
!4995 = !{!543, !3349}
!4996 = !{!4997}
!4997 = !DILocalVariable(name: "csi", arg: 1, scope: !4993, file: !250, line: 647, type: !3349)
!4998 = !DILocation(line: 649, column: 23, scope: !4993)
!4999 = !DILocation(line: 649, column: 20, scope: !4993)
!5000 = !DILocation(line: 649, column: 10, scope: !4993)
!5001 = !DILocation(line: 649, column: 3, scope: !4993)
!5002 = distinct !DISubprogram(name: "write_node_summary_p", scope: !3, file: !3, line: 1030, type: !5003, scopeLine: 1031, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5005)
!5003 = !DISubroutineType(types: !5004)
!5004 = !{!543, !552}
!5005 = !{!5006}
!5006 = !DILocalVariable(name: "node", arg: 1, scope: !5002, file: !3, line: 1030, type: !552)
!5007 = !DILocation(line: 0, scope: !5002)
!5008 = !DILocation(line: 1032, column: 3, scope: !5002)
!5009 = !DILocation(line: 1033, column: 17, scope: !5002)
!5010 = !DILocation(line: 1033, column: 11, scope: !5002)
!5011 = !DILocation(line: 1034, column: 4, scope: !5002)
!5012 = !DILocation(line: 1034, column: 7, scope: !5002)
!5013 = !DILocation(line: 1034, column: 48, scope: !5002)
!5014 = !DILocation(line: 1035, column: 4, scope: !5002)
!5015 = !DILocation(line: 1035, column: 7, scope: !5002)
!5016 = !DILocation(line: 1035, column: 38, scope: !5002)
!5017 = !DILocation(line: 1033, column: 3, scope: !5002)
!5018 = distinct !DISubprogram(name: "csi_node", scope: !250, file: !250, line: 661, type: !5019, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5021)
!5019 = !DISubroutineType(types: !5020)
!5020 = !{!552, !3349}
!5021 = !{!5022}
!5022 = !DILocalVariable(name: "csi", arg: 1, scope: !5018, file: !250, line: 661, type: !3349)
!5023 = !DILocation(line: 663, column: 10, scope: !5018)
!5024 = !DILocation(line: 663, column: 3, scope: !5018)
!5025 = distinct !DISubprogram(name: "csi_next", scope: !250, file: !250, line: 654, type: !5026, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5029)
!5026 = !DISubroutineType(types: !5027)
!5027 = !{null, !5028}
!5028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!5029 = !{!5030}
!5030 = !DILocalVariable(name: "csi", arg: 1, scope: !5025, file: !250, line: 654, type: !5028)
!5031 = !DILocation(line: 0, scope: !5025)
!5032 = !DILocation(line: 656, column: 8, scope: !5025)
!5033 = !DILocation(line: 656, column: 13, scope: !5025)
!5034 = !DILocation(line: 657, column: 1, scope: !5025)
!5035 = distinct !DISubprogram(name: "VEC_cgraph_node_ptr_base_length", scope: !250, file: !250, line: 270, type: !5036, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5040)
!5036 = !DISubroutineType(types: !5037)
!5037 = !{!7, !5038}
!5038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5039, size: 64)
!5039 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1826)
!5040 = !{!5041}
!5041 = !DILocalVariable(name: "vec_", arg: 1, scope: !5035, file: !250, line: 270, type: !5038)
!5042 = !DILocation(line: 0, scope: !5035)
!5043 = !DILocation(line: 270, column: 1, scope: !5035)
!5044 = distinct !DISubprogram(name: "VEC_cgraph_node_ptr_base_index", scope: !250, file: !250, line: 270, type: !5045, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5047)
!5045 = !DISubroutineType(types: !5046)
!5046 = !{!1833, !5038, !7}
!5047 = !{!5048, !5049}
!5048 = !DILocalVariable(name: "vec_", arg: 1, scope: !5044, file: !250, line: 270, type: !5038)
!5049 = !DILocalVariable(name: "ix_", arg: 2, scope: !5044, file: !250, line: 270, type: !7)
!5050 = !DILocation(line: 0, scope: !5044)
!5051 = !DILocation(line: 270, column: 1, scope: !5044)
!5052 = distinct !DISubprogram(name: "lto_file_decl_data_get_var_decl", scope: !528, file: !528, line: 1044, type: !5053, scopeLine: 1044, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5055)
!5053 = !DISubroutineType(types: !5054)
!5054 = !{!556, !1873, !7}
!5055 = !{!5056, !5057, !5058}
!5056 = !DILocalVariable(name: "data", arg: 1, scope: !5052, file: !528, line: 1044, type: !1873)
!5057 = !DILocalVariable(name: "idx", arg: 2, scope: !5052, file: !528, line: 1044, type: !7)
!5058 = !DILocalVariable(name: "state", scope: !5052, file: !528, line: 1044, type: !1877)
!5059 = !DILocation(line: 0, scope: !5052)
!5060 = !DILocation(line: 1044, column: 1, scope: !5052)
