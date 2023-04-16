; ModuleID = 'tree-ssa-loop-ivcanon.bc'
source_filename = "tree-ssa-loop-ivcanon.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.param_info = type { i8*, i32, i8, i32, i32, i8* }
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
%struct.eni_weights_d = type { i32, i32, i32, i32, i8 }
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %struct.vectorize, i32, void ()*, i8 (i64, i8*, i32)*, void ()*, i32 ()*, i32 ()*, i32 ()*, i32 ()*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %struct.attribute_spec*, i32 (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*, %union.tree_node**)*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, i8 ()*, i8 ()*, i8 ()*, i8 ()*, void ()*, %union.tree_node* (i32, i8)*, %struct.rtx_def* (%union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, i32)*, %union.tree_node* (i32, %union.tree_node*, i8*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, i8)*, %union.tree_node* (i32, i8, i8)*, i8* (%union.tree_node*)*, void ()*, i32 (%union.tree_node*, i8*, i32)*, i8 ()*, i32 ()*, i8 (i8)*, i8 ()*, i8 (%struct.rtx_def*)*, i8 (%struct.rtx_def*)*, i8 (%struct.rtx_def*, i32)*, %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*, i32)*, %struct.rtx_def* (%struct.rtx_def*)*, i8 (i32, %struct.rtx_def*, i8)*, i8 (i32, %struct.rtx_def*)*, i64, i64, i8 (%struct.rtx_def*)*, i8 (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*, %struct.rtx_def*, i32)*, i8* (i8*)*, i64 (i32)*, i32 (i32)*, i32 (i32, i32)*, i8 (i32)*, %struct.addr_space, i8 (i32)*, i8 (i32)*, i8 (%struct.rtx_def*, i32, i32, i32*, i8)*, i32 (%struct.rtx_def*, i8)*, %struct.rtx_def* (%struct.rtx_def*)*, i32 (%struct.rtx_def*, i32)*, %struct.rtx_def* (%struct.rtx_def*)*, void (%union.tree_node*)*, i8 (i32*, i32*)*, i32 (i32, i32)*, void ()*, %union.tree_node* ()*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void (%union.tree_node*, %struct.rtx_def*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %struct.gimple_seq_d**, %struct.gimple_seq_d**)*, i8* (i64*)*, i8* (i8*, i64)*, i8* (i32)*, i8 ()*, %struct.rtx_def* ()*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, i32 (%union.tree_node*)*, void (i8*, %struct.rtx_def*, i32)*, i8 (%struct.stdarg_info*, %union.gimple_statement_d*)*, %union.tree_node* ()*, %union.tree_node* ()*, i8* (%struct.rtx_def*)*, i8 (%union.tree_node*)*, i64, %struct.calls, i8* (%union.tree_node*, %union.tree_node*)*, i8* (i32, %union.tree_node*)*, i8* (i32, %union.tree_node*, %union.tree_node*)*, i8* (%union.tree_node*)*, i8* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, i32* ()*, i32 (i8, %struct.rtx_def*, i32, i32, %struct.secondary_reload_info*)*, void ()*, void ()*, i8 (i32)*, i32 ()*, i8 ()*, i8 (i32, i32)*, %struct.c, %struct.cxx, %struct.emutls, %struct.target_option_hooks, void (%struct.bitmap_head_def*)*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asm_out = type { i8*, i8*, i8*, %struct.asm_int_op, %struct.asm_int_op, i8 (%struct.rtx_def*, i32, i32)*, void (%struct._IO_FILE*, i8*)*, void (%struct._IO_FILE*, %union.tree_node*)*, void (%struct._IO_FILE*, %union.tree_node*, i32, i32)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*, %struct.rtx_def*)*, void (%struct._IO_FILE*, i8*, i64)*, i8 (%struct.rtx_def*)*, void (%union.tree_node*, i32)*, void (%struct._IO_FILE*, i64)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*, i64)*, void ()*, void (i8*, i32, %union.tree_node*)*, i32 ()*, %union.section* (%union.tree_node*, i32, i64)*, %union.section* (i32, %struct.rtx_def*, i64)*, void (%union.tree_node*, i32)*, %union.section* (%union.tree_node*)*, void (%struct.rtx_def*, i32)*, void (%struct.rtx_def*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i64, i64, %union.tree_node*)*, i8 (%union.tree_node*, i64, i64, %union.tree_node*)*, void ()*, void ()*, void ()*, void (%struct.rtx_def*)*, void (i8*)*, i32 (i32, i8*)*, i8*, void (%struct.rtx_def*)*, void (%struct._IO_FILE*, i32, %struct.rtx_def*)*, void (%struct._IO_FILE*, %struct.rtx_def*, %struct.rtx_def**, i32)*, void (%struct._IO_FILE*)* }
%struct.asm_int_op = type { i8*, i8*, i8*, i8* }
%struct.sched = type { i32 (%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)*, i32 ()*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def*, i32)*, void (%struct._IO_FILE*, i32, i32)*, void (%struct._IO_FILE*, i32)*, void (%struct._IO_FILE*, i32, i32)*, void (%struct._IO_FILE*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, void (%struct.rtx_def*, %struct.rtx_def*)*, void ()*, %struct.rtx_def* ()*, void ()*, %struct.rtx_def* ()*, void ()*, void ()*, i32 ()*, i32 (%struct.rtx_def*)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def*, i32, i32, i32*)*, i8 (%struct._dep*, i32, i32)*, i32 (%struct.rtx_def*, i32, %struct.rtx_def*, i32, i32)*, void ()*, i8* ()*, void (i8*, i8)*, void (i8*)*, void (i8*)*, void (i8*)*, i32 (%struct.rtx_def*, i32, %struct.rtx_def**)*, i8 (i32)*, %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*, i32)*, i8 (%struct.rtx_def*)*, void (%struct.spec_info_def*)*, i32 (%struct.rtx_def*)*, i32 (%struct.rtx_def*)*, i8 (%struct.rtx_def*)*, i32 (%struct.ddg*)* }
%struct._dep = type opaque
%struct.spec_info_def = type opaque
%struct.ddg = type opaque
%struct.vectorize = type { %union.tree_node* ()*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (i32, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i32 (i8)*, i8 (%union.tree_node*, i8)*, %union.tree_node* (%union.tree_node*, %union.tree_node**)*, i8 (%union.tree_node*, %union.tree_node*)*, i8 (i32, %union.tree_node*, i32, i8)* }
%struct.attribute_spec = type { i8*, i32, i32, i8, i8, i8, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* }
%struct.addr_space = type { i32 (i8)*, i32 (i8)*, i8 (i32, i8)*, i8 (i32, %struct.rtx_def*, i8, i8)*, %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*, i32, i8)*, i8 (i8, i8)*, %struct.rtx_def* (%struct.rtx_def*, %union.tree_node*, %union.tree_node*)* }
%struct.stdarg_info = type opaque
%struct.calls = type { i32 (%union.tree_node*, i32, i32*, %union.tree_node*, i32)*, i8 (%union.tree_node*)*, %struct.rtx_def* (%union.tree_node*, i32)*, i8 (%union.tree_node*, %union.tree_node*)*, i8 (%union.tree_node*)*, i8 (%struct.ix86_args*, i32, %union.tree_node*, i8)*, %struct.rtx_def* ()*, void (%struct.ix86_args*, i32, %union.tree_node*, i32*, i32)*, i8 (%struct.ix86_args*)*, i8 (%struct.ix86_args*)*, i8 (%union.tree_node*)*, i8 (i32, %union.tree_node*)*, i8 (%struct.ix86_args*, i32, %union.tree_node*, i8)*, i32 (%struct.ix86_args*, i32, %union.tree_node*, i8)*, i8* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %struct.rtx_def* (%union.tree_node*, %union.tree_node*, i8)*, %struct.rtx_def* (i32, %struct.rtx_def*)*, %struct.rtx_def* ()*, void ()*, %struct.rtx_def* ()*, i8 ()*, %struct.rtx_def* (%union.tree_node*, i8)*, void (%struct.rtx_def*, %union.tree_node*, %struct.rtx_def*)*, %struct.rtx_def* (%struct.rtx_def*)* }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.secondary_reload_info = type { i32, i32, %struct.secondary_reload_info*, i32 }
%struct.c = type { i32 (i8)* }
%struct.cxx = type { %union.tree_node* ()*, i8 ()*, %union.tree_node* (%union.tree_node*)*, i8 ()*, i32 (%union.tree_node*, i32)*, i8 ()*, i8 ()*, void (%union.tree_node*)*, i8 ()*, i8 ()*, i8 ()*, i8 ()*, void (%union.tree_node*)* }
%struct.emutls = type { i8*, i8*, i8*, i8*, i8*, i8*, %union.tree_node* (%union.tree_node*, %union.tree_node**)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, i8, i8 }
%struct.target_option_hooks = type { i8 (%union.tree_node*, %union.tree_node*, %union.tree_node*, i32)*, void (%struct.cl_target_option*)*, void (%struct.cl_target_option*)*, void (%struct._IO_FILE*, i32, %struct.cl_target_option*)*, i8 (%union.tree_node*, %union.tree_node*)*, i8 (%union.tree_node*, %union.tree_node*)* }
%struct.cl_target_option = type { i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.loop_iterator = type { %struct.VEC_int_heap*, i32 }
%struct.VEC_int_heap = type { %struct.VEC_int_base }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.loop_size = type { i32, i32, i32, i32 }
%struct.VEC_edge_heap = type { %struct.VEC_edge_base }
%struct.simple_bitmap_def = type { i8*, i32, i32, [1 x i64] }
%struct.affine_iv = type { %union.tree_node*, %union.tree_node*, i8 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@flag_tree_loop_ivcanon = external dso_local local_unnamed_addr global i32, align 4
@compiler_params = external dso_local local_unnamed_addr global %struct.param_info*, align 8
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@dump_flags = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [18 x i8] c"Loop %d iterates \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" times.\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"  Loop size: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"  Estimated size after unrolling: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"Not unrolling loop %d (--param max-completely-peeled-insns limit reached).\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Not unrolling loop %d.\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"tree-ssa-loop-ivcanon.c\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Unrolled loop %d completely.\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Estimating sizes for loop %i\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c" BB: %i, after_exit: %i\0A\00", align 1
@eni_size_weights = external dso_local global %struct.eni_weights_d, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"  size: %3i \00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"   Exit condition will be eliminated.\0A\00", align 1
@.str.13 = private unnamed_addr constant [56 x i8] c"   Induction variable computation will be folded away.\0A\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"   Constant expression will be folded away.\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"   Constant conditional.\0A\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"size: %i-%i, last_iteration: %i-%i\0A\00", align 1
@tree_code_type = external dso_local local_unnamed_addr constant [0 x i32], align 4
@targetm = external dso_local local_unnamed_addr global %struct.gcc_target, align 8
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@.str.17 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external dso_local local_unnamed_addr constant [0 x i8], align 1
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@.str.18 = private unnamed_addr constant [32 x i8] c"Added canonical iv to loop %d, \00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c" iterations.\0A\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1878 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1891, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1892, metadata !DIExpression()), !dbg !1893
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1894
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1895
  ret i32 %call, !dbg !1896
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1897 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1901
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1902
  ret i32 %call, !dbg !1903
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1904 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1959, metadata !DIExpression()), !dbg !1960
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1961
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1961
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1961
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1961
  %cmp = icmp uge i8* %0, %1, !dbg !1961
  %conv1 = zext i1 %cmp to i64, !dbg !1961
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1961
  %tobool = icmp eq i64 %expval, 0, !dbg !1961
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1961

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1961
  br label %cond.end, !dbg !1961

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1961
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1961
  %2 = load i8, i8* %0, align 1, !dbg !1961
  %conv3 = zext i8 %2 to i32, !dbg !1961
  br label %cond.end, !dbg !1961

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1961
  ret i32 %cond, !dbg !1962
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1963 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1965, metadata !DIExpression()), !dbg !1966
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1967
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1967
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1967
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1967
  %cmp = icmp uge i8* %0, %1, !dbg !1967
  %conv1 = zext i1 %cmp to i64, !dbg !1967
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1967
  %tobool = icmp eq i64 %expval, 0, !dbg !1967
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1967

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1967
  br label %cond.end, !dbg !1967

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1967
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1967
  %2 = load i8, i8* %0, align 1, !dbg !1967
  %conv3 = zext i8 %2 to i32, !dbg !1967
  br label %cond.end, !dbg !1967

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1967
  ret i32 %cond, !dbg !1968
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1969 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1970
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1970
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1970
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1970
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1970
  %cmp = icmp uge i8* %1, %2, !dbg !1970
  %conv1 = zext i1 %cmp to i64, !dbg !1970
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1970
  %tobool = icmp eq i64 %expval, 0, !dbg !1970
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1970

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1970
  br label %cond.end, !dbg !1970

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1970
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1970
  %3 = load i8, i8* %1, align 1, !dbg !1970
  %conv3 = zext i8 %3 to i32, !dbg !1970
  br label %cond.end, !dbg !1970

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1970
  ret i32 %cond, !dbg !1971
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1972 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1976, metadata !DIExpression()), !dbg !1977
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1978
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1979
  ret i32 %call, !dbg !1980
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1981 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1985, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1986, metadata !DIExpression()), !dbg !1987
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1988
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1988
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1988
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1988
  %cmp = icmp uge i8* %0, %1, !dbg !1988
  %conv1 = zext i1 %cmp to i64, !dbg !1988
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1988
  %tobool = icmp eq i64 %expval, 0, !dbg !1988
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1988

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1988
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1988
  br label %cond.end, !dbg !1988

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1988
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1988
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1988
  store i8 %conv2, i8* %0, align 1, !dbg !1988
  %conv6 = and i32 %__c, 255, !dbg !1988
  br label %cond.end, !dbg !1988

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1988
  ret i32 %cond, !dbg !1989
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1990 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1992, metadata !DIExpression()), !dbg !1994
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1993, metadata !DIExpression()), !dbg !1994
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1995
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1995
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1995
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1995
  %cmp = icmp uge i8* %0, %1, !dbg !1995
  %conv1 = zext i1 %cmp to i64, !dbg !1995
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1995
  %tobool = icmp eq i64 %expval, 0, !dbg !1995
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1995

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1995
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1995
  br label %cond.end, !dbg !1995

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1995
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1995
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1995
  store i8 %conv2, i8* %0, align 1, !dbg !1995
  %conv6 = and i32 %__c, 255, !dbg !1995
  br label %cond.end, !dbg !1995

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1995
  ret i32 %cond, !dbg !1996
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1997 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1999, metadata !DIExpression()), !dbg !2000
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2001
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2001
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2001
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2001
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2001
  %cmp = icmp uge i8* %1, %2, !dbg !2001
  %conv1 = zext i1 %cmp to i64, !dbg !2001
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2001
  %tobool = icmp eq i64 %expval, 0, !dbg !2001
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2001

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2001
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2001
  br label %cond.end, !dbg !2001

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2001
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2001
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2001
  store i8 %conv4, i8* %1, align 1, !dbg !2001
  %conv6 = and i32 %__c, 255, !dbg !2001
  br label %cond.end, !dbg !2001

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2001
  ret i32 %cond, !dbg !2002
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2003 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2009, metadata !DIExpression()), !dbg !2012
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2010, metadata !DIExpression()), !dbg !2012
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2011, metadata !DIExpression()), !dbg !2012
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2013
  ret i64 %call, !dbg !2014
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2015 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2017, metadata !DIExpression()), !dbg !2018
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2019
  %0 = load i32, i32* %_flags, align 8, !dbg !2019
  %and = lshr i32 %0, 4, !dbg !2019
  %and.lobit = and i32 %and, 1, !dbg !2019
  ret i32 %and.lobit, !dbg !2020
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2021 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2023, metadata !DIExpression()), !dbg !2024
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2025
  %0 = load i32, i32* %_flags, align 8, !dbg !2025
  %and = lshr i32 %0, 5, !dbg !2025
  %and.lobit = and i32 %and, 1, !dbg !2025
  ret i32 %and.lobit, !dbg !2026
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2027 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2030, metadata !DIExpression()), !dbg !2031
  %__c.off = add i32 %__c, 128, !dbg !2032
  %0 = icmp ult i32 %__c.off, 384, !dbg !2032
  br i1 %0, label %cond.true, label %cond.end, !dbg !2032

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2033
  %1 = load i32*, i32** %call, align 8, !dbg !2034
  %idxprom = sext i32 %__c to i64, !dbg !2035
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2035
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2035
  br label %cond.end, !dbg !2036

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2036
  ret i32 %cond, !dbg !2037
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2038 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2040, metadata !DIExpression()), !dbg !2041
  %__c.off = add i32 %__c, 128, !dbg !2042
  %0 = icmp ult i32 %__c.off, 384, !dbg !2042
  br i1 %0, label %cond.true, label %cond.end, !dbg !2042

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2043
  %1 = load i32*, i32** %call, align 8, !dbg !2044
  %idxprom = sext i32 %__c to i64, !dbg !2045
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2045
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2045
  br label %cond.end, !dbg !2046

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2046
  ret i32 %cond, !dbg !2047
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2048 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2053, metadata !DIExpression()), !dbg !2054
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2055
  %conv = trunc i64 %call to i32, !dbg !2056
  ret i32 %conv, !dbg !2057
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2058 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2062, metadata !DIExpression()), !dbg !2063
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2064
  ret i64 %call, !dbg !2065
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2066 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2071, metadata !DIExpression()), !dbg !2072
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2073
  ret i64 %call, !dbg !2074
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2075 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2081, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2082, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2083, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2084, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2085, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 0, metadata !2086, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2087, metadata !DIExpression()), !dbg !2091
  br label %while.cond, !dbg !2092

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2093
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2091
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2087, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2086, metadata !DIExpression()), !dbg !2091
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2094
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2092

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2095
  %div = lshr i64 %add, 1, !dbg !2097
  call void @llvm.dbg.value(metadata i64 %div, metadata !2088, metadata !DIExpression()), !dbg !2091
  %mul = mul i64 %div, %__size, !dbg !2098
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2099
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2089, metadata !DIExpression()), !dbg !2091
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2100
  call void @llvm.dbg.value(metadata i32 %call, metadata !2090, metadata !DIExpression()), !dbg !2091
  %cmp1 = icmp slt i32 %call, 0, !dbg !2101
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2103

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2104
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2106

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2107
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2086, metadata !DIExpression()), !dbg !2091
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2091
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2091
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2087, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2086, metadata !DIExpression()), !dbg !2091
  br label %while.cond, !dbg !2092, !llvm.loop !2108

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2091
  ret i8* %retval.0, !dbg !2110
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2111 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2117, metadata !DIExpression()), !dbg !2118
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2119
  ret double %call, !dbg !2120
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2121 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2130, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2131, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i32 %base, metadata !2132, metadata !DIExpression()), !dbg !2133
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2134
  ret i64 %call, !dbg !2135
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2136 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2142, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2143, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata i32 %base, metadata !2144, metadata !DIExpression()), !dbg !2145
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2146
  ret i64 %call, !dbg !2147
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2148 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2159, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2160, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i32 %base, metadata !2161, metadata !DIExpression()), !dbg !2162
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2163
  ret i64 %call, !dbg !2164
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2165 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2169, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2170, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata i32 %base, metadata !2171, metadata !DIExpression()), !dbg !2172
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2173
  ret i64 %call, !dbg !2174
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2175 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2215, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2216, metadata !DIExpression()), !dbg !2217
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2218
  ret i32 %call, !dbg !2219
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2220 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2222, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2223, metadata !DIExpression()), !dbg !2224
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2225
  ret i32 %call, !dbg !2226
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2227 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2231, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2232, metadata !DIExpression()), !dbg !2233
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2234
  ret i32 %call, !dbg !2235
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2236 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2240, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2241, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2242, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2243, metadata !DIExpression()), !dbg !2244
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2245
  ret i32 %call, !dbg !2246
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2247 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2251, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2252, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2253, metadata !DIExpression()), !dbg !2254
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2253, metadata !DIExpression(DW_OP_deref)), !dbg !2254
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2255
  ret i32 %call, !dbg !2256
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2257 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2261, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2262, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2263, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2264, metadata !DIExpression()), !dbg !2265
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2264, metadata !DIExpression(DW_OP_deref)), !dbg !2265
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2266
  ret i32 %call, !dbg !2267
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2268 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2292, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2293, metadata !DIExpression()), !dbg !2294
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2295
  ret i32 %call, !dbg !2296
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2297 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2299, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2300, metadata !DIExpression()), !dbg !2301
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2302
  ret i32 %call, !dbg !2303
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2304 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2308, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2309, metadata !DIExpression()), !dbg !2310
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2311
  ret i32 %call, !dbg !2312
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2313 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2317, metadata !DIExpression()), !dbg !2321
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2318, metadata !DIExpression()), !dbg !2321
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2319, metadata !DIExpression()), !dbg !2321
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2320, metadata !DIExpression()), !dbg !2321
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2322
  ret i32 %call, !dbg !2323
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @tree_num_loop_insns(%struct.loop* %loop, %struct.eni_weights_d* %weights) local_unnamed_addr #5 !dbg !2324 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2338, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata %struct.eni_weights_d* %weights, metadata !2339, metadata !DIExpression()), !dbg !2351
  %call = tail call %struct.basic_block_def** @get_loop_body(%struct.loop* %loop) #6, !dbg !2352
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %call, metadata !2340, metadata !DIExpression()), !dbg !2351
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2353
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7, !dbg !2353
  call void @llvm.dbg.value(metadata i32 0, metadata !2349, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i32 0, metadata !2350, metadata !DIExpression()), !dbg !2351
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 6, !dbg !2354
  %1 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2357
  br label %for.cond, !dbg !2359

for.cond:                                         ; preds = %for.inc6, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc6 ], [ 0, %entry ], !dbg !2360
  %size.0 = phi i32 [ %size.1.lcssa, %for.inc6 ], [ 0, %entry ], !dbg !2360
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2350, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i32 %size.0, metadata !2349, metadata !DIExpression()), !dbg !2351
  %2 = load i32, i32* %num_nodes, align 4, !dbg !2361
  %3 = zext i32 %2 to i64, !dbg !2362
  %cmp = icmp ult i64 %indvars.iv, %3, !dbg !2362
  br i1 %cmp, label %for.body, label %for.end7, !dbg !2363

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #7, !dbg !2364
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %call, i64 %indvars.iv, !dbg !2365
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !2365
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %4) #8, !dbg !2364
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %1, i64 24, i1 false), !dbg !2364
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #7, !dbg !2364
  br label %for.cond1, !dbg !2366

for.cond1:                                        ; preds = %for.body3, %for.body
  %size.1 = phi i32 [ %size.0, %for.body ], [ %add, %for.body3 ], !dbg !2351
  call void @llvm.dbg.value(metadata i32 %size.1, metadata !2349, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2342, metadata !DIExpression(DW_OP_deref)), !dbg !2351
  %call2 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !2367
  %tobool = icmp eq i8 %call2, 0, !dbg !2369
  br i1 %tobool, label %for.body3, label %for.inc6, !dbg !2370

for.body3:                                        ; preds = %for.cond1
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2342, metadata !DIExpression(DW_OP_deref)), !dbg !2351
  %call4 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !2371
  %call5 = call i32 @estimate_num_insns(%union.gimple_statement_d* %call4, %struct.eni_weights_d* %weights) #6, !dbg !2372
  %add = add i32 %size.1, %call5, !dbg !2373
  call void @llvm.dbg.value(metadata i32 %add, metadata !2349, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2342, metadata !DIExpression(DW_OP_deref)), !dbg !2351
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #8, !dbg !2374
  br label %for.cond1, !dbg !2375, !llvm.loop !2376

for.inc6:                                         ; preds = %for.cond1
  %size.1.lcssa = phi i32 [ %size.1, %for.cond1 ], !dbg !2351
  call void @llvm.dbg.value(metadata i32 %size.1.lcssa, metadata !2349, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i32 %size.1.lcssa, metadata !2349, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i32 %size.1.lcssa, metadata !2349, metadata !DIExpression()), !dbg !2351
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2378
  br label %for.cond, !dbg !2379, !llvm.loop !2380

for.end7:                                         ; preds = %for.cond
  %size.0.lcssa = phi i32 [ %size.0, %for.cond ], !dbg !2360
  call void @llvm.dbg.value(metadata i32 %size.0.lcssa, metadata !2349, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i32 %size.0.lcssa, metadata !2349, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i32 %size.0.lcssa, metadata !2349, metadata !DIExpression()), !dbg !2351
  %5 = bitcast %struct.basic_block_def** %call to i8*, !dbg !2382
  call void @free(i8* %5) #6, !dbg !2383
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7, !dbg !2384
  ret i32 %size.0.lcssa, !dbg !2385
}

declare dso_local %struct.basic_block_def** @get_loop_body(%struct.loop*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2386 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2390, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !2391, metadata !DIExpression()), !dbg !2394
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #8, !dbg !2395
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !2392, metadata !DIExpression()), !dbg !2393
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %call) #8, !dbg !2396
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !2397
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2398
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !2399
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !2400
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !2401
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !2402
  ret void, !dbg !2403
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2404 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2408, metadata !DIExpression()), !dbg !2409
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2410
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2410
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !2411
  %conv1 = zext i1 %cmp to i8, !dbg !2412
  ret i8 %conv1, !dbg !2413
}

declare dso_local i32 @estimate_num_insns(%union.gimple_statement_d*, %struct.eni_weights_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2414 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2418, metadata !DIExpression()), !dbg !2419
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2420
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2420
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !2421
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !2421
  ret %union.gimple_statement_d* %1, !dbg !2422
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !2423 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2428, metadata !DIExpression()), !dbg !2429
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2430
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2430
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !2431
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !2431
  %2 = load i64, i64* %1, align 8, !dbg !2431
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !2432
  store i64 %2, i64* %3, align 8, !dbg !2432
  ret void, !dbg !2433
}

declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @canonicalize_induction_variables() local_unnamed_addr #5 !dbg !2434 {
entry:
  %li = alloca %struct.loop_iterator, align 8
  %loop = alloca %struct.loop*, align 8
  %0 = bitcast %struct.loop_iterator* %li to i8*, !dbg !2446
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7, !dbg !2446
  %1 = bitcast %struct.loop** %loop to i8*, !dbg !2447
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !2447
  call void @llvm.dbg.value(metadata i8 0, metadata !2445, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2438, metadata !DIExpression(DW_OP_deref)), !dbg !2448
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2444, metadata !DIExpression(DW_OP_deref)), !dbg !2448
  call fastcc void @fel_init(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop, i32 0) #8, !dbg !2449
  br label %for.cond, !dbg !2449

for.cond:                                         ; preds = %for.body, %entry
  %changed.0 = phi i8 [ 0, %entry ], [ %or1, %for.body ], !dbg !2448
  call void @llvm.dbg.value(metadata i8 %changed.0, metadata !2445, metadata !DIExpression()), !dbg !2448
  %2 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2451
  call void @llvm.dbg.value(metadata %struct.loop* %2, metadata !2444, metadata !DIExpression()), !dbg !2448
  %tobool = icmp eq %struct.loop* %2, null, !dbg !2449
  br i1 %tobool, label %for.end, label %for.body, !dbg !2449

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.loop* %2, metadata !2444, metadata !DIExpression()), !dbg !2448
  %call = call fastcc zeroext i8 @canonicalize_loop_induction_variables(%struct.loop* nonnull %2, i8 zeroext 1, i32 0, i8 zeroext 1) #8, !dbg !2453
  %or1 = or i8 %changed.0, %call, !dbg !2455
  call void @llvm.dbg.value(metadata i8 %or1, metadata !2445, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2438, metadata !DIExpression(DW_OP_deref)), !dbg !2448
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2444, metadata !DIExpression(DW_OP_deref)), !dbg !2448
  call fastcc void @fel_next(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop) #8, !dbg !2451
  br label %for.cond, !dbg !2451, !llvm.loop !2456

for.end:                                          ; preds = %for.cond
  %changed.0.lcssa = phi i8 [ %changed.0, %for.cond ], !dbg !2448
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !2445, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !2445, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !2445, metadata !DIExpression()), !dbg !2448
  call void @scev_reset() #6, !dbg !2458
  %tobool3 = icmp eq i8 %changed.0.lcssa, 0, !dbg !2459
  %. = select i1 %tobool3, i32 0, i32 32, !dbg !2448
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !2461
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7, !dbg !2461
  ret i32 %., !dbg !2461
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @fel_init(%struct.loop_iterator* %li, %struct.loop** %loop, i32 %flags) unnamed_addr #0 !dbg !2462 {
entry:
  %aloop = alloca %struct.loop*, align 8
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2468, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2469, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i32 %flags, metadata !2470, metadata !DIExpression()), !dbg !2474
  %0 = bitcast %struct.loop** %aloop to i8*, !dbg !2475
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2475
  %idx = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 1, !dbg !2476
  store i32 0, i32* %idx, align 8, !dbg !2477
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2478
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 4, !dbg !2478
  %2 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2478
  %tobool = icmp eq %struct.loops* %2, null, !dbg !2478
  br i1 %tobool, label %if.then, label %if.end, !dbg !2480

if.then:                                          ; preds = %entry
  %to_visit = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !2481
  store %struct.VEC_int_heap* null, %struct.VEC_int_heap** %to_visit, align 8, !dbg !2483
  store %struct.loop* null, %struct.loop** %loop, align 8, !dbg !2484
  br label %cleanup, !dbg !2485

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @number_of_loops() #8, !dbg !2486
  %call1 = tail call fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 %call) #8, !dbg !2486
  %to_visit2 = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !2487
  store %struct.VEC_int_heap* %call1, %struct.VEC_int_heap** %to_visit2, align 8, !dbg !2488
  %and = and i32 %flags, 1, !dbg !2489
  %3 = xor i32 %and, 1, !dbg !2490
  call void @llvm.dbg.value(metadata i32 %3, metadata !2473, metadata !DIExpression()), !dbg !2474
  %and4 = and i32 %flags, 4, !dbg !2491
  %tobool5 = icmp eq i32 %and4, 0, !dbg !2491
  br i1 %tobool5, label %if.else, label %for.cond.preheader, !dbg !2493

for.cond.preheader:                               ; preds = %if.end
  br label %for.cond, !dbg !2494

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %i.0 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ], !dbg !2497
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2472, metadata !DIExpression()), !dbg !2474
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2498
  %x_current_loops8 = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 4, !dbg !2498
  %5 = load %struct.loops*, %struct.loops** %x_current_loops8, align 8, !dbg !2498
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %5, i64 0, i32 1, !dbg !2498
  %6 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !2498
  %tobool9 = icmp eq %struct.VEC_loop_p_gc* %6, null, !dbg !2498
  br i1 %tobool9, label %cond.end, label %cond.true, !dbg !2498

cond.true:                                        ; preds = %for.cond
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %6, i64 0, i32 0, !dbg !2498
  br label %cond.end, !dbg !2498

cond.end:                                         ; preds = %for.cond, %cond.true
  %cond13 = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %for.cond ], !dbg !2498
  call void @llvm.dbg.value(metadata %struct.loop** %aloop, metadata !2471, metadata !DIExpression(DW_OP_deref)), !dbg !2474
  %call14 = call fastcc i32 @VEC_loop_p_base_iterate(%struct.VEC_loop_p_base* %cond13, i32 %i.0, %struct.loop** nonnull %aloop) #8, !dbg !2498
  %tobool15 = icmp eq i32 %call14, 0, !dbg !2494
  br i1 %tobool15, label %if.end114.loopexit2, label %for.body, !dbg !2494

for.body:                                         ; preds = %cond.end
  %7 = load %struct.loop*, %struct.loop** %aloop, align 8, !dbg !2500
  call void @llvm.dbg.value(metadata %struct.loop* %7, metadata !2471, metadata !DIExpression()), !dbg !2474
  %cmp = icmp eq %struct.loop* %7, null, !dbg !2502
  br i1 %cmp, label %for.inc, label %land.lhs.true, !dbg !2503

land.lhs.true:                                    ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.loop* %7, metadata !2471, metadata !DIExpression()), !dbg !2474
  %inner = getelementptr inbounds %struct.loop, %struct.loop* %7, i64 0, i32 8, !dbg !2504
  %8 = load %struct.loop*, %struct.loop** %inner, align 8, !dbg !2504
  %cmp16 = icmp eq %struct.loop* %8, null, !dbg !2505
  br i1 %cmp16, label %land.lhs.true17, label %for.inc, !dbg !2506

land.lhs.true17:                                  ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.loop* %7, metadata !2471, metadata !DIExpression()), !dbg !2474
  %num = getelementptr inbounds %struct.loop, %struct.loop* %7, i64 0, i32 0, !dbg !2507
  %9 = load i32, i32* %num, align 8, !dbg !2507
  %cmp18 = icmp slt i32 %9, %3, !dbg !2508
  br i1 %cmp18, label %for.inc, label %if.then19, !dbg !2509

if.then19:                                        ; preds = %land.lhs.true17
  %10 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %to_visit2, align 8, !dbg !2510
  %tobool21 = icmp eq %struct.VEC_int_heap* %10, null, !dbg !2510
  br i1 %tobool21, label %cond.end26, label %cond.true22, !dbg !2510

cond.true22:                                      ; preds = %if.then19
  %base24 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %10, i64 0, i32 0, !dbg !2510
  br label %cond.end26, !dbg !2510

cond.end26:                                       ; preds = %if.then19, %cond.true22
  %cond27 = phi %struct.VEC_int_base* [ %base24, %cond.true22 ], [ null, %if.then19 ], !dbg !2510
  call void @llvm.dbg.value(metadata %struct.loop* %7, metadata !2471, metadata !DIExpression()), !dbg !2474
  %call29 = call fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %cond27, i32 %9) #8, !dbg !2510
  br label %for.inc, !dbg !2510

for.inc:                                          ; preds = %land.lhs.true17, %for.body, %land.lhs.true, %cond.end26
  %inc = add i32 %i.0, 1, !dbg !2511
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2472, metadata !DIExpression()), !dbg !2474
  br label %for.cond, !dbg !2512, !llvm.loop !2513

if.else:                                          ; preds = %if.end
  %and31 = and i32 %flags, 2, !dbg !2515
  %tobool32 = icmp eq i32 %and31, 0, !dbg !2515
  %11 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2517
  %x_current_loops35 = getelementptr inbounds %struct.function, %struct.function* %11, i64 0, i32 4, !dbg !2517
  %12 = load %struct.loops*, %struct.loops** %x_current_loops35, align 8, !dbg !2517
  %tree_root = getelementptr inbounds %struct.loops, %struct.loops* %12, i64 0, i32 3, !dbg !2517
  %13 = bitcast %struct.loop** %tree_root to i64*, !dbg !2517
  %14 = load i64, i64* %13, align 8, !dbg !2517
  %15 = bitcast %struct.loop** %aloop to i64*, !dbg !2517
  store i64 %14, i64* %15, align 8, !dbg !2517
  %16 = inttoptr i64 %14 to %struct.loop*, !dbg !2518
  br i1 %tobool32, label %while.cond79.preheader, label %for.cond36.preheader, !dbg !2518

for.cond36.preheader:                             ; preds = %if.else
  br label %for.cond36, !dbg !2519

while.cond79.preheader:                           ; preds = %if.else
  br label %while.cond79, !dbg !2522

for.cond36:                                       ; preds = %for.cond36.preheader, %for.inc40
  %17 = phi %struct.loop* [ %16, %for.cond36.preheader ], [ %26, %for.inc40 ]
  %18 = phi %struct.loop* [ %16, %for.cond36.preheader ], [ %26, %for.inc40 ]
  %19 = phi %struct.loop* [ %16, %for.cond36.preheader ], [ %26, %for.inc40 ]
  %20 = phi %struct.loop* [ %16, %for.cond36.preheader ], [ %26, %for.inc40 ]
  %21 = phi %struct.loop* [ %16, %for.cond36.preheader ], [ %26, %for.inc40 ]
  %22 = phi %struct.loop* [ %16, %for.cond36.preheader ], [ %26, %for.inc40 ], !dbg !2524
  call void @llvm.dbg.value(metadata %struct.loop* %22, metadata !2471, metadata !DIExpression()), !dbg !2474
  %inner37 = getelementptr inbounds %struct.loop, %struct.loop* %22, i64 0, i32 8, !dbg !2526
  %23 = load %struct.loop*, %struct.loop** %inner37, align 8, !dbg !2526
  %cmp38 = icmp eq %struct.loop* %23, null, !dbg !2527
  br i1 %cmp38, label %while.cond.preheader, label %for.inc40, !dbg !2519

while.cond.preheader:                             ; preds = %for.cond36
  %.lcssa16 = phi %struct.loop* [ %17, %for.cond36 ]
  %.lcssa15 = phi %struct.loop* [ %18, %for.cond36 ]
  %.lcssa14 = phi %struct.loop* [ %19, %for.cond36 ]
  %.lcssa13 = phi %struct.loop* [ %20, %for.cond36 ]
  br label %while.cond, !dbg !2528

for.inc40:                                        ; preds = %for.cond36
  call void @llvm.dbg.value(metadata %struct.loop* %21, metadata !2471, metadata !DIExpression()), !dbg !2474
  %inner41 = getelementptr inbounds %struct.loop, %struct.loop* %21, i64 0, i32 8, !dbg !2529
  %24 = bitcast %struct.loop** %inner41 to i64*, !dbg !2529
  %25 = load i64, i64* %24, align 8, !dbg !2529
  store i64 %25, i64* %15, align 8, !dbg !2530
  %26 = inttoptr i64 %25 to %struct.loop*, !dbg !2531
  br label %for.cond36, !dbg !2531, !llvm.loop !2532

while.cond:                                       ; preds = %while.cond.preheader, %if.end74
  %27 = phi %struct.loop* [ %.lcssa16, %while.cond.preheader ], [ %43, %if.end74 ]
  %28 = phi %struct.loop* [ %.lcssa15, %while.cond.preheader ], [ %44, %if.end74 ]
  %29 = phi %struct.loop* [ %.lcssa14, %while.cond.preheader ], [ %44, %if.end74 ]
  %30 = phi %struct.loop* [ %.lcssa13, %while.cond.preheader ], [ %44, %if.end74 ], !dbg !2534
  call void @llvm.dbg.value(metadata %struct.loop* %30, metadata !2471, metadata !DIExpression()), !dbg !2474
  %num43 = getelementptr inbounds %struct.loop, %struct.loop* %30, i64 0, i32 0, !dbg !2537
  %31 = load i32, i32* %num43, align 8, !dbg !2537
  %cmp44 = icmp slt i32 %31, %3, !dbg !2538
  br i1 %cmp44, label %if.end56, label %if.then45, !dbg !2539

if.then45:                                        ; preds = %while.cond
  %32 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %to_visit2, align 8, !dbg !2540
  %tobool47 = icmp eq %struct.VEC_int_heap* %32, null, !dbg !2540
  br i1 %tobool47, label %cond.end52, label %cond.true48, !dbg !2540

cond.true48:                                      ; preds = %if.then45
  %base50 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %32, i64 0, i32 0, !dbg !2540
  br label %cond.end52, !dbg !2540

cond.end52:                                       ; preds = %if.then45, %cond.true48
  %cond53 = phi %struct.VEC_int_base* [ %base50, %cond.true48 ], [ null, %if.then45 ], !dbg !2540
  call void @llvm.dbg.value(metadata %struct.loop* %29, metadata !2471, metadata !DIExpression()), !dbg !2474
  %num54 = getelementptr inbounds %struct.loop, %struct.loop* %29, i64 0, i32 0, !dbg !2540
  %33 = load i32, i32* %num54, align 8, !dbg !2540
  %call55 = tail call fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %cond53, i32 %33) #8, !dbg !2540
  br label %if.end56, !dbg !2540

if.end56:                                         ; preds = %while.cond, %cond.end52
  call void @llvm.dbg.value(metadata %struct.loop* %28, metadata !2471, metadata !DIExpression()), !dbg !2474
  %next = getelementptr inbounds %struct.loop, %struct.loop* %28, i64 0, i32 9, !dbg !2541
  %34 = load %struct.loop*, %struct.loop** %next, align 8, !dbg !2541
  %tobool57 = icmp eq %struct.loop* %34, null, !dbg !2543
  call void @llvm.dbg.value(metadata %struct.loop* %28, metadata !2471, metadata !DIExpression()), !dbg !2474
  br i1 %tobool57, label %if.else67, label %if.then58, !dbg !2544

if.then58:                                        ; preds = %if.end56
  %35 = ptrtoint %struct.loop* %34 to i64, !dbg !2544
  store i64 %35, i64* %15, align 8, !dbg !2545
  br label %for.cond60, !dbg !2548

for.cond60:                                       ; preds = %for.inc64, %if.then58
  %36 = phi %struct.loop* [ %42, %for.inc64 ], [ %34, %if.then58 ]
  %37 = phi %struct.loop* [ %42, %for.inc64 ], [ %34, %if.then58 ]
  %38 = phi %struct.loop* [ %42, %for.inc64 ], [ %34, %if.then58 ], !dbg !2549
  call void @llvm.dbg.value(metadata %struct.loop* %38, metadata !2471, metadata !DIExpression()), !dbg !2474
  %inner61 = getelementptr inbounds %struct.loop, %struct.loop* %38, i64 0, i32 8, !dbg !2551
  %39 = load %struct.loop*, %struct.loop** %inner61, align 8, !dbg !2551
  %cmp62 = icmp eq %struct.loop* %39, null, !dbg !2552
  br i1 %cmp62, label %if.end74.loopexit, label %for.inc64, !dbg !2553

for.inc64:                                        ; preds = %for.cond60
  call void @llvm.dbg.value(metadata %struct.loop* %37, metadata !2471, metadata !DIExpression()), !dbg !2474
  %inner65 = getelementptr inbounds %struct.loop, %struct.loop* %37, i64 0, i32 8, !dbg !2554
  %40 = bitcast %struct.loop** %inner65 to i64*, !dbg !2554
  %41 = load i64, i64* %40, align 8, !dbg !2554
  store i64 %41, i64* %15, align 8, !dbg !2555
  %42 = inttoptr i64 %41 to %struct.loop*, !dbg !2556
  br label %for.cond60, !dbg !2556, !llvm.loop !2557

if.else67:                                        ; preds = %if.end56
  %call68 = tail call fastcc %struct.loop* @loop_outer(%struct.loop* %28) #8, !dbg !2559
  %tobool69 = icmp eq %struct.loop* %call68, null, !dbg !2559
  br i1 %tobool69, label %if.end114.loopexit1, label %if.else71, !dbg !2561

if.else71:                                        ; preds = %if.else67
  call void @llvm.dbg.value(metadata %struct.loop* %27, metadata !2471, metadata !DIExpression()), !dbg !2474
  %call72 = tail call fastcc %struct.loop* @loop_outer(%struct.loop* %27) #8, !dbg !2562
  call void @llvm.dbg.value(metadata %struct.loop* %call72, metadata !2471, metadata !DIExpression()), !dbg !2474
  store %struct.loop* %call72, %struct.loop** %aloop, align 8, !dbg !2563
  br label %if.end74

if.end74.loopexit:                                ; preds = %for.cond60
  %.lcssa12 = phi %struct.loop* [ %36, %for.cond60 ]
  %.lcssa11 = phi %struct.loop* [ %38, %for.cond60 ], !dbg !2549
  call void @llvm.dbg.value(metadata %struct.loop* %.lcssa11, metadata !2471, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata %struct.loop* %.lcssa11, metadata !2471, metadata !DIExpression()), !dbg !2474
  br label %if.end74, !dbg !2528

if.end74:                                         ; preds = %if.end74.loopexit, %if.else71
  %43 = phi %struct.loop* [ %.lcssa12, %if.end74.loopexit ], [ %call72, %if.else71 ]
  %44 = phi %struct.loop* [ %.lcssa11, %if.end74.loopexit ], [ %call72, %if.else71 ]
  br label %while.cond, !dbg !2528, !llvm.loop !2564

while.cond79:                                     ; preds = %while.cond79.preheader, %if.end111
  %45 = phi %struct.loop* [ %16, %while.cond79.preheader ], [ %69, %if.end111 ]
  %46 = phi %struct.loop* [ %16, %while.cond79.preheader ], [ %70, %if.end111 ]
  %47 = phi %struct.loop* [ %16, %while.cond79.preheader ], [ %71, %if.end111 ]
  %48 = phi %struct.loop* [ %16, %while.cond79.preheader ], [ %72, %if.end111 ]
  %49 = phi %struct.loop* [ %16, %while.cond79.preheader ], [ %73, %if.end111 ]
  %50 = phi %struct.loop* [ %16, %while.cond79.preheader ], [ %74, %if.end111 ]
  %51 = phi %struct.loop* [ %16, %while.cond79.preheader ], [ %75, %if.end111 ]
  %52 = phi %struct.loop* [ %16, %while.cond79.preheader ], [ %76, %if.end111 ], !dbg !2566
  call void @llvm.dbg.value(metadata %struct.loop* %52, metadata !2471, metadata !DIExpression()), !dbg !2474
  %num81 = getelementptr inbounds %struct.loop, %struct.loop* %52, i64 0, i32 0, !dbg !2569
  %53 = load i32, i32* %num81, align 8, !dbg !2569
  %cmp82 = icmp slt i32 %53, %3, !dbg !2570
  br i1 %cmp82, label %if.end94, label %if.then83, !dbg !2571

if.then83:                                        ; preds = %while.cond79
  %54 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %to_visit2, align 8, !dbg !2572
  %tobool85 = icmp eq %struct.VEC_int_heap* %54, null, !dbg !2572
  br i1 %tobool85, label %cond.end90, label %cond.true86, !dbg !2572

cond.true86:                                      ; preds = %if.then83
  %base88 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %54, i64 0, i32 0, !dbg !2572
  br label %cond.end90, !dbg !2572

cond.end90:                                       ; preds = %if.then83, %cond.true86
  %cond91 = phi %struct.VEC_int_base* [ %base88, %cond.true86 ], [ null, %if.then83 ], !dbg !2572
  call void @llvm.dbg.value(metadata %struct.loop* %51, metadata !2471, metadata !DIExpression()), !dbg !2474
  %num92 = getelementptr inbounds %struct.loop, %struct.loop* %51, i64 0, i32 0, !dbg !2572
  %55 = load i32, i32* %num92, align 8, !dbg !2572
  %call93 = tail call fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %cond91, i32 %55) #8, !dbg !2572
  br label %if.end94, !dbg !2572

if.end94:                                         ; preds = %while.cond79, %cond.end90
  call void @llvm.dbg.value(metadata %struct.loop* %50, metadata !2471, metadata !DIExpression()), !dbg !2474
  %inner95 = getelementptr inbounds %struct.loop, %struct.loop* %50, i64 0, i32 8, !dbg !2573
  %56 = load %struct.loop*, %struct.loop** %inner95, align 8, !dbg !2573
  %cmp96 = icmp eq %struct.loop* %56, null, !dbg !2575
  br i1 %cmp96, label %while.cond100.preheader, label %if.then97, !dbg !2576

while.cond100.preheader:                          ; preds = %if.end94
  br label %while.cond100, !dbg !2577

if.then97:                                        ; preds = %if.end94
  call void @llvm.dbg.value(metadata %struct.loop* %49, metadata !2471, metadata !DIExpression()), !dbg !2474
  %inner98 = getelementptr inbounds %struct.loop, %struct.loop* %49, i64 0, i32 8, !dbg !2579
  %57 = bitcast %struct.loop** %inner98 to i64*, !dbg !2579
  %58 = load i64, i64* %57, align 8, !dbg !2579
  store i64 %58, i64* %15, align 8, !dbg !2580
  %59 = inttoptr i64 %58 to %struct.loop*, !dbg !2581
  br label %if.end111, !dbg !2581

while.cond100:                                    ; preds = %while.cond100.preheader, %while.body104
  %60 = phi %struct.loop* [ %45, %while.cond100.preheader ], [ %call105, %while.body104 ]
  %61 = phi %struct.loop* [ %46, %while.cond100.preheader ], [ %call105, %while.body104 ]
  %62 = phi %struct.loop* [ %47, %while.cond100.preheader ], [ %call105, %while.body104 ]
  %63 = phi %struct.loop* [ %48, %while.cond100.preheader ], [ %call105, %while.body104 ], !dbg !2582
  call void @llvm.dbg.value(metadata %struct.loop* %63, metadata !2471, metadata !DIExpression()), !dbg !2474
  %cmp101 = icmp eq %struct.loop* %63, null, !dbg !2583
  br i1 %cmp101, label %land.end, label %land.rhs, !dbg !2584

land.rhs:                                         ; preds = %while.cond100
  call void @llvm.dbg.value(metadata %struct.loop* %62, metadata !2471, metadata !DIExpression()), !dbg !2474
  %next102 = getelementptr inbounds %struct.loop, %struct.loop* %62, i64 0, i32 9, !dbg !2585
  %64 = load %struct.loop*, %struct.loop** %next102, align 8, !dbg !2585
  %cmp103 = icmp eq %struct.loop* %64, null, !dbg !2586
  br label %land.end

land.end:                                         ; preds = %while.cond100, %land.rhs
  %65 = phi i1 [ false, %while.cond100 ], [ %cmp103, %land.rhs ], !dbg !2587
  call void @llvm.dbg.value(metadata %struct.loop* %61, metadata !2471, metadata !DIExpression()), !dbg !2474
  br i1 %65, label %while.body104, label %while.end106, !dbg !2577

while.body104:                                    ; preds = %land.end
  %call105 = tail call fastcc %struct.loop* @loop_outer(%struct.loop* %61) #8, !dbg !2588
  call void @llvm.dbg.value(metadata %struct.loop* %call105, metadata !2471, metadata !DIExpression()), !dbg !2474
  store %struct.loop* %call105, %struct.loop** %aloop, align 8, !dbg !2589
  br label %while.cond100, !dbg !2577, !llvm.loop !2590

while.end106:                                     ; preds = %land.end
  %.lcssa10 = phi %struct.loop* [ %60, %land.end ]
  %.lcssa = phi %struct.loop* [ %61, %land.end ]
  %cmp107 = icmp eq %struct.loop* %.lcssa, null, !dbg !2592
  br i1 %cmp107, label %if.end114.loopexit, label %if.end109, !dbg !2594

if.end109:                                        ; preds = %while.end106
  call void @llvm.dbg.value(metadata %struct.loop* %.lcssa10, metadata !2471, metadata !DIExpression()), !dbg !2474
  %next110 = getelementptr inbounds %struct.loop, %struct.loop* %.lcssa10, i64 0, i32 9, !dbg !2595
  %66 = bitcast %struct.loop** %next110 to i64*, !dbg !2595
  %67 = load i64, i64* %66, align 8, !dbg !2595
  store i64 %67, i64* %15, align 8, !dbg !2596
  %68 = inttoptr i64 %67 to %struct.loop*
  br label %if.end111

if.end111:                                        ; preds = %if.end109, %if.then97
  %69 = phi %struct.loop* [ %68, %if.end109 ], [ %59, %if.then97 ]
  %70 = phi %struct.loop* [ %68, %if.end109 ], [ %59, %if.then97 ]
  %71 = phi %struct.loop* [ %68, %if.end109 ], [ %59, %if.then97 ]
  %72 = phi %struct.loop* [ %68, %if.end109 ], [ %59, %if.then97 ]
  %73 = phi %struct.loop* [ %68, %if.end109 ], [ %59, %if.then97 ]
  %74 = phi %struct.loop* [ %68, %if.end109 ], [ %59, %if.then97 ]
  %75 = phi %struct.loop* [ %68, %if.end109 ], [ %59, %if.then97 ]
  %76 = phi %struct.loop* [ %68, %if.end109 ], [ %59, %if.then97 ]
  br label %while.cond79, !dbg !2522, !llvm.loop !2597

if.end114.loopexit:                               ; preds = %while.end106
  br label %if.end114, !dbg !2599

if.end114.loopexit1:                              ; preds = %if.else67
  br label %if.end114, !dbg !2599

if.end114.loopexit2:                              ; preds = %cond.end
  br label %if.end114, !dbg !2599

if.end114:                                        ; preds = %if.end114.loopexit2, %if.end114.loopexit1, %if.end114.loopexit
  call fastcc void @fel_next(%struct.loop_iterator* %li, %struct.loop** %loop) #8, !dbg !2599
  br label %cleanup, !dbg !2600

cleanup:                                          ; preds = %if.end114, %if.then
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2600
  ret void, !dbg !2600
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @canonicalize_loop_induction_variables(%struct.loop* %loop, i8 zeroext %create_iv, i32 %ul, i8 zeroext %try_eval) unnamed_addr #5 !dbg !2601 {
entry:
  %exit = alloca %struct.edge_def*, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2605, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i8 %create_iv, metadata !2606, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i32 %ul, metadata !2607, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i8 %try_eval, metadata !2608, metadata !DIExpression()), !dbg !2611
  %0 = bitcast %struct.edge_def** %exit to i8*, !dbg !2612
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2612
  call void @llvm.dbg.value(metadata %struct.edge_def* null, metadata !2609, metadata !DIExpression()), !dbg !2611
  store %struct.edge_def* null, %struct.edge_def** %exit, align 8, !dbg !2613
  %call = tail call %union.tree_node* @number_of_latch_executions(%struct.loop* %loop) #6, !dbg !2614
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2610, metadata !DIExpression()), !dbg !2611
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2615
  %bf.load = load i64, i64* %1, align 8, !dbg !2615
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2617
  %cmp = icmp eq i64 %bf.cast1, 23, !dbg !2617
  %call1 = tail call %struct.edge_def* @single_exit(%struct.loop* %loop) #6, !dbg !2618
  br i1 %cmp, label %if.then, label %if.else, !dbg !2619

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.edge_def* %call1, metadata !2609, metadata !DIExpression()), !dbg !2611
  store %struct.edge_def* %call1, %struct.edge_def** %exit, align 8, !dbg !2620
  call void @llvm.dbg.value(metadata %struct.edge_def* %call1, metadata !2609, metadata !DIExpression()), !dbg !2611
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call1, i64 0, i32 0, !dbg !2622
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2622
  %call2 = tail call zeroext i8 @just_once_each_iteration_p(%struct.loop* %loop, %struct.basic_block_def* %2) #6, !dbg !2624
  %tobool = icmp eq i8 %call2, 0, !dbg !2624
  br i1 %tobool, label %cleanup, label %if.end34, !dbg !2625

if.else:                                          ; preds = %entry
  %tobool5 = icmp eq %struct.edge_def* %call1, null, !dbg !2626
  br i1 %tobool5, label %if.then6, label %if.end8, !dbg !2629

if.then6:                                         ; preds = %if.else
  call void @llvm.dbg.value(metadata %struct.edge_def** %exit, metadata !2609, metadata !DIExpression(DW_OP_deref)), !dbg !2611
  %call7 = call %union.tree_node* @find_loop_niter(%struct.loop* %loop, %struct.edge_def** nonnull %exit) #6, !dbg !2630
  call void @llvm.dbg.value(metadata %union.tree_node* %call7, metadata !2610, metadata !DIExpression()), !dbg !2611
  br label %if.end8, !dbg !2631

if.end8:                                          ; preds = %if.else, %if.then6
  %niter.0 = phi %union.tree_node* [ %call, %if.else ], [ %call7, %if.then6 ], !dbg !2611
  call void @llvm.dbg.value(metadata %union.tree_node* %niter.0, metadata !2610, metadata !DIExpression()), !dbg !2611
  %tobool9 = icmp eq i8 %try_eval, 0, !dbg !2632
  br i1 %tobool9, label %if.end21, label %land.lhs.true, !dbg !2634

land.lhs.true:                                    ; preds = %if.end8
  %call10 = call zeroext i8 @chrec_contains_undetermined(%union.tree_node* %niter.0) #6, !dbg !2635
  %tobool12 = icmp eq i8 %call10, 0, !dbg !2635
  br i1 %tobool12, label %lor.lhs.false, label %if.then19, !dbg !2636

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %niter.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2637
  %bf.load14 = load i64, i64* %3, align 8, !dbg !2637
  %bf.cast163 = and i64 %bf.load14, 65535, !dbg !2638
  %cmp17 = icmp eq i64 %bf.cast163, 23, !dbg !2638
  br i1 %cmp17, label %if.end21, label %if.then19, !dbg !2639

if.then19:                                        ; preds = %lor.lhs.false, %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.edge_def** %exit, metadata !2609, metadata !DIExpression(DW_OP_deref)), !dbg !2611
  %call20 = call %union.tree_node* @find_loop_niter_by_eval(%struct.loop* %loop, %struct.edge_def** nonnull %exit) #6, !dbg !2640
  call void @llvm.dbg.value(metadata %union.tree_node* %call20, metadata !2610, metadata !DIExpression()), !dbg !2611
  br label %if.end21, !dbg !2641

if.end21:                                         ; preds = %lor.lhs.false, %if.end8, %if.then19
  %niter.1 = phi %union.tree_node* [ %call20, %if.then19 ], [ %niter.0, %lor.lhs.false ], [ %niter.0, %if.end8 ], !dbg !2611
  call void @llvm.dbg.value(metadata %union.tree_node* %niter.1, metadata !2610, metadata !DIExpression()), !dbg !2611
  %call22 = call zeroext i8 @chrec_contains_undetermined(%union.tree_node* %niter.1) #6, !dbg !2642
  %tobool24 = icmp eq i8 %call22, 0, !dbg !2642
  br i1 %tobool24, label %lor.lhs.false25, label %cleanup, !dbg !2644

lor.lhs.false25:                                  ; preds = %if.end21
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %niter.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2645
  %bf.load27 = load i64, i64* %4, align 8, !dbg !2645
  %bf.cast292 = and i64 %bf.load27, 65535, !dbg !2646
  %cmp30 = icmp eq i64 %bf.cast292, 23, !dbg !2646
  br i1 %cmp30, label %if.end34, label %cleanup, !dbg !2647

if.end34:                                         ; preds = %if.then, %lor.lhs.false25
  %niter.2 = phi %union.tree_node* [ %call, %if.then ], [ %niter.1, %lor.lhs.false25 ], !dbg !2611
  call void @llvm.dbg.value(metadata %union.tree_node* %niter.2, metadata !2610, metadata !DIExpression()), !dbg !2611
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2648
  %tobool35 = icmp eq %struct._IO_FILE* %5, null, !dbg !2648
  br i1 %tobool35, label %if.end41, label %land.lhs.true36, !dbg !2650

land.lhs.true36:                                  ; preds = %if.end34
  %6 = load i32, i32* @dump_flags, align 4, !dbg !2651
  %and = and i32 %6, 8, !dbg !2652
  %tobool37 = icmp eq i32 %and, 0, !dbg !2652
  br i1 %tobool37, label %if.end41, label %if.then38, !dbg !2653

if.then38:                                        ; preds = %land.lhs.true36
  %num = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 0, !dbg !2654
  %7 = load i32, i32* %num, align 8, !dbg !2654
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %7) #6, !dbg !2656
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2657
  call void @print_generic_expr(%struct._IO_FILE* %8, %union.tree_node* %niter.2, i32 2) #6, !dbg !2658
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2659
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2660
  br label %if.end41, !dbg !2661

if.end41:                                         ; preds = %land.lhs.true36, %if.end34, %if.then38
  %10 = load %struct.edge_def*, %struct.edge_def** %exit, align 8, !dbg !2662
  call void @llvm.dbg.value(metadata %struct.edge_def* %10, metadata !2609, metadata !DIExpression()), !dbg !2611
  %call42 = call fastcc zeroext i8 @try_unroll_loop_completely(%struct.loop* %loop, %struct.edge_def* %10, %union.tree_node* %niter.2, i32 %ul) #8, !dbg !2664
  %tobool43 = icmp eq i8 %call42, 0, !dbg !2664
  br i1 %tobool43, label %if.end45, label %cleanup, !dbg !2665

if.end45:                                         ; preds = %if.end41
  %tobool46 = icmp eq i8 %create_iv, 0, !dbg !2666
  br i1 %tobool46, label %cleanup, label %if.then47, !dbg !2668

if.then47:                                        ; preds = %if.end45
  %11 = load %struct.edge_def*, %struct.edge_def** %exit, align 8, !dbg !2669
  call void @llvm.dbg.value(metadata %struct.edge_def* %11, metadata !2609, metadata !DIExpression()), !dbg !2611
  call fastcc void @create_canonical_iv(%struct.loop* %loop, %struct.edge_def* %11, %union.tree_node* %niter.2) #8, !dbg !2670
  br label %cleanup, !dbg !2670

cleanup:                                          ; preds = %if.then, %if.end45, %if.end41, %lor.lhs.false25, %if.end21, %if.then47
  %retval.0 = phi i8 [ 0, %if.then ], [ 0, %lor.lhs.false25 ], [ 0, %if.end21 ], [ 1, %if.end41 ], [ 0, %if.then47 ], [ 0, %if.end45 ], !dbg !2611
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2671
  ret i8 %retval.0, !dbg !2671
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @fel_next(%struct.loop_iterator* %li, %struct.loop** %loop) unnamed_addr #0 !dbg !2672 {
entry:
  %anum = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2676, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2677, metadata !DIExpression()), !dbg !2679
  %0 = bitcast i32* %anum to i8*, !dbg !2680
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7, !dbg !2680
  %to_visit = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !2679
  %idx = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 1, !dbg !2679
  br label %while.cond, !dbg !2681

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %to_visit, align 8, !dbg !2682
  %tobool = icmp eq %struct.VEC_int_heap* %1, null, !dbg !2682
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2682

cond.true:                                        ; preds = %while.cond
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %1, i64 0, i32 0, !dbg !2682
  br label %cond.end, !dbg !2682

cond.end:                                         ; preds = %while.cond, %cond.true
  %cond = phi %struct.VEC_int_base* [ %base, %cond.true ], [ null, %while.cond ], !dbg !2682
  %2 = load i32, i32* %idx, align 8, !dbg !2682
  call void @llvm.dbg.value(metadata i32* %anum, metadata !2678, metadata !DIExpression(DW_OP_deref)), !dbg !2679
  %call = call fastcc i32 @VEC_int_base_iterate(%struct.VEC_int_base* %cond, i32 %2, i32* nonnull %anum) #8, !dbg !2682
  %tobool2 = icmp eq i32 %call, 0, !dbg !2681
  br i1 %tobool2, label %while.end, label %while.body, !dbg !2681

while.body:                                       ; preds = %cond.end
  %3 = load i32, i32* %idx, align 8, !dbg !2683
  %inc = add i32 %3, 1, !dbg !2683
  store i32 %inc, i32* %idx, align 8, !dbg !2683
  %4 = load i32, i32* %anum, align 4, !dbg !2685
  call void @llvm.dbg.value(metadata i32 %4, metadata !2678, metadata !DIExpression()), !dbg !2679
  %call4 = call fastcc %struct.loop* @get_loop(i32 %4) #8, !dbg !2686
  store %struct.loop* %call4, %struct.loop** %loop, align 8, !dbg !2687
  %tobool5 = icmp eq %struct.loop* %call4, null, !dbg !2688
  br i1 %tobool5, label %while.cond, label %cleanup.loopexit, !dbg !2690, !llvm.loop !2691

while.end:                                        ; preds = %cond.end
  call fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** %to_visit) #8, !dbg !2693
  store %struct.loop* null, %struct.loop** %loop, align 8, !dbg !2694
  br label %cleanup, !dbg !2695

cleanup.loopexit:                                 ; preds = %while.body
  br label %cleanup, !dbg !2695

cleanup:                                          ; preds = %cleanup.loopexit, %while.end
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7, !dbg !2695
  ret void, !dbg !2695
}

declare dso_local void @scev_reset() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @tree_unroll_loops_completely(i8 zeroext %may_increase_size, i8 zeroext %unroll_outer) local_unnamed_addr #5 !dbg !2696 {
entry:
  %li = alloca %struct.loop_iterator, align 8
  %loop = alloca %struct.loop*, align 8
  call void @llvm.dbg.value(metadata i8 %may_increase_size, metadata !2700, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i8 %unroll_outer, metadata !2701, metadata !DIExpression()), !dbg !2707
  %0 = bitcast %struct.loop_iterator* %li to i8*, !dbg !2708
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7, !dbg !2708
  %1 = bitcast %struct.loop** %loop to i8*, !dbg !2709
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !2709
  call void @llvm.dbg.value(metadata i32 0, metadata !2706, metadata !DIExpression()), !dbg !2707
  %tobool1 = icmp eq i8 %may_increase_size, 0, !dbg !2710
  %tobool6 = icmp eq i8 %unroll_outer, 0, !dbg !2710
  br label %do.body, !dbg !2716

do.body:                                          ; preds = %land.end, %entry
  %iteration.0 = phi i32 [ 0, %entry ], [ %iteration.1, %land.end ], !dbg !2707
  call void @llvm.dbg.value(metadata i32 %iteration.0, metadata !2706, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i8 0, metadata !2704, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2702, metadata !DIExpression(DW_OP_deref)), !dbg !2707
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2703, metadata !DIExpression(DW_OP_deref)), !dbg !2707
  call fastcc void @fel_init(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop, i32 4) #8, !dbg !2717
  br i1 %tobool1, label %do.body.split.us, label %do.body.do.body.split_crit_edge, !dbg !2717

do.body.do.body.split_crit_edge:                  ; preds = %do.body
  br i1 %tobool6, label %do.body.split.split.us, label %do.body.split.do.body.split.split_crit_edge, !dbg !2717

do.body.split.us:                                 ; preds = %do.body
  br label %for.cond.us, !dbg !2717

for.cond.us:                                      ; preds = %for.body.us, %do.body.split.us
  %changed.0.us = phi i8 [ 0, %do.body.split.us ], [ %or1.us, %for.body.us ], !dbg !2718
  call void @llvm.dbg.value(metadata i8 %changed.0.us, metadata !2704, metadata !DIExpression()), !dbg !2707
  %2 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2719
  call void @llvm.dbg.value(metadata %struct.loop* %2, metadata !2703, metadata !DIExpression()), !dbg !2707
  %tobool.us = icmp eq %struct.loop* %2, null, !dbg !2717
  br i1 %tobool.us, label %for.end.us-lcssa.us, label %for.body.us, !dbg !2717

for.body.us:                                      ; preds = %for.cond.us
  call void @llvm.dbg.value(metadata i32 1, metadata !2705, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i32 1, metadata !2705, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata %struct.loop* %2, metadata !2703, metadata !DIExpression()), !dbg !2707
  %3 = load i32, i32* @flag_tree_loop_ivcanon, align 4, !dbg !2720
  %tobool10.us = icmp eq i32 %3, 0, !dbg !2721
  %conv11.us = zext i1 %tobool10.us to i8, !dbg !2721
  %call12.us = call fastcc zeroext i8 @canonicalize_loop_induction_variables(%struct.loop* nonnull %2, i8 zeroext 0, i32 1, i8 zeroext %conv11.us) #8, !dbg !2722
  %or1.us = or i8 %changed.0.us, %call12.us, !dbg !2723
  call void @llvm.dbg.value(metadata i8 %or1.us, metadata !2704, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2702, metadata !DIExpression(DW_OP_deref)), !dbg !2707
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2703, metadata !DIExpression(DW_OP_deref)), !dbg !2707
  call fastcc void @fel_next(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop) #8, !dbg !2719
  br label %for.cond.us, !dbg !2719, !llvm.loop !2724

for.end.us-lcssa.us:                              ; preds = %for.cond.us
  %changed.0.us.lcssa = phi i8 [ %changed.0.us, %for.cond.us ], !dbg !2718
  call void @llvm.dbg.value(metadata i8 %changed.0.us.lcssa, metadata !2704, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i8 %changed.0.us.lcssa, metadata !2704, metadata !DIExpression()), !dbg !2707
  br label %for.end, !dbg !2726

do.body.split.do.body.split.split_crit_edge:      ; preds = %do.body.do.body.split_crit_edge
  br label %for.cond, !dbg !2717

do.body.split.split.us:                           ; preds = %do.body.do.body.split_crit_edge
  br label %for.cond.us2, !dbg !2717

for.cond.us2:                                     ; preds = %if.end.us15, %do.body.split.split.us
  %changed.0.us3 = phi i8 [ 0, %do.body.split.split.us ], [ %or1.us20, %if.end.us15 ], !dbg !2718
  call void @llvm.dbg.value(metadata i8 %changed.0.us3, metadata !2704, metadata !DIExpression()), !dbg !2707
  %4 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2719
  call void @llvm.dbg.value(metadata %struct.loop* %4, metadata !2703, metadata !DIExpression()), !dbg !2707
  %tobool.us4 = icmp eq %struct.loop* %4, null, !dbg !2717
  br i1 %tobool.us4, label %for.end.us-lcssa.us-lcssa.us, label %for.body.us5, !dbg !2717

for.body.us5:                                     ; preds = %for.cond.us2
  call void @llvm.dbg.value(metadata %struct.loop* %4, metadata !2703, metadata !DIExpression()), !dbg !2707
  %call.us7 = call zeroext i8 @optimize_loop_for_speed_p(%struct.loop* nonnull %4) #6, !dbg !2728
  %tobool3.us8 = icmp eq i8 %call.us7, 0, !dbg !2728
  br i1 %tobool3.us8, label %if.else.us14, label %land.lhs.true4.us9, !dbg !2729

land.lhs.true4.us9:                               ; preds = %for.body.us5
  %5 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2730
  call void @llvm.dbg.value(metadata %struct.loop* %5, metadata !2703, metadata !DIExpression()), !dbg !2707
  %call7.us11 = call fastcc %struct.loop* @loop_outer(%struct.loop* %5) #8, !dbg !2731
  %call8.us12 = call fastcc %struct.loop* @loop_outer(%struct.loop* %call7.us11) #8, !dbg !2732
  %tobool9.us13 = icmp eq %struct.loop* %call8.us12, null, !dbg !2732
  br i1 %tobool9.us13, label %if.else.us14, label %if.end.us15, !dbg !2733

if.else.us14:                                     ; preds = %land.lhs.true4.us9, %for.body.us5
  call void @llvm.dbg.value(metadata i32 1, metadata !2705, metadata !DIExpression()), !dbg !2707
  br label %if.end.us15

if.end.us15:                                      ; preds = %if.else.us14, %land.lhs.true4.us9
  %ul.0.us16 = phi i32 [ 1, %if.else.us14 ], [ 2, %land.lhs.true4.us9 ], !dbg !2710
  call void @llvm.dbg.value(metadata i32 %ul.0.us16, metadata !2705, metadata !DIExpression()), !dbg !2707
  %6 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2734
  call void @llvm.dbg.value(metadata %struct.loop* %6, metadata !2703, metadata !DIExpression()), !dbg !2707
  %7 = load i32, i32* @flag_tree_loop_ivcanon, align 4, !dbg !2720
  %tobool10.us17 = icmp eq i32 %7, 0, !dbg !2721
  %conv11.us18 = zext i1 %tobool10.us17 to i8, !dbg !2721
  %call12.us19 = call fastcc zeroext i8 @canonicalize_loop_induction_variables(%struct.loop* %6, i8 zeroext 0, i32 %ul.0.us16, i8 zeroext %conv11.us18) #8, !dbg !2722
  %or1.us20 = or i8 %changed.0.us3, %call12.us19, !dbg !2723
  call void @llvm.dbg.value(metadata i8 %or1.us20, metadata !2704, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2702, metadata !DIExpression(DW_OP_deref)), !dbg !2707
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2703, metadata !DIExpression(DW_OP_deref)), !dbg !2707
  call fastcc void @fel_next(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop) #8, !dbg !2719
  br label %for.cond.us2, !dbg !2719, !llvm.loop !2724

for.end.us-lcssa.us-lcssa.us:                     ; preds = %for.cond.us2
  %changed.0.us3.lcssa = phi i8 [ %changed.0.us3, %for.cond.us2 ], !dbg !2718
  call void @llvm.dbg.value(metadata i8 %changed.0.us3.lcssa, metadata !2704, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i8 %changed.0.us3.lcssa, metadata !2704, metadata !DIExpression()), !dbg !2707
  br label %for.end.us-lcssa, !dbg !2726

for.cond:                                         ; preds = %if.end, %do.body.split.do.body.split.split_crit_edge
  %changed.0 = phi i8 [ 0, %do.body.split.do.body.split.split_crit_edge ], [ %or1, %if.end ], !dbg !2718
  call void @llvm.dbg.value(metadata i8 %changed.0, metadata !2704, metadata !DIExpression()), !dbg !2707
  %8 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2719
  call void @llvm.dbg.value(metadata %struct.loop* %8, metadata !2703, metadata !DIExpression()), !dbg !2707
  %tobool = icmp eq %struct.loop* %8, null, !dbg !2717
  br i1 %tobool, label %for.end.us-lcssa.us-lcssa, label %for.body, !dbg !2717

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.loop* %8, metadata !2703, metadata !DIExpression()), !dbg !2707
  %call = call zeroext i8 @optimize_loop_for_speed_p(%struct.loop* nonnull %8) #6, !dbg !2728
  %tobool3 = icmp eq i8 %call, 0, !dbg !2728
  br i1 %tobool3, label %if.else, label %land.lhs.true4, !dbg !2729

land.lhs.true4:                                   ; preds = %for.body
  br label %if.end, !dbg !2735

if.else:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 1, metadata !2705, metadata !DIExpression()), !dbg !2707
  br label %if.end

if.end:                                           ; preds = %land.lhs.true4, %if.else
  %ul.0 = phi i32 [ 1, %if.else ], [ 2, %land.lhs.true4 ], !dbg !2710
  call void @llvm.dbg.value(metadata i32 %ul.0, metadata !2705, metadata !DIExpression()), !dbg !2707
  %9 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2734
  call void @llvm.dbg.value(metadata %struct.loop* %9, metadata !2703, metadata !DIExpression()), !dbg !2707
  %10 = load i32, i32* @flag_tree_loop_ivcanon, align 4, !dbg !2720
  %tobool10 = icmp eq i32 %10, 0, !dbg !2721
  %conv11 = zext i1 %tobool10 to i8, !dbg !2721
  %call12 = call fastcc zeroext i8 @canonicalize_loop_induction_variables(%struct.loop* %9, i8 zeroext 0, i32 %ul.0, i8 zeroext %conv11) #8, !dbg !2722
  %or1 = or i8 %changed.0, %call12, !dbg !2723
  call void @llvm.dbg.value(metadata i8 %or1, metadata !2704, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2702, metadata !DIExpression(DW_OP_deref)), !dbg !2707
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2703, metadata !DIExpression(DW_OP_deref)), !dbg !2707
  call fastcc void @fel_next(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop) #8, !dbg !2719
  br label %for.cond, !dbg !2719, !llvm.loop !2724

for.end.us-lcssa.us-lcssa:                        ; preds = %for.cond
  %changed.0.lcssa22 = phi i8 [ %changed.0, %for.cond ], !dbg !2718
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa22, metadata !2704, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa22, metadata !2704, metadata !DIExpression()), !dbg !2707
  br label %for.end.us-lcssa, !dbg !2726

for.end.us-lcssa:                                 ; preds = %for.end.us-lcssa.us-lcssa.us, %for.end.us-lcssa.us-lcssa
  %changed.0.lcssa.ph = phi i8 [ %changed.0.lcssa22, %for.end.us-lcssa.us-lcssa ], [ %changed.0.us3.lcssa, %for.end.us-lcssa.us-lcssa.us ]
  br label %for.end, !dbg !2726

for.end:                                          ; preds = %for.end.us-lcssa.us, %for.end.us-lcssa
  %changed.0.lcssa = phi i8 [ %changed.0.lcssa.ph, %for.end.us-lcssa ], [ %changed.0.us.lcssa, %for.end.us-lcssa.us ], !dbg !2718
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !2704, metadata !DIExpression()), !dbg !2707
  %tobool16 = icmp eq i8 %changed.0.lcssa, 0, !dbg !2726
  br i1 %tobool16, label %do.cond, label %if.then17, !dbg !2736

if.then17:                                        ; preds = %for.end
  %call18 = call zeroext i8 @cleanup_tree_cfg() #6, !dbg !2737
  %tobool19 = icmp eq i8 %call18, 0, !dbg !2737
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !2740

if.then20:                                        ; preds = %if.then17
  call void @update_ssa(i32 16384) #6, !dbg !2741
  br label %if.end21, !dbg !2741

if.end21:                                         ; preds = %if.then17, %if.then20
  call void @scev_reset() #6, !dbg !2742
  br label %do.cond, !dbg !2743

do.cond:                                          ; preds = %for.end, %if.end21
  br i1 %tobool16, label %land.end, label %land.rhs, !dbg !2744

land.rhs:                                         ; preds = %do.cond
  %inc = add nsw i32 %iteration.0, 1, !dbg !2745
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2706, metadata !DIExpression()), !dbg !2707
  %11 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !2746
  %value = getelementptr inbounds %struct.param_info, %struct.param_info* %11, i64 34, i32 1, !dbg !2746
  %12 = load i32, i32* %value, align 8, !dbg !2746
  %cmp = icmp slt i32 %iteration.0, %12, !dbg !2747
  br label %land.end

land.end:                                         ; preds = %do.cond, %land.rhs
  %iteration.1 = phi i32 [ %inc, %land.rhs ], [ %iteration.0, %do.cond ], !dbg !2707
  %13 = phi i1 [ %cmp, %land.rhs ], [ false, %do.cond ], !dbg !2707
  call void @llvm.dbg.value(metadata i32 %iteration.1, metadata !2706, metadata !DIExpression()), !dbg !2707
  br i1 %13, label %do.body, label %do.end, !dbg !2748, !llvm.loop !2749

do.end:                                           ; preds = %land.end
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !2751
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7, !dbg !2751
  ret i32 0, !dbg !2752
}

declare dso_local zeroext i8 @optimize_loop_for_speed_p(%struct.loop*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @loop_outer(%struct.loop* %loop) unnamed_addr #0 !dbg !2753 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2759, metadata !DIExpression()), !dbg !2761
  %superloops = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 7, !dbg !2762
  %0 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !2762
  %tobool = icmp eq %struct.VEC_loop_p_gc* %0, null, !dbg !2762
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2762

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %0, i64 0, i32 0, !dbg !2762
  br label %cond.end, !dbg !2762

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2762
  %call = tail call fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %cond) #8, !dbg !2762
  call void @llvm.dbg.value(metadata i32 %call, metadata !2760, metadata !DIExpression()), !dbg !2761
  %cmp = icmp eq i32 %call, 0, !dbg !2763
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2765

if.end:                                           ; preds = %cond.end
  %1 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !2766
  %tobool3 = icmp eq %struct.VEC_loop_p_gc* %1, null, !dbg !2766
  br i1 %tobool3, label %cond.end8, label %cond.true4, !dbg !2766

cond.true4:                                       ; preds = %if.end
  %base6 = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %1, i64 0, i32 0, !dbg !2766
  br label %cond.end8, !dbg !2766

cond.end8:                                        ; preds = %if.end, %cond.true4
  %cond9 = phi %struct.VEC_loop_p_base* [ %base6, %cond.true4 ], [ null, %if.end ], !dbg !2766
  %sub = add i32 %call, -1, !dbg !2766
  %call10 = tail call fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %cond9, i32 %sub) #8, !dbg !2766
  br label %cleanup, !dbg !2767

cleanup:                                          ; preds = %cond.end, %cond.end8
  %retval.0 = phi %struct.loop* [ %call10, %cond.end8 ], [ null, %cond.end ], !dbg !2761
  ret %struct.loop* %retval.0, !dbg !2768
}

declare dso_local zeroext i8 @cleanup_tree_cfg() local_unnamed_addr #2

declare dso_local void @update_ssa(i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2769 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2776, metadata !DIExpression()), !dbg !2777
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !2778
  %0 = load i32, i32* %flags, align 8, !dbg !2778
  %and = and i32 %0, 512, !dbg !2779
  %tobool = icmp eq i32 %and, 0, !dbg !2779
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !2780

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !2781
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !2781
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !2782
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !2783

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !2784
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !2784
  br label %cond.end, !dbg !2783

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !2783
  ret %struct.gimple_seq_d* %cond, !dbg !2785
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !2786 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !2793, metadata !DIExpression()), !dbg !2794
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !2795
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2795

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !2796
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !2796
  br label %cond.end, !dbg !2795

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !2795
  ret %struct.gimple_seq_node_d* %cond, !dbg !2797
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !2798 {
entry:
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !2802, metadata !DIExpression()), !dbg !2803
  %call = tail call i8* @vec_heap_o_reserve_exact(i8* null, i32 %alloc_, i64 8, i64 4) #6, !dbg !2804
  %0 = bitcast i8* %call to %struct.VEC_int_heap*, !dbg !2804
  ret %struct.VEC_int_heap* %0, !dbg !2804
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #0 !dbg !2805 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2806
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !2806
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2806
  %tobool = icmp eq %struct.loops* %1, null, !dbg !2806
  br i1 %tobool, label %return, label %if.end, !dbg !2808

if.end:                                           ; preds = %entry
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 1, !dbg !2809
  %2 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !2809
  %tobool3 = icmp eq %struct.VEC_loop_p_gc* %2, null, !dbg !2809
  br i1 %tobool3, label %cond.end, label %cond.true, !dbg !2809

cond.true:                                        ; preds = %if.end
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %2, i64 0, i32 0, !dbg !2809
  br label %cond.end, !dbg !2809

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %if.end ], !dbg !2809
  %call = tail call fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %cond) #8, !dbg !2809
  br label %return, !dbg !2810

return:                                           ; preds = %entry, %cond.end
  %retval.0 = phi i32 [ %call, %cond.end ], [ 0, %entry ], !dbg !2811
  ret i32 %retval.0, !dbg !2812
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_loop_p_base_iterate(%struct.VEC_loop_p_base* %vec_, i32 %ix_, %struct.loop** %ptr) unnamed_addr #0 !dbg !2813 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !2819, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2820, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata %struct.loop** %ptr, metadata !2821, metadata !DIExpression()), !dbg !2822
  %tobool = icmp eq %struct.VEC_loop_p_base* %vec_, null, !dbg !2823
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !2823

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 0, !dbg !2823
  %0 = load i32, i32* %num, align 8, !dbg !2823
  %cmp = icmp ugt i32 %0, %ix_, !dbg !2823
  br i1 %cmp, label %if.then, label %if.else, !dbg !2825

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !2826
  %arrayidx = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2826
  %1 = load %struct.loop*, %struct.loop** %arrayidx, align 8, !dbg !2826
  br label %return, !dbg !2826

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !2828

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.loop* [ null, %if.else ], [ %1, %if.then ], !dbg !2830
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !2830
  store %struct.loop* %storemerge, %struct.loop** %ptr, align 8, !dbg !2830
  ret i32 %retval.0, !dbg !2825
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %vec_, i32 %obj_) unnamed_addr #0 !dbg !2831 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !2837, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i32 %obj_, metadata !2838, metadata !DIExpression()), !dbg !2840
  %num1 = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !2841
  %0 = load i32, i32* %num1, align 4, !dbg !2841
  %inc = add i32 %0, 1, !dbg !2841
  store i32 %inc, i32* %num1, align 4, !dbg !2841
  %idxprom = zext i32 %0 to i64, !dbg !2841
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2841
  call void @llvm.dbg.value(metadata i32* %arrayidx, metadata !2839, metadata !DIExpression()), !dbg !2840
  store i32 %obj_, i32* %arrayidx, align 4, !dbg !2841
  ret i32* %arrayidx, !dbg !2841
}

declare dso_local i8* @vec_heap_o_reserve_exact(i8*, i32, i64, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %vec_) unnamed_addr #0 !dbg !2842 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !2846, metadata !DIExpression()), !dbg !2847
  %tobool = icmp eq %struct.VEC_loop_p_base* %vec_, null, !dbg !2848
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2848

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 0, !dbg !2848
  %0 = load i32, i32* %num, align 8, !dbg !2848
  br label %cond.end, !dbg !2848

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2848
  ret i32 %cond, !dbg !2848
}

declare dso_local %union.tree_node* @number_of_latch_executions(%struct.loop*) local_unnamed_addr #2

declare dso_local %struct.edge_def* @single_exit(%struct.loop*) local_unnamed_addr #2

declare dso_local zeroext i8 @just_once_each_iteration_p(%struct.loop*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local %union.tree_node* @find_loop_niter(%struct.loop*, %struct.edge_def**) local_unnamed_addr #2

declare dso_local zeroext i8 @chrec_contains_undetermined(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @find_loop_niter_by_eval(%struct.loop*, %struct.edge_def**) local_unnamed_addr #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

declare dso_local void @print_generic_expr(%struct._IO_FILE*, %union.tree_node*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @try_unroll_loop_completely(%struct.loop* %loop, %struct.edge_def* %exit, %union.tree_node* %niter, i32 %ul) unnamed_addr #5 !dbg !2849 {
entry:
  %size = alloca %struct.loop_size, align 4
  %e = alloca %struct.edge_def*, align 8
  %to_remove = alloca %struct.VEC_edge_heap*, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2853, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata %struct.edge_def* %exit, metadata !2854, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata %union.tree_node* %niter, metadata !2855, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i32 %ul, metadata !2856, metadata !DIExpression()), !dbg !2894
  %0 = bitcast %struct.loop_size* %size to i8*, !dbg !2895
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7, !dbg !2895
  %inner = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 8, !dbg !2896
  %1 = load %struct.loop*, %struct.loop** %inner, align 8, !dbg !2896
  %tobool = icmp eq %struct.loop* %1, null, !dbg !2898
  br i1 %tobool, label %if.end, label %cleanup94, !dbg !2899

if.end:                                           ; preds = %entry
  %call = tail call i32 @host_integerp(%union.tree_node* %niter, i32 1) #6, !dbg !2900
  %tobool1 = icmp eq i32 %call, 0, !dbg !2900
  br i1 %tobool1, label %cleanup94, label %if.end3, !dbg !2902

if.end3:                                          ; preds = %if.end
  %call4 = tail call i64 @tree_low_cst(%union.tree_node* %niter, i32 1) #6, !dbg !2903
  call void @llvm.dbg.value(metadata i64 %call4, metadata !2857, metadata !DIExpression()), !dbg !2894
  %2 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !2904
  %value = getelementptr inbounds %struct.param_info, %struct.param_info* %2, i64 32, i32 1, !dbg !2904
  %3 = load i32, i32* %value, align 8, !dbg !2904
  %conv = sext i32 %3 to i64, !dbg !2904
  call void @llvm.dbg.value(metadata i64 %conv, metadata !2859, metadata !DIExpression()), !dbg !2894
  %cmp = icmp ugt i64 %call4, %conv, !dbg !2905
  br i1 %cmp, label %cleanup94, label %if.end7, !dbg !2907

if.end7:                                          ; preds = %if.end3
  %cond1 = icmp eq i64 %call4, 0, !dbg !2908
  br i1 %cond1, label %if.end80, label %if.then9, !dbg !2908

if.then9:                                         ; preds = %if.end7
  %cmp10 = icmp eq i32 %ul, 0, !dbg !2909
  br i1 %cmp10, label %cleanup94, label %if.end13, !dbg !2913

if.end13:                                         ; preds = %if.then9
  call void @llvm.dbg.value(metadata %struct.loop_size* %size, metadata !2862, metadata !DIExpression(DW_OP_deref)), !dbg !2894
  call fastcc void @tree_estimate_loop_size(%struct.loop* %loop, %struct.edge_def* %exit, %struct.loop_size* nonnull %size) #8, !dbg !2914
  %overall = getelementptr inbounds %struct.loop_size, %struct.loop_size* %size, i64 0, i32 0, !dbg !2915
  %4 = load i32, i32* %overall, align 4, !dbg !2915
  %conv14 = sext i32 %4 to i64, !dbg !2916
  call void @llvm.dbg.value(metadata i64 %conv14, metadata !2858, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata %struct.loop_size* %size, metadata !2862, metadata !DIExpression(DW_OP_deref)), !dbg !2894
  %call15 = call fastcc i64 @estimated_unrolled_size(%struct.loop_size* nonnull %size, i64 %call4) #8, !dbg !2917
  call void @llvm.dbg.value(metadata i64 %call15, metadata !2860, metadata !DIExpression()), !dbg !2894
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2918
  %tobool16 = icmp eq %struct._IO_FILE* %5, null, !dbg !2918
  br i1 %tobool16, label %if.end23, label %land.lhs.true, !dbg !2920

land.lhs.true:                                    ; preds = %if.end13
  %6 = load i32, i32* @dump_flags, align 4, !dbg !2921
  %and = and i32 %6, 8, !dbg !2922
  %tobool17 = icmp eq i32 %and, 0, !dbg !2922
  br i1 %tobool17, label %if.end23, label %if.then18, !dbg !2923

if.then18:                                        ; preds = %land.lhs.true
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %4) #6, !dbg !2924
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2926
  %conv21 = trunc i64 %call15 to i32, !dbg !2927
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %conv21) #6, !dbg !2928
  br label %if.end23, !dbg !2929

if.end23:                                         ; preds = %land.lhs.true, %if.end13, %if.then18
  %cmp24 = icmp ugt i64 %call15, %conv14, !dbg !2930
  br i1 %cmp24, label %land.lhs.true26, label %if.end40, !dbg !2932

land.lhs.true26:                                  ; preds = %if.end23
  %8 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !2933
  %value28 = getelementptr inbounds %struct.param_info, %struct.param_info* %8, i64 31, i32 1, !dbg !2933
  %9 = load i32, i32* %value28, align 8, !dbg !2933
  %conv29 = zext i32 %9 to i64, !dbg !2934
  %cmp30 = icmp ugt i64 %call15, %conv29, !dbg !2935
  br i1 %cmp30, label %if.then32, label %if.end40, !dbg !2936

if.then32:                                        ; preds = %land.lhs.true26
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2937
  %tobool33 = icmp eq %struct._IO_FILE* %10, null, !dbg !2937
  br i1 %tobool33, label %cleanup94, label %land.lhs.true34, !dbg !2940

land.lhs.true34:                                  ; preds = %if.then32
  %11 = load i32, i32* @dump_flags, align 4, !dbg !2941
  %and35 = and i32 %11, 8, !dbg !2942
  %tobool36 = icmp eq i32 %and35, 0, !dbg !2942
  br i1 %tobool36, label %cleanup94, label %if.then37, !dbg !2943

if.then37:                                        ; preds = %land.lhs.true34
  %num = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 0, !dbg !2944
  %12 = load i32, i32* %num, align 8, !dbg !2944
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %10, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.4, i64 0, i64 0), i32 %12) #6, !dbg !2945
  br label %cleanup94, !dbg !2945

if.end40:                                         ; preds = %land.lhs.true26, %if.end23
  %cmp41 = icmp eq i32 %ul, 1, !dbg !2946
  %or.cond = and i1 %cmp41, %cmp24, !dbg !2948
  br i1 %or.cond, label %if.then46, label %if.end56, !dbg !2948

if.then46:                                        ; preds = %if.end40
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2949
  %tobool47 = icmp eq %struct._IO_FILE* %13, null, !dbg !2949
  br i1 %tobool47, label %cleanup94, label %land.lhs.true48, !dbg !2952

land.lhs.true48:                                  ; preds = %if.then46
  %14 = load i32, i32* @dump_flags, align 4, !dbg !2953
  %and49 = and i32 %14, 8, !dbg !2954
  %tobool50 = icmp eq i32 %and49, 0, !dbg !2954
  br i1 %tobool50, label %cleanup94, label %if.then51, !dbg !2955

if.then51:                                        ; preds = %land.lhs.true48
  %num52 = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 0, !dbg !2956
  %15 = load i32, i32* %num52, align 8, !dbg !2956
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %15) #6, !dbg !2957
  br label %cleanup94, !dbg !2957

if.end56:                                         ; preds = %if.end40
  br i1 false, label %if.end56.if.end80_crit_edge, label %if.then58, !dbg !2958

if.end56.if.end80_crit_edge:                      ; preds = %if.end56
  br label %if.end80, !dbg !2958

if.then58:                                        ; preds = %if.end56
  %16 = bitcast %struct.edge_def** %e to i8*, !dbg !2959
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #7, !dbg !2959
  %17 = bitcast %struct.VEC_edge_heap** %to_remove to i8*, !dbg !2960
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #7, !dbg !2960
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* null, metadata !2884, metadata !DIExpression()), !dbg !2961
  store %struct.VEC_edge_heap* null, %struct.VEC_edge_heap** %to_remove, align 8, !dbg !2962
  call void @initialize_original_copy_tables() #6, !dbg !2963
  %18 = trunc i64 %call4 to i32, !dbg !2964
  %conv59 = add i32 %18, 1, !dbg !2964
  %call60 = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %conv59) #6, !dbg !2965
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call60, metadata !2869, metadata !DIExpression()), !dbg !2961
  call void @sbitmap_ones(%struct.simple_bitmap_def* %call60) #6, !dbg !2966
  call fastcc void @RESET_BIT(%struct.simple_bitmap_def* %call60, i32 0) #8, !dbg !2967
  %call61 = call %struct.edge_def* @loop_preheader_edge(%struct.loop* %loop) #6, !dbg !2968
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** %to_remove, metadata !2884, metadata !DIExpression(DW_OP_deref)), !dbg !2961
  %call63 = call zeroext i8 @gimple_duplicate_loop_to_header_edge(%struct.loop* %loop, %struct.edge_def* %call61, i32 %18, %struct.simple_bitmap_def* %call60, %struct.edge_def* %exit, %struct.VEC_edge_heap** nonnull %to_remove, i32 5) #6, !dbg !2970
  %tobool64 = icmp eq i8 %call63, 0, !dbg !2970
  br i1 %tobool64, label %if.then65, label %for.cond.preheader, !dbg !2971

for.cond.preheader:                               ; preds = %if.then58
  br label %for.cond, !dbg !2972

if.then65:                                        ; preds = %if.then58
  call void @free_original_copy_tables() #6, !dbg !2973
  %19 = bitcast %struct.simple_bitmap_def* %call60 to i8*, !dbg !2975
  call void @free(i8* %19) #6, !dbg !2976
  br label %cleanup, !dbg !2977

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %i.0 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ], !dbg !2978
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2883, metadata !DIExpression()), !dbg !2961
  %20 = load %struct.VEC_edge_heap*, %struct.VEC_edge_heap** %to_remove, align 8, !dbg !2979
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %20, metadata !2884, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %20, metadata !2884, metadata !DIExpression()), !dbg !2961
  %base = getelementptr inbounds %struct.VEC_edge_heap, %struct.VEC_edge_heap* %20, i64 0, i32 0, !dbg !2979
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2882, metadata !DIExpression(DW_OP_deref)), !dbg !2961
  %call69 = call fastcc i32 @VEC_edge_base_iterate(%struct.VEC_edge_base* %base, i32 %i.0, %struct.edge_def** nonnull %e) #8, !dbg !2979
  %tobool70 = icmp eq i32 %call69, 0, !dbg !2972
  br i1 %tobool70, label %for.end, label %for.body, !dbg !2972

for.body:                                         ; preds = %for.cond
  %21 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2980
  call void @llvm.dbg.value(metadata %struct.edge_def* %21, metadata !2882, metadata !DIExpression()), !dbg !2961
  %call71 = call zeroext i8 @remove_path(%struct.edge_def* %21) #6, !dbg !2981
  call void @llvm.dbg.value(metadata i8 %call71, metadata !2890, metadata !DIExpression()), !dbg !2982
  %tobool72 = icmp eq i8 %call71, 0, !dbg !2983
  br i1 %tobool72, label %cond.true73, label %for.inc, !dbg !2983

cond.true73:                                      ; preds = %for.body
  call void @fancy_abort(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 412, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !2983
  br label %for.inc, !dbg !2983

for.inc:                                          ; preds = %for.body, %cond.true73
  %inc = add i32 %i.0, 1, !dbg !2984
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2883, metadata !DIExpression()), !dbg !2961
  br label %for.cond, !dbg !2985, !llvm.loop !2986

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** %to_remove, metadata !2884, metadata !DIExpression(DW_OP_deref)), !dbg !2961
  call fastcc void @VEC_edge_heap_free(%struct.VEC_edge_heap** nonnull %to_remove) #8, !dbg !2988
  %22 = bitcast %struct.simple_bitmap_def* %call60 to i8*, !dbg !2989
  call void @free(i8* %22) #6, !dbg !2990
  call void @free_original_copy_tables() #6, !dbg !2991
  br label %cleanup, !dbg !2992

cleanup:                                          ; preds = %for.end, %if.then65
  %cleanup.dest.slot.0 = phi i1 [ true, %for.end ], [ false, %if.then65 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #7, !dbg !2992
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #7, !dbg !2992
  br i1 %cleanup.dest.slot.0, label %if.end80, label %cleanup94

if.end80:                                         ; preds = %if.end56.if.end80_crit_edge, %if.end7, %cleanup
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %exit, i64 0, i32 0, !dbg !2993
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2993
  %call81 = call %union.gimple_statement_d* @last_stmt(%struct.basic_block_def* %23) #6, !dbg !2994
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call81, metadata !2861, metadata !DIExpression()), !dbg !2894
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %exit, i64 0, i32 7, !dbg !2995
  %24 = load i32, i32* %flags, align 8, !dbg !2995
  %and82 = and i32 %24, 1024, !dbg !2997
  %tobool83 = icmp eq i32 %and82, 0, !dbg !2997
  br i1 %tobool83, label %if.else, label %if.then84, !dbg !2998

if.then84:                                        ; preds = %if.end80
  call fastcc void @gimple_cond_make_true(%union.gimple_statement_d* %call81) #8, !dbg !2999
  br label %if.end85, !dbg !2999

if.else:                                          ; preds = %if.end80
  call fastcc void @gimple_cond_make_false(%union.gimple_statement_d* %call81) #8, !dbg !3000
  br label %if.end85

if.end85:                                         ; preds = %if.else, %if.then84
  call fastcc void @update_stmt(%union.gimple_statement_d* %call81) #8, !dbg !3001
  call void @update_ssa(i32 2048) #6, !dbg !3002
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3003
  %tobool86 = icmp eq %struct._IO_FILE* %25, null, !dbg !3003
  br i1 %tobool86, label %cleanup94, label %land.lhs.true87, !dbg !3005

land.lhs.true87:                                  ; preds = %if.end85
  %26 = load i32, i32* @dump_flags, align 4, !dbg !3006
  %and88 = and i32 %26, 8, !dbg !3007
  %tobool89 = icmp eq i32 %and88, 0, !dbg !3007
  br i1 %tobool89, label %cleanup94, label %if.then90, !dbg !3008

if.then90:                                        ; preds = %land.lhs.true87
  %num91 = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 0, !dbg !3009
  %27 = load i32, i32* %num91, align 8, !dbg !3009
  %call92 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %27) #6, !dbg !3010
  br label %cleanup94, !dbg !3010

cleanup94:                                        ; preds = %land.lhs.true34, %if.then32, %land.lhs.true48, %if.then46, %land.lhs.true87, %if.end85, %if.end, %entry, %if.then90, %if.then51, %if.then37, %if.then9, %if.end3, %cleanup
  %retval.1 = phi i8 [ 0, %cleanup ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end3 ], [ 0, %if.then9 ], [ 0, %if.then37 ], [ 0, %land.lhs.true34 ], [ 0, %if.then32 ], [ 0, %if.then51 ], [ 0, %land.lhs.true48 ], [ 0, %if.then46 ], [ 1, %if.then90 ], [ 1, %land.lhs.true87 ], [ 1, %if.end85 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7, !dbg !3011
  ret i8 %retval.1, !dbg !3011
}

; Function Attrs: nounwind uwtable
define internal fastcc void @create_canonical_iv(%struct.loop* %loop, %struct.edge_def* %exit, %union.tree_node* %niter) unnamed_addr #5 !dbg !3012 {
entry:
  %var = alloca %union.tree_node*, align 8
  %incr_at = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3016, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata %struct.edge_def* %exit, metadata !3017, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata %union.tree_node* %niter, metadata !3018, metadata !DIExpression()), !dbg !3025
  %0 = bitcast %union.tree_node** %var to i8*, !dbg !3026
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3026
  %1 = bitcast %struct.gimple_stmt_iterator* %incr_at to i8*, !dbg !3027
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #7, !dbg !3027
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3028
  %tobool = icmp eq %struct._IO_FILE* %2, null, !dbg !3028
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !3030

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* @dump_flags, align 4, !dbg !3031
  %and = and i32 %3, 8, !dbg !3032
  %tobool1 = icmp eq i32 %and, 0, !dbg !3032
  br i1 %tobool1, label %if.end, label %if.then, !dbg !3033

if.then:                                          ; preds = %land.lhs.true
  %num = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 0, !dbg !3034
  %4 = load i32, i32* %num, align 8, !dbg !3034
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0), i32 %4) #6, !dbg !3036
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3037
  tail call void @print_generic_expr(%struct._IO_FILE* %5, %union.tree_node* %niter, i32 2) #6, !dbg !3038
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3039
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0)) #6, !dbg !3040
  br label %if.end, !dbg !3041

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %exit, i64 0, i32 0, !dbg !3042
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3042
  %call3 = tail call %union.gimple_statement_d* @last_stmt(%struct.basic_block_def* %7) #6, !dbg !3043
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call3, metadata !3022, metadata !DIExpression()), !dbg !3025
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3044
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %8, i64 0, i32 1, !dbg !3044
  %9 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3044
  %tobool5 = icmp eq %struct.VEC_edge_gc* %9, null, !dbg !3044
  br i1 %tobool5, label %cond.end, label %cond.true, !dbg !3044

cond.true:                                        ; preds = %if.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %9, i64 0, i32 0, !dbg !3044
  br label %cond.end, !dbg !3044

cond.end:                                         ; preds = %if.end, %cond.true
  %cond8 = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %if.end ], !dbg !3044
  %call9 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond8, i32 0) #8, !dbg !3044
  call void @llvm.dbg.value(metadata %struct.edge_def* %call9, metadata !3019, metadata !DIExpression()), !dbg !3025
  %cmp10 = icmp eq %struct.edge_def* %call9, %exit, !dbg !3045
  br i1 %cmp10, label %if.then11, label %if.end23, !dbg !3047

if.then11:                                        ; preds = %cond.end
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3048
  %succs13 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %10, i64 0, i32 1, !dbg !3048
  %11 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs13, align 8, !dbg !3048
  %tobool14 = icmp eq %struct.VEC_edge_gc* %11, null, !dbg !3048
  br i1 %tobool14, label %cond.end20, label %cond.true15, !dbg !3048

cond.true15:                                      ; preds = %if.then11
  %base18 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %11, i64 0, i32 0, !dbg !3048
  br label %cond.end20, !dbg !3048

cond.end20:                                       ; preds = %if.then11, %cond.true15
  %cond21 = phi %struct.VEC_edge_base* [ %base18, %cond.true15 ], [ null, %if.then11 ], !dbg !3048
  %call22 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond21, i32 1) #8, !dbg !3048
  call void @llvm.dbg.value(metadata %struct.edge_def* %call22, metadata !3019, metadata !DIExpression()), !dbg !3025
  br label %if.end23, !dbg !3049

if.end23:                                         ; preds = %cond.end20, %cond.end
  %in.0 = phi %struct.edge_def* [ %call22, %cond.end20 ], [ %call9, %cond.end ], !dbg !3025
  call void @llvm.dbg.value(metadata %struct.edge_def* %in.0, metadata !3019, metadata !DIExpression()), !dbg !3025
  %type24 = getelementptr inbounds %union.tree_node, %union.tree_node* %niter, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3050
  %12 = load %union.tree_node*, %union.tree_node** %type24, align 8, !dbg !3050
  call void @llvm.dbg.value(metadata %union.tree_node* %12, metadata !3020, metadata !DIExpression()), !dbg !3025
  %call25 = tail call %union.tree_node* @build_int_cst(%union.tree_node* %12, i64 1) #6, !dbg !3051
  %call26 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 63, %union.tree_node* %12, %union.tree_node* %niter, %union.tree_node* %call25) #6, !dbg !3051
  call void @llvm.dbg.value(metadata %union.tree_node* %call26, metadata !3018, metadata !DIExpression()), !dbg !3025
  %13 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !3052
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #7, !dbg !3052
  %src27 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %in.0, i64 0, i32 0, !dbg !3053
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %src27, align 8, !dbg !3053
  call fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %14) #8, !dbg !3052
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %13, i64 24, i1 false), !dbg !3052
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %13) #7, !dbg !3052
  %call28 = call %union.tree_node* @build_int_cst(%union.tree_node* %12, i64 -1) #6, !dbg !3054
  call void @llvm.dbg.value(metadata %union.tree_node** %var, metadata !3021, metadata !DIExpression(DW_OP_deref)), !dbg !3025
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %incr_at, metadata !3023, metadata !DIExpression(DW_OP_deref)), !dbg !3025
  call void @create_iv(%union.tree_node* %call26, %union.tree_node* %call28, %union.tree_node* null, %struct.loop* %loop, %struct.gimple_stmt_iterator* nonnull %incr_at, i8 zeroext 0, %union.tree_node** null, %union.tree_node** nonnull %var) #6, !dbg !3055
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %exit, i64 0, i32 7, !dbg !3056
  %15 = load i32, i32* %flags, align 8, !dbg !3056
  %and29 = and i32 %15, 1024, !dbg !3057
  %tobool30 = icmp eq i32 %and29, 0, !dbg !3058
  %cond31 = select i1 %tobool30, i32 102, i32 101, !dbg !3058
  call void @llvm.dbg.value(metadata i32 %cond31, metadata !3024, metadata !DIExpression()), !dbg !3025
  call fastcc void @gimple_cond_set_code(%union.gimple_statement_d* %call3, i32 %cond31) #8, !dbg !3059
  %16 = load %union.tree_node*, %union.tree_node** %var, align 8, !dbg !3060
  call void @llvm.dbg.value(metadata %union.tree_node* %16, metadata !3021, metadata !DIExpression()), !dbg !3025
  call fastcc void @gimple_cond_set_lhs(%union.gimple_statement_d* %call3, %union.tree_node* %16) #8, !dbg !3061
  %call32 = call %union.tree_node* @build_int_cst(%union.tree_node* %12, i64 0) #6, !dbg !3062
  call fastcc void @gimple_cond_set_rhs(%union.gimple_statement_d* %call3, %union.tree_node* %call32) #8, !dbg !3063
  call fastcc void @update_stmt(%union.gimple_statement_d* %call3) #8, !dbg !3064
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #7, !dbg !3065
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3065
  ret void, !dbg !3065
}

declare dso_local i32 @host_integerp(%union.tree_node*, i32) local_unnamed_addr #2

declare dso_local i64 @tree_low_cst(%union.tree_node*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @tree_estimate_loop_size(%struct.loop* %loop, %struct.edge_def* %exit, %struct.loop_size* %size) unnamed_addr #5 !dbg !3066 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3071, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata %struct.edge_def* %exit, metadata !3072, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata %struct.loop_size* %size, metadata !3073, metadata !DIExpression()), !dbg !3087
  %call = tail call %struct.basic_block_def** @get_loop_body(%struct.loop* %loop) #6, !dbg !3088
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %call, metadata !3074, metadata !DIExpression()), !dbg !3087
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !3089
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7, !dbg !3089
  %overall = getelementptr inbounds %struct.loop_size, %struct.loop_size* %size, i64 0, i32 0, !dbg !3090
  store i32 0, i32* %overall, align 4, !dbg !3091
  %eliminated_by_peeling = getelementptr inbounds %struct.loop_size, %struct.loop_size* %size, i64 0, i32 1, !dbg !3092
  store i32 0, i32* %eliminated_by_peeling, align 4, !dbg !3093
  %last_iteration = getelementptr inbounds %struct.loop_size, %struct.loop_size* %size, i64 0, i32 2, !dbg !3094
  store i32 0, i32* %last_iteration, align 4, !dbg !3095
  %last_iteration_eliminated_by_peeling = getelementptr inbounds %struct.loop_size, %struct.loop_size* %size, i64 0, i32 3, !dbg !3096
  store i32 0, i32* %last_iteration_eliminated_by_peeling, align 4, !dbg !3097
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3098
  %tobool = icmp eq %struct._IO_FILE* %1, null, !dbg !3098
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !3100

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* @dump_flags, align 4, !dbg !3101
  %and = and i32 %2, 8, !dbg !3102
  %tobool1 = icmp eq i32 %and, 0, !dbg !3102
  br i1 %tobool1, label %if.end, label %if.then, !dbg !3103

if.then:                                          ; preds = %land.lhs.true
  %num = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 0, !dbg !3104
  %3 = load i32, i32* %num, align 8, !dbg !3104
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %3) #6, !dbg !3105
  br label %if.end, !dbg !3105

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  call void @llvm.dbg.value(metadata i32 0, metadata !3076, metadata !DIExpression()), !dbg !3087
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 6, !dbg !3106
  %tobool3 = icmp eq %struct.edge_def* %exit, null, !dbg !3107
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %exit, i64 0, i32 0, !dbg !3107
  %4 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !3109
  br label %for.cond, !dbg !3110

for.cond:                                         ; preds = %for.inc147, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc147 ], [ 0, %if.end ], !dbg !3111
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3076, metadata !DIExpression()), !dbg !3087
  %5 = load i32, i32* %num_nodes, align 4, !dbg !3112
  %6 = zext i32 %5 to i64, !dbg !3113
  %cmp = icmp ult i64 %indvars.iv, %6, !dbg !3113
  br i1 %cmp, label %for.body, label %for.end148, !dbg !3114

for.body:                                         ; preds = %for.cond
  br i1 %tobool3, label %if.else, label %land.lhs.true4, !dbg !3115

land.lhs.true4:                                   ; preds = %for.body
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %call, i64 %indvars.iv, !dbg !3116
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !3116
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3117
  %cmp5 = icmp eq %struct.basic_block_def* %7, %8, !dbg !3118
  br i1 %cmp5, label %if.else, label %land.lhs.true6, !dbg !3119

land.lhs.true6:                                   ; preds = %land.lhs.true4
  %call10 = call zeroext i8 @dominated_by_p(i32 1, %struct.basic_block_def* %7, %struct.basic_block_def* %8) #6, !dbg !3120
  %tobool11 = icmp eq i8 %call10, 0, !dbg !3120
  br i1 %tobool11, label %if.else, label %if.end13, !dbg !3121

if.else:                                          ; preds = %land.lhs.true6, %land.lhs.true4, %for.body
  call void @llvm.dbg.value(metadata i8 0, metadata !3077, metadata !DIExpression()), !dbg !3087
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true6, %if.else
  %after_exit.0 = phi i8 [ 0, %if.else ], [ 1, %land.lhs.true6 ], !dbg !3107
  call void @llvm.dbg.value(metadata i8 %after_exit.0, metadata !3077, metadata !DIExpression()), !dbg !3087
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3122
  %tobool14 = icmp eq %struct._IO_FILE* %9, null, !dbg !3122
  br i1 %tobool14, label %if.end23, label %land.lhs.true15, !dbg !3124

land.lhs.true15:                                  ; preds = %if.end13
  %10 = load i32, i32* @dump_flags, align 4, !dbg !3125
  %and16 = and i32 %10, 8, !dbg !3126
  %tobool17 = icmp eq i32 %and16, 0, !dbg !3126
  br i1 %tobool17, label %if.end23, label %if.then18, !dbg !3127

if.then18:                                        ; preds = %land.lhs.true15
  %arrayidx20 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %call, i64 %indvars.iv, !dbg !3128
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx20, align 8, !dbg !3128
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %11, i64 0, i32 9, !dbg !3129
  %12 = load i32, i32* %index, align 8, !dbg !3129
  %conv21 = zext i8 %after_exit.0 to i32, !dbg !3130
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 %12, i32 %conv21) #6, !dbg !3131
  br label %if.end23, !dbg !3131

if.end23:                                         ; preds = %land.lhs.true15, %if.end13, %if.then18
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #7, !dbg !3132
  %arrayidx25 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %call, i64 %indvars.iv, !dbg !3133
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx25, align 8, !dbg !3133
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %13) #8, !dbg !3132
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %4, i64 24, i1 false), !dbg !3132
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #7, !dbg !3132
  %tobool137 = icmp eq i8 %after_exit.0, 0, !dbg !3134
  br label %for.cond26, !dbg !3136

for.cond26:                                       ; preds = %for.inc, %if.end23
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3075, metadata !DIExpression(DW_OP_deref)), !dbg !3087
  %call27 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3137
  %tobool28 = icmp eq i8 %call27, 0, !dbg !3138
  br i1 %tobool28, label %for.body29, label %for.inc147, !dbg !3139

for.body29:                                       ; preds = %for.cond26
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3075, metadata !DIExpression(DW_OP_deref)), !dbg !3087
  %call30 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3140
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call30, metadata !3078, metadata !DIExpression()), !dbg !3141
  %call32 = call i32 @estimate_num_insns(%union.gimple_statement_d* %call30, %struct.eni_weights_d* nonnull @eni_size_weights) #6, !dbg !3142
  call void @llvm.dbg.value(metadata i32 %call32, metadata !3085, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i8 0, metadata !3086, metadata !DIExpression()), !dbg !3141
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3143
  %tobool33 = icmp eq %struct._IO_FILE* %14, null, !dbg !3143
  br i1 %tobool33, label %if.end40, label %land.lhs.true34, !dbg !3145

land.lhs.true34:                                  ; preds = %for.body29
  %15 = load i32, i32* @dump_flags, align 4, !dbg !3146
  %and35 = and i32 %15, 8, !dbg !3147
  %tobool36 = icmp eq i32 %and35, 0, !dbg !3147
  br i1 %tobool36, label %if.end40, label %if.then37, !dbg !3148

if.then37:                                        ; preds = %land.lhs.true34
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %call32) #6, !dbg !3149
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3151
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3075, metadata !DIExpression(DW_OP_deref)), !dbg !3087
  %call39 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3152
  call void @print_gimple_stmt(%struct._IO_FILE* %16, %union.gimple_statement_d* %call39, i32 0, i32 0) #6, !dbg !3153
  br label %if.end40, !dbg !3154

if.end40:                                         ; preds = %land.lhs.true34, %for.body29, %if.then37
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx25, align 8, !dbg !3155
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3157
  %cmp44 = icmp eq %struct.basic_block_def* %17, %18, !dbg !3158
  br i1 %cmp44, label %land.lhs.true46, label %if.else59, !dbg !3159

land.lhs.true46:                                  ; preds = %if.end40
  %call48 = call %union.gimple_statement_d* @last_stmt(%struct.basic_block_def* %17) #6, !dbg !3160
  %cmp49 = icmp eq %union.gimple_statement_d* %call30, %call48, !dbg !3161
  br i1 %cmp49, label %if.then51, label %if.else59, !dbg !3162

if.then51:                                        ; preds = %land.lhs.true46
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3163
  %tobool52 = icmp eq %struct._IO_FILE* %19, null, !dbg !3163
  br i1 %tobool52, label %if.end130, label %land.lhs.true53, !dbg !3166

land.lhs.true53:                                  ; preds = %if.then51
  %20 = load i32, i32* @dump_flags, align 4, !dbg !3167
  %and54 = and i32 %20, 8, !dbg !3168
  %tobool55 = icmp eq i32 %and54, 0, !dbg !3168
  br i1 %tobool55, label %if.end130, label %if.then56, !dbg !3169

if.then56:                                        ; preds = %land.lhs.true53
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !3170
  br label %if.end130, !dbg !3170

if.else59:                                        ; preds = %land.lhs.true46, %if.end40
  %call60 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call30) #8, !dbg !3171
  %cmp61 = icmp eq i32 %call60, 6, !dbg !3173
  br i1 %cmp61, label %land.lhs.true63, label %if.else76, !dbg !3174

land.lhs.true63:                                  ; preds = %if.else59
  %call64 = call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %call30) #8, !dbg !3175
  %call65 = call fastcc zeroext i8 @constant_after_peeling(%union.tree_node* %call64, %union.gimple_statement_d* %call30, %struct.loop* %loop) #8, !dbg !3176
  %tobool67 = icmp eq i8 %call65, 0, !dbg !3176
  br i1 %tobool67, label %if.else76, label %if.then68, !dbg !3177

if.then68:                                        ; preds = %land.lhs.true63
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3178
  %tobool69 = icmp eq %struct._IO_FILE* %21, null, !dbg !3178
  br i1 %tobool69, label %if.end130, label %land.lhs.true70, !dbg !3181

land.lhs.true70:                                  ; preds = %if.then68
  %22 = load i32, i32* @dump_flags, align 4, !dbg !3182
  %and71 = and i32 %22, 8, !dbg !3183
  %tobool72 = icmp eq i32 %and71, 0, !dbg !3183
  br i1 %tobool72, label %if.end130, label %if.then73, !dbg !3184

if.then73:                                        ; preds = %land.lhs.true70
  %call74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %21, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !3185
  br label %if.end130, !dbg !3185

if.else76:                                        ; preds = %land.lhs.true63, %if.else59
  %call77 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call30) #8, !dbg !3186
  %cmp78 = icmp eq i32 %call77, 6, !dbg !3188
  br i1 %cmp78, label %land.lhs.true80, label %if.else105, !dbg !3189

land.lhs.true80:                                  ; preds = %if.else76
  %call81 = call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %call30) #8, !dbg !3190
  %23 = getelementptr inbounds %union.tree_node, %union.tree_node* %call81, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3190
  %bf.load = load i64, i64* %23, align 8, !dbg !3190
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3191
  %cmp82 = icmp eq i64 %bf.cast1, 141, !dbg !3191
  br i1 %cmp82, label %land.lhs.true84, label %if.else105, !dbg !3192

land.lhs.true84:                                  ; preds = %land.lhs.true80
  %call85 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %call30) #8, !dbg !3193
  %call86 = call fastcc zeroext i8 @constant_after_peeling(%union.tree_node* %call85, %union.gimple_statement_d* %call30, %struct.loop* %loop) #8, !dbg !3194
  %tobool88 = icmp eq i8 %call86, 0, !dbg !3194
  br i1 %tobool88, label %if.else105, label %land.lhs.true89, !dbg !3195

land.lhs.true89:                                  ; preds = %land.lhs.true84
  %call90 = call fastcc i32 @gimple_assign_rhs_class(%union.gimple_statement_d* %call30) #8, !dbg !3196
  %cmp91 = icmp eq i32 %call90, 1, !dbg !3197
  br i1 %cmp91, label %lor.lhs.false, label %if.then97, !dbg !3198

lor.lhs.false:                                    ; preds = %land.lhs.true89
  %call93 = call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %call30) #8, !dbg !3199
  %call94 = call fastcc zeroext i8 @constant_after_peeling(%union.tree_node* %call93, %union.gimple_statement_d* %call30, %struct.loop* %loop) #8, !dbg !3200
  %tobool96 = icmp eq i8 %call94, 0, !dbg !3200
  br i1 %tobool96, label %if.else105, label %if.then97, !dbg !3201

if.then97:                                        ; preds = %lor.lhs.false, %land.lhs.true89
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3202
  %tobool98 = icmp eq %struct._IO_FILE* %24, null, !dbg !3202
  br i1 %tobool98, label %if.end130, label %land.lhs.true99, !dbg !3205

land.lhs.true99:                                  ; preds = %if.then97
  %25 = load i32, i32* @dump_flags, align 4, !dbg !3206
  %and100 = and i32 %25, 8, !dbg !3207
  %tobool101 = icmp eq i32 %and100, 0, !dbg !3207
  br i1 %tobool101, label %if.end130, label %if.then102, !dbg !3208

if.then102:                                       ; preds = %land.lhs.true99
  %call103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %24, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !3209
  br label %if.end130, !dbg !3209

if.else105:                                       ; preds = %lor.lhs.false, %land.lhs.true84, %land.lhs.true80, %if.else76
  %call106 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call30) #8, !dbg !3210
  %cmp107 = icmp eq i32 %call106, 1, !dbg !3212
  br i1 %cmp107, label %land.lhs.true109, label %if.end130, !dbg !3213

land.lhs.true109:                                 ; preds = %if.else105
  %call110 = call fastcc %union.tree_node* @gimple_cond_lhs(%union.gimple_statement_d* %call30) #8, !dbg !3214
  %call111 = call fastcc zeroext i8 @constant_after_peeling(%union.tree_node* %call110, %union.gimple_statement_d* %call30, %struct.loop* %loop) #8, !dbg !3215
  %tobool113 = icmp eq i8 %call111, 0, !dbg !3215
  br i1 %tobool113, label %if.end130, label %land.lhs.true114, !dbg !3216

land.lhs.true114:                                 ; preds = %land.lhs.true109
  %call115 = call fastcc %union.tree_node* @gimple_cond_rhs(%union.gimple_statement_d* %call30) #8, !dbg !3217
  %call116 = call fastcc zeroext i8 @constant_after_peeling(%union.tree_node* %call115, %union.gimple_statement_d* %call30, %struct.loop* %loop) #8, !dbg !3218
  %tobool118 = icmp eq i8 %call116, 0, !dbg !3218
  br i1 %tobool118, label %if.end130, label %if.then119, !dbg !3219

if.then119:                                       ; preds = %land.lhs.true114
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3220
  %tobool120 = icmp eq %struct._IO_FILE* %26, null, !dbg !3220
  br i1 %tobool120, label %if.end130, label %land.lhs.true121, !dbg !3223

land.lhs.true121:                                 ; preds = %if.then119
  %27 = load i32, i32* @dump_flags, align 4, !dbg !3224
  %and122 = and i32 %27, 8, !dbg !3225
  %tobool123 = icmp eq i32 %and122, 0, !dbg !3225
  br i1 %tobool123, label %if.end130, label %if.then124, !dbg !3226

if.then124:                                       ; preds = %land.lhs.true121
  %call125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0)) #6, !dbg !3227
  br label %if.end130, !dbg !3227

if.end130:                                        ; preds = %land.lhs.true53, %if.then51, %land.lhs.true70, %if.then68, %land.lhs.true99, %if.then97, %land.lhs.true121, %if.then119, %land.lhs.true114, %land.lhs.true109, %if.then73, %if.else105, %if.then124, %if.then102, %if.then56
  %likely_eliminated.3 = phi i1 [ true, %if.then56 ], [ true, %land.lhs.true53 ], [ true, %if.then51 ], [ true, %if.then73 ], [ true, %land.lhs.true70 ], [ true, %if.then68 ], [ true, %if.then102 ], [ true, %land.lhs.true99 ], [ true, %if.then97 ], [ false, %land.lhs.true114 ], [ false, %land.lhs.true109 ], [ false, %if.else105 ], [ true, %if.then124 ], [ true, %land.lhs.true121 ], [ true, %if.then119 ]
  %28 = load i32, i32* %overall, align 4, !dbg !3228
  %add = add nsw i32 %28, %call32, !dbg !3228
  store i32 %add, i32* %overall, align 4, !dbg !3228
  br i1 %likely_eliminated.3, label %if.then133, label %if.end136, !dbg !3229

if.then133:                                       ; preds = %if.end130
  %29 = load i32, i32* %eliminated_by_peeling, align 4, !dbg !3230
  %add135 = add nsw i32 %29, %call32, !dbg !3230
  store i32 %add135, i32* %eliminated_by_peeling, align 4, !dbg !3230
  br label %if.end136, !dbg !3232

if.end136:                                        ; preds = %if.then133, %if.end130
  br i1 %tobool137, label %if.then138, label %for.inc, !dbg !3233

if.then138:                                       ; preds = %if.end136
  %30 = load i32, i32* %last_iteration, align 4, !dbg !3234
  %add140 = add nsw i32 %30, %call32, !dbg !3234
  store i32 %add140, i32* %last_iteration, align 4, !dbg !3234
  br i1 %likely_eliminated.3, label %if.then142, label %for.inc, !dbg !3236

if.then142:                                       ; preds = %if.then138
  %31 = load i32, i32* %last_iteration_eliminated_by_peeling, align 4, !dbg !3237
  %add144 = add nsw i32 %31, %call32, !dbg !3237
  store i32 %add144, i32* %last_iteration_eliminated_by_peeling, align 4, !dbg !3237
  br label %for.inc, !dbg !3239

for.inc:                                          ; preds = %if.end136, %if.then142, %if.then138
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3075, metadata !DIExpression(DW_OP_deref)), !dbg !3087
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #8, !dbg !3240
  br label %for.cond26, !dbg !3241, !llvm.loop !3242

for.inc147:                                       ; preds = %for.cond26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3244
  br label %for.cond, !dbg !3245, !llvm.loop !3246

for.end148:                                       ; preds = %for.cond
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3248
  %tobool149 = icmp eq %struct._IO_FILE* %32, null, !dbg !3248
  br i1 %tobool149, label %if.end159, label %land.lhs.true150, !dbg !3250

land.lhs.true150:                                 ; preds = %for.end148
  %33 = load i32, i32* @dump_flags, align 4, !dbg !3251
  %and151 = and i32 %33, 8, !dbg !3252
  %tobool152 = icmp eq i32 %and151, 0, !dbg !3252
  br i1 %tobool152, label %if.end159, label %if.then153, !dbg !3253

if.then153:                                       ; preds = %land.lhs.true150
  %34 = load i32, i32* %overall, align 4, !dbg !3254
  %35 = load i32, i32* %eliminated_by_peeling, align 4, !dbg !3255
  %36 = load i32, i32* %last_iteration, align 4, !dbg !3256
  %37 = load i32, i32* %last_iteration_eliminated_by_peeling, align 4, !dbg !3257
  %call158 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0), i32 %34, i32 %35, i32 %36, i32 %37) #6, !dbg !3258
  br label %if.end159, !dbg !3258

if.end159:                                        ; preds = %land.lhs.true150, %for.end148, %if.then153
  %38 = bitcast %struct.basic_block_def** %call to i8*, !dbg !3259
  call void @free(i8* %38) #6, !dbg !3260
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7, !dbg !3261
  ret void, !dbg !3261
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @estimated_unrolled_size(%struct.loop_size* %size, i64 %nunroll) unnamed_addr #5 !dbg !3262 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop_size* %size, metadata !3266, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata i64 %nunroll, metadata !3267, metadata !DIExpression()), !dbg !3269
  %overall = getelementptr inbounds %struct.loop_size, %struct.loop_size* %size, i64 0, i32 0, !dbg !3270
  %0 = load i32, i32* %overall, align 4, !dbg !3270
  %eliminated_by_peeling = getelementptr inbounds %struct.loop_size, %struct.loop_size* %size, i64 0, i32 1, !dbg !3271
  %1 = load i32, i32* %eliminated_by_peeling, align 4, !dbg !3271
  %sub = sub nsw i32 %0, %1, !dbg !3272
  %conv = sext i32 %sub to i64, !dbg !3273
  %mul = mul i64 %conv, %nunroll, !dbg !3274
  call void @llvm.dbg.value(metadata i64 %mul, metadata !3268, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata i64 %mul, metadata !3268, metadata !DIExpression()), !dbg !3269
  %last_iteration = getelementptr inbounds %struct.loop_size, %struct.loop_size* %size, i64 0, i32 2, !dbg !3275
  %2 = load i32, i32* %last_iteration, align 4, !dbg !3275
  %last_iteration_eliminated_by_peeling = getelementptr inbounds %struct.loop_size, %struct.loop_size* %size, i64 0, i32 3, !dbg !3276
  %3 = load i32, i32* %last_iteration_eliminated_by_peeling, align 4, !dbg !3276
  %sub1 = sub nsw i32 %2, %3, !dbg !3277
  %conv2 = sext i32 %sub1 to i64, !dbg !3278
  %add = add nsw i64 %mul, %conv2, !dbg !3279
  call void @llvm.dbg.value(metadata i64 %add, metadata !3268, metadata !DIExpression()), !dbg !3269
  %mul3 = shl nsw i64 %add, 1, !dbg !3280
  %div = sdiv i64 %mul3, 3, !dbg !3281
  call void @llvm.dbg.value(metadata i64 %div, metadata !3268, metadata !DIExpression()), !dbg !3269
  %4 = icmp sgt i64 %div, 1, !dbg !3282
  %unr_insns.1 = select i1 %4, i64 %div, i64 1, !dbg !3282
  call void @llvm.dbg.value(metadata i64 %unr_insns.1, metadata !3268, metadata !DIExpression()), !dbg !3269
  ret i64 %unr_insns.1, !dbg !3283
}

declare dso_local void @initialize_original_copy_tables() local_unnamed_addr #2

declare dso_local %struct.simple_bitmap_def* @sbitmap_alloc(i32) local_unnamed_addr #2

declare dso_local void @sbitmap_ones(%struct.simple_bitmap_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @RESET_BIT(%struct.simple_bitmap_def* %map, i32 %bitno) unnamed_addr #0 !dbg !3284 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %map, metadata !3288, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i32 0, metadata !3289, metadata !DIExpression()), !dbg !3293
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 0, !dbg !3294
  %0 = load i8*, i8** %popcount, align 8, !dbg !3294
  %tobool = icmp eq i8* %0, null, !dbg !3295
  br i1 %tobool, label %if.end7, label %if.then, !dbg !3296

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 0, !dbg !3297
  %1 = load i64, i64* %arrayidx, align 8, !dbg !3297
  %2 = and i64 %1, 1, !dbg !3298
  %tobool1 = icmp eq i64 %2, 0, !dbg !3298
  br i1 %tobool1, label %if.end7, label %if.then2, !dbg !3300

if.then2:                                         ; preds = %if.then
  %3 = load i8, i8* %0, align 1, !dbg !3301
  %dec = add i8 %3, -1, !dbg !3301
  store i8 %dec, i8* %0, align 1, !dbg !3301
  br label %if.end7, !dbg !3302

if.end7:                                          ; preds = %if.then, %entry, %if.then2
  %arrayidx13 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 0, !dbg !3303
  %4 = load i64, i64* %arrayidx13, align 8, !dbg !3304
  %and14 = and i64 %4, -2, !dbg !3304
  store i64 %and14, i64* %arrayidx13, align 8, !dbg !3304
  ret void, !dbg !3305
}

declare dso_local zeroext i8 @gimple_duplicate_loop_to_header_edge(%struct.loop*, %struct.edge_def*, i32, %struct.simple_bitmap_def*, %struct.edge_def*, %struct.VEC_edge_heap**, i32) local_unnamed_addr #2

declare dso_local %struct.edge_def* @loop_preheader_edge(%struct.loop*) local_unnamed_addr #2

declare dso_local void @free_original_copy_tables() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_iterate(%struct.VEC_edge_base* %vec_, i32 %ix_, %struct.edge_def** %ptr) unnamed_addr #0 !dbg !3306 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3313, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3314, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata %struct.edge_def** %ptr, metadata !3315, metadata !DIExpression()), !dbg !3316
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !3317
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !3317

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !3317
  %0 = load i32, i32* %num, align 8, !dbg !3317
  %cmp = icmp ugt i32 %0, %ix_, !dbg !3317
  br i1 %cmp, label %if.then, label %if.else, !dbg !3319

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !3320
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3320
  %1 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !3320
  br label %return, !dbg !3320

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !3322

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ null, %if.else ], [ %1, %if.then ], !dbg !3324
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !3324
  store %struct.edge_def* %storemerge, %struct.edge_def** %ptr, align 8, !dbg !3324
  ret i32 %retval.0, !dbg !3319
}

declare dso_local zeroext i8 @remove_path(%struct.edge_def*) local_unnamed_addr #2

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_edge_heap_free(%struct.VEC_edge_heap** %vec_) unnamed_addr #0 !dbg !3325 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** %vec_, metadata !3330, metadata !DIExpression()), !dbg !3331
  %0 = load %struct.VEC_edge_heap*, %struct.VEC_edge_heap** %vec_, align 8, !dbg !3332
  %tobool = icmp eq %struct.VEC_edge_heap* %0, null, !dbg !3332
  br i1 %tobool, label %if.end, label %if.then, !dbg !3334

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_edge_heap* %0 to i8*, !dbg !3334
  tail call void @free(i8* nonnull %1) #6, !dbg !3332
  br label %if.end, !dbg !3332

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_edge_heap* null, %struct.VEC_edge_heap** %vec_, align 8, !dbg !3334
  ret void, !dbg !3334
}

declare dso_local %union.gimple_statement_d* @last_stmt(%struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_cond_make_true(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3335 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3339, metadata !DIExpression()), !dbg !3340
  %0 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 26), align 16, !dbg !3341
  tail call fastcc void @gimple_cond_set_lhs(%union.gimple_statement_d* %gs, %union.tree_node* %0) #8, !dbg !3342
  %1 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 26), align 16, !dbg !3343
  tail call fastcc void @gimple_cond_set_rhs(%union.gimple_statement_d* %gs, %union.tree_node* %1) #8, !dbg !3344
  %2 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 0, !dbg !3345
  %bf.load = load i32, i32* %2, align 8, !dbg !3346
  %bf.clear = and i32 %bf.load, 65535, !dbg !3346
  %bf.set = or i32 %bf.clear, 6619136, !dbg !3346
  store i32 %bf.set, i32* %2, align 8, !dbg !3346
  ret void, !dbg !3347
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_cond_make_false(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3348 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3350, metadata !DIExpression()), !dbg !3351
  %0 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 26), align 16, !dbg !3352
  tail call fastcc void @gimple_cond_set_lhs(%union.gimple_statement_d* %gs, %union.tree_node* %0) #8, !dbg !3353
  %1 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 25), align 8, !dbg !3354
  tail call fastcc void @gimple_cond_set_rhs(%union.gimple_statement_d* %gs, %union.tree_node* %1) #8, !dbg !3355
  %2 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 0, !dbg !3356
  %bf.load = load i32, i32* %2, align 8, !dbg !3357
  %bf.clear = and i32 %bf.load, 65535, !dbg !3357
  %bf.set = or i32 %bf.clear, 6619136, !dbg !3357
  store i32 %bf.set, i32* %2, align 8, !dbg !3357
  ret void, !dbg !3358
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @update_stmt(%union.gimple_statement_d* %s) unnamed_addr #0 !dbg !3359 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %s, metadata !3361, metadata !DIExpression()), !dbg !3362
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %s) #8, !dbg !3363
  %tobool = icmp eq i8 %call, 0, !dbg !3363
  br i1 %tobool, label %if.end, label %if.then, !dbg !3365

if.then:                                          ; preds = %entry
  tail call void @gimple_set_modified(%union.gimple_statement_d* %s, i8 zeroext 1) #6, !dbg !3366
  tail call void @update_stmt_operands(%union.gimple_statement_d* %s) #6, !dbg !3368
  br label %if.end, !dbg !3369

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !3370
}

declare dso_local zeroext i8 @dominated_by_p(i32, %struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local void @print_gimple_stmt(%struct._IO_FILE*, %union.gimple_statement_d*, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3371 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3376, metadata !DIExpression()), !dbg !3377
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !3378
  %bf.load = load i32, i32* %0, align 8, !dbg !3378
  %bf.clear = and i32 %bf.load, 255, !dbg !3378
  ret i32 %bf.clear, !dbg !3379
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @constant_after_peeling(%union.tree_node* %op, %union.gimple_statement_d* %stmt, %struct.loop* %loop) unnamed_addr #5 !dbg !3380 {
entry:
  %iv = alloca %struct.affine_iv, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %op, metadata !3384, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3385, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3386, metadata !DIExpression()), !dbg !3397
  %0 = bitcast %struct.affine_iv* %iv to i8*, !dbg !3398
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7, !dbg !3398
  %call = tail call zeroext i8 @is_gimple_min_invariant(%union.tree_node* %op) #6, !dbg !3399
  %tobool = icmp eq i8 %call, 0, !dbg !3399
  br i1 %tobool, label %if.end, label %cleanup82, !dbg !3401

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %op, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3402
  %bf.load = load i64, i64* %1, align 8, !dbg !3402
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3403
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !3403
  br i1 %cmp, label %if.end67, label %while.cond.preheader, !dbg !3404

while.cond.preheader:                             ; preds = %if.end
  br label %while.cond, !dbg !3405

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %base2.0 = phi %union.tree_node* [ %2, %while.body ], [ %op, %while.cond.preheader ], !dbg !3406
  call void @llvm.dbg.value(metadata %union.tree_node* %base2.0, metadata !3394, metadata !DIExpression()), !dbg !3406
  %call3 = tail call fastcc zeroext i8 @handled_component_p(%union.tree_node* %base2.0) #8, !dbg !3407
  %tobool4 = icmp eq i8 %call3, 0, !dbg !3405
  br i1 %tobool4, label %while.end, label %while.body, !dbg !3405

while.body:                                       ; preds = %while.cond
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %base2.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3408
  %2 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !3408
  call void @llvm.dbg.value(metadata %union.tree_node* %2, metadata !3394, metadata !DIExpression()), !dbg !3406
  br label %while.cond, !dbg !3405, !llvm.loop !3409

while.end:                                        ; preds = %while.cond
  %base2.0.lcssa = phi %union.tree_node* [ %base2.0, %while.cond ], !dbg !3406
  call void @llvm.dbg.value(metadata %union.tree_node* %base2.0.lcssa, metadata !3394, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata %union.tree_node* %base2.0.lcssa, metadata !3394, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata %union.tree_node* %base2.0.lcssa, metadata !3394, metadata !DIExpression()), !dbg !3406
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %base2.0.lcssa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3410
  %bf.load6 = load i64, i64* %3, align 8, !dbg !3410
  %bf.cast8 = and i64 %bf.load6, 65535, !dbg !3410
  %arrayidx9 = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast8, !dbg !3410
  %4 = load i32, i32* %arrayidx9, align 4, !dbg !3410
  %cmp10 = icmp eq i32 %4, 3, !dbg !3410
  br i1 %cmp10, label %land.lhs.true, label %lor.lhs.false34, !dbg !3412

land.lhs.true:                                    ; preds = %while.end
  %bf.cast143 = and i64 %bf.load6, 67108864, !dbg !3413
  %tobool15 = icmp eq i64 %bf.cast143, 0, !dbg !3413
  br i1 %tobool15, label %lor.lhs.false34, label %land.lhs.true16, !dbg !3414

land.lhs.true16:                                  ; preds = %land.lhs.true
  %bf.cast214 = and i64 %bf.load6, 1048576, !dbg !3415
  %tobool22 = icmp eq i64 %bf.cast214, 0, !dbg !3415
  br i1 %tobool22, label %lor.lhs.false34, label %land.lhs.true23, !dbg !3416

land.lhs.true23:                                  ; preds = %land.lhs.true16
  %initial = getelementptr inbounds %union.tree_node, %union.tree_node* %base2.0.lcssa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, !dbg !3417
  %5 = load %union.tree_node*, %union.tree_node** %initial, align 8, !dbg !3417
  %tobool24 = icmp eq %union.tree_node* %5, null, !dbg !3417
  br i1 %tobool24, label %lor.lhs.false, label %if.then43, !dbg !3418

lor.lhs.false:                                    ; preds = %land.lhs.true23
  %decl_flag_1 = getelementptr inbounds %union.tree_node, %union.tree_node* %base2.0.lcssa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3419
  %6 = bitcast i40* %decl_flag_1 to i64*, !dbg !3419
  %bf.load26 = load i64, i64* %6, align 8, !dbg !3419
  %bf.cast295 = and i64 %bf.load26, 33554432, !dbg !3419
  %tobool30 = icmp eq i64 %bf.cast295, 0, !dbg !3419
  br i1 %tobool30, label %land.lhs.true31, label %lor.lhs.false34, !dbg !3420

land.lhs.true31:                                  ; preds = %lor.lhs.false
  %7 = load i8 (%union.tree_node*)*, i8 (%union.tree_node*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 49), align 8, !dbg !3421
  %call32 = tail call zeroext i8 %7(%union.tree_node* %base2.0.lcssa) #6, !dbg !3422
  %tobool33 = icmp eq i8 %call32, 0, !dbg !3422
  br i1 %tobool33, label %land.lhs.true31.lor.lhs.false34_crit_edge, label %if.then43, !dbg !3423

land.lhs.true31.lor.lhs.false34_crit_edge:        ; preds = %land.lhs.true31
  %bf.load36.pre = load i64, i64* %3, align 8, !dbg !3424
  %.pre = and i64 %bf.load36.pre, 65535, !dbg !3424
  br label %lor.lhs.false34, !dbg !3423

lor.lhs.false34:                                  ; preds = %land.lhs.true31.lor.lhs.false34_crit_edge, %lor.lhs.false, %land.lhs.true16, %land.lhs.true, %while.end
  %bf.cast38.pre-phi = phi i64 [ %.pre, %land.lhs.true31.lor.lhs.false34_crit_edge ], [ %bf.cast8, %lor.lhs.false ], [ %bf.cast8, %land.lhs.true16 ], [ %bf.cast8, %land.lhs.true ], [ %bf.cast8, %while.end ], !dbg !3424
  %arrayidx40 = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast38.pre-phi, !dbg !3424
  %8 = load i32, i32* %arrayidx40, align 4, !dbg !3424
  %cmp41 = icmp eq i32 %8, 1, !dbg !3424
  br i1 %cmp41, label %if.then43, label %cleanup82, !dbg !3425

if.then43:                                        ; preds = %land.lhs.true31, %land.lhs.true23, %lor.lhs.false34
  call void @llvm.dbg.value(metadata %union.tree_node* %op, metadata !3394, metadata !DIExpression()), !dbg !3406
  br label %while.cond44, !dbg !3426

while.cond44:                                     ; preds = %if.end61, %if.then43
  %base2.1 = phi %union.tree_node* [ %op, %if.then43 ], [ %11, %if.end61 ], !dbg !3428
  call void @llvm.dbg.value(metadata %union.tree_node* %base2.1, metadata !3394, metadata !DIExpression()), !dbg !3406
  %call45 = tail call fastcc zeroext i8 @handled_component_p(%union.tree_node* %base2.1) #8, !dbg !3429
  %tobool46 = icmp eq i8 %call45, 0, !dbg !3426
  br i1 %tobool46, label %cleanup82.loopexit, label %while.body47, !dbg !3426

while.body47:                                     ; preds = %while.cond44
  %9 = getelementptr inbounds %union.tree_node, %union.tree_node* %base2.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3430
  %bf.load49 = load i64, i64* %9, align 8, !dbg !3430
  %bf.cast512 = and i64 %bf.load49, 65535, !dbg !3433
  %cmp52 = icmp eq i64 %bf.cast512, 45, !dbg !3433
  br i1 %cmp52, label %land.lhs.true54, label %if.end61, !dbg !3434

land.lhs.true54:                                  ; preds = %while.body47
  %operands56 = getelementptr inbounds %union.tree_node, %union.tree_node* %base2.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3435
  %arrayidx57 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands56, i64 1, !dbg !3435
  %10 = load %union.tree_node*, %union.tree_node** %arrayidx57, align 8, !dbg !3435
  %call58 = tail call fastcc zeroext i8 @constant_after_peeling(%union.tree_node* %10, %union.gimple_statement_d* %stmt, %struct.loop* %loop) #8, !dbg !3436
  %tobool59 = icmp eq i8 %call58, 0, !dbg !3436
  br i1 %tobool59, label %cleanup82.loopexit, label %if.end61, !dbg !3437

if.end61:                                         ; preds = %land.lhs.true54, %while.body47
  %operands63 = getelementptr inbounds %union.tree_node, %union.tree_node* %base2.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3438
  %11 = load %union.tree_node*, %union.tree_node** %operands63, align 8, !dbg !3438
  call void @llvm.dbg.value(metadata %union.tree_node* %11, metadata !3394, metadata !DIExpression()), !dbg !3406
  br label %while.cond44, !dbg !3426, !llvm.loop !3439

if.end67:                                         ; preds = %if.end
  %call68 = tail call fastcc %struct.loop* @loop_containing_stmt(%union.gimple_statement_d* %stmt) #8, !dbg !3441
  call void @llvm.dbg.value(metadata %struct.affine_iv* %iv, metadata !3387, metadata !DIExpression(DW_OP_deref)), !dbg !3397
  %call69 = call zeroext i8 @simple_iv(%struct.loop* %loop, %struct.loop* %call68, %union.tree_node* %op, %struct.affine_iv* nonnull %iv, i8 zeroext 0) #6, !dbg !3443
  %tobool70 = icmp eq i8 %call69, 0, !dbg !3443
  br i1 %tobool70, label %cleanup82, label %if.end72, !dbg !3444

if.end72:                                         ; preds = %if.end67
  %base73 = getelementptr inbounds %struct.affine_iv, %struct.affine_iv* %iv, i64 0, i32 0, !dbg !3445
  %12 = load %union.tree_node*, %union.tree_node** %base73, align 8, !dbg !3445
  %call74 = call zeroext i8 @is_gimple_min_invariant(%union.tree_node* %12) #6, !dbg !3447
  %tobool75 = icmp eq i8 %call74, 0, !dbg !3447
  br i1 %tobool75, label %cleanup82, label %if.end77, !dbg !3448

if.end77:                                         ; preds = %if.end72
  %step = getelementptr inbounds %struct.affine_iv, %struct.affine_iv* %iv, i64 0, i32 1, !dbg !3449
  %13 = load %union.tree_node*, %union.tree_node** %step, align 8, !dbg !3449
  %call78 = call zeroext i8 @is_gimple_min_invariant(%union.tree_node* %13) #6, !dbg !3451
  %tobool79 = icmp ne i8 %call78, 0, !dbg !3451
  %. = zext i1 %tobool79 to i8, !dbg !3397
  br label %cleanup82, !dbg !3397

cleanup82.loopexit:                               ; preds = %while.cond44, %land.lhs.true54
  %retval.1.ph = phi i8 [ 1, %while.cond44 ], [ 0, %land.lhs.true54 ]
  br label %cleanup82, !dbg !3452

cleanup82:                                        ; preds = %cleanup82.loopexit, %if.end72, %if.end67, %entry, %if.end77, %lor.lhs.false34
  %retval.1 = phi i8 [ 1, %entry ], [ 0, %lor.lhs.false34 ], [ 0, %if.end67 ], [ 0, %if.end72 ], [ %., %if.end77 ], [ %retval.1.ph, %cleanup82.loopexit ], !dbg !3397
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7, !dbg !3452
  ret i8 %retval.1, !dbg !3452
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3453 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3457, metadata !DIExpression()), !dbg !3458
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #8, !dbg !3459
  ret %union.tree_node* %call, !dbg !3460
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3461 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3463, metadata !DIExpression()), !dbg !3464
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #8, !dbg !3465
  ret %union.tree_node* %call, !dbg !3466
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_assign_rhs_class(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3467 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3471, metadata !DIExpression()), !dbg !3472
  %call = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %gs) #8, !dbg !3473
  %call1 = tail call fastcc i32 @get_gimple_rhs_class(i32 %call) #8, !dbg !3474
  ret i32 %call1, !dbg !3475
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3476 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3478, metadata !DIExpression()), !dbg !3479
  %call = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) #8, !dbg !3480
  %cmp = icmp ugt i32 %call, 2, !dbg !3482
  br i1 %cmp, label %if.then, label %return, !dbg !3483

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 2) #8, !dbg !3484
  br label %return, !dbg !3485

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %call1, %if.then ], [ null, %entry ], !dbg !3486
  ret %union.tree_node* %retval.0, !dbg !3487
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_cond_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3488 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3490, metadata !DIExpression()), !dbg !3491
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #8, !dbg !3492
  ret %union.tree_node* %call, !dbg !3493
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_cond_rhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3494 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3496, metadata !DIExpression()), !dbg !3497
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #8, !dbg !3498
  ret %union.tree_node* %call, !dbg !3499
}

declare dso_local zeroext i8 @is_gimple_min_invariant(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @handled_component_p(%union.tree_node* %t) unnamed_addr #0 !dbg !3500 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !3507, metadata !DIExpression()), !dbg !3508
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3509
  %bf.load = load i64, i64* %0, align 8, !dbg !3509
  %1 = trunc i64 %bf.load to i16, !dbg !3509
  switch i16 %1, label %sw.default [
    i16 42, label %return
    i16 41, label %return
    i16 45, label %return
    i16 46, label %return
    i16 118, label %return
    i16 43, label %return
    i16 44, label %return
  ], !dbg !3510

sw.default:                                       ; preds = %entry
  br label %return, !dbg !3511

return:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %sw.default
  %retval.0 = phi i8 [ 0, %sw.default ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], !dbg !3513
  ret i8 %retval.0, !dbg !3514
}

declare dso_local zeroext i8 @simple_iv(%struct.loop*, %struct.loop*, %union.tree_node*, %struct.affine_iv*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @loop_containing_stmt(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !3515 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3520, metadata !DIExpression()), !dbg !3522
  %call = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %stmt) #8, !dbg !3523
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !3521, metadata !DIExpression()), !dbg !3522
  %tobool = icmp eq %struct.basic_block_def* %call, null, !dbg !3524
  br i1 %tobool, label %cleanup, label %if.end, !dbg !3526

if.end:                                           ; preds = %entry
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 3, !dbg !3527
  %0 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !3527
  br label %cleanup, !dbg !3528

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.loop* [ %0, %if.end ], [ null, %entry ], !dbg !3522
  ret %struct.loop* %retval.0, !dbg !3529
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3530 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3534, metadata !DIExpression()), !dbg !3535
  %bb = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 4, !dbg !3536
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !3536
  ret %struct.basic_block_def* %0, !dbg !3537
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3538 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3542, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i32 %i, metadata !3543, metadata !DIExpression()), !dbg !3544
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #8, !dbg !3545
  %tobool = icmp eq i8 %call, 0, !dbg !3545
  br i1 %tobool, label %return, label %if.then, !dbg !3547

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #8, !dbg !3548
  %idxprom = zext i32 %i to i64, !dbg !3548
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 %idxprom, !dbg !3548
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3548
  br label %return, !dbg !3550

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ null, %entry ], !dbg !3551
  ret %union.tree_node* %retval.0, !dbg !3552
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3553 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3557, metadata !DIExpression()), !dbg !3558
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !3559
  %cmp = icmp eq i32 %call, 0, !dbg !3560
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !3561

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !3562
  %cmp2 = icmp ult i32 %call1, 10, !dbg !3563
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !3564
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3565 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3569, metadata !DIExpression()), !dbg !3571
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #8, !dbg !3572
  %idxprom = zext i32 %call to i64, !dbg !3573
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !3573
  %0 = load i64, i64* %arrayidx, align 8, !dbg !3573
  call void @llvm.dbg.value(metadata i64 %0, metadata !3570, metadata !DIExpression()), !dbg !3571
  %cmp = icmp eq i64 %0, 0, !dbg !3574
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3574

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3574
  br label %cond.end, !dbg !3574

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !3575
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !3576
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !3577
  ret %union.tree_node** %2, !dbg !3578
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3579 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3583, metadata !DIExpression()), !dbg !3584
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !3585
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #8, !dbg !3586
  ret i32 %call1, !dbg !3587
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !3588 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3592, metadata !DIExpression()), !dbg !3593
  %idxprom = zext i32 %code to i64, !dbg !3594
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !3594
  %0 = load i32, i32* %arrayidx, align 4, !dbg !3594
  ret i32 %0, !dbg !3595
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 %code) unnamed_addr #0 !dbg !3596 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3600, metadata !DIExpression()), !dbg !3601
  %idxprom = sext i32 %code to i64, !dbg !3602
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimple_rhs_class_table, i64 0, i64 %idxprom, !dbg !3602
  %0 = load i8, i8* %arrayidx, align 1, !dbg !3602
  %conv = zext i8 %0 to i32, !dbg !3603
  ret i32 %conv, !dbg !3604
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3605 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3609, metadata !DIExpression()), !dbg !3611
  %call = tail call fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %gs) #8, !dbg !3612
  call void @llvm.dbg.value(metadata i32 %call, metadata !3610, metadata !DIExpression()), !dbg !3611
  %call1 = tail call fastcc i32 @get_gimple_rhs_class(i32 %call) #8, !dbg !3613
  %cmp = icmp eq i32 %call1, 3, !dbg !3615
  br i1 %cmp, label %if.then, label %if.end, !dbg !3616

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) #8, !dbg !3617
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3617
  %bf.load = load i64, i64* %0, align 8, !dbg !3617
  %1 = trunc i64 %bf.load to i32, !dbg !3617
  %bf.cast = and i32 %1, 65535, !dbg !3617
  call void @llvm.dbg.value(metadata i32 %bf.cast, metadata !3610, metadata !DIExpression()), !dbg !3611
  br label %if.end, !dbg !3618

if.end:                                           ; preds = %if.then, %entry
  %code.0 = phi i32 [ %bf.cast, %if.then ], [ %call, %entry ], !dbg !3611
  call void @llvm.dbg.value(metadata i32 %code.0, metadata !3610, metadata !DIExpression()), !dbg !3611
  ret i32 %code.0, !dbg !3619
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !3620 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3622, metadata !DIExpression()), !dbg !3624
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #8, !dbg !3625
  call void @llvm.dbg.value(metadata i32 %call, metadata !3623, metadata !DIExpression()), !dbg !3624
  switch i32 %call, label %if.else4 [
    i32 6, label %if.then
    i32 1, label %if.then
    i32 8, label %cleanup
  ], !dbg !3626

if.then:                                          ; preds = %entry, %entry
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !3628
  %bf.load = load i32, i32* %0, align 8, !dbg !3628
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3628
  br label %cleanup, !dbg !3629

if.else4:                                         ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i32 1446, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3630
  br label %cleanup, !dbg !3632

cleanup:                                          ; preds = %entry, %if.else4, %if.then
  %retval.0 = phi i32 [ %bf.lshr, %if.then ], [ 0, %if.else4 ], [ 59, %entry ], !dbg !3624
  ret i32 %retval.0, !dbg !3633
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3634 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3638, metadata !DIExpression()), !dbg !3639
  %num_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 3, !dbg !3640
  %0 = load i32, i32* %num_ops, align 4, !dbg !3640
  ret i32 %0, !dbg !3641
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_cond_set_lhs(%union.gimple_statement_d* %gs, %union.tree_node* %lhs) unnamed_addr #0 !dbg !3642 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3646, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata %union.tree_node* %lhs, metadata !3647, metadata !DIExpression()), !dbg !3648
  tail call fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 0, %union.tree_node* %lhs) #8, !dbg !3649
  ret void, !dbg !3650
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_cond_set_rhs(%union.gimple_statement_d* %gs, %union.tree_node* %rhs) unnamed_addr #0 !dbg !3651 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3653, metadata !DIExpression()), !dbg !3655
  call void @llvm.dbg.value(metadata %union.tree_node* %rhs, metadata !3654, metadata !DIExpression()), !dbg !3655
  tail call fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 1, %union.tree_node* %rhs) #8, !dbg !3656
  ret void, !dbg !3657
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 %i, %union.tree_node* %op) unnamed_addr #0 !dbg !3658 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3662, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata i32 %i, metadata !3663, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata %union.tree_node* %op, metadata !3664, metadata !DIExpression()), !dbg !3665
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #8, !dbg !3666
  %tobool = icmp eq i8 %call, 0, !dbg !3666
  br i1 %tobool, label %cond.true, label %land.lhs.true, !dbg !3666

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) #8, !dbg !3666
  %cmp = icmp ugt i32 %call1, %i, !dbg !3666
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !3666

cond.true:                                        ; preds = %entry, %land.lhs.true
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i32 1665, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3666
  br label %cond.end, !dbg !3666

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %call3 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #8, !dbg !3667
  %idxprom = zext i32 %i to i64, !dbg !3667
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call3, i64 %idxprom, !dbg !3667
  store %union.tree_node* %op, %union.tree_node** %arrayidx, align 8, !dbg !3668
  ret void, !dbg !3669
}

declare dso_local void @gimple_set_modified(%union.gimple_statement_d*, i8 zeroext) local_unnamed_addr #2

declare dso_local void @update_stmt_operands(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3670 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3674, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3675, metadata !DIExpression()), !dbg !3676
  br label %land.end, !dbg !3677

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3677
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3677
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !3677
  ret %struct.edge_def* %0, !dbg !3677
}

declare dso_local %union.tree_node* @fold_build2_stat_loc(i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_int_cst(%union.tree_node*, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3678 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3680, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !3681, metadata !DIExpression()), !dbg !3684
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #8, !dbg !3685
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !3682, metadata !DIExpression()), !dbg !3683
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %call) #8, !dbg !3686
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !3687
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3688
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !3689
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !3690
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !3691
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !3692
  ret void, !dbg !3693
}

declare dso_local void @create_iv(%union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.loop*, %struct.gimple_stmt_iterator*, i8 zeroext, %union.tree_node**, %union.tree_node**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_cond_set_code(%union.gimple_statement_d* %gs, i32 %code) unnamed_addr #0 !dbg !3694 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3698, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i32 %code, metadata !3699, metadata !DIExpression()), !dbg !3700
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 0, !dbg !3701
  %bf.load = load i32, i32* %0, align 8, !dbg !3702
  %bf.shl = shl i32 %code, 16, !dbg !3702
  %bf.clear = and i32 %bf.load, 65535, !dbg !3702
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !3702
  store i32 %bf.set, i32* %0, align 8, !dbg !3702
  ret void, !dbg !3703
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !3704 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !3706, metadata !DIExpression()), !dbg !3707
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !3708
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3708

cond.true:                                        ; preds = %entry
  %last = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 1, !dbg !3709
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %last, align 8, !dbg !3709
  br label %cond.end, !dbg !3708

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !3708
  ret %struct.gimple_seq_node_d* %cond, !dbg !3710
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_base_iterate(%struct.VEC_int_base* %vec_, i32 %ix_, i32* %ptr) unnamed_addr #0 !dbg !3711 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !3717, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3718, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i32* %ptr, metadata !3719, metadata !DIExpression()), !dbg !3720
  %tobool = icmp eq %struct.VEC_int_base* %vec_, null, !dbg !3721
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !3721

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !3721
  %0 = load i32, i32* %num, align 4, !dbg !3721
  %cmp = icmp ugt i32 %0, %ix_, !dbg !3721
  br i1 %cmp, label %if.then, label %if.else, !dbg !3723

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !3724
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3724
  %1 = load i32, i32* %arrayidx, align 4, !dbg !3724
  br label %return, !dbg !3724

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !3726

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ 0, %if.else ], [ %1, %if.then ], !dbg !3728
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !3728
  store i32 %storemerge, i32* %ptr, align 4, !dbg !3728
  ret i32 %retval.0, !dbg !3723
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @get_loop(i32 %num) unnamed_addr #0 !dbg !3729 {
entry:
  call void @llvm.dbg.value(metadata i32 %num, metadata !3733, metadata !DIExpression()), !dbg !3734
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3735
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !3735
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !3735
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 1, !dbg !3735
  %2 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !3735
  %tobool = icmp eq %struct.VEC_loop_p_gc* %2, null, !dbg !3735
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3735

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %2, i64 0, i32 0, !dbg !3735
  br label %cond.end, !dbg !3735

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3735
  %call = tail call fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %cond, i32 %num) #8, !dbg !3735
  ret %struct.loop* %call, !dbg !3736
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** %vec_) unnamed_addr #0 !dbg !3737 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %vec_, metadata !3742, metadata !DIExpression()), !dbg !3743
  %0 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %vec_, align 8, !dbg !3744
  %tobool = icmp eq %struct.VEC_int_heap* %0, null, !dbg !3744
  br i1 %tobool, label %if.end, label %if.then, !dbg !3746

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_int_heap* %0 to i8*, !dbg !3746
  tail call void @free(i8* nonnull %1) #6, !dbg !3744
  br label %if.end, !dbg !3744

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_int_heap* null, %struct.VEC_int_heap** %vec_, align 8, !dbg !3746
  ret void, !dbg !3746
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3747 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !3751, metadata !DIExpression()), !dbg !3753
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3752, metadata !DIExpression()), !dbg !3753
  br label %land.end, !dbg !3754

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3754
  %arrayidx = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3754
  %0 = load %struct.loop*, %struct.loop** %arrayidx, align 8, !dbg !3754
  ret %struct.loop* %0, !dbg !3754
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

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1874, !1875, !1876}
!llvm.ident = !{!1877}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !464, nameTableKind: None)
!1 = !DIFile(filename: "tree-ssa-loop-ivcanon.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{!3, !132, !138, !143, !148, !167, !174, !181, !375, !384, !388, !393, !432, !458}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "machine_mode", file: !4, line: 7, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./insn-modes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131}
!7 = !DIEnumerator(name: "VOIDmode", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "BLKmode", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "CCmode", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "CCGCmode", value: 3, isUnsigned: true)
!11 = !DIEnumerator(name: "CCGOCmode", value: 4, isUnsigned: true)
!12 = !DIEnumerator(name: "CCNOmode", value: 5, isUnsigned: true)
!13 = !DIEnumerator(name: "CCAmode", value: 6, isUnsigned: true)
!14 = !DIEnumerator(name: "CCCmode", value: 7, isUnsigned: true)
!15 = !DIEnumerator(name: "CCOmode", value: 8, isUnsigned: true)
!16 = !DIEnumerator(name: "CCSmode", value: 9, isUnsigned: true)
!17 = !DIEnumerator(name: "CCZmode", value: 10, isUnsigned: true)
!18 = !DIEnumerator(name: "CCFPmode", value: 11, isUnsigned: true)
!19 = !DIEnumerator(name: "CCFPUmode", value: 12, isUnsigned: true)
!20 = !DIEnumerator(name: "BImode", value: 13, isUnsigned: true)
!21 = !DIEnumerator(name: "QImode", value: 14, isUnsigned: true)
!22 = !DIEnumerator(name: "HImode", value: 15, isUnsigned: true)
!23 = !DIEnumerator(name: "SImode", value: 16, isUnsigned: true)
!24 = !DIEnumerator(name: "DImode", value: 17, isUnsigned: true)
!25 = !DIEnumerator(name: "TImode", value: 18, isUnsigned: true)
!26 = !DIEnumerator(name: "OImode", value: 19, isUnsigned: true)
!27 = !DIEnumerator(name: "QQmode", value: 20, isUnsigned: true)
!28 = !DIEnumerator(name: "HQmode", value: 21, isUnsigned: true)
!29 = !DIEnumerator(name: "SQmode", value: 22, isUnsigned: true)
!30 = !DIEnumerator(name: "DQmode", value: 23, isUnsigned: true)
!31 = !DIEnumerator(name: "TQmode", value: 24, isUnsigned: true)
!32 = !DIEnumerator(name: "UQQmode", value: 25, isUnsigned: true)
!33 = !DIEnumerator(name: "UHQmode", value: 26, isUnsigned: true)
!34 = !DIEnumerator(name: "USQmode", value: 27, isUnsigned: true)
!35 = !DIEnumerator(name: "UDQmode", value: 28, isUnsigned: true)
!36 = !DIEnumerator(name: "UTQmode", value: 29, isUnsigned: true)
!37 = !DIEnumerator(name: "HAmode", value: 30, isUnsigned: true)
!38 = !DIEnumerator(name: "SAmode", value: 31, isUnsigned: true)
!39 = !DIEnumerator(name: "DAmode", value: 32, isUnsigned: true)
!40 = !DIEnumerator(name: "TAmode", value: 33, isUnsigned: true)
!41 = !DIEnumerator(name: "UHAmode", value: 34, isUnsigned: true)
!42 = !DIEnumerator(name: "USAmode", value: 35, isUnsigned: true)
!43 = !DIEnumerator(name: "UDAmode", value: 36, isUnsigned: true)
!44 = !DIEnumerator(name: "UTAmode", value: 37, isUnsigned: true)
!45 = !DIEnumerator(name: "SFmode", value: 38, isUnsigned: true)
!46 = !DIEnumerator(name: "DFmode", value: 39, isUnsigned: true)
!47 = !DIEnumerator(name: "XFmode", value: 40, isUnsigned: true)
!48 = !DIEnumerator(name: "TFmode", value: 41, isUnsigned: true)
!49 = !DIEnumerator(name: "SDmode", value: 42, isUnsigned: true)
!50 = !DIEnumerator(name: "DDmode", value: 43, isUnsigned: true)
!51 = !DIEnumerator(name: "TDmode", value: 44, isUnsigned: true)
!52 = !DIEnumerator(name: "CQImode", value: 45, isUnsigned: true)
!53 = !DIEnumerator(name: "CHImode", value: 46, isUnsigned: true)
!54 = !DIEnumerator(name: "CSImode", value: 47, isUnsigned: true)
!55 = !DIEnumerator(name: "CDImode", value: 48, isUnsigned: true)
!56 = !DIEnumerator(name: "CTImode", value: 49, isUnsigned: true)
!57 = !DIEnumerator(name: "COImode", value: 50, isUnsigned: true)
!58 = !DIEnumerator(name: "SCmode", value: 51, isUnsigned: true)
!59 = !DIEnumerator(name: "DCmode", value: 52, isUnsigned: true)
!60 = !DIEnumerator(name: "XCmode", value: 53, isUnsigned: true)
!61 = !DIEnumerator(name: "TCmode", value: 54, isUnsigned: true)
!62 = !DIEnumerator(name: "V2QImode", value: 55, isUnsigned: true)
!63 = !DIEnumerator(name: "V4QImode", value: 56, isUnsigned: true)
!64 = !DIEnumerator(name: "V2HImode", value: 57, isUnsigned: true)
!65 = !DIEnumerator(name: "V1SImode", value: 58, isUnsigned: true)
!66 = !DIEnumerator(name: "V8QImode", value: 59, isUnsigned: true)
!67 = !DIEnumerator(name: "V4HImode", value: 60, isUnsigned: true)
!68 = !DIEnumerator(name: "V2SImode", value: 61, isUnsigned: true)
!69 = !DIEnumerator(name: "V1DImode", value: 62, isUnsigned: true)
!70 = !DIEnumerator(name: "V16QImode", value: 63, isUnsigned: true)
!71 = !DIEnumerator(name: "V8HImode", value: 64, isUnsigned: true)
!72 = !DIEnumerator(name: "V4SImode", value: 65, isUnsigned: true)
!73 = !DIEnumerator(name: "V2DImode", value: 66, isUnsigned: true)
!74 = !DIEnumerator(name: "V1TImode", value: 67, isUnsigned: true)
!75 = !DIEnumerator(name: "V32QImode", value: 68, isUnsigned: true)
!76 = !DIEnumerator(name: "V16HImode", value: 69, isUnsigned: true)
!77 = !DIEnumerator(name: "V8SImode", value: 70, isUnsigned: true)
!78 = !DIEnumerator(name: "V4DImode", value: 71, isUnsigned: true)
!79 = !DIEnumerator(name: "V2TImode", value: 72, isUnsigned: true)
!80 = !DIEnumerator(name: "V64QImode", value: 73, isUnsigned: true)
!81 = !DIEnumerator(name: "V32HImode", value: 74, isUnsigned: true)
!82 = !DIEnumerator(name: "V16SImode", value: 75, isUnsigned: true)
!83 = !DIEnumerator(name: "V8DImode", value: 76, isUnsigned: true)
!84 = !DIEnumerator(name: "V4TImode", value: 77, isUnsigned: true)
!85 = !DIEnumerator(name: "V2SFmode", value: 78, isUnsigned: true)
!86 = !DIEnumerator(name: "V4SFmode", value: 79, isUnsigned: true)
!87 = !DIEnumerator(name: "V2DFmode", value: 80, isUnsigned: true)
!88 = !DIEnumerator(name: "V8SFmode", value: 81, isUnsigned: true)
!89 = !DIEnumerator(name: "V4DFmode", value: 82, isUnsigned: true)
!90 = !DIEnumerator(name: "V2TFmode", value: 83, isUnsigned: true)
!91 = !DIEnumerator(name: "V16SFmode", value: 84, isUnsigned: true)
!92 = !DIEnumerator(name: "V8DFmode", value: 85, isUnsigned: true)
!93 = !DIEnumerator(name: "V4TFmode", value: 86, isUnsigned: true)
!94 = !DIEnumerator(name: "MAX_MACHINE_MODE", value: 87, isUnsigned: true)
!95 = !DIEnumerator(name: "MIN_MODE_RANDOM", value: 0, isUnsigned: true)
!96 = !DIEnumerator(name: "MAX_MODE_RANDOM", value: 1, isUnsigned: true)
!97 = !DIEnumerator(name: "MIN_MODE_CC", value: 2, isUnsigned: true)
!98 = !DIEnumerator(name: "MAX_MODE_CC", value: 12, isUnsigned: true)
!99 = !DIEnumerator(name: "MIN_MODE_INT", value: 14, isUnsigned: true)
!100 = !DIEnumerator(name: "MAX_MODE_INT", value: 19, isUnsigned: true)
!101 = !DIEnumerator(name: "MIN_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!102 = !DIEnumerator(name: "MAX_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!103 = !DIEnumerator(name: "MIN_MODE_FRACT", value: 20, isUnsigned: true)
!104 = !DIEnumerator(name: "MAX_MODE_FRACT", value: 24, isUnsigned: true)
!105 = !DIEnumerator(name: "MIN_MODE_UFRACT", value: 25, isUnsigned: true)
!106 = !DIEnumerator(name: "MAX_MODE_UFRACT", value: 29, isUnsigned: true)
!107 = !DIEnumerator(name: "MIN_MODE_ACCUM", value: 30, isUnsigned: true)
!108 = !DIEnumerator(name: "MAX_MODE_ACCUM", value: 33, isUnsigned: true)
!109 = !DIEnumerator(name: "MIN_MODE_UACCUM", value: 34, isUnsigned: true)
!110 = !DIEnumerator(name: "MAX_MODE_UACCUM", value: 37, isUnsigned: true)
!111 = !DIEnumerator(name: "MIN_MODE_FLOAT", value: 38, isUnsigned: true)
!112 = !DIEnumerator(name: "MAX_MODE_FLOAT", value: 41, isUnsigned: true)
!113 = !DIEnumerator(name: "MIN_MODE_DECIMAL_FLOAT", value: 42, isUnsigned: true)
!114 = !DIEnumerator(name: "MAX_MODE_DECIMAL_FLOAT", value: 44, isUnsigned: true)
!115 = !DIEnumerator(name: "MIN_MODE_COMPLEX_INT", value: 45, isUnsigned: true)
!116 = !DIEnumerator(name: "MAX_MODE_COMPLEX_INT", value: 50, isUnsigned: true)
!117 = !DIEnumerator(name: "MIN_MODE_COMPLEX_FLOAT", value: 51, isUnsigned: true)
!118 = !DIEnumerator(name: "MAX_MODE_COMPLEX_FLOAT", value: 54, isUnsigned: true)
!119 = !DIEnumerator(name: "MIN_MODE_VECTOR_INT", value: 55, isUnsigned: true)
!120 = !DIEnumerator(name: "MAX_MODE_VECTOR_INT", value: 77, isUnsigned: true)
!121 = !DIEnumerator(name: "MIN_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!122 = !DIEnumerator(name: "MAX_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!123 = !DIEnumerator(name: "MIN_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!124 = !DIEnumerator(name: "MAX_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!125 = !DIEnumerator(name: "MIN_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!126 = !DIEnumerator(name: "MAX_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!127 = !DIEnumerator(name: "MIN_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!128 = !DIEnumerator(name: "MAX_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!129 = !DIEnumerator(name: "MIN_MODE_VECTOR_FLOAT", value: 78, isUnsigned: true)
!130 = !DIEnumerator(name: "MAX_MODE_VECTOR_FLOAT", value: 86, isUnsigned: true)
!131 = !DIEnumerator(name: "NUM_MACHINE_MODES", value: 87, isUnsigned: true)
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !133, line: 363, baseType: !5, size: 32, elements: !134)
!133 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!134 = !{!135, !136, !137}
!135 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!136 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!137 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !133, line: 355, baseType: !5, size: 32, elements: !139)
!139 = !{!140, !141, !142}
!140 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!141 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!142 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !144, line: 474, baseType: !5, size: 32, elements: !145)
!144 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!145 = !{!146, !147}
!146 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!147 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !149, line: 280, baseType: !5, size: 32, elements: !150)
!149 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!150 = !{!151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166}
!151 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!152 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!153 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!154 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!155 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!156 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!157 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!158 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!159 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!160 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!161 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!162 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!163 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!164 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!165 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!166 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!167 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !149, line: 1817, baseType: !5, size: 32, elements: !168)
!168 = !{!169, !170, !171, !172, !173}
!169 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!170 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!171 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!172 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!173 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!174 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !149, line: 1805, baseType: !5, size: 32, elements: !175)
!175 = !{!176, !177, !178, !179, !180}
!176 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!177 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!178 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!179 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!180 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !149, line: 39, baseType: !5, size: 32, elements: !182)
!182 = !{!183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374}
!183 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!184 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!185 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!186 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!187 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!188 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!189 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!190 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!191 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!192 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!193 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!194 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!195 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!196 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!197 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!198 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!199 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!200 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!201 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!202 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!203 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!204 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!205 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!206 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!207 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!208 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!209 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!210 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!211 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!212 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!213 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!214 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!215 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!216 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!217 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!218 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!219 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!220 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!221 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!222 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!223 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!224 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!225 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!226 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!227 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!228 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!229 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!230 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!231 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!232 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!233 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!234 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!235 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!236 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!237 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!238 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!239 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!240 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!241 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!242 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!243 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!244 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!245 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!246 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!247 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!248 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!249 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!250 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!251 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!252 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!253 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!254 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!255 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!256 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!257 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!258 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!259 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!260 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!261 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!262 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!263 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!264 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!265 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!266 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!267 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!268 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!269 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!270 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!271 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!272 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!273 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!274 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!275 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!276 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!277 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!278 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!279 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!280 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!281 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!282 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!283 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!284 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!285 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!286 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!287 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!288 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!289 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!290 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!291 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!292 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!293 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!294 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!295 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!296 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!297 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!298 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!299 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!300 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!301 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!302 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!303 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!304 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!305 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!306 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!307 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!308 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!309 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!310 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!311 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!312 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!313 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!314 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!315 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!316 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!317 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!318 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!319 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!320 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!321 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!322 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!323 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!324 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!325 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!326 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!327 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!328 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!329 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!330 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!331 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!332 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!333 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!334 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!335 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!336 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!337 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!338 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!339 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!340 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!341 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!342 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!343 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!344 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!345 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!346 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!347 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!348 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!349 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!350 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!351 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!352 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!353 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!354 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!355 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!356 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!357 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!358 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!359 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!360 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!361 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!362 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!363 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!364 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!365 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!366 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!367 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!368 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!369 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!370 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!371 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!372 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!373 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!374 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!375 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lpt_dec", file: !376, line: 31, baseType: !5, size: 32, elements: !377)
!376 = !DIFile(filename: "./cfgloop.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!377 = !{!378, !379, !380, !381, !382, !383}
!378 = !DIEnumerator(name: "LPT_NONE", value: 0, isUnsigned: true)
!379 = !DIEnumerator(name: "LPT_PEEL_COMPLETELY", value: 1, isUnsigned: true)
!380 = !DIEnumerator(name: "LPT_PEEL_SIMPLE", value: 2, isUnsigned: true)
!381 = !DIEnumerator(name: "LPT_UNROLL_CONSTANT", value: 3, isUnsigned: true)
!382 = !DIEnumerator(name: "LPT_UNROLL_RUNTIME", value: 4, isUnsigned: true)
!383 = !DIEnumerator(name: "LPT_UNROLL_STUPID", value: 5, isUnsigned: true)
!384 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "loop_estimation", file: !376, line: 91, baseType: !5, size: 32, elements: !385)
!385 = !{!386, !387}
!386 = !DIEnumerator(name: "EST_NOT_COMPUTED", value: 0, isUnsigned: true)
!387 = !DIEnumerator(name: "EST_AVAILABLE", value: 1, isUnsigned: true)
!388 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "unroll_level", file: !1, line: 61, baseType: !5, size: 32, elements: !389)
!389 = !{!390, !391, !392}
!390 = !DIEnumerator(name: "UL_SINGLE_ITER", value: 0, isUnsigned: true)
!391 = !DIEnumerator(name: "UL_NO_GROWTH", value: 1, isUnsigned: true)
!392 = !DIEnumerator(name: "UL_ALL", value: 2, isUnsigned: true)
!393 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_code", file: !394, line: 51, baseType: !5, size: 32, elements: !395)
!394 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!395 = !{!396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431}
!396 = !DIEnumerator(name: "GIMPLE_ERROR_MARK", value: 0, isUnsigned: true)
!397 = !DIEnumerator(name: "GIMPLE_COND", value: 1, isUnsigned: true)
!398 = !DIEnumerator(name: "GIMPLE_DEBUG", value: 2, isUnsigned: true)
!399 = !DIEnumerator(name: "GIMPLE_GOTO", value: 3, isUnsigned: true)
!400 = !DIEnumerator(name: "GIMPLE_LABEL", value: 4, isUnsigned: true)
!401 = !DIEnumerator(name: "GIMPLE_SWITCH", value: 5, isUnsigned: true)
!402 = !DIEnumerator(name: "GIMPLE_ASSIGN", value: 6, isUnsigned: true)
!403 = !DIEnumerator(name: "GIMPLE_ASM", value: 7, isUnsigned: true)
!404 = !DIEnumerator(name: "GIMPLE_CALL", value: 8, isUnsigned: true)
!405 = !DIEnumerator(name: "GIMPLE_RETURN", value: 9, isUnsigned: true)
!406 = !DIEnumerator(name: "GIMPLE_BIND", value: 10, isUnsigned: true)
!407 = !DIEnumerator(name: "GIMPLE_CATCH", value: 11, isUnsigned: true)
!408 = !DIEnumerator(name: "GIMPLE_EH_FILTER", value: 12, isUnsigned: true)
!409 = !DIEnumerator(name: "GIMPLE_EH_MUST_NOT_THROW", value: 13, isUnsigned: true)
!410 = !DIEnumerator(name: "GIMPLE_RESX", value: 14, isUnsigned: true)
!411 = !DIEnumerator(name: "GIMPLE_EH_DISPATCH", value: 15, isUnsigned: true)
!412 = !DIEnumerator(name: "GIMPLE_PHI", value: 16, isUnsigned: true)
!413 = !DIEnumerator(name: "GIMPLE_TRY", value: 17, isUnsigned: true)
!414 = !DIEnumerator(name: "GIMPLE_NOP", value: 18, isUnsigned: true)
!415 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_LOAD", value: 19, isUnsigned: true)
!416 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_STORE", value: 20, isUnsigned: true)
!417 = !DIEnumerator(name: "GIMPLE_OMP_CONTINUE", value: 21, isUnsigned: true)
!418 = !DIEnumerator(name: "GIMPLE_OMP_CRITICAL", value: 22, isUnsigned: true)
!419 = !DIEnumerator(name: "GIMPLE_OMP_FOR", value: 23, isUnsigned: true)
!420 = !DIEnumerator(name: "GIMPLE_OMP_MASTER", value: 24, isUnsigned: true)
!421 = !DIEnumerator(name: "GIMPLE_OMP_ORDERED", value: 25, isUnsigned: true)
!422 = !DIEnumerator(name: "GIMPLE_OMP_PARALLEL", value: 26, isUnsigned: true)
!423 = !DIEnumerator(name: "GIMPLE_OMP_TASK", value: 27, isUnsigned: true)
!424 = !DIEnumerator(name: "GIMPLE_OMP_RETURN", value: 28, isUnsigned: true)
!425 = !DIEnumerator(name: "GIMPLE_OMP_SECTION", value: 29, isUnsigned: true)
!426 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS", value: 30, isUnsigned: true)
!427 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS_SWITCH", value: 31, isUnsigned: true)
!428 = !DIEnumerator(name: "GIMPLE_OMP_SINGLE", value: 32, isUnsigned: true)
!429 = !DIEnumerator(name: "GIMPLE_PREDICT", value: 33, isUnsigned: true)
!430 = !DIEnumerator(name: "GIMPLE_WITH_CLEANUP_EXPR", value: 34, isUnsigned: true)
!431 = !DIEnumerator(name: "LAST_AND_UNUSED_GIMPLE_CODE", value: 35, isUnsigned: true)
!432 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_statement_structure_enum", file: !394, line: 727, baseType: !5, size: 32, elements: !433)
!433 = !{!434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457}
!434 = !DIEnumerator(name: "GSS_BASE", value: 0, isUnsigned: true)
!435 = !DIEnumerator(name: "GSS_WITH_OPS", value: 1, isUnsigned: true)
!436 = !DIEnumerator(name: "GSS_WITH_MEM_OPS_BASE", value: 2, isUnsigned: true)
!437 = !DIEnumerator(name: "GSS_WITH_MEM_OPS", value: 3, isUnsigned: true)
!438 = !DIEnumerator(name: "GSS_ASM", value: 4, isUnsigned: true)
!439 = !DIEnumerator(name: "GSS_BIND", value: 5, isUnsigned: true)
!440 = !DIEnumerator(name: "GSS_PHI", value: 6, isUnsigned: true)
!441 = !DIEnumerator(name: "GSS_TRY", value: 7, isUnsigned: true)
!442 = !DIEnumerator(name: "GSS_CATCH", value: 8, isUnsigned: true)
!443 = !DIEnumerator(name: "GSS_EH_FILTER", value: 9, isUnsigned: true)
!444 = !DIEnumerator(name: "GSS_EH_MNT", value: 10, isUnsigned: true)
!445 = !DIEnumerator(name: "GSS_EH_CTRL", value: 11, isUnsigned: true)
!446 = !DIEnumerator(name: "GSS_WCE", value: 12, isUnsigned: true)
!447 = !DIEnumerator(name: "GSS_OMP", value: 13, isUnsigned: true)
!448 = !DIEnumerator(name: "GSS_OMP_CRITICAL", value: 14, isUnsigned: true)
!449 = !DIEnumerator(name: "GSS_OMP_FOR", value: 15, isUnsigned: true)
!450 = !DIEnumerator(name: "GSS_OMP_PARALLEL", value: 16, isUnsigned: true)
!451 = !DIEnumerator(name: "GSS_OMP_TASK", value: 17, isUnsigned: true)
!452 = !DIEnumerator(name: "GSS_OMP_SECTIONS", value: 18, isUnsigned: true)
!453 = !DIEnumerator(name: "GSS_OMP_SINGLE", value: 19, isUnsigned: true)
!454 = !DIEnumerator(name: "GSS_OMP_CONTINUE", value: 20, isUnsigned: true)
!455 = !DIEnumerator(name: "GSS_OMP_ATOMIC_LOAD", value: 21, isUnsigned: true)
!456 = !DIEnumerator(name: "GSS_OMP_ATOMIC_STORE", value: 22, isUnsigned: true)
!457 = !DIEnumerator(name: "LAST_GSS_ENUM", value: 23, isUnsigned: true)
!458 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_rhs_class", file: !394, line: 80, baseType: !5, size: 32, elements: !459)
!459 = !{!460, !461, !462, !463}
!460 = !DIEnumerator(name: "GIMPLE_INVALID_RHS", value: 0, isUnsigned: true)
!461 = !DIEnumerator(name: "GIMPLE_BINARY_RHS", value: 1, isUnsigned: true)
!462 = !DIEnumerator(name: "GIMPLE_UNARY_RHS", value: 2, isUnsigned: true)
!463 = !DIEnumerator(name: "GIMPLE_SINGLE_RHS", value: 3, isUnsigned: true)
!464 = !{!465, !466, !467, !468, !471, !472, !474, !489, !181, !5, !534, !1872, !558, !1173, !469, !458, !613, !611, !512, !553}
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!467 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !470)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_int_heap", file: !476, line: 32, baseType: !477)
!476 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_int_heap", file: !476, line: 32, size: 96, elements: !478)
!478 = !{!479}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !477, file: !476, line: 32, baseType: !480, size: 96)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_int_base", file: !476, line: 31, baseType: !481)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_int_base", file: !476, line: 31, size: 96, elements: !482)
!482 = !{!483, !484, !485}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !481, file: !476, line: 31, baseType: !5, size: 32)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !481, file: !476, line: 31, baseType: !5, size: 32, offset: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !481, file: !476, line: 31, baseType: !486, size: 32, offset: 64)
!486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !467, size: 32, elements: !487)
!487 = !{!488}
!488 = !DISubrange(count: 1)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_p", file: !376, line: 84, baseType: !490)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !376, line: 100, size: 1216, elements: !492)
!492 = !{!493, !494, !495, !1836, !1837, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1862, !1870, !1871}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !491, file: !376, line: 102, baseType: !467, size: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "ninsns", scope: !491, file: !376, line: 105, baseType: !5, size: 32, offset: 32)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !491, file: !376, line: 108, baseType: !496, size: 64, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !133, line: 217, size: 832, elements: !498)
!498 = !{!499, !1803, !1804, !1805, !1806, !1810, !1811, !1812, !1830, !1831, !1832, !1833, !1834, !1835}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !497, file: !133, line: 219, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !133, line: 151, baseType: !502)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !133, line: 151, size: 128, elements: !503)
!503 = !{!504}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !502, file: !133, line: 151, baseType: !505, size: 128)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !133, line: 150, baseType: !506)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !133, line: 150, size: 128, elements: !507)
!507 = !{!508, !509, !510}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !506, file: !133, line: 150, baseType: !5, size: 32)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !506, file: !133, line: 150, baseType: !5, size: 32, offset: 32)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !506, file: !133, line: 150, baseType: !511, size: 64, offset: 64)
!511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 64, elements: !487)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !513, line: 108, baseType: !514)
!513 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !133, line: 122, size: 512, elements: !516)
!516 = !{!517, !518, !519, !1795, !1796, !1797, !1798, !1799, !1800, !1801}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !515, file: !133, line: 124, baseType: !496, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !515, file: !133, line: 125, baseType: !496, size: 64, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !515, file: !133, line: 131, baseType: !520, size: 64, offset: 128)
!520 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !133, line: 128, size: 64, elements: !521)
!521 = !{!522, !1794}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !520, file: !133, line: 129, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !513, line: 66, baseType: !524)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !394, line: 143, size: 192, elements: !526)
!526 = !{!527, !1792, !1793}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !525, file: !394, line: 145, baseType: !528, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !513, line: 69, baseType: !529)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !394, line: 136, size: 192, elements: !531)
!531 = !{!532, !1790, !1791}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !530, file: !394, line: 137, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !513, line: 58, baseType: !534)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !394, line: 737, size: 768, elements: !536)
!536 = !{!537, !1637, !1647, !1653, !1658, !1663, !1670, !1676, !1682, !1687, !1701, !1706, !1712, !1717, !1727, !1732, !1748, !1755, !1762, !1768, !1773, !1779, !1785}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !535, file: !394, line: 738, baseType: !538, size: 256)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !394, line: 271, size: 256, elements: !539)
!539 = !{!540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !555, !556, !557}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !538, file: !394, line: 274, baseType: !5, size: 8, flags: DIFlagBitField, extraData: i64 0)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !538, file: !394, line: 277, baseType: !5, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !538, file: !394, line: 281, baseType: !5, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !538, file: !394, line: 284, baseType: !5, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !538, file: !394, line: 291, baseType: !5, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !538, file: !394, line: 295, baseType: !5, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !538, file: !394, line: 298, baseType: !5, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !538, file: !394, line: 301, baseType: !5, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !538, file: !394, line: 307, baseType: !5, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !538, file: !394, line: 312, baseType: !5, size: 32, offset: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !538, file: !394, line: 316, baseType: !551, size: 32, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !552, line: 58, baseType: !553)
!552 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !554, line: 44, baseType: !5)
!554 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!555 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !538, file: !394, line: 319, baseType: !5, size: 32, offset: 96)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !538, file: !394, line: 323, baseType: !496, size: 64, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !538, file: !394, line: 327, baseType: !558, size: 64, offset: 192)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !513, line: 56, baseType: !559)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !149, line: 3371, size: 1792, elements: !561)
!561 = !{!562, !595, !601, !614, !633, !644, !649, !656, !662, !675, !683, !721, !929, !957, !974, !975, !980, !989, !995, !1000, !1004, !1008, !1288, !1335, !1341, !1347, !1354, !1367, !1381, !1398, !1410, !1432, !1447, !1619}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !560, file: !149, line: 3372, baseType: !563, size: 64)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !149, line: 360, size: 64, elements: !564)
!564 = !{!565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !563, file: !149, line: 361, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !563, file: !149, line: 363, baseType: !5, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !563, file: !149, line: 364, baseType: !5, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !563, file: !149, line: 365, baseType: !5, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !563, file: !149, line: 366, baseType: !5, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !563, file: !149, line: 367, baseType: !5, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !563, file: !149, line: 368, baseType: !5, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !563, file: !149, line: 369, baseType: !5, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !563, file: !149, line: 370, baseType: !5, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !563, file: !149, line: 372, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !563, file: !149, line: 373, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !563, file: !149, line: 374, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !563, file: !149, line: 375, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !563, file: !149, line: 376, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !563, file: !149, line: 377, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !563, file: !149, line: 378, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !563, file: !149, line: 379, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !563, file: !149, line: 381, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !563, file: !149, line: 382, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !563, file: !149, line: 383, baseType: !5, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !563, file: !149, line: 384, baseType: !5, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !563, file: !149, line: 385, baseType: !5, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !563, file: !149, line: 386, baseType: !5, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !563, file: !149, line: 387, baseType: !5, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !563, file: !149, line: 388, baseType: !5, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !563, file: !149, line: 390, baseType: !5, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !563, file: !149, line: 391, baseType: !5, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !563, file: !149, line: 392, baseType: !5, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !563, file: !149, line: 394, baseType: !5, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !563, file: !149, line: 399, baseType: !5, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !560, file: !149, line: 3373, baseType: !596, size: 192)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !149, line: 402, size: 192, elements: !597)
!597 = !{!598, !599, !600}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !596, file: !149, line: 403, baseType: !563, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !596, file: !149, line: 404, baseType: !558, size: 64, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !596, file: !149, line: 405, baseType: !558, size: 64, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !560, file: !149, line: 3374, baseType: !602, size: 320)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !149, line: 1384, size: 320, elements: !603)
!603 = !{!604, !605}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !602, file: !149, line: 1385, baseType: !596, size: 192)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !602, file: !149, line: 1386, baseType: !606, size: 128, offset: 192)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !607, line: 58, baseType: !608)
!607 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !607, line: 54, size: 128, elements: !609)
!609 = !{!610, !612}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !608, file: !607, line: 56, baseType: !611, size: 64)
!611 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !608, file: !607, line: 57, baseType: !613, size: 64, offset: 64)
!613 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !560, file: !149, line: 3375, baseType: !615, size: 256)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !149, line: 1397, size: 256, elements: !616)
!616 = !{!617, !618}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !615, file: !149, line: 1398, baseType: !596, size: 192)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !615, file: !149, line: 1399, baseType: !619, size: 64, offset: 192)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !621, line: 52, size: 256, elements: !622)
!621 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!622 = !{!623, !624, !625, !626, !627, !628, !629}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !620, file: !621, line: 56, baseType: !5, size: 2, flags: DIFlagBitField, extraData: i64 0)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !620, file: !621, line: 57, baseType: !5, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !620, file: !621, line: 58, baseType: !5, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !620, file: !621, line: 59, baseType: !5, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !620, file: !621, line: 60, baseType: !5, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !620, file: !621, line: 61, baseType: !5, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !620, file: !621, line: 62, baseType: !630, size: 192, offset: 64)
!630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !611, size: 192, elements: !631)
!631 = !{!632}
!632 = !DISubrange(count: 3)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !560, file: !149, line: 3376, baseType: !634, size: 256)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !149, line: 1408, size: 256, elements: !635)
!635 = !{!636, !637}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !634, file: !149, line: 1409, baseType: !596, size: 192)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !634, file: !149, line: 1410, baseType: !638, size: 64, offset: 192)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !640, line: 27, size: 192, elements: !641)
!640 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!641 = !{!642, !643}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !639, file: !640, line: 29, baseType: !606, size: 128)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !639, file: !640, line: 30, baseType: !3, size: 32, offset: 128)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !560, file: !149, line: 3377, baseType: !645, size: 256)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !149, line: 1437, size: 256, elements: !646)
!646 = !{!647, !648}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !645, file: !149, line: 1438, baseType: !596, size: 192)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !645, file: !149, line: 1439, baseType: !558, size: 64, offset: 192)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !560, file: !149, line: 3378, baseType: !650, size: 256)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !149, line: 1418, size: 256, elements: !651)
!651 = !{!652, !653, !654}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !650, file: !149, line: 1419, baseType: !596, size: 192)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !650, file: !149, line: 1420, baseType: !467, size: 32, offset: 192)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !650, file: !149, line: 1421, baseType: !655, size: 8, offset: 224)
!655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !470, size: 8, elements: !487)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !560, file: !149, line: 3379, baseType: !657, size: 320)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !149, line: 1428, size: 320, elements: !658)
!658 = !{!659, !660, !661}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !657, file: !149, line: 1429, baseType: !596, size: 192)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !657, file: !149, line: 1430, baseType: !558, size: 64, offset: 192)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !657, file: !149, line: 1431, baseType: !558, size: 64, offset: 256)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !560, file: !149, line: 3380, baseType: !663, size: 320)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !149, line: 1460, size: 320, elements: !664)
!664 = !{!665, !666}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !663, file: !149, line: 1461, baseType: !596, size: 192)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !663, file: !149, line: 1462, baseType: !667, size: 128, offset: 192)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !668, line: 31, size: 128, elements: !669)
!668 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!669 = !{!670, !673, !674}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !667, file: !668, line: 32, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !466)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !667, file: !668, line: 33, baseType: !5, size: 32, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !667, file: !668, line: 34, baseType: !5, size: 32, offset: 96)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !560, file: !149, line: 3381, baseType: !676, size: 384)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !149, line: 2507, size: 384, elements: !677)
!677 = !{!678, !679, !680, !681, !682}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !676, file: !149, line: 2508, baseType: !596, size: 192)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !676, file: !149, line: 2509, baseType: !551, size: 32, offset: 192)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !676, file: !149, line: 2510, baseType: !5, size: 32, offset: 224)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !676, file: !149, line: 2511, baseType: !558, size: 64, offset: 256)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !676, file: !149, line: 2512, baseType: !558, size: 64, offset: 320)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !560, file: !149, line: 3382, baseType: !684, size: 896)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !149, line: 2652, size: 896, elements: !685)
!685 = !{!686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !684, file: !149, line: 2653, baseType: !676, size: 384)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !684, file: !149, line: 2654, baseType: !558, size: 64, offset: 384)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !684, file: !149, line: 2656, baseType: !5, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !684, file: !149, line: 2658, baseType: !5, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !684, file: !149, line: 2659, baseType: !5, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !684, file: !149, line: 2660, baseType: !5, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !684, file: !149, line: 2661, baseType: !5, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !684, file: !149, line: 2662, baseType: !5, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !684, file: !149, line: 2663, baseType: !5, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !684, file: !149, line: 2664, baseType: !5, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !684, file: !149, line: 2666, baseType: !5, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !684, file: !149, line: 2667, baseType: !5, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !684, file: !149, line: 2668, baseType: !5, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !684, file: !149, line: 2669, baseType: !5, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !684, file: !149, line: 2670, baseType: !5, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !684, file: !149, line: 2671, baseType: !5, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !684, file: !149, line: 2672, baseType: !5, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !684, file: !149, line: 2673, baseType: !5, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !684, file: !149, line: 2674, baseType: !5, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !684, file: !149, line: 2678, baseType: !5, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !684, file: !149, line: 2682, baseType: !5, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !684, file: !149, line: 2685, baseType: !5, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !684, file: !149, line: 2688, baseType: !5, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !684, file: !149, line: 2690, baseType: !5, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !684, file: !149, line: 2692, baseType: !5, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !684, file: !149, line: 2695, baseType: !5, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !684, file: !149, line: 2698, baseType: !5, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !684, file: !149, line: 2703, baseType: !5, size: 32, offset: 512)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !684, file: !149, line: 2705, baseType: !558, size: 64, offset: 576)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !684, file: !149, line: 2706, baseType: !558, size: 64, offset: 640)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !684, file: !149, line: 2707, baseType: !558, size: 64, offset: 704)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !684, file: !149, line: 2708, baseType: !558, size: 64, offset: 768)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !684, file: !149, line: 2711, baseType: !719, size: 64, offset: 832)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !149, line: 2711, flags: DIFlagFwdDecl)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !560, file: !149, line: 3383, baseType: !722, size: 960)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !149, line: 2756, size: 960, elements: !723)
!723 = !{!724, !725}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !722, file: !149, line: 2757, baseType: !684, size: 896)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !722, file: !149, line: 2758, baseType: !726, size: 64, offset: 896)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !513, line: 50, baseType: !727)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !729, line: 240, size: 384, elements: !730)
!729 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!730 = !{!731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !728, file: !729, line: 242, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !728, file: !729, line: 245, baseType: !5, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !728, file: !729, line: 252, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !728, file: !729, line: 257, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !728, file: !729, line: 265, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !728, file: !729, line: 277, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !728, file: !729, line: 291, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !728, file: !729, line: 298, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !728, file: !729, line: 305, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !728, file: !729, line: 310, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !728, file: !729, line: 321, baseType: !742, size: 320, offset: 64)
!742 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !729, line: 315, size: 320, elements: !743)
!743 = !{!744, !862, !864, !927, !928}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !742, file: !729, line: 316, baseType: !745, size: 64)
!745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !746, size: 64, elements: !487)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !729, line: 183, baseType: !747)
!747 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !729, line: 166, size: 64, elements: !748)
!748 = !{!749, !750, !751, !752, !753, !761, !762, !774, !777, !837, !838, !839, !852, !859}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !747, file: !729, line: 168, baseType: !467, size: 32)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !747, file: !729, line: 169, baseType: !5, size: 32)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !747, file: !729, line: 170, baseType: !472, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !747, file: !729, line: 171, baseType: !726, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !747, file: !729, line: 172, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !513, line: 53, baseType: !755)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !729, line: 359, size: 128, elements: !757)
!757 = !{!758, !759}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !756, file: !729, line: 360, baseType: !467, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !756, file: !729, line: 361, baseType: !760, size: 64, offset: 64)
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !726, size: 64, elements: !487)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !747, file: !729, line: 173, baseType: !3, size: 32)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !747, file: !729, line: 174, baseType: !763, size: 32)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !729, line: 133, baseType: !764)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !729, line: 115, size: 32, elements: !765)
!765 = !{!766, !767, !768, !769, !770, !771, !772, !773}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !764, file: !729, line: 118, baseType: !5, size: 8, flags: DIFlagBitField, extraData: i64 0)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !764, file: !729, line: 120, baseType: !5, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !764, file: !729, line: 121, baseType: !5, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !764, file: !729, line: 123, baseType: !5, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !764, file: !729, line: 125, baseType: !5, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !764, file: !729, line: 127, baseType: !5, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !764, file: !729, line: 130, baseType: !5, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !764, file: !729, line: 132, baseType: !5, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !747, file: !729, line: 175, baseType: !775, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !729, line: 175, flags: DIFlagFwdDecl)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !747, file: !729, line: 176, baseType: !778, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !780, line: 75, size: 256, elements: !781)
!780 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!781 = !{!782, !796, !797, !798}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !779, file: !780, line: 76, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !780, line: 68, baseType: !785)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !780, line: 63, size: 320, elements: !786)
!786 = !{!787, !789, !790, !791}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !785, file: !780, line: 64, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !785, file: !780, line: 65, baseType: !788, size: 64, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !785, file: !780, line: 66, baseType: !5, size: 32, offset: 128)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !785, file: !780, line: 67, baseType: !792, size: 128, offset: 192)
!792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !793, size: 128, elements: !794)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !780, line: 29, baseType: !611)
!794 = !{!795}
!795 = !DISubrange(count: 2)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !779, file: !780, line: 77, baseType: !783, size: 64, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !779, file: !780, line: 78, baseType: !5, size: 32, offset: 128)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !779, file: !780, line: 79, baseType: !799, size: 64, offset: 192)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !780, line: 49, baseType: !801)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !780, line: 45, size: 832, elements: !802)
!802 = !{!803, !804, !805}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !801, file: !780, line: 46, baseType: !788, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !801, file: !780, line: 47, baseType: !778, size: 64, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !801, file: !780, line: 48, baseType: !806, size: 704, offset: 128)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !807, line: 164, size: 704, elements: !808)
!807 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!808 = !{!809, !810, !820, !821, !822, !823, !824, !825, !829, !833, !834, !835, !836}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !806, file: !807, line: 166, baseType: !613, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !806, file: !807, line: 167, baseType: !811, size: 64, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !807, line: 157, size: 192, elements: !813)
!813 = !{!814, !815, !816}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !812, file: !807, line: 159, baseType: !469, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !812, file: !807, line: 160, baseType: !811, size: 64, offset: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !812, file: !807, line: 161, baseType: !817, size: 32, offset: 128)
!817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !470, size: 32, elements: !818)
!818 = !{!819}
!819 = !DISubrange(count: 4)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !806, file: !807, line: 168, baseType: !469, size: 64, offset: 128)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !806, file: !807, line: 169, baseType: !469, size: 64, offset: 192)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !806, file: !807, line: 170, baseType: !469, size: 64, offset: 256)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !806, file: !807, line: 171, baseType: !613, size: 64, offset: 320)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !806, file: !807, line: 172, baseType: !467, size: 32, offset: 384)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !806, file: !807, line: 176, baseType: !826, size: 64, offset: 448)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DISubroutineType(types: !828)
!828 = !{!811, !471, !613}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !806, file: !807, line: 177, baseType: !830, size: 64, offset: 512)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{null, !471, !811}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !806, file: !807, line: 178, baseType: !471, size: 64, offset: 576)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !806, file: !807, line: 179, baseType: !5, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !806, file: !807, line: 180, baseType: !5, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !806, file: !807, line: 184, baseType: !5, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !747, file: !729, line: 177, baseType: !558, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !747, file: !729, line: 178, baseType: !496, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !747, file: !729, line: 179, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !729, line: 150, baseType: !842)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !729, line: 142, size: 320, elements: !843)
!843 = !{!844, !845, !846, !847, !850, !851}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !842, file: !729, line: 144, baseType: !558, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !842, file: !729, line: 145, baseType: !726, size: 64, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !842, file: !729, line: 146, baseType: !726, size: 64, offset: 128)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !842, file: !729, line: 147, baseType: !848, size: 32, offset: 192)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !849, line: 31, baseType: !467)
!849 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!850 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !842, file: !729, line: 148, baseType: !5, size: 32, offset: 224)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !842, file: !729, line: 149, baseType: !466, size: 8, offset: 256)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !747, file: !729, line: 180, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !729, line: 162, baseType: !855)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !729, line: 159, size: 128, elements: !856)
!856 = !{!857, !858}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !855, file: !729, line: 160, baseType: !558, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !855, file: !729, line: 161, baseType: !613, size: 64, offset: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !747, file: !729, line: 181, baseType: !860, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !729, line: 181, flags: DIFlagFwdDecl)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !742, file: !729, line: 317, baseType: !863, size: 64)
!863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !613, size: 64, elements: !487)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !742, file: !729, line: 318, baseType: !865, size: 320)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !729, line: 188, size: 320, elements: !866)
!866 = !{!867, !869, !926}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !865, file: !729, line: 190, baseType: !868, size: 192)
!868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !746, size: 192, elements: !631)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !865, file: !729, line: 193, baseType: !870, size: 64, offset: 192)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !729, line: 206, size: 320, elements: !872)
!872 = !{!873, !911, !912, !913, !925}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !871, file: !729, line: 208, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !513, line: 62, baseType: !876)
!876 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !877, line: 538, size: 256, elements: !878)
!877 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!878 = !{!879, !883, !889, !902}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !876, file: !877, line: 539, baseType: !880, size: 32)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !877, line: 482, size: 32, elements: !881)
!881 = !{!882}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !880, file: !877, line: 484, baseType: !5, size: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !876, file: !877, line: 540, baseType: !884, size: 192)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !877, line: 488, size: 192, elements: !885)
!885 = !{!886, !887, !888}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !884, file: !877, line: 489, baseType: !880, size: 32)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !884, file: !877, line: 492, baseType: !472, size: 64, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !884, file: !877, line: 496, baseType: !558, size: 64, offset: 128)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !876, file: !877, line: 541, baseType: !890, size: 256)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !877, line: 504, size: 256, elements: !891)
!891 = !{!892, !893, !900, !901}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !890, file: !877, line: 505, baseType: !880, size: 32)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !890, file: !877, line: 509, baseType: !894, size: 64, offset: 64)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !877, line: 501, baseType: !895)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DISubroutineType(types: !897)
!897 = !{null, !898}
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !890, file: !877, line: 510, baseType: !898, size: 64, offset: 128)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !890, file: !877, line: 513, baseType: !874, size: 64, offset: 192)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !876, file: !877, line: 542, baseType: !903, size: 128)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !877, line: 530, size: 128, elements: !904)
!904 = !{!905, !906}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !903, file: !877, line: 531, baseType: !880, size: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !903, file: !877, line: 534, baseType: !907, size: 64, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !877, line: 525, baseType: !908)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DISubroutineType(types: !910)
!910 = !{!466, !558, !472, !611, !611}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !871, file: !729, line: 211, baseType: !5, size: 32, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !871, file: !729, line: 214, baseType: !613, size: 64, offset: 128)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !871, file: !729, line: 224, baseType: !914, size: 64, offset: 192)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !729, line: 202, baseType: !916)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !729, line: 202, size: 128, elements: !917)
!917 = !{!918}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !916, file: !729, line: 202, baseType: !919, size: 128)
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !729, line: 200, baseType: !920)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !729, line: 200, size: 128, elements: !921)
!921 = !{!922, !923, !924}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !920, file: !729, line: 200, baseType: !5, size: 32)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !920, file: !729, line: 200, baseType: !5, size: 32, offset: 32)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !920, file: !729, line: 200, baseType: !760, size: 64, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !871, file: !729, line: 234, baseType: !914, size: 64, offset: 256)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !865, file: !729, line: 197, baseType: !613, size: 64, offset: 256)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !742, file: !729, line: 319, baseType: !620, size: 256)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !742, file: !729, line: 320, baseType: !639, size: 192)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !560, file: !149, line: 3384, baseType: !930, size: 1472)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !149, line: 3114, size: 1472, elements: !931)
!931 = !{!932, !953, !954, !955, !956}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !930, file: !149, line: 3115, baseType: !933, size: 1216)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !149, line: 2984, size: 1216, elements: !934)
!934 = !{!935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !933, file: !149, line: 2985, baseType: !722, size: 960)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !933, file: !149, line: 2986, baseType: !558, size: 64, offset: 960)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !933, file: !149, line: 2987, baseType: !558, size: 64, offset: 1024)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !933, file: !149, line: 2988, baseType: !558, size: 64, offset: 1088)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !933, file: !149, line: 2991, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !933, file: !149, line: 2992, baseType: !5, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !933, file: !149, line: 2993, baseType: !5, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !933, file: !149, line: 2994, baseType: !5, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !933, file: !149, line: 2995, baseType: !5, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !933, file: !149, line: 2996, baseType: !5, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !933, file: !149, line: 2998, baseType: !5, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !933, file: !149, line: 3000, baseType: !5, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !933, file: !149, line: 3002, baseType: !5, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !933, file: !149, line: 3003, baseType: !5, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !933, file: !149, line: 3004, baseType: !5, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !933, file: !149, line: 3005, baseType: !5, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !933, file: !149, line: 3007, baseType: !5, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !933, file: !149, line: 3010, baseType: !5, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !930, file: !149, line: 3117, baseType: !558, size: 64, offset: 1216)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !930, file: !149, line: 3119, baseType: !558, size: 64, offset: 1280)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !930, file: !149, line: 3121, baseType: !558, size: 64, offset: 1344)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !930, file: !149, line: 3123, baseType: !558, size: 64, offset: 1408)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !560, file: !149, line: 3385, baseType: !958, size: 1088)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !149, line: 2874, size: 1088, elements: !959)
!959 = !{!960, !961, !962}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !958, file: !149, line: 2875, baseType: !722, size: 960)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !958, file: !149, line: 2876, baseType: !726, size: 64, offset: 960)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !958, file: !149, line: 2877, baseType: !963, size: 64, offset: 1024)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !965, line: 172, size: 128, elements: !966)
!965 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!966 = !{!967, !968, !969, !970, !971, !972, !973}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !964, file: !965, line: 174, baseType: !5, size: 1, flags: DIFlagBitField, extraData: i64 0)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !964, file: !965, line: 178, baseType: !5, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !964, file: !965, line: 183, baseType: !5, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !964, file: !965, line: 187, baseType: !5, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !964, file: !965, line: 192, baseType: !5, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !964, file: !965, line: 195, baseType: !5, size: 32, offset: 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !964, file: !965, line: 199, baseType: !558, size: 64, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !560, file: !149, line: 3386, baseType: !933, size: 1216)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !560, file: !149, line: 3387, baseType: !976, size: 1280)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !149, line: 3093, size: 1280, elements: !977)
!977 = !{!978, !979}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !976, file: !149, line: 3094, baseType: !933, size: 1216)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !976, file: !149, line: 3095, baseType: !963, size: 64, offset: 1216)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !560, file: !149, line: 3388, baseType: !981, size: 1216)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !149, line: 2824, size: 1216, elements: !982)
!982 = !{!983, !984, !985, !986, !987, !988}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !981, file: !149, line: 2825, baseType: !684, size: 896)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !981, file: !149, line: 2827, baseType: !558, size: 64, offset: 896)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !981, file: !149, line: 2828, baseType: !558, size: 64, offset: 960)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !981, file: !149, line: 2829, baseType: !558, size: 64, offset: 1024)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !981, file: !149, line: 2830, baseType: !558, size: 64, offset: 1088)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !981, file: !149, line: 2831, baseType: !558, size: 64, offset: 1152)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !560, file: !149, line: 3389, baseType: !990, size: 1024)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !149, line: 2850, size: 1024, elements: !991)
!991 = !{!992, !993, !994}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !990, file: !149, line: 2851, baseType: !722, size: 960)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !990, file: !149, line: 2852, baseType: !467, size: 32, offset: 960)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !990, file: !149, line: 2853, baseType: !467, size: 32, offset: 992)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !560, file: !149, line: 3390, baseType: !996, size: 1024)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !149, line: 2857, size: 1024, elements: !997)
!997 = !{!998, !999}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !996, file: !149, line: 2858, baseType: !722, size: 960)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !996, file: !149, line: 2859, baseType: !963, size: 64, offset: 960)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !560, file: !149, line: 3391, baseType: !1001, size: 960)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !149, line: 2862, size: 960, elements: !1002)
!1002 = !{!1003}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1001, file: !149, line: 2863, baseType: !722, size: 960)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !560, file: !149, line: 3392, baseType: !1005, size: 1472)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !149, line: 3304, size: 1472, elements: !1006)
!1006 = !{!1007}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1005, file: !149, line: 3305, baseType: !930, size: 1472)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !560, file: !149, line: 3393, baseType: !1009, size: 1792)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !149, line: 3248, size: 1792, elements: !1010)
!1010 = !{!1011, !1012, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1009, file: !149, line: 3249, baseType: !930, size: 1472)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1009, file: !149, line: 3251, baseType: !1013, size: 64, offset: 1472)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1015, line: 463, size: 1152, elements: !1016)
!1015 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1016 = !{!1017, !1020, !1051, !1052, !1191, !1211, !1212, !1213, !1214, !1215, !1216, !1240, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1014, file: !1015, line: 464, baseType: !1018, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1015, line: 464, flags: DIFlagFwdDecl)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1014, file: !1015, line: 467, baseType: !1021, size: 64, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !133, line: 374, size: 640, elements: !1023)
!1023 = !{!1024, !1026, !1027, !1040, !1041, !1042, !1043, !1044, !1045, !1047, !1049, !1050}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1022, file: !133, line: 377, baseType: !1025, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !513, line: 111, baseType: !496)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1022, file: !133, line: 378, baseType: !1025, size: 64, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1022, file: !133, line: 381, baseType: !1028, size: 64, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !133, line: 282, baseType: !1030)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !133, line: 282, size: 128, elements: !1031)
!1031 = !{!1032}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1030, file: !133, line: 282, baseType: !1033, size: 128)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !133, line: 281, baseType: !1034)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !133, line: 281, size: 128, elements: !1035)
!1035 = !{!1036, !1037, !1038}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1034, file: !133, line: 281, baseType: !5, size: 32)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1034, file: !133, line: 281, baseType: !5, size: 32, offset: 32)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1034, file: !133, line: 281, baseType: !1039, size: 64, offset: 64)
!1039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1025, size: 64, elements: !487)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1022, file: !133, line: 384, baseType: !467, size: 32, offset: 192)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1022, file: !133, line: 387, baseType: !467, size: 32, offset: 224)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1022, file: !133, line: 390, baseType: !467, size: 32, offset: 256)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1022, file: !133, line: 394, baseType: !1028, size: 64, offset: 320)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1022, file: !133, line: 396, baseType: !132, size: 32, offset: 384)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1022, file: !133, line: 399, baseType: !1046, size: 64, offset: 416)
!1046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 64, elements: !794)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1022, file: !133, line: 402, baseType: !1048, size: 64, offset: 480)
!1048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, elements: !794)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1022, file: !133, line: 406, baseType: !467, size: 32, offset: 544)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1022, file: !133, line: 409, baseType: !467, size: 32, offset: 576)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1014, file: !1015, line: 470, baseType: !524, size: 64, offset: 128)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1014, file: !1015, line: 473, baseType: !1053, size: 64, offset: 192)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !965, line: 39, size: 1152, elements: !1055)
!1055 = !{!1056, !1106, !1119, !1132, !1133, !1145, !1146, !1150, !1151, !1152, !1153, !1154}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1054, file: !965, line: 41, baseType: !1057, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1058, line: 144, baseType: !1059)
!1058 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1058, line: 100, size: 896, elements: !1061)
!1061 = !{!1062, !1068, !1073, !1078, !1080, !1083, !1084, !1085, !1086, !1087, !1092, !1094, !1095, !1100, !1105}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1060, file: !1058, line: 102, baseType: !1063, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1058, line: 52, baseType: !1064)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!1067, !898}
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1058, line: 47, baseType: !5)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1060, file: !1058, line: 105, baseType: !1069, size: 64, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1058, line: 59, baseType: !1070)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!467, !898, !898}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1060, file: !1058, line: 108, baseType: !1074, size: 64, offset: 128)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1058, line: 63, baseType: !1075)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{null, !471}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1060, file: !1058, line: 111, baseType: !1079, size: 64, offset: 192)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1060, file: !1058, line: 114, baseType: !1081, size: 64, offset: 256)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1082, line: 46, baseType: !611)
!1082 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1060, file: !1058, line: 117, baseType: !1081, size: 64, offset: 320)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1060, file: !1058, line: 120, baseType: !1081, size: 64, offset: 384)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1060, file: !1058, line: 124, baseType: !5, size: 32, offset: 448)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1060, file: !1058, line: 128, baseType: !5, size: 32, offset: 480)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1060, file: !1058, line: 131, baseType: !1088, size: 64, offset: 512)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1058, line: 75, baseType: !1089)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!471, !1081, !1081}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1060, file: !1058, line: 132, baseType: !1093, size: 64, offset: 576)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1058, line: 78, baseType: !1075)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1060, file: !1058, line: 135, baseType: !471, size: 64, offset: 640)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1060, file: !1058, line: 136, baseType: !1096, size: 64, offset: 704)
!1096 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1058, line: 82, baseType: !1097)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!471, !471, !1081, !1081}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1060, file: !1058, line: 137, baseType: !1101, size: 64, offset: 768)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1058, line: 83, baseType: !1102)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{null, !471, !471}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1060, file: !1058, line: 141, baseType: !5, size: 32, offset: 832)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1054, file: !965, line: 48, baseType: !1107, size: 64, offset: 64)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !394, line: 35, baseType: !1109)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !394, line: 35, size: 128, elements: !1110)
!1110 = !{!1111}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1109, file: !394, line: 35, baseType: !1112, size: 128)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !394, line: 33, baseType: !1113)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !394, line: 33, size: 128, elements: !1114)
!1114 = !{!1115, !1116, !1117}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1113, file: !394, line: 33, baseType: !5, size: 32)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1113, file: !394, line: 33, baseType: !5, size: 32, offset: 32)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1113, file: !394, line: 33, baseType: !1118, size: 64, offset: 64)
!1118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !533, size: 64, elements: !487)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1054, file: !965, line: 51, baseType: !1120, size: 64, offset: 128)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !149, line: 183, baseType: !1122)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !149, line: 183, size: 128, elements: !1123)
!1123 = !{!1124}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1122, file: !149, line: 183, baseType: !1125, size: 128)
!1125 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !149, line: 182, baseType: !1126)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !149, line: 182, size: 128, elements: !1127)
!1127 = !{!1128, !1129, !1130}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1126, file: !149, line: 182, baseType: !5, size: 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1126, file: !149, line: 182, baseType: !5, size: 32, offset: 32)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1126, file: !149, line: 182, baseType: !1131, size: 64, offset: 64)
!1131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !558, size: 64, elements: !487)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1054, file: !965, line: 54, baseType: !558, size: 64, offset: 192)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1054, file: !965, line: 57, baseType: !1134, size: 128, offset: 256)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1135, line: 31, size: 128, elements: !1136)
!1135 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1136 = !{!1137, !1138, !1139, !1140, !1141, !1142, !1143}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1134, file: !1135, line: 35, baseType: !5, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1134, file: !1135, line: 39, baseType: !5, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1134, file: !1135, line: 42, baseType: !5, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1134, file: !1135, line: 46, baseType: !5, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1134, file: !1135, line: 50, baseType: !5, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1134, file: !1135, line: 53, baseType: !5, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1134, file: !1135, line: 56, baseType: !1144, size: 64, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !513, line: 47, baseType: !778)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1054, file: !965, line: 60, baseType: !1134, size: 128, offset: 384)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1054, file: !965, line: 64, baseType: !1147, size: 64, offset: 512)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1149, line: 33, flags: DIFlagFwdDecl)
!1149 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1054, file: !965, line: 67, baseType: !558, size: 64, offset: 576)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1054, file: !965, line: 73, baseType: !1057, size: 64, offset: 640)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1054, file: !965, line: 77, baseType: !1144, size: 64, offset: 704)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1054, file: !965, line: 80, baseType: !5, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1054, file: !965, line: 82, baseType: !1155, size: 320, offset: 832)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !1156, line: 62, size: 320, elements: !1157)
!1156 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1157 = !{!1158, !1164, !1165, !1166, !1167, !1174}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1155, file: !1156, line: 63, baseType: !1159, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !1156, line: 56, size: 128, elements: !1161)
!1161 = !{!1162, !1163}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1160, file: !1156, line: 57, baseType: !1159, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1160, file: !1156, line: 58, baseType: !655, size: 8, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1155, file: !1156, line: 64, baseType: !5, size: 32, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1155, file: !1156, line: 66, baseType: !5, size: 32, offset: 96)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1155, file: !1156, line: 68, baseType: !466, size: 8, offset: 128)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1155, file: !1156, line: 70, baseType: !1168, size: 64, offset: 192)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !1156, line: 37, size: 128, elements: !1170)
!1170 = !{!1171, !1172}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1169, file: !1156, line: 39, baseType: !1168, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !1169, file: !1156, line: 40, baseType: !1173, size: 64, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1155, file: !1156, line: 71, baseType: !1175, size: 64, offset: 256)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !1156, line: 45, size: 320, elements: !1177)
!1177 = !{!1178, !1179}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1176, file: !1156, line: 47, baseType: !1175, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !1176, file: !1156, line: 48, baseType: !1180, size: 256, offset: 64)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !149, line: 1883, size: 256, elements: !1181)
!1181 = !{!1182, !1184, !1185, !1190}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1180, file: !149, line: 1884, baseType: !1183, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1180, file: !149, line: 1885, baseType: !1183, size: 64, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1180, file: !149, line: 1891, baseType: !1186, size: 64, offset: 128)
!1186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1180, file: !149, line: 1891, size: 64, elements: !1187)
!1187 = !{!1188, !1189}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1186, file: !149, line: 1891, baseType: !533, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1186, file: !149, line: 1891, baseType: !558, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1180, file: !149, line: 1892, baseType: !1173, size: 64, offset: 192)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1014, file: !1015, line: 476, baseType: !1192, size: 64, offset: 256)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !376, line: 187, size: 256, elements: !1194)
!1194 = !{!1195, !1196, !1209, !1210}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1193, file: !376, line: 189, baseType: !467, size: 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "larray", scope: !1193, file: !376, line: 192, baseType: !1197, size: 64, offset: 64)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_gc", file: !376, line: 87, baseType: !1199)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_gc", file: !376, line: 87, size: 128, elements: !1200)
!1200 = !{!1201}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1199, file: !376, line: 87, baseType: !1202, size: 128)
!1202 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_base", file: !376, line: 85, baseType: !1203)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_base", file: !376, line: 85, size: 128, elements: !1204)
!1204 = !{!1205, !1206, !1207}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1203, file: !376, line: 85, baseType: !5, size: 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1203, file: !376, line: 85, baseType: !5, size: 32, offset: 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1203, file: !376, line: 85, baseType: !1208, size: 64, offset: 64)
!1208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 64, elements: !487)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1193, file: !376, line: 197, baseType: !1057, size: 64, offset: 128)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "tree_root", scope: !1193, file: !376, line: 200, baseType: !490, size: 64, offset: 192)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1014, file: !1015, line: 479, baseType: !1057, size: 64, offset: 320)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1014, file: !1015, line: 484, baseType: !558, size: 64, offset: 384)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1014, file: !1015, line: 488, baseType: !558, size: 64, offset: 448)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1014, file: !1015, line: 493, baseType: !558, size: 64, offset: 512)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1014, file: !1015, line: 496, baseType: !558, size: 64, offset: 576)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1014, file: !1015, line: 501, baseType: !1217, size: 64, offset: 640)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !144, line: 2355, size: 576, elements: !1219)
!1219 = !{!1220, !1223, !1224, !1225, !1226, !1228, !1229, !1234, !1235, !1236, !1237, !1238, !1239}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1218, file: !144, line: 2356, baseType: !1221, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !144, line: 2356, flags: DIFlagFwdDecl)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1218, file: !144, line: 2357, baseType: !472, size: 64, offset: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1218, file: !144, line: 2358, baseType: !467, size: 32, offset: 128)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1218, file: !144, line: 2359, baseType: !467, size: 32, offset: 160)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1218, file: !144, line: 2360, baseType: !1227, size: 128, offset: 192)
!1227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !467, size: 128, elements: !818)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1218, file: !144, line: 2364, baseType: !467, size: 32, offset: 320)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1218, file: !144, line: 2367, baseType: !1230, size: 128, offset: 384)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !144, line: 2349, size: 128, elements: !1231)
!1231 = !{!1232, !1233}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1230, file: !144, line: 2351, baseType: !726, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1230, file: !144, line: 2352, baseType: !613, size: 64, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1218, file: !144, line: 2371, baseType: !143, size: 32, offset: 512)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1218, file: !144, line: 2374, baseType: !5, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1218, file: !144, line: 2377, baseType: !5, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1218, file: !144, line: 2381, baseType: !5, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1218, file: !144, line: 2392, baseType: !5, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1218, file: !144, line: 2396, baseType: !5, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1014, file: !1015, line: 504, baseType: !1241, size: 64, offset: 704)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1015, line: 504, flags: DIFlagFwdDecl)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1014, file: !1015, line: 507, baseType: !1057, size: 64, offset: 768)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1014, file: !1015, line: 510, baseType: !467, size: 32, offset: 832)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1014, file: !1015, line: 513, baseType: !467, size: 32, offset: 864)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1014, file: !1015, line: 516, baseType: !551, size: 32, offset: 896)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1014, file: !1015, line: 519, baseType: !551, size: 32, offset: 928)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1014, file: !1015, line: 522, baseType: !5, size: 32, offset: 960)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1014, file: !1015, line: 523, baseType: !5, size: 32, offset: 992)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1014, file: !1015, line: 528, baseType: !472, size: 64, offset: 1024)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1014, file: !1015, line: 535, baseType: !5, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1014, file: !1015, line: 539, baseType: !5, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1014, file: !1015, line: 543, baseType: !5, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1014, file: !1015, line: 546, baseType: !5, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1014, file: !1015, line: 550, baseType: !5, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1014, file: !1015, line: 554, baseType: !5, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1014, file: !1015, line: 559, baseType: !5, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1014, file: !1015, line: 562, baseType: !5, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1014, file: !1015, line: 571, baseType: !5, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1014, file: !1015, line: 573, baseType: !5, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1014, file: !1015, line: 574, baseType: !5, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1014, file: !1015, line: 581, baseType: !5, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1014, file: !1015, line: 585, baseType: !5, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1014, file: !1015, line: 588, baseType: !5, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1014, file: !1015, line: 592, baseType: !5, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1014, file: !1015, line: 598, baseType: !5, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1009, file: !149, line: 3254, baseType: !558, size: 64, offset: 1536)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1009, file: !149, line: 3257, baseType: !558, size: 64, offset: 1600)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1009, file: !149, line: 3258, baseType: !558, size: 64, offset: 1664)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1009, file: !149, line: 3264, baseType: !5, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1009, file: !149, line: 3265, baseType: !5, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1009, file: !149, line: 3267, baseType: !5, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1009, file: !149, line: 3268, baseType: !5, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1009, file: !149, line: 3269, baseType: !5, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1009, file: !149, line: 3271, baseType: !5, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1009, file: !149, line: 3272, baseType: !5, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1009, file: !149, line: 3273, baseType: !5, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1009, file: !149, line: 3274, baseType: !5, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1009, file: !149, line: 3275, baseType: !5, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1009, file: !149, line: 3276, baseType: !5, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1009, file: !149, line: 3277, baseType: !5, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1009, file: !149, line: 3279, baseType: !5, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1009, file: !149, line: 3280, baseType: !5, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1009, file: !149, line: 3281, baseType: !5, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1009, file: !149, line: 3282, baseType: !5, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1009, file: !149, line: 3283, baseType: !5, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1009, file: !149, line: 3284, baseType: !5, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !560, file: !149, line: 3394, baseType: !1289, size: 1344)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !149, line: 2279, size: 1344, elements: !1290)
!1290 = !{!1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1289, file: !149, line: 2280, baseType: !596, size: 192)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1289, file: !149, line: 2281, baseType: !558, size: 64, offset: 192)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1289, file: !149, line: 2282, baseType: !558, size: 64, offset: 256)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1289, file: !149, line: 2283, baseType: !558, size: 64, offset: 320)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1289, file: !149, line: 2284, baseType: !558, size: 64, offset: 384)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1289, file: !149, line: 2285, baseType: !5, size: 32, offset: 448)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1289, file: !149, line: 2287, baseType: !5, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1289, file: !149, line: 2288, baseType: !5, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1289, file: !149, line: 2289, baseType: !5, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1289, file: !149, line: 2290, baseType: !5, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1289, file: !149, line: 2291, baseType: !5, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1289, file: !149, line: 2292, baseType: !5, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1289, file: !149, line: 2294, baseType: !5, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1289, file: !149, line: 2296, baseType: !5, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1289, file: !149, line: 2297, baseType: !5, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1289, file: !149, line: 2298, baseType: !5, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1289, file: !149, line: 2299, baseType: !5, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1289, file: !149, line: 2300, baseType: !5, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1289, file: !149, line: 2301, baseType: !5, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1289, file: !149, line: 2302, baseType: !5, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1289, file: !149, line: 2303, baseType: !5, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1289, file: !149, line: 2305, baseType: !5, size: 32, offset: 512)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1289, file: !149, line: 2306, baseType: !848, size: 32, offset: 544)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1289, file: !149, line: 2307, baseType: !558, size: 64, offset: 576)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1289, file: !149, line: 2308, baseType: !558, size: 64, offset: 640)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1289, file: !149, line: 2314, baseType: !1317, size: 64, offset: 704)
!1317 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !149, line: 2309, size: 64, elements: !1318)
!1318 = !{!1319, !1320, !1321}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1317, file: !149, line: 2310, baseType: !467, size: 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1317, file: !149, line: 2311, baseType: !472, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1317, file: !149, line: 2312, baseType: !1322, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !149, line: 2277, flags: DIFlagFwdDecl)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1289, file: !149, line: 2315, baseType: !558, size: 64, offset: 768)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1289, file: !149, line: 2316, baseType: !558, size: 64, offset: 832)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1289, file: !149, line: 2317, baseType: !558, size: 64, offset: 896)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1289, file: !149, line: 2318, baseType: !558, size: 64, offset: 960)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1289, file: !149, line: 2319, baseType: !558, size: 64, offset: 1024)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1289, file: !149, line: 2320, baseType: !558, size: 64, offset: 1088)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1289, file: !149, line: 2321, baseType: !558, size: 64, offset: 1152)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1289, file: !149, line: 2322, baseType: !558, size: 64, offset: 1216)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1289, file: !149, line: 2324, baseType: !1333, size: 64, offset: 1280)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !149, line: 2324, flags: DIFlagFwdDecl)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !560, file: !149, line: 3395, baseType: !1336, size: 320)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !149, line: 1469, size: 320, elements: !1337)
!1337 = !{!1338, !1339, !1340}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1336, file: !149, line: 1470, baseType: !596, size: 192)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1336, file: !149, line: 1471, baseType: !558, size: 64, offset: 192)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1336, file: !149, line: 1472, baseType: !558, size: 64, offset: 256)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !560, file: !149, line: 3396, baseType: !1342, size: 320)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !149, line: 1482, size: 320, elements: !1343)
!1343 = !{!1344, !1345, !1346}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1342, file: !149, line: 1483, baseType: !596, size: 192)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1342, file: !149, line: 1484, baseType: !467, size: 32, offset: 192)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1342, file: !149, line: 1485, baseType: !1131, size: 64, offset: 256)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !560, file: !149, line: 3397, baseType: !1348, size: 384)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !149, line: 1829, size: 384, elements: !1349)
!1349 = !{!1350, !1351, !1352, !1353}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1348, file: !149, line: 1830, baseType: !596, size: 192)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1348, file: !149, line: 1831, baseType: !551, size: 32, offset: 192)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1348, file: !149, line: 1832, baseType: !558, size: 64, offset: 256)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1348, file: !149, line: 1835, baseType: !1131, size: 64, offset: 320)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !560, file: !149, line: 3398, baseType: !1355, size: 704)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !149, line: 1898, size: 704, elements: !1356)
!1356 = !{!1357, !1358, !1359, !1360, !1361, !1366}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1355, file: !149, line: 1899, baseType: !596, size: 192)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1355, file: !149, line: 1902, baseType: !558, size: 64, offset: 192)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1355, file: !149, line: 1905, baseType: !533, size: 64, offset: 256)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1355, file: !149, line: 1908, baseType: !5, size: 32, offset: 320)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1355, file: !149, line: 1911, baseType: !1362, size: 64, offset: 384)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !965, line: 117, size: 128, elements: !1364)
!1364 = !{!1365}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1363, file: !965, line: 120, baseType: !1134, size: 128)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1355, file: !149, line: 1914, baseType: !1180, size: 256, offset: 448)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !560, file: !149, line: 3399, baseType: !1368, size: 704)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !149, line: 2008, size: 704, elements: !1369)
!1369 = !{!1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1368, file: !149, line: 2009, baseType: !596, size: 192)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1368, file: !149, line: 2011, baseType: !5, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1368, file: !149, line: 2012, baseType: !5, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1368, file: !149, line: 2014, baseType: !551, size: 32, offset: 224)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1368, file: !149, line: 2016, baseType: !558, size: 64, offset: 256)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1368, file: !149, line: 2017, baseType: !1120, size: 64, offset: 320)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1368, file: !149, line: 2019, baseType: !558, size: 64, offset: 384)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1368, file: !149, line: 2020, baseType: !558, size: 64, offset: 448)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1368, file: !149, line: 2021, baseType: !558, size: 64, offset: 512)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1368, file: !149, line: 2022, baseType: !558, size: 64, offset: 576)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1368, file: !149, line: 2023, baseType: !558, size: 64, offset: 640)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !560, file: !149, line: 3400, baseType: !1382, size: 832)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !149, line: 2430, size: 832, elements: !1383)
!1383 = !{!1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1382, file: !149, line: 2431, baseType: !596, size: 192)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1382, file: !149, line: 2433, baseType: !558, size: 64, offset: 192)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1382, file: !149, line: 2434, baseType: !558, size: 64, offset: 256)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1382, file: !149, line: 2435, baseType: !558, size: 64, offset: 320)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1382, file: !149, line: 2436, baseType: !558, size: 64, offset: 384)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1382, file: !149, line: 2437, baseType: !1120, size: 64, offset: 448)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1382, file: !149, line: 2438, baseType: !558, size: 64, offset: 512)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1382, file: !149, line: 2440, baseType: !558, size: 64, offset: 576)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1382, file: !149, line: 2441, baseType: !558, size: 64, offset: 640)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1382, file: !149, line: 2443, baseType: !1394, size: 128, offset: 704)
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !149, line: 182, baseType: !1395)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !149, line: 182, size: 128, elements: !1396)
!1396 = !{!1397}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1395, file: !149, line: 182, baseType: !1125, size: 128)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !560, file: !149, line: 3401, baseType: !1399, size: 320)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !149, line: 3327, size: 320, elements: !1400)
!1400 = !{!1401, !1402, !1409}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1399, file: !149, line: 3329, baseType: !596, size: 192)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1399, file: !149, line: 3330, baseType: !1403, size: 64, offset: 192)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !149, line: 3320, size: 192, elements: !1405)
!1405 = !{!1406, !1407, !1408}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1404, file: !149, line: 3322, baseType: !1403, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1404, file: !149, line: 3323, baseType: !1403, size: 64, offset: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1404, file: !149, line: 3324, baseType: !558, size: 64, offset: 128)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1399, file: !149, line: 3331, baseType: !1403, size: 64, offset: 256)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !560, file: !149, line: 3402, baseType: !1411, size: 256)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !149, line: 1540, size: 256, elements: !1412)
!1412 = !{!1413, !1414}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1411, file: !149, line: 1541, baseType: !596, size: 192)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1411, file: !149, line: 1542, baseType: !1415, size: 64, offset: 192)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !149, line: 1538, baseType: !1417)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !149, line: 1538, size: 192, elements: !1418)
!1418 = !{!1419}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1417, file: !149, line: 1538, baseType: !1420, size: 192)
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !149, line: 1537, baseType: !1421)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !149, line: 1537, size: 192, elements: !1422)
!1422 = !{!1423, !1424, !1425}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1421, file: !149, line: 1537, baseType: !5, size: 32)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1421, file: !149, line: 1537, baseType: !5, size: 32, offset: 32)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1421, file: !149, line: 1537, baseType: !1426, size: 128, offset: 64)
!1426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1427, size: 128, elements: !487)
!1427 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !149, line: 1535, baseType: !1428)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !149, line: 1532, size: 128, elements: !1429)
!1429 = !{!1430, !1431}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1428, file: !149, line: 1533, baseType: !558, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1428, file: !149, line: 1534, baseType: !558, size: 64, offset: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !560, file: !149, line: 3403, baseType: !1433, size: 512)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !149, line: 1938, size: 512, elements: !1434)
!1434 = !{!1435, !1436, !1437, !1438, !1444, !1445, !1446}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1433, file: !149, line: 1939, baseType: !596, size: 192)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1433, file: !149, line: 1940, baseType: !551, size: 32, offset: 192)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1433, file: !149, line: 1941, baseType: !148, size: 32, offset: 224)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1433, file: !149, line: 1946, baseType: !1439, size: 32, offset: 256)
!1439 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !149, line: 1942, size: 32, elements: !1440)
!1440 = !{!1441, !1442, !1443}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1439, file: !149, line: 1943, baseType: !167, size: 32)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1439, file: !149, line: 1944, baseType: !174, size: 32)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1439, file: !149, line: 1945, baseType: !181, size: 32)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1433, file: !149, line: 1950, baseType: !523, size: 64, offset: 320)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1433, file: !149, line: 1951, baseType: !523, size: 64, offset: 384)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1433, file: !149, line: 1953, baseType: !1131, size: 64, offset: 448)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !560, file: !149, line: 3404, baseType: !1448, size: 1664)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !149, line: 3337, size: 1664, elements: !1449)
!1449 = !{!1450, !1451}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1448, file: !149, line: 3338, baseType: !596, size: 192)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1448, file: !149, line: 3341, baseType: !1452, size: 1472, offset: 192)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1453, line: 410, size: 1472, elements: !1454)
!1453 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1454 = !{!1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1452, file: !1453, line: 412, baseType: !467, size: 32)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1452, file: !1453, line: 413, baseType: !467, size: 32, offset: 32)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1452, file: !1453, line: 414, baseType: !467, size: 32, offset: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1452, file: !1453, line: 415, baseType: !467, size: 32, offset: 96)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1452, file: !1453, line: 416, baseType: !467, size: 32, offset: 128)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1452, file: !1453, line: 417, baseType: !467, size: 32, offset: 160)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1452, file: !1453, line: 418, baseType: !466, size: 8, offset: 192)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1452, file: !1453, line: 419, baseType: !466, size: 8, offset: 200)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1452, file: !1453, line: 420, baseType: !1464, size: 8, offset: 208)
!1464 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1452, file: !1453, line: 421, baseType: !1464, size: 8, offset: 216)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1452, file: !1453, line: 422, baseType: !1464, size: 8, offset: 224)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1452, file: !1453, line: 423, baseType: !1464, size: 8, offset: 232)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1452, file: !1453, line: 424, baseType: !1464, size: 8, offset: 240)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1452, file: !1453, line: 425, baseType: !1464, size: 8, offset: 248)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1452, file: !1453, line: 426, baseType: !1464, size: 8, offset: 256)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1452, file: !1453, line: 427, baseType: !1464, size: 8, offset: 264)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1452, file: !1453, line: 428, baseType: !1464, size: 8, offset: 272)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1452, file: !1453, line: 429, baseType: !1464, size: 8, offset: 280)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1452, file: !1453, line: 430, baseType: !1464, size: 8, offset: 288)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1452, file: !1453, line: 431, baseType: !1464, size: 8, offset: 296)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1452, file: !1453, line: 432, baseType: !1464, size: 8, offset: 304)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1452, file: !1453, line: 433, baseType: !1464, size: 8, offset: 312)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1452, file: !1453, line: 434, baseType: !1464, size: 8, offset: 320)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1452, file: !1453, line: 435, baseType: !1464, size: 8, offset: 328)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1452, file: !1453, line: 436, baseType: !1464, size: 8, offset: 336)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1452, file: !1453, line: 437, baseType: !1464, size: 8, offset: 344)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1452, file: !1453, line: 438, baseType: !1464, size: 8, offset: 352)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1452, file: !1453, line: 439, baseType: !1464, size: 8, offset: 360)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1452, file: !1453, line: 440, baseType: !1464, size: 8, offset: 368)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1452, file: !1453, line: 441, baseType: !1464, size: 8, offset: 376)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1452, file: !1453, line: 442, baseType: !1464, size: 8, offset: 384)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1452, file: !1453, line: 443, baseType: !1464, size: 8, offset: 392)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1452, file: !1453, line: 444, baseType: !1464, size: 8, offset: 400)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1452, file: !1453, line: 445, baseType: !1464, size: 8, offset: 408)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1452, file: !1453, line: 446, baseType: !1464, size: 8, offset: 416)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1452, file: !1453, line: 447, baseType: !1464, size: 8, offset: 424)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1452, file: !1453, line: 448, baseType: !1464, size: 8, offset: 432)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1452, file: !1453, line: 449, baseType: !1464, size: 8, offset: 440)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1452, file: !1453, line: 450, baseType: !1464, size: 8, offset: 448)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1452, file: !1453, line: 451, baseType: !1464, size: 8, offset: 456)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1452, file: !1453, line: 452, baseType: !1464, size: 8, offset: 464)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1452, file: !1453, line: 453, baseType: !1464, size: 8, offset: 472)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1452, file: !1453, line: 454, baseType: !1464, size: 8, offset: 480)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1452, file: !1453, line: 455, baseType: !1464, size: 8, offset: 488)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1452, file: !1453, line: 456, baseType: !1464, size: 8, offset: 496)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1452, file: !1453, line: 457, baseType: !1464, size: 8, offset: 504)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1452, file: !1453, line: 458, baseType: !1464, size: 8, offset: 512)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1452, file: !1453, line: 459, baseType: !1464, size: 8, offset: 520)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1452, file: !1453, line: 460, baseType: !1464, size: 8, offset: 528)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1452, file: !1453, line: 461, baseType: !1464, size: 8, offset: 536)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1452, file: !1453, line: 462, baseType: !1464, size: 8, offset: 544)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1452, file: !1453, line: 463, baseType: !1464, size: 8, offset: 552)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1452, file: !1453, line: 464, baseType: !1464, size: 8, offset: 560)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1452, file: !1453, line: 465, baseType: !1464, size: 8, offset: 568)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1452, file: !1453, line: 466, baseType: !1464, size: 8, offset: 576)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1452, file: !1453, line: 467, baseType: !1464, size: 8, offset: 584)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1452, file: !1453, line: 468, baseType: !1464, size: 8, offset: 592)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1452, file: !1453, line: 469, baseType: !1464, size: 8, offset: 600)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1452, file: !1453, line: 470, baseType: !1464, size: 8, offset: 608)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1452, file: !1453, line: 471, baseType: !1464, size: 8, offset: 616)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1452, file: !1453, line: 472, baseType: !1464, size: 8, offset: 624)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1452, file: !1453, line: 473, baseType: !1464, size: 8, offset: 632)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1452, file: !1453, line: 474, baseType: !1464, size: 8, offset: 640)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1452, file: !1453, line: 475, baseType: !1464, size: 8, offset: 648)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1452, file: !1453, line: 476, baseType: !1464, size: 8, offset: 656)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1452, file: !1453, line: 477, baseType: !1464, size: 8, offset: 664)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1452, file: !1453, line: 478, baseType: !1464, size: 8, offset: 672)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1452, file: !1453, line: 479, baseType: !1464, size: 8, offset: 680)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1452, file: !1453, line: 480, baseType: !1464, size: 8, offset: 688)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1452, file: !1453, line: 481, baseType: !1464, size: 8, offset: 696)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1452, file: !1453, line: 482, baseType: !1464, size: 8, offset: 704)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1452, file: !1453, line: 483, baseType: !1464, size: 8, offset: 712)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1452, file: !1453, line: 484, baseType: !1464, size: 8, offset: 720)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1452, file: !1453, line: 485, baseType: !1464, size: 8, offset: 728)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1452, file: !1453, line: 486, baseType: !1464, size: 8, offset: 736)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1452, file: !1453, line: 487, baseType: !1464, size: 8, offset: 744)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1452, file: !1453, line: 488, baseType: !1464, size: 8, offset: 752)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1452, file: !1453, line: 489, baseType: !1464, size: 8, offset: 760)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1452, file: !1453, line: 490, baseType: !1464, size: 8, offset: 768)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1452, file: !1453, line: 491, baseType: !1464, size: 8, offset: 776)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1452, file: !1453, line: 492, baseType: !1464, size: 8, offset: 784)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1452, file: !1453, line: 493, baseType: !1464, size: 8, offset: 792)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1452, file: !1453, line: 494, baseType: !1464, size: 8, offset: 800)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1452, file: !1453, line: 495, baseType: !1464, size: 8, offset: 808)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1452, file: !1453, line: 496, baseType: !1464, size: 8, offset: 816)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1452, file: !1453, line: 497, baseType: !1464, size: 8, offset: 824)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1452, file: !1453, line: 498, baseType: !1464, size: 8, offset: 832)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1452, file: !1453, line: 499, baseType: !1464, size: 8, offset: 840)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1452, file: !1453, line: 500, baseType: !1464, size: 8, offset: 848)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1452, file: !1453, line: 501, baseType: !1464, size: 8, offset: 856)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1452, file: !1453, line: 502, baseType: !1464, size: 8, offset: 864)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1452, file: !1453, line: 503, baseType: !1464, size: 8, offset: 872)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1452, file: !1453, line: 504, baseType: !1464, size: 8, offset: 880)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1452, file: !1453, line: 505, baseType: !1464, size: 8, offset: 888)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1452, file: !1453, line: 506, baseType: !1464, size: 8, offset: 896)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1452, file: !1453, line: 507, baseType: !1464, size: 8, offset: 904)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1452, file: !1453, line: 508, baseType: !1464, size: 8, offset: 912)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1452, file: !1453, line: 509, baseType: !1464, size: 8, offset: 920)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1452, file: !1453, line: 510, baseType: !1464, size: 8, offset: 928)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1452, file: !1453, line: 511, baseType: !1464, size: 8, offset: 936)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1452, file: !1453, line: 512, baseType: !1464, size: 8, offset: 944)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1452, file: !1453, line: 513, baseType: !1464, size: 8, offset: 952)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1452, file: !1453, line: 514, baseType: !1464, size: 8, offset: 960)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1452, file: !1453, line: 515, baseType: !1464, size: 8, offset: 968)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1452, file: !1453, line: 516, baseType: !1464, size: 8, offset: 976)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1452, file: !1453, line: 517, baseType: !1464, size: 8, offset: 984)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1452, file: !1453, line: 518, baseType: !1464, size: 8, offset: 992)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1452, file: !1453, line: 519, baseType: !1464, size: 8, offset: 1000)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1452, file: !1453, line: 520, baseType: !1464, size: 8, offset: 1008)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1452, file: !1453, line: 521, baseType: !1464, size: 8, offset: 1016)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1452, file: !1453, line: 522, baseType: !1464, size: 8, offset: 1024)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1452, file: !1453, line: 523, baseType: !1464, size: 8, offset: 1032)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1452, file: !1453, line: 524, baseType: !1464, size: 8, offset: 1040)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1452, file: !1453, line: 525, baseType: !1464, size: 8, offset: 1048)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1452, file: !1453, line: 526, baseType: !1464, size: 8, offset: 1056)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1452, file: !1453, line: 527, baseType: !1464, size: 8, offset: 1064)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1452, file: !1453, line: 528, baseType: !1464, size: 8, offset: 1072)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1452, file: !1453, line: 529, baseType: !1464, size: 8, offset: 1080)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1452, file: !1453, line: 530, baseType: !1464, size: 8, offset: 1088)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1452, file: !1453, line: 531, baseType: !1464, size: 8, offset: 1096)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1452, file: !1453, line: 532, baseType: !1464, size: 8, offset: 1104)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1452, file: !1453, line: 533, baseType: !1464, size: 8, offset: 1112)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1452, file: !1453, line: 534, baseType: !1464, size: 8, offset: 1120)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1452, file: !1453, line: 535, baseType: !1464, size: 8, offset: 1128)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1452, file: !1453, line: 536, baseType: !1464, size: 8, offset: 1136)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1452, file: !1453, line: 537, baseType: !1464, size: 8, offset: 1144)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1452, file: !1453, line: 538, baseType: !1464, size: 8, offset: 1152)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1452, file: !1453, line: 539, baseType: !1464, size: 8, offset: 1160)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1452, file: !1453, line: 540, baseType: !1464, size: 8, offset: 1168)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1452, file: !1453, line: 541, baseType: !1464, size: 8, offset: 1176)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1452, file: !1453, line: 542, baseType: !1464, size: 8, offset: 1184)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1452, file: !1453, line: 543, baseType: !1464, size: 8, offset: 1192)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1452, file: !1453, line: 544, baseType: !1464, size: 8, offset: 1200)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1452, file: !1453, line: 545, baseType: !1464, size: 8, offset: 1208)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1452, file: !1453, line: 546, baseType: !1464, size: 8, offset: 1216)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1452, file: !1453, line: 547, baseType: !1464, size: 8, offset: 1224)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1452, file: !1453, line: 548, baseType: !1464, size: 8, offset: 1232)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1452, file: !1453, line: 549, baseType: !1464, size: 8, offset: 1240)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1452, file: !1453, line: 550, baseType: !1464, size: 8, offset: 1248)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1452, file: !1453, line: 551, baseType: !1464, size: 8, offset: 1256)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1452, file: !1453, line: 552, baseType: !1464, size: 8, offset: 1264)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1452, file: !1453, line: 553, baseType: !1464, size: 8, offset: 1272)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1452, file: !1453, line: 554, baseType: !1464, size: 8, offset: 1280)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1452, file: !1453, line: 555, baseType: !1464, size: 8, offset: 1288)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1452, file: !1453, line: 556, baseType: !1464, size: 8, offset: 1296)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1452, file: !1453, line: 557, baseType: !1464, size: 8, offset: 1304)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1452, file: !1453, line: 558, baseType: !1464, size: 8, offset: 1312)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1452, file: !1453, line: 559, baseType: !1464, size: 8, offset: 1320)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1452, file: !1453, line: 560, baseType: !1464, size: 8, offset: 1328)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1452, file: !1453, line: 561, baseType: !1464, size: 8, offset: 1336)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1452, file: !1453, line: 562, baseType: !1464, size: 8, offset: 1344)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1452, file: !1453, line: 563, baseType: !1464, size: 8, offset: 1352)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1452, file: !1453, line: 564, baseType: !1464, size: 8, offset: 1360)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1452, file: !1453, line: 565, baseType: !1464, size: 8, offset: 1368)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1452, file: !1453, line: 566, baseType: !1464, size: 8, offset: 1376)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1452, file: !1453, line: 567, baseType: !1464, size: 8, offset: 1384)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1452, file: !1453, line: 568, baseType: !1464, size: 8, offset: 1392)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1452, file: !1453, line: 569, baseType: !1464, size: 8, offset: 1400)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1452, file: !1453, line: 570, baseType: !1464, size: 8, offset: 1408)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1452, file: !1453, line: 571, baseType: !1464, size: 8, offset: 1416)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1452, file: !1453, line: 572, baseType: !1464, size: 8, offset: 1424)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1452, file: !1453, line: 573, baseType: !1464, size: 8, offset: 1432)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1452, file: !1453, line: 574, baseType: !1464, size: 8, offset: 1440)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !560, file: !149, line: 3405, baseType: !1620, size: 384)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !149, line: 3352, size: 384, elements: !1621)
!1621 = !{!1622, !1623}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1620, file: !149, line: 3353, baseType: !596, size: 192)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1620, file: !149, line: 3356, baseType: !1624, size: 192, offset: 192)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1453, line: 578, size: 192, elements: !1625)
!1625 = !{!1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1624, file: !1453, line: 580, baseType: !467, size: 32)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1624, file: !1453, line: 581, baseType: !467, size: 32, offset: 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1624, file: !1453, line: 582, baseType: !467, size: 32, offset: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1624, file: !1453, line: 583, baseType: !467, size: 32, offset: 96)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1624, file: !1453, line: 584, baseType: !466, size: 8, offset: 128)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1624, file: !1453, line: 585, baseType: !466, size: 8, offset: 136)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1624, file: !1453, line: 586, baseType: !466, size: 8, offset: 144)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1624, file: !1453, line: 587, baseType: !466, size: 8, offset: 152)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1624, file: !1453, line: 588, baseType: !466, size: 8, offset: 160)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1624, file: !1453, line: 589, baseType: !466, size: 8, offset: 168)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1624, file: !1453, line: 590, baseType: !466, size: 8, offset: 176)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !535, file: !394, line: 739, baseType: !1638, size: 448)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !394, line: 350, size: 448, elements: !1639)
!1639 = !{!1640, !1646}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1638, file: !394, line: 353, baseType: !1641, size: 384)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !394, line: 333, size: 384, elements: !1642)
!1642 = !{!1643, !1644, !1645}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1641, file: !394, line: 336, baseType: !538, size: 256)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !1641, file: !394, line: 343, baseType: !1168, size: 64, offset: 256)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !1641, file: !394, line: 344, baseType: !1175, size: 64, offset: 320)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1638, file: !394, line: 359, baseType: !1131, size: 64, offset: 384)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !535, file: !394, line: 740, baseType: !1648, size: 512)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !394, line: 365, size: 512, elements: !1649)
!1649 = !{!1650, !1651, !1652}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1648, file: !394, line: 368, baseType: !1641, size: 384)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !1648, file: !394, line: 373, baseType: !558, size: 64, offset: 384)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !1648, file: !394, line: 374, baseType: !558, size: 64, offset: 448)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !535, file: !394, line: 741, baseType: !1654, size: 576)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !394, line: 380, size: 576, elements: !1655)
!1655 = !{!1656, !1657}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1654, file: !394, line: 383, baseType: !1648, size: 512)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1654, file: !394, line: 389, baseType: !1131, size: 64, offset: 512)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !535, file: !394, line: 742, baseType: !1659, size: 320)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !394, line: 395, size: 320, elements: !1660)
!1660 = !{!1661, !1662}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1659, file: !394, line: 397, baseType: !538, size: 256)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1659, file: !394, line: 400, baseType: !523, size: 64, offset: 256)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !535, file: !394, line: 743, baseType: !1664, size: 448)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !394, line: 406, size: 448, elements: !1665)
!1665 = !{!1666, !1667, !1668, !1669}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1664, file: !394, line: 408, baseType: !538, size: 256)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1664, file: !394, line: 412, baseType: !558, size: 64, offset: 256)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1664, file: !394, line: 420, baseType: !558, size: 64, offset: 320)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1664, file: !394, line: 423, baseType: !523, size: 64, offset: 384)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !535, file: !394, line: 744, baseType: !1671, size: 384)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !394, line: 429, size: 384, elements: !1672)
!1672 = !{!1673, !1674, !1675}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1671, file: !394, line: 431, baseType: !538, size: 256)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1671, file: !394, line: 434, baseType: !558, size: 64, offset: 256)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1671, file: !394, line: 437, baseType: !523, size: 64, offset: 320)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !535, file: !394, line: 745, baseType: !1677, size: 384)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !394, line: 443, size: 384, elements: !1678)
!1678 = !{!1679, !1680, !1681}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1677, file: !394, line: 445, baseType: !538, size: 256)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1677, file: !394, line: 449, baseType: !558, size: 64, offset: 256)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1677, file: !394, line: 453, baseType: !523, size: 64, offset: 320)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !535, file: !394, line: 746, baseType: !1683, size: 320)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !394, line: 459, size: 320, elements: !1684)
!1684 = !{!1685, !1686}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1683, file: !394, line: 461, baseType: !538, size: 256)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1683, file: !394, line: 464, baseType: !558, size: 64, offset: 256)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !535, file: !394, line: 747, baseType: !1688, size: 768)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !394, line: 469, size: 768, elements: !1689)
!1689 = !{!1690, !1691, !1692, !1693, !1694}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1688, file: !394, line: 471, baseType: !538, size: 256)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1688, file: !394, line: 474, baseType: !5, size: 32, offset: 256)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1688, file: !394, line: 475, baseType: !5, size: 32, offset: 288)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1688, file: !394, line: 478, baseType: !558, size: 64, offset: 320)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1688, file: !394, line: 481, baseType: !1695, size: 384, offset: 384)
!1695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1696, size: 384, elements: !487)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !149, line: 1917, size: 384, elements: !1697)
!1697 = !{!1698, !1699, !1700}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1696, file: !149, line: 1920, baseType: !1180, size: 256)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1696, file: !149, line: 1921, baseType: !558, size: 64, offset: 256)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1696, file: !149, line: 1922, baseType: !551, size: 32, offset: 320)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !535, file: !394, line: 748, baseType: !1702, size: 320)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !394, line: 487, size: 320, elements: !1703)
!1703 = !{!1704, !1705}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1702, file: !394, line: 490, baseType: !538, size: 256)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1702, file: !394, line: 494, baseType: !467, size: 32, offset: 256)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !535, file: !394, line: 749, baseType: !1707, size: 384)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !394, line: 500, size: 384, elements: !1708)
!1708 = !{!1709, !1710, !1711}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1707, file: !394, line: 502, baseType: !538, size: 256)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1707, file: !394, line: 506, baseType: !523, size: 64, offset: 256)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1707, file: !394, line: 510, baseType: !523, size: 64, offset: 320)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !535, file: !394, line: 750, baseType: !1713, size: 320)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !394, line: 529, size: 320, elements: !1714)
!1714 = !{!1715, !1716}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1713, file: !394, line: 531, baseType: !538, size: 256)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1713, file: !394, line: 540, baseType: !523, size: 64, offset: 256)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !535, file: !394, line: 751, baseType: !1718, size: 704)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !394, line: 546, size: 704, elements: !1719)
!1719 = !{!1720, !1721, !1722, !1723, !1724, !1725, !1726}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1718, file: !394, line: 549, baseType: !1648, size: 512)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1718, file: !394, line: 553, baseType: !472, size: 64, offset: 512)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1718, file: !394, line: 557, baseType: !466, size: 8, offset: 576)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1718, file: !394, line: 558, baseType: !466, size: 8, offset: 584)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1718, file: !394, line: 559, baseType: !466, size: 8, offset: 592)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1718, file: !394, line: 560, baseType: !466, size: 8, offset: 600)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1718, file: !394, line: 566, baseType: !1131, size: 64, offset: 640)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !535, file: !394, line: 752, baseType: !1728, size: 384)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !394, line: 571, size: 384, elements: !1729)
!1729 = !{!1730, !1731}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1728, file: !394, line: 573, baseType: !1659, size: 320)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1728, file: !394, line: 577, baseType: !558, size: 64, offset: 320)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !535, file: !394, line: 753, baseType: !1733, size: 576)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !394, line: 600, size: 576, elements: !1734)
!1734 = !{!1735, !1736, !1737, !1738, !1747}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1733, file: !394, line: 602, baseType: !1659, size: 320)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1733, file: !394, line: 605, baseType: !558, size: 64, offset: 320)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1733, file: !394, line: 609, baseType: !1081, size: 64, offset: 384)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1733, file: !394, line: 612, baseType: !1739, size: 64, offset: 448)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !394, line: 581, size: 320, elements: !1741)
!1741 = !{!1742, !1743, !1744, !1745, !1746}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1740, file: !394, line: 583, baseType: !181, size: 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1740, file: !394, line: 586, baseType: !558, size: 64, offset: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1740, file: !394, line: 589, baseType: !558, size: 64, offset: 128)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1740, file: !394, line: 592, baseType: !558, size: 64, offset: 192)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1740, file: !394, line: 595, baseType: !558, size: 64, offset: 256)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1733, file: !394, line: 616, baseType: !523, size: 64, offset: 512)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !535, file: !394, line: 754, baseType: !1749, size: 512)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !394, line: 622, size: 512, elements: !1750)
!1750 = !{!1751, !1752, !1753, !1754}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1749, file: !394, line: 624, baseType: !1659, size: 320)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1749, file: !394, line: 628, baseType: !558, size: 64, offset: 320)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1749, file: !394, line: 632, baseType: !558, size: 64, offset: 384)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1749, file: !394, line: 636, baseType: !558, size: 64, offset: 448)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !535, file: !394, line: 755, baseType: !1756, size: 704)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !394, line: 642, size: 704, elements: !1757)
!1757 = !{!1758, !1759, !1760, !1761}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1756, file: !394, line: 644, baseType: !1749, size: 512)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1756, file: !394, line: 648, baseType: !558, size: 64, offset: 512)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1756, file: !394, line: 652, baseType: !558, size: 64, offset: 576)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1756, file: !394, line: 653, baseType: !558, size: 64, offset: 640)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !535, file: !394, line: 756, baseType: !1763, size: 448)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !394, line: 663, size: 448, elements: !1764)
!1764 = !{!1765, !1766, !1767}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1763, file: !394, line: 665, baseType: !1659, size: 320)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1763, file: !394, line: 668, baseType: !558, size: 64, offset: 320)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1763, file: !394, line: 673, baseType: !558, size: 64, offset: 384)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !535, file: !394, line: 757, baseType: !1769, size: 384)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !394, line: 694, size: 384, elements: !1770)
!1770 = !{!1771, !1772}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1769, file: !394, line: 696, baseType: !1659, size: 320)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1769, file: !394, line: 699, baseType: !558, size: 64, offset: 320)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !535, file: !394, line: 758, baseType: !1774, size: 384)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !394, line: 681, size: 384, elements: !1775)
!1775 = !{!1776, !1777, !1778}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1774, file: !394, line: 683, baseType: !538, size: 256)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1774, file: !394, line: 686, baseType: !558, size: 64, offset: 256)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1774, file: !394, line: 689, baseType: !558, size: 64, offset: 320)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !535, file: !394, line: 759, baseType: !1780, size: 384)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !394, line: 707, size: 384, elements: !1781)
!1781 = !{!1782, !1783, !1784}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1780, file: !394, line: 709, baseType: !538, size: 256)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1780, file: !394, line: 712, baseType: !558, size: 64, offset: 256)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1780, file: !394, line: 712, baseType: !558, size: 64, offset: 320)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !535, file: !394, line: 760, baseType: !1786, size: 320)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !394, line: 718, size: 320, elements: !1787)
!1787 = !{!1788, !1789}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1786, file: !394, line: 720, baseType: !538, size: 256)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1786, file: !394, line: 723, baseType: !558, size: 64, offset: 256)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !530, file: !394, line: 138, baseType: !529, size: 64, offset: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !530, file: !394, line: 139, baseType: !529, size: 64, offset: 128)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !525, file: !394, line: 146, baseType: !528, size: 64, offset: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !525, file: !394, line: 152, baseType: !523, size: 64, offset: 128)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !520, file: !133, line: 130, baseType: !726, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !515, file: !133, line: 134, baseType: !471, size: 64, offset: 192)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !515, file: !133, line: 137, baseType: !558, size: 64, offset: 256)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !515, file: !133, line: 138, baseType: !551, size: 32, offset: 320)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !515, file: !133, line: 142, baseType: !5, size: 32, offset: 352)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !515, file: !133, line: 144, baseType: !467, size: 32, offset: 384)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !515, file: !133, line: 145, baseType: !467, size: 32, offset: 416)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !515, file: !133, line: 146, baseType: !1802, size: 64, offset: 448)
!1802 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !133, line: 119, baseType: !613)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !497, file: !133, line: 220, baseType: !500, size: 64, offset: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !497, file: !133, line: 223, baseType: !471, size: 64, offset: 128)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !497, file: !133, line: 226, baseType: !490, size: 64, offset: 192)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !497, file: !133, line: 229, baseType: !1807, size: 128, offset: 256)
!1807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1808, size: 128, elements: !794)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !133, line: 229, flags: DIFlagFwdDecl)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !497, file: !133, line: 232, baseType: !496, size: 64, offset: 384)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !497, file: !133, line: 233, baseType: !496, size: 64, offset: 448)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !497, file: !133, line: 238, baseType: !1813, size: 64, offset: 512)
!1813 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !133, line: 235, size: 64, elements: !1814)
!1814 = !{!1815, !1821}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1813, file: !133, line: 236, baseType: !1816, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !133, line: 273, size: 128, elements: !1818)
!1818 = !{!1819, !1820}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1817, file: !133, line: 275, baseType: !523, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1817, file: !133, line: 278, baseType: !523, size: 64, offset: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1813, file: !133, line: 237, baseType: !1822, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !133, line: 259, size: 320, elements: !1824)
!1824 = !{!1825, !1826, !1827, !1828, !1829}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1823, file: !133, line: 261, baseType: !726, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1823, file: !133, line: 262, baseType: !726, size: 64, offset: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1823, file: !133, line: 266, baseType: !726, size: 64, offset: 128)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1823, file: !133, line: 267, baseType: !726, size: 64, offset: 192)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1823, file: !133, line: 270, baseType: !467, size: 32, offset: 256)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !497, file: !133, line: 241, baseType: !1802, size: 64, offset: 576)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !497, file: !133, line: 244, baseType: !467, size: 32, offset: 640)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !497, file: !133, line: 247, baseType: !467, size: 32, offset: 672)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !497, file: !133, line: 250, baseType: !467, size: 32, offset: 704)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !497, file: !133, line: 253, baseType: !467, size: 32, offset: 736)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !497, file: !133, line: 256, baseType: !467, size: 32, offset: 768)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "latch", scope: !491, file: !376, line: 111, baseType: !496, size: 64, offset: 128)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "lpt_decision", scope: !491, file: !376, line: 114, baseType: !1838, size: 64, offset: 192)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lpt_decision", file: !376, line: 41, size: 64, elements: !1839)
!1839 = !{!1840, !1841}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "decision", scope: !1838, file: !376, line: 42, baseType: !375, size: 32)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "times", scope: !1838, file: !376, line: 43, baseType: !5, size: 32, offset: 32)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "av_ninsns", scope: !491, file: !376, line: 117, baseType: !5, size: 32, offset: 256)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "num_nodes", scope: !491, file: !376, line: 120, baseType: !5, size: 32, offset: 288)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "superloops", scope: !491, file: !376, line: 123, baseType: !1197, size: 64, offset: 320)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !491, file: !376, line: 126, baseType: !490, size: 64, offset: 384)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !491, file: !376, line: 129, baseType: !490, size: 64, offset: 448)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !491, file: !376, line: 132, baseType: !471, size: 64, offset: 512)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations", scope: !491, file: !376, line: 139, baseType: !558, size: 64, offset: 576)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_upper_bound", scope: !491, file: !376, line: 143, baseType: !606, size: 128, offset: 640)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_estimate", scope: !491, file: !376, line: 146, baseType: !606, size: 128, offset: 768)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "any_upper_bound", scope: !491, file: !376, line: 148, baseType: !466, size: 8, offset: 896)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "any_estimate", scope: !491, file: !376, line: 149, baseType: !466, size: 8, offset: 904)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "estimate_state", scope: !491, file: !376, line: 153, baseType: !384, size: 32, offset: 928)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !491, file: !376, line: 156, baseType: !1855, size: 64, offset: 960)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nb_iter_bound", file: !376, line: 48, size: 320, elements: !1857)
!1857 = !{!1858, !1859, !1860, !1861}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1856, file: !376, line: 50, baseType: !533, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !1856, file: !376, line: 59, baseType: !606, size: 128, offset: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "is_exit", scope: !1856, file: !376, line: 64, baseType: !466, size: 8, offset: 192)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1856, file: !376, line: 67, baseType: !1855, size: 64, offset: 256)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !491, file: !376, line: 159, baseType: !1863, size: 64, offset: 1024)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop_exit", file: !376, line: 72, size: 256, elements: !1865)
!1865 = !{!1866, !1867, !1868, !1869}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !1864, file: !376, line: 74, baseType: !514, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1864, file: !376, line: 77, baseType: !1863, size: 64, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1864, file: !376, line: 78, baseType: !1863, size: 64, offset: 128)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "next_e", scope: !1864, file: !376, line: 81, baseType: !1863, size: 64, offset: 192)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_parallel", scope: !491, file: !376, line: 162, baseType: !466, size: 8, offset: 1088)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "single_iv", scope: !491, file: !376, line: 166, baseType: !558, size: 64, offset: 1152)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !535)
!1874 = !{i32 2, !"Dwarf Version", i32 4}
!1875 = !{i32 2, !"Debug Info Version", i32 3}
!1876 = !{i32 1, !"wchar_size", i32 4}
!1877 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1878 = distinct !DISubprogram(name: "vprintf", scope: !1879, file: !1879, line: 39, type: !1880, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1890)
!1879 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1880 = !DISubroutineType(types: !1881)
!1881 = !{!467, !1882, !1883}
!1882 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !472)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !1885)
!1885 = !{!1886, !1887, !1888, !1889}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1884, file: !1, baseType: !5, size: 32)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1884, file: !1, baseType: !5, size: 32, offset: 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1884, file: !1, baseType: !471, size: 64, offset: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1884, file: !1, baseType: !471, size: 64, offset: 128)
!1890 = !{!1891, !1892}
!1891 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1878, file: !1879, line: 39, type: !1882)
!1892 = !DILocalVariable(name: "__arg", arg: 2, scope: !1878, file: !1879, line: 39, type: !1883)
!1893 = !DILocation(line: 0, scope: !1878)
!1894 = !DILocation(line: 41, column: 20, scope: !1878)
!1895 = !DILocation(line: 41, column: 10, scope: !1878)
!1896 = !DILocation(line: 41, column: 3, scope: !1878)
!1897 = distinct !DISubprogram(name: "getchar", scope: !1879, file: !1879, line: 47, type: !1898, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1900)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{!467}
!1900 = !{}
!1901 = !DILocation(line: 49, column: 16, scope: !1897)
!1902 = !DILocation(line: 49, column: 10, scope: !1897)
!1903 = !DILocation(line: 49, column: 3, scope: !1897)
!1904 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1879, file: !1879, line: 56, type: !1905, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1958)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!467, !1907}
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1909, line: 7, baseType: !1910)
!1909 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1911, line: 49, size: 1728, elements: !1912)
!1911 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1912 = !{!1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1928, !1930, !1931, !1932, !1935, !1937, !1938, !1939, !1942, !1944, !1947, !1950, !1951, !1952, !1953, !1954}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1910, file: !1911, line: 51, baseType: !467, size: 32)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1910, file: !1911, line: 54, baseType: !469, size: 64, offset: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1910, file: !1911, line: 55, baseType: !469, size: 64, offset: 128)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1910, file: !1911, line: 56, baseType: !469, size: 64, offset: 192)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1910, file: !1911, line: 57, baseType: !469, size: 64, offset: 256)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1910, file: !1911, line: 58, baseType: !469, size: 64, offset: 320)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1910, file: !1911, line: 59, baseType: !469, size: 64, offset: 384)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1910, file: !1911, line: 60, baseType: !469, size: 64, offset: 448)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1910, file: !1911, line: 61, baseType: !469, size: 64, offset: 512)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1910, file: !1911, line: 64, baseType: !469, size: 64, offset: 576)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1910, file: !1911, line: 65, baseType: !469, size: 64, offset: 640)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1910, file: !1911, line: 66, baseType: !469, size: 64, offset: 704)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1910, file: !1911, line: 68, baseType: !1926, size: 64, offset: 768)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1911, line: 36, flags: DIFlagFwdDecl)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1910, file: !1911, line: 70, baseType: !1929, size: 64, offset: 832)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1910, file: !1911, line: 72, baseType: !467, size: 32, offset: 896)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1910, file: !1911, line: 73, baseType: !467, size: 32, offset: 928)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1910, file: !1911, line: 74, baseType: !1933, size: 64, offset: 960)
!1933 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1934, line: 152, baseType: !613)
!1934 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1910, file: !1911, line: 77, baseType: !1936, size: 16, offset: 1024)
!1936 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1910, file: !1911, line: 78, baseType: !1464, size: 8, offset: 1040)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1910, file: !1911, line: 79, baseType: !655, size: 8, offset: 1048)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1910, file: !1911, line: 81, baseType: !1940, size: 64, offset: 1088)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1911, line: 43, baseType: null)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1910, file: !1911, line: 89, baseType: !1943, size: 64, offset: 1152)
!1943 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1934, line: 153, baseType: !613)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1910, file: !1911, line: 91, baseType: !1945, size: 64, offset: 1216)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1911, line: 37, flags: DIFlagFwdDecl)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1910, file: !1911, line: 92, baseType: !1948, size: 64, offset: 1280)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1911, line: 38, flags: DIFlagFwdDecl)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1910, file: !1911, line: 93, baseType: !1929, size: 64, offset: 1344)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1910, file: !1911, line: 94, baseType: !471, size: 64, offset: 1408)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1910, file: !1911, line: 95, baseType: !1081, size: 64, offset: 1472)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1910, file: !1911, line: 96, baseType: !467, size: 32, offset: 1536)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1910, file: !1911, line: 98, baseType: !1955, size: 160, offset: 1568)
!1955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !470, size: 160, elements: !1956)
!1956 = !{!1957}
!1957 = !DISubrange(count: 20)
!1958 = !{!1959}
!1959 = !DILocalVariable(name: "__fp", arg: 1, scope: !1904, file: !1879, line: 56, type: !1907)
!1960 = !DILocation(line: 0, scope: !1904)
!1961 = !DILocation(line: 58, column: 10, scope: !1904)
!1962 = !DILocation(line: 58, column: 3, scope: !1904)
!1963 = distinct !DISubprogram(name: "getc_unlocked", scope: !1879, file: !1879, line: 66, type: !1905, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1964)
!1964 = !{!1965}
!1965 = !DILocalVariable(name: "__fp", arg: 1, scope: !1963, file: !1879, line: 66, type: !1907)
!1966 = !DILocation(line: 0, scope: !1963)
!1967 = !DILocation(line: 68, column: 10, scope: !1963)
!1968 = !DILocation(line: 68, column: 3, scope: !1963)
!1969 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1879, file: !1879, line: 73, type: !1898, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1900)
!1970 = !DILocation(line: 75, column: 10, scope: !1969)
!1971 = !DILocation(line: 75, column: 3, scope: !1969)
!1972 = distinct !DISubprogram(name: "putchar", scope: !1879, file: !1879, line: 82, type: !1973, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1975)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!467, !467}
!1975 = !{!1976}
!1976 = !DILocalVariable(name: "__c", arg: 1, scope: !1972, file: !1879, line: 82, type: !467)
!1977 = !DILocation(line: 0, scope: !1972)
!1978 = !DILocation(line: 84, column: 21, scope: !1972)
!1979 = !DILocation(line: 84, column: 10, scope: !1972)
!1980 = !DILocation(line: 84, column: 3, scope: !1972)
!1981 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1879, file: !1879, line: 91, type: !1982, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1984)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!467, !467, !1907}
!1984 = !{!1985, !1986}
!1985 = !DILocalVariable(name: "__c", arg: 1, scope: !1981, file: !1879, line: 91, type: !467)
!1986 = !DILocalVariable(name: "__stream", arg: 2, scope: !1981, file: !1879, line: 91, type: !1907)
!1987 = !DILocation(line: 0, scope: !1981)
!1988 = !DILocation(line: 93, column: 10, scope: !1981)
!1989 = !DILocation(line: 93, column: 3, scope: !1981)
!1990 = distinct !DISubprogram(name: "putc_unlocked", scope: !1879, file: !1879, line: 101, type: !1982, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1991)
!1991 = !{!1992, !1993}
!1992 = !DILocalVariable(name: "__c", arg: 1, scope: !1990, file: !1879, line: 101, type: !467)
!1993 = !DILocalVariable(name: "__stream", arg: 2, scope: !1990, file: !1879, line: 101, type: !1907)
!1994 = !DILocation(line: 0, scope: !1990)
!1995 = !DILocation(line: 103, column: 10, scope: !1990)
!1996 = !DILocation(line: 103, column: 3, scope: !1990)
!1997 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1879, file: !1879, line: 108, type: !1973, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1998)
!1998 = !{!1999}
!1999 = !DILocalVariable(name: "__c", arg: 1, scope: !1997, file: !1879, line: 108, type: !467)
!2000 = !DILocation(line: 0, scope: !1997)
!2001 = !DILocation(line: 110, column: 10, scope: !1997)
!2002 = !DILocation(line: 110, column: 3, scope: !1997)
!2003 = distinct !DISubprogram(name: "getline", scope: !1879, file: !1879, line: 118, type: !2004, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2008)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!2006, !468, !2007, !1907}
!2006 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1934, line: 193, baseType: !613)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!2008 = !{!2009, !2010, !2011}
!2009 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2003, file: !1879, line: 118, type: !468)
!2010 = !DILocalVariable(name: "__n", arg: 2, scope: !2003, file: !1879, line: 118, type: !2007)
!2011 = !DILocalVariable(name: "__stream", arg: 3, scope: !2003, file: !1879, line: 118, type: !1907)
!2012 = !DILocation(line: 0, scope: !2003)
!2013 = !DILocation(line: 120, column: 10, scope: !2003)
!2014 = !DILocation(line: 120, column: 3, scope: !2003)
!2015 = distinct !DISubprogram(name: "feof_unlocked", scope: !1879, file: !1879, line: 128, type: !1905, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2016)
!2016 = !{!2017}
!2017 = !DILocalVariable(name: "__stream", arg: 1, scope: !2015, file: !1879, line: 128, type: !1907)
!2018 = !DILocation(line: 0, scope: !2015)
!2019 = !DILocation(line: 130, column: 10, scope: !2015)
!2020 = !DILocation(line: 130, column: 3, scope: !2015)
!2021 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1879, file: !1879, line: 135, type: !1905, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2022)
!2022 = !{!2023}
!2023 = !DILocalVariable(name: "__stream", arg: 1, scope: !2021, file: !1879, line: 135, type: !1907)
!2024 = !DILocation(line: 0, scope: !2021)
!2025 = !DILocation(line: 137, column: 10, scope: !2021)
!2026 = !DILocation(line: 137, column: 3, scope: !2021)
!2027 = distinct !DISubprogram(name: "tolower", scope: !2028, file: !2028, line: 207, type: !1973, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2029)
!2028 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2029 = !{!2030}
!2030 = !DILocalVariable(name: "__c", arg: 1, scope: !2027, file: !2028, line: 207, type: !467)
!2031 = !DILocation(line: 0, scope: !2027)
!2032 = !DILocation(line: 209, column: 22, scope: !2027)
!2033 = !DILocation(line: 209, column: 39, scope: !2027)
!2034 = !DILocation(line: 209, column: 38, scope: !2027)
!2035 = !DILocation(line: 209, column: 37, scope: !2027)
!2036 = !DILocation(line: 209, column: 10, scope: !2027)
!2037 = !DILocation(line: 209, column: 3, scope: !2027)
!2038 = distinct !DISubprogram(name: "toupper", scope: !2028, file: !2028, line: 213, type: !1973, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2039)
!2039 = !{!2040}
!2040 = !DILocalVariable(name: "__c", arg: 1, scope: !2038, file: !2028, line: 213, type: !467)
!2041 = !DILocation(line: 0, scope: !2038)
!2042 = !DILocation(line: 215, column: 22, scope: !2038)
!2043 = !DILocation(line: 215, column: 39, scope: !2038)
!2044 = !DILocation(line: 215, column: 38, scope: !2038)
!2045 = !DILocation(line: 215, column: 37, scope: !2038)
!2046 = !DILocation(line: 215, column: 10, scope: !2038)
!2047 = !DILocation(line: 215, column: 3, scope: !2038)
!2048 = distinct !DISubprogram(name: "atoi", scope: !2049, file: !2049, line: 361, type: !2050, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2052)
!2049 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!467, !472}
!2052 = !{!2053}
!2053 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2048, file: !2049, line: 361, type: !472)
!2054 = !DILocation(line: 0, scope: !2048)
!2055 = !DILocation(line: 363, column: 16, scope: !2048)
!2056 = !DILocation(line: 363, column: 10, scope: !2048)
!2057 = !DILocation(line: 363, column: 3, scope: !2048)
!2058 = distinct !DISubprogram(name: "atol", scope: !2049, file: !2049, line: 366, type: !2059, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2061)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!613, !472}
!2061 = !{!2062}
!2062 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2058, file: !2049, line: 366, type: !472)
!2063 = !DILocation(line: 0, scope: !2058)
!2064 = !DILocation(line: 368, column: 10, scope: !2058)
!2065 = !DILocation(line: 368, column: 3, scope: !2058)
!2066 = distinct !DISubprogram(name: "atoll", scope: !2049, file: !2049, line: 373, type: !2067, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2070)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!2069, !472}
!2069 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2070 = !{!2071}
!2071 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2066, file: !2049, line: 373, type: !472)
!2072 = !DILocation(line: 0, scope: !2066)
!2073 = !DILocation(line: 375, column: 10, scope: !2066)
!2074 = !DILocation(line: 375, column: 3, scope: !2066)
!2075 = distinct !DISubprogram(name: "bsearch", scope: !2076, file: !2076, line: 20, type: !2077, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2080)
!2076 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2077 = !DISubroutineType(types: !2078)
!2078 = !{!471, !898, !898, !1081, !1081, !2079}
!2079 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2049, line: 808, baseType: !1070)
!2080 = !{!2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090}
!2081 = !DILocalVariable(name: "__key", arg: 1, scope: !2075, file: !2076, line: 20, type: !898)
!2082 = !DILocalVariable(name: "__base", arg: 2, scope: !2075, file: !2076, line: 20, type: !898)
!2083 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2075, file: !2076, line: 20, type: !1081)
!2084 = !DILocalVariable(name: "__size", arg: 4, scope: !2075, file: !2076, line: 20, type: !1081)
!2085 = !DILocalVariable(name: "__compar", arg: 5, scope: !2075, file: !2076, line: 21, type: !2079)
!2086 = !DILocalVariable(name: "__l", scope: !2075, file: !2076, line: 23, type: !1081)
!2087 = !DILocalVariable(name: "__u", scope: !2075, file: !2076, line: 23, type: !1081)
!2088 = !DILocalVariable(name: "__idx", scope: !2075, file: !2076, line: 23, type: !1081)
!2089 = !DILocalVariable(name: "__p", scope: !2075, file: !2076, line: 24, type: !898)
!2090 = !DILocalVariable(name: "__comparison", scope: !2075, file: !2076, line: 25, type: !467)
!2091 = !DILocation(line: 0, scope: !2075)
!2092 = !DILocation(line: 29, column: 3, scope: !2075)
!2093 = !DILocation(line: 27, column: 7, scope: !2075)
!2094 = !DILocation(line: 29, column: 14, scope: !2075)
!2095 = !DILocation(line: 31, column: 20, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2075, file: !2076, line: 30, column: 5)
!2097 = !DILocation(line: 31, column: 27, scope: !2096)
!2098 = !DILocation(line: 32, column: 56, scope: !2096)
!2099 = !DILocation(line: 32, column: 47, scope: !2096)
!2100 = !DILocation(line: 33, column: 22, scope: !2096)
!2101 = !DILocation(line: 34, column: 24, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2096, file: !2076, line: 34, column: 11)
!2103 = !DILocation(line: 34, column: 11, scope: !2096)
!2104 = !DILocation(line: 36, column: 29, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2102, file: !2076, line: 36, column: 16)
!2106 = !DILocation(line: 36, column: 16, scope: !2102)
!2107 = !DILocation(line: 37, column: 14, scope: !2105)
!2108 = distinct !{!2108, !2092, !2109}
!2109 = !DILocation(line: 40, column: 5, scope: !2075)
!2110 = !DILocation(line: 43, column: 1, scope: !2075)
!2111 = distinct !DISubprogram(name: "atof", scope: !2112, file: !2112, line: 25, type: !2113, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2116)
!2112 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!2115, !472}
!2115 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2116 = !{!2117}
!2117 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2111, file: !2112, line: 25, type: !472)
!2118 = !DILocation(line: 0, scope: !2111)
!2119 = !DILocation(line: 27, column: 10, scope: !2111)
!2120 = !DILocation(line: 27, column: 3, scope: !2111)
!2121 = distinct !DISubprogram(name: "strtoimax", scope: !2122, file: !2122, line: 324, type: !2123, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2129)
!2122 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!2125, !1882, !2128, !467}
!2125 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2126, line: 101, baseType: !2127)
!2126 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1934, line: 72, baseType: !613)
!2128 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !468)
!2129 = !{!2130, !2131, !2132}
!2130 = !DILocalVariable(name: "nptr", arg: 1, scope: !2121, file: !2122, line: 324, type: !1882)
!2131 = !DILocalVariable(name: "endptr", arg: 2, scope: !2121, file: !2122, line: 324, type: !2128)
!2132 = !DILocalVariable(name: "base", arg: 3, scope: !2121, file: !2122, line: 324, type: !467)
!2133 = !DILocation(line: 0, scope: !2121)
!2134 = !DILocation(line: 327, column: 10, scope: !2121)
!2135 = !DILocation(line: 327, column: 3, scope: !2121)
!2136 = distinct !DISubprogram(name: "strtoumax", scope: !2122, file: !2122, line: 336, type: !2137, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2141)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!2139, !1882, !2128, !467}
!2139 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2126, line: 102, baseType: !2140)
!2140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1934, line: 73, baseType: !611)
!2141 = !{!2142, !2143, !2144}
!2142 = !DILocalVariable(name: "nptr", arg: 1, scope: !2136, file: !2122, line: 336, type: !1882)
!2143 = !DILocalVariable(name: "endptr", arg: 2, scope: !2136, file: !2122, line: 336, type: !2128)
!2144 = !DILocalVariable(name: "base", arg: 3, scope: !2136, file: !2122, line: 336, type: !467)
!2145 = !DILocation(line: 0, scope: !2136)
!2146 = !DILocation(line: 339, column: 10, scope: !2136)
!2147 = !DILocation(line: 339, column: 3, scope: !2136)
!2148 = distinct !DISubprogram(name: "wcstoimax", scope: !2122, file: !2122, line: 348, type: !2149, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2158)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!2125, !2151, !2155, !467}
!2151 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2152)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2154)
!2154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2122, line: 34, baseType: !467)
!2155 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2156)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2158 = !{!2159, !2160, !2161}
!2159 = !DILocalVariable(name: "nptr", arg: 1, scope: !2148, file: !2122, line: 348, type: !2151)
!2160 = !DILocalVariable(name: "endptr", arg: 2, scope: !2148, file: !2122, line: 348, type: !2155)
!2161 = !DILocalVariable(name: "base", arg: 3, scope: !2148, file: !2122, line: 348, type: !467)
!2162 = !DILocation(line: 0, scope: !2148)
!2163 = !DILocation(line: 351, column: 10, scope: !2148)
!2164 = !DILocation(line: 351, column: 3, scope: !2148)
!2165 = distinct !DISubprogram(name: "wcstoumax", scope: !2122, file: !2122, line: 362, type: !2166, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2168)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!2139, !2151, !2155, !467}
!2168 = !{!2169, !2170, !2171}
!2169 = !DILocalVariable(name: "nptr", arg: 1, scope: !2165, file: !2122, line: 362, type: !2151)
!2170 = !DILocalVariable(name: "endptr", arg: 2, scope: !2165, file: !2122, line: 362, type: !2155)
!2171 = !DILocalVariable(name: "base", arg: 3, scope: !2165, file: !2122, line: 362, type: !467)
!2172 = !DILocation(line: 0, scope: !2165)
!2173 = !DILocation(line: 365, column: 10, scope: !2165)
!2174 = !DILocation(line: 365, column: 3, scope: !2165)
!2175 = distinct !DISubprogram(name: "stat", scope: !2176, file: !2176, line: 453, type: !2177, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2214)
!2176 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!467, !472, !2179}
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2181, line: 46, size: 1152, elements: !2182)
!2181 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2182 = !{!2183, !2185, !2187, !2189, !2191, !2193, !2195, !2196, !2197, !2198, !2200, !2202, !2210, !2211, !2212}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2180, file: !2181, line: 48, baseType: !2184, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1934, line: 145, baseType: !611)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2180, file: !2181, line: 53, baseType: !2186, size: 64, offset: 64)
!2186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1934, line: 148, baseType: !611)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2180, file: !2181, line: 61, baseType: !2188, size: 64, offset: 128)
!2188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1934, line: 151, baseType: !611)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2180, file: !2181, line: 62, baseType: !2190, size: 32, offset: 192)
!2190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1934, line: 150, baseType: !5)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2180, file: !2181, line: 64, baseType: !2192, size: 32, offset: 224)
!2192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1934, line: 146, baseType: !5)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2180, file: !2181, line: 65, baseType: !2194, size: 32, offset: 256)
!2194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1934, line: 147, baseType: !5)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2180, file: !2181, line: 67, baseType: !467, size: 32, offset: 288)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2180, file: !2181, line: 69, baseType: !2184, size: 64, offset: 320)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2180, file: !2181, line: 74, baseType: !1933, size: 64, offset: 384)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2180, file: !2181, line: 78, baseType: !2199, size: 64, offset: 448)
!2199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1934, line: 174, baseType: !613)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2180, file: !2181, line: 80, baseType: !2201, size: 64, offset: 512)
!2201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1934, line: 179, baseType: !613)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2180, file: !2181, line: 91, baseType: !2203, size: 128, offset: 576)
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2204, line: 10, size: 128, elements: !2205)
!2204 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2205 = !{!2206, !2208}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2203, file: !2204, line: 12, baseType: !2207, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1934, line: 160, baseType: !613)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2203, file: !2204, line: 16, baseType: !2209, size: 64, offset: 64)
!2209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1934, line: 196, baseType: !613)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2180, file: !2181, line: 92, baseType: !2203, size: 128, offset: 704)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2180, file: !2181, line: 93, baseType: !2203, size: 128, offset: 832)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2180, file: !2181, line: 106, baseType: !2213, size: 192, offset: 960)
!2213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2209, size: 192, elements: !631)
!2214 = !{!2215, !2216}
!2215 = !DILocalVariable(name: "__path", arg: 1, scope: !2175, file: !2176, line: 453, type: !472)
!2216 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2175, file: !2176, line: 453, type: !2179)
!2217 = !DILocation(line: 0, scope: !2175)
!2218 = !DILocation(line: 455, column: 10, scope: !2175)
!2219 = !DILocation(line: 455, column: 3, scope: !2175)
!2220 = distinct !DISubprogram(name: "lstat", scope: !2176, file: !2176, line: 460, type: !2177, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2221)
!2221 = !{!2222, !2223}
!2222 = !DILocalVariable(name: "__path", arg: 1, scope: !2220, file: !2176, line: 460, type: !472)
!2223 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2220, file: !2176, line: 460, type: !2179)
!2224 = !DILocation(line: 0, scope: !2220)
!2225 = !DILocation(line: 462, column: 10, scope: !2220)
!2226 = !DILocation(line: 462, column: 3, scope: !2220)
!2227 = distinct !DISubprogram(name: "fstat", scope: !2176, file: !2176, line: 467, type: !2228, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2230)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!467, !467, !2179}
!2230 = !{!2231, !2232}
!2231 = !DILocalVariable(name: "__fd", arg: 1, scope: !2227, file: !2176, line: 467, type: !467)
!2232 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2227, file: !2176, line: 467, type: !2179)
!2233 = !DILocation(line: 0, scope: !2227)
!2234 = !DILocation(line: 469, column: 10, scope: !2227)
!2235 = !DILocation(line: 469, column: 3, scope: !2227)
!2236 = distinct !DISubprogram(name: "fstatat", scope: !2176, file: !2176, line: 474, type: !2237, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2239)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!467, !467, !472, !2179, !467}
!2239 = !{!2240, !2241, !2242, !2243}
!2240 = !DILocalVariable(name: "__fd", arg: 1, scope: !2236, file: !2176, line: 474, type: !467)
!2241 = !DILocalVariable(name: "__filename", arg: 2, scope: !2236, file: !2176, line: 474, type: !472)
!2242 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2236, file: !2176, line: 474, type: !2179)
!2243 = !DILocalVariable(name: "__flag", arg: 4, scope: !2236, file: !2176, line: 474, type: !467)
!2244 = !DILocation(line: 0, scope: !2236)
!2245 = !DILocation(line: 477, column: 10, scope: !2236)
!2246 = !DILocation(line: 477, column: 3, scope: !2236)
!2247 = distinct !DISubprogram(name: "mknod", scope: !2176, file: !2176, line: 483, type: !2248, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2250)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!467, !472, !2190, !2184}
!2250 = !{!2251, !2252, !2253}
!2251 = !DILocalVariable(name: "__path", arg: 1, scope: !2247, file: !2176, line: 483, type: !472)
!2252 = !DILocalVariable(name: "__mode", arg: 2, scope: !2247, file: !2176, line: 483, type: !2190)
!2253 = !DILocalVariable(name: "__dev", arg: 3, scope: !2247, file: !2176, line: 483, type: !2184)
!2254 = !DILocation(line: 0, scope: !2247)
!2255 = !DILocation(line: 485, column: 10, scope: !2247)
!2256 = !DILocation(line: 485, column: 3, scope: !2247)
!2257 = distinct !DISubprogram(name: "mknodat", scope: !2176, file: !2176, line: 491, type: !2258, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2260)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{!467, !467, !472, !2190, !2184}
!2260 = !{!2261, !2262, !2263, !2264}
!2261 = !DILocalVariable(name: "__fd", arg: 1, scope: !2257, file: !2176, line: 491, type: !467)
!2262 = !DILocalVariable(name: "__path", arg: 2, scope: !2257, file: !2176, line: 491, type: !472)
!2263 = !DILocalVariable(name: "__mode", arg: 3, scope: !2257, file: !2176, line: 491, type: !2190)
!2264 = !DILocalVariable(name: "__dev", arg: 4, scope: !2257, file: !2176, line: 491, type: !2184)
!2265 = !DILocation(line: 0, scope: !2257)
!2266 = !DILocation(line: 494, column: 10, scope: !2257)
!2267 = !DILocation(line: 494, column: 3, scope: !2257)
!2268 = distinct !DISubprogram(name: "stat64", scope: !2176, file: !2176, line: 502, type: !2269, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2291)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!467, !472, !2271}
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2181, line: 119, size: 1152, elements: !2273)
!2273 = !{!2274, !2275, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2287, !2288, !2289, !2290}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2272, file: !2181, line: 121, baseType: !2184, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2272, file: !2181, line: 123, baseType: !2276, size: 64, offset: 64)
!2276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1934, line: 149, baseType: !611)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2272, file: !2181, line: 124, baseType: !2188, size: 64, offset: 128)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2272, file: !2181, line: 125, baseType: !2190, size: 32, offset: 192)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2272, file: !2181, line: 132, baseType: !2192, size: 32, offset: 224)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2272, file: !2181, line: 133, baseType: !2194, size: 32, offset: 256)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2272, file: !2181, line: 135, baseType: !467, size: 32, offset: 288)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2272, file: !2181, line: 136, baseType: !2184, size: 64, offset: 320)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2272, file: !2181, line: 137, baseType: !1933, size: 64, offset: 384)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2272, file: !2181, line: 143, baseType: !2199, size: 64, offset: 448)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2272, file: !2181, line: 144, baseType: !2286, size: 64, offset: 512)
!2286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1934, line: 180, baseType: !613)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2272, file: !2181, line: 152, baseType: !2203, size: 128, offset: 576)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2272, file: !2181, line: 153, baseType: !2203, size: 128, offset: 704)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2272, file: !2181, line: 154, baseType: !2203, size: 128, offset: 832)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2272, file: !2181, line: 164, baseType: !2213, size: 192, offset: 960)
!2291 = !{!2292, !2293}
!2292 = !DILocalVariable(name: "__path", arg: 1, scope: !2268, file: !2176, line: 502, type: !472)
!2293 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2268, file: !2176, line: 502, type: !2271)
!2294 = !DILocation(line: 0, scope: !2268)
!2295 = !DILocation(line: 504, column: 10, scope: !2268)
!2296 = !DILocation(line: 504, column: 3, scope: !2268)
!2297 = distinct !DISubprogram(name: "lstat64", scope: !2176, file: !2176, line: 509, type: !2269, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2298)
!2298 = !{!2299, !2300}
!2299 = !DILocalVariable(name: "__path", arg: 1, scope: !2297, file: !2176, line: 509, type: !472)
!2300 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2297, file: !2176, line: 509, type: !2271)
!2301 = !DILocation(line: 0, scope: !2297)
!2302 = !DILocation(line: 511, column: 10, scope: !2297)
!2303 = !DILocation(line: 511, column: 3, scope: !2297)
!2304 = distinct !DISubprogram(name: "fstat64", scope: !2176, file: !2176, line: 516, type: !2305, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2307)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!467, !467, !2271}
!2307 = !{!2308, !2309}
!2308 = !DILocalVariable(name: "__fd", arg: 1, scope: !2304, file: !2176, line: 516, type: !467)
!2309 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2304, file: !2176, line: 516, type: !2271)
!2310 = !DILocation(line: 0, scope: !2304)
!2311 = !DILocation(line: 518, column: 10, scope: !2304)
!2312 = !DILocation(line: 518, column: 3, scope: !2304)
!2313 = distinct !DISubprogram(name: "fstatat64", scope: !2176, file: !2176, line: 523, type: !2314, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2316)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!467, !467, !472, !2271, !467}
!2316 = !{!2317, !2318, !2319, !2320}
!2317 = !DILocalVariable(name: "__fd", arg: 1, scope: !2313, file: !2176, line: 523, type: !467)
!2318 = !DILocalVariable(name: "__filename", arg: 2, scope: !2313, file: !2176, line: 523, type: !472)
!2319 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2313, file: !2176, line: 523, type: !2271)
!2320 = !DILocalVariable(name: "__flag", arg: 4, scope: !2313, file: !2176, line: 523, type: !467)
!2321 = !DILocation(line: 0, scope: !2313)
!2322 = !DILocation(line: 526, column: 10, scope: !2313)
!2323 = !DILocation(line: 526, column: 3, scope: !2313)
!2324 = distinct !DISubprogram(name: "tree_num_loop_insns", scope: !1, file: !1, line: 119, type: !2325, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2337)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!5, !490, !2327}
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_typedef, name: "eni_weights", file: !2329, line: 151, baseType: !2330)
!2329 = !DIFile(filename: "./tree-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eni_weights_d", file: !2329, line: 133, size: 160, elements: !2331)
!2331 = !{!2332, !2333, !2334, !2335, !2336}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "call_cost", scope: !2330, file: !2329, line: 136, baseType: !5, size: 32)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "target_builtin_call_cost", scope: !2330, file: !2329, line: 139, baseType: !5, size: 32, offset: 32)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "div_mod_cost", scope: !2330, file: !2329, line: 142, baseType: !5, size: 32, offset: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "omp_cost", scope: !2330, file: !2329, line: 145, baseType: !5, size: 32, offset: 96)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "time_based", scope: !2330, file: !2329, line: 150, baseType: !466, size: 8, offset: 128)
!2337 = !{!2338, !2339, !2340, !2342, !2349, !2350}
!2338 = !DILocalVariable(name: "loop", arg: 1, scope: !2324, file: !1, line: 119, type: !490)
!2339 = !DILocalVariable(name: "weights", arg: 2, scope: !2324, file: !1, line: 119, type: !2327)
!2340 = !DILocalVariable(name: "body", scope: !2324, file: !1, line: 121, type: !2341)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!2342 = !DILocalVariable(name: "gsi", scope: !2324, file: !1, line: 122, type: !2343)
!2343 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !394, line: 265, baseType: !2344)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !394, line: 254, size: 192, elements: !2345)
!2345 = !{!2346, !2347, !2348}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2344, file: !394, line: 257, baseType: !528, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2344, file: !394, line: 263, baseType: !523, size: 64, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2344, file: !394, line: 264, baseType: !1025, size: 64, offset: 128)
!2349 = !DILocalVariable(name: "size", scope: !2324, file: !1, line: 123, type: !5)
!2350 = !DILocalVariable(name: "i", scope: !2324, file: !1, line: 123, type: !5)
!2351 = !DILocation(line: 0, scope: !2324)
!2352 = !DILocation(line: 121, column: 23, scope: !2324)
!2353 = !DILocation(line: 122, column: 3, scope: !2324)
!2354 = !DILocation(line: 0, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !1, line: 125, column: 3)
!2356 = distinct !DILexicalBlock(scope: !2324, file: !1, line: 125, column: 3)
!2357 = !DILocation(line: 0, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2355, file: !1, line: 126, column: 5)
!2359 = !DILocation(line: 125, column: 8, scope: !2356)
!2360 = !DILocation(line: 123, column: 12, scope: !2324)
!2361 = !DILocation(line: 125, column: 25, scope: !2355)
!2362 = !DILocation(line: 125, column: 17, scope: !2355)
!2363 = !DILocation(line: 125, column: 3, scope: !2356)
!2364 = !DILocation(line: 126, column: 16, scope: !2358)
!2365 = !DILocation(line: 126, column: 30, scope: !2358)
!2366 = !DILocation(line: 126, column: 10, scope: !2358)
!2367 = !DILocation(line: 126, column: 41, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2358, file: !1, line: 126, column: 5)
!2369 = !DILocation(line: 126, column: 40, scope: !2368)
!2370 = !DILocation(line: 126, column: 5, scope: !2358)
!2371 = !DILocation(line: 127, column: 35, scope: !2368)
!2372 = !DILocation(line: 127, column: 15, scope: !2368)
!2373 = !DILocation(line: 127, column: 12, scope: !2368)
!2374 = !DILocation(line: 126, column: 58, scope: !2368)
!2375 = !DILocation(line: 126, column: 5, scope: !2368)
!2376 = distinct !{!2376, !2370, !2377}
!2377 = !DILocation(line: 127, column: 58, scope: !2358)
!2378 = !DILocation(line: 125, column: 37, scope: !2355)
!2379 = !DILocation(line: 125, column: 3, scope: !2355)
!2380 = distinct !{!2380, !2363, !2381}
!2381 = !DILocation(line: 127, column: 58, scope: !2356)
!2382 = !DILocation(line: 128, column: 9, scope: !2324)
!2383 = !DILocation(line: 128, column: 3, scope: !2324)
!2384 = !DILocation(line: 131, column: 1, scope: !2324)
!2385 = !DILocation(line: 130, column: 3, scope: !2324)
!2386 = distinct !DISubprogram(name: "gsi_start_bb", scope: !394, file: !394, line: 4418, type: !2387, scopeLine: 4419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2389)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!2343, !1025}
!2389 = !{!2390, !2391, !2392}
!2390 = !DILocalVariable(name: "bb", arg: 1, scope: !2386, file: !394, line: 4418, type: !1025)
!2391 = !DILocalVariable(name: "i", scope: !2386, file: !394, line: 4420, type: !2343)
!2392 = !DILocalVariable(name: "seq", scope: !2386, file: !394, line: 4421, type: !523)
!2393 = !DILocation(line: 0, scope: !2386)
!2394 = !DILocation(line: 4420, column: 24, scope: !2386)
!2395 = !DILocation(line: 4423, column: 9, scope: !2386)
!2396 = !DILocation(line: 4424, column: 11, scope: !2386)
!2397 = !DILocation(line: 4424, column: 5, scope: !2386)
!2398 = !DILocation(line: 4424, column: 9, scope: !2386)
!2399 = !DILocation(line: 4425, column: 5, scope: !2386)
!2400 = !DILocation(line: 4425, column: 9, scope: !2386)
!2401 = !DILocation(line: 4426, column: 5, scope: !2386)
!2402 = !DILocation(line: 4426, column: 8, scope: !2386)
!2403 = !DILocation(line: 4429, column: 1, scope: !2386)
!2404 = distinct !DISubprogram(name: "gsi_end_p", scope: !394, file: !394, line: 4467, type: !2405, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2407)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!466, !2343}
!2407 = !{!2408}
!2408 = !DILocalVariable(name: "i", arg: 1, scope: !2404, file: !394, line: 4467, type: !2343)
!2409 = !DILocation(line: 4467, column: 33, scope: !2404)
!2410 = !DILocation(line: 4469, column: 12, scope: !2404)
!2411 = !DILocation(line: 4469, column: 16, scope: !2404)
!2412 = !DILocation(line: 4469, column: 10, scope: !2404)
!2413 = !DILocation(line: 4469, column: 3, scope: !2404)
!2414 = distinct !DISubprogram(name: "gsi_stmt", scope: !394, file: !394, line: 4501, type: !2415, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2417)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!533, !2343}
!2417 = !{!2418}
!2418 = !DILocalVariable(name: "i", arg: 1, scope: !2414, file: !394, line: 4501, type: !2343)
!2419 = !DILocation(line: 4501, column: 32, scope: !2414)
!2420 = !DILocation(line: 4503, column: 12, scope: !2414)
!2421 = !DILocation(line: 4503, column: 17, scope: !2414)
!2422 = !DILocation(line: 4503, column: 3, scope: !2414)
!2423 = distinct !DISubprogram(name: "gsi_next", scope: !394, file: !394, line: 4485, type: !2424, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2427)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{null, !2426}
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2427 = !{!2428}
!2428 = !DILocalVariable(name: "i", arg: 1, scope: !2423, file: !394, line: 4485, type: !2426)
!2429 = !DILocation(line: 0, scope: !2423)
!2430 = !DILocation(line: 4487, column: 15, scope: !2423)
!2431 = !DILocation(line: 4487, column: 20, scope: !2423)
!2432 = !DILocation(line: 4487, column: 10, scope: !2423)
!2433 = !DILocation(line: 4488, column: 1, scope: !2423)
!2434 = distinct !DISubprogram(name: "canonicalize_induction_variables", scope: !1, file: !1, line: 493, type: !2435, scopeLine: 494, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2437)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!5}
!2437 = !{!2438, !2444, !2445}
!2438 = !DILocalVariable(name: "li", scope: !2434, file: !1, line: 495, type: !2439)
!2439 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_iterator", file: !376, line: 515, baseType: !2440)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !376, line: 508, size: 128, elements: !2441)
!2441 = !{!2442, !2443}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "to_visit", scope: !2440, file: !376, line: 511, baseType: !474, size: 64)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !2440, file: !376, line: 514, baseType: !5, size: 32, offset: 64)
!2444 = !DILocalVariable(name: "loop", scope: !2434, file: !1, line: 496, type: !490)
!2445 = !DILocalVariable(name: "changed", scope: !2434, file: !1, line: 497, type: !466)
!2446 = !DILocation(line: 495, column: 3, scope: !2434)
!2447 = !DILocation(line: 496, column: 3, scope: !2434)
!2448 = !DILocation(line: 0, scope: !2434)
!2449 = !DILocation(line: 499, column: 3, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2434, file: !1, line: 499, column: 3)
!2451 = !DILocation(line: 499, column: 3, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2450, file: !1, line: 499, column: 3)
!2453 = !DILocation(line: 501, column: 18, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2452, file: !1, line: 500, column: 5)
!2455 = !DILocation(line: 501, column: 15, scope: !2454)
!2456 = distinct !{!2456, !2449, !2457}
!2457 = !DILocation(line: 504, column: 5, scope: !2450)
!2458 = !DILocation(line: 508, column: 3, scope: !2434)
!2459 = !DILocation(line: 510, column: 7, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2434, file: !1, line: 510, column: 7)
!2461 = !DILocation(line: 513, column: 1, scope: !2434)
!2462 = distinct !DISubprogram(name: "fel_init", scope: !376, file: !376, line: 535, type: !2463, scopeLine: 536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2467)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{null, !2465, !2466, !5}
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!2467 = !{!2468, !2469, !2470, !2471, !2472, !2473}
!2468 = !DILocalVariable(name: "li", arg: 1, scope: !2462, file: !376, line: 535, type: !2465)
!2469 = !DILocalVariable(name: "loop", arg: 2, scope: !2462, file: !376, line: 535, type: !2466)
!2470 = !DILocalVariable(name: "flags", arg: 3, scope: !2462, file: !376, line: 535, type: !5)
!2471 = !DILocalVariable(name: "aloop", scope: !2462, file: !376, line: 537, type: !490)
!2472 = !DILocalVariable(name: "i", scope: !2462, file: !376, line: 538, type: !5)
!2473 = !DILocalVariable(name: "mn", scope: !2462, file: !376, line: 539, type: !467)
!2474 = !DILocation(line: 0, scope: !2462)
!2475 = !DILocation(line: 537, column: 3, scope: !2462)
!2476 = !DILocation(line: 541, column: 7, scope: !2462)
!2477 = !DILocation(line: 541, column: 11, scope: !2462)
!2478 = !DILocation(line: 542, column: 8, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2462, file: !376, line: 542, column: 7)
!2480 = !DILocation(line: 542, column: 7, scope: !2462)
!2481 = !DILocation(line: 544, column: 11, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2479, file: !376, line: 543, column: 5)
!2483 = !DILocation(line: 544, column: 20, scope: !2482)
!2484 = !DILocation(line: 545, column: 13, scope: !2482)
!2485 = !DILocation(line: 546, column: 7, scope: !2482)
!2486 = !DILocation(line: 549, column: 18, scope: !2462)
!2487 = !DILocation(line: 549, column: 7, scope: !2462)
!2488 = !DILocation(line: 549, column: 16, scope: !2462)
!2489 = !DILocation(line: 550, column: 15, scope: !2462)
!2490 = !DILocation(line: 550, column: 8, scope: !2462)
!2491 = !DILocation(line: 552, column: 13, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2462, file: !376, line: 552, column: 7)
!2493 = !DILocation(line: 552, column: 7, scope: !2462)
!2494 = !DILocation(line: 554, column: 7, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2496, file: !376, line: 554, column: 7)
!2496 = distinct !DILexicalBlock(scope: !2492, file: !376, line: 553, column: 5)
!2497 = !DILocation(line: 0, scope: !2495)
!2498 = !DILocation(line: 554, column: 19, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2495, file: !376, line: 554, column: 7)
!2500 = !DILocation(line: 555, column: 6, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2499, file: !376, line: 555, column: 6)
!2502 = !DILocation(line: 555, column: 12, scope: !2501)
!2503 = !DILocation(line: 556, column: 6, scope: !2501)
!2504 = !DILocation(line: 556, column: 16, scope: !2501)
!2505 = !DILocation(line: 556, column: 22, scope: !2501)
!2506 = !DILocation(line: 557, column: 6, scope: !2501)
!2507 = !DILocation(line: 557, column: 16, scope: !2501)
!2508 = !DILocation(line: 557, column: 20, scope: !2501)
!2509 = !DILocation(line: 555, column: 6, scope: !2499)
!2510 = !DILocation(line: 558, column: 4, scope: !2501)
!2511 = !DILocation(line: 554, column: 75, scope: !2499)
!2512 = !DILocation(line: 554, column: 7, scope: !2499)
!2513 = distinct !{!2513, !2494, !2514}
!2514 = !DILocation(line: 558, column: 4, scope: !2495)
!2515 = !DILocation(line: 560, column: 18, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2492, file: !376, line: 560, column: 12)
!2517 = !DILocation(line: 0, scope: !2516)
!2518 = !DILocation(line: 560, column: 12, scope: !2492)
!2519 = !DILocation(line: 563, column: 7, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2521, file: !376, line: 563, column: 7)
!2521 = distinct !DILexicalBlock(scope: !2516, file: !376, line: 561, column: 5)
!2522 = !DILocation(line: 590, column: 7, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2516, file: !376, line: 587, column: 5)
!2524 = !DILocation(line: 564, column: 5, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2520, file: !376, line: 563, column: 7)
!2526 = !DILocation(line: 564, column: 12, scope: !2525)
!2527 = !DILocation(line: 564, column: 18, scope: !2525)
!2528 = !DILocation(line: 568, column: 7, scope: !2521)
!2529 = !DILocation(line: 565, column: 20, scope: !2525)
!2530 = !DILocation(line: 565, column: 11, scope: !2525)
!2531 = !DILocation(line: 563, column: 7, scope: !2525)
!2532 = distinct !{!2532, !2519, !2533}
!2533 = !DILocation(line: 566, column: 2, scope: !2520)
!2534 = !DILocation(line: 570, column: 8, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2536, file: !376, line: 570, column: 8)
!2536 = distinct !DILexicalBlock(scope: !2521, file: !376, line: 569, column: 2)
!2537 = !DILocation(line: 570, column: 15, scope: !2535)
!2538 = !DILocation(line: 570, column: 19, scope: !2535)
!2539 = !DILocation(line: 570, column: 8, scope: !2536)
!2540 = !DILocation(line: 571, column: 6, scope: !2535)
!2541 = !DILocation(line: 573, column: 15, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2536, file: !376, line: 573, column: 8)
!2543 = !DILocation(line: 573, column: 8, scope: !2542)
!2544 = !DILocation(line: 573, column: 8, scope: !2536)
!2545 = !DILocation(line: 575, column: 19, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2547, file: !376, line: 575, column: 8)
!2547 = distinct !DILexicalBlock(scope: !2542, file: !376, line: 574, column: 6)
!2548 = !DILocation(line: 575, column: 13, scope: !2546)
!2549 = !DILocation(line: 576, column: 6, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2546, file: !376, line: 575, column: 8)
!2551 = !DILocation(line: 576, column: 13, scope: !2550)
!2552 = !DILocation(line: 576, column: 19, scope: !2550)
!2553 = !DILocation(line: 575, column: 8, scope: !2546)
!2554 = !DILocation(line: 577, column: 21, scope: !2550)
!2555 = !DILocation(line: 577, column: 12, scope: !2550)
!2556 = !DILocation(line: 575, column: 8, scope: !2550)
!2557 = distinct !{!2557, !2553, !2558}
!2558 = !DILocation(line: 578, column: 3, scope: !2546)
!2559 = !DILocation(line: 580, column: 14, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2542, file: !376, line: 580, column: 13)
!2561 = !DILocation(line: 580, column: 13, scope: !2542)
!2562 = !DILocation(line: 583, column: 14, scope: !2560)
!2563 = !DILocation(line: 583, column: 12, scope: !2560)
!2564 = distinct !{!2564, !2528, !2565}
!2565 = !DILocation(line: 584, column: 2, scope: !2521)
!2566 = !DILocation(line: 592, column: 8, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !376, line: 592, column: 8)
!2568 = distinct !DILexicalBlock(scope: !2523, file: !376, line: 591, column: 2)
!2569 = !DILocation(line: 592, column: 15, scope: !2567)
!2570 = !DILocation(line: 592, column: 19, scope: !2567)
!2571 = !DILocation(line: 592, column: 8, scope: !2568)
!2572 = !DILocation(line: 593, column: 6, scope: !2567)
!2573 = !DILocation(line: 595, column: 15, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2568, file: !376, line: 595, column: 8)
!2575 = !DILocation(line: 595, column: 21, scope: !2574)
!2576 = !DILocation(line: 595, column: 8, scope: !2568)
!2577 = !DILocation(line: 599, column: 8, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2574, file: !376, line: 598, column: 6)
!2579 = !DILocation(line: 596, column: 21, scope: !2574)
!2580 = !DILocation(line: 596, column: 12, scope: !2574)
!2581 = !DILocation(line: 596, column: 6, scope: !2574)
!2582 = !DILocation(line: 599, column: 15, scope: !2578)
!2583 = !DILocation(line: 599, column: 21, scope: !2578)
!2584 = !DILocation(line: 599, column: 29, scope: !2578)
!2585 = !DILocation(line: 599, column: 39, scope: !2578)
!2586 = !DILocation(line: 599, column: 44, scope: !2578)
!2587 = !DILocation(line: 0, scope: !2578)
!2588 = !DILocation(line: 600, column: 11, scope: !2578)
!2589 = !DILocation(line: 600, column: 9, scope: !2578)
!2590 = distinct !{!2590, !2577, !2591}
!2591 = !DILocation(line: 600, column: 28, scope: !2578)
!2592 = !DILocation(line: 601, column: 18, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2578, file: !376, line: 601, column: 12)
!2594 = !DILocation(line: 601, column: 12, scope: !2578)
!2595 = !DILocation(line: 603, column: 23, scope: !2578)
!2596 = !DILocation(line: 603, column: 14, scope: !2578)
!2597 = distinct !{!2597, !2522, !2598}
!2598 = !DILocation(line: 605, column: 2, scope: !2523)
!2599 = !DILocation(line: 608, column: 3, scope: !2462)
!2600 = !DILocation(line: 609, column: 1, scope: !2462)
!2601 = distinct !DISubprogram(name: "canonicalize_loop_induction_variables", scope: !1, file: !1, line: 441, type: !2602, scopeLine: 444, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2604)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{!466, !490, !466, !388, !466}
!2604 = !{!2605, !2606, !2607, !2608, !2609, !2610}
!2605 = !DILocalVariable(name: "loop", arg: 1, scope: !2601, file: !1, line: 441, type: !490)
!2606 = !DILocalVariable(name: "create_iv", arg: 2, scope: !2601, file: !1, line: 442, type: !466)
!2607 = !DILocalVariable(name: "ul", arg: 3, scope: !2601, file: !1, line: 442, type: !388)
!2608 = !DILocalVariable(name: "try_eval", arg: 4, scope: !2601, file: !1, line: 443, type: !466)
!2609 = !DILocalVariable(name: "exit", scope: !2601, file: !1, line: 445, type: !512)
!2610 = !DILocalVariable(name: "niter", scope: !2601, file: !1, line: 446, type: !558)
!2611 = !DILocation(line: 0, scope: !2601)
!2612 = !DILocation(line: 445, column: 3, scope: !2601)
!2613 = !DILocation(line: 445, column: 8, scope: !2601)
!2614 = !DILocation(line: 448, column: 11, scope: !2601)
!2615 = !DILocation(line: 449, column: 7, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2601, file: !1, line: 449, column: 7)
!2617 = !DILocation(line: 449, column: 25, scope: !2616)
!2618 = !DILocation(line: 0, scope: !2616)
!2619 = !DILocation(line: 449, column: 7, scope: !2601)
!2620 = !DILocation(line: 451, column: 12, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2616, file: !1, line: 450, column: 5)
!2622 = !DILocation(line: 452, column: 52, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2621, file: !1, line: 452, column: 11)
!2624 = !DILocation(line: 452, column: 12, scope: !2623)
!2625 = !DILocation(line: 452, column: 11, scope: !2621)
!2626 = !DILocation(line: 459, column: 12, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2628, file: !1, line: 459, column: 11)
!2628 = distinct !DILexicalBlock(scope: !2616, file: !1, line: 456, column: 5)
!2629 = !DILocation(line: 459, column: 11, scope: !2628)
!2630 = !DILocation(line: 460, column: 10, scope: !2627)
!2631 = !DILocation(line: 460, column: 2, scope: !2627)
!2632 = !DILocation(line: 463, column: 11, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2628, file: !1, line: 463, column: 11)
!2634 = !DILocation(line: 464, column: 4, scope: !2633)
!2635 = !DILocation(line: 464, column: 8, scope: !2633)
!2636 = !DILocation(line: 465, column: 8, scope: !2633)
!2637 = !DILocation(line: 465, column: 11, scope: !2633)
!2638 = !DILocation(line: 465, column: 29, scope: !2633)
!2639 = !DILocation(line: 463, column: 11, scope: !2628)
!2640 = !DILocation(line: 466, column: 10, scope: !2633)
!2641 = !DILocation(line: 466, column: 2, scope: !2633)
!2642 = !DILocation(line: 468, column: 11, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2628, file: !1, line: 468, column: 11)
!2644 = !DILocation(line: 469, column: 4, scope: !2643)
!2645 = !DILocation(line: 469, column: 7, scope: !2643)
!2646 = !DILocation(line: 469, column: 25, scope: !2643)
!2647 = !DILocation(line: 468, column: 11, scope: !2628)
!2648 = !DILocation(line: 473, column: 7, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2601, file: !1, line: 473, column: 7)
!2650 = !DILocation(line: 473, column: 17, scope: !2649)
!2651 = !DILocation(line: 473, column: 21, scope: !2649)
!2652 = !DILocation(line: 473, column: 32, scope: !2649)
!2653 = !DILocation(line: 473, column: 7, scope: !2601)
!2654 = !DILocation(line: 475, column: 54, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2649, file: !1, line: 474, column: 5)
!2656 = !DILocation(line: 475, column: 7, scope: !2655)
!2657 = !DILocation(line: 476, column: 27, scope: !2655)
!2658 = !DILocation(line: 476, column: 7, scope: !2655)
!2659 = !DILocation(line: 477, column: 16, scope: !2655)
!2660 = !DILocation(line: 477, column: 7, scope: !2655)
!2661 = !DILocation(line: 478, column: 5, scope: !2655)
!2662 = !DILocation(line: 480, column: 41, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2601, file: !1, line: 480, column: 7)
!2664 = !DILocation(line: 480, column: 7, scope: !2663)
!2665 = !DILocation(line: 480, column: 7, scope: !2601)
!2666 = !DILocation(line: 483, column: 7, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2601, file: !1, line: 483, column: 7)
!2668 = !DILocation(line: 483, column: 7, scope: !2601)
!2669 = !DILocation(line: 484, column: 32, scope: !2667)
!2670 = !DILocation(line: 484, column: 5, scope: !2667)
!2671 = !DILocation(line: 487, column: 1, scope: !2601)
!2672 = distinct !DISubprogram(name: "fel_next", scope: !376, file: !376, line: 518, type: !2673, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2675)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{null, !2465, !2466}
!2675 = !{!2676, !2677, !2678}
!2676 = !DILocalVariable(name: "li", arg: 1, scope: !2672, file: !376, line: 518, type: !2465)
!2677 = !DILocalVariable(name: "loop", arg: 2, scope: !2672, file: !376, line: 518, type: !2466)
!2678 = !DILocalVariable(name: "anum", scope: !2672, file: !376, line: 520, type: !467)
!2679 = !DILocation(line: 0, scope: !2672)
!2680 = !DILocation(line: 520, column: 3, scope: !2672)
!2681 = !DILocation(line: 522, column: 3, scope: !2672)
!2682 = !DILocation(line: 522, column: 10, scope: !2672)
!2683 = !DILocation(line: 524, column: 14, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2672, file: !376, line: 523, column: 5)
!2685 = !DILocation(line: 525, column: 25, scope: !2684)
!2686 = !DILocation(line: 525, column: 15, scope: !2684)
!2687 = !DILocation(line: 525, column: 13, scope: !2684)
!2688 = !DILocation(line: 526, column: 11, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2684, file: !376, line: 526, column: 11)
!2690 = !DILocation(line: 526, column: 11, scope: !2684)
!2691 = distinct !{!2691, !2681, !2692}
!2692 = !DILocation(line: 528, column: 5, scope: !2672)
!2693 = !DILocation(line: 530, column: 3, scope: !2672)
!2694 = !DILocation(line: 531, column: 9, scope: !2672)
!2695 = !DILocation(line: 532, column: 1, scope: !2672)
!2696 = distinct !DISubprogram(name: "tree_unroll_loops_completely", scope: !1, file: !1, line: 520, type: !2697, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2699)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!5, !466, !466}
!2699 = !{!2700, !2701, !2702, !2703, !2704, !2705, !2706}
!2700 = !DILocalVariable(name: "may_increase_size", arg: 1, scope: !2696, file: !1, line: 520, type: !466)
!2701 = !DILocalVariable(name: "unroll_outer", arg: 2, scope: !2696, file: !1, line: 520, type: !466)
!2702 = !DILocalVariable(name: "li", scope: !2696, file: !1, line: 522, type: !2439)
!2703 = !DILocalVariable(name: "loop", scope: !2696, file: !1, line: 523, type: !490)
!2704 = !DILocalVariable(name: "changed", scope: !2696, file: !1, line: 524, type: !466)
!2705 = !DILocalVariable(name: "ul", scope: !2696, file: !1, line: 525, type: !388)
!2706 = !DILocalVariable(name: "iteration", scope: !2696, file: !1, line: 526, type: !467)
!2707 = !DILocation(line: 0, scope: !2696)
!2708 = !DILocation(line: 522, column: 3, scope: !2696)
!2709 = !DILocation(line: 523, column: 3, scope: !2696)
!2710 = !DILocation(line: 0, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !1, line: 534, column: 8)
!2712 = distinct !DILexicalBlock(scope: !2713, file: !1, line: 533, column: 2)
!2713 = distinct !DILexicalBlock(scope: !2714, file: !1, line: 532, column: 7)
!2714 = distinct !DILexicalBlock(scope: !2715, file: !1, line: 532, column: 7)
!2715 = distinct !DILexicalBlock(scope: !2696, file: !1, line: 529, column: 5)
!2716 = !DILocation(line: 528, column: 3, scope: !2696)
!2717 = !DILocation(line: 532, column: 7, scope: !2714)
!2718 = !DILocation(line: 0, scope: !2715)
!2719 = !DILocation(line: 532, column: 7, scope: !2713)
!2720 = !DILocation(line: 543, column: 29, scope: !2712)
!2721 = !DILocation(line: 543, column: 28, scope: !2712)
!2722 = !DILocation(line: 542, column: 15, scope: !2712)
!2723 = !DILocation(line: 542, column: 12, scope: !2712)
!2724 = distinct !{!2724, !2717, !2725}
!2725 = !DILocation(line: 544, column: 2, scope: !2714)
!2726 = !DILocation(line: 546, column: 11, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2715, file: !1, line: 546, column: 11)
!2728 = !DILocation(line: 534, column: 29, scope: !2711)
!2729 = !DILocation(line: 537, column: 8, scope: !2711)
!2730 = !DILocation(line: 538, column: 32, scope: !2711)
!2731 = !DILocation(line: 538, column: 20, scope: !2711)
!2732 = !DILocation(line: 538, column: 8, scope: !2711)
!2733 = !DILocation(line: 534, column: 8, scope: !2712)
!2734 = !DILocation(line: 543, column: 11, scope: !2712)
!2735 = !DILocation(line: 538, column: 5, scope: !2711)
!2736 = !DILocation(line: 546, column: 11, scope: !2715)
!2737 = !DILocation(line: 551, column: 8, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2739, file: !1, line: 551, column: 8)
!2739 = distinct !DILexicalBlock(scope: !2727, file: !1, line: 547, column: 2)
!2740 = !DILocation(line: 551, column: 8, scope: !2739)
!2741 = !DILocation(line: 552, column: 6, scope: !2738)
!2742 = !DILocation(line: 556, column: 4, scope: !2739)
!2743 = !DILocation(line: 557, column: 2, scope: !2739)
!2744 = !DILocation(line: 560, column: 3, scope: !2696)
!2745 = !DILocation(line: 560, column: 6, scope: !2696)
!2746 = !DILocation(line: 560, column: 21, scope: !2696)
!2747 = !DILocation(line: 560, column: 18, scope: !2696)
!2748 = !DILocation(line: 558, column: 5, scope: !2715)
!2749 = distinct !{!2749, !2716, !2750}
!2750 = !DILocation(line: 560, column: 62, scope: !2696)
!2751 = !DILocation(line: 563, column: 1, scope: !2696)
!2752 = !DILocation(line: 562, column: 3, scope: !2696)
!2753 = distinct !DISubprogram(name: "loop_outer", scope: !376, file: !376, line: 434, type: !2754, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2758)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{!490, !2756}
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !491)
!2758 = !{!2759, !2760}
!2759 = !DILocalVariable(name: "loop", arg: 1, scope: !2753, file: !376, line: 434, type: !2756)
!2760 = !DILocalVariable(name: "n", scope: !2753, file: !376, line: 436, type: !5)
!2761 = !DILocation(line: 0, scope: !2753)
!2762 = !DILocation(line: 436, column: 16, scope: !2753)
!2763 = !DILocation(line: 438, column: 9, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2753, file: !376, line: 438, column: 7)
!2765 = !DILocation(line: 438, column: 7, scope: !2753)
!2766 = !DILocation(line: 441, column: 10, scope: !2753)
!2767 = !DILocation(line: 441, column: 3, scope: !2753)
!2768 = !DILocation(line: 442, column: 1, scope: !2753)
!2769 = distinct !DISubprogram(name: "bb_seq", scope: !394, file: !394, line: 237, type: !2770, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2775)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!523, !2772}
!2772 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !513, line: 112, baseType: !2773)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !497)
!2775 = !{!2776}
!2776 = !DILocalVariable(name: "bb", arg: 1, scope: !2769, file: !394, line: 237, type: !2772)
!2777 = !DILocation(line: 0, scope: !2769)
!2778 = !DILocation(line: 239, column: 17, scope: !2769)
!2779 = !DILocation(line: 239, column: 23, scope: !2769)
!2780 = !DILocation(line: 239, column: 33, scope: !2769)
!2781 = !DILocation(line: 239, column: 43, scope: !2769)
!2782 = !DILocation(line: 239, column: 36, scope: !2769)
!2783 = !DILocation(line: 239, column: 10, scope: !2769)
!2784 = !DILocation(line: 239, column: 68, scope: !2769)
!2785 = !DILocation(line: 239, column: 3, scope: !2769)
!2786 = distinct !DISubprogram(name: "gimple_seq_first", scope: !394, file: !394, line: 159, type: !2787, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2792)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{!528, !2789}
!2789 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !513, line: 67, baseType: !2790)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !525)
!2792 = !{!2793}
!2793 = !DILocalVariable(name: "s", arg: 1, scope: !2786, file: !394, line: 159, type: !2789)
!2794 = !DILocation(line: 0, scope: !2786)
!2795 = !DILocation(line: 161, column: 10, scope: !2786)
!2796 = !DILocation(line: 161, column: 17, scope: !2786)
!2797 = !DILocation(line: 161, column: 3, scope: !2786)
!2798 = distinct !DISubprogram(name: "VEC_int_heap_alloc", scope: !476, file: !476, line: 32, type: !2799, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2801)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!474, !467}
!2801 = !{!2802}
!2802 = !DILocalVariable(name: "alloc_", arg: 1, scope: !2798, file: !476, line: 32, type: !467)
!2803 = !DILocation(line: 0, scope: !2798)
!2804 = !DILocation(line: 32, column: 1, scope: !2798)
!2805 = distinct !DISubprogram(name: "number_of_loops", scope: !376, file: !376, line: 459, type: !2435, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1900)
!2806 = !DILocation(line: 461, column: 8, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2805, file: !376, line: 461, column: 7)
!2808 = !DILocation(line: 461, column: 7, scope: !2805)
!2809 = !DILocation(line: 464, column: 10, scope: !2805)
!2810 = !DILocation(line: 464, column: 3, scope: !2805)
!2811 = !DILocation(line: 0, scope: !2805)
!2812 = !DILocation(line: 465, column: 1, scope: !2805)
!2813 = distinct !DISubprogram(name: "VEC_loop_p_base_iterate", scope: !376, file: !376, line: 85, type: !2814, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2818)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{!467, !2816, !5, !2466}
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1202)
!2818 = !{!2819, !2820, !2821}
!2819 = !DILocalVariable(name: "vec_", arg: 1, scope: !2813, file: !376, line: 85, type: !2816)
!2820 = !DILocalVariable(name: "ix_", arg: 2, scope: !2813, file: !376, line: 85, type: !5)
!2821 = !DILocalVariable(name: "ptr", arg: 3, scope: !2813, file: !376, line: 85, type: !2466)
!2822 = !DILocation(line: 0, scope: !2813)
!2823 = !DILocation(line: 85, column: 1, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2813, file: !376, line: 85, column: 1)
!2825 = !DILocation(line: 85, column: 1, scope: !2813)
!2826 = !DILocation(line: 85, column: 1, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2824, file: !376, line: 85, column: 1)
!2828 = !DILocation(line: 85, column: 1, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2824, file: !376, line: 85, column: 1)
!2830 = !DILocation(line: 0, scope: !2824)
!2831 = distinct !DISubprogram(name: "VEC_int_base_quick_push", scope: !476, file: !476, line: 31, type: !2832, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2836)
!2832 = !DISubroutineType(types: !2833)
!2833 = !{!2834, !2835, !467}
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!2836 = !{!2837, !2838, !2839}
!2837 = !DILocalVariable(name: "vec_", arg: 1, scope: !2831, file: !476, line: 31, type: !2835)
!2838 = !DILocalVariable(name: "obj_", arg: 2, scope: !2831, file: !476, line: 31, type: !467)
!2839 = !DILocalVariable(name: "slot_", scope: !2831, file: !476, line: 31, type: !2834)
!2840 = !DILocation(line: 0, scope: !2831)
!2841 = !DILocation(line: 31, column: 1, scope: !2831)
!2842 = distinct !DISubprogram(name: "VEC_loop_p_base_length", scope: !376, file: !376, line: 85, type: !2843, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2845)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{!5, !2816}
!2845 = !{!2846}
!2846 = !DILocalVariable(name: "vec_", arg: 1, scope: !2842, file: !376, line: 85, type: !2816)
!2847 = !DILocation(line: 0, scope: !2842)
!2848 = !DILocation(line: 85, column: 1, scope: !2842)
!2849 = distinct !DISubprogram(name: "try_unroll_loop_completely", scope: !1, file: !1, line: 331, type: !2850, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2852)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{!466, !490, !512, !558, !388}
!2852 = !{!2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2869, !2882, !2883, !2884, !2890}
!2853 = !DILocalVariable(name: "loop", arg: 1, scope: !2849, file: !1, line: 331, type: !490)
!2854 = !DILocalVariable(name: "exit", arg: 2, scope: !2849, file: !1, line: 332, type: !512)
!2855 = !DILocalVariable(name: "niter", arg: 3, scope: !2849, file: !1, line: 332, type: !558)
!2856 = !DILocalVariable(name: "ul", arg: 4, scope: !2849, file: !1, line: 333, type: !388)
!2857 = !DILocalVariable(name: "n_unroll", scope: !2849, file: !1, line: 335, type: !611)
!2858 = !DILocalVariable(name: "ninsns", scope: !2849, file: !1, line: 335, type: !611)
!2859 = !DILocalVariable(name: "max_unroll", scope: !2849, file: !1, line: 335, type: !611)
!2860 = !DILocalVariable(name: "unr_insns", scope: !2849, file: !1, line: 335, type: !611)
!2861 = !DILocalVariable(name: "cond", scope: !2849, file: !1, line: 336, type: !533)
!2862 = !DILocalVariable(name: "size", scope: !2849, file: !1, line: 337, type: !2863)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop_size", file: !1, line: 134, size: 128, elements: !2864)
!2864 = !{!2865, !2866, !2867, !2868}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "overall", scope: !2863, file: !1, line: 137, baseType: !467, size: 32)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "eliminated_by_peeling", scope: !2863, file: !1, line: 142, baseType: !467, size: 32, offset: 32)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "last_iteration", scope: !2863, file: !1, line: 146, baseType: !467, size: 32, offset: 64)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "last_iteration_eliminated_by_peeling", scope: !2863, file: !1, line: 147, baseType: !467, size: 32, offset: 96)
!2869 = !DILocalVariable(name: "wont_exit", scope: !2870, file: !1, line: 388, type: !2872)
!2870 = distinct !DILexicalBlock(scope: !2871, file: !1, line: 387, column: 5)
!2871 = distinct !DILexicalBlock(scope: !2849, file: !1, line: 386, column: 7)
!2872 = !DIDerivedType(tag: DW_TAG_typedef, name: "sbitmap", file: !2873, line: 45, baseType: !2874)
!2873 = !DIFile(filename: "./sbitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "simple_bitmap_def", file: !2873, line: 39, size: 192, elements: !2876)
!2876 = !{!2877, !2878, !2879, !2880}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "popcount", scope: !2875, file: !2873, line: 41, baseType: !465, size: 64)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "n_bits", scope: !2875, file: !2873, line: 42, baseType: !5, size: 32, offset: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2875, file: !2873, line: 43, baseType: !5, size: 32, offset: 96)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "elms", scope: !2875, file: !2873, line: 44, baseType: !2881, size: 64, offset: 128)
!2881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !611, size: 64, elements: !487)
!2882 = !DILocalVariable(name: "e", scope: !2870, file: !1, line: 389, type: !512)
!2883 = !DILocalVariable(name: "i", scope: !2870, file: !1, line: 390, type: !5)
!2884 = !DILocalVariable(name: "to_remove", scope: !2870, file: !1, line: 391, type: !2885)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_heap", file: !133, line: 152, baseType: !2887)
!2887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_heap", file: !133, line: 152, size: 128, elements: !2888)
!2888 = !{!2889}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2887, file: !133, line: 152, baseType: !505, size: 128)
!2890 = !DILocalVariable(name: "ok", scope: !2891, file: !1, line: 411, type: !466)
!2891 = distinct !DILexicalBlock(scope: !2892, file: !1, line: 410, column: 2)
!2892 = distinct !DILexicalBlock(scope: !2893, file: !1, line: 409, column: 7)
!2893 = distinct !DILexicalBlock(scope: !2870, file: !1, line: 409, column: 7)
!2894 = !DILocation(line: 0, scope: !2849)
!2895 = !DILocation(line: 337, column: 3, scope: !2849)
!2896 = !DILocation(line: 339, column: 13, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2849, file: !1, line: 339, column: 7)
!2898 = !DILocation(line: 339, column: 7, scope: !2897)
!2899 = !DILocation(line: 339, column: 7, scope: !2849)
!2900 = !DILocation(line: 342, column: 8, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2849, file: !1, line: 342, column: 7)
!2902 = !DILocation(line: 342, column: 7, scope: !2849)
!2903 = !DILocation(line: 344, column: 14, scope: !2849)
!2904 = !DILocation(line: 346, column: 16, scope: !2849)
!2905 = !DILocation(line: 347, column: 16, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2849, file: !1, line: 347, column: 7)
!2907 = !DILocation(line: 347, column: 7, scope: !2849)
!2908 = !DILocation(line: 350, column: 7, scope: !2849)
!2909 = !DILocation(line: 352, column: 14, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2911, file: !1, line: 352, column: 11)
!2911 = distinct !DILexicalBlock(scope: !2912, file: !1, line: 351, column: 5)
!2912 = distinct !DILexicalBlock(scope: !2849, file: !1, line: 350, column: 7)
!2913 = !DILocation(line: 352, column: 11, scope: !2911)
!2914 = !DILocation(line: 355, column: 7, scope: !2911)
!2915 = !DILocation(line: 356, column: 21, scope: !2911)
!2916 = !DILocation(line: 356, column: 16, scope: !2911)
!2917 = !DILocation(line: 358, column: 19, scope: !2911)
!2918 = !DILocation(line: 359, column: 11, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2911, file: !1, line: 359, column: 11)
!2920 = !DILocation(line: 359, column: 21, scope: !2919)
!2921 = !DILocation(line: 359, column: 25, scope: !2919)
!2922 = !DILocation(line: 359, column: 36, scope: !2919)
!2923 = !DILocation(line: 359, column: 11, scope: !2911)
!2924 = !DILocation(line: 361, column: 4, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2919, file: !1, line: 360, column: 2)
!2926 = !DILocation(line: 362, column: 13, scope: !2925)
!2927 = !DILocation(line: 363, column: 6, scope: !2925)
!2928 = !DILocation(line: 362, column: 4, scope: !2925)
!2929 = !DILocation(line: 364, column: 2, scope: !2925)
!2930 = !DILocation(line: 366, column: 21, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2911, file: !1, line: 366, column: 11)
!2932 = !DILocation(line: 367, column: 4, scope: !2931)
!2933 = !DILocation(line: 368, column: 21, scope: !2931)
!2934 = !DILocation(line: 368, column: 10, scope: !2931)
!2935 = !DILocation(line: 368, column: 8, scope: !2931)
!2936 = !DILocation(line: 366, column: 11, scope: !2911)
!2937 = !DILocation(line: 370, column: 8, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2939, file: !1, line: 370, column: 8)
!2939 = distinct !DILexicalBlock(scope: !2931, file: !1, line: 369, column: 2)
!2940 = !DILocation(line: 370, column: 18, scope: !2938)
!2941 = !DILocation(line: 370, column: 22, scope: !2938)
!2942 = !DILocation(line: 370, column: 33, scope: !2938)
!2943 = !DILocation(line: 370, column: 8, scope: !2939)
!2944 = !DILocation(line: 373, column: 14, scope: !2938)
!2945 = !DILocation(line: 371, column: 6, scope: !2938)
!2946 = !DILocation(line: 377, column: 14, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2911, file: !1, line: 377, column: 11)
!2948 = !DILocation(line: 378, column: 4, scope: !2947)
!2949 = !DILocation(line: 380, column: 8, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2951, file: !1, line: 380, column: 8)
!2951 = distinct !DILexicalBlock(scope: !2947, file: !1, line: 379, column: 2)
!2952 = !DILocation(line: 380, column: 18, scope: !2950)
!2953 = !DILocation(line: 380, column: 22, scope: !2950)
!2954 = !DILocation(line: 380, column: 33, scope: !2950)
!2955 = !DILocation(line: 380, column: 8, scope: !2951)
!2956 = !DILocation(line: 381, column: 60, scope: !2950)
!2957 = !DILocation(line: 381, column: 6, scope: !2950)
!2958 = !DILocation(line: 386, column: 7, scope: !2849)
!2959 = !DILocation(line: 389, column: 7, scope: !2870)
!2960 = !DILocation(line: 391, column: 7, scope: !2870)
!2961 = !DILocation(line: 0, scope: !2870)
!2962 = !DILocation(line: 391, column: 25, scope: !2870)
!2963 = !DILocation(line: 393, column: 7, scope: !2870)
!2964 = !DILocation(line: 394, column: 34, scope: !2870)
!2965 = !DILocation(line: 394, column: 19, scope: !2870)
!2966 = !DILocation(line: 395, column: 7, scope: !2870)
!2967 = !DILocation(line: 396, column: 7, scope: !2870)
!2968 = !DILocation(line: 398, column: 56, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2870, file: !1, line: 398, column: 11)
!2970 = !DILocation(line: 398, column: 12, scope: !2969)
!2971 = !DILocation(line: 398, column: 11, scope: !2870)
!2972 = !DILocation(line: 409, column: 7, scope: !2893)
!2973 = !DILocation(line: 404, column: 11, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2969, file: !1, line: 403, column: 2)
!2975 = !DILocation(line: 405, column: 10, scope: !2974)
!2976 = !DILocation(line: 405, column: 4, scope: !2974)
!2977 = !DILocation(line: 406, column: 4, scope: !2974)
!2978 = !DILocation(line: 0, scope: !2893)
!2979 = !DILocation(line: 409, column: 19, scope: !2892)
!2980 = !DILocation(line: 411, column: 27, scope: !2891)
!2981 = !DILocation(line: 411, column: 14, scope: !2891)
!2982 = !DILocation(line: 0, scope: !2891)
!2983 = !DILocation(line: 412, column: 4, scope: !2891)
!2984 = !DILocation(line: 409, column: 57, scope: !2892)
!2985 = !DILocation(line: 409, column: 7, scope: !2892)
!2986 = distinct !{!2986, !2972, !2987}
!2987 = !DILocation(line: 413, column: 2, scope: !2893)
!2988 = !DILocation(line: 415, column: 7, scope: !2870)
!2989 = !DILocation(line: 416, column: 13, scope: !2870)
!2990 = !DILocation(line: 416, column: 7, scope: !2870)
!2991 = !DILocation(line: 417, column: 7, scope: !2870)
!2992 = !DILocation(line: 418, column: 5, scope: !2871)
!2993 = !DILocation(line: 420, column: 27, scope: !2849)
!2994 = !DILocation(line: 420, column: 10, scope: !2849)
!2995 = !DILocation(line: 421, column: 13, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2849, file: !1, line: 421, column: 7)
!2997 = !DILocation(line: 421, column: 19, scope: !2996)
!2998 = !DILocation(line: 421, column: 7, scope: !2849)
!2999 = !DILocation(line: 422, column: 5, scope: !2996)
!3000 = !DILocation(line: 424, column: 5, scope: !2996)
!3001 = !DILocation(line: 425, column: 3, scope: !2849)
!3002 = !DILocation(line: 426, column: 3, scope: !2849)
!3003 = !DILocation(line: 428, column: 7, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !2849, file: !1, line: 428, column: 7)
!3005 = !DILocation(line: 428, column: 17, scope: !3004)
!3006 = !DILocation(line: 428, column: 21, scope: !3004)
!3007 = !DILocation(line: 428, column: 32, scope: !3004)
!3008 = !DILocation(line: 428, column: 7, scope: !2849)
!3009 = !DILocation(line: 429, column: 65, scope: !3004)
!3010 = !DILocation(line: 429, column: 5, scope: !3004)
!3011 = !DILocation(line: 432, column: 1, scope: !2849)
!3012 = distinct !DISubprogram(name: "create_canonical_iv", scope: !1, file: !1, line: 74, type: !3013, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3015)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{null, !490, !512, !558}
!3015 = !{!3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024}
!3016 = !DILocalVariable(name: "loop", arg: 1, scope: !3012, file: !1, line: 74, type: !490)
!3017 = !DILocalVariable(name: "exit", arg: 2, scope: !3012, file: !1, line: 74, type: !512)
!3018 = !DILocalVariable(name: "niter", arg: 3, scope: !3012, file: !1, line: 74, type: !558)
!3019 = !DILocalVariable(name: "in", scope: !3012, file: !1, line: 76, type: !512)
!3020 = !DILocalVariable(name: "type", scope: !3012, file: !1, line: 77, type: !558)
!3021 = !DILocalVariable(name: "var", scope: !3012, file: !1, line: 77, type: !558)
!3022 = !DILocalVariable(name: "cond", scope: !3012, file: !1, line: 78, type: !533)
!3023 = !DILocalVariable(name: "incr_at", scope: !3012, file: !1, line: 79, type: !2343)
!3024 = !DILocalVariable(name: "cmp", scope: !3012, file: !1, line: 80, type: !181)
!3025 = !DILocation(line: 0, scope: !3012)
!3026 = !DILocation(line: 77, column: 3, scope: !3012)
!3027 = !DILocation(line: 79, column: 3, scope: !3012)
!3028 = !DILocation(line: 82, column: 7, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3012, file: !1, line: 82, column: 7)
!3030 = !DILocation(line: 82, column: 17, scope: !3029)
!3031 = !DILocation(line: 82, column: 21, scope: !3029)
!3032 = !DILocation(line: 82, column: 32, scope: !3029)
!3033 = !DILocation(line: 82, column: 7, scope: !3012)
!3034 = !DILocation(line: 84, column: 68, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3029, file: !1, line: 83, column: 5)
!3036 = !DILocation(line: 84, column: 7, scope: !3035)
!3037 = !DILocation(line: 85, column: 27, scope: !3035)
!3038 = !DILocation(line: 85, column: 7, scope: !3035)
!3039 = !DILocation(line: 86, column: 16, scope: !3035)
!3040 = !DILocation(line: 86, column: 7, scope: !3035)
!3041 = !DILocation(line: 87, column: 5, scope: !3035)
!3042 = !DILocation(line: 89, column: 27, scope: !3012)
!3043 = !DILocation(line: 89, column: 10, scope: !3012)
!3044 = !DILocation(line: 90, column: 8, scope: !3012)
!3045 = !DILocation(line: 91, column: 10, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3012, file: !1, line: 91, column: 7)
!3047 = !DILocation(line: 91, column: 7, scope: !3012)
!3048 = !DILocation(line: 92, column: 10, scope: !3046)
!3049 = !DILocation(line: 92, column: 5, scope: !3046)
!3050 = !DILocation(line: 99, column: 10, scope: !3012)
!3051 = !DILocation(line: 100, column: 11, scope: !3012)
!3052 = !DILocation(line: 103, column: 13, scope: !3012)
!3053 = !DILocation(line: 103, column: 30, scope: !3012)
!3054 = !DILocation(line: 105, column: 7, scope: !3012)
!3055 = !DILocation(line: 104, column: 3, scope: !3012)
!3056 = !DILocation(line: 109, column: 16, scope: !3012)
!3057 = !DILocation(line: 109, column: 22, scope: !3012)
!3058 = !DILocation(line: 109, column: 9, scope: !3012)
!3059 = !DILocation(line: 110, column: 3, scope: !3012)
!3060 = !DILocation(line: 111, column: 30, scope: !3012)
!3061 = !DILocation(line: 111, column: 3, scope: !3012)
!3062 = !DILocation(line: 112, column: 30, scope: !3012)
!3063 = !DILocation(line: 112, column: 3, scope: !3012)
!3064 = !DILocation(line: 113, column: 3, scope: !3012)
!3065 = !DILocation(line: 114, column: 1, scope: !3012)
!3066 = distinct !DISubprogram(name: "tree_estimate_loop_size", scope: !1, file: !1, line: 204, type: !3067, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3070)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{null, !490, !512, !3069}
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!3070 = !{!3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3085, !3086}
!3071 = !DILocalVariable(name: "loop", arg: 1, scope: !3066, file: !1, line: 204, type: !490)
!3072 = !DILocalVariable(name: "exit", arg: 2, scope: !3066, file: !1, line: 204, type: !512)
!3073 = !DILocalVariable(name: "size", arg: 3, scope: !3066, file: !1, line: 204, type: !3069)
!3074 = !DILocalVariable(name: "body", scope: !3066, file: !1, line: 206, type: !2341)
!3075 = !DILocalVariable(name: "gsi", scope: !3066, file: !1, line: 207, type: !2343)
!3076 = !DILocalVariable(name: "i", scope: !3066, file: !1, line: 208, type: !5)
!3077 = !DILocalVariable(name: "after_exit", scope: !3066, file: !1, line: 209, type: !466)
!3078 = !DILocalVariable(name: "stmt", scope: !3079, file: !1, line: 230, type: !533)
!3079 = distinct !DILexicalBlock(scope: !3080, file: !1, line: 229, column: 2)
!3080 = distinct !DILexicalBlock(scope: !3081, file: !1, line: 228, column: 7)
!3081 = distinct !DILexicalBlock(scope: !3082, file: !1, line: 228, column: 7)
!3082 = distinct !DILexicalBlock(scope: !3083, file: !1, line: 219, column: 5)
!3083 = distinct !DILexicalBlock(scope: !3084, file: !1, line: 218, column: 3)
!3084 = distinct !DILexicalBlock(scope: !3066, file: !1, line: 218, column: 3)
!3085 = !DILocalVariable(name: "num", scope: !3079, file: !1, line: 231, type: !467)
!3086 = !DILocalVariable(name: "likely_eliminated", scope: !3079, file: !1, line: 232, type: !466)
!3087 = !DILocation(line: 0, scope: !3066)
!3088 = !DILocation(line: 206, column: 23, scope: !3066)
!3089 = !DILocation(line: 207, column: 3, scope: !3066)
!3090 = !DILocation(line: 211, column: 9, scope: !3066)
!3091 = !DILocation(line: 211, column: 17, scope: !3066)
!3092 = !DILocation(line: 212, column: 9, scope: !3066)
!3093 = !DILocation(line: 212, column: 31, scope: !3066)
!3094 = !DILocation(line: 213, column: 9, scope: !3066)
!3095 = !DILocation(line: 213, column: 24, scope: !3066)
!3096 = !DILocation(line: 214, column: 9, scope: !3066)
!3097 = !DILocation(line: 214, column: 46, scope: !3066)
!3098 = !DILocation(line: 216, column: 7, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3066, file: !1, line: 216, column: 7)
!3100 = !DILocation(line: 216, column: 17, scope: !3099)
!3101 = !DILocation(line: 216, column: 21, scope: !3099)
!3102 = !DILocation(line: 216, column: 32, scope: !3099)
!3103 = !DILocation(line: 216, column: 7, scope: !3066)
!3104 = !DILocation(line: 217, column: 65, scope: !3099)
!3105 = !DILocation(line: 217, column: 5, scope: !3099)
!3106 = !DILocation(line: 0, scope: !3083)
!3107 = !DILocation(line: 0, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3082, file: !1, line: 220, column: 11)
!3109 = !DILocation(line: 0, scope: !3081)
!3110 = !DILocation(line: 218, column: 8, scope: !3084)
!3111 = !DILocation(line: 0, scope: !3084)
!3112 = !DILocation(line: 218, column: 25, scope: !3083)
!3113 = !DILocation(line: 218, column: 17, scope: !3083)
!3114 = !DILocation(line: 218, column: 3, scope: !3084)
!3115 = !DILocation(line: 220, column: 16, scope: !3108)
!3116 = !DILocation(line: 220, column: 19, scope: !3108)
!3117 = !DILocation(line: 220, column: 36, scope: !3108)
!3118 = !DILocation(line: 220, column: 27, scope: !3108)
!3119 = !DILocation(line: 221, column: 4, scope: !3108)
!3120 = !DILocation(line: 221, column: 7, scope: !3108)
!3121 = !DILocation(line: 220, column: 11, scope: !3082)
!3122 = !DILocation(line: 225, column: 11, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3082, file: !1, line: 225, column: 11)
!3124 = !DILocation(line: 225, column: 21, scope: !3123)
!3125 = !DILocation(line: 225, column: 25, scope: !3123)
!3126 = !DILocation(line: 225, column: 36, scope: !3123)
!3127 = !DILocation(line: 225, column: 11, scope: !3082)
!3128 = !DILocation(line: 226, column: 51, scope: !3123)
!3129 = !DILocation(line: 226, column: 60, scope: !3123)
!3130 = !DILocation(line: 226, column: 67, scope: !3123)
!3131 = !DILocation(line: 226, column: 2, scope: !3123)
!3132 = !DILocation(line: 228, column: 18, scope: !3081)
!3133 = !DILocation(line: 228, column: 32, scope: !3081)
!3134 = !DILocation(line: 0, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3079, file: !1, line: 283, column: 8)
!3136 = !DILocation(line: 228, column: 12, scope: !3081)
!3137 = !DILocation(line: 228, column: 43, scope: !3080)
!3138 = !DILocation(line: 228, column: 42, scope: !3080)
!3139 = !DILocation(line: 228, column: 7, scope: !3081)
!3140 = !DILocation(line: 230, column: 18, scope: !3079)
!3141 = !DILocation(line: 0, scope: !3079)
!3142 = !DILocation(line: 231, column: 14, scope: !3079)
!3143 = !DILocation(line: 234, column: 8, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3079, file: !1, line: 234, column: 8)
!3145 = !DILocation(line: 234, column: 18, scope: !3144)
!3146 = !DILocation(line: 234, column: 22, scope: !3144)
!3147 = !DILocation(line: 234, column: 33, scope: !3144)
!3148 = !DILocation(line: 234, column: 8, scope: !3079)
!3149 = !DILocation(line: 236, column: 8, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3144, file: !1, line: 235, column: 6)
!3151 = !DILocation(line: 237, column: 27, scope: !3150)
!3152 = !DILocation(line: 237, column: 38, scope: !3150)
!3153 = !DILocation(line: 237, column: 8, scope: !3150)
!3154 = !DILocation(line: 238, column: 6, scope: !3150)
!3155 = !DILocation(line: 243, column: 8, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3079, file: !1, line: 243, column: 8)
!3157 = !DILocation(line: 243, column: 25, scope: !3156)
!3158 = !DILocation(line: 243, column: 16, scope: !3156)
!3159 = !DILocation(line: 243, column: 29, scope: !3156)
!3160 = !DILocation(line: 243, column: 40, scope: !3156)
!3161 = !DILocation(line: 243, column: 37, scope: !3156)
!3162 = !DILocation(line: 243, column: 8, scope: !3079)
!3163 = !DILocation(line: 245, column: 12, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3165, file: !1, line: 245, column: 12)
!3165 = distinct !DILexicalBlock(scope: !3156, file: !1, line: 244, column: 6)
!3166 = !DILocation(line: 245, column: 22, scope: !3164)
!3167 = !DILocation(line: 245, column: 26, scope: !3164)
!3168 = !DILocation(line: 245, column: 37, scope: !3164)
!3169 = !DILocation(line: 245, column: 12, scope: !3165)
!3170 = !DILocation(line: 246, column: 10, scope: !3164)
!3171 = !DILocation(line: 250, column: 13, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3156, file: !1, line: 250, column: 13)
!3173 = !DILocation(line: 250, column: 32, scope: !3172)
!3174 = !DILocation(line: 251, column: 8, scope: !3172)
!3175 = !DILocation(line: 251, column: 35, scope: !3172)
!3176 = !DILocation(line: 251, column: 11, scope: !3172)
!3177 = !DILocation(line: 250, column: 13, scope: !3156)
!3178 = !DILocation(line: 253, column: 12, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3180, file: !1, line: 253, column: 12)
!3180 = distinct !DILexicalBlock(scope: !3172, file: !1, line: 252, column: 6)
!3181 = !DILocation(line: 253, column: 22, scope: !3179)
!3182 = !DILocation(line: 253, column: 26, scope: !3179)
!3183 = !DILocation(line: 253, column: 37, scope: !3179)
!3184 = !DILocation(line: 253, column: 12, scope: !3180)
!3185 = !DILocation(line: 254, column: 10, scope: !3179)
!3186 = !DILocation(line: 259, column: 13, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3172, file: !1, line: 259, column: 13)
!3188 = !DILocation(line: 259, column: 32, scope: !3187)
!3189 = !DILocation(line: 260, column: 6, scope: !3187)
!3190 = !DILocation(line: 260, column: 9, scope: !3187)
!3191 = !DILocation(line: 260, column: 46, scope: !3187)
!3192 = !DILocation(line: 261, column: 6, scope: !3187)
!3193 = !DILocation(line: 261, column: 33, scope: !3187)
!3194 = !DILocation(line: 261, column: 9, scope: !3187)
!3195 = !DILocation(line: 262, column: 6, scope: !3187)
!3196 = !DILocation(line: 262, column: 10, scope: !3187)
!3197 = !DILocation(line: 262, column: 41, scope: !3187)
!3198 = !DILocation(line: 263, column: 10, scope: !3187)
!3199 = !DILocation(line: 263, column: 37, scope: !3187)
!3200 = !DILocation(line: 263, column: 13, scope: !3187)
!3201 = !DILocation(line: 259, column: 13, scope: !3172)
!3202 = !DILocation(line: 266, column: 12, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3204, file: !1, line: 266, column: 12)
!3204 = distinct !DILexicalBlock(scope: !3187, file: !1, line: 265, column: 6)
!3205 = !DILocation(line: 266, column: 22, scope: !3203)
!3206 = !DILocation(line: 266, column: 26, scope: !3203)
!3207 = !DILocation(line: 266, column: 37, scope: !3203)
!3208 = !DILocation(line: 266, column: 12, scope: !3204)
!3209 = !DILocation(line: 267, column: 10, scope: !3203)
!3210 = !DILocation(line: 271, column: 13, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3187, file: !1, line: 271, column: 13)
!3212 = !DILocation(line: 271, column: 32, scope: !3211)
!3213 = !DILocation(line: 272, column: 6, scope: !3211)
!3214 = !DILocation(line: 272, column: 33, scope: !3211)
!3215 = !DILocation(line: 272, column: 9, scope: !3211)
!3216 = !DILocation(line: 273, column: 6, scope: !3211)
!3217 = !DILocation(line: 273, column: 33, scope: !3211)
!3218 = !DILocation(line: 273, column: 9, scope: !3211)
!3219 = !DILocation(line: 271, column: 13, scope: !3187)
!3220 = !DILocation(line: 275, column: 12, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3222, file: !1, line: 275, column: 12)
!3222 = distinct !DILexicalBlock(scope: !3211, file: !1, line: 274, column: 6)
!3223 = !DILocation(line: 275, column: 22, scope: !3221)
!3224 = !DILocation(line: 275, column: 26, scope: !3221)
!3225 = !DILocation(line: 275, column: 37, scope: !3221)
!3226 = !DILocation(line: 275, column: 12, scope: !3222)
!3227 = !DILocation(line: 276, column: 10, scope: !3221)
!3228 = !DILocation(line: 280, column: 18, scope: !3079)
!3229 = !DILocation(line: 281, column: 8, scope: !3079)
!3230 = !DILocation(line: 282, column: 34, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3079, file: !1, line: 281, column: 8)
!3232 = !DILocation(line: 282, column: 6, scope: !3231)
!3233 = !DILocation(line: 283, column: 8, scope: !3079)
!3234 = !DILocation(line: 285, column: 29, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3135, file: !1, line: 284, column: 6)
!3236 = !DILocation(line: 286, column: 12, scope: !3235)
!3237 = !DILocation(line: 287, column: 46, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3235, file: !1, line: 286, column: 12)
!3239 = !DILocation(line: 287, column: 3, scope: !3238)
!3240 = !DILocation(line: 228, column: 60, scope: !3080)
!3241 = !DILocation(line: 228, column: 7, scope: !3080)
!3242 = distinct !{!3242, !3139, !3243}
!3243 = !DILocation(line: 289, column: 2, scope: !3081)
!3244 = !DILocation(line: 218, column: 37, scope: !3083)
!3245 = !DILocation(line: 218, column: 3, scope: !3083)
!3246 = distinct !{!3246, !3114, !3247}
!3247 = !DILocation(line: 290, column: 5, scope: !3084)
!3248 = !DILocation(line: 291, column: 7, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3066, file: !1, line: 291, column: 7)
!3250 = !DILocation(line: 291, column: 17, scope: !3249)
!3251 = !DILocation(line: 291, column: 21, scope: !3249)
!3252 = !DILocation(line: 291, column: 32, scope: !3249)
!3253 = !DILocation(line: 291, column: 7, scope: !3066)
!3254 = !DILocation(line: 292, column: 71, scope: !3249)
!3255 = !DILocation(line: 293, column: 17, scope: !3249)
!3256 = !DILocation(line: 293, column: 46, scope: !3249)
!3257 = !DILocation(line: 294, column: 13, scope: !3249)
!3258 = !DILocation(line: 292, column: 5, scope: !3249)
!3259 = !DILocation(line: 296, column: 9, scope: !3066)
!3260 = !DILocation(line: 296, column: 3, scope: !3066)
!3261 = !DILocation(line: 297, column: 1, scope: !3066)
!3262 = distinct !DISubprogram(name: "estimated_unrolled_size", scope: !1, file: !1, line: 309, type: !3263, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3265)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{!611, !3069, !611}
!3265 = !{!3266, !3267, !3268}
!3266 = !DILocalVariable(name: "size", arg: 1, scope: !3262, file: !1, line: 309, type: !3069)
!3267 = !DILocalVariable(name: "nunroll", arg: 2, scope: !3262, file: !1, line: 310, type: !611)
!3268 = !DILocalVariable(name: "unr_insns", scope: !3262, file: !1, line: 312, type: !613)
!3269 = !DILocation(line: 0, scope: !3262)
!3270 = !DILocation(line: 313, column: 36, scope: !3262)
!3271 = !DILocation(line: 314, column: 20, scope: !3262)
!3272 = !DILocation(line: 314, column: 12, scope: !3262)
!3273 = !DILocation(line: 313, column: 13, scope: !3262)
!3274 = !DILocation(line: 313, column: 11, scope: !3262)
!3275 = !DILocation(line: 317, column: 22, scope: !3262)
!3276 = !DILocation(line: 317, column: 45, scope: !3262)
!3277 = !DILocation(line: 317, column: 37, scope: !3262)
!3278 = !DILocation(line: 317, column: 16, scope: !3262)
!3279 = !DILocation(line: 317, column: 13, scope: !3262)
!3280 = !DILocation(line: 319, column: 25, scope: !3262)
!3281 = !DILocation(line: 319, column: 29, scope: !3262)
!3282 = !DILocation(line: 320, column: 7, scope: !3262)
!3283 = !DILocation(line: 323, column: 3, scope: !3262)
!3284 = distinct !DISubprogram(name: "RESET_BIT", scope: !2873, file: !2873, line: 82, type: !3285, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3287)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{null, !2872, !5}
!3287 = !{!3288, !3289, !3290}
!3288 = !DILocalVariable(name: "map", arg: 1, scope: !3284, file: !2873, line: 82, type: !2872)
!3289 = !DILocalVariable(name: "bitno", arg: 2, scope: !3284, file: !2873, line: 82, type: !5)
!3290 = !DILocalVariable(name: "oldbit", scope: !3291, file: !2873, line: 86, type: !466)
!3291 = distinct !DILexicalBlock(scope: !3292, file: !2873, line: 85, column: 5)
!3292 = distinct !DILexicalBlock(scope: !3284, file: !2873, line: 84, column: 7)
!3293 = !DILocation(line: 0, scope: !3284)
!3294 = !DILocation(line: 84, column: 12, scope: !3292)
!3295 = !DILocation(line: 84, column: 7, scope: !3292)
!3296 = !DILocation(line: 84, column: 7, scope: !3284)
!3297 = !DILocation(line: 87, column: 16, scope: !3291)
!3298 = !DILocation(line: 88, column: 11, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3291, file: !2873, line: 88, column: 11)
!3300 = !DILocation(line: 88, column: 11, scope: !3291)
!3301 = !DILocation(line: 89, column: 41, scope: !3299)
!3302 = !DILocation(line: 89, column: 2, scope: !3299)
!3303 = !DILocation(line: 91, column: 3, scope: !3284)
!3304 = !DILocation(line: 92, column: 5, scope: !3284)
!3305 = !DILocation(line: 93, column: 1, scope: !3284)
!3306 = distinct !DISubprogram(name: "VEC_edge_base_iterate", scope: !133, file: !133, line: 150, type: !3307, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3312)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!467, !3309, !5, !3311}
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !505)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!3312 = !{!3313, !3314, !3315}
!3313 = !DILocalVariable(name: "vec_", arg: 1, scope: !3306, file: !133, line: 150, type: !3309)
!3314 = !DILocalVariable(name: "ix_", arg: 2, scope: !3306, file: !133, line: 150, type: !5)
!3315 = !DILocalVariable(name: "ptr", arg: 3, scope: !3306, file: !133, line: 150, type: !3311)
!3316 = !DILocation(line: 0, scope: !3306)
!3317 = !DILocation(line: 150, column: 1, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3306, file: !133, line: 150, column: 1)
!3319 = !DILocation(line: 150, column: 1, scope: !3306)
!3320 = !DILocation(line: 150, column: 1, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3318, file: !133, line: 150, column: 1)
!3322 = !DILocation(line: 150, column: 1, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3318, file: !133, line: 150, column: 1)
!3324 = !DILocation(line: 0, scope: !3318)
!3325 = distinct !DISubprogram(name: "VEC_edge_heap_free", scope: !133, file: !133, line: 152, type: !3326, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3329)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{null, !3328}
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!3329 = !{!3330}
!3330 = !DILocalVariable(name: "vec_", arg: 1, scope: !3325, file: !133, line: 152, type: !3328)
!3331 = !DILocation(line: 0, scope: !3325)
!3332 = !DILocation(line: 152, column: 1, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3325, file: !133, line: 152, column: 1)
!3334 = !DILocation(line: 152, column: 1, scope: !3325)
!3335 = distinct !DISubprogram(name: "gimple_cond_make_true", scope: !394, file: !394, line: 2357, type: !3336, scopeLine: 2358, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3338)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{null, !533}
!3338 = !{!3339}
!3339 = !DILocalVariable(name: "gs", arg: 1, scope: !3335, file: !394, line: 2357, type: !533)
!3340 = !DILocation(line: 0, scope: !3335)
!3341 = !DILocation(line: 2359, column: 28, scope: !3335)
!3342 = !DILocation(line: 2359, column: 3, scope: !3335)
!3343 = !DILocation(line: 2360, column: 28, scope: !3335)
!3344 = !DILocation(line: 2360, column: 3, scope: !3335)
!3345 = !DILocation(line: 2361, column: 14, scope: !3335)
!3346 = !DILocation(line: 2361, column: 22, scope: !3335)
!3347 = !DILocation(line: 2362, column: 1, scope: !3335)
!3348 = distinct !DISubprogram(name: "gimple_cond_make_false", scope: !394, file: !394, line: 2346, type: !3336, scopeLine: 2347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3349)
!3349 = !{!3350}
!3350 = !DILocalVariable(name: "gs", arg: 1, scope: !3348, file: !394, line: 2346, type: !533)
!3351 = !DILocation(line: 0, scope: !3348)
!3352 = !DILocation(line: 2348, column: 28, scope: !3348)
!3353 = !DILocation(line: 2348, column: 3, scope: !3348)
!3354 = !DILocation(line: 2349, column: 28, scope: !3348)
!3355 = !DILocation(line: 2349, column: 3, scope: !3348)
!3356 = !DILocation(line: 2350, column: 14, scope: !3348)
!3357 = !DILocation(line: 2350, column: 22, scope: !3348)
!3358 = !DILocation(line: 2351, column: 1, scope: !3348)
!3359 = distinct !DISubprogram(name: "update_stmt", scope: !394, file: !394, line: 1456, type: !3336, scopeLine: 1457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3360)
!3360 = !{!3361}
!3361 = !DILocalVariable(name: "s", arg: 1, scope: !3359, file: !394, line: 1456, type: !533)
!3362 = !DILocation(line: 0, scope: !3359)
!3363 = !DILocation(line: 1458, column: 7, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3359, file: !394, line: 1458, column: 7)
!3365 = !DILocation(line: 1458, column: 7, scope: !3359)
!3366 = !DILocation(line: 1460, column: 7, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3364, file: !394, line: 1459, column: 5)
!3368 = !DILocation(line: 1461, column: 7, scope: !3367)
!3369 = !DILocation(line: 1462, column: 5, scope: !3367)
!3370 = !DILocation(line: 1463, column: 1, scope: !3359)
!3371 = distinct !DISubprogram(name: "gimple_code", scope: !394, file: !394, line: 1052, type: !3372, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3375)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{!393, !3374}
!3374 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !513, line: 60, baseType: !1872)
!3375 = !{!3376}
!3376 = !DILocalVariable(name: "g", arg: 1, scope: !3371, file: !394, line: 1052, type: !3374)
!3377 = !DILocation(line: 0, scope: !3371)
!3378 = !DILocation(line: 1054, column: 20, scope: !3371)
!3379 = !DILocation(line: 1054, column: 3, scope: !3371)
!3380 = distinct !DISubprogram(name: "constant_after_peeling", scope: !1, file: !1, line: 153, type: !3381, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3383)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{!466, !558, !533, !490}
!3383 = !{!3384, !3385, !3386, !3387, !3394}
!3384 = !DILocalVariable(name: "op", arg: 1, scope: !3380, file: !1, line: 153, type: !558)
!3385 = !DILocalVariable(name: "stmt", arg: 2, scope: !3380, file: !1, line: 153, type: !533)
!3386 = !DILocalVariable(name: "loop", arg: 3, scope: !3380, file: !1, line: 153, type: !490)
!3387 = !DILocalVariable(name: "iv", scope: !3380, file: !1, line: 155, type: !3388)
!3388 = !DIDerivedType(tag: DW_TAG_typedef, name: "affine_iv", file: !965, line: 651, baseType: !3389)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !965, line: 644, size: 192, elements: !3390)
!3390 = !{!3391, !3392, !3393}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3389, file: !965, line: 647, baseType: !558, size: 64)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !3389, file: !965, line: 647, baseType: !558, size: 64, offset: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "no_overflow", scope: !3389, file: !965, line: 650, baseType: !466, size: 8, offset: 128)
!3394 = !DILocalVariable(name: "base", scope: !3395, file: !1, line: 163, type: !558)
!3395 = distinct !DILexicalBlock(scope: !3396, file: !1, line: 162, column: 5)
!3396 = distinct !DILexicalBlock(scope: !3380, file: !1, line: 161, column: 7)
!3397 = !DILocation(line: 0, scope: !3380)
!3398 = !DILocation(line: 155, column: 3, scope: !3380)
!3399 = !DILocation(line: 157, column: 7, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3380, file: !1, line: 157, column: 7)
!3401 = !DILocation(line: 157, column: 7, scope: !3380)
!3402 = !DILocation(line: 161, column: 7, scope: !3396)
!3403 = !DILocation(line: 161, column: 22, scope: !3396)
!3404 = !DILocation(line: 161, column: 7, scope: !3380)
!3405 = !DILocation(line: 166, column: 7, scope: !3395)
!3406 = !DILocation(line: 0, scope: !3395)
!3407 = !DILocation(line: 166, column: 14, scope: !3395)
!3408 = !DILocation(line: 167, column: 9, scope: !3395)
!3409 = distinct !{!3409, !3405, !3408}
!3410 = !DILocation(line: 168, column: 12, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3395, file: !1, line: 168, column: 11)
!3412 = !DILocation(line: 169, column: 11, scope: !3411)
!3413 = !DILocation(line: 169, column: 14, scope: !3411)
!3414 = !DILocation(line: 170, column: 5, scope: !3411)
!3415 = !DILocation(line: 170, column: 8, scope: !3411)
!3416 = !DILocation(line: 171, column: 12, scope: !3411)
!3417 = !DILocation(line: 171, column: 16, scope: !3411)
!3418 = !DILocation(line: 172, column: 9, scope: !3411)
!3419 = !DILocation(line: 172, column: 14, scope: !3411)
!3420 = !DILocation(line: 173, column: 6, scope: !3411)
!3421 = !DILocation(line: 173, column: 17, scope: !3411)
!3422 = !DILocation(line: 173, column: 9, scope: !3411)
!3423 = !DILocation(line: 174, column: 4, scope: !3411)
!3424 = !DILocation(line: 174, column: 7, scope: !3411)
!3425 = !DILocation(line: 168, column: 11, scope: !3395)
!3426 = !DILocation(line: 178, column: 4, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3411, file: !1, line: 175, column: 2)
!3428 = !DILocation(line: 0, scope: !3427)
!3429 = !DILocation(line: 178, column: 11, scope: !3427)
!3430 = !DILocation(line: 180, column: 12, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3432, file: !1, line: 180, column: 12)
!3432 = distinct !DILexicalBlock(scope: !3427, file: !1, line: 179, column: 6)
!3433 = !DILocation(line: 180, column: 29, scope: !3431)
!3434 = !DILocation(line: 181, column: 5, scope: !3431)
!3435 = !DILocation(line: 181, column: 33, scope: !3431)
!3436 = !DILocation(line: 181, column: 9, scope: !3431)
!3437 = !DILocation(line: 180, column: 12, scope: !3432)
!3438 = !DILocation(line: 183, column: 15, scope: !3432)
!3439 = distinct !{!3439, !3426, !3440}
!3440 = !DILocation(line: 184, column: 6, scope: !3427)
!3441 = !DILocation(line: 191, column: 25, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3380, file: !1, line: 191, column: 7)
!3443 = !DILocation(line: 191, column: 8, scope: !3442)
!3444 = !DILocation(line: 191, column: 7, scope: !3380)
!3445 = !DILocation(line: 193, column: 36, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3380, file: !1, line: 193, column: 7)
!3447 = !DILocation(line: 193, column: 8, scope: !3446)
!3448 = !DILocation(line: 193, column: 7, scope: !3380)
!3449 = !DILocation(line: 195, column: 36, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3380, file: !1, line: 195, column: 7)
!3451 = !DILocation(line: 195, column: 8, scope: !3450)
!3452 = !DILocation(line: 198, column: 1, scope: !3380)
!3453 = distinct !DISubprogram(name: "gimple_assign_lhs", scope: !394, file: !394, line: 1694, type: !3454, scopeLine: 1695, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3456)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!558, !3374}
!3456 = !{!3457}
!3457 = !DILocalVariable(name: "gs", arg: 1, scope: !3453, file: !394, line: 1694, type: !3374)
!3458 = !DILocation(line: 0, scope: !3453)
!3459 = !DILocation(line: 1697, column: 10, scope: !3453)
!3460 = !DILocation(line: 1697, column: 3, scope: !3453)
!3461 = distinct !DISubprogram(name: "gimple_assign_rhs1", scope: !394, file: !394, line: 1727, type: !3454, scopeLine: 1728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3462)
!3462 = !{!3463}
!3463 = !DILocalVariable(name: "gs", arg: 1, scope: !3461, file: !394, line: 1727, type: !3374)
!3464 = !DILocation(line: 0, scope: !3461)
!3465 = !DILocation(line: 1730, column: 10, scope: !3461)
!3466 = !DILocation(line: 1730, column: 3, scope: !3461)
!3467 = distinct !DISubprogram(name: "gimple_assign_rhs_class", scope: !394, file: !394, line: 1844, type: !3468, scopeLine: 1845, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3470)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{!458, !3374}
!3470 = !{!3471}
!3471 = !DILocalVariable(name: "gs", arg: 1, scope: !3467, file: !394, line: 1844, type: !3374)
!3472 = !DILocation(line: 0, scope: !3467)
!3473 = !DILocation(line: 1846, column: 32, scope: !3467)
!3474 = !DILocation(line: 1846, column: 10, scope: !3467)
!3475 = !DILocation(line: 1846, column: 3, scope: !3467)
!3476 = distinct !DISubprogram(name: "gimple_assign_rhs2", scope: !394, file: !394, line: 1759, type: !3454, scopeLine: 1760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3477)
!3477 = !{!3478}
!3478 = !DILocalVariable(name: "gs", arg: 1, scope: !3476, file: !394, line: 1759, type: !3374)
!3479 = !DILocation(line: 0, scope: !3476)
!3480 = !DILocation(line: 1763, column: 7, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3476, file: !394, line: 1763, column: 7)
!3482 = !DILocation(line: 1763, column: 27, scope: !3481)
!3483 = !DILocation(line: 1763, column: 7, scope: !3476)
!3484 = !DILocation(line: 1764, column: 12, scope: !3481)
!3485 = !DILocation(line: 1764, column: 5, scope: !3481)
!3486 = !DILocation(line: 0, scope: !3481)
!3487 = !DILocation(line: 1767, column: 1, scope: !3476)
!3488 = distinct !DISubprogram(name: "gimple_cond_lhs", scope: !394, file: !394, line: 2241, type: !3454, scopeLine: 2242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3489)
!3489 = !{!3490}
!3490 = !DILocalVariable(name: "gs", arg: 1, scope: !3488, file: !394, line: 2241, type: !3374)
!3491 = !DILocation(line: 0, scope: !3488)
!3492 = !DILocation(line: 2244, column: 10, scope: !3488)
!3493 = !DILocation(line: 2244, column: 3, scope: !3488)
!3494 = distinct !DISubprogram(name: "gimple_cond_rhs", scope: !394, file: !394, line: 2271, type: !3454, scopeLine: 2272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3495)
!3495 = !{!3496}
!3496 = !DILocalVariable(name: "gs", arg: 1, scope: !3494, file: !394, line: 2271, type: !3374)
!3497 = !DILocation(line: 0, scope: !3494)
!3498 = !DILocation(line: 2274, column: 10, scope: !3494)
!3499 = !DILocation(line: 2274, column: 3, scope: !3494)
!3500 = distinct !DISubprogram(name: "handled_component_p", scope: !149, file: !149, line: 4551, type: !3501, scopeLine: 4552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3506)
!3501 = !DISubroutineType(types: !3502)
!3502 = !{!466, !3503}
!3503 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_tree", file: !513, line: 59, baseType: !3504)
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !560)
!3506 = !{!3507}
!3507 = !DILocalVariable(name: "t", arg: 1, scope: !3500, file: !149, line: 4551, type: !3503)
!3508 = !DILocation(line: 0, scope: !3500)
!3509 = !DILocation(line: 4553, column: 11, scope: !3500)
!3510 = !DILocation(line: 4553, column: 3, scope: !3500)
!3511 = !DILocation(line: 4565, column: 7, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3500, file: !149, line: 4554, column: 5)
!3513 = !DILocation(line: 0, scope: !3512)
!3514 = !DILocation(line: 4567, column: 1, scope: !3500)
!3515 = distinct !DISubprogram(name: "loop_containing_stmt", scope: !3516, file: !3516, line: 617, type: !3517, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3519)
!3516 = !DIFile(filename: "./tree-flow-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!3517 = !DISubroutineType(types: !3518)
!3518 = !{!490, !533}
!3519 = !{!3520, !3521}
!3520 = !DILocalVariable(name: "stmt", arg: 1, scope: !3515, file: !3516, line: 617, type: !533)
!3521 = !DILocalVariable(name: "bb", scope: !3515, file: !3516, line: 619, type: !1025)
!3522 = !DILocation(line: 0, scope: !3515)
!3523 = !DILocation(line: 619, column: 20, scope: !3515)
!3524 = !DILocation(line: 620, column: 8, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3515, file: !3516, line: 620, column: 7)
!3526 = !DILocation(line: 620, column: 7, scope: !3515)
!3527 = !DILocation(line: 623, column: 14, scope: !3515)
!3528 = !DILocation(line: 623, column: 3, scope: !3515)
!3529 = !DILocation(line: 624, column: 1, scope: !3515)
!3530 = distinct !DISubprogram(name: "gimple_bb", scope: !394, file: !394, line: 1112, type: !3531, scopeLine: 1113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3533)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{!496, !3374}
!3533 = !{!3534}
!3534 = !DILocalVariable(name: "g", arg: 1, scope: !3530, file: !394, line: 1112, type: !3374)
!3535 = !DILocation(line: 0, scope: !3530)
!3536 = !DILocation(line: 1114, column: 20, scope: !3530)
!3537 = !DILocation(line: 1114, column: 3, scope: !3530)
!3538 = distinct !DISubprogram(name: "gimple_op", scope: !394, file: !394, line: 1631, type: !3539, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3541)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{!558, !3374, !5}
!3541 = !{!3542, !3543}
!3542 = !DILocalVariable(name: "gs", arg: 1, scope: !3538, file: !394, line: 1631, type: !3374)
!3543 = !DILocalVariable(name: "i", arg: 2, scope: !3538, file: !394, line: 1631, type: !5)
!3544 = !DILocation(line: 0, scope: !3538)
!3545 = !DILocation(line: 1633, column: 7, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3538, file: !394, line: 1633, column: 7)
!3547 = !DILocation(line: 1633, column: 7, scope: !3538)
!3548 = !DILocation(line: 1638, column: 14, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3546, file: !394, line: 1634, column: 5)
!3550 = !DILocation(line: 1638, column: 7, scope: !3549)
!3551 = !DILocation(line: 0, scope: !3546)
!3552 = !DILocation(line: 1642, column: 1, scope: !3538)
!3553 = distinct !DISubprogram(name: "gimple_has_ops", scope: !394, file: !394, line: 1274, type: !3554, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3556)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{!466, !3374}
!3556 = !{!3557}
!3557 = !DILocalVariable(name: "g", arg: 1, scope: !3553, file: !394, line: 1274, type: !3374)
!3558 = !DILocation(line: 0, scope: !3553)
!3559 = !DILocation(line: 1276, column: 10, scope: !3553)
!3560 = !DILocation(line: 1276, column: 26, scope: !3553)
!3561 = !DILocation(line: 1276, column: 41, scope: !3553)
!3562 = !DILocation(line: 1276, column: 44, scope: !3553)
!3563 = !DILocation(line: 1276, column: 60, scope: !3553)
!3564 = !DILocation(line: 1276, column: 3, scope: !3553)
!3565 = distinct !DISubprogram(name: "gimple_ops", scope: !394, file: !394, line: 1614, type: !3566, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3568)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{!1173, !533}
!3568 = !{!3569, !3570}
!3569 = !DILocalVariable(name: "gs", arg: 1, scope: !3565, file: !394, line: 1614, type: !533)
!3570 = !DILocalVariable(name: "off", scope: !3565, file: !394, line: 1616, type: !1081)
!3571 = !DILocation(line: 0, scope: !3565)
!3572 = !DILocation(line: 1621, column: 28, scope: !3565)
!3573 = !DILocation(line: 1621, column: 9, scope: !3565)
!3574 = !DILocation(line: 1622, column: 3, scope: !3565)
!3575 = !DILocation(line: 1624, column: 20, scope: !3565)
!3576 = !DILocation(line: 1624, column: 32, scope: !3565)
!3577 = !DILocation(line: 1624, column: 10, scope: !3565)
!3578 = !DILocation(line: 1624, column: 3, scope: !3565)
!3579 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !394, file: !394, line: 1073, type: !3580, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3582)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{!432, !533}
!3582 = !{!3583}
!3583 = !DILocalVariable(name: "gs", arg: 1, scope: !3579, file: !394, line: 1073, type: !533)
!3584 = !DILocation(line: 0, scope: !3579)
!3585 = !DILocation(line: 1075, column: 24, scope: !3579)
!3586 = !DILocation(line: 1075, column: 10, scope: !3579)
!3587 = !DILocation(line: 1075, column: 3, scope: !3579)
!3588 = distinct !DISubprogram(name: "gss_for_code", scope: !394, file: !394, line: 1061, type: !3589, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3591)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{!432, !393}
!3591 = !{!3592}
!3592 = !DILocalVariable(name: "code", arg: 1, scope: !3588, file: !394, line: 1061, type: !393)
!3593 = !DILocation(line: 0, scope: !3588)
!3594 = !DILocation(line: 1066, column: 10, scope: !3588)
!3595 = !DILocation(line: 1066, column: 3, scope: !3588)
!3596 = distinct !DISubprogram(name: "get_gimple_rhs_class", scope: !394, file: !394, line: 1686, type: !3597, scopeLine: 1687, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3599)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{!458, !181}
!3599 = !{!3600}
!3600 = !DILocalVariable(name: "code", arg: 1, scope: !3596, file: !394, line: 1686, type: !181)
!3601 = !DILocation(line: 0, scope: !3596)
!3602 = !DILocation(line: 1688, column: 34, scope: !3596)
!3603 = !DILocation(line: 1688, column: 10, scope: !3596)
!3604 = !DILocation(line: 1688, column: 3, scope: !3596)
!3605 = distinct !DISubprogram(name: "gimple_assign_rhs_code", scope: !394, file: !394, line: 1815, type: !3606, scopeLine: 1816, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3608)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!181, !3374}
!3608 = !{!3609, !3610}
!3609 = !DILocalVariable(name: "gs", arg: 1, scope: !3605, file: !394, line: 1815, type: !3374)
!3610 = !DILocalVariable(name: "code", scope: !3605, file: !394, line: 1817, type: !181)
!3611 = !DILocation(line: 0, scope: !3605)
!3612 = !DILocation(line: 1820, column: 10, scope: !3605)
!3613 = !DILocation(line: 1821, column: 7, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3605, file: !394, line: 1821, column: 7)
!3615 = !DILocation(line: 1821, column: 35, scope: !3614)
!3616 = !DILocation(line: 1821, column: 7, scope: !3605)
!3617 = !DILocation(line: 1822, column: 12, scope: !3614)
!3618 = !DILocation(line: 1822, column: 5, scope: !3614)
!3619 = !DILocation(line: 1824, column: 3, scope: !3605)
!3620 = distinct !DISubprogram(name: "gimple_expr_code", scope: !394, file: !394, line: 1438, type: !3606, scopeLine: 1439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3621)
!3621 = !{!3622, !3623}
!3622 = !DILocalVariable(name: "stmt", arg: 1, scope: !3620, file: !394, line: 1438, type: !3374)
!3623 = !DILocalVariable(name: "code", scope: !3620, file: !394, line: 1440, type: !393)
!3624 = !DILocation(line: 0, scope: !3620)
!3625 = !DILocation(line: 1440, column: 27, scope: !3620)
!3626 = !DILocation(line: 1441, column: 29, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3620, file: !394, line: 1441, column: 7)
!3628 = !DILocation(line: 1442, column: 42, scope: !3627)
!3629 = !DILocation(line: 1442, column: 5, scope: !3627)
!3630 = !DILocation(line: 1446, column: 5, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3627, file: !394, line: 1443, column: 12)
!3632 = !DILocation(line: 1448, column: 5, scope: !3620)
!3633 = !DILocation(line: 1450, column: 1, scope: !3620)
!3634 = distinct !DISubprogram(name: "gimple_num_ops", scope: !394, file: !394, line: 1596, type: !3635, scopeLine: 1597, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3637)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{!5, !3374}
!3637 = !{!3638}
!3638 = !DILocalVariable(name: "gs", arg: 1, scope: !3634, file: !394, line: 1596, type: !3374)
!3639 = !DILocation(line: 0, scope: !3634)
!3640 = !DILocation(line: 1598, column: 21, scope: !3634)
!3641 = !DILocation(line: 1598, column: 3, scope: !3634)
!3642 = distinct !DISubprogram(name: "gimple_cond_set_lhs", scope: !394, file: !394, line: 2261, type: !3643, scopeLine: 2262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3645)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{null, !533, !558}
!3645 = !{!3646, !3647}
!3646 = !DILocalVariable(name: "gs", arg: 1, scope: !3642, file: !394, line: 2261, type: !533)
!3647 = !DILocalVariable(name: "lhs", arg: 2, scope: !3642, file: !394, line: 2261, type: !558)
!3648 = !DILocation(line: 0, scope: !3642)
!3649 = !DILocation(line: 2264, column: 3, scope: !3642)
!3650 = !DILocation(line: 2265, column: 1, scope: !3642)
!3651 = distinct !DISubprogram(name: "gimple_cond_set_rhs", scope: !394, file: !394, line: 2292, type: !3643, scopeLine: 2293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3652)
!3652 = !{!3653, !3654}
!3653 = !DILocalVariable(name: "gs", arg: 1, scope: !3651, file: !394, line: 2292, type: !533)
!3654 = !DILocalVariable(name: "rhs", arg: 2, scope: !3651, file: !394, line: 2292, type: !558)
!3655 = !DILocation(line: 0, scope: !3651)
!3656 = !DILocation(line: 2295, column: 3, scope: !3651)
!3657 = !DILocation(line: 2296, column: 1, scope: !3651)
!3658 = distinct !DISubprogram(name: "gimple_set_op", scope: !394, file: !394, line: 1663, type: !3659, scopeLine: 1664, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3661)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{null, !533, !5, !558}
!3661 = !{!3662, !3663, !3664}
!3662 = !DILocalVariable(name: "gs", arg: 1, scope: !3658, file: !394, line: 1663, type: !533)
!3663 = !DILocalVariable(name: "i", arg: 2, scope: !3658, file: !394, line: 1663, type: !5)
!3664 = !DILocalVariable(name: "op", arg: 3, scope: !3658, file: !394, line: 1663, type: !558)
!3665 = !DILocation(line: 0, scope: !3658)
!3666 = !DILocation(line: 1665, column: 3, scope: !3658)
!3667 = !DILocation(line: 1671, column: 3, scope: !3658)
!3668 = !DILocation(line: 1671, column: 22, scope: !3658)
!3669 = !DILocation(line: 1672, column: 1, scope: !3658)
!3670 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !133, file: !133, line: 150, type: !3671, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3673)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!512, !3309, !5}
!3673 = !{!3674, !3675}
!3674 = !DILocalVariable(name: "vec_", arg: 1, scope: !3670, file: !133, line: 150, type: !3309)
!3675 = !DILocalVariable(name: "ix_", arg: 2, scope: !3670, file: !133, line: 150, type: !5)
!3676 = !DILocation(line: 0, scope: !3670)
!3677 = !DILocation(line: 150, column: 1, scope: !3670)
!3678 = distinct !DISubprogram(name: "gsi_last_bb", scope: !394, file: !394, line: 4450, type: !2387, scopeLine: 4451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3679)
!3679 = !{!3680, !3681, !3682}
!3680 = !DILocalVariable(name: "bb", arg: 1, scope: !3678, file: !394, line: 4450, type: !1025)
!3681 = !DILocalVariable(name: "i", scope: !3678, file: !394, line: 4452, type: !2343)
!3682 = !DILocalVariable(name: "seq", scope: !3678, file: !394, line: 4453, type: !523)
!3683 = !DILocation(line: 0, scope: !3678)
!3684 = !DILocation(line: 4452, column: 24, scope: !3678)
!3685 = !DILocation(line: 4455, column: 9, scope: !3678)
!3686 = !DILocation(line: 4456, column: 11, scope: !3678)
!3687 = !DILocation(line: 4456, column: 5, scope: !3678)
!3688 = !DILocation(line: 4456, column: 9, scope: !3678)
!3689 = !DILocation(line: 4457, column: 5, scope: !3678)
!3690 = !DILocation(line: 4457, column: 9, scope: !3678)
!3691 = !DILocation(line: 4458, column: 5, scope: !3678)
!3692 = !DILocation(line: 4458, column: 8, scope: !3678)
!3693 = !DILocation(line: 4461, column: 1, scope: !3678)
!3694 = distinct !DISubprogram(name: "gimple_cond_set_code", scope: !394, file: !394, line: 2231, type: !3695, scopeLine: 2232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3697)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{null, !533, !181}
!3697 = !{!3698, !3699}
!3698 = !DILocalVariable(name: "gs", arg: 1, scope: !3694, file: !394, line: 2231, type: !533)
!3699 = !DILocalVariable(name: "code", arg: 2, scope: !3694, file: !394, line: 2231, type: !181)
!3700 = !DILocation(line: 0, scope: !3694)
!3701 = !DILocation(line: 2234, column: 14, scope: !3694)
!3702 = !DILocation(line: 2234, column: 22, scope: !3694)
!3703 = !DILocation(line: 2235, column: 1, scope: !3694)
!3704 = distinct !DISubprogram(name: "gimple_seq_last", scope: !394, file: !394, line: 178, type: !2787, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3705)
!3705 = !{!3706}
!3706 = !DILocalVariable(name: "s", arg: 1, scope: !3704, file: !394, line: 178, type: !2789)
!3707 = !DILocation(line: 0, scope: !3704)
!3708 = !DILocation(line: 180, column: 10, scope: !3704)
!3709 = !DILocation(line: 180, column: 17, scope: !3704)
!3710 = !DILocation(line: 180, column: 3, scope: !3704)
!3711 = distinct !DISubprogram(name: "VEC_int_base_iterate", scope: !476, file: !476, line: 31, type: !3712, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3716)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!467, !3714, !5, !2834}
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !480)
!3716 = !{!3717, !3718, !3719}
!3717 = !DILocalVariable(name: "vec_", arg: 1, scope: !3711, file: !476, line: 31, type: !3714)
!3718 = !DILocalVariable(name: "ix_", arg: 2, scope: !3711, file: !476, line: 31, type: !5)
!3719 = !DILocalVariable(name: "ptr", arg: 3, scope: !3711, file: !476, line: 31, type: !2834)
!3720 = !DILocation(line: 0, scope: !3711)
!3721 = !DILocation(line: 31, column: 1, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3711, file: !476, line: 31, column: 1)
!3723 = !DILocation(line: 31, column: 1, scope: !3711)
!3724 = !DILocation(line: 31, column: 1, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3722, file: !476, line: 31, column: 1)
!3726 = !DILocation(line: 31, column: 1, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3722, file: !476, line: 31, column: 1)
!3728 = !DILocation(line: 0, scope: !3722)
!3729 = distinct !DISubprogram(name: "get_loop", scope: !376, file: !376, line: 417, type: !3730, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3732)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!490, !5}
!3732 = !{!3733}
!3733 = !DILocalVariable(name: "num", arg: 1, scope: !3729, file: !376, line: 417, type: !5)
!3734 = !DILocation(line: 0, scope: !3729)
!3735 = !DILocation(line: 419, column: 10, scope: !3729)
!3736 = !DILocation(line: 419, column: 3, scope: !3729)
!3737 = distinct !DISubprogram(name: "VEC_int_heap_free", scope: !476, file: !476, line: 32, type: !3738, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3741)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{null, !3740}
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!3741 = !{!3742}
!3742 = !DILocalVariable(name: "vec_", arg: 1, scope: !3737, file: !476, line: 32, type: !3740)
!3743 = !DILocation(line: 0, scope: !3737)
!3744 = !DILocation(line: 32, column: 1, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3737, file: !476, line: 32, column: 1)
!3746 = !DILocation(line: 32, column: 1, scope: !3737)
!3747 = distinct !DISubprogram(name: "VEC_loop_p_base_index", scope: !376, file: !376, line: 85, type: !3748, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3750)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{!489, !2816, !5}
!3750 = !{!3751, !3752}
!3751 = !DILocalVariable(name: "vec_", arg: 1, scope: !3747, file: !376, line: 85, type: !2816)
!3752 = !DILocalVariable(name: "ix_", arg: 2, scope: !3747, file: !376, line: 85, type: !5)
!3753 = !DILocation(line: 0, scope: !3747)
!3754 = !DILocation(line: 85, column: 1, scope: !3747)
