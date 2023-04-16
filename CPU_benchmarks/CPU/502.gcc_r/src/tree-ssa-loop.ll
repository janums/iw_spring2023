; ModuleID = 'tree-ssa-loop.bc'
source_filename = "tree-ssa-loop.c"
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@pass_tree_loop = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8 ()* @gate_tree_loop, i32 ()* null, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 81, i32 8, i32 0, i32 0, i32 2, i32 7 } }, align 8, !dbg !0
@.str.1 = private unnamed_addr constant [9 x i8] c"loopinit\00", align 1
@pass_tree_loop_init = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8 ()* null, i32 ()* @tree_ssa_loop_init, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 100, i32 8, i32 0, i32 0, i32 0, i32 65 } }, align 8, !dbg !584
@.str.2 = private unnamed_addr constant [4 x i8] c"lim\00", align 1
@pass_lim = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8 ()* @gate_tree_ssa_loop_im, i32 ()* @tree_ssa_loop_im, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 83, i32 8, i32 0, i32 0, i32 0, i32 65 } }, align 8, !dbg !612
@.str.3 = private unnamed_addr constant [9 x i8] c"unswitch\00", align 1
@pass_tree_unswitch = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8 ()* @gate_tree_ssa_loop_unswitch, i32 ()* @tree_ssa_loop_unswitch, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 86, i32 8, i32 0, i32 0, i32 0, i32 67 } }, align 8, !dbg !614
@.str.4 = private unnamed_addr constant [5 x i8] c"pcom\00", align 1
@pass_predcom = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8 ()* @gate_tree_predictive_commoning, i32 ()* @run_tree_predictive_commoning, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 99, i32 8, i32 0, i32 0, i32 0, i32 16449 } }, align 8, !dbg !616
@.str.5 = private unnamed_addr constant [5 x i8] c"vect\00", align 1
@pass_vectorize = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8 ()* @gate_tree_vectorize, i32 ()* @tree_vectorize, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 89, i32 40, i32 0, i32 0, i32 64, i32 2051 } }, align 8, !dbg !618
@.str.6 = private unnamed_addr constant [7 x i8] c"ltrans\00", align 1
@pass_linear_transform = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8 ()* @gate_tree_linear_transform, i32 ()* @tree_linear_transform, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 94, i32 40, i32 0, i32 0, i32 0, i32 16451 } }, align 8, !dbg !620
@.str.7 = private unnamed_addr constant [9 x i8] c"graphite\00", align 1
@pass_graphite_transforms = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8 ()* @gate_graphite_transforms, i32 ()* @graphite_transforms, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 91, i32 40, i32 0, i32 0, i32 0, i32 64 } }, align 8, !dbg !622
@.str.8 = private unnamed_addr constant [5 x i8] c"ckdd\00", align 1
@pass_check_data_deps = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8 ()* @gate_check_data_deps, i32 ()* @check_data_deps, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 96, i32 40, i32 0, i32 0, i32 0, i32 1 } }, align 8, !dbg !624
@.str.9 = private unnamed_addr constant [8 x i8] c"ivcanon\00", align 1
@pass_iv_canon = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8 ()* @gate_tree_ssa_loop_ivcanon, i32 ()* @tree_ssa_loop_ivcanon, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 84, i32 40, i32 0, i32 0, i32 0, i32 65 } }, align 8, !dbg !626
@.str.10 = private unnamed_addr constant [5 x i8] c"sccp\00", align 1
@pass_scev_cprop = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8 ()* @gate_scev_const_prop, i32 ()* @scev_const_prop, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 85, i32 40, i32 0, i32 0, i32 0, i32 16417 } }, align 8, !dbg !628
@.str.11 = private unnamed_addr constant [15 x i8] c"*record_bounds\00", align 1
@pass_record_bounds = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8 ()* null, i32 ()* @tree_ssa_loop_bounds, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 82, i32 40, i32 0, i32 0, i32 0, i32 0 } }, align 8, !dbg !630
@.str.12 = private unnamed_addr constant [8 x i8] c"cunroll\00", align 1
@pass_complete_unroll = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8 ()* @gate_tree_complete_unroll, i32 ()* @tree_complete_unroll, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 87, i32 40, i32 0, i32 0, i32 0, i32 67 } }, align 8, !dbg !632
@.str.13 = private unnamed_addr constant [9 x i8] c"cunrolli\00", align 1
@pass_complete_unrolli = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8 ()* @gate_tree_complete_unroll_inner, i32 ()* @tree_complete_unroll_inner, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 87, i32 40, i32 0, i32 0, i32 0, i32 67 } }, align 8, !dbg !634
@.str.14 = private unnamed_addr constant [9 x i8] c"parloops\00", align 1
@pass_parallelize_loops = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8 ()* @gate_tree_parallelize_loops, i32 ()* @tree_parallelize_loops, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 88, i32 40, i32 0, i32 0, i32 0, i32 65 } }, align 8, !dbg !636
@.str.15 = private unnamed_addr constant [10 x i8] c"aprefetch\00", align 1
@pass_loop_prefetch = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8 ()* @gate_tree_ssa_loop_prefetch, i32 ()* @tree_ssa_loop_prefetch, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 97, i32 40, i32 0, i32 0, i32 0, i32 65 } }, align 8, !dbg !638
@.str.16 = private unnamed_addr constant [7 x i8] c"ivopts\00", align 1
@pass_iv_optimize = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8 ()* @gate_tree_ssa_loop_ivopts, i32 ()* @tree_ssa_loop_ivopts, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 98, i32 40, i32 0, i32 0, i32 0, i32 2115 } }, align 8, !dbg !640
@.str.17 = private unnamed_addr constant [9 x i8] c"loopdone\00", align 1
@pass_tree_loop_done = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i8 ()* null, i32 ()* @tree_ssa_loop_done, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 101, i32 8, i32 0, i32 0, i32 0, i32 33 } }, align 8, !dbg !642
@flag_tree_loop_optimize = external dso_local local_unnamed_addr global i32, align 4
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@flag_tree_loop_im = external dso_local local_unnamed_addr global i32, align 4
@flag_unswitch_loops = external dso_local local_unnamed_addr global i32, align 4
@flag_predictive_commoning = external dso_local local_unnamed_addr global i32, align 4
@flag_tree_vectorize = external dso_local local_unnamed_addr global i32, align 4
@flag_tree_loop_linear = external dso_local local_unnamed_addr global i32, align 4
@flag_loop_block = external dso_local local_unnamed_addr global i32, align 4
@flag_loop_interchange = external dso_local local_unnamed_addr global i32, align 4
@flag_loop_strip_mine = external dso_local local_unnamed_addr global i32, align 4
@flag_graphite_identity = external dso_local local_unnamed_addr global i32, align 4
@flag_loop_parallelize_all = external dso_local local_unnamed_addr global i32, align 4
@flag_graphite = external dso_local local_unnamed_addr global i32, align 4
@flag_check_data_deps = external dso_local local_unnamed_addr global i32, align 4
@flag_tree_loop_ivcanon = external dso_local local_unnamed_addr global i32, align 4
@flag_tree_scev_cprop = external dso_local local_unnamed_addr global i32, align 4
@flag_unroll_loops = external dso_local local_unnamed_addr global i32, align 4
@flag_peel_loops = external dso_local local_unnamed_addr global i32, align 4
@optimize = external dso_local local_unnamed_addr global i32, align 4
@flag_tree_parallelize_loops = external dso_local local_unnamed_addr global i32, align 4
@flag_prefetch_loop_arrays = external dso_local local_unnamed_addr global i32, align 4
@flag_ivopts = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !648 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !661, metadata !DIExpression()), !dbg !663
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !662, metadata !DIExpression()), !dbg !663
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !664
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !665
  ret i32 %call, !dbg !666
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !667 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !671
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !672
  ret i32 %call, !dbg !673
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !674 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !737, metadata !DIExpression()), !dbg !738
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !739
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !739
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !739
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !739
  %cmp = icmp uge i8* %0, %1, !dbg !739
  %conv1 = zext i1 %cmp to i64, !dbg !739
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !739
  %tobool = icmp eq i64 %expval, 0, !dbg !739
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !739

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !739
  br label %cond.end, !dbg !739

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !739
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !739
  %2 = load i8, i8* %0, align 1, !dbg !739
  %conv3 = zext i8 %2 to i32, !dbg !739
  br label %cond.end, !dbg !739

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !739
  ret i32 %cond, !dbg !740
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !741 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !743, metadata !DIExpression()), !dbg !744
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !745
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !745
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !745
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !745
  %cmp = icmp uge i8* %0, %1, !dbg !745
  %conv1 = zext i1 %cmp to i64, !dbg !745
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !745
  %tobool = icmp eq i64 %expval, 0, !dbg !745
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !745

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !745
  br label %cond.end, !dbg !745

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !745
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !745
  %2 = load i8, i8* %0, align 1, !dbg !745
  %conv3 = zext i8 %2 to i32, !dbg !745
  br label %cond.end, !dbg !745

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !745
  ret i32 %cond, !dbg !746
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !747 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !748
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !748
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !748
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !748
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !748
  %cmp = icmp uge i8* %1, %2, !dbg !748
  %conv1 = zext i1 %cmp to i64, !dbg !748
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !748
  %tobool = icmp eq i64 %expval, 0, !dbg !748
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !748

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #5, !dbg !748
  br label %cond.end, !dbg !748

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !748
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !748
  %3 = load i8, i8* %1, align 1, !dbg !748
  %conv3 = zext i8 %3 to i32, !dbg !748
  br label %cond.end, !dbg !748

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !748
  ret i32 %cond, !dbg !749
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !750 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !754, metadata !DIExpression()), !dbg !755
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !756
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #5, !dbg !757
  ret i32 %call, !dbg !758
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !759 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !763, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !764, metadata !DIExpression()), !dbg !765
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !766
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !766
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !766
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !766
  %cmp = icmp uge i8* %0, %1, !dbg !766
  %conv1 = zext i1 %cmp to i64, !dbg !766
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !766
  %tobool = icmp eq i64 %expval, 0, !dbg !766
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !766

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !766
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !766
  br label %cond.end, !dbg !766

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !766
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !766
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !766
  store i8 %conv2, i8* %0, align 1, !dbg !766
  %conv6 = and i32 %__c, 255, !dbg !766
  br label %cond.end, !dbg !766

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !766
  ret i32 %cond, !dbg !767
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !768 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !770, metadata !DIExpression()), !dbg !772
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !771, metadata !DIExpression()), !dbg !772
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !773
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !773
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !773
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !773
  %cmp = icmp uge i8* %0, %1, !dbg !773
  %conv1 = zext i1 %cmp to i64, !dbg !773
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !773
  %tobool = icmp eq i64 %expval, 0, !dbg !773
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !773

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !773
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !773
  br label %cond.end, !dbg !773

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !773
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !773
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !773
  store i8 %conv2, i8* %0, align 1, !dbg !773
  %conv6 = and i32 %__c, 255, !dbg !773
  br label %cond.end, !dbg !773

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !773
  ret i32 %cond, !dbg !774
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !775 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !777, metadata !DIExpression()), !dbg !778
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !779
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !779
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !779
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !779
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !779
  %cmp = icmp uge i8* %1, %2, !dbg !779
  %conv1 = zext i1 %cmp to i64, !dbg !779
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !779
  %tobool = icmp eq i64 %expval, 0, !dbg !779
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !779

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !779
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #5, !dbg !779
  br label %cond.end, !dbg !779

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !779
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !779
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !779
  store i8 %conv4, i8* %1, align 1, !dbg !779
  %conv6 = and i32 %__c, 255, !dbg !779
  br label %cond.end, !dbg !779

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !779
  ret i32 %cond, !dbg !780
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !781 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !787, metadata !DIExpression()), !dbg !790
  call void @llvm.dbg.value(metadata i64* %__n, metadata !788, metadata !DIExpression()), !dbg !790
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !789, metadata !DIExpression()), !dbg !790
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #5, !dbg !791
  ret i64 %call, !dbg !792
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !793 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !795, metadata !DIExpression()), !dbg !796
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !797
  %0 = load i32, i32* %_flags, align 8, !dbg !797
  %and = lshr i32 %0, 4, !dbg !797
  %and.lobit = and i32 %and, 1, !dbg !797
  ret i32 %and.lobit, !dbg !798
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !799 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !801, metadata !DIExpression()), !dbg !802
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !803
  %0 = load i32, i32* %_flags, align 8, !dbg !803
  %and = lshr i32 %0, 5, !dbg !803
  %and.lobit = and i32 %and, 1, !dbg !803
  ret i32 %and.lobit, !dbg !804
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !805 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !808, metadata !DIExpression()), !dbg !809
  %__c.off = add i32 %__c, 128, !dbg !810
  %0 = icmp ult i32 %__c.off, 384, !dbg !810
  br i1 %0, label %cond.true, label %cond.end, !dbg !810

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #5, !dbg !811
  %1 = load i32*, i32** %call, align 8, !dbg !812
  %idxprom = sext i32 %__c to i64, !dbg !813
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !813
  %2 = load i32, i32* %arrayidx, align 4, !dbg !813
  br label %cond.end, !dbg !814

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !814
  ret i32 %cond, !dbg !815
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !816 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !818, metadata !DIExpression()), !dbg !819
  %__c.off = add i32 %__c, 128, !dbg !820
  %0 = icmp ult i32 %__c.off, 384, !dbg !820
  br i1 %0, label %cond.true, label %cond.end, !dbg !820

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #5, !dbg !821
  %1 = load i32*, i32** %call, align 8, !dbg !822
  %idxprom = sext i32 %__c to i64, !dbg !823
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !823
  %2 = load i32, i32* %arrayidx, align 4, !dbg !823
  br label %cond.end, !dbg !824

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !824
  ret i32 %cond, !dbg !825
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !826 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !831, metadata !DIExpression()), !dbg !832
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !833
  %conv = trunc i64 %call to i32, !dbg !834
  ret i32 %conv, !dbg !835
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !836 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !840, metadata !DIExpression()), !dbg !841
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !842
  ret i64 %call, !dbg !843
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !844 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !849, metadata !DIExpression()), !dbg !850
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #5, !dbg !851
  ret i64 %call, !dbg !852
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !853 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !864, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i8* %__base, metadata !865, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !866, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i64 %__size, metadata !867, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !868, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i64 0, metadata !869, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !870, metadata !DIExpression()), !dbg !874
  br label %while.cond, !dbg !875

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !876
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !874
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !870, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !869, metadata !DIExpression()), !dbg !874
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !877
  br i1 %cmp, label %while.body, label %cleanup, !dbg !875

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !878
  %div = lshr i64 %add, 1, !dbg !880
  call void @llvm.dbg.value(metadata i64 %div, metadata !871, metadata !DIExpression()), !dbg !874
  %mul = mul i64 %div, %__size, !dbg !881
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !882
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !872, metadata !DIExpression()), !dbg !874
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #5, !dbg !883
  call void @llvm.dbg.value(metadata i32 %call, metadata !873, metadata !DIExpression()), !dbg !874
  %cmp1 = icmp slt i32 %call, 0, !dbg !884
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !886

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !887
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !889

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !890
  call void @llvm.dbg.value(metadata i64 %add4, metadata !869, metadata !DIExpression()), !dbg !874
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !874
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !874
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !870, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !869, metadata !DIExpression()), !dbg !874
  br label %while.cond, !dbg !875, !llvm.loop !891

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !874
  ret i8* %retval.0, !dbg !893
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !894 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !900, metadata !DIExpression()), !dbg !901
  %call = tail call double @strtod(i8* %__nptr, i8** null) #5, !dbg !902
  ret double %call, !dbg !903
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !904 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !913, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !914, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata i32 %base, metadata !915, metadata !DIExpression()), !dbg !916
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !917
  ret i64 %call, !dbg !918
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !919 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !925, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !926, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata i32 %base, metadata !927, metadata !DIExpression()), !dbg !928
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !929
  ret i64 %call, !dbg !930
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !931 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !942, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !943, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i32 %base, metadata !944, metadata !DIExpression()), !dbg !945
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !946
  ret i64 %call, !dbg !947
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !948 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !952, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !953, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata i32 %base, metadata !954, metadata !DIExpression()), !dbg !955
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !956
  ret i64 %call, !dbg !957
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !958 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1000, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1001, metadata !DIExpression()), !dbg !1002
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !1003
  ret i32 %call, !dbg !1004
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1005 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1007, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1008, metadata !DIExpression()), !dbg !1009
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !1010
  ret i32 %call, !dbg !1011
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1012 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1016, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1017, metadata !DIExpression()), !dbg !1018
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #5, !dbg !1019
  ret i32 %call, !dbg !1020
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1021 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1025, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1026, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1027, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1028, metadata !DIExpression()), !dbg !1029
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #5, !dbg !1030
  ret i32 %call, !dbg !1031
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1032 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1036, metadata !DIExpression()), !dbg !1039
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1037, metadata !DIExpression()), !dbg !1039
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1038, metadata !DIExpression()), !dbg !1039
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1038, metadata !DIExpression(DW_OP_deref)), !dbg !1039
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !1040
  ret i32 %call, !dbg !1041
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1042 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1046, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1047, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1048, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1049, metadata !DIExpression()), !dbg !1050
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1049, metadata !DIExpression(DW_OP_deref)), !dbg !1050
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !1051
  ret i32 %call, !dbg !1052
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1053 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1077, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1078, metadata !DIExpression()), !dbg !1079
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !1080
  ret i32 %call, !dbg !1081
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1082 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1084, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1085, metadata !DIExpression()), !dbg !1086
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !1087
  ret i32 %call, !dbg !1088
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1089 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1093, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1094, metadata !DIExpression()), !dbg !1095
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #5, !dbg !1096
  ret i32 %call, !dbg !1097
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1098 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1102, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1103, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1104, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1105, metadata !DIExpression()), !dbg !1106
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #5, !dbg !1107
  ret i32 %call, !dbg !1108
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_tree_loop() #3 !dbg !1109 {
entry:
  %0 = load i32, i32* @flag_tree_loop_optimize, align 4, !dbg !1110
  %cmp = icmp ne i32 %0, 0, !dbg !1111
  %conv1 = zext i1 %cmp to i8, !dbg !1110
  ret i8 %conv1, !dbg !1112
}

; Function Attrs: nounwind uwtable
define internal i32 @tree_ssa_loop_init() #3 !dbg !1113 {
entry:
  tail call void @loop_optimizer_init(i32 15) #5, !dbg !1114
  tail call void @rewrite_into_loop_closed_ssa(%struct.bitmap_head_def* null, i32 2048) #5, !dbg !1115
  %call = tail call fastcc i32 @number_of_loops() #6, !dbg !1116
  %cmp = icmp ult i32 %call, 2, !dbg !1118
  br i1 %cmp, label %return, label %if.end, !dbg !1119

if.end:                                           ; preds = %entry
  tail call void @scev_initialize() #5, !dbg !1120
  br label %return, !dbg !1121

return:                                           ; preds = %entry, %if.end
  ret i32 0, !dbg !1122
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_tree_ssa_loop_im() #3 !dbg !1123 {
entry:
  %0 = load i32, i32* @flag_tree_loop_im, align 4, !dbg !1124
  %cmp = icmp ne i32 %0, 0, !dbg !1125
  %conv1 = zext i1 %cmp to i8, !dbg !1124
  ret i8 %conv1, !dbg !1126
}

; Function Attrs: nounwind uwtable
define internal i32 @tree_ssa_loop_im() #3 !dbg !1127 {
entry:
  %call = tail call fastcc i32 @number_of_loops() #6, !dbg !1128
  %cmp = icmp ult i32 %call, 2, !dbg !1130
  br i1 %cmp, label %return, label %if.end, !dbg !1131

if.end:                                           ; preds = %entry
  tail call void @tree_ssa_lim() #5, !dbg !1132
  br label %return, !dbg !1133

return:                                           ; preds = %entry, %if.end
  ret i32 0, !dbg !1134
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_tree_ssa_loop_unswitch() #3 !dbg !1135 {
entry:
  %0 = load i32, i32* @flag_unswitch_loops, align 4, !dbg !1136
  %cmp = icmp ne i32 %0, 0, !dbg !1137
  %conv1 = zext i1 %cmp to i8, !dbg !1136
  ret i8 %conv1, !dbg !1138
}

; Function Attrs: nounwind uwtable
define internal i32 @tree_ssa_loop_unswitch() #3 !dbg !1139 {
entry:
  %call = tail call fastcc i32 @number_of_loops() #6, !dbg !1140
  %cmp = icmp ult i32 %call, 2, !dbg !1142
  br i1 %cmp, label %return, label %if.end, !dbg !1143

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @tree_ssa_unswitch_loops() #5, !dbg !1144
  br label %return, !dbg !1145

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ], !dbg !1146
  ret i32 %retval.0, !dbg !1147
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_tree_predictive_commoning() #3 !dbg !1148 {
entry:
  %0 = load i32, i32* @flag_predictive_commoning, align 4, !dbg !1149
  %cmp = icmp ne i32 %0, 0, !dbg !1150
  %conv1 = zext i1 %cmp to i8, !dbg !1149
  ret i8 %conv1, !dbg !1151
}

; Function Attrs: nounwind uwtable
define internal i32 @run_tree_predictive_commoning() #3 !dbg !1152 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !1153
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !1153
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !1153
  %tobool = icmp eq %struct.loops* %1, null, !dbg !1153
  br i1 %tobool, label %return, label %if.end, !dbg !1155

if.end:                                           ; preds = %entry
  %call = tail call i32 @tree_predictive_commoning() #5, !dbg !1156
  br label %return, !dbg !1157

return:                                           ; preds = %entry, %if.end
  ret i32 0, !dbg !1158
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_tree_vectorize() #3 !dbg !1159 {
entry:
  %0 = load i32, i32* @flag_tree_vectorize, align 4, !dbg !1160
  %conv = trunc i32 %0 to i8, !dbg !1160
  ret i8 %conv, !dbg !1161
}

; Function Attrs: nounwind uwtable
define internal i32 @tree_vectorize() #3 !dbg !1162 {
entry:
  %call = tail call fastcc i32 @number_of_loops() #6, !dbg !1163
  %cmp = icmp ult i32 %call, 2, !dbg !1165
  br i1 %cmp, label %return, label %if.end, !dbg !1166

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @vectorize_loops() #5, !dbg !1167
  br label %return, !dbg !1168

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ], !dbg !1169
  ret i32 %retval.0, !dbg !1170
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_tree_linear_transform() #3 !dbg !1171 {
entry:
  %0 = load i32, i32* @flag_tree_loop_linear, align 4, !dbg !1172
  %cmp = icmp ne i32 %0, 0, !dbg !1173
  %conv1 = zext i1 %cmp to i8, !dbg !1172
  ret i8 %conv1, !dbg !1174
}

; Function Attrs: nounwind uwtable
define internal i32 @tree_linear_transform() #3 !dbg !1175 {
entry:
  %call = tail call fastcc i32 @number_of_loops() #6, !dbg !1176
  %cmp = icmp ult i32 %call, 2, !dbg !1178
  br i1 %cmp, label %return, label %if.end, !dbg !1179

if.end:                                           ; preds = %entry
  tail call void @linear_transform_loops() #5, !dbg !1180
  br label %return, !dbg !1181

return:                                           ; preds = %entry, %if.end
  ret i32 0, !dbg !1182
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_graphite_transforms() #3 !dbg !1183 {
entry:
  %0 = load i32, i32* @flag_loop_block, align 4, !dbg !1184
  %1 = load i32, i32* @flag_loop_interchange, align 4, !dbg !1186
  %2 = or i32 %0, %1, !dbg !1187
  %3 = load i32, i32* @flag_loop_strip_mine, align 4, !dbg !1188
  %4 = or i32 %2, %3, !dbg !1187
  %5 = load i32, i32* @flag_graphite_identity, align 4, !dbg !1189
  %6 = or i32 %4, %5, !dbg !1187
  %7 = load i32, i32* @flag_loop_parallelize_all, align 4, !dbg !1190
  %8 = or i32 %6, %7, !dbg !1187
  %9 = icmp eq i32 %8, 0, !dbg !1187
  br i1 %9, label %entry.if.end_crit_edge, label %if.then, !dbg !1187

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre = load i32, i32* @flag_graphite, align 4, !dbg !1191
  %phitmp = icmp ne i32 %.pre, 0, !dbg !1187
  %phitmp4 = zext i1 %phitmp to i8, !dbg !1187
  br label %if.end, !dbg !1187

if.then:                                          ; preds = %entry
  store i32 1, i32* @flag_graphite, align 4, !dbg !1192
  br label %if.end, !dbg !1193

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %10 = phi i8 [ %phitmp4, %entry.if.end_crit_edge ], [ 1, %if.then ]
  ret i8 %10, !dbg !1194
}

; Function Attrs: nounwind uwtable
define internal i32 @graphite_transforms() #3 !dbg !1195 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !1196
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !1196
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !1196
  %tobool = icmp eq %struct.loops* %1, null, !dbg !1196
  br i1 %tobool, label %return, label %if.end, !dbg !1198

if.end:                                           ; preds = %entry
  tail call void @graphite_transform_loops() #5, !dbg !1199
  br label %return, !dbg !1200

return:                                           ; preds = %entry, %if.end
  ret i32 0, !dbg !1201
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_check_data_deps() #3 !dbg !1202 {
entry:
  %0 = load i32, i32* @flag_check_data_deps, align 4, !dbg !1203
  %cmp = icmp ne i32 %0, 0, !dbg !1204
  %conv1 = zext i1 %cmp to i8, !dbg !1203
  ret i8 %conv1, !dbg !1205
}

; Function Attrs: nounwind uwtable
define internal i32 @check_data_deps() #3 !dbg !1206 {
entry:
  %call = tail call fastcc i32 @number_of_loops() #6, !dbg !1207
  %cmp = icmp ult i32 %call, 2, !dbg !1209
  br i1 %cmp, label %return, label %if.end, !dbg !1210

if.end:                                           ; preds = %entry
  tail call void @tree_check_data_deps() #5, !dbg !1211
  br label %return, !dbg !1212

return:                                           ; preds = %entry, %if.end
  ret i32 0, !dbg !1213
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_tree_ssa_loop_ivcanon() #3 !dbg !1214 {
entry:
  %0 = load i32, i32* @flag_tree_loop_ivcanon, align 4, !dbg !1215
  %cmp = icmp ne i32 %0, 0, !dbg !1216
  %conv1 = zext i1 %cmp to i8, !dbg !1215
  ret i8 %conv1, !dbg !1217
}

; Function Attrs: nounwind uwtable
define internal i32 @tree_ssa_loop_ivcanon() #3 !dbg !1218 {
entry:
  %call = tail call fastcc i32 @number_of_loops() #6, !dbg !1219
  %cmp = icmp ult i32 %call, 2, !dbg !1221
  br i1 %cmp, label %return, label %if.end, !dbg !1222

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @canonicalize_induction_variables() #5, !dbg !1223
  br label %return, !dbg !1224

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ], !dbg !1225
  ret i32 %retval.0, !dbg !1226
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_scev_const_prop() #3 !dbg !1227 {
entry:
  %0 = load i32, i32* @flag_tree_scev_cprop, align 4, !dbg !1228
  %conv = trunc i32 %0 to i8, !dbg !1228
  ret i8 %conv, !dbg !1229
}

declare dso_local i32 @scev_const_prop() #1

; Function Attrs: nounwind uwtable
define internal i32 @tree_ssa_loop_bounds() #3 !dbg !1230 {
entry:
  %call = tail call fastcc i32 @number_of_loops() #6, !dbg !1231
  %cmp = icmp ult i32 %call, 2, !dbg !1233
  br i1 %cmp, label %return, label %if.end, !dbg !1234

if.end:                                           ; preds = %entry
  tail call void @estimate_numbers_of_iterations() #5, !dbg !1235
  tail call void @scev_reset() #5, !dbg !1236
  br label %return, !dbg !1237

return:                                           ; preds = %entry, %if.end
  ret i32 0, !dbg !1238
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_tree_complete_unroll() #3 !dbg !1239 {
entry:
  ret i8 1, !dbg !1240
}

; Function Attrs: nounwind uwtable
define internal i32 @tree_complete_unroll() #3 !dbg !1241 {
entry:
  %call = tail call fastcc i32 @number_of_loops() #6, !dbg !1242
  %cmp = icmp ult i32 %call, 2, !dbg !1244
  br i1 %cmp, label %return, label %if.end, !dbg !1245

if.end:                                           ; preds = %entry
  %0 = load i32, i32* @flag_unroll_loops, align 4, !dbg !1246
  %1 = load i32, i32* @flag_peel_loops, align 4, !dbg !1247
  %2 = or i32 %0, %1, !dbg !1248
  %3 = icmp eq i32 %2, 0, !dbg !1248
  br i1 %3, label %lor.rhs, label %lor.end, !dbg !1248

lor.rhs:                                          ; preds = %if.end
  %4 = load i32, i32* @optimize, align 4, !dbg !1249
  %cmp2 = icmp sgt i32 %4, 2, !dbg !1250
  %phitmp = zext i1 %cmp2 to i8, !dbg !1251
  br label %lor.end, !dbg !1251

lor.end:                                          ; preds = %if.end, %lor.rhs
  %5 = phi i8 [ 1, %if.end ], [ %phitmp, %lor.rhs ]
  %call3 = tail call i32 @tree_unroll_loops_completely(i8 zeroext %5, i8 zeroext 1) #5, !dbg !1252
  br label %return, !dbg !1253

return:                                           ; preds = %entry, %lor.end
  %retval.0 = phi i32 [ %call3, %lor.end ], [ 0, %entry ], !dbg !1254
  ret i32 %retval.0, !dbg !1255
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_tree_complete_unroll_inner() #3 !dbg !1256 {
entry:
  %0 = load i32, i32* @optimize, align 4, !dbg !1257
  %cmp = icmp sgt i32 %0, 1, !dbg !1258
  %conv1 = zext i1 %cmp to i8, !dbg !1257
  ret i8 %conv1, !dbg !1259
}

; Function Attrs: nounwind uwtable
define internal i32 @tree_complete_unroll_inner() #3 !dbg !1260 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !1262, metadata !DIExpression()), !dbg !1263
  tail call void @loop_optimizer_init(i32 15) #5, !dbg !1264
  %call = tail call fastcc i32 @number_of_loops() #6, !dbg !1265
  %cmp = icmp ugt i32 %call, 1, !dbg !1267
  br i1 %cmp, label %if.then, label %if.end, !dbg !1268

if.then:                                          ; preds = %entry
  tail call void @scev_initialize() #5, !dbg !1269
  %0 = load i32, i32* @optimize, align 4, !dbg !1271
  %cmp1 = icmp sgt i32 %0, 2, !dbg !1272
  %conv2 = zext i1 %cmp1 to i8, !dbg !1271
  %call3 = tail call i32 @tree_unroll_loops_completely(i8 zeroext %conv2, i8 zeroext 0) #5, !dbg !1273
  call void @llvm.dbg.value(metadata i32 %call3, metadata !1262, metadata !DIExpression()), !dbg !1263
  tail call void @free_numbers_of_iterations_estimates() #5, !dbg !1274
  tail call void @scev_finalize() #5, !dbg !1275
  br label %if.end, !dbg !1276

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i32 [ %call3, %if.then ], [ 0, %entry ], !dbg !1263
  call void @llvm.dbg.value(metadata i32 %ret.0, metadata !1262, metadata !DIExpression()), !dbg !1263
  tail call void @loop_optimizer_finalize() #5, !dbg !1277
  ret i32 %ret.0, !dbg !1278
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_tree_parallelize_loops() #3 !dbg !1279 {
entry:
  %0 = load i32, i32* @flag_tree_parallelize_loops, align 4, !dbg !1280
  %cmp = icmp sgt i32 %0, 1, !dbg !1281
  %conv1 = zext i1 %cmp to i8, !dbg !1280
  ret i8 %conv1, !dbg !1282
}

; Function Attrs: nounwind uwtable
define internal i32 @tree_parallelize_loops() #3 !dbg !1283 {
entry:
  %call = tail call fastcc i32 @number_of_loops() #6, !dbg !1284
  %cmp = icmp ult i32 %call, 2, !dbg !1286
  br i1 %cmp, label %return, label %if.end, !dbg !1287

if.end:                                           ; preds = %entry
  %call1 = tail call zeroext i8 @parallelize_loops() #5, !dbg !1288
  %tobool = icmp eq i8 %call1, 0, !dbg !1288
  %. = select i1 %tobool, i32 0, i32 1048608, !dbg !1290
  br label %return, !dbg !1290

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %., %if.end ], !dbg !1290
  ret i32 %retval.0, !dbg !1291
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_tree_ssa_loop_prefetch() #3 !dbg !1292 {
entry:
  %0 = load i32, i32* @flag_prefetch_loop_arrays, align 4, !dbg !1293
  %cmp = icmp ne i32 %0, 0, !dbg !1294
  %conv1 = zext i1 %cmp to i8, !dbg !1293
  ret i8 %conv1, !dbg !1295
}

; Function Attrs: nounwind uwtable
define internal i32 @tree_ssa_loop_prefetch() #3 !dbg !1296 {
entry:
  %call = tail call fastcc i32 @number_of_loops() #6, !dbg !1297
  %cmp = icmp ult i32 %call, 2, !dbg !1299
  br i1 %cmp, label %return, label %if.end, !dbg !1300

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @tree_ssa_prefetch_arrays() #5, !dbg !1301
  br label %return, !dbg !1302

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ], !dbg !1303
  ret i32 %retval.0, !dbg !1304
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_tree_ssa_loop_ivopts() #3 !dbg !1305 {
entry:
  %0 = load i32, i32* @flag_ivopts, align 4, !dbg !1306
  %cmp = icmp ne i32 %0, 0, !dbg !1307
  %conv1 = zext i1 %cmp to i8, !dbg !1306
  ret i8 %conv1, !dbg !1308
}

; Function Attrs: nounwind uwtable
define internal i32 @tree_ssa_loop_ivopts() #3 !dbg !1309 {
entry:
  %call = tail call fastcc i32 @number_of_loops() #6, !dbg !1310
  %cmp = icmp ult i32 %call, 2, !dbg !1312
  br i1 %cmp, label %return, label %if.end, !dbg !1313

if.end:                                           ; preds = %entry
  tail call void @tree_ssa_iv_optimize() #5, !dbg !1314
  br label %return, !dbg !1315

return:                                           ; preds = %entry, %if.end
  ret i32 0, !dbg !1316
}

; Function Attrs: nounwind uwtable
define internal i32 @tree_ssa_loop_done() #3 !dbg !1317 {
entry:
  tail call void @free_numbers_of_iterations_estimates() #5, !dbg !1318
  tail call void @scev_finalize() #5, !dbg !1319
  tail call void @loop_optimizer_finalize() #5, !dbg !1320
  ret i32 0, !dbg !1321
}

declare dso_local void @loop_optimizer_init(i32) local_unnamed_addr #1

declare dso_local void @rewrite_into_loop_closed_ssa(%struct.bitmap_head_def*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #0 !dbg !1322 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !1323
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !1323
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !1323
  %tobool = icmp eq %struct.loops* %1, null, !dbg !1323
  br i1 %tobool, label %return, label %if.end, !dbg !1325

if.end:                                           ; preds = %entry
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 1, !dbg !1326
  %2 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !1326
  %tobool3 = icmp eq %struct.VEC_loop_p_gc* %2, null, !dbg !1326
  br i1 %tobool3, label %cond.end, label %cond.true, !dbg !1326

cond.true:                                        ; preds = %if.end
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %2, i64 0, i32 0, !dbg !1326
  br label %cond.end, !dbg !1326

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %if.end ], !dbg !1326
  %call = tail call fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %cond) #6, !dbg !1326
  br label %return, !dbg !1327

return:                                           ; preds = %entry, %cond.end
  %retval.0 = phi i32 [ %call, %cond.end ], [ 0, %entry ], !dbg !1328
  ret i32 %retval.0, !dbg !1329
}

declare dso_local void @scev_initialize() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %vec_) unnamed_addr #0 !dbg !1330 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !2707, metadata !DIExpression()), !dbg !2708
  %tobool = icmp eq %struct.VEC_loop_p_base* %vec_, null, !dbg !2709
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2709

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 0, !dbg !2709
  %0 = load i32, i32* %num, align 8, !dbg !2709
  br label %cond.end, !dbg !2709

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2709
  ret i32 %cond, !dbg !2709
}

declare dso_local void @tree_ssa_lim() local_unnamed_addr #1

declare dso_local i32 @tree_ssa_unswitch_loops() local_unnamed_addr #1

declare dso_local i32 @tree_predictive_commoning() local_unnamed_addr #1

declare dso_local i32 @vectorize_loops() local_unnamed_addr #1

declare dso_local void @linear_transform_loops() local_unnamed_addr #1

declare dso_local void @graphite_transform_loops() local_unnamed_addr #1

declare dso_local void @tree_check_data_deps() local_unnamed_addr #1

declare dso_local i32 @canonicalize_induction_variables() local_unnamed_addr #1

declare dso_local void @estimate_numbers_of_iterations() local_unnamed_addr #1

declare dso_local void @scev_reset() local_unnamed_addr #1

declare dso_local i32 @tree_unroll_loops_completely(i8 zeroext, i8 zeroext) local_unnamed_addr #1

declare dso_local void @free_numbers_of_iterations_estimates() local_unnamed_addr #1

declare dso_local void @scev_finalize() local_unnamed_addr #1

declare dso_local void @loop_optimizer_finalize() local_unnamed_addr #1

declare dso_local zeroext i8 @parallelize_loops() local_unnamed_addr #1

declare dso_local i32 @tree_ssa_prefetch_arrays() local_unnamed_addr #1

declare dso_local void @tree_ssa_iv_optimize() local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nobuiltin nounwind }
attributes #6 = { nobuiltin }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!644, !645, !646}
!llvm.ident = !{!647}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_tree_loop", scope: !2, file: !3, line: 50, type: !586, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !573, globals: !583, nameTableKind: None)
!3 = !DIFile(filename: "tree-ssa-loop.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !13, !189, !317, !323, !328, !333, !352, !359, !366, !560, !569}
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
!560 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lpt_dec", file: !561, line: 31, baseType: !7, size: 32, elements: !562)
!561 = !DIFile(filename: "./cfgloop.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!562 = !{!563, !564, !565, !566, !567, !568}
!563 = !DIEnumerator(name: "LPT_NONE", value: 0, isUnsigned: true)
!564 = !DIEnumerator(name: "LPT_PEEL_COMPLETELY", value: 1, isUnsigned: true)
!565 = !DIEnumerator(name: "LPT_PEEL_SIMPLE", value: 2, isUnsigned: true)
!566 = !DIEnumerator(name: "LPT_UNROLL_CONSTANT", value: 3, isUnsigned: true)
!567 = !DIEnumerator(name: "LPT_UNROLL_RUNTIME", value: 4, isUnsigned: true)
!568 = !DIEnumerator(name: "LPT_UNROLL_STUPID", value: 5, isUnsigned: true)
!569 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "loop_estimation", file: !561, line: 91, baseType: !7, size: 32, elements: !570)
!570 = !{!571, !572}
!571 = !DIEnumerator(name: "EST_NOT_COMPUTED", value: 0, isUnsigned: true)
!572 = !DIEnumerator(name: "EST_AVAILABLE", value: 1, isUnsigned: true)
!573 = !{!574, !575, !576, !577, !580, !581}
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!576 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !579)
!583 = !{!0, !584, !612, !614, !616, !618, !620, !622, !624, !626, !628, !630, !632, !634, !636, !638, !640, !642}
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(name: "pass_tree_loop_init", scope: !2, file: !3, line: 85, type: !586, isLocal: false, isDefinition: true)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_opt_pass", file: !6, line: 156, size: 640, elements: !587)
!587 = !{!588}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !586, file: !6, line: 158, baseType: !589, size: 640)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !6, line: 114, size: 640, elements: !590)
!590 = !{!591, !592, !593, !597, !601, !603, !604, !605, !607, !608, !609, !610, !611}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !589, file: !6, line: 117, baseType: !5, size: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !589, file: !6, line: 121, baseType: !581, size: 64, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !589, file: !6, line: 125, baseType: !594, size: 64, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{!575}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !589, file: !6, line: 130, baseType: !598, size: 64, offset: 192)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!7}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !589, file: !6, line: 133, baseType: !602, size: 64, offset: 256)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !589, file: !6, line: 136, baseType: !602, size: 64, offset: 320)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !589, file: !6, line: 139, baseType: !576, size: 32, offset: 384)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !589, file: !6, line: 143, baseType: !606, size: 32, offset: 416)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !14, line: 80, baseType: !13)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !589, file: !6, line: 146, baseType: !7, size: 32, offset: 448)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !589, file: !6, line: 147, baseType: !7, size: 32, offset: 480)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !589, file: !6, line: 148, baseType: !7, size: 32, offset: 512)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !589, file: !6, line: 151, baseType: !7, size: 32, offset: 544)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !589, file: !6, line: 152, baseType: !7, size: 32, offset: 576)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(name: "pass_lim", scope: !2, file: !3, line: 122, type: !586, isLocal: false, isDefinition: true)
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(name: "pass_tree_unswitch", scope: !2, file: !3, line: 158, type: !586, isLocal: false, isDefinition: true)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(name: "pass_predcom", scope: !2, file: !3, line: 196, type: !586, isLocal: false, isDefinition: true)
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(name: "pass_vectorize", scope: !2, file: !3, line: 233, type: !586, isLocal: false, isDefinition: true)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(name: "pass_linear_transform", scope: !2, file: !3, line: 271, type: !586, isLocal: false, isDefinition: true)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(name: "pass_graphite_transforms", scope: !2, file: !3, line: 317, type: !586, isLocal: false, isDefinition: true)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(name: "pass_check_data_deps", scope: !2, file: !3, line: 354, type: !586, isLocal: false, isDefinition: true)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(name: "pass_iv_canon", scope: !2, file: !3, line: 390, type: !586, isLocal: false, isDefinition: true)
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(name: "pass_scev_cprop", scope: !2, file: !3, line: 417, type: !586, isLocal: false, isDefinition: true)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(name: "pass_record_bounds", scope: !2, file: !3, line: 451, type: !586, isLocal: false, isDefinition: true)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(name: "pass_complete_unroll", scope: !2, file: !3, line: 489, type: !586, isLocal: false, isDefinition: true)
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(name: "pass_complete_unrolli", scope: !2, file: !3, line: 536, type: !586, isLocal: false, isDefinition: true)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(name: "pass_parallelize_loops", scope: !2, file: !3, line: 575, type: !586, isLocal: false, isDefinition: true)
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(name: "pass_loop_prefetch", scope: !2, file: !3, line: 611, type: !586, isLocal: false, isDefinition: true)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(name: "pass_iv_optimize", scope: !2, file: !3, line: 648, type: !586, isLocal: false, isDefinition: true)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(name: "pass_tree_loop_done", scope: !2, file: !3, line: 679, type: !586, isLocal: false, isDefinition: true)
!644 = !{i32 2, !"Dwarf Version", i32 4}
!645 = !{i32 2, !"Debug Info Version", i32 3}
!646 = !{i32 1, !"wchar_size", i32 4}
!647 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!648 = distinct !DISubprogram(name: "vprintf", scope: !649, file: !649, line: 39, type: !650, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !660)
!649 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!650 = !DISubroutineType(types: !651)
!651 = !{!576, !652, !653}
!652 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !581)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !655)
!655 = !{!656, !657, !658, !659}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !654, file: !3, baseType: !7, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !654, file: !3, baseType: !7, size: 32, offset: 32)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !654, file: !3, baseType: !580, size: 64, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !654, file: !3, baseType: !580, size: 64, offset: 128)
!660 = !{!661, !662}
!661 = !DILocalVariable(name: "__fmt", arg: 1, scope: !648, file: !649, line: 39, type: !652)
!662 = !DILocalVariable(name: "__arg", arg: 2, scope: !648, file: !649, line: 39, type: !653)
!663 = !DILocation(line: 0, scope: !648)
!664 = !DILocation(line: 41, column: 20, scope: !648)
!665 = !DILocation(line: 41, column: 10, scope: !648)
!666 = !DILocation(line: 41, column: 3, scope: !648)
!667 = distinct !DISubprogram(name: "getchar", scope: !649, file: !649, line: 47, type: !668, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !670)
!668 = !DISubroutineType(types: !669)
!669 = !{!576}
!670 = !{}
!671 = !DILocation(line: 49, column: 16, scope: !667)
!672 = !DILocation(line: 49, column: 10, scope: !667)
!673 = !DILocation(line: 49, column: 3, scope: !667)
!674 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !649, file: !649, line: 56, type: !675, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !736)
!675 = !DISubroutineType(types: !676)
!676 = !{!576, !677}
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !679, line: 7, baseType: !680)
!679 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !681, line: 49, size: 1728, elements: !682)
!681 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!682 = !{!683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !698, !700, !701, !702, !706, !708, !710, !714, !717, !719, !722, !725, !726, !727, !731, !732}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !680, file: !681, line: 51, baseType: !576, size: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !680, file: !681, line: 54, baseType: !578, size: 64, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !680, file: !681, line: 55, baseType: !578, size: 64, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !680, file: !681, line: 56, baseType: !578, size: 64, offset: 192)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !680, file: !681, line: 57, baseType: !578, size: 64, offset: 256)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !680, file: !681, line: 58, baseType: !578, size: 64, offset: 320)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !680, file: !681, line: 59, baseType: !578, size: 64, offset: 384)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !680, file: !681, line: 60, baseType: !578, size: 64, offset: 448)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !680, file: !681, line: 61, baseType: !578, size: 64, offset: 512)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !680, file: !681, line: 64, baseType: !578, size: 64, offset: 576)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !680, file: !681, line: 65, baseType: !578, size: 64, offset: 640)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !680, file: !681, line: 66, baseType: !578, size: 64, offset: 704)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !680, file: !681, line: 68, baseType: !696, size: 64, offset: 768)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !681, line: 36, flags: DIFlagFwdDecl)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !680, file: !681, line: 70, baseType: !699, size: 64, offset: 832)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !680, file: !681, line: 72, baseType: !576, size: 32, offset: 896)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !680, file: !681, line: 73, baseType: !576, size: 32, offset: 928)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !680, file: !681, line: 74, baseType: !703, size: 64, offset: 960)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !704, line: 152, baseType: !705)
!704 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!705 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !680, file: !681, line: 77, baseType: !707, size: 16, offset: 1024)
!707 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !680, file: !681, line: 78, baseType: !709, size: 8, offset: 1040)
!709 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !680, file: !681, line: 79, baseType: !711, size: 8, offset: 1048)
!711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !579, size: 8, elements: !712)
!712 = !{!713}
!713 = !DISubrange(count: 1)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !680, file: !681, line: 81, baseType: !715, size: 64, offset: 1088)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !681, line: 43, baseType: null)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !680, file: !681, line: 89, baseType: !718, size: 64, offset: 1152)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !704, line: 153, baseType: !705)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !680, file: !681, line: 91, baseType: !720, size: 64, offset: 1216)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !681, line: 37, flags: DIFlagFwdDecl)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !680, file: !681, line: 92, baseType: !723, size: 64, offset: 1280)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !681, line: 38, flags: DIFlagFwdDecl)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !680, file: !681, line: 93, baseType: !699, size: 64, offset: 1344)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !680, file: !681, line: 94, baseType: !580, size: 64, offset: 1408)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !680, file: !681, line: 95, baseType: !728, size: 64, offset: 1472)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !729, line: 46, baseType: !730)
!729 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!730 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !680, file: !681, line: 96, baseType: !576, size: 32, offset: 1536)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !680, file: !681, line: 98, baseType: !733, size: 160, offset: 1568)
!733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !579, size: 160, elements: !734)
!734 = !{!735}
!735 = !DISubrange(count: 20)
!736 = !{!737}
!737 = !DILocalVariable(name: "__fp", arg: 1, scope: !674, file: !649, line: 56, type: !677)
!738 = !DILocation(line: 0, scope: !674)
!739 = !DILocation(line: 58, column: 10, scope: !674)
!740 = !DILocation(line: 58, column: 3, scope: !674)
!741 = distinct !DISubprogram(name: "getc_unlocked", scope: !649, file: !649, line: 66, type: !675, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !742)
!742 = !{!743}
!743 = !DILocalVariable(name: "__fp", arg: 1, scope: !741, file: !649, line: 66, type: !677)
!744 = !DILocation(line: 0, scope: !741)
!745 = !DILocation(line: 68, column: 10, scope: !741)
!746 = !DILocation(line: 68, column: 3, scope: !741)
!747 = distinct !DISubprogram(name: "getchar_unlocked", scope: !649, file: !649, line: 73, type: !668, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !670)
!748 = !DILocation(line: 75, column: 10, scope: !747)
!749 = !DILocation(line: 75, column: 3, scope: !747)
!750 = distinct !DISubprogram(name: "putchar", scope: !649, file: !649, line: 82, type: !751, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !753)
!751 = !DISubroutineType(types: !752)
!752 = !{!576, !576}
!753 = !{!754}
!754 = !DILocalVariable(name: "__c", arg: 1, scope: !750, file: !649, line: 82, type: !576)
!755 = !DILocation(line: 0, scope: !750)
!756 = !DILocation(line: 84, column: 21, scope: !750)
!757 = !DILocation(line: 84, column: 10, scope: !750)
!758 = !DILocation(line: 84, column: 3, scope: !750)
!759 = distinct !DISubprogram(name: "fputc_unlocked", scope: !649, file: !649, line: 91, type: !760, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !762)
!760 = !DISubroutineType(types: !761)
!761 = !{!576, !576, !677}
!762 = !{!763, !764}
!763 = !DILocalVariable(name: "__c", arg: 1, scope: !759, file: !649, line: 91, type: !576)
!764 = !DILocalVariable(name: "__stream", arg: 2, scope: !759, file: !649, line: 91, type: !677)
!765 = !DILocation(line: 0, scope: !759)
!766 = !DILocation(line: 93, column: 10, scope: !759)
!767 = !DILocation(line: 93, column: 3, scope: !759)
!768 = distinct !DISubprogram(name: "putc_unlocked", scope: !649, file: !649, line: 101, type: !760, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !769)
!769 = !{!770, !771}
!770 = !DILocalVariable(name: "__c", arg: 1, scope: !768, file: !649, line: 101, type: !576)
!771 = !DILocalVariable(name: "__stream", arg: 2, scope: !768, file: !649, line: 101, type: !677)
!772 = !DILocation(line: 0, scope: !768)
!773 = !DILocation(line: 103, column: 10, scope: !768)
!774 = !DILocation(line: 103, column: 3, scope: !768)
!775 = distinct !DISubprogram(name: "putchar_unlocked", scope: !649, file: !649, line: 108, type: !751, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !776)
!776 = !{!777}
!777 = !DILocalVariable(name: "__c", arg: 1, scope: !775, file: !649, line: 108, type: !576)
!778 = !DILocation(line: 0, scope: !775)
!779 = !DILocation(line: 110, column: 10, scope: !775)
!780 = !DILocation(line: 110, column: 3, scope: !775)
!781 = distinct !DISubprogram(name: "getline", scope: !649, file: !649, line: 118, type: !782, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !786)
!782 = !DISubroutineType(types: !783)
!783 = !{!784, !577, !785, !677}
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !704, line: 193, baseType: !705)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!786 = !{!787, !788, !789}
!787 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !781, file: !649, line: 118, type: !577)
!788 = !DILocalVariable(name: "__n", arg: 2, scope: !781, file: !649, line: 118, type: !785)
!789 = !DILocalVariable(name: "__stream", arg: 3, scope: !781, file: !649, line: 118, type: !677)
!790 = !DILocation(line: 0, scope: !781)
!791 = !DILocation(line: 120, column: 10, scope: !781)
!792 = !DILocation(line: 120, column: 3, scope: !781)
!793 = distinct !DISubprogram(name: "feof_unlocked", scope: !649, file: !649, line: 128, type: !675, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !794)
!794 = !{!795}
!795 = !DILocalVariable(name: "__stream", arg: 1, scope: !793, file: !649, line: 128, type: !677)
!796 = !DILocation(line: 0, scope: !793)
!797 = !DILocation(line: 130, column: 10, scope: !793)
!798 = !DILocation(line: 130, column: 3, scope: !793)
!799 = distinct !DISubprogram(name: "ferror_unlocked", scope: !649, file: !649, line: 135, type: !675, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !800)
!800 = !{!801}
!801 = !DILocalVariable(name: "__stream", arg: 1, scope: !799, file: !649, line: 135, type: !677)
!802 = !DILocation(line: 0, scope: !799)
!803 = !DILocation(line: 137, column: 10, scope: !799)
!804 = !DILocation(line: 137, column: 3, scope: !799)
!805 = distinct !DISubprogram(name: "tolower", scope: !806, file: !806, line: 207, type: !751, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !807)
!806 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!807 = !{!808}
!808 = !DILocalVariable(name: "__c", arg: 1, scope: !805, file: !806, line: 207, type: !576)
!809 = !DILocation(line: 0, scope: !805)
!810 = !DILocation(line: 209, column: 22, scope: !805)
!811 = !DILocation(line: 209, column: 39, scope: !805)
!812 = !DILocation(line: 209, column: 38, scope: !805)
!813 = !DILocation(line: 209, column: 37, scope: !805)
!814 = !DILocation(line: 209, column: 10, scope: !805)
!815 = !DILocation(line: 209, column: 3, scope: !805)
!816 = distinct !DISubprogram(name: "toupper", scope: !806, file: !806, line: 213, type: !751, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !817)
!817 = !{!818}
!818 = !DILocalVariable(name: "__c", arg: 1, scope: !816, file: !806, line: 213, type: !576)
!819 = !DILocation(line: 0, scope: !816)
!820 = !DILocation(line: 215, column: 22, scope: !816)
!821 = !DILocation(line: 215, column: 39, scope: !816)
!822 = !DILocation(line: 215, column: 38, scope: !816)
!823 = !DILocation(line: 215, column: 37, scope: !816)
!824 = !DILocation(line: 215, column: 10, scope: !816)
!825 = !DILocation(line: 215, column: 3, scope: !816)
!826 = distinct !DISubprogram(name: "atoi", scope: !827, file: !827, line: 361, type: !828, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !830)
!827 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!828 = !DISubroutineType(types: !829)
!829 = !{!576, !581}
!830 = !{!831}
!831 = !DILocalVariable(name: "__nptr", arg: 1, scope: !826, file: !827, line: 361, type: !581)
!832 = !DILocation(line: 0, scope: !826)
!833 = !DILocation(line: 363, column: 16, scope: !826)
!834 = !DILocation(line: 363, column: 10, scope: !826)
!835 = !DILocation(line: 363, column: 3, scope: !826)
!836 = distinct !DISubprogram(name: "atol", scope: !827, file: !827, line: 366, type: !837, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !839)
!837 = !DISubroutineType(types: !838)
!838 = !{!705, !581}
!839 = !{!840}
!840 = !DILocalVariable(name: "__nptr", arg: 1, scope: !836, file: !827, line: 366, type: !581)
!841 = !DILocation(line: 0, scope: !836)
!842 = !DILocation(line: 368, column: 10, scope: !836)
!843 = !DILocation(line: 368, column: 3, scope: !836)
!844 = distinct !DISubprogram(name: "atoll", scope: !827, file: !827, line: 373, type: !845, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !848)
!845 = !DISubroutineType(types: !846)
!846 = !{!847, !581}
!847 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!848 = !{!849}
!849 = !DILocalVariable(name: "__nptr", arg: 1, scope: !844, file: !827, line: 373, type: !581)
!850 = !DILocation(line: 0, scope: !844)
!851 = !DILocation(line: 375, column: 10, scope: !844)
!852 = !DILocation(line: 375, column: 3, scope: !844)
!853 = distinct !DISubprogram(name: "bsearch", scope: !854, file: !854, line: 20, type: !855, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !863)
!854 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!855 = !DISubroutineType(types: !856)
!856 = !{!580, !857, !857, !728, !728, !859}
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !827, line: 808, baseType: !860)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{!576, !857, !857}
!863 = !{!864, !865, !866, !867, !868, !869, !870, !871, !872, !873}
!864 = !DILocalVariable(name: "__key", arg: 1, scope: !853, file: !854, line: 20, type: !857)
!865 = !DILocalVariable(name: "__base", arg: 2, scope: !853, file: !854, line: 20, type: !857)
!866 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !853, file: !854, line: 20, type: !728)
!867 = !DILocalVariable(name: "__size", arg: 4, scope: !853, file: !854, line: 20, type: !728)
!868 = !DILocalVariable(name: "__compar", arg: 5, scope: !853, file: !854, line: 21, type: !859)
!869 = !DILocalVariable(name: "__l", scope: !853, file: !854, line: 23, type: !728)
!870 = !DILocalVariable(name: "__u", scope: !853, file: !854, line: 23, type: !728)
!871 = !DILocalVariable(name: "__idx", scope: !853, file: !854, line: 23, type: !728)
!872 = !DILocalVariable(name: "__p", scope: !853, file: !854, line: 24, type: !857)
!873 = !DILocalVariable(name: "__comparison", scope: !853, file: !854, line: 25, type: !576)
!874 = !DILocation(line: 0, scope: !853)
!875 = !DILocation(line: 29, column: 3, scope: !853)
!876 = !DILocation(line: 27, column: 7, scope: !853)
!877 = !DILocation(line: 29, column: 14, scope: !853)
!878 = !DILocation(line: 31, column: 20, scope: !879)
!879 = distinct !DILexicalBlock(scope: !853, file: !854, line: 30, column: 5)
!880 = !DILocation(line: 31, column: 27, scope: !879)
!881 = !DILocation(line: 32, column: 56, scope: !879)
!882 = !DILocation(line: 32, column: 47, scope: !879)
!883 = !DILocation(line: 33, column: 22, scope: !879)
!884 = !DILocation(line: 34, column: 24, scope: !885)
!885 = distinct !DILexicalBlock(scope: !879, file: !854, line: 34, column: 11)
!886 = !DILocation(line: 34, column: 11, scope: !879)
!887 = !DILocation(line: 36, column: 29, scope: !888)
!888 = distinct !DILexicalBlock(scope: !885, file: !854, line: 36, column: 16)
!889 = !DILocation(line: 36, column: 16, scope: !885)
!890 = !DILocation(line: 37, column: 14, scope: !888)
!891 = distinct !{!891, !875, !892}
!892 = !DILocation(line: 40, column: 5, scope: !853)
!893 = !DILocation(line: 43, column: 1, scope: !853)
!894 = distinct !DISubprogram(name: "atof", scope: !895, file: !895, line: 25, type: !896, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !899)
!895 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!896 = !DISubroutineType(types: !897)
!897 = !{!898, !581}
!898 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!899 = !{!900}
!900 = !DILocalVariable(name: "__nptr", arg: 1, scope: !894, file: !895, line: 25, type: !581)
!901 = !DILocation(line: 0, scope: !894)
!902 = !DILocation(line: 27, column: 10, scope: !894)
!903 = !DILocation(line: 27, column: 3, scope: !894)
!904 = distinct !DISubprogram(name: "strtoimax", scope: !905, file: !905, line: 324, type: !906, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !912)
!905 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!906 = !DISubroutineType(types: !907)
!907 = !{!908, !652, !911, !576}
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !909, line: 101, baseType: !910)
!909 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !704, line: 72, baseType: !705)
!911 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !577)
!912 = !{!913, !914, !915}
!913 = !DILocalVariable(name: "nptr", arg: 1, scope: !904, file: !905, line: 324, type: !652)
!914 = !DILocalVariable(name: "endptr", arg: 2, scope: !904, file: !905, line: 324, type: !911)
!915 = !DILocalVariable(name: "base", arg: 3, scope: !904, file: !905, line: 324, type: !576)
!916 = !DILocation(line: 0, scope: !904)
!917 = !DILocation(line: 327, column: 10, scope: !904)
!918 = !DILocation(line: 327, column: 3, scope: !904)
!919 = distinct !DISubprogram(name: "strtoumax", scope: !905, file: !905, line: 336, type: !920, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !924)
!920 = !DISubroutineType(types: !921)
!921 = !{!922, !652, !911, !576}
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !909, line: 102, baseType: !923)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !704, line: 73, baseType: !730)
!924 = !{!925, !926, !927}
!925 = !DILocalVariable(name: "nptr", arg: 1, scope: !919, file: !905, line: 336, type: !652)
!926 = !DILocalVariable(name: "endptr", arg: 2, scope: !919, file: !905, line: 336, type: !911)
!927 = !DILocalVariable(name: "base", arg: 3, scope: !919, file: !905, line: 336, type: !576)
!928 = !DILocation(line: 0, scope: !919)
!929 = !DILocation(line: 339, column: 10, scope: !919)
!930 = !DILocation(line: 339, column: 3, scope: !919)
!931 = distinct !DISubprogram(name: "wcstoimax", scope: !905, file: !905, line: 348, type: !932, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !941)
!932 = !DISubroutineType(types: !933)
!933 = !{!908, !934, !938, !576}
!934 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !935)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !937)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !905, line: 34, baseType: !576)
!938 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !939)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!941 = !{!942, !943, !944}
!942 = !DILocalVariable(name: "nptr", arg: 1, scope: !931, file: !905, line: 348, type: !934)
!943 = !DILocalVariable(name: "endptr", arg: 2, scope: !931, file: !905, line: 348, type: !938)
!944 = !DILocalVariable(name: "base", arg: 3, scope: !931, file: !905, line: 348, type: !576)
!945 = !DILocation(line: 0, scope: !931)
!946 = !DILocation(line: 351, column: 10, scope: !931)
!947 = !DILocation(line: 351, column: 3, scope: !931)
!948 = distinct !DISubprogram(name: "wcstoumax", scope: !905, file: !905, line: 362, type: !949, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !951)
!949 = !DISubroutineType(types: !950)
!950 = !{!922, !934, !938, !576}
!951 = !{!952, !953, !954}
!952 = !DILocalVariable(name: "nptr", arg: 1, scope: !948, file: !905, line: 362, type: !934)
!953 = !DILocalVariable(name: "endptr", arg: 2, scope: !948, file: !905, line: 362, type: !938)
!954 = !DILocalVariable(name: "base", arg: 3, scope: !948, file: !905, line: 362, type: !576)
!955 = !DILocation(line: 0, scope: !948)
!956 = !DILocation(line: 365, column: 10, scope: !948)
!957 = !DILocation(line: 365, column: 3, scope: !948)
!958 = distinct !DISubprogram(name: "stat", scope: !959, file: !959, line: 453, type: !960, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !999)
!959 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!960 = !DISubroutineType(types: !961)
!961 = !{!576, !581, !962}
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !964, line: 46, size: 1152, elements: !965)
!964 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!965 = !{!966, !968, !970, !972, !974, !976, !978, !979, !980, !981, !983, !985, !993, !994, !995}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !963, file: !964, line: 48, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !704, line: 145, baseType: !730)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !963, file: !964, line: 53, baseType: !969, size: 64, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !704, line: 148, baseType: !730)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !963, file: !964, line: 61, baseType: !971, size: 64, offset: 128)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !704, line: 151, baseType: !730)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !963, file: !964, line: 62, baseType: !973, size: 32, offset: 192)
!973 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !704, line: 150, baseType: !7)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !963, file: !964, line: 64, baseType: !975, size: 32, offset: 224)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !704, line: 146, baseType: !7)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !963, file: !964, line: 65, baseType: !977, size: 32, offset: 256)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !704, line: 147, baseType: !7)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !963, file: !964, line: 67, baseType: !576, size: 32, offset: 288)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !963, file: !964, line: 69, baseType: !967, size: 64, offset: 320)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !963, file: !964, line: 74, baseType: !703, size: 64, offset: 384)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !963, file: !964, line: 78, baseType: !982, size: 64, offset: 448)
!982 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !704, line: 174, baseType: !705)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !963, file: !964, line: 80, baseType: !984, size: 64, offset: 512)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !704, line: 179, baseType: !705)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !963, file: !964, line: 91, baseType: !986, size: 128, offset: 576)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !987, line: 10, size: 128, elements: !988)
!987 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!988 = !{!989, !991}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !986, file: !987, line: 12, baseType: !990, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !704, line: 160, baseType: !705)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !986, file: !987, line: 16, baseType: !992, size: 64, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !704, line: 196, baseType: !705)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !963, file: !964, line: 92, baseType: !986, size: 128, offset: 704)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !963, file: !964, line: 93, baseType: !986, size: 128, offset: 832)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !963, file: !964, line: 106, baseType: !996, size: 192, offset: 960)
!996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !992, size: 192, elements: !997)
!997 = !{!998}
!998 = !DISubrange(count: 3)
!999 = !{!1000, !1001}
!1000 = !DILocalVariable(name: "__path", arg: 1, scope: !958, file: !959, line: 453, type: !581)
!1001 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !958, file: !959, line: 453, type: !962)
!1002 = !DILocation(line: 0, scope: !958)
!1003 = !DILocation(line: 455, column: 10, scope: !958)
!1004 = !DILocation(line: 455, column: 3, scope: !958)
!1005 = distinct !DISubprogram(name: "lstat", scope: !959, file: !959, line: 460, type: !960, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1006)
!1006 = !{!1007, !1008}
!1007 = !DILocalVariable(name: "__path", arg: 1, scope: !1005, file: !959, line: 460, type: !581)
!1008 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1005, file: !959, line: 460, type: !962)
!1009 = !DILocation(line: 0, scope: !1005)
!1010 = !DILocation(line: 462, column: 10, scope: !1005)
!1011 = !DILocation(line: 462, column: 3, scope: !1005)
!1012 = distinct !DISubprogram(name: "fstat", scope: !959, file: !959, line: 467, type: !1013, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1015)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!576, !576, !962}
!1015 = !{!1016, !1017}
!1016 = !DILocalVariable(name: "__fd", arg: 1, scope: !1012, file: !959, line: 467, type: !576)
!1017 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1012, file: !959, line: 467, type: !962)
!1018 = !DILocation(line: 0, scope: !1012)
!1019 = !DILocation(line: 469, column: 10, scope: !1012)
!1020 = !DILocation(line: 469, column: 3, scope: !1012)
!1021 = distinct !DISubprogram(name: "fstatat", scope: !959, file: !959, line: 474, type: !1022, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1024)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!576, !576, !581, !962, !576}
!1024 = !{!1025, !1026, !1027, !1028}
!1025 = !DILocalVariable(name: "__fd", arg: 1, scope: !1021, file: !959, line: 474, type: !576)
!1026 = !DILocalVariable(name: "__filename", arg: 2, scope: !1021, file: !959, line: 474, type: !581)
!1027 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1021, file: !959, line: 474, type: !962)
!1028 = !DILocalVariable(name: "__flag", arg: 4, scope: !1021, file: !959, line: 474, type: !576)
!1029 = !DILocation(line: 0, scope: !1021)
!1030 = !DILocation(line: 477, column: 10, scope: !1021)
!1031 = !DILocation(line: 477, column: 3, scope: !1021)
!1032 = distinct !DISubprogram(name: "mknod", scope: !959, file: !959, line: 483, type: !1033, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1035)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!576, !581, !973, !967}
!1035 = !{!1036, !1037, !1038}
!1036 = !DILocalVariable(name: "__path", arg: 1, scope: !1032, file: !959, line: 483, type: !581)
!1037 = !DILocalVariable(name: "__mode", arg: 2, scope: !1032, file: !959, line: 483, type: !973)
!1038 = !DILocalVariable(name: "__dev", arg: 3, scope: !1032, file: !959, line: 483, type: !967)
!1039 = !DILocation(line: 0, scope: !1032)
!1040 = !DILocation(line: 485, column: 10, scope: !1032)
!1041 = !DILocation(line: 485, column: 3, scope: !1032)
!1042 = distinct !DISubprogram(name: "mknodat", scope: !959, file: !959, line: 491, type: !1043, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1045)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!576, !576, !581, !973, !967}
!1045 = !{!1046, !1047, !1048, !1049}
!1046 = !DILocalVariable(name: "__fd", arg: 1, scope: !1042, file: !959, line: 491, type: !576)
!1047 = !DILocalVariable(name: "__path", arg: 2, scope: !1042, file: !959, line: 491, type: !581)
!1048 = !DILocalVariable(name: "__mode", arg: 3, scope: !1042, file: !959, line: 491, type: !973)
!1049 = !DILocalVariable(name: "__dev", arg: 4, scope: !1042, file: !959, line: 491, type: !967)
!1050 = !DILocation(line: 0, scope: !1042)
!1051 = !DILocation(line: 494, column: 10, scope: !1042)
!1052 = !DILocation(line: 494, column: 3, scope: !1042)
!1053 = distinct !DISubprogram(name: "stat64", scope: !959, file: !959, line: 502, type: !1054, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1076)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!576, !581, !1056}
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !964, line: 119, size: 1152, elements: !1058)
!1058 = !{!1059, !1060, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1072, !1073, !1074, !1075}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1057, file: !964, line: 121, baseType: !967, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1057, file: !964, line: 123, baseType: !1061, size: 64, offset: 64)
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !704, line: 149, baseType: !730)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1057, file: !964, line: 124, baseType: !971, size: 64, offset: 128)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1057, file: !964, line: 125, baseType: !973, size: 32, offset: 192)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1057, file: !964, line: 132, baseType: !975, size: 32, offset: 224)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1057, file: !964, line: 133, baseType: !977, size: 32, offset: 256)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1057, file: !964, line: 135, baseType: !576, size: 32, offset: 288)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1057, file: !964, line: 136, baseType: !967, size: 64, offset: 320)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1057, file: !964, line: 137, baseType: !703, size: 64, offset: 384)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1057, file: !964, line: 143, baseType: !982, size: 64, offset: 448)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1057, file: !964, line: 144, baseType: !1071, size: 64, offset: 512)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !704, line: 180, baseType: !705)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1057, file: !964, line: 152, baseType: !986, size: 128, offset: 576)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1057, file: !964, line: 153, baseType: !986, size: 128, offset: 704)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1057, file: !964, line: 154, baseType: !986, size: 128, offset: 832)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1057, file: !964, line: 164, baseType: !996, size: 192, offset: 960)
!1076 = !{!1077, !1078}
!1077 = !DILocalVariable(name: "__path", arg: 1, scope: !1053, file: !959, line: 502, type: !581)
!1078 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1053, file: !959, line: 502, type: !1056)
!1079 = !DILocation(line: 0, scope: !1053)
!1080 = !DILocation(line: 504, column: 10, scope: !1053)
!1081 = !DILocation(line: 504, column: 3, scope: !1053)
!1082 = distinct !DISubprogram(name: "lstat64", scope: !959, file: !959, line: 509, type: !1054, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1083)
!1083 = !{!1084, !1085}
!1084 = !DILocalVariable(name: "__path", arg: 1, scope: !1082, file: !959, line: 509, type: !581)
!1085 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1082, file: !959, line: 509, type: !1056)
!1086 = !DILocation(line: 0, scope: !1082)
!1087 = !DILocation(line: 511, column: 10, scope: !1082)
!1088 = !DILocation(line: 511, column: 3, scope: !1082)
!1089 = distinct !DISubprogram(name: "fstat64", scope: !959, file: !959, line: 516, type: !1090, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1092)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!576, !576, !1056}
!1092 = !{!1093, !1094}
!1093 = !DILocalVariable(name: "__fd", arg: 1, scope: !1089, file: !959, line: 516, type: !576)
!1094 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1089, file: !959, line: 516, type: !1056)
!1095 = !DILocation(line: 0, scope: !1089)
!1096 = !DILocation(line: 518, column: 10, scope: !1089)
!1097 = !DILocation(line: 518, column: 3, scope: !1089)
!1098 = distinct !DISubprogram(name: "fstatat64", scope: !959, file: !959, line: 523, type: !1099, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1101)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!576, !576, !581, !1056, !576}
!1101 = !{!1102, !1103, !1104, !1105}
!1102 = !DILocalVariable(name: "__fd", arg: 1, scope: !1098, file: !959, line: 523, type: !576)
!1103 = !DILocalVariable(name: "__filename", arg: 2, scope: !1098, file: !959, line: 523, type: !581)
!1104 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1098, file: !959, line: 523, type: !1056)
!1105 = !DILocalVariable(name: "__flag", arg: 4, scope: !1098, file: !959, line: 523, type: !576)
!1106 = !DILocation(line: 0, scope: !1098)
!1107 = !DILocation(line: 526, column: 10, scope: !1098)
!1108 = !DILocation(line: 526, column: 3, scope: !1098)
!1109 = distinct !DISubprogram(name: "gate_tree_loop", scope: !3, file: !3, line: 45, type: !595, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !670)
!1110 = !DILocation(line: 47, column: 10, scope: !1109)
!1111 = !DILocation(line: 47, column: 34, scope: !1109)
!1112 = !DILocation(line: 47, column: 3, scope: !1109)
!1113 = distinct !DISubprogram(name: "tree_ssa_loop_init", scope: !3, file: !3, line: 72, type: !599, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !670)
!1114 = !DILocation(line: 74, column: 3, scope: !1113)
!1115 = !DILocation(line: 76, column: 3, scope: !1113)
!1116 = !DILocation(line: 78, column: 7, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 78, column: 7)
!1118 = !DILocation(line: 78, column: 26, scope: !1117)
!1119 = !DILocation(line: 78, column: 7, scope: !1113)
!1120 = !DILocation(line: 81, column: 3, scope: !1113)
!1121 = !DILocation(line: 82, column: 3, scope: !1113)
!1122 = !DILocation(line: 83, column: 1, scope: !1113)
!1123 = distinct !DISubprogram(name: "gate_tree_ssa_loop_im", scope: !3, file: !3, line: 117, type: !595, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !670)
!1124 = !DILocation(line: 119, column: 10, scope: !1123)
!1125 = !DILocation(line: 119, column: 28, scope: !1123)
!1126 = !DILocation(line: 119, column: 3, scope: !1123)
!1127 = distinct !DISubprogram(name: "tree_ssa_loop_im", scope: !3, file: !3, line: 107, type: !599, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !670)
!1128 = !DILocation(line: 109, column: 7, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 109, column: 7)
!1130 = !DILocation(line: 109, column: 26, scope: !1129)
!1131 = !DILocation(line: 109, column: 7, scope: !1127)
!1132 = !DILocation(line: 112, column: 3, scope: !1127)
!1133 = !DILocation(line: 113, column: 3, scope: !1127)
!1134 = !DILocation(line: 114, column: 1, scope: !1127)
!1135 = distinct !DISubprogram(name: "gate_tree_ssa_loop_unswitch", scope: !3, file: !3, line: 153, type: !595, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !670)
!1136 = !DILocation(line: 155, column: 10, scope: !1135)
!1137 = !DILocation(line: 155, column: 30, scope: !1135)
!1138 = !DILocation(line: 155, column: 3, scope: !1135)
!1139 = distinct !DISubprogram(name: "tree_ssa_loop_unswitch", scope: !3, file: !3, line: 144, type: !599, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !670)
!1140 = !DILocation(line: 146, column: 7, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 146, column: 7)
!1142 = !DILocation(line: 146, column: 26, scope: !1141)
!1143 = !DILocation(line: 146, column: 7, scope: !1139)
!1144 = !DILocation(line: 149, column: 10, scope: !1139)
!1145 = !DILocation(line: 149, column: 3, scope: !1139)
!1146 = !DILocation(line: 0, scope: !1139)
!1147 = !DILocation(line: 150, column: 1, scope: !1139)
!1148 = distinct !DISubprogram(name: "gate_tree_predictive_commoning", scope: !3, file: !3, line: 191, type: !595, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !670)
!1149 = !DILocation(line: 193, column: 10, scope: !1148)
!1150 = !DILocation(line: 193, column: 36, scope: !1148)
!1151 = !DILocation(line: 193, column: 3, scope: !1148)
!1152 = distinct !DISubprogram(name: "run_tree_predictive_commoning", scope: !3, file: !3, line: 181, type: !599, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !670)
!1153 = !DILocation(line: 183, column: 8, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 183, column: 7)
!1155 = !DILocation(line: 183, column: 7, scope: !1152)
!1156 = !DILocation(line: 186, column: 3, scope: !1152)
!1157 = !DILocation(line: 187, column: 3, scope: !1152)
!1158 = !DILocation(line: 188, column: 1, scope: !1152)
!1159 = distinct !DISubprogram(name: "gate_tree_vectorize", scope: !3, file: !3, line: 228, type: !595, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !670)
!1160 = !DILocation(line: 230, column: 10, scope: !1159)
!1161 = !DILocation(line: 230, column: 3, scope: !1159)
!1162 = distinct !DISubprogram(name: "tree_vectorize", scope: !3, file: !3, line: 219, type: !599, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !670)
!1163 = !DILocation(line: 221, column: 7, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 221, column: 7)
!1165 = !DILocation(line: 221, column: 26, scope: !1164)
!1166 = !DILocation(line: 221, column: 7, scope: !1162)
!1167 = !DILocation(line: 224, column: 10, scope: !1162)
!1168 = !DILocation(line: 224, column: 3, scope: !1162)
!1169 = !DILocation(line: 0, scope: !1162)
!1170 = !DILocation(line: 225, column: 1, scope: !1162)
!1171 = distinct !DISubprogram(name: "gate_tree_linear_transform", scope: !3, file: !3, line: 266, type: !595, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !670)
!1172 = !DILocation(line: 268, column: 10, scope: !1171)
!1173 = !DILocation(line: 268, column: 32, scope: !1171)
!1174 = !DILocation(line: 268, column: 3, scope: !1171)
!1175 = distinct !DISubprogram(name: "tree_linear_transform", scope: !3, file: !3, line: 256, type: !599, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !670)
!1176 = !DILocation(line: 258, column: 7, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 258, column: 7)
!1178 = !DILocation(line: 258, column: 26, scope: !1177)
!1179 = !DILocation(line: 258, column: 7, scope: !1175)
!1180 = !DILocation(line: 261, column: 3, scope: !1175)
!1181 = !DILocation(line: 262, column: 3, scope: !1175)
!1182 = !DILocation(line: 263, column: 1, scope: !1175)
!1183 = distinct !DISubprogram(name: "gate_graphite_transforms", scope: !3, file: !3, line: 306, type: !595, scopeLine: 307, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !670)
!1184 = !DILocation(line: 310, column: 7, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 310, column: 7)
!1186 = !DILocation(line: 310, column: 26, scope: !1185)
!1187 = !DILocation(line: 310, column: 23, scope: !1185)
!1188 = !DILocation(line: 310, column: 51, scope: !1185)
!1189 = !DILocation(line: 311, column: 10, scope: !1185)
!1190 = !DILocation(line: 311, column: 36, scope: !1185)
!1191 = !DILocation(line: 314, column: 10, scope: !1183)
!1192 = !DILocation(line: 312, column: 19, scope: !1185)
!1193 = !DILocation(line: 312, column: 5, scope: !1185)
!1194 = !DILocation(line: 314, column: 3, scope: !1183)
!1195 = distinct !DISubprogram(name: "graphite_transforms", scope: !3, file: !3, line: 295, type: !599, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !670)
!1196 = !DILocation(line: 297, column: 8, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 297, column: 7)
!1198 = !DILocation(line: 297, column: 7, scope: !1195)
!1199 = !DILocation(line: 300, column: 3, scope: !1195)
!1200 = !DILocation(line: 302, column: 3, scope: !1195)
!1201 = !DILocation(line: 303, column: 1, scope: !1195)
!1202 = distinct !DISubprogram(name: "gate_check_data_deps", scope: !3, file: !3, line: 349, type: !595, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !670)
!1203 = !DILocation(line: 351, column: 10, scope: !1202)
!1204 = !DILocation(line: 351, column: 31, scope: !1202)
!1205 = !DILocation(line: 351, column: 3, scope: !1202)
!1206 = distinct !DISubprogram(name: "check_data_deps", scope: !3, file: !3, line: 339, type: !599, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !670)
!1207 = !DILocation(line: 341, column: 7, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 341, column: 7)
!1209 = !DILocation(line: 341, column: 26, scope: !1208)
!1210 = !DILocation(line: 341, column: 7, scope: !1206)
!1211 = !DILocation(line: 344, column: 3, scope: !1206)
!1212 = !DILocation(line: 345, column: 3, scope: !1206)
!1213 = !DILocation(line: 346, column: 1, scope: !1206)
!1214 = distinct !DISubprogram(name: "gate_tree_ssa_loop_ivcanon", scope: !3, file: !3, line: 385, type: !595, scopeLine: 386, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !670)
!1215 = !DILocation(line: 387, column: 10, scope: !1214)
!1216 = !DILocation(line: 387, column: 33, scope: !1214)
!1217 = !DILocation(line: 387, column: 3, scope: !1214)
!1218 = distinct !DISubprogram(name: "tree_ssa_loop_ivcanon", scope: !3, file: !3, line: 376, type: !599, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !670)
!1219 = !DILocation(line: 378, column: 7, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 378, column: 7)
!1221 = !DILocation(line: 378, column: 26, scope: !1220)
!1222 = !DILocation(line: 378, column: 7, scope: !1218)
!1223 = !DILocation(line: 381, column: 10, scope: !1218)
!1224 = !DILocation(line: 381, column: 3, scope: !1218)
!1225 = !DILocation(line: 0, scope: !1218)
!1226 = !DILocation(line: 382, column: 1, scope: !1218)
!1227 = distinct !DISubprogram(name: "gate_scev_const_prop", scope: !3, file: !3, line: 412, type: !595, scopeLine: 413, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !670)
!1228 = !DILocation(line: 414, column: 10, scope: !1227)
!1229 = !DILocation(line: 414, column: 3, scope: !1227)
!1230 = distinct !DISubprogram(name: "tree_ssa_loop_bounds", scope: !3, file: !3, line: 441, type: !599, scopeLine: 442, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !670)
!1231 = !DILocation(line: 443, column: 7, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 443, column: 7)
!1233 = !DILocation(line: 443, column: 26, scope: !1232)
!1234 = !DILocation(line: 443, column: 7, scope: !1230)
!1235 = !DILocation(line: 446, column: 3, scope: !1230)
!1236 = !DILocation(line: 447, column: 3, scope: !1230)
!1237 = !DILocation(line: 448, column: 3, scope: !1230)
!1238 = !DILocation(line: 449, column: 1, scope: !1230)
!1239 = distinct !DISubprogram(name: "gate_tree_complete_unroll", scope: !3, file: !3, line: 484, type: !595, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !670)
!1240 = !DILocation(line: 486, column: 3, scope: !1239)
!1241 = distinct !DISubprogram(name: "tree_complete_unroll", scope: !3, file: !3, line: 473, type: !599, scopeLine: 474, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !670)
!1242 = !DILocation(line: 475, column: 7, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 475, column: 7)
!1244 = !DILocation(line: 475, column: 26, scope: !1243)
!1245 = !DILocation(line: 475, column: 7, scope: !1241)
!1246 = !DILocation(line: 478, column: 40, scope: !1241)
!1247 = !DILocation(line: 479, column: 15, scope: !1241)
!1248 = !DILocation(line: 479, column: 12, scope: !1241)
!1249 = !DILocation(line: 480, column: 15, scope: !1241)
!1250 = !DILocation(line: 480, column: 24, scope: !1241)
!1251 = !DILocation(line: 480, column: 12, scope: !1241)
!1252 = !DILocation(line: 478, column: 10, scope: !1241)
!1253 = !DILocation(line: 478, column: 3, scope: !1241)
!1254 = !DILocation(line: 0, scope: !1241)
!1255 = !DILocation(line: 481, column: 1, scope: !1241)
!1256 = distinct !DISubprogram(name: "gate_tree_complete_unroll_inner", scope: !3, file: !3, line: 531, type: !595, scopeLine: 532, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !670)
!1257 = !DILocation(line: 533, column: 10, scope: !1256)
!1258 = !DILocation(line: 533, column: 19, scope: !1256)
!1259 = !DILocation(line: 533, column: 3, scope: !1256)
!1260 = distinct !DISubprogram(name: "tree_complete_unroll_inner", scope: !3, file: !3, line: 512, type: !599, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1261)
!1261 = !{!1262}
!1262 = !DILocalVariable(name: "ret", scope: !1260, file: !3, line: 514, type: !7)
!1263 = !DILocation(line: 0, scope: !1260)
!1264 = !DILocation(line: 516, column: 3, scope: !1260)
!1265 = !DILocation(line: 518, column: 7, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 518, column: 7)
!1267 = !DILocation(line: 518, column: 26, scope: !1266)
!1268 = !DILocation(line: 518, column: 7, scope: !1260)
!1269 = !DILocation(line: 520, column: 7, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 519, column: 5)
!1271 = !DILocation(line: 521, column: 43, scope: !1270)
!1272 = !DILocation(line: 521, column: 52, scope: !1270)
!1273 = !DILocation(line: 521, column: 13, scope: !1270)
!1274 = !DILocation(line: 522, column: 7, scope: !1270)
!1275 = !DILocation(line: 523, column: 7, scope: !1270)
!1276 = !DILocation(line: 524, column: 5, scope: !1270)
!1277 = !DILocation(line: 525, column: 3, scope: !1260)
!1278 = !DILocation(line: 527, column: 3, scope: !1260)
!1279 = distinct !DISubprogram(name: "gate_tree_parallelize_loops", scope: !3, file: !3, line: 559, type: !595, scopeLine: 560, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !670)
!1280 = !DILocation(line: 561, column: 10, scope: !1279)
!1281 = !DILocation(line: 561, column: 38, scope: !1279)
!1282 = !DILocation(line: 561, column: 3, scope: !1279)
!1283 = distinct !DISubprogram(name: "tree_parallelize_loops", scope: !3, file: !3, line: 565, type: !599, scopeLine: 566, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !670)
!1284 = !DILocation(line: 567, column: 7, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 567, column: 7)
!1286 = !DILocation(line: 567, column: 26, scope: !1285)
!1287 = !DILocation(line: 567, column: 7, scope: !1283)
!1288 = !DILocation(line: 570, column: 7, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 570, column: 7)
!1290 = !DILocation(line: 0, scope: !1283)
!1291 = !DILocation(line: 573, column: 1, scope: !1283)
!1292 = distinct !DISubprogram(name: "gate_tree_ssa_loop_prefetch", scope: !3, file: !3, line: 606, type: !595, scopeLine: 607, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !670)
!1293 = !DILocation(line: 608, column: 10, scope: !1292)
!1294 = !DILocation(line: 608, column: 36, scope: !1292)
!1295 = !DILocation(line: 608, column: 3, scope: !1292)
!1296 = distinct !DISubprogram(name: "tree_ssa_loop_prefetch", scope: !3, file: !3, line: 597, type: !599, scopeLine: 598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !670)
!1297 = !DILocation(line: 599, column: 7, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 599, column: 7)
!1299 = !DILocation(line: 599, column: 26, scope: !1298)
!1300 = !DILocation(line: 599, column: 7, scope: !1296)
!1301 = !DILocation(line: 602, column: 10, scope: !1296)
!1302 = !DILocation(line: 602, column: 3, scope: !1296)
!1303 = !DILocation(line: 0, scope: !1296)
!1304 = !DILocation(line: 603, column: 1, scope: !1296)
!1305 = distinct !DISubprogram(name: "gate_tree_ssa_loop_ivopts", scope: !3, file: !3, line: 643, type: !595, scopeLine: 644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !670)
!1306 = !DILocation(line: 645, column: 10, scope: !1305)
!1307 = !DILocation(line: 645, column: 22, scope: !1305)
!1308 = !DILocation(line: 645, column: 3, scope: !1305)
!1309 = distinct !DISubprogram(name: "tree_ssa_loop_ivopts", scope: !3, file: !3, line: 633, type: !599, scopeLine: 634, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !670)
!1310 = !DILocation(line: 635, column: 7, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 635, column: 7)
!1312 = !DILocation(line: 635, column: 26, scope: !1311)
!1313 = !DILocation(line: 635, column: 7, scope: !1309)
!1314 = !DILocation(line: 638, column: 3, scope: !1309)
!1315 = !DILocation(line: 639, column: 3, scope: !1309)
!1316 = !DILocation(line: 640, column: 1, scope: !1309)
!1317 = distinct !DISubprogram(name: "tree_ssa_loop_done", scope: !3, file: !3, line: 671, type: !599, scopeLine: 672, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !670)
!1318 = !DILocation(line: 673, column: 3, scope: !1317)
!1319 = !DILocation(line: 674, column: 3, scope: !1317)
!1320 = !DILocation(line: 675, column: 3, scope: !1317)
!1321 = !DILocation(line: 676, column: 3, scope: !1317)
!1322 = distinct !DISubprogram(name: "number_of_loops", scope: !561, file: !561, line: 459, type: !599, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !670)
!1323 = !DILocation(line: 461, column: 8, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1322, file: !561, line: 461, column: 7)
!1325 = !DILocation(line: 461, column: 7, scope: !1322)
!1326 = !DILocation(line: 464, column: 10, scope: !1322)
!1327 = !DILocation(line: 464, column: 3, scope: !1322)
!1328 = !DILocation(line: 0, scope: !1322)
!1329 = !DILocation(line: 465, column: 1, scope: !1322)
!1330 = distinct !DISubprogram(name: "VEC_loop_p_base_length", scope: !561, file: !561, line: 85, type: !1331, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2706)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!7, !1333}
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1335)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_base", file: !561, line: 85, baseType: !1336)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_base", file: !561, line: 85, size: 128, elements: !1337)
!1337 = !{!1338, !1339, !1340}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1336, file: !561, line: 85, baseType: !7, size: 32)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1336, file: !561, line: 85, baseType: !7, size: 32, offset: 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1336, file: !561, line: 85, baseType: !1341, size: 64, offset: 64)
!1341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1342, size: 64, elements: !712)
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_p", file: !561, line: 84, baseType: !1343)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !561, line: 100, size: 1216, elements: !1345)
!1345 = !{!1346, !1347, !1348, !2670, !2671, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2696, !2704, !2705}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1344, file: !561, line: 102, baseType: !576, size: 32)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "ninsns", scope: !1344, file: !561, line: 105, baseType: !7, size: 32, offset: 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1344, file: !561, line: 108, baseType: !1349, size: 64, offset: 64)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !318, line: 217, size: 832, elements: !1351)
!1351 = !{!1352, !2637, !2638, !2639, !2640, !2644, !2645, !2646, !2664, !2665, !2666, !2667, !2668, !2669}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !1350, file: !318, line: 219, baseType: !1353, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !318, line: 151, baseType: !1355)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !318, line: 151, size: 128, elements: !1356)
!1356 = !{!1357}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1355, file: !318, line: 151, baseType: !1358, size: 128)
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !318, line: 150, baseType: !1359)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !318, line: 150, size: 128, elements: !1360)
!1360 = !{!1361, !1362, !1363}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1359, file: !318, line: 150, baseType: !7, size: 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1359, file: !318, line: 150, baseType: !7, size: 32, offset: 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1359, file: !318, line: 150, baseType: !1364, size: 64, offset: 64)
!1364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1365, size: 64, elements: !712)
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !1366, line: 108, baseType: !1367)
!1366 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !318, line: 122, size: 512, elements: !1369)
!1369 = !{!1370, !1371, !1372, !2629, !2630, !2631, !2632, !2633, !2634, !2635}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1368, file: !318, line: 124, baseType: !1349, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !1368, file: !318, line: 125, baseType: !1349, size: 64, offset: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !1368, file: !318, line: 131, baseType: !1373, size: 64, offset: 128)
!1373 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !318, line: 128, size: 64, elements: !1374)
!1374 = !{!1375, !2628}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1373, file: !318, line: 129, baseType: !1376, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !1366, line: 66, baseType: !1377)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !1379, line: 143, size: 192, elements: !1380)
!1379 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1380 = !{!1381, !2626, !2627}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1378, file: !1379, line: 145, baseType: !1382, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !1366, line: 69, baseType: !1383)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !1379, line: 136, size: 192, elements: !1385)
!1385 = !{!1386, !2624, !2625}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1384, file: !1379, line: 137, baseType: !1387, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !1366, line: 58, baseType: !1388)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !1379, line: 737, size: 768, elements: !1390)
!1390 = !{!1391, !2471, !2481, !2487, !2492, !2497, !2504, !2510, !2516, !2521, !2535, !2540, !2546, !2551, !2561, !2566, !2582, !2589, !2596, !2602, !2607, !2613, !2619}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1389, file: !1379, line: 738, baseType: !1392, size: 256)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !1379, line: 271, size: 256, elements: !1393)
!1393 = !{!1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1409, !1410, !1411}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1392, file: !1379, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !1392, file: !1379, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1392, file: !1379, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !1392, file: !1379, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !1392, file: !1379, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !1392, file: !1379, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !1392, file: !1379, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !1392, file: !1379, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1392, file: !1379, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1392, file: !1379, line: 312, baseType: !7, size: 32, offset: 32)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !1392, file: !1379, line: 316, baseType: !1405, size: 32, offset: 64)
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !1406, line: 58, baseType: !1407)
!1406 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !1408, line: 44, baseType: !7)
!1408 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !1392, file: !1379, line: 319, baseType: !7, size: 32, offset: 96)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !1392, file: !1379, line: 323, baseType: !1349, size: 64, offset: 128)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1392, file: !1379, line: 327, baseType: !1412, size: 64, offset: 192)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !1366, line: 56, baseType: !1413)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !334, line: 3371, size: 1792, elements: !1415)
!1415 = !{!1416, !1449, !1455, !1466, !1483, !1494, !1499, !1505, !1511, !1524, !1532, !1570, !1776, !1804, !1821, !1822, !1827, !1836, !1842, !1847, !1851, !1855, !2123, !2170, !2176, !2182, !2189, !2202, !2216, !2233, !2245, !2267, !2282, !2453}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1414, file: !334, line: 3372, baseType: !1417, size: 64)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !334, line: 360, size: 64, elements: !1418)
!1418 = !{!1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1417, file: !334, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !1417, file: !334, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !1417, file: !334, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !1417, file: !334, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !1417, file: !334, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !1417, file: !334, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !1417, file: !334, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !1417, file: !334, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !1417, file: !334, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !1417, file: !334, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !1417, file: !334, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !1417, file: !334, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !1417, file: !334, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !1417, file: !334, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !1417, file: !334, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !1417, file: !334, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !1417, file: !334, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !1417, file: !334, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1417, file: !334, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1417, file: !334, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1417, file: !334, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1417, file: !334, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1417, file: !334, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1417, file: !334, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1417, file: !334, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1417, file: !334, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !1417, file: !334, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !1417, file: !334, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !1417, file: !334, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !1417, file: !334, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1414, file: !334, line: 3373, baseType: !1450, size: 192)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !334, line: 402, size: 192, elements: !1451)
!1451 = !{!1452, !1453, !1454}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1450, file: !334, line: 403, baseType: !1417, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !1450, file: !334, line: 404, baseType: !1412, size: 64, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1450, file: !334, line: 405, baseType: !1412, size: 64, offset: 128)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !1414, file: !334, line: 3374, baseType: !1456, size: 320)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !334, line: 1384, size: 320, elements: !1457)
!1457 = !{!1458, !1459}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1456, file: !334, line: 1385, baseType: !1450, size: 192)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !1456, file: !334, line: 1386, baseType: !1460, size: 128, offset: 192)
!1460 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !1461, line: 58, baseType: !1462)
!1461 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1461, line: 54, size: 128, elements: !1463)
!1463 = !{!1464, !1465}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !1462, file: !1461, line: 56, baseType: !730, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !1462, file: !1461, line: 57, baseType: !705, size: 64, offset: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !1414, file: !334, line: 3375, baseType: !1467, size: 256)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !334, line: 1397, size: 256, elements: !1468)
!1468 = !{!1469, !1470}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1467, file: !334, line: 1398, baseType: !1450, size: 192)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !1467, file: !334, line: 1399, baseType: !1471, size: 64, offset: 192)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !1473, line: 52, size: 256, elements: !1474)
!1473 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1474 = !{!1475, !1476, !1477, !1478, !1479, !1480, !1481}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !1472, file: !1473, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !1472, file: !1473, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !1472, file: !1473, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !1472, file: !1473, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1472, file: !1473, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !1472, file: !1473, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1472, file: !1473, line: 62, baseType: !1482, size: 192, offset: 64)
!1482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !730, size: 192, elements: !997)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !1414, file: !334, line: 3376, baseType: !1484, size: 256)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !334, line: 1408, size: 256, elements: !1485)
!1485 = !{!1486, !1487}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1484, file: !334, line: 1409, baseType: !1450, size: 192)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !1484, file: !334, line: 1410, baseType: !1488, size: 64, offset: 192)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !1490, line: 27, size: 192, elements: !1491)
!1490 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1491 = !{!1492, !1493}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1489, file: !1490, line: 29, baseType: !1460, size: 128)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1489, file: !1490, line: 30, baseType: !189, size: 32, offset: 128)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1414, file: !334, line: 3377, baseType: !1495, size: 256)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !334, line: 1437, size: 256, elements: !1496)
!1496 = !{!1497, !1498}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1495, file: !334, line: 1438, baseType: !1450, size: 192)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1495, file: !334, line: 1439, baseType: !1412, size: 64, offset: 192)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1414, file: !334, line: 3378, baseType: !1500, size: 256)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !334, line: 1418, size: 256, elements: !1501)
!1501 = !{!1502, !1503, !1504}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1500, file: !334, line: 1419, baseType: !1450, size: 192)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1500, file: !334, line: 1420, baseType: !576, size: 32, offset: 192)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1500, file: !334, line: 1421, baseType: !711, size: 8, offset: 224)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !1414, file: !334, line: 3379, baseType: !1506, size: 320)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !334, line: 1428, size: 320, elements: !1507)
!1507 = !{!1508, !1509, !1510}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1506, file: !334, line: 1429, baseType: !1450, size: 192)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !1506, file: !334, line: 1430, baseType: !1412, size: 64, offset: 192)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !1506, file: !334, line: 1431, baseType: !1412, size: 64, offset: 256)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !1414, file: !334, line: 3380, baseType: !1512, size: 320)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !334, line: 1460, size: 320, elements: !1513)
!1513 = !{!1514, !1515}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1512, file: !334, line: 1461, baseType: !1450, size: 192)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1512, file: !334, line: 1462, baseType: !1516, size: 128, offset: 192)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !1517, line: 31, size: 128, elements: !1518)
!1517 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1518 = !{!1519, !1522, !1523}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1516, file: !1517, line: 32, baseType: !1520, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !575)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1516, file: !1517, line: 33, baseType: !7, size: 32, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !1516, file: !1517, line: 34, baseType: !7, size: 32, offset: 96)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !1414, file: !334, line: 3381, baseType: !1525, size: 384)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !334, line: 2507, size: 384, elements: !1526)
!1526 = !{!1527, !1528, !1529, !1530, !1531}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1525, file: !334, line: 2508, baseType: !1450, size: 192)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1525, file: !334, line: 2509, baseType: !1405, size: 32, offset: 192)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1525, file: !334, line: 2510, baseType: !7, size: 32, offset: 224)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1525, file: !334, line: 2511, baseType: !1412, size: 64, offset: 256)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1525, file: !334, line: 2512, baseType: !1412, size: 64, offset: 320)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !1414, file: !334, line: 3382, baseType: !1533, size: 896)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !334, line: 2652, size: 896, elements: !1534)
!1534 = !{!1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1533, file: !334, line: 2653, baseType: !1525, size: 384)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1533, file: !334, line: 2654, baseType: !1412, size: 64, offset: 384)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1533, file: !334, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !1533, file: !334, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !1533, file: !334, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !1533, file: !334, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1533, file: !334, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !1533, file: !334, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !1533, file: !334, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !1533, file: !334, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1533, file: !334, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1533, file: !334, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1533, file: !334, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1533, file: !334, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1533, file: !334, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1533, file: !334, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1533, file: !334, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !1533, file: !334, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !1533, file: !334, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !1533, file: !334, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !1533, file: !334, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !1533, file: !334, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !1533, file: !334, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !1533, file: !334, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !1533, file: !334, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !1533, file: !334, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !1533, file: !334, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1533, file: !334, line: 2703, baseType: !7, size: 32, offset: 512)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1533, file: !334, line: 2705, baseType: !1412, size: 64, offset: 576)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1533, file: !334, line: 2706, baseType: !1412, size: 64, offset: 640)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1533, file: !334, line: 2707, baseType: !1412, size: 64, offset: 704)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1533, file: !334, line: 2708, baseType: !1412, size: 64, offset: 768)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1533, file: !334, line: 2711, baseType: !1568, size: 64, offset: 832)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !334, line: 2711, flags: DIFlagFwdDecl)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !1414, file: !334, line: 3383, baseType: !1571, size: 960)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !334, line: 2756, size: 960, elements: !1572)
!1572 = !{!1573, !1574}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1571, file: !334, line: 2757, baseType: !1533, size: 896)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1571, file: !334, line: 2758, baseType: !1575, size: 64, offset: 896)
!1575 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !1366, line: 50, baseType: !1576)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !1578, line: 240, size: 384, elements: !1579)
!1578 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1579 = !{!1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1577, file: !1578, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1577, file: !1578, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !1577, file: !1578, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !1577, file: !1578, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !1577, file: !1578, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !1577, file: !1578, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !1577, file: !1578, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1577, file: !1578, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !1577, file: !1578, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !1577, file: !1578, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1577, file: !1578, line: 321, baseType: !1591, size: 320, offset: 64)
!1591 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !1578, line: 315, size: 320, elements: !1592)
!1592 = !{!1593, !1711, !1713, !1774, !1775}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1591, file: !1578, line: 316, baseType: !1594, size: 64)
!1594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1595, size: 64, elements: !712)
!1595 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !1578, line: 183, baseType: !1596)
!1596 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !1578, line: 166, size: 64, elements: !1597)
!1597 = !{!1598, !1599, !1600, !1601, !1602, !1610, !1611, !1623, !1626, !1686, !1687, !1688, !1701, !1708}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !1596, file: !1578, line: 168, baseType: !576, size: 32)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !1596, file: !1578, line: 169, baseType: !7, size: 32)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !1596, file: !1578, line: 170, baseType: !581, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !1596, file: !1578, line: 171, baseType: !1575, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !1596, file: !1578, line: 172, baseType: !1603, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !1366, line: 53, baseType: !1604)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !1578, line: 359, size: 128, elements: !1606)
!1606 = !{!1607, !1608}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !1605, file: !1578, line: 360, baseType: !576, size: 32)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1605, file: !1578, line: 361, baseType: !1609, size: 64, offset: 64)
!1609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1575, size: 64, elements: !712)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !1596, file: !1578, line: 173, baseType: !189, size: 32)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !1596, file: !1578, line: 174, baseType: !1612, size: 32)
!1612 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !1578, line: 133, baseType: !1613)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1578, line: 115, size: 32, elements: !1614)
!1614 = !{!1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !1613, file: !1578, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !1613, file: !1578, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !1613, file: !1578, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !1613, file: !1578, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !1613, file: !1578, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !1613, file: !1578, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !1613, file: !1578, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !1613, file: !1578, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !1596, file: !1578, line: 175, baseType: !1624, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !1578, line: 175, flags: DIFlagFwdDecl)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !1596, file: !1578, line: 176, baseType: !1627, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !1629, line: 75, size: 256, elements: !1630)
!1629 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1630 = !{!1631, !1645, !1646, !1647}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1628, file: !1629, line: 76, baseType: !1632, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !1629, line: 68, baseType: !1634)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !1629, line: 63, size: 320, elements: !1635)
!1635 = !{!1636, !1638, !1639, !1640}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1634, file: !1629, line: 64, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1634, file: !1629, line: 65, baseType: !1637, size: 64, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !1634, file: !1629, line: 66, baseType: !7, size: 32, offset: 128)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1634, file: !1629, line: 67, baseType: !1641, size: 128, offset: 192)
!1641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1642, size: 128, elements: !1643)
!1642 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !1629, line: 29, baseType: !730)
!1643 = !{!1644}
!1644 = !DISubrange(count: 2)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !1628, file: !1629, line: 77, baseType: !1632, size: 64, offset: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !1628, file: !1629, line: 78, baseType: !7, size: 32, offset: 128)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !1628, file: !1629, line: 79, baseType: !1648, size: 64, offset: 192)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !1629, line: 49, baseType: !1650)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !1629, line: 45, size: 832, elements: !1651)
!1651 = !{!1652, !1653, !1654}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1650, file: !1629, line: 46, baseType: !1637, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !1650, file: !1629, line: 47, baseType: !1627, size: 64, offset: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !1650, file: !1629, line: 48, baseType: !1655, size: 704, offset: 128)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !1656, line: 164, size: 704, elements: !1657)
!1656 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1657 = !{!1658, !1659, !1669, !1670, !1671, !1672, !1673, !1674, !1678, !1682, !1683, !1684, !1685}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !1655, file: !1656, line: 166, baseType: !705, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !1655, file: !1656, line: 167, baseType: !1660, size: 64, offset: 64)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !1656, line: 157, size: 192, elements: !1662)
!1662 = !{!1663, !1664, !1665}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1661, file: !1656, line: 159, baseType: !578, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1661, file: !1656, line: 160, baseType: !1660, size: 64, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !1661, file: !1656, line: 161, baseType: !1666, size: 32, offset: 128)
!1666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !579, size: 32, elements: !1667)
!1667 = !{!1668}
!1668 = !DISubrange(count: 4)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !1655, file: !1656, line: 168, baseType: !578, size: 64, offset: 128)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !1655, file: !1656, line: 169, baseType: !578, size: 64, offset: 192)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !1655, file: !1656, line: 170, baseType: !578, size: 64, offset: 256)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !1655, file: !1656, line: 171, baseType: !705, size: 64, offset: 320)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !1655, file: !1656, line: 172, baseType: !576, size: 32, offset: 384)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !1655, file: !1656, line: 176, baseType: !1675, size: 64, offset: 448)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!1660, !580, !705}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !1655, file: !1656, line: 177, baseType: !1679, size: 64, offset: 512)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{null, !580, !1660}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !1655, file: !1656, line: 178, baseType: !580, size: 64, offset: 576)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !1655, file: !1656, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !1655, file: !1656, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !1655, file: !1656, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !1596, file: !1578, line: 177, baseType: !1412, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !1596, file: !1578, line: 178, baseType: !1349, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !1596, file: !1578, line: 179, baseType: !1689, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !1578, line: 150, baseType: !1691)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !1578, line: 142, size: 320, elements: !1692)
!1692 = !{!1693, !1694, !1695, !1696, !1699, !1700}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1691, file: !1578, line: 144, baseType: !1412, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1691, file: !1578, line: 145, baseType: !1575, size: 64, offset: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1691, file: !1578, line: 146, baseType: !1575, size: 64, offset: 128)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1691, file: !1578, line: 147, baseType: !1697, size: 32, offset: 192)
!1697 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1698, line: 31, baseType: !576)
!1698 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1691, file: !1578, line: 148, baseType: !7, size: 32, offset: 224)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1691, file: !1578, line: 149, baseType: !575, size: 8, offset: 256)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !1596, file: !1578, line: 180, baseType: !1702, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !1578, line: 162, baseType: !1704)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !1578, line: 159, size: 128, elements: !1705)
!1705 = !{!1706, !1707}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1704, file: !1578, line: 160, baseType: !1412, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1704, file: !1578, line: 161, baseType: !705, size: 64, offset: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !1596, file: !1578, line: 181, baseType: !1709, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !1578, line: 181, flags: DIFlagFwdDecl)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !1591, file: !1578, line: 317, baseType: !1712, size: 64)
!1712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !705, size: 64, elements: !712)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !1591, file: !1578, line: 318, baseType: !1714, size: 320)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !1578, line: 188, size: 320, elements: !1715)
!1715 = !{!1716, !1718, !1773}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1714, file: !1578, line: 190, baseType: !1717, size: 192)
!1717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1595, size: 192, elements: !997)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1714, file: !1578, line: 193, baseType: !1719, size: 64, offset: 192)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !1578, line: 206, size: 320, elements: !1721)
!1721 = !{!1722, !1758, !1759, !1760, !1772}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1720, file: !1578, line: 208, baseType: !1723, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !1366, line: 62, baseType: !1725)
!1725 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1726, line: 538, size: 256, elements: !1727)
!1726 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1727 = !{!1728, !1732, !1738, !1749}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1725, file: !1726, line: 539, baseType: !1729, size: 32)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1726, line: 482, size: 32, elements: !1730)
!1730 = !{!1731}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1729, file: !1726, line: 484, baseType: !7, size: 32)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1725, file: !1726, line: 540, baseType: !1733, size: 192)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1726, line: 488, size: 192, elements: !1734)
!1734 = !{!1735, !1736, !1737}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1733, file: !1726, line: 489, baseType: !1729, size: 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1733, file: !1726, line: 492, baseType: !581, size: 64, offset: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1733, file: !1726, line: 496, baseType: !1412, size: 64, offset: 128)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1725, file: !1726, line: 541, baseType: !1739, size: 256)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1726, line: 504, size: 256, elements: !1740)
!1740 = !{!1741, !1742, !1747, !1748}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1739, file: !1726, line: 505, baseType: !1729, size: 32)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1739, file: !1726, line: 509, baseType: !1743, size: 64, offset: 64)
!1743 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1726, line: 501, baseType: !1744)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{null, !857}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1739, file: !1726, line: 510, baseType: !857, size: 64, offset: 128)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1739, file: !1726, line: 513, baseType: !1723, size: 64, offset: 192)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1725, file: !1726, line: 542, baseType: !1750, size: 128)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1726, line: 530, size: 128, elements: !1751)
!1751 = !{!1752, !1753}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1750, file: !1726, line: 531, baseType: !1729, size: 32)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1750, file: !1726, line: 534, baseType: !1754, size: 64, offset: 64)
!1754 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1726, line: 525, baseType: !1755)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!575, !1412, !581, !730, !730}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1720, file: !1578, line: 211, baseType: !7, size: 32, offset: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1720, file: !1578, line: 214, baseType: !705, size: 64, offset: 128)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1720, file: !1578, line: 224, baseType: !1761, size: 64, offset: 192)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !1578, line: 202, baseType: !1763)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !1578, line: 202, size: 128, elements: !1764)
!1764 = !{!1765}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1763, file: !1578, line: 202, baseType: !1766, size: 128)
!1766 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !1578, line: 200, baseType: !1767)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !1578, line: 200, size: 128, elements: !1768)
!1768 = !{!1769, !1770, !1771}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1767, file: !1578, line: 200, baseType: !7, size: 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1767, file: !1578, line: 200, baseType: !7, size: 32, offset: 32)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1767, file: !1578, line: 200, baseType: !1609, size: 64, offset: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1720, file: !1578, line: 234, baseType: !1761, size: 64, offset: 256)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1714, file: !1578, line: 197, baseType: !705, size: 64, offset: 256)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !1591, file: !1578, line: 319, baseType: !1472, size: 256)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !1591, file: !1578, line: 320, baseType: !1489, size: 192)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !1414, file: !334, line: 3384, baseType: !1777, size: 1472)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !334, line: 3114, size: 1472, elements: !1778)
!1778 = !{!1779, !1800, !1801, !1802, !1803}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1777, file: !334, line: 3115, baseType: !1780, size: 1216)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !334, line: 2984, size: 1216, elements: !1781)
!1781 = !{!1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1780, file: !334, line: 2985, baseType: !1571, size: 960)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1780, file: !334, line: 2986, baseType: !1412, size: 64, offset: 960)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1780, file: !334, line: 2987, baseType: !1412, size: 64, offset: 1024)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1780, file: !334, line: 2988, baseType: !1412, size: 64, offset: 1088)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1780, file: !334, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1780, file: !334, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1780, file: !334, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1780, file: !334, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1780, file: !334, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1780, file: !334, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1780, file: !334, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1780, file: !334, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1780, file: !334, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1780, file: !334, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1780, file: !334, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1780, file: !334, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1780, file: !334, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1780, file: !334, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1777, file: !334, line: 3117, baseType: !1412, size: 64, offset: 1216)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1777, file: !334, line: 3119, baseType: !1412, size: 64, offset: 1280)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1777, file: !334, line: 3121, baseType: !1412, size: 64, offset: 1344)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1777, file: !334, line: 3123, baseType: !1412, size: 64, offset: 1408)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !1414, file: !334, line: 3385, baseType: !1805, size: 1088)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !334, line: 2874, size: 1088, elements: !1806)
!1806 = !{!1807, !1808, !1809}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1805, file: !334, line: 2875, baseType: !1571, size: 960)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1805, file: !334, line: 2876, baseType: !1575, size: 64, offset: 960)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1805, file: !334, line: 2877, baseType: !1810, size: 64, offset: 1024)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !1812, line: 172, size: 128, elements: !1813)
!1812 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1813 = !{!1814, !1815, !1816, !1817, !1818, !1819, !1820}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !1811, file: !1812, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1811, file: !1812, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !1811, file: !1812, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !1811, file: !1812, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !1811, file: !1812, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !1811, file: !1812, line: 195, baseType: !7, size: 32, offset: 32)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !1811, file: !1812, line: 199, baseType: !1412, size: 64, offset: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !1414, file: !334, line: 3386, baseType: !1780, size: 1216)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !1414, file: !334, line: 3387, baseType: !1823, size: 1280)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !334, line: 3093, size: 1280, elements: !1824)
!1824 = !{!1825, !1826}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1823, file: !334, line: 3094, baseType: !1780, size: 1216)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1823, file: !334, line: 3095, baseType: !1810, size: 64, offset: 1216)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !1414, file: !334, line: 3388, baseType: !1828, size: 1216)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !334, line: 2824, size: 1216, elements: !1829)
!1829 = !{!1830, !1831, !1832, !1833, !1834, !1835}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1828, file: !334, line: 2825, baseType: !1533, size: 896)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1828, file: !334, line: 2827, baseType: !1412, size: 64, offset: 896)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1828, file: !334, line: 2828, baseType: !1412, size: 64, offset: 960)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1828, file: !334, line: 2829, baseType: !1412, size: 64, offset: 1024)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1828, file: !334, line: 2830, baseType: !1412, size: 64, offset: 1088)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1828, file: !334, line: 2831, baseType: !1412, size: 64, offset: 1152)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !1414, file: !334, line: 3389, baseType: !1837, size: 1024)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !334, line: 2850, size: 1024, elements: !1838)
!1838 = !{!1839, !1840, !1841}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1837, file: !334, line: 2851, baseType: !1571, size: 960)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1837, file: !334, line: 2852, baseType: !576, size: 32, offset: 960)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1837, file: !334, line: 2853, baseType: !576, size: 32, offset: 992)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !1414, file: !334, line: 3390, baseType: !1843, size: 1024)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !334, line: 2857, size: 1024, elements: !1844)
!1844 = !{!1845, !1846}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1843, file: !334, line: 2858, baseType: !1571, size: 960)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1843, file: !334, line: 2859, baseType: !1810, size: 64, offset: 960)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !1414, file: !334, line: 3391, baseType: !1848, size: 960)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !334, line: 2862, size: 960, elements: !1849)
!1849 = !{!1850}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1848, file: !334, line: 2863, baseType: !1571, size: 960)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !1414, file: !334, line: 3392, baseType: !1852, size: 1472)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !334, line: 3304, size: 1472, elements: !1853)
!1853 = !{!1854}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1852, file: !334, line: 3305, baseType: !1777, size: 1472)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !1414, file: !334, line: 3393, baseType: !1856, size: 1792)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !334, line: 3248, size: 1792, elements: !1857)
!1857 = !{!1858, !1859, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1856, file: !334, line: 3249, baseType: !1777, size: 1472)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1856, file: !334, line: 3251, baseType: !1860, size: 64, offset: 1472)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1862, line: 463, size: 1152, elements: !1863)
!1862 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1863 = !{!1864, !1867, !1898, !1899, !2033, !2046, !2047, !2048, !2049, !2050, !2051, !2075, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1861, file: !1862, line: 464, baseType: !1865, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1862, line: 464, flags: DIFlagFwdDecl)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1861, file: !1862, line: 467, baseType: !1868, size: 64, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !318, line: 374, size: 640, elements: !1870)
!1870 = !{!1871, !1873, !1874, !1887, !1888, !1889, !1890, !1891, !1892, !1894, !1896, !1897}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1869, file: !318, line: 377, baseType: !1872, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !1366, line: 111, baseType: !1349)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1869, file: !318, line: 378, baseType: !1872, size: 64, offset: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1869, file: !318, line: 381, baseType: !1875, size: 64, offset: 128)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !318, line: 282, baseType: !1877)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !318, line: 282, size: 128, elements: !1878)
!1878 = !{!1879}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1877, file: !318, line: 282, baseType: !1880, size: 128)
!1880 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !318, line: 281, baseType: !1881)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !318, line: 281, size: 128, elements: !1882)
!1882 = !{!1883, !1884, !1885}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1881, file: !318, line: 281, baseType: !7, size: 32)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1881, file: !318, line: 281, baseType: !7, size: 32, offset: 32)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1881, file: !318, line: 281, baseType: !1886, size: 64, offset: 64)
!1886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1872, size: 64, elements: !712)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1869, file: !318, line: 384, baseType: !576, size: 32, offset: 192)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1869, file: !318, line: 387, baseType: !576, size: 32, offset: 224)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1869, file: !318, line: 390, baseType: !576, size: 32, offset: 256)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1869, file: !318, line: 394, baseType: !1875, size: 64, offset: 320)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1869, file: !318, line: 396, baseType: !317, size: 32, offset: 384)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1869, file: !318, line: 399, baseType: !1893, size: 64, offset: 416)
!1893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 64, elements: !1643)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1869, file: !318, line: 402, baseType: !1895, size: 64, offset: 480)
!1895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !1643)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1869, file: !318, line: 406, baseType: !576, size: 32, offset: 544)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1869, file: !318, line: 409, baseType: !576, size: 32, offset: 576)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1861, file: !1862, line: 470, baseType: !1377, size: 64, offset: 128)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1861, file: !1862, line: 473, baseType: !1900, size: 64, offset: 192)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1812, line: 39, size: 1152, elements: !1902)
!1902 = !{!1903, !1948, !1961, !1974, !1975, !1987, !1988, !1992, !1993, !1994, !1995, !1996}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1901, file: !1812, line: 41, baseType: !1904, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1905, line: 144, baseType: !1906)
!1905 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1905, line: 100, size: 896, elements: !1908)
!1908 = !{!1909, !1915, !1917, !1922, !1924, !1925, !1926, !1927, !1928, !1929, !1934, !1936, !1937, !1942, !1947}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1907, file: !1905, line: 102, baseType: !1910, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1905, line: 52, baseType: !1911)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!1914, !857}
!1914 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1905, line: 47, baseType: !7)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1907, file: !1905, line: 105, baseType: !1916, size: 64, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1905, line: 59, baseType: !860)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1907, file: !1905, line: 108, baseType: !1918, size: 64, offset: 128)
!1918 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1905, line: 63, baseType: !1919)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{null, !580}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1907, file: !1905, line: 111, baseType: !1923, size: 64, offset: 192)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1907, file: !1905, line: 114, baseType: !728, size: 64, offset: 256)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1907, file: !1905, line: 117, baseType: !728, size: 64, offset: 320)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1907, file: !1905, line: 120, baseType: !728, size: 64, offset: 384)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1907, file: !1905, line: 124, baseType: !7, size: 32, offset: 448)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1907, file: !1905, line: 128, baseType: !7, size: 32, offset: 480)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1907, file: !1905, line: 131, baseType: !1930, size: 64, offset: 512)
!1930 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1905, line: 75, baseType: !1931)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!580, !728, !728}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1907, file: !1905, line: 132, baseType: !1935, size: 64, offset: 576)
!1935 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1905, line: 78, baseType: !1919)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1907, file: !1905, line: 135, baseType: !580, size: 64, offset: 640)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1907, file: !1905, line: 136, baseType: !1938, size: 64, offset: 704)
!1938 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1905, line: 82, baseType: !1939)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!580, !580, !728, !728}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1907, file: !1905, line: 137, baseType: !1943, size: 64, offset: 768)
!1943 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1905, line: 83, baseType: !1944)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{null, !580, !580}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1907, file: !1905, line: 141, baseType: !7, size: 32, offset: 832)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1901, file: !1812, line: 48, baseType: !1949, size: 64, offset: 64)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !1379, line: 35, baseType: !1951)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !1379, line: 35, size: 128, elements: !1952)
!1952 = !{!1953}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1951, file: !1379, line: 35, baseType: !1954, size: 128)
!1954 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !1379, line: 33, baseType: !1955)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !1379, line: 33, size: 128, elements: !1956)
!1956 = !{!1957, !1958, !1959}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1955, file: !1379, line: 33, baseType: !7, size: 32)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1955, file: !1379, line: 33, baseType: !7, size: 32, offset: 32)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1955, file: !1379, line: 33, baseType: !1960, size: 64, offset: 64)
!1960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1387, size: 64, elements: !712)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1901, file: !1812, line: 51, baseType: !1962, size: 64, offset: 128)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !334, line: 183, baseType: !1964)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !334, line: 183, size: 128, elements: !1965)
!1965 = !{!1966}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1964, file: !334, line: 183, baseType: !1967, size: 128)
!1967 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !334, line: 182, baseType: !1968)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !334, line: 182, size: 128, elements: !1969)
!1969 = !{!1970, !1971, !1972}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1968, file: !334, line: 182, baseType: !7, size: 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1968, file: !334, line: 182, baseType: !7, size: 32, offset: 32)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1968, file: !334, line: 182, baseType: !1973, size: 64, offset: 64)
!1973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1412, size: 64, elements: !712)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1901, file: !1812, line: 54, baseType: !1412, size: 64, offset: 192)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1901, file: !1812, line: 57, baseType: !1976, size: 128, offset: 256)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1977, line: 31, size: 128, elements: !1978)
!1977 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1978 = !{!1979, !1980, !1981, !1982, !1983, !1984, !1985}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1976, file: !1977, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1976, file: !1977, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1976, file: !1977, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1976, file: !1977, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1976, file: !1977, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1976, file: !1977, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1976, file: !1977, line: 56, baseType: !1986, size: 64, offset: 64)
!1986 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !1366, line: 47, baseType: !1627)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1901, file: !1812, line: 60, baseType: !1976, size: 128, offset: 384)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1901, file: !1812, line: 64, baseType: !1989, size: 64, offset: 512)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1991, line: 33, flags: DIFlagFwdDecl)
!1991 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1901, file: !1812, line: 67, baseType: !1412, size: 64, offset: 576)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1901, file: !1812, line: 73, baseType: !1904, size: 64, offset: 640)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1901, file: !1812, line: 77, baseType: !1986, size: 64, offset: 704)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1901, file: !1812, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1901, file: !1812, line: 82, baseType: !1997, size: 320, offset: 832)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !1998, line: 62, size: 320, elements: !1999)
!1998 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1999 = !{!2000, !2006, !2007, !2008, !2009, !2016}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1997, file: !1998, line: 63, baseType: !2001, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !1998, line: 56, size: 128, elements: !2003)
!2003 = !{!2004, !2005}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2002, file: !1998, line: 57, baseType: !2001, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !2002, file: !1998, line: 58, baseType: !711, size: 8, offset: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1997, file: !1998, line: 64, baseType: !7, size: 32, offset: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1997, file: !1998, line: 66, baseType: !7, size: 32, offset: 96)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1997, file: !1998, line: 68, baseType: !575, size: 8, offset: 128)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1997, file: !1998, line: 70, baseType: !2010, size: 64, offset: 192)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !1998, line: 37, size: 128, elements: !2012)
!2012 = !{!2013, !2014}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2011, file: !1998, line: 39, baseType: !2010, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !2011, file: !1998, line: 40, baseType: !2015, size: 64, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1997, file: !1998, line: 71, baseType: !2017, size: 64, offset: 256)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !1998, line: 45, size: 320, elements: !2019)
!2019 = !{!2020, !2021}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2018, file: !1998, line: 47, baseType: !2017, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !2018, file: !1998, line: 48, baseType: !2022, size: 256, offset: 64)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !334, line: 1883, size: 256, elements: !2023)
!2023 = !{!2024, !2026, !2027, !2032}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !2022, file: !334, line: 1884, baseType: !2025, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2022, file: !334, line: 1885, baseType: !2025, size: 64, offset: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !2022, file: !334, line: 1891, baseType: !2028, size: 64, offset: 128)
!2028 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2022, file: !334, line: 1891, size: 64, elements: !2029)
!2029 = !{!2030, !2031}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !2028, file: !334, line: 1891, baseType: !1387, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !2028, file: !334, line: 1891, baseType: !1412, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !2022, file: !334, line: 1892, baseType: !2015, size: 64, offset: 192)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1861, file: !1862, line: 476, baseType: !2034, size: 64, offset: 256)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !561, line: 187, size: 256, elements: !2036)
!2036 = !{!2037, !2038, !2044, !2045}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2035, file: !561, line: 189, baseType: !576, size: 32)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "larray", scope: !2035, file: !561, line: 192, baseType: !2039, size: 64, offset: 64)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_gc", file: !561, line: 87, baseType: !2041)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_gc", file: !561, line: 87, size: 128, elements: !2042)
!2042 = !{!2043}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2041, file: !561, line: 87, baseType: !1335, size: 128)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !2035, file: !561, line: 197, baseType: !1904, size: 64, offset: 128)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "tree_root", scope: !2035, file: !561, line: 200, baseType: !1343, size: 64, offset: 192)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1861, file: !1862, line: 479, baseType: !1904, size: 64, offset: 320)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1861, file: !1862, line: 484, baseType: !1412, size: 64, offset: 384)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1861, file: !1862, line: 488, baseType: !1412, size: 64, offset: 448)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1861, file: !1862, line: 493, baseType: !1412, size: 64, offset: 512)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1861, file: !1862, line: 496, baseType: !1412, size: 64, offset: 576)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1861, file: !1862, line: 501, baseType: !2052, size: 64, offset: 640)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !329, line: 2355, size: 576, elements: !2054)
!2054 = !{!2055, !2058, !2059, !2060, !2061, !2063, !2064, !2069, !2070, !2071, !2072, !2073, !2074}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !2053, file: !329, line: 2356, baseType: !2056, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !329, line: 2356, flags: DIFlagFwdDecl)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !2053, file: !329, line: 2357, baseType: !581, size: 64, offset: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !2053, file: !329, line: 2358, baseType: !576, size: 32, offset: 128)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !2053, file: !329, line: 2359, baseType: !576, size: 32, offset: 160)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !2053, file: !329, line: 2360, baseType: !2062, size: 128, offset: 192)
!2062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 128, elements: !1667)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !2053, file: !329, line: 2364, baseType: !576, size: 32, offset: 320)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !2053, file: !329, line: 2367, baseType: !2065, size: 128, offset: 384)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !329, line: 2349, size: 128, elements: !2066)
!2066 = !{!2067, !2068}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !2065, file: !329, line: 2351, baseType: !1575, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2065, file: !329, line: 2352, baseType: !705, size: 64, offset: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !2053, file: !329, line: 2371, baseType: !328, size: 32, offset: 512)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !2053, file: !329, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !2053, file: !329, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !2053, file: !329, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !2053, file: !329, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !2053, file: !329, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1861, file: !1862, line: 504, baseType: !2076, size: 64, offset: 704)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1862, line: 504, flags: DIFlagFwdDecl)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1861, file: !1862, line: 507, baseType: !1904, size: 64, offset: 768)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1861, file: !1862, line: 510, baseType: !576, size: 32, offset: 832)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1861, file: !1862, line: 513, baseType: !576, size: 32, offset: 864)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1861, file: !1862, line: 516, baseType: !1405, size: 32, offset: 896)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1861, file: !1862, line: 519, baseType: !1405, size: 32, offset: 928)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1861, file: !1862, line: 522, baseType: !7, size: 32, offset: 960)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1861, file: !1862, line: 523, baseType: !7, size: 32, offset: 992)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1861, file: !1862, line: 528, baseType: !581, size: 64, offset: 1024)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1861, file: !1862, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1861, file: !1862, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1861, file: !1862, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1861, file: !1862, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1861, file: !1862, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1861, file: !1862, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1861, file: !1862, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1861, file: !1862, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1861, file: !1862, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1861, file: !1862, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1861, file: !1862, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1861, file: !1862, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1861, file: !1862, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1861, file: !1862, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1861, file: !1862, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1861, file: !1862, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1856, file: !334, line: 3254, baseType: !1412, size: 64, offset: 1536)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1856, file: !334, line: 3257, baseType: !1412, size: 64, offset: 1600)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1856, file: !334, line: 3258, baseType: !1412, size: 64, offset: 1664)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1856, file: !334, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1856, file: !334, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1856, file: !334, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1856, file: !334, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1856, file: !334, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1856, file: !334, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1856, file: !334, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1856, file: !334, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1856, file: !334, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1856, file: !334, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1856, file: !334, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1856, file: !334, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1856, file: !334, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1856, file: !334, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1856, file: !334, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1856, file: !334, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1856, file: !334, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1856, file: !334, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1414, file: !334, line: 3394, baseType: !2124, size: 1344)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !334, line: 2279, size: 1344, elements: !2125)
!2125 = !{!2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2124, file: !334, line: 2280, baseType: !1450, size: 192)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !2124, file: !334, line: 2281, baseType: !1412, size: 64, offset: 192)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2124, file: !334, line: 2282, baseType: !1412, size: 64, offset: 256)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !2124, file: !334, line: 2283, baseType: !1412, size: 64, offset: 320)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !2124, file: !334, line: 2284, baseType: !1412, size: 64, offset: 384)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2124, file: !334, line: 2285, baseType: !7, size: 32, offset: 448)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !2124, file: !334, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !2124, file: !334, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !2124, file: !334, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !2124, file: !334, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !2124, file: !334, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !2124, file: !334, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2124, file: !334, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !2124, file: !334, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !2124, file: !334, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !2124, file: !334, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !2124, file: !334, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !2124, file: !334, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !2124, file: !334, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !2124, file: !334, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !2124, file: !334, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2124, file: !334, line: 2305, baseType: !7, size: 32, offset: 512)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !2124, file: !334, line: 2306, baseType: !1697, size: 32, offset: 544)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !2124, file: !334, line: 2307, baseType: !1412, size: 64, offset: 576)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !2124, file: !334, line: 2308, baseType: !1412, size: 64, offset: 640)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2124, file: !334, line: 2314, baseType: !2152, size: 64, offset: 704)
!2152 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !334, line: 2309, size: 64, elements: !2153)
!2153 = !{!2154, !2155, !2156}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2152, file: !334, line: 2310, baseType: !576, size: 32)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2152, file: !334, line: 2311, baseType: !581, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !2152, file: !334, line: 2312, baseType: !2157, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !334, line: 2277, flags: DIFlagFwdDecl)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2124, file: !334, line: 2315, baseType: !1412, size: 64, offset: 768)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !2124, file: !334, line: 2316, baseType: !1412, size: 64, offset: 832)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !2124, file: !334, line: 2317, baseType: !1412, size: 64, offset: 896)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !2124, file: !334, line: 2318, baseType: !1412, size: 64, offset: 960)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !2124, file: !334, line: 2319, baseType: !1412, size: 64, offset: 1024)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !2124, file: !334, line: 2320, baseType: !1412, size: 64, offset: 1088)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2124, file: !334, line: 2321, baseType: !1412, size: 64, offset: 1152)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !2124, file: !334, line: 2322, baseType: !1412, size: 64, offset: 1216)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !2124, file: !334, line: 2324, baseType: !2168, size: 64, offset: 1280)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !334, line: 2324, flags: DIFlagFwdDecl)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1414, file: !334, line: 3395, baseType: !2171, size: 320)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !334, line: 1469, size: 320, elements: !2172)
!2172 = !{!2173, !2174, !2175}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2171, file: !334, line: 1470, baseType: !1450, size: 192)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !2171, file: !334, line: 1471, baseType: !1412, size: 64, offset: 192)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2171, file: !334, line: 1472, baseType: !1412, size: 64, offset: 256)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1414, file: !334, line: 3396, baseType: !2177, size: 320)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !334, line: 1482, size: 320, elements: !2178)
!2178 = !{!2179, !2180, !2181}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2177, file: !334, line: 1483, baseType: !1450, size: 192)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2177, file: !334, line: 1484, baseType: !576, size: 32, offset: 192)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !2177, file: !334, line: 1485, baseType: !1973, size: 64, offset: 256)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !1414, file: !334, line: 3397, baseType: !2183, size: 384)
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !334, line: 1829, size: 384, elements: !2184)
!2184 = !{!2185, !2186, !2187, !2188}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2183, file: !334, line: 1830, baseType: !1450, size: 192)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !2183, file: !334, line: 1831, baseType: !1405, size: 32, offset: 192)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2183, file: !334, line: 1832, baseType: !1412, size: 64, offset: 256)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !2183, file: !334, line: 1835, baseType: !1973, size: 64, offset: 320)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1414, file: !334, line: 3398, baseType: !2190, size: 704)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !334, line: 1898, size: 704, elements: !2191)
!2191 = !{!2192, !2193, !2194, !2195, !2196, !2201}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2190, file: !334, line: 1899, baseType: !1450, size: 192)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !2190, file: !334, line: 1902, baseType: !1412, size: 64, offset: 192)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !2190, file: !334, line: 1905, baseType: !1387, size: 64, offset: 256)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2190, file: !334, line: 1908, baseType: !7, size: 32, offset: 320)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !2190, file: !334, line: 1911, baseType: !2197, size: 64, offset: 384)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !1812, line: 117, size: 128, elements: !2199)
!2199 = !{!2200}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !2198, file: !1812, line: 120, baseType: !1976, size: 128)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !2190, file: !334, line: 1914, baseType: !2022, size: 256, offset: 448)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1414, file: !334, line: 3399, baseType: !2203, size: 704)
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !334, line: 2008, size: 704, elements: !2204)
!2204 = !{!2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2203, file: !334, line: 2009, baseType: !1450, size: 192)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !2203, file: !334, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !2203, file: !334, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !2203, file: !334, line: 2014, baseType: !1405, size: 32, offset: 224)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !2203, file: !334, line: 2016, baseType: !1412, size: 64, offset: 256)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !2203, file: !334, line: 2017, baseType: !1962, size: 64, offset: 320)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !2203, file: !334, line: 2019, baseType: !1412, size: 64, offset: 384)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !2203, file: !334, line: 2020, baseType: !1412, size: 64, offset: 448)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !2203, file: !334, line: 2021, baseType: !1412, size: 64, offset: 512)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !2203, file: !334, line: 2022, baseType: !1412, size: 64, offset: 576)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !2203, file: !334, line: 2023, baseType: !1412, size: 64, offset: 640)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1414, file: !334, line: 3400, baseType: !2217, size: 832)
!2217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !334, line: 2430, size: 832, elements: !2218)
!2218 = !{!2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2217, file: !334, line: 2431, baseType: !1450, size: 192)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2217, file: !334, line: 2433, baseType: !1412, size: 64, offset: 192)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !2217, file: !334, line: 2434, baseType: !1412, size: 64, offset: 256)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !2217, file: !334, line: 2435, baseType: !1412, size: 64, offset: 320)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !2217, file: !334, line: 2436, baseType: !1412, size: 64, offset: 384)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !2217, file: !334, line: 2437, baseType: !1962, size: 64, offset: 448)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !2217, file: !334, line: 2438, baseType: !1412, size: 64, offset: 512)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !2217, file: !334, line: 2440, baseType: !1412, size: 64, offset: 576)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !2217, file: !334, line: 2441, baseType: !1412, size: 64, offset: 640)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !2217, file: !334, line: 2443, baseType: !2229, size: 128, offset: 704)
!2229 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !334, line: 182, baseType: !2230)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !334, line: 182, size: 128, elements: !2231)
!2231 = !{!2232}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2230, file: !334, line: 182, baseType: !1967, size: 128)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !1414, file: !334, line: 3401, baseType: !2234, size: 320)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !334, line: 3327, size: 320, elements: !2235)
!2235 = !{!2236, !2237, !2244}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2234, file: !334, line: 3329, baseType: !1450, size: 192)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2234, file: !334, line: 3330, baseType: !2238, size: 64, offset: 192)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !334, line: 3320, size: 192, elements: !2240)
!2240 = !{!2241, !2242, !2243}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !2239, file: !334, line: 3322, baseType: !2238, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2239, file: !334, line: 3323, baseType: !2238, size: 64, offset: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !2239, file: !334, line: 3324, baseType: !1412, size: 64, offset: 128)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2234, file: !334, line: 3331, baseType: !2238, size: 64, offset: 256)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !1414, file: !334, line: 3402, baseType: !2246, size: 256)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !334, line: 1540, size: 256, elements: !2247)
!2247 = !{!2248, !2249}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2246, file: !334, line: 1541, baseType: !1450, size: 192)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !2246, file: !334, line: 1542, baseType: !2250, size: 64, offset: 192)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !334, line: 1538, baseType: !2252)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !334, line: 1538, size: 192, elements: !2253)
!2253 = !{!2254}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2252, file: !334, line: 1538, baseType: !2255, size: 192)
!2255 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !334, line: 1537, baseType: !2256)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !334, line: 1537, size: 192, elements: !2257)
!2257 = !{!2258, !2259, !2260}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2256, file: !334, line: 1537, baseType: !7, size: 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2256, file: !334, line: 1537, baseType: !7, size: 32, offset: 32)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2256, file: !334, line: 1537, baseType: !2261, size: 128, offset: 64)
!2261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2262, size: 128, elements: !712)
!2262 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !334, line: 1535, baseType: !2263)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !334, line: 1532, size: 128, elements: !2264)
!2264 = !{!2265, !2266}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2263, file: !334, line: 1533, baseType: !1412, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2263, file: !334, line: 1534, baseType: !1412, size: 64, offset: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !1414, file: !334, line: 3403, baseType: !2268, size: 512)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !334, line: 1938, size: 512, elements: !2269)
!2269 = !{!2270, !2271, !2272, !2273, !2279, !2280, !2281}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2268, file: !334, line: 1939, baseType: !1450, size: 192)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !2268, file: !334, line: 1940, baseType: !1405, size: 32, offset: 192)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2268, file: !334, line: 1941, baseType: !333, size: 32, offset: 224)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !2268, file: !334, line: 1946, baseType: !2274, size: 32, offset: 256)
!2274 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !334, line: 1942, size: 32, elements: !2275)
!2275 = !{!2276, !2277, !2278}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !2274, file: !334, line: 1943, baseType: !352, size: 32)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !2274, file: !334, line: 1944, baseType: !359, size: 32)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !2274, file: !334, line: 1945, baseType: !366, size: 32)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !2268, file: !334, line: 1950, baseType: !1376, size: 64, offset: 320)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !2268, file: !334, line: 1951, baseType: !1376, size: 64, offset: 384)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2268, file: !334, line: 1953, baseType: !1973, size: 64, offset: 448)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !1414, file: !334, line: 3404, baseType: !2283, size: 1664)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !334, line: 3337, size: 1664, elements: !2284)
!2284 = !{!2285, !2286}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2283, file: !334, line: 3338, baseType: !1450, size: 192)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !2283, file: !334, line: 3341, baseType: !2287, size: 1472, offset: 192)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !2288, line: 410, size: 1472, elements: !2289)
!2288 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2289 = !{!2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !2287, file: !2288, line: 412, baseType: !576, size: 32)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !2287, file: !2288, line: 413, baseType: !576, size: 32, offset: 32)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !2287, file: !2288, line: 414, baseType: !576, size: 32, offset: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !2287, file: !2288, line: 415, baseType: !576, size: 32, offset: 96)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !2287, file: !2288, line: 416, baseType: !576, size: 32, offset: 128)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !2287, file: !2288, line: 417, baseType: !576, size: 32, offset: 160)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !2287, file: !2288, line: 418, baseType: !575, size: 8, offset: 192)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !2287, file: !2288, line: 419, baseType: !575, size: 8, offset: 200)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !2287, file: !2288, line: 420, baseType: !709, size: 8, offset: 208)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !2287, file: !2288, line: 421, baseType: !709, size: 8, offset: 216)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !2287, file: !2288, line: 422, baseType: !709, size: 8, offset: 224)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !2287, file: !2288, line: 423, baseType: !709, size: 8, offset: 232)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !2287, file: !2288, line: 424, baseType: !709, size: 8, offset: 240)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !2287, file: !2288, line: 425, baseType: !709, size: 8, offset: 248)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !2287, file: !2288, line: 426, baseType: !709, size: 8, offset: 256)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !2287, file: !2288, line: 427, baseType: !709, size: 8, offset: 264)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !2287, file: !2288, line: 428, baseType: !709, size: 8, offset: 272)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !2287, file: !2288, line: 429, baseType: !709, size: 8, offset: 280)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !2287, file: !2288, line: 430, baseType: !709, size: 8, offset: 288)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !2287, file: !2288, line: 431, baseType: !709, size: 8, offset: 296)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !2287, file: !2288, line: 432, baseType: !709, size: 8, offset: 304)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !2287, file: !2288, line: 433, baseType: !709, size: 8, offset: 312)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !2287, file: !2288, line: 434, baseType: !709, size: 8, offset: 320)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !2287, file: !2288, line: 435, baseType: !709, size: 8, offset: 328)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !2287, file: !2288, line: 436, baseType: !709, size: 8, offset: 336)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !2287, file: !2288, line: 437, baseType: !709, size: 8, offset: 344)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !2287, file: !2288, line: 438, baseType: !709, size: 8, offset: 352)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !2287, file: !2288, line: 439, baseType: !709, size: 8, offset: 360)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !2287, file: !2288, line: 440, baseType: !709, size: 8, offset: 368)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !2287, file: !2288, line: 441, baseType: !709, size: 8, offset: 376)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !2287, file: !2288, line: 442, baseType: !709, size: 8, offset: 384)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !2287, file: !2288, line: 443, baseType: !709, size: 8, offset: 392)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !2287, file: !2288, line: 444, baseType: !709, size: 8, offset: 400)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !2287, file: !2288, line: 445, baseType: !709, size: 8, offset: 408)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !2287, file: !2288, line: 446, baseType: !709, size: 8, offset: 416)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !2287, file: !2288, line: 447, baseType: !709, size: 8, offset: 424)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !2287, file: !2288, line: 448, baseType: !709, size: 8, offset: 432)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !2287, file: !2288, line: 449, baseType: !709, size: 8, offset: 440)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !2287, file: !2288, line: 450, baseType: !709, size: 8, offset: 448)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !2287, file: !2288, line: 451, baseType: !709, size: 8, offset: 456)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !2287, file: !2288, line: 452, baseType: !709, size: 8, offset: 464)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !2287, file: !2288, line: 453, baseType: !709, size: 8, offset: 472)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !2287, file: !2288, line: 454, baseType: !709, size: 8, offset: 480)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !2287, file: !2288, line: 455, baseType: !709, size: 8, offset: 488)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !2287, file: !2288, line: 456, baseType: !709, size: 8, offset: 496)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !2287, file: !2288, line: 457, baseType: !709, size: 8, offset: 504)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !2287, file: !2288, line: 458, baseType: !709, size: 8, offset: 512)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !2287, file: !2288, line: 459, baseType: !709, size: 8, offset: 520)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !2287, file: !2288, line: 460, baseType: !709, size: 8, offset: 528)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !2287, file: !2288, line: 461, baseType: !709, size: 8, offset: 536)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !2287, file: !2288, line: 462, baseType: !709, size: 8, offset: 544)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !2287, file: !2288, line: 463, baseType: !709, size: 8, offset: 552)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !2287, file: !2288, line: 464, baseType: !709, size: 8, offset: 560)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !2287, file: !2288, line: 465, baseType: !709, size: 8, offset: 568)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !2287, file: !2288, line: 466, baseType: !709, size: 8, offset: 576)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !2287, file: !2288, line: 467, baseType: !709, size: 8, offset: 584)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !2287, file: !2288, line: 468, baseType: !709, size: 8, offset: 592)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !2287, file: !2288, line: 469, baseType: !709, size: 8, offset: 600)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !2287, file: !2288, line: 470, baseType: !709, size: 8, offset: 608)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !2287, file: !2288, line: 471, baseType: !709, size: 8, offset: 616)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !2287, file: !2288, line: 472, baseType: !709, size: 8, offset: 624)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !2287, file: !2288, line: 473, baseType: !709, size: 8, offset: 632)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !2287, file: !2288, line: 474, baseType: !709, size: 8, offset: 640)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !2287, file: !2288, line: 475, baseType: !709, size: 8, offset: 648)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !2287, file: !2288, line: 476, baseType: !709, size: 8, offset: 656)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !2287, file: !2288, line: 477, baseType: !709, size: 8, offset: 664)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !2287, file: !2288, line: 478, baseType: !709, size: 8, offset: 672)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !2287, file: !2288, line: 479, baseType: !709, size: 8, offset: 680)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !2287, file: !2288, line: 480, baseType: !709, size: 8, offset: 688)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !2287, file: !2288, line: 481, baseType: !709, size: 8, offset: 696)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !2287, file: !2288, line: 482, baseType: !709, size: 8, offset: 704)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !2287, file: !2288, line: 483, baseType: !709, size: 8, offset: 712)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !2287, file: !2288, line: 484, baseType: !709, size: 8, offset: 720)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !2287, file: !2288, line: 485, baseType: !709, size: 8, offset: 728)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !2287, file: !2288, line: 486, baseType: !709, size: 8, offset: 736)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !2287, file: !2288, line: 487, baseType: !709, size: 8, offset: 744)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !2287, file: !2288, line: 488, baseType: !709, size: 8, offset: 752)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !2287, file: !2288, line: 489, baseType: !709, size: 8, offset: 760)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !2287, file: !2288, line: 490, baseType: !709, size: 8, offset: 768)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !2287, file: !2288, line: 491, baseType: !709, size: 8, offset: 776)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !2287, file: !2288, line: 492, baseType: !709, size: 8, offset: 784)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !2287, file: !2288, line: 493, baseType: !709, size: 8, offset: 792)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !2287, file: !2288, line: 494, baseType: !709, size: 8, offset: 800)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !2287, file: !2288, line: 495, baseType: !709, size: 8, offset: 808)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !2287, file: !2288, line: 496, baseType: !709, size: 8, offset: 816)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !2287, file: !2288, line: 497, baseType: !709, size: 8, offset: 824)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !2287, file: !2288, line: 498, baseType: !709, size: 8, offset: 832)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !2287, file: !2288, line: 499, baseType: !709, size: 8, offset: 840)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !2287, file: !2288, line: 500, baseType: !709, size: 8, offset: 848)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !2287, file: !2288, line: 501, baseType: !709, size: 8, offset: 856)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !2287, file: !2288, line: 502, baseType: !709, size: 8, offset: 864)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !2287, file: !2288, line: 503, baseType: !709, size: 8, offset: 872)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !2287, file: !2288, line: 504, baseType: !709, size: 8, offset: 880)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !2287, file: !2288, line: 505, baseType: !709, size: 8, offset: 888)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !2287, file: !2288, line: 506, baseType: !709, size: 8, offset: 896)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !2287, file: !2288, line: 507, baseType: !709, size: 8, offset: 904)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !2287, file: !2288, line: 508, baseType: !709, size: 8, offset: 912)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !2287, file: !2288, line: 509, baseType: !709, size: 8, offset: 920)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !2287, file: !2288, line: 510, baseType: !709, size: 8, offset: 928)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !2287, file: !2288, line: 511, baseType: !709, size: 8, offset: 936)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !2287, file: !2288, line: 512, baseType: !709, size: 8, offset: 944)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !2287, file: !2288, line: 513, baseType: !709, size: 8, offset: 952)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !2287, file: !2288, line: 514, baseType: !709, size: 8, offset: 960)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !2287, file: !2288, line: 515, baseType: !709, size: 8, offset: 968)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !2287, file: !2288, line: 516, baseType: !709, size: 8, offset: 976)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !2287, file: !2288, line: 517, baseType: !709, size: 8, offset: 984)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !2287, file: !2288, line: 518, baseType: !709, size: 8, offset: 992)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !2287, file: !2288, line: 519, baseType: !709, size: 8, offset: 1000)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !2287, file: !2288, line: 520, baseType: !709, size: 8, offset: 1008)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !2287, file: !2288, line: 521, baseType: !709, size: 8, offset: 1016)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !2287, file: !2288, line: 522, baseType: !709, size: 8, offset: 1024)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !2287, file: !2288, line: 523, baseType: !709, size: 8, offset: 1032)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !2287, file: !2288, line: 524, baseType: !709, size: 8, offset: 1040)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !2287, file: !2288, line: 525, baseType: !709, size: 8, offset: 1048)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !2287, file: !2288, line: 526, baseType: !709, size: 8, offset: 1056)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !2287, file: !2288, line: 527, baseType: !709, size: 8, offset: 1064)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !2287, file: !2288, line: 528, baseType: !709, size: 8, offset: 1072)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !2287, file: !2288, line: 529, baseType: !709, size: 8, offset: 1080)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !2287, file: !2288, line: 530, baseType: !709, size: 8, offset: 1088)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !2287, file: !2288, line: 531, baseType: !709, size: 8, offset: 1096)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !2287, file: !2288, line: 532, baseType: !709, size: 8, offset: 1104)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !2287, file: !2288, line: 533, baseType: !709, size: 8, offset: 1112)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !2287, file: !2288, line: 534, baseType: !709, size: 8, offset: 1120)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !2287, file: !2288, line: 535, baseType: !709, size: 8, offset: 1128)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !2287, file: !2288, line: 536, baseType: !709, size: 8, offset: 1136)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !2287, file: !2288, line: 537, baseType: !709, size: 8, offset: 1144)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !2287, file: !2288, line: 538, baseType: !709, size: 8, offset: 1152)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !2287, file: !2288, line: 539, baseType: !709, size: 8, offset: 1160)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !2287, file: !2288, line: 540, baseType: !709, size: 8, offset: 1168)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !2287, file: !2288, line: 541, baseType: !709, size: 8, offset: 1176)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !2287, file: !2288, line: 542, baseType: !709, size: 8, offset: 1184)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !2287, file: !2288, line: 543, baseType: !709, size: 8, offset: 1192)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !2287, file: !2288, line: 544, baseType: !709, size: 8, offset: 1200)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !2287, file: !2288, line: 545, baseType: !709, size: 8, offset: 1208)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !2287, file: !2288, line: 546, baseType: !709, size: 8, offset: 1216)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !2287, file: !2288, line: 547, baseType: !709, size: 8, offset: 1224)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !2287, file: !2288, line: 548, baseType: !709, size: 8, offset: 1232)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !2287, file: !2288, line: 549, baseType: !709, size: 8, offset: 1240)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !2287, file: !2288, line: 550, baseType: !709, size: 8, offset: 1248)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !2287, file: !2288, line: 551, baseType: !709, size: 8, offset: 1256)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !2287, file: !2288, line: 552, baseType: !709, size: 8, offset: 1264)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !2287, file: !2288, line: 553, baseType: !709, size: 8, offset: 1272)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !2287, file: !2288, line: 554, baseType: !709, size: 8, offset: 1280)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !2287, file: !2288, line: 555, baseType: !709, size: 8, offset: 1288)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !2287, file: !2288, line: 556, baseType: !709, size: 8, offset: 1296)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !2287, file: !2288, line: 557, baseType: !709, size: 8, offset: 1304)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !2287, file: !2288, line: 558, baseType: !709, size: 8, offset: 1312)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !2287, file: !2288, line: 559, baseType: !709, size: 8, offset: 1320)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !2287, file: !2288, line: 560, baseType: !709, size: 8, offset: 1328)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !2287, file: !2288, line: 561, baseType: !709, size: 8, offset: 1336)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !2287, file: !2288, line: 562, baseType: !709, size: 8, offset: 1344)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !2287, file: !2288, line: 563, baseType: !709, size: 8, offset: 1352)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !2287, file: !2288, line: 564, baseType: !709, size: 8, offset: 1360)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !2287, file: !2288, line: 565, baseType: !709, size: 8, offset: 1368)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !2287, file: !2288, line: 566, baseType: !709, size: 8, offset: 1376)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !2287, file: !2288, line: 567, baseType: !709, size: 8, offset: 1384)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !2287, file: !2288, line: 568, baseType: !709, size: 8, offset: 1392)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !2287, file: !2288, line: 569, baseType: !709, size: 8, offset: 1400)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !2287, file: !2288, line: 570, baseType: !709, size: 8, offset: 1408)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !2287, file: !2288, line: 571, baseType: !709, size: 8, offset: 1416)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !2287, file: !2288, line: 572, baseType: !709, size: 8, offset: 1424)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !2287, file: !2288, line: 573, baseType: !709, size: 8, offset: 1432)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !2287, file: !2288, line: 574, baseType: !709, size: 8, offset: 1440)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !1414, file: !334, line: 3405, baseType: !2454, size: 384)
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !334, line: 3352, size: 384, elements: !2455)
!2455 = !{!2456, !2457}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2454, file: !334, line: 3353, baseType: !1450, size: 192)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !2454, file: !334, line: 3356, baseType: !2458, size: 192, offset: 192)
!2458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !2288, line: 578, size: 192, elements: !2459)
!2459 = !{!2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !2458, file: !2288, line: 580, baseType: !576, size: 32)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !2458, file: !2288, line: 581, baseType: !576, size: 32, offset: 32)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !2458, file: !2288, line: 582, baseType: !576, size: 32, offset: 64)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !2458, file: !2288, line: 583, baseType: !576, size: 32, offset: 96)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2458, file: !2288, line: 584, baseType: !575, size: 8, offset: 128)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !2458, file: !2288, line: 585, baseType: !575, size: 8, offset: 136)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !2458, file: !2288, line: 586, baseType: !575, size: 8, offset: 144)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !2458, file: !2288, line: 587, baseType: !575, size: 8, offset: 152)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !2458, file: !2288, line: 588, baseType: !575, size: 8, offset: 160)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !2458, file: !2288, line: 589, baseType: !575, size: 8, offset: 168)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !2458, file: !2288, line: 590, baseType: !575, size: 8, offset: 176)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !1389, file: !1379, line: 739, baseType: !2472, size: 448)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !1379, line: 350, size: 448, elements: !2473)
!2473 = !{!2474, !2480}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !2472, file: !1379, line: 353, baseType: !2475, size: 384)
!2475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !1379, line: 333, size: 384, elements: !2476)
!2476 = !{!2477, !2478, !2479}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2475, file: !1379, line: 336, baseType: !1392, size: 256)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !2475, file: !1379, line: 343, baseType: !2010, size: 64, offset: 256)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !2475, file: !1379, line: 344, baseType: !2017, size: 64, offset: 320)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2472, file: !1379, line: 359, baseType: !1973, size: 64, offset: 384)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !1389, file: !1379, line: 740, baseType: !2482, size: 512)
!2482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !1379, line: 365, size: 512, elements: !2483)
!2483 = !{!2484, !2485, !2486}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !2482, file: !1379, line: 368, baseType: !2475, size: 384)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !2482, file: !1379, line: 373, baseType: !1412, size: 64, offset: 384)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !2482, file: !1379, line: 374, baseType: !1412, size: 64, offset: 448)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !1389, file: !1379, line: 741, baseType: !2488, size: 576)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !1379, line: 380, size: 576, elements: !2489)
!2489 = !{!2490, !2491}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !2488, file: !1379, line: 383, baseType: !2482, size: 512)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2488, file: !1379, line: 389, baseType: !1973, size: 64, offset: 512)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1389, file: !1379, line: 742, baseType: !2493, size: 320)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !1379, line: 395, size: 320, elements: !2494)
!2494 = !{!2495, !2496}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2493, file: !1379, line: 397, baseType: !1392, size: 256)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !2493, file: !1379, line: 400, baseType: !1376, size: 64, offset: 256)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !1389, file: !1379, line: 743, baseType: !2498, size: 448)
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !1379, line: 406, size: 448, elements: !2499)
!2499 = !{!2500, !2501, !2502, !2503}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2498, file: !1379, line: 408, baseType: !1392, size: 256)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !2498, file: !1379, line: 412, baseType: !1412, size: 64, offset: 256)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2498, file: !1379, line: 420, baseType: !1412, size: 64, offset: 320)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !2498, file: !1379, line: 423, baseType: !1376, size: 64, offset: 384)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !1389, file: !1379, line: 744, baseType: !2505, size: 384)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !1379, line: 429, size: 384, elements: !2506)
!2506 = !{!2507, !2508, !2509}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2505, file: !1379, line: 431, baseType: !1392, size: 256)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !2505, file: !1379, line: 434, baseType: !1412, size: 64, offset: 256)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !2505, file: !1379, line: 437, baseType: !1376, size: 64, offset: 320)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !1389, file: !1379, line: 745, baseType: !2511, size: 384)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !1379, line: 443, size: 384, elements: !2512)
!2512 = !{!2513, !2514, !2515}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2511, file: !1379, line: 445, baseType: !1392, size: 256)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !2511, file: !1379, line: 449, baseType: !1412, size: 64, offset: 256)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !2511, file: !1379, line: 453, baseType: !1376, size: 64, offset: 320)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !1389, file: !1379, line: 746, baseType: !2517, size: 320)
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !1379, line: 459, size: 320, elements: !2518)
!2518 = !{!2519, !2520}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2517, file: !1379, line: 461, baseType: !1392, size: 256)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !2517, file: !1379, line: 464, baseType: !1412, size: 64, offset: 256)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !1389, file: !1379, line: 747, baseType: !2522, size: 768)
!2522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !1379, line: 469, size: 768, elements: !2523)
!2523 = !{!2524, !2525, !2526, !2527, !2528}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2522, file: !1379, line: 471, baseType: !1392, size: 256)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !2522, file: !1379, line: 474, baseType: !7, size: 32, offset: 256)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2522, file: !1379, line: 475, baseType: !7, size: 32, offset: 288)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !2522, file: !1379, line: 478, baseType: !1412, size: 64, offset: 320)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2522, file: !1379, line: 481, baseType: !2529, size: 384, offset: 384)
!2529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2530, size: 384, elements: !712)
!2530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !334, line: 1917, size: 384, elements: !2531)
!2531 = !{!2532, !2533, !2534}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !2530, file: !334, line: 1920, baseType: !2022, size: 256)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !2530, file: !334, line: 1921, baseType: !1412, size: 64, offset: 256)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !2530, file: !334, line: 1922, baseType: !1405, size: 32, offset: 320)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !1389, file: !1379, line: 748, baseType: !2536, size: 320)
!2536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !1379, line: 487, size: 320, elements: !2537)
!2537 = !{!2538, !2539}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2536, file: !1379, line: 490, baseType: !1392, size: 256)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !2536, file: !1379, line: 494, baseType: !576, size: 32, offset: 256)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !1389, file: !1379, line: 749, baseType: !2541, size: 384)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !1379, line: 500, size: 384, elements: !2542)
!2542 = !{!2543, !2544, !2545}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2541, file: !1379, line: 502, baseType: !1392, size: 256)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !2541, file: !1379, line: 506, baseType: !1376, size: 64, offset: 256)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2541, file: !1379, line: 510, baseType: !1376, size: 64, offset: 320)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !1389, file: !1379, line: 750, baseType: !2547, size: 320)
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !1379, line: 529, size: 320, elements: !2548)
!2548 = !{!2549, !2550}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2547, file: !1379, line: 531, baseType: !1392, size: 256)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2547, file: !1379, line: 540, baseType: !1376, size: 64, offset: 256)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !1389, file: !1379, line: 751, baseType: !2552, size: 704)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !1379, line: 546, size: 704, elements: !2553)
!2553 = !{!2554, !2555, !2556, !2557, !2558, !2559, !2560}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !2552, file: !1379, line: 549, baseType: !2482, size: 512)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2552, file: !1379, line: 553, baseType: !581, size: 64, offset: 512)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !2552, file: !1379, line: 557, baseType: !575, size: 8, offset: 576)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !2552, file: !1379, line: 558, baseType: !575, size: 8, offset: 584)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !2552, file: !1379, line: 559, baseType: !575, size: 8, offset: 592)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !2552, file: !1379, line: 560, baseType: !575, size: 8, offset: 600)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2552, file: !1379, line: 566, baseType: !1973, size: 64, offset: 640)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !1389, file: !1379, line: 752, baseType: !2562, size: 384)
!2562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !1379, line: 571, size: 384, elements: !2563)
!2563 = !{!2564, !2565}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !2562, file: !1379, line: 573, baseType: !2493, size: 320)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2562, file: !1379, line: 577, baseType: !1412, size: 64, offset: 320)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !1389, file: !1379, line: 753, baseType: !2567, size: 576)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !1379, line: 600, size: 576, elements: !2568)
!2568 = !{!2569, !2570, !2571, !2572, !2581}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !2567, file: !1379, line: 602, baseType: !2493, size: 320)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !2567, file: !1379, line: 605, baseType: !1412, size: 64, offset: 320)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !2567, file: !1379, line: 609, baseType: !728, size: 64, offset: 384)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !2567, file: !1379, line: 612, baseType: !2573, size: 64, offset: 448)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !1379, line: 581, size: 320, elements: !2575)
!2575 = !{!2576, !2577, !2578, !2579, !2580}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !2574, file: !1379, line: 583, baseType: !366, size: 32)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2574, file: !1379, line: 586, baseType: !1412, size: 64, offset: 64)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !2574, file: !1379, line: 589, baseType: !1412, size: 64, offset: 128)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !2574, file: !1379, line: 592, baseType: !1412, size: 64, offset: 192)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2574, file: !1379, line: 595, baseType: !1412, size: 64, offset: 256)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !2567, file: !1379, line: 616, baseType: !1376, size: 64, offset: 512)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !1389, file: !1379, line: 754, baseType: !2583, size: 512)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !1379, line: 622, size: 512, elements: !2584)
!2584 = !{!2585, !2586, !2587, !2588}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !2583, file: !1379, line: 624, baseType: !2493, size: 320)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !2583, file: !1379, line: 628, baseType: !1412, size: 64, offset: 320)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !2583, file: !1379, line: 632, baseType: !1412, size: 64, offset: 384)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !2583, file: !1379, line: 636, baseType: !1412, size: 64, offset: 448)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !1389, file: !1379, line: 755, baseType: !2590, size: 704)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !1379, line: 642, size: 704, elements: !2591)
!2591 = !{!2592, !2593, !2594, !2595}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !2590, file: !1379, line: 644, baseType: !2583, size: 512)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !2590, file: !1379, line: 648, baseType: !1412, size: 64, offset: 512)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !2590, file: !1379, line: 652, baseType: !1412, size: 64, offset: 576)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !2590, file: !1379, line: 653, baseType: !1412, size: 64, offset: 640)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !1389, file: !1379, line: 756, baseType: !2597, size: 448)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !1379, line: 663, size: 448, elements: !2598)
!2598 = !{!2599, !2600, !2601}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !2597, file: !1379, line: 665, baseType: !2493, size: 320)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !2597, file: !1379, line: 668, baseType: !1412, size: 64, offset: 320)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !2597, file: !1379, line: 673, baseType: !1412, size: 64, offset: 384)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !1389, file: !1379, line: 757, baseType: !2603, size: 384)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !1379, line: 694, size: 384, elements: !2604)
!2604 = !{!2605, !2606}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !2603, file: !1379, line: 696, baseType: !2493, size: 320)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !2603, file: !1379, line: 699, baseType: !1412, size: 64, offset: 320)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !1389, file: !1379, line: 758, baseType: !2608, size: 384)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !1379, line: 681, size: 384, elements: !2609)
!2609 = !{!2610, !2611, !2612}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2608, file: !1379, line: 683, baseType: !1392, size: 256)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !2608, file: !1379, line: 686, baseType: !1412, size: 64, offset: 256)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !2608, file: !1379, line: 689, baseType: !1412, size: 64, offset: 320)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !1389, file: !1379, line: 759, baseType: !2614, size: 384)
!2614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !1379, line: 707, size: 384, elements: !2615)
!2615 = !{!2616, !2617, !2618}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2614, file: !1379, line: 709, baseType: !1392, size: 256)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !2614, file: !1379, line: 712, baseType: !1412, size: 64, offset: 256)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !2614, file: !1379, line: 712, baseType: !1412, size: 64, offset: 320)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !1389, file: !1379, line: 760, baseType: !2620, size: 320)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !1379, line: 718, size: 320, elements: !2621)
!2621 = !{!2622, !2623}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2620, file: !1379, line: 720, baseType: !1392, size: 256)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2620, file: !1379, line: 723, baseType: !1412, size: 64, offset: 256)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1384, file: !1379, line: 138, baseType: !1383, size: 64, offset: 64)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1384, file: !1379, line: 139, baseType: !1383, size: 64, offset: 128)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1378, file: !1379, line: 146, baseType: !1382, size: 64, offset: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !1378, file: !1379, line: 152, baseType: !1376, size: 64, offset: 128)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1373, file: !318, line: 130, baseType: !1575, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1368, file: !318, line: 134, baseType: !580, size: 64, offset: 192)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !1368, file: !318, line: 137, baseType: !1412, size: 64, offset: 256)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !1368, file: !318, line: 138, baseType: !1405, size: 32, offset: 320)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !1368, file: !318, line: 142, baseType: !7, size: 32, offset: 352)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1368, file: !318, line: 144, baseType: !576, size: 32, offset: 384)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !1368, file: !318, line: 145, baseType: !576, size: 32, offset: 416)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1368, file: !318, line: 146, baseType: !2636, size: 64, offset: 448)
!2636 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !318, line: 119, baseType: !705)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !1350, file: !318, line: 220, baseType: !1353, size: 64, offset: 64)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1350, file: !318, line: 223, baseType: !580, size: 64, offset: 128)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !1350, file: !318, line: 226, baseType: !1343, size: 64, offset: 192)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !1350, file: !318, line: 229, baseType: !2641, size: 128, offset: 256)
!2641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2642, size: 128, elements: !1643)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !318, line: 229, flags: DIFlagFwdDecl)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !1350, file: !318, line: 232, baseType: !1349, size: 64, offset: 384)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !1350, file: !318, line: 233, baseType: !1349, size: 64, offset: 448)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !1350, file: !318, line: 238, baseType: !2647, size: 64, offset: 512)
!2647 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !318, line: 235, size: 64, elements: !2648)
!2648 = !{!2649, !2655}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !2647, file: !318, line: 236, baseType: !2650, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !318, line: 273, size: 128, elements: !2652)
!2652 = !{!2653, !2654}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2651, file: !318, line: 275, baseType: !1376, size: 64)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !2651, file: !318, line: 278, baseType: !1376, size: 64, offset: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !2647, file: !318, line: 237, baseType: !2656, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !318, line: 259, size: 320, elements: !2658)
!2658 = !{!2659, !2660, !2661, !2662, !2663}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !2657, file: !318, line: 261, baseType: !1575, size: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !2657, file: !318, line: 262, baseType: !1575, size: 64, offset: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2657, file: !318, line: 266, baseType: !1575, size: 64, offset: 128)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !2657, file: !318, line: 267, baseType: !1575, size: 64, offset: 192)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !2657, file: !318, line: 270, baseType: !576, size: 32, offset: 256)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1350, file: !318, line: 241, baseType: !2636, size: 64, offset: 576)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1350, file: !318, line: 244, baseType: !576, size: 32, offset: 640)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !1350, file: !318, line: 247, baseType: !576, size: 32, offset: 672)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !1350, file: !318, line: 250, baseType: !576, size: 32, offset: 704)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !1350, file: !318, line: 253, baseType: !576, size: 32, offset: 736)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1350, file: !318, line: 256, baseType: !576, size: 32, offset: 768)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "latch", scope: !1344, file: !561, line: 111, baseType: !1349, size: 64, offset: 128)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "lpt_decision", scope: !1344, file: !561, line: 114, baseType: !2672, size: 64, offset: 192)
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lpt_decision", file: !561, line: 41, size: 64, elements: !2673)
!2673 = !{!2674, !2675}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "decision", scope: !2672, file: !561, line: 42, baseType: !560, size: 32)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "times", scope: !2672, file: !561, line: 43, baseType: !7, size: 32, offset: 32)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "av_ninsns", scope: !1344, file: !561, line: 117, baseType: !7, size: 32, offset: 256)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "num_nodes", scope: !1344, file: !561, line: 120, baseType: !7, size: 32, offset: 288)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "superloops", scope: !1344, file: !561, line: 123, baseType: !2039, size: 64, offset: 320)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1344, file: !561, line: 126, baseType: !1343, size: 64, offset: 384)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1344, file: !561, line: 129, baseType: !1343, size: 64, offset: 448)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1344, file: !561, line: 132, baseType: !580, size: 64, offset: 512)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations", scope: !1344, file: !561, line: 139, baseType: !1412, size: 64, offset: 576)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_upper_bound", scope: !1344, file: !561, line: 143, baseType: !1460, size: 128, offset: 640)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_estimate", scope: !1344, file: !561, line: 146, baseType: !1460, size: 128, offset: 768)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "any_upper_bound", scope: !1344, file: !561, line: 148, baseType: !575, size: 8, offset: 896)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "any_estimate", scope: !1344, file: !561, line: 149, baseType: !575, size: 8, offset: 904)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "estimate_state", scope: !1344, file: !561, line: 153, baseType: !569, size: 32, offset: 928)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !1344, file: !561, line: 156, baseType: !2689, size: 64, offset: 960)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nb_iter_bound", file: !561, line: 48, size: 320, elements: !2691)
!2691 = !{!2692, !2693, !2694, !2695}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !2690, file: !561, line: 50, baseType: !1387, size: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !2690, file: !561, line: 59, baseType: !1460, size: 128, offset: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "is_exit", scope: !2690, file: !561, line: 64, baseType: !575, size: 8, offset: 192)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2690, file: !561, line: 67, baseType: !2689, size: 64, offset: 256)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1344, file: !561, line: 159, baseType: !2697, size: 64, offset: 1024)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop_exit", file: !561, line: 72, size: 256, elements: !2699)
!2699 = !{!2700, !2701, !2702, !2703}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !2698, file: !561, line: 74, baseType: !1367, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !2698, file: !561, line: 77, baseType: !2697, size: 64, offset: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2698, file: !561, line: 78, baseType: !2697, size: 64, offset: 128)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "next_e", scope: !2698, file: !561, line: 81, baseType: !2697, size: 64, offset: 192)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_parallel", scope: !1344, file: !561, line: 162, baseType: !575, size: 8, offset: 1088)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "single_iv", scope: !1344, file: !561, line: 166, baseType: !1412, size: 64, offset: 1152)
!2706 = !{!2707}
!2707 = !DILocalVariable(name: "vec_", arg: 1, scope: !1330, file: !561, line: 85, type: !1333)
!2708 = !DILocation(line: 0, scope: !1330)
!2709 = !DILocation(line: 85, column: 1, scope: !1330)
