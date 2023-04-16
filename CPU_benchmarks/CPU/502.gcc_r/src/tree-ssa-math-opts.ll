; ModuleID = 'tree-ssa-math-opts.bc'
source_filename = "tree-ssa-math-opts.c"
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
%struct.alloc_pool_def = type { i8*, i64, %struct.alloc_pool_list_def*, i8*, i64, i64, i64, i64, %struct.alloc_pool_list_def*, i64, i64 }
%struct.alloc_pool_list_def = type { %struct.alloc_pool_list_def* }
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
%struct.occurrence = type { %struct.basic_block_def*, %union.tree_node*, %union.gimple_statement_d*, %struct.occurrence*, %struct.occurrence*, i32, i8 }
%struct.optab_d = type { i32, i8*, i8, void (%struct.optab_d*, i8*, i8, i32)*, [87 x %struct.optab_handlers] }
%struct.optab_handlers = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.immediate_use_iterator_d = type { %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_type_symtab, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_type* }
%union.tree_type_symtab = type { i8* }
%struct.lang_type = type opaque
%struct.tree_list = type { %struct.tree_common, %union.tree_node*, %union.tree_node* }
%struct.ssa_operand_iterator_d = type { i8, i32, %struct.def_optype_d*, %struct.use_optype_d*, i32, i32, %union.gimple_statement_d* }
%struct.VEC_gimple_heap = type { %struct.VEC_gimple_base }
%struct.symbolic_number = type { i64, i32 }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [6 x i8] c"recip\00", align 1
@pass_cse_reciprocals = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8 ()* @gate_cse_reciprocals, i32 ()* @execute_cse_reciprocals, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 0, i32 32, i32 0, i32 0, i32 0, i32 2069 } }, align 8, !dbg !0
@.str.1 = private unnamed_addr constant [7 x i8] c"sincos\00", align 1
@pass_cse_sincos = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8 ()* @gate_cse_sincos, i32 ()* @execute_cse_sincos, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 0, i32 32, i32 0, i32 0, i32 0, i32 2069 } }, align 8, !dbg !2683
@.str.2 = private unnamed_addr constant [6 x i8] c"bswap\00", align 1
@pass_optimize_bswap = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8 ()* @gate_optimize_bswap, i32 ()* @execute_optimize_bswap, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 0, i32 32, i32 0, i32 0, i32 0, i32 0 } }, align 8, !dbg !2711
@optimize = external dso_local local_unnamed_addr global i32, align 4
@flag_reciprocal_math = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"dominators for recip\00", align 1
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@occ_pool = internal unnamed_addr global %struct.alloc_pool_def* null, align 8, !dbg !2713
@targetm = external dso_local local_unnamed_addr global %struct.gcc_target, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"tree-ssa-math-opts.c\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@occ_head = internal global %struct.occurrence* null, align 8, !dbg !2736
@flag_exceptions = external dso_local local_unnamed_addr global i32, align 4
@flag_trapping_math = external dso_local local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"reciptmp\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_rhs_class_table = external dso_local local_unnamed_addr constant [0 x i8], align 1
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@linux_uclibc = external dso_local local_unnamed_addr global i32, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"sincostmp\00", align 1
@flag_expensive_optimizations = external dso_local local_unnamed_addr global i32, align 4
@built_in_decls = external dso_local local_unnamed_addr global [721 x %union.tree_node*], align 16
@optab_table = external dso_local local_unnamed_addr global [159 x %struct.optab_d], align 16
@word_mode = external dso_local local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"bswapsrc\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"bswapdst\00", align 1
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.12 = private unnamed_addr constant [39 x i8] c"%d bit bswap implementation found at: \00", align 1
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !2742 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !2755, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !2756, metadata !DIExpression()), !dbg !2757
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2758
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2759
  ret i32 %call, !dbg !2760
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2761 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2765
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2766
  ret i32 %call, !dbg !2767
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2768 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2823, metadata !DIExpression()), !dbg !2824
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2825
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2825
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2825
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2825
  %cmp = icmp uge i8* %0, %1, !dbg !2825
  %conv1 = zext i1 %cmp to i64, !dbg !2825
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2825
  %tobool = icmp eq i64 %expval, 0, !dbg !2825
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2825

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2825
  br label %cond.end, !dbg !2825

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2825
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2825
  %2 = load i8, i8* %0, align 1, !dbg !2825
  %conv3 = zext i8 %2 to i32, !dbg !2825
  br label %cond.end, !dbg !2825

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2825
  ret i32 %cond, !dbg !2826
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2827 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2829, metadata !DIExpression()), !dbg !2830
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2831
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2831
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2831
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2831
  %cmp = icmp uge i8* %0, %1, !dbg !2831
  %conv1 = zext i1 %cmp to i64, !dbg !2831
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2831
  %tobool = icmp eq i64 %expval, 0, !dbg !2831
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2831

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2831
  br label %cond.end, !dbg !2831

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2831
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2831
  %2 = load i8, i8* %0, align 1, !dbg !2831
  %conv3 = zext i8 %2 to i32, !dbg !2831
  br label %cond.end, !dbg !2831

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2831
  ret i32 %cond, !dbg !2832
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2833 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2834
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2834
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2834
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2834
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2834
  %cmp = icmp uge i8* %1, %2, !dbg !2834
  %conv1 = zext i1 %cmp to i64, !dbg !2834
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2834
  %tobool = icmp eq i64 %expval, 0, !dbg !2834
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2834

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2834
  br label %cond.end, !dbg !2834

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2834
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2834
  %3 = load i8, i8* %1, align 1, !dbg !2834
  %conv3 = zext i8 %3 to i32, !dbg !2834
  br label %cond.end, !dbg !2834

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2834
  ret i32 %cond, !dbg !2835
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2836 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2840, metadata !DIExpression()), !dbg !2841
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2842
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2843
  ret i32 %call, !dbg !2844
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2845 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2849, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2850, metadata !DIExpression()), !dbg !2851
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2852
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2852
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2852
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2852
  %cmp = icmp uge i8* %0, %1, !dbg !2852
  %conv1 = zext i1 %cmp to i64, !dbg !2852
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2852
  %tobool = icmp eq i64 %expval, 0, !dbg !2852
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2852

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2852
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2852
  br label %cond.end, !dbg !2852

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2852
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2852
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2852
  store i8 %conv2, i8* %0, align 1, !dbg !2852
  %conv6 = and i32 %__c, 255, !dbg !2852
  br label %cond.end, !dbg !2852

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2852
  ret i32 %cond, !dbg !2853
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2854 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2856, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2857, metadata !DIExpression()), !dbg !2858
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2859
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2859
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2859
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2859
  %cmp = icmp uge i8* %0, %1, !dbg !2859
  %conv1 = zext i1 %cmp to i64, !dbg !2859
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2859
  %tobool = icmp eq i64 %expval, 0, !dbg !2859
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2859

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2859
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2859
  br label %cond.end, !dbg !2859

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2859
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2859
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2859
  store i8 %conv2, i8* %0, align 1, !dbg !2859
  %conv6 = and i32 %__c, 255, !dbg !2859
  br label %cond.end, !dbg !2859

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2859
  ret i32 %cond, !dbg !2860
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2861 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2863, metadata !DIExpression()), !dbg !2864
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2865
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2865
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2865
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2865
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2865
  %cmp = icmp uge i8* %1, %2, !dbg !2865
  %conv1 = zext i1 %cmp to i64, !dbg !2865
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2865
  %tobool = icmp eq i64 %expval, 0, !dbg !2865
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2865

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2865
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2865
  br label %cond.end, !dbg !2865

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2865
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2865
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2865
  store i8 %conv4, i8* %1, align 1, !dbg !2865
  %conv6 = and i32 %__c, 255, !dbg !2865
  br label %cond.end, !dbg !2865

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2865
  ret i32 %cond, !dbg !2866
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2867 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2873, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2874, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2875, metadata !DIExpression()), !dbg !2876
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2877
  ret i64 %call, !dbg !2878
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2879 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2881, metadata !DIExpression()), !dbg !2882
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2883
  %0 = load i32, i32* %_flags, align 8, !dbg !2883
  %and = lshr i32 %0, 4, !dbg !2883
  %and.lobit = and i32 %and, 1, !dbg !2883
  ret i32 %and.lobit, !dbg !2884
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2885 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2887, metadata !DIExpression()), !dbg !2888
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2889
  %0 = load i32, i32* %_flags, align 8, !dbg !2889
  %and = lshr i32 %0, 5, !dbg !2889
  %and.lobit = and i32 %and, 1, !dbg !2889
  ret i32 %and.lobit, !dbg !2890
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2891 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2894, metadata !DIExpression()), !dbg !2895
  %__c.off = add i32 %__c, 128, !dbg !2896
  %0 = icmp ult i32 %__c.off, 384, !dbg !2896
  br i1 %0, label %cond.true, label %cond.end, !dbg !2896

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2897
  %1 = load i32*, i32** %call, align 8, !dbg !2898
  %idxprom = sext i32 %__c to i64, !dbg !2899
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2899
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2899
  br label %cond.end, !dbg !2900

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2900
  ret i32 %cond, !dbg !2901
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2902 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2904, metadata !DIExpression()), !dbg !2905
  %__c.off = add i32 %__c, 128, !dbg !2906
  %0 = icmp ult i32 %__c.off, 384, !dbg !2906
  br i1 %0, label %cond.true, label %cond.end, !dbg !2906

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2907
  %1 = load i32*, i32** %call, align 8, !dbg !2908
  %idxprom = sext i32 %__c to i64, !dbg !2909
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2909
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2909
  br label %cond.end, !dbg !2910

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2910
  ret i32 %cond, !dbg !2911
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2912 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2917, metadata !DIExpression()), !dbg !2918
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2919
  %conv = trunc i64 %call to i32, !dbg !2920
  ret i32 %conv, !dbg !2921
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2922 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2926, metadata !DIExpression()), !dbg !2927
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2928
  ret i64 %call, !dbg !2929
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2930 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2935, metadata !DIExpression()), !dbg !2936
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2937
  ret i64 %call, !dbg !2938
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2939 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2945, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2946, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2947, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2948, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2949, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i64 0, metadata !2950, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2951, metadata !DIExpression()), !dbg !2955
  br label %while.cond, !dbg !2956

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2957
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2955
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2951, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2950, metadata !DIExpression()), !dbg !2955
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2958
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2956

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2959
  %div = lshr i64 %add, 1, !dbg !2961
  call void @llvm.dbg.value(metadata i64 %div, metadata !2952, metadata !DIExpression()), !dbg !2955
  %mul = mul i64 %div, %__size, !dbg !2962
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2963
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2953, metadata !DIExpression()), !dbg !2955
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2964
  call void @llvm.dbg.value(metadata i32 %call, metadata !2954, metadata !DIExpression()), !dbg !2955
  %cmp1 = icmp slt i32 %call, 0, !dbg !2965
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2967

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2968
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2970

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2971
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2950, metadata !DIExpression()), !dbg !2955
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2955
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2955
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2951, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2950, metadata !DIExpression()), !dbg !2955
  br label %while.cond, !dbg !2956, !llvm.loop !2972

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2955
  ret i8* %retval.0, !dbg !2974
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2975 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2981, metadata !DIExpression()), !dbg !2982
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2983
  ret double %call, !dbg !2984
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2985 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2994, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2995, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i32 %base, metadata !2996, metadata !DIExpression()), !dbg !2997
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2998
  ret i64 %call, !dbg !2999
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !3000 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !3006, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !3007, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i32 %base, metadata !3008, metadata !DIExpression()), !dbg !3009
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !3010
  ret i64 %call, !dbg !3011
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !3012 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !3023, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !3024, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.value(metadata i32 %base, metadata !3025, metadata !DIExpression()), !dbg !3026
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !3027
  ret i64 %call, !dbg !3028
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !3029 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !3033, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !3034, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata i32 %base, metadata !3035, metadata !DIExpression()), !dbg !3036
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !3037
  ret i64 %call, !dbg !3038
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !3039 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !3079, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !3080, metadata !DIExpression()), !dbg !3081
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !3082
  ret i32 %call, !dbg !3083
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !3084 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !3086, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !3087, metadata !DIExpression()), !dbg !3088
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !3089
  ret i32 %call, !dbg !3090
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !3091 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !3095, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !3096, metadata !DIExpression()), !dbg !3097
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !3098
  ret i32 %call, !dbg !3099
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !3100 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !3104, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !3105, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !3106, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !3107, metadata !DIExpression()), !dbg !3108
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !3109
  ret i32 %call, !dbg !3110
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !3111 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !3115, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !3116, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !3117, metadata !DIExpression()), !dbg !3118
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !3117, metadata !DIExpression(DW_OP_deref)), !dbg !3118
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !3119
  ret i32 %call, !dbg !3120
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !3121 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !3125, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata i8* %__path, metadata !3126, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !3127, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !3128, metadata !DIExpression()), !dbg !3129
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !3128, metadata !DIExpression(DW_OP_deref)), !dbg !3129
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !3130
  ret i32 %call, !dbg !3131
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !3132 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !3156, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !3157, metadata !DIExpression()), !dbg !3158
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !3159
  ret i32 %call, !dbg !3160
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !3161 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !3163, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !3164, metadata !DIExpression()), !dbg !3165
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !3166
  ret i32 %call, !dbg !3167
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !3168 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !3172, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !3173, metadata !DIExpression()), !dbg !3174
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !3175
  ret i32 %call, !dbg !3176
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !3177 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !3181, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !3182, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !3183, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !3184, metadata !DIExpression()), !dbg !3185
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !3186
  ret i32 %call, !dbg !3187
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_cse_reciprocals() #5 !dbg !3188 {
entry:
  %0 = load i32, i32* @optimize, align 4, !dbg !3189
  %tobool = icmp ne i32 %0, 0, !dbg !3189
  %1 = load i32, i32* @flag_reciprocal_math, align 4, !dbg !3190
  %tobool1 = icmp ne i32 %1, 0, !dbg !3190
  %2 = and i1 %tobool1, %tobool, !dbg !3190
  %conv = zext i1 %2 to i8, !dbg !3189
  ret i8 %conv, !dbg !3191
}

; Function Attrs: nounwind uwtable
define internal i32 @execute_cse_reciprocals() #5 !dbg !3192 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %tmp101 = alloca %struct.gimple_stmt_iterator, align 8
  %tmp168 = alloca %struct.gimple_stmt_iterator, align 8
  %ui = alloca %struct.immediate_use_iterator_d, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3239
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !3239
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3239
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 3, !dbg !3239
  %2 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !3239
  %div = sdiv i32 %2, 3, !dbg !3240
  %add = add nsw i32 %div, 1, !dbg !3241
  %conv = sext i32 %add to i64, !dbg !3239
  %call = tail call %struct.alloc_pool_def* @create_alloc_pool(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 48, i64 %conv) #6, !dbg !3242
  store %struct.alloc_pool_def* %call, %struct.alloc_pool_def** @occ_pool, align 8, !dbg !3243
  tail call void @calculate_dominance_info(i32 1) #6, !dbg !3244
  tail call void @calculate_dominance_info(i32 2) #6, !dbg !3245
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3246
  %decl = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 6, !dbg !3246
  %4 = bitcast %union.tree_node** %decl to %struct.tree_decl_non_common**, !dbg !3246
  %5 = load %struct.tree_decl_non_common*, %struct.tree_decl_non_common** %4, align 8, !dbg !3246
  %arguments = getelementptr inbounds %struct.tree_decl_non_common, %struct.tree_decl_non_common* %5, i64 0, i32 2, !dbg !3246
  br label %for.cond, !dbg !3248

for.cond:                                         ; preds = %for.inc, %entry
  %6 = phi %struct.function* [ %3, %entry ], [ %.pre, %for.inc ], !dbg !3249
  %arg.0.in = phi %union.tree_node** [ %arguments, %entry ], [ %chain, %for.inc ]
  %arg.0 = load %union.tree_node*, %union.tree_node** %arg.0.in, align 8, !dbg !3250
  call void @llvm.dbg.value(metadata %union.tree_node* %arg.0, metadata !3195, metadata !DIExpression()), !dbg !3249
  %tobool = icmp eq %union.tree_node* %arg.0, null, !dbg !3251
  br i1 %tobool, label %for.end, label %for.body, !dbg !3251

for.body:                                         ; preds = %for.cond
  %call3 = tail call %union.tree_node* @gimple_default_def(%struct.function* %6, %union.tree_node* nonnull %arg.0) #6, !dbg !3252
  %tobool4 = icmp eq %union.tree_node* %call3, null, !dbg !3252
  br i1 %tobool4, label %for.inc, label %land.lhs.true, !dbg !3255

land.lhs.true:                                    ; preds = %for.body
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %arg.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3256
  %7 = bitcast %union.tree_node** %type to i64**, !dbg !3256
  %8 = load i64*, i64** %7, align 8, !dbg !3256
  %bf.load = load i64, i64* %8, align 8, !dbg !3256
  %bf.cast15 = and i64 %bf.load, 65535, !dbg !3256
  %cmp = icmp eq i64 %bf.cast15, 9, !dbg !3256
  br i1 %cmp, label %land.lhs.true34, label %lor.lhs.false, !dbg !3256

lor.lhs.false:                                    ; preds = %land.lhs.true
  %cmp12 = icmp eq i64 %bf.cast15, 13, !dbg !3256
  br i1 %cmp12, label %land.lhs.true23, label %lor.lhs.false14, !dbg !3256

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %cmp21 = icmp eq i64 %bf.cast15, 14, !dbg !3256
  br i1 %cmp21, label %land.lhs.true23, label %for.inc, !dbg !3256

land.lhs.true23:                                  ; preds = %lor.lhs.false14, %lor.lhs.false
  %type27 = getelementptr inbounds i64, i64* %8, i64 2, !dbg !3256
  %9 = bitcast i64* %type27 to i64**, !dbg !3256
  %10 = load i64*, i64** %9, align 8, !dbg !3256
  %bf.load29 = load i64, i64* %10, align 8, !dbg !3256
  %bf.cast3118 = and i64 %bf.load29, 65535, !dbg !3256
  %cmp32 = icmp eq i64 %bf.cast3118, 9, !dbg !3256
  br i1 %cmp32, label %land.lhs.true34, label %for.inc, !dbg !3257

land.lhs.true34:                                  ; preds = %land.lhs.true23, %land.lhs.true
  %call35 = tail call zeroext i8 @is_gimple_reg(%union.tree_node* nonnull %arg.0) #6, !dbg !3258
  %tobool37 = icmp eq i8 %call35, 0, !dbg !3258
  br i1 %tobool37, label %for.inc, label %if.then, !dbg !3259

if.then:                                          ; preds = %land.lhs.true34
  %11 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3260
  %call39 = tail call %union.tree_node* @gimple_default_def(%struct.function* %11, %union.tree_node* nonnull %arg.0) #6, !dbg !3261
  tail call fastcc void @execute_cse_reciprocals_1(%struct.gimple_stmt_iterator* null, %union.tree_node* %call39) #7, !dbg !3262
  br label %for.inc, !dbg !3262

for.inc:                                          ; preds = %land.lhs.true34, %for.body, %lor.lhs.false14, %land.lhs.true23, %if.then
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %arg.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3263
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3249
  br label %for.cond, !dbg !3264, !llvm.loop !3265

for.end:                                          ; preds = %for.cond
  %.lcssa = phi %struct.function* [ %6, %for.cond ], !dbg !3249
  %cfg42 = getelementptr inbounds %struct.function, %struct.function* %.lcssa, i64 0, i32 1, !dbg !3267
  %12 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg42, align 8, !dbg !3267
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %12, i64 0, i32 0, !dbg !3267
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3267
  %14 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !3268
  %15 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !3269
  %16 = bitcast %struct.gimple_stmt_iterator* %tmp101 to i8*, !dbg !3271
  %17 = bitcast %struct.gimple_stmt_iterator* %tmp168 to i8*, !dbg !3272
  %18 = bitcast %struct.immediate_use_iterator_d* %ui to i8*, !dbg !3273
  br label %for.cond43, !dbg !3267

for.cond43:                                       ; preds = %cleanup293, %for.end
  %19 = phi %struct.control_flow_graph* [ %12, %for.end ], [ %.pre20, %cleanup293 ], !dbg !3274
  %.pn = phi %struct.basic_block_def* [ %13, %for.end ], [ %bb.0, %cleanup293 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !3275
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3275
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3194, metadata !DIExpression()), !dbg !3249
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %19, i64 0, i32 1, !dbg !3274
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3274
  %cmp46 = icmp eq %struct.basic_block_def* %bb.0, %20, !dbg !3274
  br i1 %cmp46, label %for.end300, label %for.body48, !dbg !3267

for.body48:                                       ; preds = %for.cond43
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #8, !dbg !3276
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %15) #8, !dbg !3277
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb.0) #6, !dbg !3277
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %14, i8* nonnull align 8 %15, i64 24, i1 false), !dbg !3277
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %15) #8, !dbg !3277
  br label %for.cond49, !dbg !3278

for.cond49:                                       ; preds = %for.inc99, %for.body48
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3196, metadata !DIExpression(DW_OP_deref)), !dbg !3268
  %call50 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3279
  %tobool51 = icmp eq i8 %call50, 0, !dbg !3281
  br i1 %tobool51, label %for.body52, label %for.end100, !dbg !3282

for.body52:                                       ; preds = %for.cond49
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3196, metadata !DIExpression(DW_OP_deref)), !dbg !3268
  %call53 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3283
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call53, metadata !3206, metadata !DIExpression()), !dbg !3268
  %call54 = call fastcc %union.tree_node** @gimple_phi_result_ptr(%union.gimple_statement_d* %call53) #7, !dbg !3285
  %call55 = call fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %call54) #7, !dbg !3285
  call void @llvm.dbg.value(metadata %union.tree_node* %call55, metadata !3207, metadata !DIExpression()), !dbg !3268
  %type57 = getelementptr inbounds %union.tree_node, %union.tree_node* %call55, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3286
  %21 = bitcast %union.tree_node** %type57 to i64**, !dbg !3286
  %22 = load i64*, i64** %21, align 8, !dbg !3286
  %bf.load59 = load i64, i64* %22, align 8, !dbg !3286
  %bf.cast6111 = and i64 %bf.load59, 65535, !dbg !3286
  %cmp62 = icmp eq i64 %bf.cast6111, 9, !dbg !3286
  br i1 %cmp62, label %land.lhs.true93, label %lor.lhs.false64, !dbg !3286

lor.lhs.false64:                                  ; preds = %for.body52
  %cmp71 = icmp eq i64 %bf.cast6111, 13, !dbg !3286
  br i1 %cmp71, label %land.lhs.true82, label %lor.lhs.false73, !dbg !3286

lor.lhs.false73:                                  ; preds = %lor.lhs.false64
  %cmp80 = icmp eq i64 %bf.cast6111, 14, !dbg !3286
  br i1 %cmp80, label %land.lhs.true82, label %for.inc99, !dbg !3286

land.lhs.true82:                                  ; preds = %lor.lhs.false73, %lor.lhs.false64
  %type86 = getelementptr inbounds i64, i64* %22, i64 2, !dbg !3286
  %23 = bitcast i64* %type86 to i64**, !dbg !3286
  %24 = load i64*, i64** %23, align 8, !dbg !3286
  %bf.load88 = load i64, i64* %24, align 8, !dbg !3286
  %bf.cast9014 = and i64 %bf.load88, 65535, !dbg !3286
  %cmp91 = icmp eq i64 %bf.cast9014, 9, !dbg !3286
  br i1 %cmp91, label %land.lhs.true93, label %for.inc99, !dbg !3288

land.lhs.true93:                                  ; preds = %land.lhs.true82, %for.body52
  %call94 = call zeroext i8 @is_gimple_reg(%union.tree_node* %call55) #6, !dbg !3289
  %tobool96 = icmp eq i8 %call94, 0, !dbg !3289
  br i1 %tobool96, label %for.inc99, label %if.then97, !dbg !3290

if.then97:                                        ; preds = %land.lhs.true93
  call fastcc void @execute_cse_reciprocals_1(%struct.gimple_stmt_iterator* null, %union.tree_node* %call55) #7, !dbg !3291
  br label %for.inc99, !dbg !3291

for.inc99:                                        ; preds = %land.lhs.true93, %lor.lhs.false73, %land.lhs.true82, %if.then97
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3196, metadata !DIExpression(DW_OP_deref)), !dbg !3268
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !3292
  br label %for.cond49, !dbg !3293, !llvm.loop !3294

for.end100:                                       ; preds = %for.cond49
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %16) #8, !dbg !3296
  call fastcc void @gsi_after_labels(%struct.gimple_stmt_iterator* nonnull sret %tmp101, %struct.basic_block_def* %bb.0) #7, !dbg !3296
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %14, i8* nonnull align 8 %16, i64 24, i1 false), !dbg !3296
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %16) #8, !dbg !3296
  br label %for.cond102, !dbg !3297

for.cond102:                                      ; preds = %for.inc162, %for.end100
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3196, metadata !DIExpression(DW_OP_deref)), !dbg !3268
  %call103 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3298
  %tobool104 = icmp eq i8 %call103, 0, !dbg !3299
  br i1 %tobool104, label %for.body106, label %for.end163, !dbg !3300

for.body106:                                      ; preds = %for.cond102
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3196, metadata !DIExpression(DW_OP_deref)), !dbg !3268
  %call107 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3301
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call107, metadata !3208, metadata !DIExpression()), !dbg !3302
  %call108 = call fastcc zeroext i8 @gimple_has_lhs(%union.gimple_statement_d* %call107) #7, !dbg !3303
  %tobool110 = icmp eq i8 %call108, 0, !dbg !3303
  br i1 %tobool110, label %for.inc162, label %land.lhs.true111, !dbg !3305

land.lhs.true111:                                 ; preds = %for.body106
  %call112 = call fastcc %union.tree_node* @single_ssa_tree_operand(%union.gimple_statement_d* %call107, i32 2) #7, !dbg !3306
  call void @llvm.dbg.value(metadata %union.tree_node* %call112, metadata !3207, metadata !DIExpression()), !dbg !3268
  %cmp113 = icmp eq %union.tree_node* %call112, null, !dbg !3307
  br i1 %cmp113, label %for.inc162, label %land.lhs.true115, !dbg !3308

land.lhs.true115:                                 ; preds = %land.lhs.true111
  %type117 = getelementptr inbounds %union.tree_node, %union.tree_node* %call112, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3309
  %25 = bitcast %union.tree_node** %type117 to i64**, !dbg !3309
  %26 = load i64*, i64** %25, align 8, !dbg !3309
  %bf.load119 = load i64, i64* %26, align 8, !dbg !3309
  %bf.cast1216 = and i64 %bf.load119, 65535, !dbg !3309
  %cmp122 = icmp eq i64 %bf.cast1216, 9, !dbg !3309
  br i1 %cmp122, label %land.lhs.true153, label %lor.lhs.false124, !dbg !3309

lor.lhs.false124:                                 ; preds = %land.lhs.true115
  %cmp131 = icmp eq i64 %bf.cast1216, 13, !dbg !3309
  br i1 %cmp131, label %land.lhs.true142, label %lor.lhs.false133, !dbg !3309

lor.lhs.false133:                                 ; preds = %lor.lhs.false124
  %cmp140 = icmp eq i64 %bf.cast1216, 14, !dbg !3309
  br i1 %cmp140, label %land.lhs.true142, label %for.inc162, !dbg !3309

land.lhs.true142:                                 ; preds = %lor.lhs.false133, %lor.lhs.false124
  %type146 = getelementptr inbounds i64, i64* %26, i64 2, !dbg !3309
  %27 = bitcast i64* %type146 to i64**, !dbg !3309
  %28 = load i64*, i64** %27, align 8, !dbg !3309
  %bf.load148 = load i64, i64* %28, align 8, !dbg !3309
  %bf.cast1509 = and i64 %bf.load148, 65535, !dbg !3309
  %cmp151 = icmp eq i64 %bf.cast1509, 9, !dbg !3309
  br i1 %cmp151, label %land.lhs.true153, label %for.inc162, !dbg !3310

land.lhs.true153:                                 ; preds = %land.lhs.true142, %land.lhs.true115
  %29 = getelementptr inbounds %union.tree_node, %union.tree_node* %call112, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3311
  %bf.load155 = load i64, i64* %29, align 8, !dbg !3311
  %bf.cast15710 = and i64 %bf.load155, 65535, !dbg !3312
  %cmp158 = icmp eq i64 %bf.cast15710, 141, !dbg !3312
  br i1 %cmp158, label %if.then160, label %for.inc162, !dbg !3313

if.then160:                                       ; preds = %land.lhs.true153
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3196, metadata !DIExpression(DW_OP_deref)), !dbg !3268
  call fastcc void @execute_cse_reciprocals_1(%struct.gimple_stmt_iterator* nonnull %gsi, %union.tree_node* nonnull %call112) #7, !dbg !3314
  br label %for.inc162, !dbg !3314

for.inc162:                                       ; preds = %land.lhs.true111, %for.body106, %lor.lhs.false133, %land.lhs.true142, %land.lhs.true153, %if.then160
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3196, metadata !DIExpression(DW_OP_deref)), !dbg !3268
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !3315
  br label %for.cond102, !dbg !3316, !llvm.loop !3317

for.end163:                                       ; preds = %for.cond102
  %call164 = call zeroext i8 @optimize_bb_for_size_p(%struct.basic_block_def* %bb.0) #6, !dbg !3319
  %tobool165 = icmp eq i8 %call164, 0, !dbg !3319
  br i1 %tobool165, label %if.end167, label %cleanup293, !dbg !3321

if.end167:                                        ; preds = %for.end163
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %17) #8, !dbg !3322
  call fastcc void @gsi_after_labels(%struct.gimple_stmt_iterator* nonnull sret %tmp168, %struct.basic_block_def* %bb.0) #7, !dbg !3322
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %14, i8* nonnull align 8 %17, i64 24, i1 false), !dbg !3322
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %17) #8, !dbg !3322
  br label %for.cond169, !dbg !3323

for.cond169:                                      ; preds = %cleanup287, %if.end167
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3196, metadata !DIExpression(DW_OP_deref)), !dbg !3268
  %call170 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3324
  %tobool171 = icmp eq i8 %call170, 0, !dbg !3325
  br i1 %tobool171, label %for.body173, label %cleanup293.loopexit, !dbg !3326

for.body173:                                      ; preds = %for.cond169
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3196, metadata !DIExpression(DW_OP_deref)), !dbg !3268
  %call175 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3327
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call175, metadata !3212, metadata !DIExpression()), !dbg !3328
  %call176 = call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %call175) #7, !dbg !3329
  %tobool178 = icmp eq i8 %call176, 0, !dbg !3329
  br i1 %tobool178, label %if.end286, label %land.lhs.true179, !dbg !3330

land.lhs.true179:                                 ; preds = %for.body173
  %call180 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %call175) #7, !dbg !3331
  %cmp181 = icmp eq i32 %call180, 75, !dbg !3332
  br i1 %cmp181, label %if.then183, label %if.end286, !dbg !3333

if.then183:                                       ; preds = %land.lhs.true179
  %call184 = call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %call175) #7, !dbg !3334
  call void @llvm.dbg.value(metadata %union.tree_node* %call184, metadata !3217, metadata !DIExpression()), !dbg !3335
  %30 = getelementptr inbounds %union.tree_node, %union.tree_node* %call184, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3336
  %bf.load186 = load i64, i64* %30, align 8, !dbg !3336
  %bf.cast1885 = and i64 %bf.load186, 65535, !dbg !3338
  %cmp189 = icmp eq i64 %bf.cast1885, 141, !dbg !3338
  br i1 %cmp189, label %if.end192, label %cleanup282, !dbg !3339

if.end192:                                        ; preds = %if.then183
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %call184, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3340
  %31 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !3340
  %32 = load %union.gimple_statement_d*, %union.gimple_statement_d** %31, align 8, !dbg !3340
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %32, metadata !3220, metadata !DIExpression()), !dbg !3335
  %call193 = call fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %32) #7, !dbg !3341
  %tobool195 = icmp eq i8 %call193, 0, !dbg !3341
  br i1 %tobool195, label %if.end281, label %land.lhs.true196, !dbg !3342

land.lhs.true196:                                 ; preds = %if.end192
  %call197 = call fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %32) #7, !dbg !3343
  %tobool198 = icmp eq %union.tree_node* %call197, null, !dbg !3343
  br i1 %tobool198, label %if.end281, label %land.lhs.true199, !dbg !3344

land.lhs.true199:                                 ; preds = %land.lhs.true196
  %call200 = call fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %32) #7, !dbg !3345
  call void @llvm.dbg.value(metadata %union.tree_node* %call200, metadata !3216, metadata !DIExpression()), !dbg !3328
  %tobool201 = icmp eq %union.tree_node* %call200, null, !dbg !3346
  br i1 %tobool201, label %if.end281, label %land.lhs.true202, !dbg !3347

land.lhs.true202:                                 ; preds = %land.lhs.true199
  %built_in_class = getelementptr inbounds %union.tree_node, %union.tree_node* %call200, i64 0, i32 0, i32 5, !dbg !3348
  %bf.load203 = load i32, i32* %built_in_class, align 8, !dbg !3348
  %bf.clear204 = and i32 %bf.load203, 6144, !dbg !3348
  %cmp205 = icmp eq i32 %bf.clear204, 6144, !dbg !3349
  br i1 %cmp205, label %if.then215, label %lor.lhs.false207, !dbg !3350

lor.lhs.false207:                                 ; preds = %land.lhs.true202
  %cmp213 = icmp eq i32 %bf.clear204, 4096, !dbg !3351
  br i1 %cmp213, label %if.then215, label %if.end281, !dbg !3352

if.then215:                                       ; preds = %lor.lhs.false207, %land.lhs.true202
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %18) #8, !dbg !3353
  %bf.clear218 = and i32 %bf.load203, 2047, !dbg !3354
  call void @llvm.dbg.value(metadata i32 %bf.clear218, metadata !3221, metadata !DIExpression()), !dbg !3273
  %cmp224 = icmp eq i32 %bf.clear204, 4096, !dbg !3355
  %conv226 = zext i1 %cmp224 to i8, !dbg !3356
  call void @llvm.dbg.value(metadata i8 %conv226, metadata !3224, metadata !DIExpression()), !dbg !3273
  %33 = load %union.tree_node* (i32, i8, i8)*, %union.tree_node* (i32, i8, i8)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 28), align 8, !dbg !3357
  %call227 = call %union.tree_node* %33(i32 %bf.clear218, i8 zeroext %conv226, i8 zeroext 0) #6, !dbg !3358
  call void @llvm.dbg.value(metadata %union.tree_node* %call227, metadata !3216, metadata !DIExpression()), !dbg !3328
  %tobool228 = icmp eq %union.tree_node* %call227, null, !dbg !3359
  br i1 %tobool228, label %cleanup274, label %if.end230, !dbg !3361

if.end230:                                        ; preds = %if.then215
  call void @llvm.dbg.value(metadata i8 0, metadata !3225, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %ui, metadata !3226, metadata !DIExpression(DW_OP_deref)), !dbg !3273
  %call231 = call fastcc %struct.ssa_use_operand_d* @first_readonly_imm_use(%struct.immediate_use_iterator_d* nonnull %ui, %union.tree_node* %call184) #7, !dbg !3362
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call231, metadata !3234, metadata !DIExpression()), !dbg !3273
  br label %for.cond232, !dbg !3362

for.cond232:                                      ; preds = %for.inc258, %if.end230
  %fail.0 = phi i8 [ 0, %if.end230 ], [ %fail.1, %for.inc258 ], !dbg !3363
  %use_p.0 = phi %struct.ssa_use_operand_d* [ %call231, %if.end230 ], [ %call259, %for.inc258 ], !dbg !3364
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p.0, metadata !3234, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata i8 %fail.0, metadata !3225, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %ui, metadata !3226, metadata !DIExpression(DW_OP_deref)), !dbg !3273
  %call233 = call fastcc zeroext i8 @end_readonly_imm_use_p(%struct.immediate_use_iterator_d* nonnull %ui) #7, !dbg !3365
  %tobool234 = icmp eq i8 %call233, 0, !dbg !3365
  br i1 %tobool234, label %for.body236, label %for.end260, !dbg !3362

for.body236:                                      ; preds = %for.cond232
  %stmt237 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use_p.0, i64 0, i32 2, i32 0, !dbg !3366
  %34 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt237, align 8, !dbg !3366
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %34, metadata !3235, metadata !DIExpression()), !dbg !3367
  %call238 = call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %34) #7, !dbg !3368
  %tobool239 = icmp eq i8 %call238, 0, !dbg !3368
  br i1 %tobool239, label %if.end241, label %cleanup, !dbg !3370

if.end241:                                        ; preds = %for.body236
  %call242 = call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %34) #7, !dbg !3371
  %tobool243 = icmp eq i8 %call242, 0, !dbg !3371
  br i1 %tobool243, label %cleanup, label %lor.lhs.false244, !dbg !3373

lor.lhs.false244:                                 ; preds = %if.end241
  %call245 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %34) #7, !dbg !3374
  %cmp246 = icmp eq i32 %call245, 75, !dbg !3375
  br i1 %cmp246, label %lor.lhs.false248, label %cleanup, !dbg !3376

lor.lhs.false248:                                 ; preds = %lor.lhs.false244
  %call249 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %34) #7, !dbg !3377
  %cmp250 = icmp eq %union.tree_node* %call249, %call184, !dbg !3378
  br i1 %cmp250, label %cleanup, label %lor.lhs.false252, !dbg !3379

lor.lhs.false252:                                 ; preds = %lor.lhs.false248
  %call253 = call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %34) #7, !dbg !3380
  %cmp254 = icmp ne %union.tree_node* %call253, %call184, !dbg !3381
  %spec.select = select i1 %cmp254, i32 17, i32 0, !dbg !3382
  %spec.select3 = select i1 %cmp254, i8 1, i8 %fail.0, !dbg !3382
  br label %cleanup, !dbg !3382

cleanup:                                          ; preds = %lor.lhs.false244, %if.end241, %for.body236, %lor.lhs.false252, %lor.lhs.false248
  %cleanup.dest.slot.0 = phi i32 [ 19, %for.body236 ], [ 17, %lor.lhs.false248 ], [ 17, %lor.lhs.false244 ], [ 17, %if.end241 ], [ %spec.select, %lor.lhs.false252 ]
  %fail.1 = phi i8 [ %fail.0, %for.body236 ], [ 1, %lor.lhs.false248 ], [ 1, %lor.lhs.false244 ], [ 1, %if.end241 ], [ %spec.select3, %lor.lhs.false252 ], !dbg !3273
  call void @llvm.dbg.value(metadata i8 %fail.1, metadata !3225, metadata !DIExpression()), !dbg !3273
  %switch4 = icmp eq i32 %cleanup.dest.slot.0, 17
  br i1 %switch4, label %for.end260, label %for.inc258

for.inc258:                                       ; preds = %cleanup
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %ui, metadata !3226, metadata !DIExpression(DW_OP_deref)), !dbg !3273
  %call259 = call fastcc %struct.ssa_use_operand_d* @next_readonly_imm_use(%struct.immediate_use_iterator_d* nonnull %ui) #7, !dbg !3365
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call259, metadata !3234, metadata !DIExpression()), !dbg !3273
  br label %for.cond232, !dbg !3365, !llvm.loop !3383

for.end260:                                       ; preds = %cleanup, %for.cond232
  %fail.2 = phi i8 [ %fail.1, %cleanup ], [ %fail.0, %for.cond232 ], !dbg !3363
  call void @llvm.dbg.value(metadata i8 %fail.2, metadata !3225, metadata !DIExpression()), !dbg !3273
  %tobool261 = icmp eq i8 %fail.2, 0, !dbg !3385
  br i1 %tobool261, label %if.end263, label %cleanup274, !dbg !3387

if.end263:                                        ; preds = %for.end260
  call void @gimple_replace_lhs(%union.gimple_statement_d* %32, %union.tree_node* %call184) #6, !dbg !3388
  call fastcc void @gimple_call_set_fndecl(%union.gimple_statement_d* %32, %union.tree_node* nonnull %call227) #7, !dbg !3389
  call fastcc void @update_stmt(%union.gimple_statement_d* %32) #7, !dbg !3390
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %ui, metadata !3226, metadata !DIExpression(DW_OP_deref)), !dbg !3273
  %call264 = call fastcc %union.gimple_statement_d* @first_imm_use_stmt(%struct.immediate_use_iterator_d* nonnull %ui, %union.tree_node* %call184) #7, !dbg !3391
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call264, metadata !3212, metadata !DIExpression()), !dbg !3328
  br label %for.cond265, !dbg !3391

for.cond265:                                      ; preds = %for.body269, %if.end263
  %stmt174.0 = phi %union.gimple_statement_d* [ %call264, %if.end263 ], [ %call272, %for.body269 ], !dbg !3393
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt174.0, metadata !3212, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %ui, metadata !3226, metadata !DIExpression(DW_OP_deref)), !dbg !3273
  %call266 = call fastcc zeroext i8 @end_imm_use_stmt_p(%struct.immediate_use_iterator_d* nonnull %ui) #7, !dbg !3394
  %tobool267 = icmp eq i8 %call266, 0, !dbg !3394
  br i1 %tobool267, label %for.body269, label %cleanup274.loopexit, !dbg !3391

for.body269:                                      ; preds = %for.cond265
  call fastcc void @gimple_assign_set_rhs_code(%union.gimple_statement_d* %stmt174.0, i32 65) #7, !dbg !3396
  %call270 = call zeroext i8 @fold_stmt_inplace(%union.gimple_statement_d* %stmt174.0) #6, !dbg !3398
  call fastcc void @update_stmt(%union.gimple_statement_d* %stmt174.0) #7, !dbg !3399
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %ui, metadata !3226, metadata !DIExpression(DW_OP_deref)), !dbg !3273
  %call272 = call fastcc %union.gimple_statement_d* @next_imm_use_stmt(%struct.immediate_use_iterator_d* nonnull %ui) #7, !dbg !3394
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call272, metadata !3212, metadata !DIExpression()), !dbg !3328
  br label %for.cond265, !dbg !3394, !llvm.loop !3400

cleanup274.loopexit:                              ; preds = %for.cond265
  br label %cleanup274, !dbg !3402

cleanup274:                                       ; preds = %cleanup274.loopexit, %for.end260, %if.then215
  %cleanup.dest.slot.1 = phi i32 [ 16, %if.then215 ], [ 16, %for.end260 ], [ 0, %cleanup274.loopexit ]
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %18) #8, !dbg !3402
  %cond1 = icmp eq i32 %cleanup.dest.slot.1, 0
  br i1 %cond1, label %if.end281, label %cleanup282

if.end281:                                        ; preds = %land.lhs.true199, %land.lhs.true196, %if.end192, %cleanup274, %lor.lhs.false207
  br label %cleanup282, !dbg !3403

cleanup282:                                       ; preds = %if.then183, %cleanup274, %if.end281
  %cleanup.dest.slot.2 = phi i32 [ %cleanup.dest.slot.1, %cleanup274 ], [ 0, %if.end281 ], [ 16, %if.then183 ]
  %cond = icmp eq i32 %cleanup.dest.slot.2, 0
  br i1 %cond, label %if.end286, label %cleanup287

if.end286:                                        ; preds = %for.body173, %cleanup282, %land.lhs.true179
  br label %cleanup287, !dbg !3404

cleanup287:                                       ; preds = %cleanup282, %if.end286
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3196, metadata !DIExpression(DW_OP_deref)), !dbg !3268
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !3405
  br label %for.cond169, !dbg !3406, !llvm.loop !3407

cleanup293.loopexit:                              ; preds = %for.cond169
  br label %cleanup293, !dbg !3409

cleanup293:                                       ; preds = %cleanup293.loopexit, %for.end163
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %14) #8, !dbg !3409
  %.pre19 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3274
  %cfg45.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre19, i64 0, i32 1, !dbg !3410
  %.pre20 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg45.phi.trans.insert, align 8, !dbg !3274
  br label %for.cond43, !dbg !3274, !llvm.loop !3411

for.end300:                                       ; preds = %for.cond43
  call void @free_dominance_info(i32 1) #6, !dbg !3413
  call void @free_dominance_info(i32 2) #6, !dbg !3414
  %35 = load %struct.alloc_pool_def*, %struct.alloc_pool_def** @occ_pool, align 8, !dbg !3415
  call void @free_alloc_pool(%struct.alloc_pool_def* %35) #6, !dbg !3416
  ret i32 0, !dbg !3417
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_cse_sincos() #5 !dbg !3418 {
entry:
  %0 = load i32, i32* @linux_uclibc, align 4, !dbg !3419
  %and = and i32 %0, 1, !dbg !3419
  %cmp = icmp eq i32 %and, 0, !dbg !3419
  br i1 %cmp, label %land.rhs, label %lor.lhs.false, !dbg !3420

lor.lhs.false:                                    ; preds = %entry
  br i1 false, label %lor.lhs.false.land.rhs_crit_edge, label %land.end, !dbg !3421

lor.lhs.false.land.rhs_crit_edge:                 ; preds = %lor.lhs.false
  br label %land.rhs, !dbg !3421

land.rhs:                                         ; preds = %lor.lhs.false.land.rhs_crit_edge, %entry
  %1 = load i32, i32* @optimize, align 4, !dbg !3422
  %tobool = icmp ne i32 %1, 0, !dbg !3421
  %phitmp = zext i1 %tobool to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false
  %2 = phi i8 [ 0, %lor.lhs.false ], [ %phitmp, %land.rhs ]
  ret i8 %2, !dbg !3423
}

; Function Attrs: nounwind uwtable
define internal i32 @execute_cse_sincos() #5 !dbg !3424 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  tail call void @calculate_dominance_info(i32 1) #6, !dbg !3439
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3440
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !3440
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3440
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 0, !dbg !3440
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3440
  %3 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !3441
  %4 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !3442
  br label %for.cond, !dbg !3440

for.cond:                                         ; preds = %for.end, %entry
  %5 = phi %struct.control_flow_graph* [ %1, %entry ], [ %.pre2, %for.end ], !dbg !3443
  %.pn = phi %struct.basic_block_def* [ %2, %entry ], [ %bb.0, %for.end ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !3444
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3444
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3426, metadata !DIExpression()), !dbg !3445
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 1, !dbg !3443
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3443
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %6, !dbg !3443
  br i1 %cmp, label %for.end28, label %for.body, !dbg !3440

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #8, !dbg !3446
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #8, !dbg !3447
  call fastcc void @gsi_after_labels(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb.0) #7, !dbg !3447
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* nonnull align 8 %4, i64 24, i1 false), !dbg !3447
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #8, !dbg !3447
  br label %for.cond3, !dbg !3448

for.cond3:                                        ; preds = %for.inc, %for.body
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3427, metadata !DIExpression(DW_OP_deref)), !dbg !3441
  %call = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3449
  %tobool = icmp eq i8 %call, 0, !dbg !3450
  br i1 %tobool, label %for.body4, label %for.end, !dbg !3451

for.body4:                                        ; preds = %for.cond3
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3427, metadata !DIExpression(DW_OP_deref)), !dbg !3441
  %call5 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3452
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call5, metadata !3431, metadata !DIExpression()), !dbg !3453
  %call6 = call fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %call5) #7, !dbg !3454
  %tobool7 = icmp eq i8 %call6, 0, !dbg !3454
  br i1 %tobool7, label %for.inc, label %land.lhs.true, !dbg !3455

land.lhs.true:                                    ; preds = %for.body4
  %call8 = call fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %call5) #7, !dbg !3456
  %tobool9 = icmp eq %union.tree_node* %call8, null, !dbg !3456
  br i1 %tobool9, label %for.inc, label %land.lhs.true10, !dbg !3457

land.lhs.true10:                                  ; preds = %land.lhs.true
  %call11 = call fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %call5) #7, !dbg !3458
  call void @llvm.dbg.value(metadata %union.tree_node* %call11, metadata !3435, metadata !DIExpression()), !dbg !3453
  %tobool12 = icmp eq %union.tree_node* %call11, null, !dbg !3459
  br i1 %tobool12, label %for.inc, label %land.lhs.true13, !dbg !3460

land.lhs.true13:                                  ; preds = %land.lhs.true10
  %built_in_class = getelementptr inbounds %union.tree_node, %union.tree_node* %call11, i64 0, i32 0, i32 5, !dbg !3461
  %bf.load = load i32, i32* %built_in_class, align 8, !dbg !3461
  %bf.clear = and i32 %bf.load, 6144, !dbg !3461
  %cmp14 = icmp eq i32 %bf.clear, 6144, !dbg !3462
  br i1 %cmp14, label %if.then, label %for.inc, !dbg !3463

if.then:                                          ; preds = %land.lhs.true13
  %bf.clear18 = and i32 %bf.load, 2047, !dbg !3464
  switch i32 %bf.clear18, label %for.inc [
    i32 30, label %sw.bb
    i32 31, label %sw.bb
    i32 35, label %sw.bb
    i32 219, label %sw.bb
    i32 223, label %sw.bb
    i32 227, label %sw.bb
    i32 285, label %sw.bb
    i32 286, label %sw.bb
    i32 287, label %sw.bb
  ], !dbg !3465

sw.bb:                                            ; preds = %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then
  %call19 = call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %call5, i32 0) #7, !dbg !3466
  call void @llvm.dbg.value(metadata %union.tree_node* %call19, metadata !3436, metadata !DIExpression()), !dbg !3468
  %7 = getelementptr inbounds %union.tree_node, %union.tree_node* %call19, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3469
  %bf.load20 = load i64, i64* %7, align 8, !dbg !3469
  %bf.cast1 = and i64 %bf.load20, 65535, !dbg !3471
  %cmp22 = icmp eq i64 %bf.cast1, 141, !dbg !3471
  br i1 %cmp22, label %if.then24, label %for.inc, !dbg !3472

if.then24:                                        ; preds = %sw.bb
  call fastcc void @execute_cse_sincos_1(%union.tree_node* %call19) #7, !dbg !3473
  br label %for.inc, !dbg !3473

for.inc:                                          ; preds = %land.lhs.true10, %land.lhs.true, %for.body4, %land.lhs.true13, %if.then, %sw.bb, %if.then24
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3427, metadata !DIExpression(DW_OP_deref)), !dbg !3441
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !3474
  br label %for.cond3, !dbg !3475, !llvm.loop !3476

for.end:                                          ; preds = %for.cond3
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #8, !dbg !3478
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3443
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !3479
  %.pre2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !3443
  br label %for.cond, !dbg !3443, !llvm.loop !3480

for.end28:                                        ; preds = %for.cond
  call void @free_dominance_info(i32 1) #6, !dbg !3482
  ret i32 0, !dbg !3483
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_optimize_bswap() #5 !dbg !3484 {
entry:
  %0 = load i32, i32* @flag_expensive_optimizations, align 4, !dbg !3485
  %tobool = icmp ne i32 %0, 0, !dbg !3485
  %1 = load i32, i32* @optimize, align 4, !dbg !3486
  %tobool1 = icmp ne i32 %1, 0, !dbg !3486
  %2 = and i1 %tobool1, %tobool, !dbg !3486
  %conv = zext i1 %2 to i8, !dbg !3485
  ret i8 %conv, !dbg !3487
}

; Function Attrs: nounwind uwtable
define internal i32 @execute_optimize_bswap() #5 !dbg !3488 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata i8 0, metadata !3493, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !3494, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !3495, metadata !DIExpression()), !dbg !3522
  %0 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([721 x %union.tree_node*], [721 x %union.tree_node*]* @built_in_decls, i64 0, i64 419), align 8, !dbg !3523
  %tobool = icmp ne %union.tree_node* %0, null, !dbg !3523
  %1 = load i32, i32* getelementptr inbounds ([159 x %struct.optab_d], [159 x %struct.optab_d]* @optab_table, i64 0, i64 68, i32 4, i64 16, i32 0), align 16, !dbg !3524
  %cmp = icmp ne i32 %1, 2956, !dbg !3524
  %2 = and i1 %cmp, %tobool, !dbg !3524
  call void @llvm.dbg.value(metadata i1 %2, metadata !3491, metadata !DIExpression()), !dbg !3522
  %3 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([721 x %union.tree_node*], [721 x %union.tree_node*]* @built_in_decls, i64 0, i64 420), align 16, !dbg !3525
  %tobool1 = icmp eq %union.tree_node* %3, null, !dbg !3525
  br i1 %tobool1, label %land.end12, label %land.rhs2, !dbg !3526

land.rhs2:                                        ; preds = %entry
  %4 = load i32, i32* getelementptr inbounds ([159 x %struct.optab_d], [159 x %struct.optab_d]* @optab_table, i64 0, i64 68, i32 4, i64 17, i32 0), align 4, !dbg !3527
  %cmp3 = icmp eq i32 %4, 2956, !dbg !3528
  br i1 %cmp3, label %lor.rhs, label %land.end12, !dbg !3529

lor.rhs:                                          ; preds = %land.rhs2
  %5 = load i32, i32* @word_mode, align 4, !dbg !3530
  %cmp8 = icmp eq i32 %5, 16, !dbg !3530
  %6 = and i1 %2, %cmp8, !dbg !3530
  br label %land.end12, !dbg !3530

land.end12:                                       ; preds = %land.rhs2, %entry, %lor.rhs
  %7 = phi i1 [ false, %entry ], [ true, %land.rhs2 ], [ %6, %lor.rhs ]
  %or.cond = or i1 %2, %7, !dbg !3531
  br i1 %or.cond, label %if.end, label %cleanup103, !dbg !3531

if.end:                                           ; preds = %land.end12
  br i1 %2, label %if.then18, label %if.end20, !dbg !3533

if.then18:                                        ; preds = %if.end
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3534
  %8 = bitcast %union.tree_node** %type to %struct.tree_type**, !dbg !3534
  %9 = load %struct.tree_type*, %struct.tree_type** %8, align 8, !dbg !3534
  %values = getelementptr inbounds %struct.tree_type, %struct.tree_type* %9, i64 0, i32 1, !dbg !3534
  %10 = bitcast %union.tree_node** %values to %struct.tree_list**, !dbg !3534
  %11 = load %struct.tree_list*, %struct.tree_list** %10, align 8, !dbg !3534
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %11, i64 0, i32 2, !dbg !3534
  %12 = load %union.tree_node*, %union.tree_node** %value, align 8, !dbg !3534
  call void @llvm.dbg.value(metadata %union.tree_node* %12, metadata !3494, metadata !DIExpression()), !dbg !3522
  br label %if.end20, !dbg !3535

if.end20:                                         ; preds = %if.then18, %if.end
  %bswap32_type.0 = phi %union.tree_node* [ %12, %if.then18 ], [ null, %if.end ], !dbg !3522
  call void @llvm.dbg.value(metadata %union.tree_node* %bswap32_type.0, metadata !3494, metadata !DIExpression()), !dbg !3522
  br i1 %7, label %if.then22, label %if.end30, !dbg !3536

if.then22:                                        ; preds = %if.end20
  %type25 = getelementptr inbounds %union.tree_node, %union.tree_node* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3537
  %13 = bitcast %union.tree_node** %type25 to %struct.tree_type**, !dbg !3537
  %14 = load %struct.tree_type*, %struct.tree_type** %13, align 8, !dbg !3537
  %values27 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %14, i64 0, i32 1, !dbg !3537
  %15 = bitcast %union.tree_node** %values27 to %struct.tree_list**, !dbg !3537
  %16 = load %struct.tree_list*, %struct.tree_list** %15, align 8, !dbg !3537
  %value29 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %16, i64 0, i32 2, !dbg !3537
  %17 = load %union.tree_node*, %union.tree_node** %value29, align 8, !dbg !3537
  call void @llvm.dbg.value(metadata %union.tree_node* %17, metadata !3495, metadata !DIExpression()), !dbg !3522
  br label %if.end30, !dbg !3538

if.end30:                                         ; preds = %if.then22, %if.end20
  %bswap64_type.0 = phi %union.tree_node* [ %17, %if.then22 ], [ null, %if.end20 ], !dbg !3522
  call void @llvm.dbg.value(metadata %union.tree_node* %bswap64_type.0, metadata !3495, metadata !DIExpression()), !dbg !3522
  %18 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3539
  %cfg = getelementptr inbounds %struct.function, %struct.function* %18, i64 0, i32 1, !dbg !3539
  %19 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3539
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %19, i64 0, i32 0, !dbg !3539
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3539
  %21 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !3540
  %22 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !3541
  br label %for.cond, !dbg !3539

for.cond:                                         ; preds = %for.end, %if.end30
  %23 = phi %struct.control_flow_graph* [ %19, %if.end30 ], [ %.pre5, %for.end ], !dbg !3542
  %bswap_type.0 = phi %union.tree_node* [ undef, %if.end30 ], [ %bswap_type.1.lcssa, %for.end ]
  %changed.0 = phi i8 [ 0, %if.end30 ], [ %changed.1.lcssa, %for.end ], !dbg !3543
  %.pn = phi %struct.basic_block_def* [ %20, %if.end30 ], [ %bb.0, %for.end ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !3544
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3544
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3490, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i8 %changed.0, metadata !3493, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata %union.tree_node* %bswap_type.0, metadata !3511, metadata !DIExpression()), !dbg !3545
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %23, i64 0, i32 1, !dbg !3542
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3542
  %cmp33 = icmp eq %struct.basic_block_def* %bb.0, %24, !dbg !3542
  br i1 %cmp33, label %for.end100, label %for.body, !dbg !3539

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %21) #8, !dbg !3546
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %22) #8, !dbg !3547
  call fastcc void @gsi_after_labels(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb.0) #7, !dbg !3547
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %21, i8* nonnull align 8 %22, i64 24, i1 false), !dbg !3547
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %22) #8, !dbg !3547
  br label %for.cond35, !dbg !3548

for.cond35:                                       ; preds = %cleanup, %for.body
  %bswap_type.1 = phi %union.tree_node* [ %bswap_type.0, %for.body ], [ %bswap_type.5, %cleanup ]
  %changed.1 = phi i8 [ %changed.0, %for.body ], [ %changed.2, %cleanup ], !dbg !3543
  call void @llvm.dbg.value(metadata i8 %changed.1, metadata !3493, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata %union.tree_node* %bswap_type.1, metadata !3511, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3502, metadata !DIExpression(DW_OP_deref)), !dbg !3540
  %call = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3549
  %tobool36 = icmp eq i8 %call, 0, !dbg !3550
  br i1 %tobool36, label %for.body37, label %for.end, !dbg !3551

for.body37:                                       ; preds = %for.cond35
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3502, metadata !DIExpression(DW_OP_deref)), !dbg !3540
  %call38 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3552
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call38, metadata !3506, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !3513, metadata !DIExpression()), !dbg !3545
  %call41 = call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %call38) #7, !dbg !3553
  %tobool42 = icmp eq i8 %call41, 0, !dbg !3553
  br i1 %tobool42, label %cleanup, label %lor.lhs.false, !dbg !3555

lor.lhs.false:                                    ; preds = %for.body37
  %call43 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %call38) #7, !dbg !3556
  %cmp44 = icmp eq i32 %call43, 87, !dbg !3557
  br i1 %cmp44, label %if.end47, label %cleanup, !dbg !3558

if.end47:                                         ; preds = %lor.lhs.false
  %call48 = call fastcc %union.tree_node* @gimple_expr_type(%union.gimple_statement_d* %call38) #7, !dbg !3559
  %type49 = bitcast %union.tree_node* %call48 to %struct.tree_type*, !dbg !3559
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type49, i64 0, i32 6, !dbg !3559
  %bf.load = load i32, i32* %precision, align 4, !dbg !3559
  %bf.clear = and i32 %bf.load, 1023, !dbg !3559
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !3514, metadata !DIExpression()), !dbg !3545
  switch i32 %bf.clear, label %cleanup [
    i32 32, label %sw.bb
    i32 64, label %sw.bb53
  ], !dbg !3560

sw.bb:                                            ; preds = %if.end47
  %25 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([721 x %union.tree_node*], [721 x %union.tree_node*]* @built_in_decls, i64 0, i64 419), align 8, !dbg !3561
  %spec.select = select i1 %2, %union.tree_node* %bswap32_type.0, %union.tree_node* %bswap_type.1, !dbg !3565
  %spec.select1 = select i1 %2, %union.tree_node* %25, %union.tree_node* null, !dbg !3565
  call void @llvm.dbg.value(metadata %union.tree_node* %spec.select1, metadata !3513, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata %union.tree_node* %spec.select, metadata !3511, metadata !DIExpression()), !dbg !3545
  br label %sw.epilog, !dbg !3566

sw.bb53:                                          ; preds = %if.end47
  %26 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([721 x %union.tree_node*], [721 x %union.tree_node*]* @built_in_decls, i64 0, i64 420), align 16, !dbg !3567
  %spec.select2 = select i1 %7, %union.tree_node* %bswap64_type.0, %union.tree_node* %bswap_type.1, !dbg !3570
  %spec.select3 = select i1 %7, %union.tree_node* %26, %union.tree_node* null, !dbg !3570
  call void @llvm.dbg.value(metadata %union.tree_node* %spec.select3, metadata !3513, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata %union.tree_node* %spec.select2, metadata !3511, metadata !DIExpression()), !dbg !3545
  br label %sw.epilog, !dbg !3571

sw.epilog:                                        ; preds = %sw.bb53, %sw.bb
  %bswap_type.4 = phi %union.tree_node* [ %spec.select2, %sw.bb53 ], [ %spec.select, %sw.bb ], !dbg !3572
  %fndecl39.2 = phi %union.tree_node* [ %spec.select3, %sw.bb53 ], [ %spec.select1, %sw.bb ], !dbg !3572
  call void @llvm.dbg.value(metadata %union.tree_node* %fndecl39.2, metadata !3513, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata %union.tree_node* %bswap_type.4, metadata !3511, metadata !DIExpression()), !dbg !3545
  %tobool57 = icmp eq %union.tree_node* %fndecl39.2, null, !dbg !3573
  br i1 %tobool57, label %cleanup, label %if.end59, !dbg !3575

if.end59:                                         ; preds = %sw.epilog
  %call60 = call fastcc %union.tree_node* @find_bswap(%union.gimple_statement_d* %call38) #7, !dbg !3576
  call void @llvm.dbg.value(metadata %union.tree_node* %call60, metadata !3510, metadata !DIExpression()), !dbg !3545
  %tobool61 = icmp eq %union.tree_node* %call60, null, !dbg !3577
  br i1 %tobool61, label %cleanup, label %if.end63, !dbg !3579

if.end63:                                         ; preds = %if.end59
  call void @llvm.dbg.value(metadata i8 1, metadata !3493, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata %union.tree_node* %call60, metadata !3512, metadata !DIExpression()), !dbg !3545
  %type65 = getelementptr inbounds %union.tree_node, %union.tree_node* %call60, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3580
  %27 = load %union.tree_node*, %union.tree_node** %type65, align 8, !dbg !3580
  %call66 = call zeroext i8 @useless_type_conversion_p(%union.tree_node* %27, %union.tree_node* %bswap_type.4) #6, !dbg !3581
  %tobool67 = icmp eq i8 %call66, 0, !dbg !3581
  br i1 %tobool67, label %if.then68, label %if.end73, !dbg !3582

if.then68:                                        ; preds = %if.end63
  %call69 = call %union.tree_node* @create_tmp_var(%union.tree_node* %bswap_type.4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !3583
  call void @llvm.dbg.value(metadata %union.tree_node* %call69, metadata !3512, metadata !DIExpression()), !dbg !3545
  %call70 = call zeroext i8 @add_referenced_var(%union.tree_node* %call69) #6, !dbg !3584
  %call71 = call fastcc %union.tree_node* @make_ssa_name(%union.tree_node* %call69, %union.gimple_statement_d* null) #7, !dbg !3585
  call void @llvm.dbg.value(metadata %union.tree_node* %call71, metadata !3512, metadata !DIExpression()), !dbg !3545
  %call72 = call %union.gimple_statement_d* @gimple_build_assign_with_ops_stat(i32 113, %union.tree_node* %call71, %union.tree_node* nonnull %call60, %union.tree_node* null) #6, !dbg !3586
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call72, metadata !3516, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3502, metadata !DIExpression(DW_OP_deref)), !dbg !3540
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call72, i32 1) #6, !dbg !3588
  br label %if.end73, !dbg !3589

if.end73:                                         ; preds = %if.end63, %if.then68
  %bswap_tmp.0 = phi %union.tree_node* [ %call60, %if.end63 ], [ %call71, %if.then68 ], !dbg !3545
  call void @llvm.dbg.value(metadata %union.tree_node* %bswap_tmp.0, metadata !3512, metadata !DIExpression()), !dbg !3545
  %call74 = call %union.gimple_statement_d* (%union.tree_node*, i32, ...) @gimple_build_call(%union.tree_node* nonnull %fndecl39.2, i32 1, %union.tree_node* %bswap_tmp.0) #6, !dbg !3590
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call74, metadata !3515, metadata !DIExpression()), !dbg !3545
  %call75 = call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %call38) #7, !dbg !3591
  call void @llvm.dbg.value(metadata %union.tree_node* %call75, metadata !3512, metadata !DIExpression()), !dbg !3545
  %type77 = getelementptr inbounds %union.tree_node, %union.tree_node* %call75, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3592
  %28 = load %union.tree_node*, %union.tree_node** %type77, align 8, !dbg !3592
  %call78 = call zeroext i8 @useless_type_conversion_p(%union.tree_node* %28, %union.tree_node* %bswap_type.4) #6, !dbg !3593
  %tobool79 = icmp eq i8 %call78, 0, !dbg !3593
  br i1 %tobool79, label %if.then80, label %if.end87, !dbg !3594

if.then80:                                        ; preds = %if.end73
  %call82 = call %union.tree_node* @create_tmp_var(%union.tree_node* %bswap_type.4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !3595
  call void @llvm.dbg.value(metadata %union.tree_node* %call82, metadata !3512, metadata !DIExpression()), !dbg !3545
  %call83 = call zeroext i8 @add_referenced_var(%union.tree_node* %call82) #6, !dbg !3596
  %call84 = call fastcc %union.tree_node* @make_ssa_name(%union.tree_node* %call82, %union.gimple_statement_d* null) #7, !dbg !3597
  call void @llvm.dbg.value(metadata %union.tree_node* %call84, metadata !3512, metadata !DIExpression()), !dbg !3545
  %call85 = call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %call38) #7, !dbg !3598
  %call86 = call %union.gimple_statement_d* @gimple_build_assign_with_ops_stat(i32 113, %union.tree_node* %call85, %union.tree_node* %call84, %union.tree_node* null) #6, !dbg !3598
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call86, metadata !3519, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3502, metadata !DIExpression(DW_OP_deref)), !dbg !3540
  call void @gsi_insert_after(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call86, i32 1) #6, !dbg !3600
  br label %if.end87, !dbg !3601

if.end87:                                         ; preds = %if.end73, %if.then80
  %bswap_tmp.1 = phi %union.tree_node* [ %call75, %if.end73 ], [ %call84, %if.then80 ], !dbg !3545
  call void @llvm.dbg.value(metadata %union.tree_node* %bswap_tmp.1, metadata !3512, metadata !DIExpression()), !dbg !3545
  call fastcc void @gimple_call_set_lhs(%union.gimple_statement_d* %call74, %union.tree_node* %bswap_tmp.1) #7, !dbg !3602
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3603
  %tobool88 = icmp eq %struct._IO_FILE* %29, null, !dbg !3603
  br i1 %tobool88, label %if.end91, label %if.then89, !dbg !3605

if.then89:                                        ; preds = %if.end87
  %call90 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i32 %bf.clear) #6, !dbg !3606
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3608
  call void @print_gimple_stmt(%struct._IO_FILE* %30, %union.gimple_statement_d* %call38, i32 0, i32 0) #6, !dbg !3609
  br label %if.end91, !dbg !3610

if.end91:                                         ; preds = %if.end87, %if.then89
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3502, metadata !DIExpression(DW_OP_deref)), !dbg !3540
  call void @gsi_insert_after(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call74, i32 1) #6, !dbg !3611
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3502, metadata !DIExpression(DW_OP_deref)), !dbg !3540
  call void @gsi_remove(%struct.gimple_stmt_iterator* nonnull %gsi, i8 zeroext 1) #6, !dbg !3612
  br label %cleanup, !dbg !3613

cleanup:                                          ; preds = %if.end59, %sw.epilog, %lor.lhs.false, %for.body37, %if.end47, %if.end91
  %bswap_type.5 = phi %union.tree_node* [ %bswap_type.4, %if.end91 ], [ %bswap_type.1, %lor.lhs.false ], [ %bswap_type.1, %for.body37 ], [ %bswap_type.1, %if.end47 ], [ %bswap_type.4, %sw.epilog ], [ %bswap_type.4, %if.end59 ]
  %changed.2 = phi i8 [ 1, %if.end91 ], [ %changed.1, %lor.lhs.false ], [ %changed.1, %for.body37 ], [ %changed.1, %if.end47 ], [ %changed.1, %sw.epilog ], [ %changed.1, %if.end59 ], !dbg !3522
  call void @llvm.dbg.value(metadata i8 %changed.2, metadata !3493, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata %union.tree_node* %bswap_type.5, metadata !3511, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3502, metadata !DIExpression(DW_OP_deref)), !dbg !3540
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !3614
  br label %for.cond35, !dbg !3615, !llvm.loop !3616

for.end:                                          ; preds = %for.cond35
  %bswap_type.1.lcssa = phi %union.tree_node* [ %bswap_type.1, %for.cond35 ]
  %changed.1.lcssa = phi i8 [ %changed.1, %for.cond35 ], !dbg !3543
  call void @llvm.dbg.value(metadata %union.tree_node* %bswap_type.1.lcssa, metadata !3511, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i8 %changed.1.lcssa, metadata !3493, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata %union.tree_node* %bswap_type.1.lcssa, metadata !3511, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i8 %changed.1.lcssa, metadata !3493, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata %union.tree_node* %bswap_type.1.lcssa, metadata !3511, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i8 %changed.1.lcssa, metadata !3493, metadata !DIExpression()), !dbg !3522
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %21) #8, !dbg !3618
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3542
  %cfg32.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !3619
  %.pre5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg32.phi.trans.insert, align 8, !dbg !3542
  br label %for.cond, !dbg !3542, !llvm.loop !3620

for.end100:                                       ; preds = %for.cond
  %changed.0.lcssa = phi i8 [ %changed.0, %for.cond ], !dbg !3543
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !3493, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !3493, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !3493, metadata !DIExpression()), !dbg !3522
  %tobool102 = icmp eq i8 %changed.0.lcssa, 0, !dbg !3622
  %cond = select i1 %tobool102, i32 0, i32 2069, !dbg !3622
  br label %cleanup103, !dbg !3623

cleanup103:                                       ; preds = %land.end12, %for.end100
  %retval.0 = phi i32 [ %cond, %for.end100 ], [ 0, %land.end12 ], !dbg !3522
  ret i32 %retval.0, !dbg !3624
}

declare dso_local %struct.alloc_pool_def* @create_alloc_pool(i8*, i64, i64) local_unnamed_addr #2

declare dso_local void @calculate_dominance_info(i32) local_unnamed_addr #2

declare dso_local %union.tree_node* @gimple_default_def(%struct.function*, %union.tree_node*) local_unnamed_addr #2

declare dso_local zeroext i8 @is_gimple_reg(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @execute_cse_reciprocals_1(%struct.gimple_stmt_iterator* %def_gsi, %union.tree_node* %def) unnamed_addr #5 !dbg !3625 {
entry:
  %use_iter = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %def_gsi, metadata !3630, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata %union.tree_node* %def, metadata !3631, metadata !DIExpression()), !dbg !3644
  %0 = bitcast %struct.immediate_use_iterator_d* %use_iter to i8*, !dbg !3645
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #8, !dbg !3645
  call void @llvm.dbg.value(metadata i32 0, metadata !3635, metadata !DIExpression()), !dbg !3644
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %def, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3646
  %1 = bitcast %union.tree_node** %type to i64**, !dbg !3646
  %2 = load i64*, i64** %1, align 8, !dbg !3646
  %bf.load = load i64, i64* %2, align 8, !dbg !3646
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3646
  %cmp = icmp eq i64 %bf.cast1, 9, !dbg !3646
  br i1 %cmp, label %land.lhs.true25, label %lor.lhs.false, !dbg !3646

lor.lhs.false:                                    ; preds = %entry
  %cmp7 = icmp eq i64 %bf.cast1, 13, !dbg !3646
  br i1 %cmp7, label %land.lhs.true, label %lor.lhs.false8, !dbg !3646

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %cmp15 = icmp eq i64 %bf.cast1, 14, !dbg !3646
  br i1 %cmp15, label %land.lhs.true, label %cond.true, !dbg !3646

land.lhs.true:                                    ; preds = %lor.lhs.false8, %lor.lhs.false
  %type19 = getelementptr inbounds i64, i64* %2, i64 2, !dbg !3646
  %3 = bitcast i64* %type19 to i64**, !dbg !3646
  %4 = load i64*, i64** %3, align 8, !dbg !3646
  %bf.load21 = load i64, i64* %4, align 8, !dbg !3646
  %bf.cast235 = and i64 %bf.load21, 65535, !dbg !3646
  %cmp24 = icmp eq i64 %bf.cast235, 9, !dbg !3646
  br i1 %cmp24, label %land.lhs.true25, label %cond.true, !dbg !3646

land.lhs.true25:                                  ; preds = %land.lhs.true, %entry
  %call = tail call zeroext i8 @is_gimple_reg(%union.tree_node* %def) #6, !dbg !3646
  %tobool = icmp eq i8 %call, 0, !dbg !3646
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3646

cond.true:                                        ; preds = %land.lhs.true25, %land.lhs.true, %lor.lhs.false8
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 411, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !3646
  br label %cond.end, !dbg !3646

cond.end:                                         ; preds = %land.lhs.true25, %cond.true
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %use_iter, metadata !3633, metadata !DIExpression(DW_OP_deref)), !dbg !3644
  %call26 = call fastcc %struct.ssa_use_operand_d* @first_readonly_imm_use(%struct.immediate_use_iterator_d* nonnull %use_iter, %union.tree_node* %def) #7, !dbg !3647
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call26, metadata !3632, metadata !DIExpression()), !dbg !3644
  br label %for.cond, !dbg !3647

for.cond:                                         ; preds = %for.inc, %cond.end
  %use_p.0 = phi %struct.ssa_use_operand_d* [ %call26, %cond.end ], [ %call32, %for.inc ], !dbg !3648
  %count.0 = phi i32 [ 0, %cond.end ], [ %count.1, %for.inc ], !dbg !3644
  call void @llvm.dbg.value(metadata i32 %count.0, metadata !3635, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p.0, metadata !3632, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %use_iter, metadata !3633, metadata !DIExpression(DW_OP_deref)), !dbg !3644
  %call27 = call fastcc zeroext i8 @end_readonly_imm_use_p(%struct.immediate_use_iterator_d* nonnull %use_iter) #7, !dbg !3649
  %tobool28 = icmp eq i8 %call27, 0, !dbg !3649
  br i1 %tobool28, label %for.body, label %for.end, !dbg !3647

for.body:                                         ; preds = %for.cond
  %stmt = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use_p.0, i64 0, i32 2, i32 0, !dbg !3650
  %5 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !3650
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %5, metadata !3637, metadata !DIExpression()), !dbg !3651
  %call29 = call fastcc zeroext i8 @is_division_by(%union.gimple_statement_d* %5, %union.tree_node* %def) #7, !dbg !3652
  %tobool30 = icmp eq i8 %call29, 0, !dbg !3652
  br i1 %tobool30, label %for.inc, label %if.then, !dbg !3654

if.then:                                          ; preds = %for.body
  %call31 = call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %5) #7, !dbg !3655
  call fastcc void @register_division_in(%struct.basic_block_def* %call31) #7, !dbg !3657
  %inc = add nsw i32 %count.0, 1, !dbg !3658
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3635, metadata !DIExpression()), !dbg !3644
  br label %for.inc, !dbg !3659

for.inc:                                          ; preds = %for.body, %if.then
  %count.1 = phi i32 [ %inc, %if.then ], [ %count.0, %for.body ], !dbg !3644
  call void @llvm.dbg.value(metadata i32 %count.1, metadata !3635, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %use_iter, metadata !3633, metadata !DIExpression(DW_OP_deref)), !dbg !3644
  %call32 = call fastcc %struct.ssa_use_operand_d* @next_readonly_imm_use(%struct.immediate_use_iterator_d* nonnull %use_iter) #7, !dbg !3649
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call32, metadata !3632, metadata !DIExpression()), !dbg !3644
  br label %for.cond, !dbg !3649, !llvm.loop !3660

for.end:                                          ; preds = %for.cond
  %count.0.lcssa = phi i32 [ %count.0, %for.cond ], !dbg !3644
  call void @llvm.dbg.value(metadata i32 %count.0.lcssa, metadata !3635, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 %count.0.lcssa, metadata !3635, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i32 %count.0.lcssa, metadata !3635, metadata !DIExpression()), !dbg !3644
  %6 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 54), align 8, !dbg !3662
  %7 = load i64*, i64** %1, align 8, !dbg !3663
  %bf.load36 = load i64, i64* %7, align 8, !dbg !3663
  %bf.cast384 = and i64 %bf.load36, 65535, !dbg !3663
  %cmp39 = icmp eq i64 %bf.cast384, 14, !dbg !3663
  br i1 %cmp39, label %cond.true41, label %cond.false45, !dbg !3663

cond.true41:                                      ; preds = %for.end
  %.cast = bitcast i64* %7 to %union.tree_node*, !dbg !3663
  %call44 = call i32 @vector_type_mode(%union.tree_node* %.cast) #6, !dbg !3663
  br label %cond.end51, !dbg !3663

cond.false45:                                     ; preds = %for.end
  %type48 = bitcast i64* %7 to %struct.tree_type*, !dbg !3663
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type48, i64 0, i32 6, !dbg !3663
  %bf.load49 = load i32, i32* %mode, align 4, !dbg !3663
  %bf.lshr = lshr i32 %bf.load49, 16, !dbg !3663
  %bf.clear50 = and i32 %bf.lshr, 255, !dbg !3663
  br label %cond.end51, !dbg !3663

cond.end51:                                       ; preds = %cond.false45, %cond.true41
  %cond52 = phi i32 [ %call44, %cond.true41 ], [ %bf.clear50, %cond.false45 ], !dbg !3663
  %call53 = call i32 %6(i32 %cond52) #6, !dbg !3664
  call void @llvm.dbg.value(metadata i32 %call53, metadata !3636, metadata !DIExpression()), !dbg !3644
  %cmp54 = icmp slt i32 %count.0.lcssa, %call53, !dbg !3665
  br i1 %cmp54, label %if.end85, label %if.then56, !dbg !3666

if.then56:                                        ; preds = %cond.end51
  br label %for.cond58, !dbg !3667

for.cond58:                                       ; preds = %for.body60, %if.then56
  %occ.0.in = phi %struct.occurrence** [ @occ_head, %if.then56 ], [ %next, %for.body60 ]
  %occ.0 = load %struct.occurrence*, %struct.occurrence** %occ.0.in, align 8, !dbg !3669
  call void @llvm.dbg.value(metadata %struct.occurrence* %occ.0, metadata !3634, metadata !DIExpression()), !dbg !3644
  %tobool59 = icmp eq %struct.occurrence* %occ.0, null, !dbg !3670
  br i1 %tobool59, label %for.end62, label %for.body60, !dbg !3670

for.body60:                                       ; preds = %for.cond58
  call fastcc void @compute_merit(%struct.occurrence* nonnull %occ.0) #7, !dbg !3671
  call fastcc void @insert_reciprocals(%struct.gimple_stmt_iterator* %def_gsi, %struct.occurrence* nonnull %occ.0, %union.tree_node* %def, %union.tree_node* null, i32 %call53) #7, !dbg !3674
  %next = getelementptr inbounds %struct.occurrence, %struct.occurrence* %occ.0, i64 0, i32 4, !dbg !3675
  br label %for.cond58, !dbg !3676, !llvm.loop !3677

for.end62:                                        ; preds = %for.cond58
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %use_iter, metadata !3633, metadata !DIExpression(DW_OP_deref)), !dbg !3644
  %call63 = call fastcc %union.gimple_statement_d* @first_imm_use_stmt(%struct.immediate_use_iterator_d* nonnull %use_iter, %union.tree_node* %def) #7, !dbg !3679
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call63, metadata !3641, metadata !DIExpression()), !dbg !3681
  br label %for.cond64, !dbg !3679

for.cond64:                                       ; preds = %for.inc82, %for.end62
  %use_stmt57.0 = phi %union.gimple_statement_d* [ %call63, %for.end62 ], [ %call83, %for.inc82 ], !dbg !3682
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %use_stmt57.0, metadata !3641, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %use_iter, metadata !3633, metadata !DIExpression(DW_OP_deref)), !dbg !3644
  %call65 = call fastcc zeroext i8 @end_imm_use_stmt_p(%struct.immediate_use_iterator_d* nonnull %use_iter) #7, !dbg !3683
  %tobool66 = icmp eq i8 %call65, 0, !dbg !3683
  br i1 %tobool66, label %for.body68, label %if.end85.loopexit, !dbg !3679

for.body68:                                       ; preds = %for.cond64
  %call69 = call fastcc zeroext i8 @is_division_by(%union.gimple_statement_d* %use_stmt57.0, %union.tree_node* %def) #7, !dbg !3685
  %tobool70 = icmp eq i8 %call69, 0, !dbg !3685
  br i1 %tobool70, label %for.inc82, label %if.then71, !dbg !3688

if.then71:                                        ; preds = %for.body68
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %use_iter, metadata !3633, metadata !DIExpression(DW_OP_deref)), !dbg !3644
  %call72 = call fastcc %struct.ssa_use_operand_d* @first_imm_use_on_stmt(%struct.immediate_use_iterator_d* nonnull %use_iter) #7, !dbg !3689
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call72, metadata !3632, metadata !DIExpression()), !dbg !3644
  br label %for.cond73, !dbg !3689

for.cond73:                                       ; preds = %for.body77, %if.then71
  %use_p.1 = phi %struct.ssa_use_operand_d* [ %call72, %if.then71 ], [ %call79, %for.body77 ], !dbg !3692
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p.1, metadata !3632, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %use_iter, metadata !3633, metadata !DIExpression(DW_OP_deref)), !dbg !3644
  %call74 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(%struct.immediate_use_iterator_d* nonnull %use_iter) #7, !dbg !3693
  %tobool75 = icmp eq i8 %call74, 0, !dbg !3693
  br i1 %tobool75, label %for.body77, label %for.inc82.loopexit, !dbg !3689

for.body77:                                       ; preds = %for.cond73
  call fastcc void @replace_reciprocal(%struct.ssa_use_operand_d* %use_p.1) #7, !dbg !3695
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %use_iter, metadata !3633, metadata !DIExpression(DW_OP_deref)), !dbg !3644
  %call79 = call fastcc %struct.ssa_use_operand_d* @next_imm_use_on_stmt(%struct.immediate_use_iterator_d* nonnull %use_iter) #7, !dbg !3693
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call79, metadata !3632, metadata !DIExpression()), !dbg !3644
  br label %for.cond73, !dbg !3693, !llvm.loop !3696

for.inc82.loopexit:                               ; preds = %for.cond73
  br label %for.inc82, !dbg !3683

for.inc82:                                        ; preds = %for.inc82.loopexit, %for.body68
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %use_iter, metadata !3633, metadata !DIExpression(DW_OP_deref)), !dbg !3644
  %call83 = call fastcc %union.gimple_statement_d* @next_imm_use_stmt(%struct.immediate_use_iterator_d* nonnull %use_iter) #7, !dbg !3683
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call83, metadata !3641, metadata !DIExpression()), !dbg !3681
  br label %for.cond64, !dbg !3683, !llvm.loop !3698

if.end85.loopexit:                                ; preds = %for.cond64
  br label %if.end85, !dbg !3700

if.end85:                                         ; preds = %if.end85.loopexit, %cond.end51
  %8 = load %struct.occurrence*, %struct.occurrence** @occ_head, align 8, !dbg !3700
  call void @llvm.dbg.value(metadata %struct.occurrence* %8, metadata !3634, metadata !DIExpression()), !dbg !3644
  br label %for.cond86, !dbg !3702

for.cond86:                                       ; preds = %for.body88, %if.end85
  %occ.1 = phi %struct.occurrence* [ %8, %if.end85 ], [ %call89, %for.body88 ], !dbg !3703
  call void @llvm.dbg.value(metadata %struct.occurrence* %occ.1, metadata !3634, metadata !DIExpression()), !dbg !3644
  %tobool87 = icmp eq %struct.occurrence* %occ.1, null, !dbg !3704
  br i1 %tobool87, label %for.end90, label %for.body88, !dbg !3704

for.body88:                                       ; preds = %for.cond86
  %call89 = call fastcc %struct.occurrence* @free_bb(%struct.occurrence* nonnull %occ.1) #7, !dbg !3705
  call void @llvm.dbg.value(metadata %struct.occurrence* %call89, metadata !3634, metadata !DIExpression()), !dbg !3644
  br label %for.cond86, !dbg !3707, !llvm.loop !3708

for.end90:                                        ; preds = %for.cond86
  store %struct.occurrence* null, %struct.occurrence** @occ_head, align 8, !dbg !3710
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #8, !dbg !3711
  ret void, !dbg !3711
}

declare dso_local void @gsi_start_phis(%struct.gimple_stmt_iterator* sret, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !3712 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !3716, metadata !DIExpression()), !dbg !3717
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3718
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3718
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !3719
  %conv1 = zext i1 %cmp to i8, !dbg !3720
  ret i8 %conv1, !dbg !3721
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !3722 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !3726, metadata !DIExpression()), !dbg !3727
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3728
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3728
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !3729
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !3729
  ret %union.gimple_statement_d* %1, !dbg !3730
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %def) unnamed_addr #0 !dbg !3731 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %def, metadata !3737, metadata !DIExpression()), !dbg !3738
  %0 = load %union.tree_node*, %union.tree_node** %def, align 8, !dbg !3739
  ret %union.tree_node* %0, !dbg !3740
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_phi_result_ptr(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3741 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3745, metadata !DIExpression()), !dbg !3746
  %result = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 3, !dbg !3747
  ret %union.tree_node** %result, !dbg !3748
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !3749 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3753, metadata !DIExpression()), !dbg !3754
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3755
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3755
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !3756
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !3756
  %2 = load i64, i64* %1, align 8, !dbg !3756
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !3757
  store i64 %2, i64* %3, align 8, !dbg !3757
  ret void, !dbg !3758
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_after_labels(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3759 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3763, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !3764, metadata !DIExpression()), !dbg !3766
  tail call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* sret %agg.result, %struct.basic_block_def* %bb) #7, !dbg !3767
  br label %while.cond, !dbg !3768

while.cond:                                       ; preds = %while.body, %entry
  %call = tail call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %agg.result) #7, !dbg !3769
  %tobool = icmp eq i8 %call, 0, !dbg !3769
  br i1 %tobool, label %land.rhs, label %while.end, !dbg !3770

land.rhs:                                         ; preds = %while.cond
  %call1 = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %agg.result) #7, !dbg !3771
  %call2 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %call1) #7, !dbg !3772
  %cmp = icmp eq i32 %call2, 4, !dbg !3773
  br i1 %cmp, label %while.body, label %while.end, !dbg !3768

while.body:                                       ; preds = %land.rhs
  tail call fastcc void @gsi_next(%struct.gimple_stmt_iterator* %agg.result) #7, !dbg !3774
  br label %while.cond, !dbg !3768, !llvm.loop !3775

while.end:                                        ; preds = %while.cond, %land.rhs
  ret void, !dbg !3777
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_lhs(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !3778 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3782, metadata !DIExpression()), !dbg !3783
  %call = tail call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %stmt) #7, !dbg !3784
  %tobool = icmp eq i8 %call, 0, !dbg !3784
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !3785

lor.rhs:                                          ; preds = %entry
  %call1 = tail call fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %stmt) #7, !dbg !3786
  %tobool3 = icmp eq i8 %call1, 0, !dbg !3786
  br i1 %tobool3, label %lor.end, label %land.rhs, !dbg !3787

land.rhs:                                         ; preds = %lor.rhs
  %call4 = tail call fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %stmt) #7, !dbg !3788
  %cmp = icmp ne %union.tree_node* %call4, null, !dbg !3789
  %phitmp = zext i1 %cmp to i8
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry, %land.rhs
  %0 = phi i8 [ 1, %entry ], [ 0, %lor.rhs ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !3790
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @single_ssa_tree_operand(%union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !3791 {
entry:
  %iter = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3795, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i32 2, metadata !3796, metadata !DIExpression()), !dbg !3811
  %0 = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %iter, i64 0, i32 0, !dbg !3812
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #8, !dbg !3812
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !3798, metadata !DIExpression(DW_OP_deref)), !dbg !3811
  %call = call fastcc %union.tree_node* @op_iter_init_tree(%struct.ssa_operand_iterator_d* nonnull %iter, %union.gimple_statement_d* %stmt, i32 2) #7, !dbg !3813
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3797, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !3798, metadata !DIExpression(DW_OP_deref)), !dbg !3811
  %call1 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !3814
  %tobool = icmp eq i8 %call1, 0, !dbg !3814
  br i1 %tobool, label %if.end, label %cleanup, !dbg !3816

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !3798, metadata !DIExpression(DW_OP_deref)), !dbg !3811
  %call2 = call fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !3817
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !3798, metadata !DIExpression(DW_OP_deref)), !dbg !3811
  %call3 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !3818
  %tobool4 = icmp eq i8 %call3, 0, !dbg !3818
  %call. = select i1 %tobool4, %union.tree_node* null, %union.tree_node* %call, !dbg !3811
  br label %cleanup, !dbg !3811

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %union.tree_node* [ null, %entry ], [ %call., %if.end ], !dbg !3811
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #8, !dbg !3820
  ret %union.tree_node* %retval.0, !dbg !3820
}

declare dso_local zeroext i8 @optimize_bb_for_size_p(%struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3821 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3826, metadata !DIExpression()), !dbg !3827
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !3828
  %cmp = icmp eq i32 %call, 6, !dbg !3829
  %conv1 = zext i1 %cmp to i8, !dbg !3828
  ret i8 %conv1, !dbg !3830
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3831 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3835, metadata !DIExpression()), !dbg !3837
  %call = tail call fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %gs) #7, !dbg !3838
  call void @llvm.dbg.value(metadata i32 %call, metadata !3836, metadata !DIExpression()), !dbg !3837
  %call1 = tail call fastcc i32 @get_gimple_rhs_class(i32 %call) #7, !dbg !3839
  %cmp = icmp eq i32 %call1, 3, !dbg !3841
  br i1 %cmp, label %if.then, label %if.end, !dbg !3842

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) #7, !dbg !3843
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3843
  %bf.load = load i64, i64* %0, align 8, !dbg !3843
  %1 = trunc i64 %bf.load to i32, !dbg !3843
  %bf.cast = and i32 %1, 65535, !dbg !3843
  call void @llvm.dbg.value(metadata i32 %bf.cast, metadata !3836, metadata !DIExpression()), !dbg !3837
  br label %if.end, !dbg !3844

if.end:                                           ; preds = %if.then, %entry
  %code.0 = phi i32 [ %bf.cast, %if.then ], [ %call, %entry ], !dbg !3837
  call void @llvm.dbg.value(metadata i32 %code.0, metadata !3836, metadata !DIExpression()), !dbg !3837
  ret i32 %code.0, !dbg !3845
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3846 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3850, metadata !DIExpression()), !dbg !3851
  %call = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) #7, !dbg !3852
  %cmp = icmp ugt i32 %call, 2, !dbg !3854
  br i1 %cmp, label %if.then, label %return, !dbg !3855

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 2) #7, !dbg !3856
  br label %return, !dbg !3857

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %call1, %if.then ], [ null, %entry ], !dbg !3858
  ret %union.tree_node* %retval.0, !dbg !3859
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3860 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3862, metadata !DIExpression()), !dbg !3863
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !3864
  %cmp = icmp eq i32 %call, 8, !dbg !3865
  %conv1 = zext i1 %cmp to i8, !dbg !3864
  ret i8 %conv1, !dbg !3866
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3867 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3869, metadata !DIExpression()), !dbg !3870
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #7, !dbg !3871
  ret %union.tree_node* %call, !dbg !3872
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3873 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3875, metadata !DIExpression()), !dbg !3877
  %call = tail call fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) #7, !dbg !3878
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3876, metadata !DIExpression()), !dbg !3877
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3879
  %bf.load = load i64, i64* %0, align 8, !dbg !3879
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3881
  %cmp = icmp eq i64 %bf.cast1, 121, !dbg !3881
  br i1 %cmp, label %if.then, label %cleanup, !dbg !3882

if.then:                                          ; preds = %entry
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3883
  %1 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !3883
  br label %cleanup, !dbg !3884

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %1, %if.then ], [ null, %entry ], !dbg !3877
  ret %union.tree_node* %retval.0, !dbg !3885
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @first_readonly_imm_use(%struct.immediate_use_iterator_d* %imm, %union.tree_node* %var) unnamed_addr #0 !dbg !3886 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !3891, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3892, metadata !DIExpression()), !dbg !3893
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3894
  %end_p = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 1, !dbg !3895
  %0 = bitcast %struct.ssa_use_operand_d** %end_p to i40**, !dbg !3896
  store i40* %imm_uses, i40** %0, align 8, !dbg !3896
  %next = getelementptr inbounds i40, i40* %imm_uses, i64 1, !dbg !3897
  %1 = bitcast i40* %next to i64*, !dbg !3897
  %2 = load i64, i64* %1, align 8, !dbg !3897
  %3 = bitcast %struct.immediate_use_iterator_d* %imm to i64*, !dbg !3898
  store i64 %2, i64* %3, align 8, !dbg !3898
  %call = tail call fastcc zeroext i8 @end_readonly_imm_use_p(%struct.immediate_use_iterator_d* %imm) #7, !dbg !3899
  %tobool = icmp eq i8 %call, 0, !dbg !3899
  br i1 %tobool, label %if.end, label %return, !dbg !3901

if.end:                                           ; preds = %entry
  %imm_use2 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !3902
  %4 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use2, align 8, !dbg !3902
  br label %return, !dbg !3903

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.ssa_use_operand_d* [ %4, %if.end ], [ null, %entry ], !dbg !3893
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !3904
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @end_readonly_imm_use_p(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !3905 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !3911, metadata !DIExpression()), !dbg !3912
  %imm_use = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !3913
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use, align 8, !dbg !3913
  %end_p = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 1, !dbg !3914
  %1 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %end_p, align 8, !dbg !3914
  %cmp = icmp eq %struct.ssa_use_operand_d* %0, %1, !dbg !3915
  %conv1 = zext i1 %cmp to i8, !dbg !3916
  ret i8 %conv1, !dbg !3917
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3918 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3920, metadata !DIExpression()), !dbg !3921
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !3922
  %cmp = icmp eq i32 %call, 2, !dbg !3923
  %conv1 = zext i1 %cmp to i8, !dbg !3922
  ret i8 %conv1, !dbg !3924
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3925 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3927, metadata !DIExpression()), !dbg !3928
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #7, !dbg !3929
  ret %union.tree_node* %call, !dbg !3930
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @next_readonly_imm_use(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !3931 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !3935, metadata !DIExpression()), !dbg !3937
  %imm_use = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !3938
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use, align 8, !dbg !3938
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %0, metadata !3936, metadata !DIExpression()), !dbg !3937
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %0, i64 0, i32 1, !dbg !3939
  %1 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !3939
  %2 = load i64, i64* %1, align 8, !dbg !3939
  %3 = bitcast %struct.immediate_use_iterator_d* %imm to i64*, !dbg !3940
  store i64 %2, i64* %3, align 8, !dbg !3940
  %call = tail call fastcc zeroext i8 @end_readonly_imm_use_p(%struct.immediate_use_iterator_d* %imm) #7, !dbg !3941
  %tobool = icmp eq i8 %call, 0, !dbg !3941
  br i1 %tobool, label %if.end, label %cleanup, !dbg !3943

if.end:                                           ; preds = %entry
  %4 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use, align 8, !dbg !3944
  br label %cleanup, !dbg !3945

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.ssa_use_operand_d* [ %4, %if.end ], [ null, %entry ], !dbg !3937
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !3946
}

declare dso_local void @gimple_replace_lhs(%union.gimple_statement_d*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_call_set_fndecl(%union.gimple_statement_d* %gs, %union.tree_node* %decl) unnamed_addr #0 !dbg !3947 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3951, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !3952, metadata !DIExpression()), !dbg !3953
  %call = tail call fastcc i32 @gimple_location(%union.gimple_statement_d* %gs) #7, !dbg !3954
  %call1 = tail call %union.tree_node* @build_fold_addr_expr_loc(i32 %call, %union.tree_node* %decl) #6, !dbg !3955
  tail call fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 1, %union.tree_node* %call1) #7, !dbg !3956
  ret void, !dbg !3957
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @update_stmt(%union.gimple_statement_d* %s) unnamed_addr #0 !dbg !3958 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %s, metadata !3962, metadata !DIExpression()), !dbg !3963
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %s) #7, !dbg !3964
  %tobool = icmp eq i8 %call, 0, !dbg !3964
  br i1 %tobool, label %if.end, label %if.then, !dbg !3966

if.then:                                          ; preds = %entry
  tail call void @gimple_set_modified(%union.gimple_statement_d* %s, i8 zeroext 1) #6, !dbg !3967
  tail call void @update_stmt_operands(%union.gimple_statement_d* %s) #6, !dbg !3969
  br label %if.end, !dbg !3970

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !3971
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @first_imm_use_stmt(%struct.immediate_use_iterator_d* %imm, %union.tree_node* %var) unnamed_addr #0 !dbg !3972 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !3976, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3977, metadata !DIExpression()), !dbg !3978
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3979
  %end_p = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 1, !dbg !3980
  %0 = bitcast %struct.ssa_use_operand_d** %end_p to i40**, !dbg !3981
  store i40* %imm_uses, i40** %0, align 8, !dbg !3981
  %next = getelementptr inbounds i40, i40* %imm_uses, i64 1, !dbg !3982
  %1 = bitcast i40* %next to i64*, !dbg !3982
  %2 = load i64, i64* %1, align 8, !dbg !3982
  %3 = bitcast %struct.immediate_use_iterator_d* %imm to i64*, !dbg !3983
  store i64 %2, i64* %3, align 8, !dbg !3983
  %next_imm_name = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 3, !dbg !3984
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %next_imm_name, align 8, !dbg !3985
  %prev = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 0, !dbg !3986
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %prev, align 8, !dbg !3987
  %next3 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 1, !dbg !3988
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %next3, align 8, !dbg !3989
  %stmt = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 2, i32 0, !dbg !3990
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %stmt, align 8, !dbg !3991
  %use = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 3, !dbg !3992
  store %union.tree_node** null, %union.tree_node*** %use, align 8, !dbg !3993
  %call = tail call fastcc zeroext i8 @end_imm_use_stmt_p(%struct.immediate_use_iterator_d* %imm) #7, !dbg !3994
  %tobool = icmp eq i8 %call, 0, !dbg !3994
  br i1 %tobool, label %if.end, label %return, !dbg !3996

if.end:                                           ; preds = %entry
  %imm_use6 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !3997
  %4 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use6, align 8, !dbg !3997
  tail call fastcc void @link_use_stmts_after(%struct.ssa_use_operand_d* %4, %struct.immediate_use_iterator_d* %imm) #7, !dbg !3998
  %5 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use6, align 8, !dbg !3999
  %stmt9 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %5, i64 0, i32 2, i32 0, !dbg !3999
  %6 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt9, align 8, !dbg !3999
  br label %return, !dbg !4000

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.gimple_statement_d* [ %6, %if.end ], [ null, %entry ], !dbg !3978
  ret %union.gimple_statement_d* %retval.0, !dbg !4001
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @end_imm_use_stmt_p(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !4002 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !4004, metadata !DIExpression()), !dbg !4005
  %imm_use = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !4006
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use, align 8, !dbg !4006
  %end_p = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 1, !dbg !4007
  %1 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %end_p, align 8, !dbg !4007
  %cmp = icmp eq %struct.ssa_use_operand_d* %0, %1, !dbg !4008
  %conv1 = zext i1 %cmp to i8, !dbg !4009
  ret i8 %conv1, !dbg !4010
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_assign_set_rhs_code(%union.gimple_statement_d* %s, i32 %code) unnamed_addr #0 !dbg !4011 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %s, metadata !4015, metadata !DIExpression()), !dbg !4017
  call void @llvm.dbg.value(metadata i32 65, metadata !4016, metadata !DIExpression()), !dbg !4017
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %s, i64 0, i32 0, i32 0, i32 0, !dbg !4018
  %bf.load = load i32, i32* %0, align 8, !dbg !4019
  %bf.clear = and i32 %bf.load, 65535, !dbg !4019
  %bf.set = or i32 %bf.clear, 4259840, !dbg !4019
  store i32 %bf.set, i32* %0, align 8, !dbg !4019
  ret void, !dbg !4020
}

declare dso_local zeroext i8 @fold_stmt_inplace(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @next_imm_use_stmt(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !4021 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !4025, metadata !DIExpression()), !dbg !4026
  %next = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 1, !dbg !4027
  %0 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !4027
  %1 = load i64, i64* %0, align 8, !dbg !4027
  %2 = bitcast %struct.immediate_use_iterator_d* %imm to i64*, !dbg !4028
  store i64 %1, i64* %2, align 8, !dbg !4028
  %call = tail call fastcc zeroext i8 @end_imm_use_stmt_p(%struct.immediate_use_iterator_d* %imm) #7, !dbg !4029
  %tobool = icmp eq i8 %call, 0, !dbg !4029
  br i1 %tobool, label %if.end4, label %if.then, !dbg !4031

if.then:                                          ; preds = %entry
  %prev = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 0, !dbg !4032
  %3 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %prev, align 8, !dbg !4032
  %cmp = icmp eq %struct.ssa_use_operand_d* %3, null, !dbg !4035
  br i1 %cmp, label %return, label %if.then2, !dbg !4036

if.then2:                                         ; preds = %if.then
  %iter_node3 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, !dbg !4037
  tail call fastcc void @delink_imm_use(%struct.ssa_use_operand_d* nonnull %iter_node3) #7, !dbg !4038
  br label %return, !dbg !4038

if.end4:                                          ; preds = %entry
  %imm_use5 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !4039
  %4 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use5, align 8, !dbg !4039
  tail call fastcc void @link_use_stmts_after(%struct.ssa_use_operand_d* %4, %struct.immediate_use_iterator_d* %imm) #7, !dbg !4040
  %5 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use5, align 8, !dbg !4041
  %stmt = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %5, i64 0, i32 2, i32 0, !dbg !4041
  %6 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !4041
  br label %return, !dbg !4042

return:                                           ; preds = %if.then, %if.then2, %if.end4
  %retval.0 = phi %union.gimple_statement_d* [ %6, %if.end4 ], [ null, %if.then2 ], [ null, %if.then ], !dbg !4026
  ret %union.gimple_statement_d* %retval.0, !dbg !4043
}

declare dso_local void @free_dominance_info(i32) local_unnamed_addr #2

declare dso_local void @free_alloc_pool(%struct.alloc_pool_def*) local_unnamed_addr #2

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_division_by(%union.gimple_statement_d* %use_stmt, %union.tree_node* %def) unnamed_addr #0 !dbg !4044 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %use_stmt, metadata !4048, metadata !DIExpression()), !dbg !4050
  call void @llvm.dbg.value(metadata %union.tree_node* %def, metadata !4049, metadata !DIExpression()), !dbg !4050
  %call = tail call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %use_stmt) #7, !dbg !4051
  %tobool = icmp eq i8 %call, 0, !dbg !4051
  br i1 %tobool, label %land.end, label %land.lhs.true, !dbg !4052

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %use_stmt) #7, !dbg !4053
  %cmp = icmp eq i32 %call1, 75, !dbg !4054
  br i1 %cmp, label %land.lhs.true3, label %land.end, !dbg !4055

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call4 = tail call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %use_stmt) #7, !dbg !4056
  %cmp5 = icmp eq %union.tree_node* %call4, %def, !dbg !4057
  br i1 %cmp5, label %land.rhs, label %land.end, !dbg !4058

land.rhs:                                         ; preds = %land.lhs.true3
  %call7 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %use_stmt) #7, !dbg !4059
  %cmp8 = icmp ne %union.tree_node* %call7, %def, !dbg !4060
  %phitmp = zext i1 %cmp8 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs, %land.lhs.true3, %land.lhs.true
  %0 = phi i8 [ 0, %land.lhs.true3 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !4061
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @register_division_in(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4062 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4066, metadata !DIExpression()), !dbg !4068
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 2, !dbg !4069
  %0 = bitcast i8** %aux to %struct.occurrence**, !dbg !4069
  %1 = load %struct.occurrence*, %struct.occurrence** %0, align 8, !dbg !4069
  call void @llvm.dbg.value(metadata %struct.occurrence* %1, metadata !4067, metadata !DIExpression()), !dbg !4068
  %tobool = icmp eq %struct.occurrence* %1, null, !dbg !4070
  br i1 %tobool, label %if.then, label %if.end, !dbg !4072

if.then:                                          ; preds = %entry
  %call = tail call fastcc %struct.occurrence* @occ_new(%struct.basic_block_def* %bb, %struct.occurrence* null) #7, !dbg !4073
  call void @llvm.dbg.value(metadata %struct.occurrence* %call, metadata !4067, metadata !DIExpression()), !dbg !4068
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4075
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !4075
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4075
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 0, !dbg !4075
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !4075
  tail call fastcc void @insert_bb(%struct.occurrence* %call, %struct.basic_block_def* %4, %struct.occurrence** nonnull @occ_head) #7, !dbg !4076
  br label %if.end, !dbg !4077

if.end:                                           ; preds = %entry, %if.then
  %occ.0 = phi %struct.occurrence* [ %1, %entry ], [ %call, %if.then ], !dbg !4068
  call void @llvm.dbg.value(metadata %struct.occurrence* %occ.0, metadata !4067, metadata !DIExpression()), !dbg !4068
  %bb_has_division = getelementptr inbounds %struct.occurrence, %struct.occurrence* %occ.0, i64 0, i32 6, !dbg !4078
  store i8 1, i8* %bb_has_division, align 4, !dbg !4079
  %num_divisions = getelementptr inbounds %struct.occurrence, %struct.occurrence* %occ.0, i64 0, i32 5, !dbg !4080
  %5 = load i32, i32* %num_divisions, align 8, !dbg !4081
  %inc = add nsw i32 %5, 1, !dbg !4081
  store i32 %inc, i32* %num_divisions, align 8, !dbg !4081
  ret void, !dbg !4082
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4083 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4087, metadata !DIExpression()), !dbg !4088
  %bb = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 4, !dbg !4089
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !4089
  ret %struct.basic_block_def* %0, !dbg !4090
}

declare dso_local i32 @vector_type_mode(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @compute_merit(%struct.occurrence* %occ) unnamed_addr #5 !dbg !4091 {
entry:
  call void @llvm.dbg.value(metadata %struct.occurrence* %occ, metadata !4095, metadata !DIExpression()), !dbg !4102
  %bb = getelementptr inbounds %struct.occurrence, %struct.occurrence* %occ, i64 0, i32 0, !dbg !4103
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !4103
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %0, metadata !4097, metadata !DIExpression()), !dbg !4102
  %children = getelementptr inbounds %struct.occurrence, %struct.occurrence* %occ, i64 0, i32 3, !dbg !4104
  %num_divisions11 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %occ, i64 0, i32 5, !dbg !4105
  br label %for.cond, !dbg !4107

for.cond:                                         ; preds = %for.inc, %entry
  %occ_child.0.in = phi %struct.occurrence** [ %children, %entry ], [ %next, %for.inc ]
  %occ_child.0 = load %struct.occurrence*, %struct.occurrence** %occ_child.0.in, align 8, !dbg !4108
  call void @llvm.dbg.value(metadata %struct.occurrence* %occ_child.0, metadata !4096, metadata !DIExpression()), !dbg !4102
  %tobool = icmp eq %struct.occurrence* %occ_child.0, null, !dbg !4109
  br i1 %tobool, label %for.end, label %for.body, !dbg !4109

for.body:                                         ; preds = %for.cond
  %children2 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %occ_child.0, i64 0, i32 3, !dbg !4110
  %1 = load %struct.occurrence*, %struct.occurrence** %children2, align 8, !dbg !4110
  %tobool3 = icmp eq %struct.occurrence* %1, null, !dbg !4112
  br i1 %tobool3, label %if.end, label %if.then, !dbg !4113

if.then:                                          ; preds = %for.body
  tail call fastcc void @compute_merit(%struct.occurrence* nonnull %occ_child.0) #7, !dbg !4114
  br label %if.end, !dbg !4114

if.end:                                           ; preds = %for.body, %if.then
  %2 = load i32, i32* @flag_exceptions, align 4, !dbg !4115
  %tobool4 = icmp eq i32 %2, 0, !dbg !4115
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4117

if.then5:                                         ; preds = %if.end
  %call = tail call %struct.basic_block_def* @single_noncomplex_succ(%struct.basic_block_def* %0) #6, !dbg !4118
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !4098, metadata !DIExpression()), !dbg !4119
  br label %if.end6, !dbg !4120

if.end6:                                          ; preds = %if.end, %if.then5
  %bb1.0 = phi %struct.basic_block_def* [ %call, %if.then5 ], [ %0, %if.end ], !dbg !4121
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb1.0, metadata !4098, metadata !DIExpression()), !dbg !4119
  %bb7 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %occ_child.0, i64 0, i32 0, !dbg !4122
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %bb7, align 8, !dbg !4122
  %call8 = tail call zeroext i8 @dominated_by_p(i32 2, %struct.basic_block_def* %bb1.0, %struct.basic_block_def* %3) #6, !dbg !4123
  %tobool9 = icmp eq i8 %call8, 0, !dbg !4123
  br i1 %tobool9, label %for.inc, label %if.then10, !dbg !4124

if.then10:                                        ; preds = %if.end6
  %num_divisions = getelementptr inbounds %struct.occurrence, %struct.occurrence* %occ_child.0, i64 0, i32 5, !dbg !4125
  %4 = load i32, i32* %num_divisions, align 8, !dbg !4125
  %5 = load i32, i32* %num_divisions11, align 8, !dbg !4126
  %add = add nsw i32 %5, %4, !dbg !4126
  store i32 %add, i32* %num_divisions11, align 8, !dbg !4126
  br label %for.inc, !dbg !4127

for.inc:                                          ; preds = %if.end6, %if.then10
  %next = getelementptr inbounds %struct.occurrence, %struct.occurrence* %occ_child.0, i64 0, i32 4, !dbg !4128
  br label %for.cond, !dbg !4129, !llvm.loop !4130

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4132
}

; Function Attrs: nounwind uwtable
define internal fastcc void @insert_reciprocals(%struct.gimple_stmt_iterator* %def_gsi, %struct.occurrence* %occ, %union.tree_node* %def, %union.tree_node* %recip_def, i32 %threshold) unnamed_addr #5 !dbg !4133 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %tmp24 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %def_gsi, metadata !4137, metadata !DIExpression()), !dbg !4146
  call void @llvm.dbg.value(metadata %struct.occurrence* %occ, metadata !4138, metadata !DIExpression()), !dbg !4146
  call void @llvm.dbg.value(metadata %union.tree_node* %def, metadata !4139, metadata !DIExpression()), !dbg !4146
  call void @llvm.dbg.value(metadata %union.tree_node* %recip_def, metadata !4140, metadata !DIExpression()), !dbg !4146
  call void @llvm.dbg.value(metadata i32 %threshold, metadata !4141, metadata !DIExpression()), !dbg !4146
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !4147
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !4147
  %tobool = icmp eq %union.tree_node* %recip_def, null, !dbg !4148
  br i1 %tobool, label %land.lhs.true, label %if.end27, !dbg !4150

land.lhs.true:                                    ; preds = %entry
  %bb_has_division = getelementptr inbounds %struct.occurrence, %struct.occurrence* %occ, i64 0, i32 6, !dbg !4151
  %1 = load i8, i8* %bb_has_division, align 4, !dbg !4151
  %tobool1 = icmp eq i8 %1, 0, !dbg !4152
  %2 = load i32, i32* @flag_trapping_math, align 4, !dbg !4153
  %tobool2 = icmp ne i32 %2, 0, !dbg !4153
  %or.cond = and i1 %tobool1, %tobool2, !dbg !4154
  br i1 %or.cond, label %if.end27, label %land.lhs.true3, !dbg !4154

land.lhs.true3:                                   ; preds = %land.lhs.true
  %num_divisions = getelementptr inbounds %struct.occurrence, %struct.occurrence* %occ, i64 0, i32 5, !dbg !4155
  %3 = load i32, i32* %num_divisions, align 8, !dbg !4155
  %cmp = icmp slt i32 %3, %threshold, !dbg !4156
  br i1 %cmp, label %if.end27, label %if.then, !dbg !4157

if.then:                                          ; preds = %land.lhs.true3
  %type5 = getelementptr inbounds %union.tree_node, %union.tree_node* %def, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4158
  %4 = load %union.tree_node*, %union.tree_node** %type5, align 8, !dbg !4158
  call void @llvm.dbg.value(metadata %union.tree_node* %4, metadata !4142, metadata !DIExpression()), !dbg !4146
  %call = tail call %union.tree_node* @make_rename_temp(%union.tree_node* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !4160
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4140, metadata !DIExpression()), !dbg !4146
  %call6 = tail call %union.tree_node* @build_one_cst(%union.tree_node* %4) #6, !dbg !4161
  %call7 = tail call %union.gimple_statement_d* @gimple_build_assign_with_ops_stat(i32 75, %union.tree_node* %call, %union.tree_node* %call6, %union.tree_node* %def) #6, !dbg !4161
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call7, metadata !4143, metadata !DIExpression()), !dbg !4146
  %5 = load i8, i8* %bb_has_division, align 4, !dbg !4162
  %tobool9 = icmp eq i8 %5, 0, !dbg !4164
  br i1 %tobool9, label %if.else, label %if.then10, !dbg !4165

if.then10:                                        ; preds = %if.then
  %6 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !4166
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #8, !dbg !4166
  %bb = getelementptr inbounds %struct.occurrence, %struct.occurrence* %occ, i64 0, i32 0, !dbg !4168
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !4168
  call fastcc void @gsi_after_labels(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %7) #7, !dbg !4166
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %6, i64 24, i1 false), !dbg !4166
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #8, !dbg !4166
  br label %while.cond, !dbg !4169

while.cond:                                       ; preds = %while.body, %if.then10
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4144, metadata !DIExpression(DW_OP_deref)), !dbg !4146
  %call11 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !4170
  %tobool12 = icmp eq i8 %call11, 0, !dbg !4170
  br i1 %tobool12, label %land.rhs, label %while.end, !dbg !4171

land.rhs:                                         ; preds = %while.cond
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4144, metadata !DIExpression(DW_OP_deref)), !dbg !4146
  %call13 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !4172
  %call14 = call fastcc zeroext i8 @is_division_by(%union.gimple_statement_d* %call13, %union.tree_node* %def) #7, !dbg !4173
  %tobool15 = icmp eq i8 %call14, 0, !dbg !4174
  br i1 %tobool15, label %while.body, label %while.end, !dbg !4169

while.body:                                       ; preds = %land.rhs
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4144, metadata !DIExpression(DW_OP_deref)), !dbg !4146
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !4175
  br label %while.cond, !dbg !4169, !llvm.loop !4176

while.end:                                        ; preds = %while.cond, %land.rhs
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4144, metadata !DIExpression(DW_OP_deref)), !dbg !4146
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call7, i32 1) #6, !dbg !4178
  br label %if.end26, !dbg !4179

if.else:                                          ; preds = %if.then
  %tobool16 = icmp eq %struct.gimple_stmt_iterator* %def_gsi, null, !dbg !4180
  br i1 %tobool16, label %if.else.if.else23_crit_edge, label %land.lhs.true17, !dbg !4182

if.else.if.else23_crit_edge:                      ; preds = %if.else
  %bb25.phi.trans.insert = getelementptr inbounds %struct.occurrence, %struct.occurrence* %occ, i64 0, i32 0, !dbg !4183
  %.pre = load %struct.basic_block_def*, %struct.basic_block_def** %bb25.phi.trans.insert, align 8, !dbg !4185
  br label %if.else23, !dbg !4182

land.lhs.true17:                                  ; preds = %if.else
  %bb18 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %occ, i64 0, i32 0, !dbg !4186
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %bb18, align 8, !dbg !4186
  %bb19 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %def_gsi, i64 0, i32 2, !dbg !4187
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %bb19, align 8, !dbg !4187
  %cmp20 = icmp eq %struct.basic_block_def* %8, %9, !dbg !4188
  br i1 %cmp20, label %if.then22, label %if.else23, !dbg !4189

if.then22:                                        ; preds = %land.lhs.true17
  tail call void @gsi_insert_after(%struct.gimple_stmt_iterator* nonnull %def_gsi, %union.gimple_statement_d* %call7, i32 0) #6, !dbg !4190
  br label %if.end26, !dbg !4192

if.else23:                                        ; preds = %if.else.if.else23_crit_edge, %land.lhs.true17
  %10 = phi %struct.basic_block_def* [ %.pre, %if.else.if.else23_crit_edge ], [ %8, %land.lhs.true17 ], !dbg !4185
  %11 = bitcast %struct.gimple_stmt_iterator* %tmp24 to i8*, !dbg !4193
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %11) #8, !dbg !4193
  call fastcc void @gsi_after_labels(%struct.gimple_stmt_iterator* nonnull sret %tmp24, %struct.basic_block_def* %10) #7, !dbg !4193
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %11, i64 24, i1 false), !dbg !4193
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11) #8, !dbg !4193
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4144, metadata !DIExpression(DW_OP_deref)), !dbg !4146
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call7, i32 1) #6, !dbg !4194
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.else23, %while.end
  %recip_def_stmt = getelementptr inbounds %struct.occurrence, %struct.occurrence* %occ, i64 0, i32 2, !dbg !4195
  store %union.gimple_statement_d* %call7, %union.gimple_statement_d** %recip_def_stmt, align 8, !dbg !4196
  br label %if.end27, !dbg !4197

if.end27:                                         ; preds = %land.lhs.true3, %entry, %land.lhs.true, %if.end26
  %recip_def.addr.0 = phi %union.tree_node* [ %recip_def, %entry ], [ %call, %if.end26 ], [ null, %land.lhs.true3 ], [ null, %land.lhs.true ]
  call void @llvm.dbg.value(metadata %union.tree_node* %recip_def.addr.0, metadata !4140, metadata !DIExpression()), !dbg !4146
  %recip_def28 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %occ, i64 0, i32 1, !dbg !4198
  store %union.tree_node* %recip_def.addr.0, %union.tree_node** %recip_def28, align 8, !dbg !4199
  %children = getelementptr inbounds %struct.occurrence, %struct.occurrence* %occ, i64 0, i32 3, !dbg !4200
  br label %for.cond, !dbg !4202

for.cond:                                         ; preds = %for.body, %if.end27
  %occ_child.0.in = phi %struct.occurrence** [ %children, %if.end27 ], [ %next, %for.body ]
  %occ_child.0 = load %struct.occurrence*, %struct.occurrence** %occ_child.0.in, align 8, !dbg !4203
  call void @llvm.dbg.value(metadata %struct.occurrence* %occ_child.0, metadata !4145, metadata !DIExpression()), !dbg !4146
  %tobool29 = icmp eq %struct.occurrence* %occ_child.0, null, !dbg !4204
  br i1 %tobool29, label %for.end, label %for.body, !dbg !4204

for.body:                                         ; preds = %for.cond
  call fastcc void @insert_reciprocals(%struct.gimple_stmt_iterator* %def_gsi, %struct.occurrence* nonnull %occ_child.0, %union.tree_node* %def, %union.tree_node* %recip_def.addr.0, i32 %threshold) #7, !dbg !4205
  %next = getelementptr inbounds %struct.occurrence, %struct.occurrence* %occ_child.0, i64 0, i32 4, !dbg !4207
  br label %for.cond, !dbg !4208, !llvm.loop !4209

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !4211
  ret void, !dbg !4211
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @first_imm_use_on_stmt(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !4212 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !4214, metadata !DIExpression()), !dbg !4215
  %imm_use = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !4216
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use, align 8, !dbg !4216
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %0, i64 0, i32 1, !dbg !4217
  %1 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !4217
  %2 = load i64, i64* %1, align 8, !dbg !4217
  %next_imm_name = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 3, !dbg !4218
  %3 = bitcast %struct.ssa_use_operand_d** %next_imm_name to i64*, !dbg !4219
  store i64 %2, i64* %3, align 8, !dbg !4219
  ret %struct.ssa_use_operand_d* %0, !dbg !4220
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @end_imm_use_on_stmt_p(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !4221 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !4223, metadata !DIExpression()), !dbg !4224
  %imm_use = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !4225
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use, align 8, !dbg !4225
  %iter_node = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, !dbg !4226
  %cmp = icmp eq %struct.ssa_use_operand_d* %0, %iter_node, !dbg !4227
  %conv1 = zext i1 %cmp to i8, !dbg !4228
  ret i8 %conv1, !dbg !4229
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @replace_reciprocal(%struct.ssa_use_operand_d* %use_p) unnamed_addr #0 !dbg !4230 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p, metadata !4234, metadata !DIExpression()), !dbg !4238
  %stmt = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use_p, i64 0, i32 2, i32 0, !dbg !4239
  %0 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !4239
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %0, metadata !4235, metadata !DIExpression()), !dbg !4238
  %call = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %0) #7, !dbg !4240
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !4236, metadata !DIExpression()), !dbg !4238
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 2, !dbg !4241
  %1 = bitcast i8** %aux to %struct.occurrence**, !dbg !4241
  %2 = load %struct.occurrence*, %struct.occurrence** %1, align 8, !dbg !4241
  call void @llvm.dbg.value(metadata %struct.occurrence* %2, metadata !4237, metadata !DIExpression()), !dbg !4238
  %call1 = tail call zeroext i8 @optimize_bb_for_speed_p(%struct.basic_block_def* %call) #6, !dbg !4242
  %tobool = icmp eq i8 %call1, 0, !dbg !4242
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !4244

land.lhs.true:                                    ; preds = %entry
  %recip_def = getelementptr inbounds %struct.occurrence, %struct.occurrence* %2, i64 0, i32 1, !dbg !4245
  %3 = load %union.tree_node*, %union.tree_node** %recip_def, align 8, !dbg !4245
  %tobool2 = icmp eq %union.tree_node* %3, null, !dbg !4246
  br i1 %tobool2, label %if.end, label %land.lhs.true3, !dbg !4247

land.lhs.true3:                                   ; preds = %land.lhs.true
  %recip_def_stmt = getelementptr inbounds %struct.occurrence, %struct.occurrence* %2, i64 0, i32 2, !dbg !4248
  %4 = load %union.gimple_statement_d*, %union.gimple_statement_d** %recip_def_stmt, align 8, !dbg !4248
  %cmp = icmp eq %union.gimple_statement_d* %0, %4, !dbg !4249
  br i1 %cmp, label %if.end, label %if.then, !dbg !4250

if.then:                                          ; preds = %land.lhs.true3
  tail call fastcc void @gimple_assign_set_rhs_code(%union.gimple_statement_d* %0, i32 65) #7, !dbg !4251
  %5 = load %union.tree_node*, %union.tree_node** %recip_def, align 8, !dbg !4253
  tail call fastcc void @set_ssa_use_from_ptr(%struct.ssa_use_operand_d* %use_p, %union.tree_node* %5) #7, !dbg !4253
  %call6 = tail call zeroext i8 @fold_stmt_inplace(%union.gimple_statement_d* %0) #6, !dbg !4254
  tail call fastcc void @update_stmt(%union.gimple_statement_d* %0) #7, !dbg !4255
  br label %if.end, !dbg !4256

if.end:                                           ; preds = %land.lhs.true3, %land.lhs.true, %entry, %if.then
  ret void, !dbg !4257
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @next_imm_use_on_stmt(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !4258 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !4260, metadata !DIExpression()), !dbg !4261
  %next_imm_name = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 3, !dbg !4262
  %0 = bitcast %struct.ssa_use_operand_d** %next_imm_name to i64*, !dbg !4262
  %1 = load i64, i64* %0, align 8, !dbg !4262
  %2 = bitcast %struct.immediate_use_iterator_d* %imm to i64*, !dbg !4263
  store i64 %1, i64* %2, align 8, !dbg !4263
  %call = tail call fastcc zeroext i8 @end_imm_use_on_stmt_p(%struct.immediate_use_iterator_d* %imm) #7, !dbg !4264
  %tobool = icmp eq i8 %call, 0, !dbg !4264
  br i1 %tobool, label %if.else, label %return, !dbg !4266

if.else:                                          ; preds = %entry
  %imm_use1 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !4267
  %3 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use1, align 8, !dbg !4267
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %3, i64 0, i32 1, !dbg !4269
  %4 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !4269
  %5 = load i64, i64* %4, align 8, !dbg !4269
  store i64 %5, i64* %0, align 8, !dbg !4270
  br label %return, !dbg !4271

return:                                           ; preds = %entry, %if.else
  %retval.0 = phi %struct.ssa_use_operand_d* [ %3, %if.else ], [ null, %entry ], !dbg !4272
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !4273
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.occurrence* @free_bb(%struct.occurrence* %occ) unnamed_addr #5 !dbg !4274 {
entry:
  call void @llvm.dbg.value(metadata %struct.occurrence* %occ, metadata !4278, metadata !DIExpression()), !dbg !4281
  %next1 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %occ, i64 0, i32 4, !dbg !4282
  %0 = load %struct.occurrence*, %struct.occurrence** %next1, align 8, !dbg !4282
  call void @llvm.dbg.value(metadata %struct.occurrence* %0, metadata !4280, metadata !DIExpression()), !dbg !4281
  %children = getelementptr inbounds %struct.occurrence, %struct.occurrence* %occ, i64 0, i32 3, !dbg !4283
  %1 = load %struct.occurrence*, %struct.occurrence** %children, align 8, !dbg !4283
  call void @llvm.dbg.value(metadata %struct.occurrence* %1, metadata !4279, metadata !DIExpression()), !dbg !4281
  %bb = getelementptr inbounds %struct.occurrence, %struct.occurrence* %occ, i64 0, i32 0, !dbg !4284
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !4284
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i64 0, i32 2, !dbg !4285
  store i8* null, i8** %aux, align 8, !dbg !4286
  %3 = load %struct.alloc_pool_def*, %struct.alloc_pool_def** @occ_pool, align 8, !dbg !4287
  %4 = bitcast %struct.occurrence* %occ to i8*, !dbg !4288
  tail call void @pool_free(%struct.alloc_pool_def* %3, i8* %4) #6, !dbg !4289
  %tobool = icmp eq %struct.occurrence* %1, null, !dbg !4290
  br i1 %tobool, label %cleanup, label %while.cond.preheader, !dbg !4292

while.cond.preheader:                             ; preds = %entry
  br label %while.cond, !dbg !4293

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %next.0 = phi %struct.occurrence* [ %call, %while.body ], [ %0, %while.cond.preheader ], !dbg !4281
  call void @llvm.dbg.value(metadata %struct.occurrence* %next.0, metadata !4280, metadata !DIExpression()), !dbg !4281
  %tobool2 = icmp eq %struct.occurrence* %next.0, null, !dbg !4293
  br i1 %tobool2, label %cleanup.loopexit, label %while.body, !dbg !4293

while.body:                                       ; preds = %while.cond
  %call = tail call fastcc %struct.occurrence* @free_bb(%struct.occurrence* nonnull %next.0) #7, !dbg !4295
  call void @llvm.dbg.value(metadata %struct.occurrence* %call, metadata !4280, metadata !DIExpression()), !dbg !4281
  br label %while.cond, !dbg !4293, !llvm.loop !4296

cleanup.loopexit:                                 ; preds = %while.cond
  br label %cleanup, !dbg !4298

cleanup:                                          ; preds = %cleanup.loopexit, %entry
  %retval.0 = phi %struct.occurrence* [ %0, %entry ], [ %1, %cleanup.loopexit ], !dbg !4299
  ret %struct.occurrence* %retval.0, !dbg !4298
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.occurrence* @occ_new(%struct.basic_block_def* %bb, %struct.occurrence* %children) unnamed_addr #5 !dbg !4300 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4304, metadata !DIExpression()), !dbg !4307
  call void @llvm.dbg.value(metadata %struct.occurrence* %children, metadata !4305, metadata !DIExpression()), !dbg !4307
  %0 = load %struct.alloc_pool_def*, %struct.alloc_pool_def** @occ_pool, align 8, !dbg !4308
  %call = tail call i8* @pool_alloc(%struct.alloc_pool_def* %0) #6, !dbg !4309
  %1 = bitcast i8* %call to %struct.occurrence*, !dbg !4310
  call void @llvm.dbg.value(metadata %struct.occurrence* %1, metadata !4306, metadata !DIExpression()), !dbg !4307
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 2, !dbg !4311
  store i8* %call, i8** %aux, align 8, !dbg !4312
  %call1 = tail call i8* @memset(i8* %call, i32 0, i64 48) #6, !dbg !4313
  %bb2 = bitcast i8* %call to %struct.basic_block_def**, !dbg !4314
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb2, align 8, !dbg !4315
  %children3 = getelementptr inbounds i8, i8* %call, i64 24, !dbg !4316
  %2 = bitcast i8* %children3 to %struct.occurrence**, !dbg !4316
  store %struct.occurrence* %children, %struct.occurrence** %2, align 8, !dbg !4317
  ret %struct.occurrence* %1, !dbg !4318
}

; Function Attrs: nounwind uwtable
define internal fastcc void @insert_bb(%struct.occurrence* %new_occ, %struct.basic_block_def* %idom, %struct.occurrence** %p_head) unnamed_addr #5 !dbg !4319 {
entry:
  call void @llvm.dbg.value(metadata %struct.occurrence* %new_occ, metadata !4324, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %idom, metadata !4325, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata %struct.occurrence** %p_head, metadata !4326, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata %struct.occurrence** %p_head, metadata !4328, metadata !DIExpression()), !dbg !4335
  br label %for.cond, !dbg !4336

for.cond:                                         ; preds = %cleanup, %entry
  %p_occ.0 = phi %struct.occurrence** [ %p_head, %entry ], [ %p_occ.3, %cleanup ], !dbg !4337
  %new_occ.addr.0 = phi %struct.occurrence* [ %new_occ, %entry ], [ %new_occ.addr.3, %cleanup ]
  call void @llvm.dbg.value(metadata %struct.occurrence* %new_occ.addr.0, metadata !4324, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata %struct.occurrence** %p_occ.0, metadata !4328, metadata !DIExpression()), !dbg !4335
  %0 = load %struct.occurrence*, %struct.occurrence** %p_occ.0, align 8, !dbg !4338
  call void @llvm.dbg.value(metadata %struct.occurrence* %0, metadata !4327, metadata !DIExpression()), !dbg !4335
  %cmp = icmp eq %struct.occurrence* %0, null, !dbg !4339
  br i1 %cmp, label %for.end, label %for.body, !dbg !4340

for.body:                                         ; preds = %for.cond
  %bb1 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %new_occ.addr.0, i64 0, i32 0, !dbg !4341
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %bb1, align 8, !dbg !4341
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %1, metadata !4329, metadata !DIExpression()), !dbg !4342
  %bb2 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %0, i64 0, i32 0, !dbg !4343
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %bb2, align 8, !dbg !4343
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %2, metadata !4333, metadata !DIExpression()), !dbg !4342
  %call = tail call %struct.basic_block_def* @nearest_common_dominator(i32 1, %struct.basic_block_def* %2, %struct.basic_block_def* %1) #6, !dbg !4344
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !4334, metadata !DIExpression()), !dbg !4342
  %cmp3 = icmp eq %struct.basic_block_def* %call, %1, !dbg !4345
  br i1 %cmp3, label %if.then, label %if.else, !dbg !4347

if.then:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.occurrence, %struct.occurrence* %0, i64 0, i32 4, !dbg !4348
  %3 = bitcast %struct.occurrence** %next to i64*, !dbg !4348
  %4 = load i64, i64* %3, align 8, !dbg !4348
  %5 = bitcast %struct.occurrence** %p_occ.0 to i64*, !dbg !4350
  store i64 %4, i64* %5, align 8, !dbg !4350
  %children = getelementptr inbounds %struct.occurrence, %struct.occurrence* %new_occ.addr.0, i64 0, i32 3, !dbg !4351
  %6 = bitcast %struct.occurrence** %children to i64*, !dbg !4351
  %7 = load i64, i64* %6, align 8, !dbg !4351
  store i64 %7, i64* %3, align 8, !dbg !4352
  store %struct.occurrence* %0, %struct.occurrence** %children, align 8, !dbg !4353
  br label %cleanup, !dbg !4354

if.else:                                          ; preds = %for.body
  %cmp6 = icmp eq %struct.basic_block_def* %call, %2, !dbg !4355
  br i1 %cmp6, label %if.then7, label %if.else9, !dbg !4357

if.then7:                                         ; preds = %if.else
  %children8 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %0, i64 0, i32 3, !dbg !4358
  tail call fastcc void @insert_bb(%struct.occurrence* %new_occ.addr.0, %struct.basic_block_def* %2, %struct.occurrence** nonnull %children8) #7, !dbg !4360
  br label %cleanup, !dbg !4361

if.else9:                                         ; preds = %if.else
  %cmp10 = icmp eq %struct.basic_block_def* %call, %idom, !dbg !4362
  br i1 %cmp10, label %if.else16, label %if.then11, !dbg !4364

if.then11:                                        ; preds = %if.else9
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 2, !dbg !4365
  %8 = load i8*, i8** %aux, align 8, !dbg !4365
  %tobool = icmp eq i8* %8, null, !dbg !4365
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4365

cond.true:                                        ; preds = %if.then11
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 204, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !4365
  br label %cond.end, !dbg !4365

cond.end:                                         ; preds = %if.then11, %cond.true
  %next12 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %0, i64 0, i32 4, !dbg !4367
  %9 = bitcast %struct.occurrence** %next12 to i64*, !dbg !4367
  %10 = load i64, i64* %9, align 8, !dbg !4367
  %11 = bitcast %struct.occurrence** %p_occ.0 to i64*, !dbg !4368
  store i64 %10, i64* %11, align 8, !dbg !4368
  %next13 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %new_occ.addr.0, i64 0, i32 4, !dbg !4369
  store %struct.occurrence* %0, %struct.occurrence** %next13, align 8, !dbg !4370
  store %struct.occurrence* null, %struct.occurrence** %next12, align 8, !dbg !4371
  %call15 = tail call fastcc %struct.occurrence* @occ_new(%struct.basic_block_def* %call, %struct.occurrence* %new_occ.addr.0) #7, !dbg !4372
  call void @llvm.dbg.value(metadata %struct.occurrence* %call15, metadata !4324, metadata !DIExpression()), !dbg !4335
  br label %cleanup, !dbg !4373

if.else16:                                        ; preds = %if.else9
  %next17 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %0, i64 0, i32 4, !dbg !4374
  call void @llvm.dbg.value(metadata %struct.occurrence** %next17, metadata !4328, metadata !DIExpression()), !dbg !4335
  br label %cleanup

cleanup:                                          ; preds = %if.then, %cond.end, %if.else16, %if.then7
  %p_occ.3 = phi %struct.occurrence** [ %p_occ.0, %if.then7 ], [ %p_occ.0, %if.then ], [ %p_occ.0, %cond.end ], [ %next17, %if.else16 ], !dbg !4337
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then7 ], [ true, %if.then ], [ true, %cond.end ], [ true, %if.else16 ]
  %new_occ.addr.3 = phi %struct.occurrence* [ %new_occ.addr.0, %if.then7 ], [ %new_occ.addr.0, %if.then ], [ %call15, %cond.end ], [ %new_occ.addr.0, %if.else16 ]
  call void @llvm.dbg.value(metadata %struct.occurrence* %new_occ.addr.3, metadata !4324, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata %struct.occurrence** %p_occ.3, metadata !4328, metadata !DIExpression()), !dbg !4335
  br i1 %cleanup.dest.slot.0, label %for.cond, label %cleanup.cont26.loopexit, !llvm.loop !4376

for.end:                                          ; preds = %for.cond
  %new_occ.addr.0.lcssa = phi %struct.occurrence* [ %new_occ.addr.0, %for.cond ]
  call void @llvm.dbg.value(metadata %struct.occurrence* %new_occ.addr.0.lcssa, metadata !4324, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata %struct.occurrence* %new_occ.addr.0.lcssa, metadata !4324, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata %struct.occurrence* %new_occ.addr.0.lcssa, metadata !4324, metadata !DIExpression()), !dbg !4335
  %12 = bitcast %struct.occurrence** %p_head to i64*, !dbg !4378
  %13 = load i64, i64* %12, align 8, !dbg !4378
  %next22 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %new_occ.addr.0.lcssa, i64 0, i32 4, !dbg !4379
  %14 = bitcast %struct.occurrence** %next22 to i64*, !dbg !4380
  store i64 %13, i64* %14, align 8, !dbg !4380
  store %struct.occurrence* %new_occ.addr.0.lcssa, %struct.occurrence** %p_head, align 8, !dbg !4381
  br label %cleanup.cont26, !dbg !4382

cleanup.cont26.loopexit:                          ; preds = %cleanup
  br label %cleanup.cont26, !dbg !4382

cleanup.cont26:                                   ; preds = %cleanup.cont26.loopexit, %for.end
  ret void, !dbg !4382
}

declare dso_local i8* @pool_alloc(%struct.alloc_pool_def*) local_unnamed_addr #2

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

declare dso_local %struct.basic_block_def* @nearest_common_dominator(i32, %struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local %struct.basic_block_def* @single_noncomplex_succ(%struct.basic_block_def*) local_unnamed_addr #2

declare dso_local zeroext i8 @dominated_by_p(i32, %struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local %union.tree_node* @make_rename_temp(%union.tree_node*, i8*) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @gimple_build_assign_with_ops_stat(i32, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_one_cst(%union.tree_node*) local_unnamed_addr #2

declare dso_local void @gsi_insert_before(%struct.gimple_stmt_iterator*, %union.gimple_statement_d*, i32) local_unnamed_addr #2

declare dso_local void @gsi_insert_after(%struct.gimple_stmt_iterator*, %union.gimple_statement_d*, i32) local_unnamed_addr #2

declare dso_local zeroext i8 @optimize_bb_for_speed_p(%struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @set_ssa_use_from_ptr(%struct.ssa_use_operand_d* %use, %union.tree_node* %val) unnamed_addr #0 !dbg !4383 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !4387, metadata !DIExpression()), !dbg !4389
  call void @llvm.dbg.value(metadata %union.tree_node* %val, metadata !4388, metadata !DIExpression()), !dbg !4389
  tail call fastcc void @delink_imm_use(%struct.ssa_use_operand_d* %use) #7, !dbg !4390
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !4391
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !4391
  store %union.tree_node* %val, %union.tree_node** %0, align 8, !dbg !4392
  tail call fastcc void @link_imm_use(%struct.ssa_use_operand_d* %use, %union.tree_node* %val) #7, !dbg !4393
  ret void, !dbg !4394
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @delink_imm_use(%struct.ssa_use_operand_d* %linknode) unnamed_addr #0 !dbg !4395 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !4399, metadata !DIExpression()), !dbg !4400
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 0, !dbg !4401
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %prev, align 8, !dbg !4401
  %cmp = icmp eq %struct.ssa_use_operand_d* %0, null, !dbg !4403
  br i1 %cmp, label %return, label %if.end, !dbg !4404

if.end:                                           ; preds = %entry
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 1, !dbg !4405
  %1 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !4405
  %2 = load i64, i64* %1, align 8, !dbg !4405
  %next2 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %0, i64 0, i32 1, !dbg !4406
  %3 = bitcast %struct.ssa_use_operand_d** %next2 to i64*, !dbg !4407
  store i64 %2, i64* %3, align 8, !dbg !4407
  %4 = bitcast %struct.ssa_use_operand_d* %linknode to i64*, !dbg !4408
  %5 = load i64, i64* %4, align 8, !dbg !4408
  %6 = bitcast %struct.ssa_use_operand_d** %next to i64**, !dbg !4409
  %7 = load i64*, i64** %6, align 8, !dbg !4409
  store i64 %5, i64* %7, align 8, !dbg !4410
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %prev, align 8, !dbg !4411
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %next, align 8, !dbg !4412
  br label %return, !dbg !4413

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !4413
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @link_imm_use(%struct.ssa_use_operand_d* %linknode, %union.tree_node* %def) unnamed_addr #0 !dbg !4414 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !4418, metadata !DIExpression()), !dbg !4421
  call void @llvm.dbg.value(metadata %union.tree_node* %def, metadata !4419, metadata !DIExpression()), !dbg !4421
  %tobool = icmp eq %union.tree_node* %def, null, !dbg !4422
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !4424

lor.lhs.false:                                    ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %def, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4425
  %bf.load = load i64, i64* %0, align 8, !dbg !4425
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4426
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !4426
  br i1 %cmp, label %if.else, label %if.then, !dbg !4427

if.then:                                          ; preds = %lor.lhs.false, %entry
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 0, !dbg !4428
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %prev, align 8, !dbg !4429
  br label %if.end, !dbg !4430

if.else:                                          ; preds = %lor.lhs.false
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %def, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4431
  %1 = bitcast i40* %imm_uses to %struct.ssa_use_operand_d*, !dbg !4431
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %1, metadata !4420, metadata !DIExpression()), !dbg !4421
  tail call fastcc void @link_imm_use_to_list(%struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d* nonnull %1) #7, !dbg !4433
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !4434
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @link_imm_use_to_list(%struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d* %list) unnamed_addr #0 !dbg !4435 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %linknode, metadata !4439, metadata !DIExpression()), !dbg !4441
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %list, metadata !4440, metadata !DIExpression()), !dbg !4441
  %prev = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 0, !dbg !4442
  store %struct.ssa_use_operand_d* %list, %struct.ssa_use_operand_d** %prev, align 8, !dbg !4443
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %list, i64 0, i32 1, !dbg !4444
  %0 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !4444
  %1 = load i64, i64* %0, align 8, !dbg !4444
  %next1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %linknode, i64 0, i32 1, !dbg !4445
  %2 = bitcast %struct.ssa_use_operand_d** %next1 to i64*, !dbg !4446
  store i64 %1, i64* %2, align 8, !dbg !4446
  %3 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %next, align 8, !dbg !4447
  %prev3 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %3, i64 0, i32 0, !dbg !4448
  store %struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d** %prev3, align 8, !dbg !4449
  store %struct.ssa_use_operand_d* %linknode, %struct.ssa_use_operand_d** %next, align 8, !dbg !4450
  ret void, !dbg !4451
}

declare dso_local void @pool_free(%struct.alloc_pool_def*, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4452 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4454, metadata !DIExpression()), !dbg !4457
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !4455, metadata !DIExpression()), !dbg !4458
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #7, !dbg !4459
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !4456, metadata !DIExpression()), !dbg !4457
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %call) #7, !dbg !4460
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !4461
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !4462
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !4463
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !4464
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !4465
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !4466
  ret void, !dbg !4467
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4468 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4472, metadata !DIExpression()), !dbg !4473
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !4474
  %bf.load = load i32, i32* %0, align 8, !dbg !4474
  %bf.clear = and i32 %bf.load, 255, !dbg !4474
  ret i32 %bf.clear, !dbg !4475
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4476 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4483, metadata !DIExpression()), !dbg !4484
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !4485
  %0 = load i32, i32* %flags, align 8, !dbg !4485
  %and = and i32 %0, 512, !dbg !4486
  %tobool = icmp eq i32 %and, 0, !dbg !4486
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !4487

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !4488
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !4488
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !4489
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !4490

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !4491
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !4491
  br label %cond.end, !dbg !4490

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !4490
  ret %struct.gimple_seq_d* %cond, !dbg !4492
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !4493 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !4500, metadata !DIExpression()), !dbg !4501
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !4502
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4502

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !4503
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !4503
  br label %cond.end, !dbg !4502

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !4502
  ret %struct.gimple_seq_node_d* %cond, !dbg !4504
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @op_iter_init_tree(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !4505 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !4510, metadata !DIExpression()), !dbg !4513
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4511, metadata !DIExpression()), !dbg !4513
  call void @llvm.dbg.value(metadata i32 2, metadata !4512, metadata !DIExpression()), !dbg !4513
  tail call fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 2) #7, !dbg !4514
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !4515
  store i32 1, i32* %iter_type, align 4, !dbg !4516
  %call = tail call fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* %ptr) #7, !dbg !4517
  ret %union.tree_node* %call, !dbg !4518
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !4519 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !4525, metadata !DIExpression()), !dbg !4526
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !4527
  %0 = load i8, i8* %done, align 8, !dbg !4527
  ret i8 %0, !dbg !4528
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !4529 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !4533, metadata !DIExpression()), !dbg !4535
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !4536
  %0 = load %struct.use_optype_d*, %struct.use_optype_d** %uses, align 8, !dbg !4536
  %tobool = icmp eq %struct.use_optype_d* %0, null, !dbg !4538
  br i1 %tobool, label %if.end, label %if.then, !dbg !4539

if.then:                                          ; preds = %entry
  %use_ptr = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %0, i64 0, i32 1, !dbg !4540
  %call = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* nonnull %use_ptr) #7, !dbg !4540
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4534, metadata !DIExpression()), !dbg !4535
  %1 = bitcast %struct.use_optype_d** %uses to i64**, !dbg !4542
  %2 = load i64*, i64** %1, align 8, !dbg !4542
  %3 = load i64, i64* %2, align 8, !dbg !4543
  %4 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !4544
  store i64 %3, i64* %4, align 8, !dbg !4544
  br label %cleanup, !dbg !4545

if.end:                                           ; preds = %entry
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !4546
  %5 = load %struct.def_optype_d*, %struct.def_optype_d** %defs, align 8, !dbg !4546
  %tobool4 = icmp eq %struct.def_optype_d* %5, null, !dbg !4548
  br i1 %tobool4, label %if.end11, label %if.then5, !dbg !4549

if.then5:                                         ; preds = %if.end
  %def_ptr = getelementptr inbounds %struct.def_optype_d, %struct.def_optype_d* %5, i64 0, i32 1, !dbg !4550
  %6 = load %union.tree_node**, %union.tree_node*** %def_ptr, align 8, !dbg !4550
  %call7 = tail call fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %6) #7, !dbg !4550
  call void @llvm.dbg.value(metadata %union.tree_node* %call7, metadata !4534, metadata !DIExpression()), !dbg !4535
  %7 = bitcast %struct.def_optype_d** %defs to i64**, !dbg !4552
  %8 = load i64*, i64** %7, align 8, !dbg !4552
  %9 = load i64, i64* %8, align 8, !dbg !4553
  %10 = bitcast %struct.def_optype_d** %defs to i64*, !dbg !4554
  store i64 %9, i64* %10, align 8, !dbg !4554
  br label %cleanup, !dbg !4555

if.end11:                                         ; preds = %if.end
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !4556
  store i8 1, i8* %done, align 8, !dbg !4557
  br label %cleanup, !dbg !4558

cleanup:                                          ; preds = %if.end11, %if.then5, %if.then
  %retval.0 = phi %union.tree_node* [ %call, %if.then ], [ %call7, %if.then5 ], [ null, %if.end11 ], !dbg !4535
  ret %union.tree_node* %retval.0, !dbg !4559
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !4560 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !4564, metadata !DIExpression()), !dbg !4567
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4565, metadata !DIExpression()), !dbg !4567
  call void @llvm.dbg.value(metadata i32 %flags, metadata !4566, metadata !DIExpression()), !dbg !4567
  %0 = and i32 %flags, 10, !dbg !4568
  %1 = icmp eq i32 %0, 8, !dbg !4568
  br i1 %1, label %cond.true, label %land.lhs.true, !dbg !4568

land.lhs.true:                                    ; preds = %entry
  %2 = and i32 %flags, 5, !dbg !4568
  %3 = icmp eq i32 %2, 4, !dbg !4568
  br i1 %3, label %cond.true, label %cond.end, !dbg !4568

cond.true:                                        ; preds = %land.lhs.true, %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 747, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !4568
  br label %cond.end, !dbg !4568

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %tobool9 = icmp eq i32 %0, 0, !dbg !4569
  br i1 %tobool9, label %cond.end12, label %cond.true10, !dbg !4570

cond.true10:                                      ; preds = %cond.end
  %call = tail call fastcc %struct.def_optype_d* @gimple_def_ops(%union.gimple_statement_d* %stmt) #7, !dbg !4571
  br label %cond.end12, !dbg !4570

cond.end12:                                       ; preds = %cond.end, %cond.true10
  %4 = phi %struct.def_optype_d* [ %call, %cond.true10 ], [ null, %cond.end ], !dbg !4570
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !4572
  store %struct.def_optype_d* %4, %struct.def_optype_d** %defs, align 8, !dbg !4573
  %and14 = and i32 %flags, 8, !dbg !4574
  %tobool15 = icmp eq i32 %and14, 0, !dbg !4574
  br i1 %tobool15, label %land.lhs.true16, label %if.end, !dbg !4576

land.lhs.true16:                                  ; preds = %cond.end12
  %tobool18 = icmp eq %struct.def_optype_d* %4, null, !dbg !4577
  br i1 %tobool18, label %if.end, label %land.lhs.true19, !dbg !4578

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %call20 = tail call fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %stmt) #7, !dbg !4579
  %cmp = icmp eq %union.tree_node* %call20, null, !dbg !4580
  br i1 %cmp, label %if.end, label %if.then, !dbg !4581

if.then:                                          ; preds = %land.lhs.true19
  %5 = bitcast %struct.def_optype_d** %defs to i64**, !dbg !4582
  %6 = load i64*, i64** %5, align 8, !dbg !4582
  %7 = load i64, i64* %6, align 8, !dbg !4583
  %8 = bitcast %struct.def_optype_d** %defs to i64*, !dbg !4584
  store i64 %7, i64* %8, align 8, !dbg !4584
  br label %if.end, !dbg !4585

if.end:                                           ; preds = %land.lhs.true19, %land.lhs.true16, %cond.end12, %if.then
  %and23 = and i32 %flags, 5, !dbg !4586
  %tobool24 = icmp eq i32 %and23, 0, !dbg !4586
  br i1 %tobool24, label %cond.end28, label %cond.true25, !dbg !4587

cond.true25:                                      ; preds = %if.end
  %call26 = tail call fastcc %struct.use_optype_d* @gimple_use_ops(%union.gimple_statement_d* %stmt) #7, !dbg !4588
  br label %cond.end28, !dbg !4587

cond.end28:                                       ; preds = %if.end, %cond.true25
  %9 = phi %struct.use_optype_d* [ %call26, %cond.true25 ], [ null, %if.end ], !dbg !4587
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !4589
  store %struct.use_optype_d* %9, %struct.use_optype_d** %uses, align 8, !dbg !4590
  %and30 = and i32 %flags, 4, !dbg !4591
  %tobool31 = icmp eq i32 %and30, 0, !dbg !4591
  br i1 %tobool31, label %land.lhs.true32, label %if.end42, !dbg !4593

land.lhs.true32:                                  ; preds = %cond.end28
  %tobool34 = icmp eq %struct.use_optype_d* %9, null, !dbg !4594
  br i1 %tobool34, label %if.end42, label %land.lhs.true35, !dbg !4595

land.lhs.true35:                                  ; preds = %land.lhs.true32
  %call36 = tail call fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %stmt) #7, !dbg !4596
  %cmp37 = icmp eq %union.tree_node* %call36, null, !dbg !4597
  br i1 %cmp37, label %if.end42, label %if.then38, !dbg !4598

if.then38:                                        ; preds = %land.lhs.true35
  %10 = bitcast %struct.use_optype_d** %uses to i64**, !dbg !4599
  %11 = load i64*, i64** %10, align 8, !dbg !4599
  %12 = load i64, i64* %11, align 8, !dbg !4600
  %13 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !4601
  store i64 %12, i64* %13, align 8, !dbg !4601
  br label %if.end42, !dbg !4602

if.end42:                                         ; preds = %land.lhs.true35, %land.lhs.true32, %cond.end28, %if.then38
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !4603
  store i8 0, i8* %done, align 8, !dbg !4604
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !4605
  store i32 0, i32* %phi_i, align 8, !dbg !4606
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !4607
  store i32 0, i32* %num_phi, align 4, !dbg !4608
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !4609
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !4610
  ret void, !dbg !4611
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.def_optype_d* @gimple_def_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4612 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4616, metadata !DIExpression()), !dbg !4617
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) #7, !dbg !4618
  %tobool = icmp eq i8 %call, 0, !dbg !4618
  br i1 %tobool, label %return, label %if.end, !dbg !4620

if.end:                                           ; preds = %entry
  %def_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 1, !dbg !4621
  %0 = bitcast i32* %def_ops to %struct.def_optype_d**, !dbg !4621
  %1 = load %struct.def_optype_d*, %struct.def_optype_d** %0, align 8, !dbg !4621
  br label %return, !dbg !4622

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.def_optype_d* [ %1, %if.end ], [ null, %entry ], !dbg !4617
  ret %struct.def_optype_d* %retval.0, !dbg !4623
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4624 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4626, metadata !DIExpression()), !dbg !4627
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #7, !dbg !4628
  %tobool = icmp eq i8 %call, 0, !dbg !4628
  br i1 %tobool, label %return, label %if.end, !dbg !4630

if.end:                                           ; preds = %entry
  %vdef = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, !dbg !4631
  %0 = bitcast [1 x %struct.phi_arg_d]* %vdef to %union.tree_node**, !dbg !4631
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !4631
  br label %return, !dbg !4632

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.tree_node* [ %1, %if.end ], [ null, %entry ], !dbg !4627
  ret %union.tree_node* %retval.0, !dbg !4633
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.use_optype_d* @gimple_use_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4634 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4638, metadata !DIExpression()), !dbg !4639
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) #7, !dbg !4640
  %tobool = icmp eq i8 %call, 0, !dbg !4640
  br i1 %tobool, label %return, label %if.end, !dbg !4642

if.end:                                           ; preds = %entry
  %use_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 3, !dbg !4643
  %0 = bitcast %union.tree_node** %use_ops to %struct.use_optype_d**, !dbg !4643
  %1 = load %struct.use_optype_d*, %struct.use_optype_d** %0, align 8, !dbg !4643
  br label %return, !dbg !4644

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.use_optype_d* [ %1, %if.end ], [ null, %entry ], !dbg !4639
  ret %struct.use_optype_d* %retval.0, !dbg !4645
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4646 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4648, metadata !DIExpression()), !dbg !4649
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #7, !dbg !4650
  %tobool = icmp eq i8 %call, 0, !dbg !4650
  br i1 %tobool, label %return, label %if.end, !dbg !4652

if.end:                                           ; preds = %entry
  %vuse = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, i64 0, i32 0, i32 1, !dbg !4653
  %0 = bitcast %struct.ssa_use_operand_d** %vuse to %union.tree_node**, !dbg !4653
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !4653
  br label %return, !dbg !4654

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.tree_node* [ %1, %if.end ], [ null, %entry ], !dbg !4649
  ret %union.tree_node* %retval.0, !dbg !4655
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4656 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4658, metadata !DIExpression()), !dbg !4659
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !4660
  %cmp = icmp eq i32 %call, 0, !dbg !4661
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !4662

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !4663
  %cmp2 = icmp ult i32 %call1, 10, !dbg !4664
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !4665
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4666 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4668, metadata !DIExpression()), !dbg !4669
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !4670
  %cmp = icmp ugt i32 %call, 5, !dbg !4671
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4672

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !4673
  %cmp2 = icmp ult i32 %call1, 10, !dbg !4674
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !4675
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use) unnamed_addr #0 !dbg !4676 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !4680, metadata !DIExpression()), !dbg !4681
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !4682
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !4682
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !4683
  ret %union.tree_node* %1, !dbg !4684
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !4685 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4687, metadata !DIExpression()), !dbg !4689
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #7, !dbg !4690
  call void @llvm.dbg.value(metadata i32 %call, metadata !4688, metadata !DIExpression()), !dbg !4689
  switch i32 %call, label %if.else4 [
    i32 6, label %if.then
    i32 1, label %if.then
    i32 8, label %cleanup
  ], !dbg !4691

if.then:                                          ; preds = %entry, %entry
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !4693
  %bf.load = load i32, i32* %0, align 8, !dbg !4693
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !4693
  br label %cleanup, !dbg !4694

if.else4:                                         ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 1446, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !4695
  br label %cleanup, !dbg !4697

cleanup:                                          ; preds = %entry, %if.else4, %if.then
  %retval.0 = phi i32 [ %bf.lshr, %if.then ], [ 0, %if.else4 ], [ 59, %entry ], !dbg !4689
  ret i32 %retval.0, !dbg !4698
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 %code) unnamed_addr #0 !dbg !4699 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !4703, metadata !DIExpression()), !dbg !4704
  %idxprom = sext i32 %code to i64, !dbg !4705
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimple_rhs_class_table, i64 0, i64 %idxprom, !dbg !4705
  %0 = load i8, i8* %arrayidx, align 1, !dbg !4705
  %conv = zext i8 %0 to i32, !dbg !4706
  ret i32 %conv, !dbg !4707
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4708 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4712, metadata !DIExpression()), !dbg !4713
  %num_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 3, !dbg !4714
  %0 = load i32, i32* %num_ops, align 4, !dbg !4714
  ret i32 %0, !dbg !4715
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !4716 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4720, metadata !DIExpression()), !dbg !4722
  call void @llvm.dbg.value(metadata i32 %i, metadata !4721, metadata !DIExpression()), !dbg !4722
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #7, !dbg !4723
  %tobool = icmp eq i8 %call, 0, !dbg !4723
  br i1 %tobool, label %return, label %if.then, !dbg !4725

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #7, !dbg !4726
  %idxprom = zext i32 %i to i64, !dbg !4726
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 %idxprom, !dbg !4726
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !4726
  br label %return, !dbg !4728

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ null, %entry ], !dbg !4729
  ret %union.tree_node* %retval.0, !dbg !4730
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4731 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4733, metadata !DIExpression()), !dbg !4735
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #7, !dbg !4736
  %idxprom = zext i32 %call to i64, !dbg !4737
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !4737
  %0 = load i64, i64* %arrayidx, align 8, !dbg !4737
  call void @llvm.dbg.value(metadata i64 %0, metadata !4734, metadata !DIExpression()), !dbg !4735
  %cmp = icmp eq i64 %0, 0, !dbg !4738
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4738

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !4738
  br label %cond.end, !dbg !4738

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !4739
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !4740
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !4741
  ret %union.tree_node** %2, !dbg !4742
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4743 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4747, metadata !DIExpression()), !dbg !4748
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !4749
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #7, !dbg !4750
  ret i32 %call1, !dbg !4751
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !4752 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !4756, metadata !DIExpression()), !dbg !4757
  %idxprom = zext i32 %code to i64, !dbg !4758
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !4758
  %0 = load i32, i32* %arrayidx, align 4, !dbg !4758
  ret i32 %0, !dbg !4759
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4760 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4762, metadata !DIExpression()), !dbg !4763
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #7, !dbg !4764
  ret %union.tree_node* %call, !dbg !4765
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 %i, %union.tree_node* %op) unnamed_addr #0 !dbg !4766 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4770, metadata !DIExpression()), !dbg !4773
  call void @llvm.dbg.value(metadata i32 %i, metadata !4771, metadata !DIExpression()), !dbg !4773
  call void @llvm.dbg.value(metadata %union.tree_node* %op, metadata !4772, metadata !DIExpression()), !dbg !4773
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #7, !dbg !4774
  %tobool = icmp eq i8 %call, 0, !dbg !4774
  br i1 %tobool, label %cond.true, label %land.lhs.true, !dbg !4774

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) #7, !dbg !4774
  %cmp = icmp ugt i32 %call1, %i, !dbg !4774
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !4774

cond.true:                                        ; preds = %entry, %land.lhs.true
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 1665, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !4774
  br label %cond.end, !dbg !4774

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %call3 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #7, !dbg !4775
  %idxprom = zext i32 %i to i64, !dbg !4775
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call3, i64 %idxprom, !dbg !4775
  store %union.tree_node* %op, %union.tree_node** %arrayidx, align 8, !dbg !4776
  ret void, !dbg !4777
}

declare dso_local %union.tree_node* @build_fold_addr_expr_loc(i32, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_location(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4778 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4782, metadata !DIExpression()), !dbg !4783
  %location = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 2, !dbg !4784
  %0 = load i32, i32* %location, align 8, !dbg !4784
  ret i32 %0, !dbg !4785
}

declare dso_local void @gimple_set_modified(%union.gimple_statement_d*, i8 zeroext) local_unnamed_addr #2

declare dso_local void @update_stmt_operands(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @link_use_stmts_after(%struct.ssa_use_operand_d* %head, %struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !4786 {
entry:
  %op_iter = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %head, metadata !4790, metadata !DIExpression()), !dbg !4798
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !4791, metadata !DIExpression()), !dbg !4798
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %head, metadata !4793, metadata !DIExpression()), !dbg !4798
  %stmt = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %head, i64 0, i32 2, i32 0, !dbg !4799
  %0 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !4799
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %0, metadata !4794, metadata !DIExpression()), !dbg !4798
  %call = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %head) #7, !dbg !4800
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4795, metadata !DIExpression()), !dbg !4798
  %1 = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %op_iter, i64 0, i32 0, !dbg !4801
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #8, !dbg !4801
  %call1 = tail call zeroext i8 @is_gimple_reg(%union.tree_node* %call) #6, !dbg !4802
  %tobool = icmp eq i8 %call1, 0, !dbg !4802
  %cond = select i1 %tobool, i32 4, i32 1, !dbg !4802
  call void @llvm.dbg.value(metadata i32 %cond, metadata !4797, metadata !DIExpression()), !dbg !4798
  %call2 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %0) #7, !dbg !4803
  %cmp = icmp eq i32 %call2, 16, !dbg !4805
  br i1 %cmp, label %if.then, label %if.else, !dbg !4806

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !4796, metadata !DIExpression(DW_OP_deref)), !dbg !4798
  %call4 = call fastcc %struct.ssa_use_operand_d* @op_iter_init_phiuse(%struct.ssa_operand_iterator_d* nonnull %op_iter, %union.gimple_statement_d* %0, i32 %cond) #7, !dbg !4807
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call4, metadata !4792, metadata !DIExpression()), !dbg !4798
  br label %for.cond, !dbg !4807

for.cond:                                         ; preds = %for.inc, %if.then
  %use_p.0 = phi %struct.ssa_use_operand_d* [ %call4, %if.then ], [ %call12, %for.inc ], !dbg !4810
  %last_p.0 = phi %struct.ssa_use_operand_d* [ %head, %if.then ], [ %last_p.1, %for.inc ], !dbg !4798
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.0, metadata !4793, metadata !DIExpression()), !dbg !4798
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p.0, metadata !4792, metadata !DIExpression()), !dbg !4798
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !4796, metadata !DIExpression(DW_OP_deref)), !dbg !4798
  %call5 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %op_iter) #7, !dbg !4811
  %tobool6 = icmp eq i8 %call5, 0, !dbg !4811
  br i1 %tobool6, label %for.body, label %if.end44.loopexit, !dbg !4807

for.body:                                         ; preds = %for.cond
  %call7 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use_p.0) #7, !dbg !4813
  %cmp8 = icmp eq %union.tree_node* %call7, %call, !dbg !4815
  br i1 %cmp8, label %if.then10, label %for.inc, !dbg !4816

if.then10:                                        ; preds = %for.body
  %call11 = call fastcc %struct.ssa_use_operand_d* @move_use_after_head(%struct.ssa_use_operand_d* %use_p.0, %struct.ssa_use_operand_d* %head, %struct.ssa_use_operand_d* %last_p.0) #7, !dbg !4817
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call11, metadata !4793, metadata !DIExpression()), !dbg !4798
  br label %for.inc, !dbg !4818

for.inc:                                          ; preds = %for.body, %if.then10
  %last_p.1 = phi %struct.ssa_use_operand_d* [ %call11, %if.then10 ], [ %last_p.0, %for.body ], !dbg !4798
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.1, metadata !4793, metadata !DIExpression()), !dbg !4798
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !4796, metadata !DIExpression(DW_OP_deref)), !dbg !4798
  %call12 = call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* nonnull %op_iter) #7, !dbg !4811
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call12, metadata !4792, metadata !DIExpression()), !dbg !4798
  br label %for.cond, !dbg !4811, !llvm.loop !4819

if.else:                                          ; preds = %entry
  br i1 %tobool, label %if.else31, label %if.then15, !dbg !4821

if.then15:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !4796, metadata !DIExpression(DW_OP_deref)), !dbg !4798
  %call16 = call fastcc %struct.ssa_use_operand_d* @op_iter_init_use(%struct.ssa_operand_iterator_d* nonnull %op_iter, %union.gimple_statement_d* %0, i32 %cond) #7, !dbg !4823
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call16, metadata !4792, metadata !DIExpression()), !dbg !4798
  br label %for.cond17, !dbg !4823

for.cond17:                                       ; preds = %for.inc28, %if.then15
  %use_p.1 = phi %struct.ssa_use_operand_d* [ %call16, %if.then15 ], [ %call29, %for.inc28 ], !dbg !4827
  %last_p.2 = phi %struct.ssa_use_operand_d* [ %head, %if.then15 ], [ %last_p.3, %for.inc28 ], !dbg !4798
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.2, metadata !4793, metadata !DIExpression()), !dbg !4798
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p.1, metadata !4792, metadata !DIExpression()), !dbg !4798
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !4796, metadata !DIExpression(DW_OP_deref)), !dbg !4798
  %call18 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %op_iter) #7, !dbg !4828
  %tobool19 = icmp eq i8 %call18, 0, !dbg !4828
  br i1 %tobool19, label %for.body21, label %if.end44.loopexit1, !dbg !4823

for.body21:                                       ; preds = %for.cond17
  %call22 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use_p.1) #7, !dbg !4830
  %cmp23 = icmp eq %union.tree_node* %call22, %call, !dbg !4832
  br i1 %cmp23, label %if.then25, label %for.inc28, !dbg !4833

if.then25:                                        ; preds = %for.body21
  %call26 = call fastcc %struct.ssa_use_operand_d* @move_use_after_head(%struct.ssa_use_operand_d* %use_p.1, %struct.ssa_use_operand_d* %head, %struct.ssa_use_operand_d* %last_p.2) #7, !dbg !4834
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call26, metadata !4793, metadata !DIExpression()), !dbg !4798
  br label %for.inc28, !dbg !4835

for.inc28:                                        ; preds = %for.body21, %if.then25
  %last_p.3 = phi %struct.ssa_use_operand_d* [ %call26, %if.then25 ], [ %last_p.2, %for.body21 ], !dbg !4798
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.3, metadata !4793, metadata !DIExpression()), !dbg !4798
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %op_iter, metadata !4796, metadata !DIExpression(DW_OP_deref)), !dbg !4798
  %call29 = call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* nonnull %op_iter) #7, !dbg !4828
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call29, metadata !4792, metadata !DIExpression()), !dbg !4798
  br label %for.cond17, !dbg !4828, !llvm.loop !4836

if.else31:                                        ; preds = %if.else
  %call32 = tail call fastcc %struct.ssa_use_operand_d* @gimple_vuse_op(%union.gimple_statement_d* %0) #7, !dbg !4838
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call32, metadata !4792, metadata !DIExpression()), !dbg !4798
  %cmp33 = icmp eq %struct.ssa_use_operand_d* %call32, null, !dbg !4840
  br i1 %cmp33, label %if.end44, label %if.then35, !dbg !4841

if.then35:                                        ; preds = %if.else31
  %call36 = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* nonnull %call32) #7, !dbg !4842
  %cmp37 = icmp eq %union.tree_node* %call36, %call, !dbg !4845
  br i1 %cmp37, label %if.then39, label %if.end44, !dbg !4846

if.then39:                                        ; preds = %if.then35
  %call40 = tail call fastcc %struct.ssa_use_operand_d* @move_use_after_head(%struct.ssa_use_operand_d* nonnull %call32, %struct.ssa_use_operand_d* %head, %struct.ssa_use_operand_d* %head) #7, !dbg !4847
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call40, metadata !4793, metadata !DIExpression()), !dbg !4798
  br label %if.end44, !dbg !4848

if.end44.loopexit:                                ; preds = %for.cond
  %last_p.0.lcssa = phi %struct.ssa_use_operand_d* [ %last_p.0, %for.cond ], !dbg !4798
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.0.lcssa, metadata !4793, metadata !DIExpression()), !dbg !4798
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.0.lcssa, metadata !4793, metadata !DIExpression()), !dbg !4798
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.0.lcssa, metadata !4793, metadata !DIExpression()), !dbg !4798
  br label %if.end44, !dbg !4849

if.end44.loopexit1:                               ; preds = %for.cond17
  %last_p.2.lcssa = phi %struct.ssa_use_operand_d* [ %last_p.2, %for.cond17 ], !dbg !4798
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.2.lcssa, metadata !4793, metadata !DIExpression()), !dbg !4798
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.2.lcssa, metadata !4793, metadata !DIExpression()), !dbg !4798
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.2.lcssa, metadata !4793, metadata !DIExpression()), !dbg !4798
  br label %if.end44, !dbg !4849

if.end44:                                         ; preds = %if.end44.loopexit1, %if.end44.loopexit, %if.else31, %if.then35, %if.then39
  %last_p.7 = phi %struct.ssa_use_operand_d* [ %head, %if.else31 ], [ %call40, %if.then39 ], [ %head, %if.then35 ], [ %last_p.0.lcssa, %if.end44.loopexit ], [ %last_p.2.lcssa, %if.end44.loopexit1 ], !dbg !4851
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.7, metadata !4793, metadata !DIExpression()), !dbg !4798
  %prev = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, i32 0, !dbg !4849
  %2 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %prev, align 8, !dbg !4849
  %cmp45 = icmp eq %struct.ssa_use_operand_d* %2, null, !dbg !4852
  br i1 %cmp45, label %if.end49, label %if.then47, !dbg !4853

if.then47:                                        ; preds = %if.end44
  %iter_node48 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, !dbg !4854
  call fastcc void @delink_imm_use(%struct.ssa_use_operand_d* nonnull %iter_node48) #7, !dbg !4855
  br label %if.end49, !dbg !4855

if.end49:                                         ; preds = %if.end44, %if.then47
  %iter_node50 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 2, !dbg !4856
  call fastcc void @link_imm_use_to_list(%struct.ssa_use_operand_d* nonnull %iter_node50, %struct.ssa_use_operand_d* %last_p.7) #7, !dbg !4857
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #8, !dbg !4858
  ret void, !dbg !4858
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @op_iter_init_phiuse(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %phi, i32 %flags) unnamed_addr #0 !dbg !4859 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !4863, metadata !DIExpression()), !dbg !4868
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %phi, metadata !4864, metadata !DIExpression()), !dbg !4868
  call void @llvm.dbg.value(metadata i32 %flags, metadata !4865, metadata !DIExpression()), !dbg !4868
  %call = tail call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %phi) #7, !dbg !4869
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4866, metadata !DIExpression()), !dbg !4868
  tail call fastcc void @clear_and_done_ssa_iter(%struct.ssa_operand_iterator_d* %ptr) #7, !dbg !4870
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !4871
  store i8 0, i8* %done, align 8, !dbg !4872
  %and = and i32 %flags, 5, !dbg !4873
  %cmp = icmp eq i32 %and, 0, !dbg !4873
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4873

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 918, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !4873
  br label %cond.end, !dbg !4873

cond.end:                                         ; preds = %entry, %cond.true
  %call1 = tail call zeroext i8 @is_gimple_reg(%union.tree_node* %call) #6, !dbg !4874
  %tobool = icmp eq i8 %call1, 0, !dbg !4874
  %cond2 = select i1 %tobool, i32 4, i32 1, !dbg !4874
  call void @llvm.dbg.value(metadata i32 %cond2, metadata !4867, metadata !DIExpression()), !dbg !4868
  %and3 = and i32 %cond2, %flags, !dbg !4875
  %cmp4 = icmp eq i32 %and3, 0, !dbg !4877
  br i1 %cmp4, label %if.then, label %if.end, !dbg !4878

if.then:                                          ; preds = %cond.end
  store i8 1, i8* %done, align 8, !dbg !4879
  br label %cleanup, !dbg !4881

if.end:                                           ; preds = %cond.end
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !4882
  store %union.gimple_statement_d* %phi, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !4883
  %call7 = tail call fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %phi) #7, !dbg !4884
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !4885
  store i32 %call7, i32* %num_phi, align 4, !dbg !4886
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !4887
  store i32 2, i32* %iter_type, align 4, !dbg !4888
  %call8 = tail call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* %ptr) #7, !dbg !4889
  br label %cleanup, !dbg !4890

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.ssa_use_operand_d* [ null, %if.then ], [ %call8, %if.end ], !dbg !4868
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !4891
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @move_use_after_head(%struct.ssa_use_operand_d* %use_p, %struct.ssa_use_operand_d* %head, %struct.ssa_use_operand_d* %last_p) unnamed_addr #0 !dbg !4892 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p, metadata !4896, metadata !DIExpression()), !dbg !4899
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %head, metadata !4897, metadata !DIExpression()), !dbg !4899
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p, metadata !4898, metadata !DIExpression()), !dbg !4899
  %cmp = icmp eq %struct.ssa_use_operand_d* %use_p, %head, !dbg !4900
  br i1 %cmp, label %if.end3, label %if.then, !dbg !4902

if.then:                                          ; preds = %entry
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %last_p, i64 0, i32 1, !dbg !4903
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %next, align 8, !dbg !4903
  %cmp1 = icmp eq %struct.ssa_use_operand_d* %0, %use_p, !dbg !4906
  br i1 %cmp1, label %if.end3, label %if.else, !dbg !4907

if.else:                                          ; preds = %if.then
  tail call fastcc void @delink_imm_use(%struct.ssa_use_operand_d* %use_p) #7, !dbg !4908
  tail call fastcc void @link_imm_use_to_list(%struct.ssa_use_operand_d* %use_p, %struct.ssa_use_operand_d* %last_p) #7, !dbg !4910
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p, metadata !4898, metadata !DIExpression()), !dbg !4899
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.else, %if.then
  %last_p.addr.1 = phi %struct.ssa_use_operand_d* [ %last_p, %entry ], [ %use_p, %if.then ], [ %use_p, %if.else ]
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %last_p.addr.1, metadata !4898, metadata !DIExpression()), !dbg !4899
  ret %struct.ssa_use_operand_d* %last_p.addr.1, !dbg !4911
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !4912 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !4916, metadata !DIExpression()), !dbg !4918
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !4919
  %0 = load %struct.use_optype_d*, %struct.use_optype_d** %uses, align 8, !dbg !4919
  %tobool = icmp eq %struct.use_optype_d* %0, null, !dbg !4921
  br i1 %tobool, label %if.end, label %if.then, !dbg !4922

if.then:                                          ; preds = %entry
  %use_ptr = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %0, i64 0, i32 1, !dbg !4923
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_ptr, metadata !4917, metadata !DIExpression()), !dbg !4918
  %1 = bitcast %struct.use_optype_d* %0 to i64*, !dbg !4925
  %2 = load i64, i64* %1, align 8, !dbg !4925
  %3 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !4926
  store i64 %2, i64* %3, align 8, !dbg !4926
  br label %cleanup, !dbg !4927

if.end:                                           ; preds = %entry
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !4928
  %4 = load i32, i32* %phi_i, align 8, !dbg !4928
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !4930
  %5 = load i32, i32* %num_phi, align 4, !dbg !4930
  %cmp = icmp slt i32 %4, %5, !dbg !4931
  br i1 %cmp, label %if.then4, label %if.end6, !dbg !4932

if.then4:                                         ; preds = %if.end
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !4933
  %6 = load %union.gimple_statement_d*, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !4933
  %inc = add nsw i32 %4, 1, !dbg !4933
  store i32 %inc, i32* %phi_i, align 8, !dbg !4933
  %call = tail call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %6, i32 %4) #7, !dbg !4933
  br label %cleanup, !dbg !4935

if.end6:                                          ; preds = %if.end
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !4936
  store i8 1, i8* %done, align 8, !dbg !4937
  br label %cleanup, !dbg !4938

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  %retval.0 = phi %struct.ssa_use_operand_d* [ %use_ptr, %if.then ], [ %call, %if.then4 ], [ null, %if.end6 ], !dbg !4918
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !4939
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @op_iter_init_use(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !4940 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !4942, metadata !DIExpression()), !dbg !4945
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4943, metadata !DIExpression()), !dbg !4945
  call void @llvm.dbg.value(metadata i32 %flags, metadata !4944, metadata !DIExpression()), !dbg !4945
  %0 = and i32 %flags, 11, !dbg !4946
  %1 = icmp eq i32 %0, 1, !dbg !4946
  br i1 %1, label %cond.end, label %cond.true, !dbg !4946

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 771, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !4946
  br label %cond.end, !dbg !4946

cond.end:                                         ; preds = %entry, %cond.true
  tail call fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) #7, !dbg !4947
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !4948
  store i32 2, i32* %iter_type, align 4, !dbg !4949
  %call = tail call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* %ptr) #7, !dbg !4950
  ret %struct.ssa_use_operand_d* %call, !dbg !4951
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @gimple_vuse_op(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4952 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4956, metadata !DIExpression()), !dbg !4958
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #7, !dbg !4959
  %tobool = icmp eq i8 %call, 0, !dbg !4959
  br i1 %tobool, label %cleanup, label %if.end, !dbg !4961

if.end:                                           ; preds = %entry
  %use_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 3, !dbg !4962
  %0 = bitcast %union.tree_node** %use_ops to %struct.use_optype_d**, !dbg !4962
  %1 = load %struct.use_optype_d*, %struct.use_optype_d** %0, align 8, !dbg !4962
  call void @llvm.dbg.value(metadata %struct.use_optype_d* %1, metadata !4957, metadata !DIExpression()), !dbg !4958
  %tobool1 = icmp eq %struct.use_optype_d* %1, null, !dbg !4963
  br i1 %tobool1, label %cleanup, label %land.lhs.true, !dbg !4965

land.lhs.true:                                    ; preds = %if.end
  %use = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %1, i64 0, i32 1, i32 3, !dbg !4966
  %2 = load %union.tree_node**, %union.tree_node*** %use, align 8, !dbg !4966
  %vuse = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, i64 0, i32 0, i32 1, !dbg !4967
  %3 = bitcast %struct.ssa_use_operand_d** %vuse to %union.tree_node**, !dbg !4967
  %cmp = icmp eq %union.tree_node** %2, %3, !dbg !4968
  %use_ptr3 = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %1, i64 0, i32 1, !dbg !4969
  %spec.select = select i1 %cmp, %struct.ssa_use_operand_d* %use_ptr3, %struct.ssa_use_operand_d* null, !dbg !4970
  ret %struct.ssa_use_operand_d* %spec.select, !dbg !4970

cleanup:                                          ; preds = %if.end, %entry
  ret %struct.ssa_use_operand_d* null, !dbg !4971
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4972 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4974, metadata !DIExpression()), !dbg !4975
  %result = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 3, !dbg !4976
  %0 = load %union.tree_node*, %union.tree_node** %result, align 8, !dbg !4976
  ret %union.tree_node* %0, !dbg !4977
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @clear_and_done_ssa_iter(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !4978 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !4982, metadata !DIExpression()), !dbg !4983
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !4984
  store %struct.def_optype_d* null, %struct.def_optype_d** %defs, align 8, !dbg !4985
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !4986
  store %struct.use_optype_d* null, %struct.use_optype_d** %uses, align 8, !dbg !4987
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !4988
  store i32 0, i32* %iter_type, align 4, !dbg !4989
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !4990
  store i32 0, i32* %phi_i, align 8, !dbg !4991
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !4992
  store i32 0, i32* %num_phi, align 4, !dbg !4993
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !4994
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !4995
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !4996
  store i8 1, i8* %done, align 8, !dbg !4997
  ret void, !dbg !4998
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4999 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5001, metadata !DIExpression()), !dbg !5002
  %nargs = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 2, !dbg !5003
  %0 = load i32, i32* %nargs, align 4, !dbg !5003
  ret i32 %0, !dbg !5004
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !5005 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5009, metadata !DIExpression()), !dbg !5011
  call void @llvm.dbg.value(metadata i32 %i, metadata !5010, metadata !DIExpression()), !dbg !5011
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %i) #7, !dbg !5012
  %imm_use = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 0, !dbg !5013
  ret %struct.ssa_use_operand_d* %imm_use, !dbg !5014
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !5015 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5020, metadata !DIExpression()), !dbg !5022
  call void @llvm.dbg.value(metadata i32 %index, metadata !5021, metadata !DIExpression()), !dbg !5022
  %capacity = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 1, !dbg !5023
  %0 = load i32, i32* %capacity, align 8, !dbg !5023
  %cmp = icmp ult i32 %0, %index, !dbg !5023
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !5023

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 3103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !5023
  br label %cond.end, !dbg !5023

cond.end:                                         ; preds = %entry, %cond.true
  %idxprom = zext i32 %index to i64, !dbg !5024
  %arrayidx = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 %idxprom, !dbg !5024
  ret %struct.phi_arg_d* %arrayidx, !dbg !5025
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !5026 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5028, metadata !DIExpression()), !dbg !5030
  call void @llvm.dbg.value(metadata i32 0, metadata !5029, metadata !DIExpression()), !dbg !5030
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 3) #7, !dbg !5031
  ret %union.tree_node* %call, !dbg !5032
}

; Function Attrs: nounwind uwtable
define internal fastcc void @execute_cse_sincos_1(%union.tree_node* %name) unnamed_addr #5 !dbg !5033 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %use_iter = alloca %struct.immediate_use_iterator_d, align 8
  %use_stmt = alloca %union.gimple_statement_d*, align 8
  %stmts = alloca %struct.VEC_gimple_heap*, align 8
  %top_bb = alloca %struct.basic_block_def*, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %tmp57 = alloca %struct.gimple_stmt_iterator, align 8
  %tmp80 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %name, metadata !5037, metadata !DIExpression()), !dbg !5056
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !5057
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !5057
  %1 = bitcast %struct.immediate_use_iterator_d* %use_iter to i8*, !dbg !5058
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %1) #8, !dbg !5058
  %2 = bitcast %union.gimple_statement_d** %use_stmt to i8*, !dbg !5059
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8, !dbg !5059
  call void @llvm.dbg.value(metadata i32 0, metadata !5046, metadata !DIExpression()), !dbg !5056
  call void @llvm.dbg.value(metadata i32 0, metadata !5047, metadata !DIExpression()), !dbg !5056
  call void @llvm.dbg.value(metadata i32 0, metadata !5048, metadata !DIExpression()), !dbg !5056
  %3 = bitcast %struct.VEC_gimple_heap** %stmts to i8*, !dbg !5060
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8, !dbg !5060
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap* null, metadata !5049, metadata !DIExpression()), !dbg !5056
  store %struct.VEC_gimple_heap* null, %struct.VEC_gimple_heap** %stmts, align 8, !dbg !5061
  %4 = bitcast %struct.basic_block_def** %top_bb to i8*, !dbg !5062
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #8, !dbg !5062
  call void @llvm.dbg.value(metadata %struct.basic_block_def* null, metadata !5050, metadata !DIExpression()), !dbg !5056
  store %struct.basic_block_def* null, %struct.basic_block_def** %top_bb, align 8, !dbg !5063
  %type1 = getelementptr inbounds %union.tree_node, %union.tree_node* %name, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5064
  %5 = load %union.tree_node*, %union.tree_node** %type1, align 8, !dbg !5064
  call void @llvm.dbg.value(metadata %union.tree_node* %5, metadata !5042, metadata !DIExpression()), !dbg !5056
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %use_iter, metadata !5039, metadata !DIExpression(DW_OP_deref)), !dbg !5056
  %call = call fastcc %union.gimple_statement_d* @first_imm_use_stmt(%struct.immediate_use_iterator_d* nonnull %use_iter, %union.tree_node* %name) #7, !dbg !5065
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !5044, metadata !DIExpression()), !dbg !5056
  br label %for.cond, !dbg !5065

for.cond:                                         ; preds = %for.inc, %entry
  %6 = phi %union.gimple_statement_d* [ %call, %entry ], [ %call28, %for.inc ], !dbg !5067
  %seen_sin.0 = phi i32 [ 0, %entry ], [ %seen_sin.2, %for.inc ], !dbg !5068
  %seen_cos.0 = phi i32 [ 0, %entry ], [ %seen_cos.2, %for.inc ], !dbg !5069
  %seen_cexpi.0 = phi i32 [ 0, %entry ], [ %seen_cexpi.2, %for.inc ], !dbg !5070
  store %union.gimple_statement_d* %6, %union.gimple_statement_d** %use_stmt, align 8, !dbg !5067
  call void @llvm.dbg.value(metadata i32 %seen_cexpi.0, metadata !5048, metadata !DIExpression()), !dbg !5056
  call void @llvm.dbg.value(metadata i32 %seen_cos.0, metadata !5046, metadata !DIExpression()), !dbg !5056
  call void @llvm.dbg.value(metadata i32 %seen_sin.0, metadata !5047, metadata !DIExpression()), !dbg !5056
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %use_iter, metadata !5039, metadata !DIExpression(DW_OP_deref)), !dbg !5056
  %call2 = call fastcc zeroext i8 @end_imm_use_stmt_p(%struct.immediate_use_iterator_d* nonnull %use_iter) #7, !dbg !5071
  %tobool = icmp eq i8 %call2, 0, !dbg !5071
  br i1 %tobool, label %for.body, label %for.end, !dbg !5065

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %6, metadata !5044, metadata !DIExpression()), !dbg !5056
  %call3 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %6) #7, !dbg !5073
  %cmp = icmp eq i32 %call3, 8, !dbg !5076
  br i1 %cmp, label %lor.lhs.false, label %for.inc, !dbg !5077

lor.lhs.false:                                    ; preds = %for.body
  %7 = load %union.gimple_statement_d*, %union.gimple_statement_d** %use_stmt, align 8, !dbg !5078
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %7, metadata !5044, metadata !DIExpression()), !dbg !5056
  %call4 = call fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %7) #7, !dbg !5079
  %tobool5 = icmp eq %union.tree_node* %call4, null, !dbg !5079
  br i1 %tobool5, label %for.inc, label %lor.lhs.false6, !dbg !5080

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %8 = load %union.gimple_statement_d*, %union.gimple_statement_d** %use_stmt, align 8, !dbg !5081
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %8, metadata !5044, metadata !DIExpression()), !dbg !5056
  %call7 = call fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %8) #7, !dbg !5082
  call void @llvm.dbg.value(metadata %union.tree_node* %call7, metadata !5040, metadata !DIExpression()), !dbg !5056
  %tobool8 = icmp eq %union.tree_node* %call7, null, !dbg !5083
  br i1 %tobool8, label %for.inc, label %lor.lhs.false9, !dbg !5084

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %built_in_class = getelementptr inbounds %union.tree_node, %union.tree_node* %call7, i64 0, i32 0, i32 5, !dbg !5085
  %bf.load = load i32, i32* %built_in_class, align 8, !dbg !5085
  %bf.clear = and i32 %bf.load, 6144, !dbg !5085
  %cmp10 = icmp eq i32 %bf.clear, 6144, !dbg !5086
  br i1 %cmp10, label %if.end, label %for.inc, !dbg !5087

if.end:                                           ; preds = %lor.lhs.false9
  %bf.clear13 = and i32 %bf.load, 2047, !dbg !5088
  switch i32 %bf.clear13, label %for.inc [
    i32 30, label %sw.bb
    i32 31, label %sw.bb
    i32 35, label %sw.bb
    i32 219, label %sw.bb16
    i32 223, label %sw.bb16
    i32 227, label %sw.bb16
    i32 285, label %sw.bb22
    i32 286, label %sw.bb22
    i32 287, label %sw.bb22
  ], !dbg !5089

sw.bb:                                            ; preds = %if.end, %if.end, %if.end
  %9 = load %union.gimple_statement_d*, %union.gimple_statement_d** %use_stmt, align 8, !dbg !5090
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %9, metadata !5044, metadata !DIExpression()), !dbg !5056
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap** %stmts, metadata !5049, metadata !DIExpression(DW_OP_deref)), !dbg !5056
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %top_bb, metadata !5050, metadata !DIExpression(DW_OP_deref)), !dbg !5056
  %call14 = call fastcc zeroext i8 @maybe_record_sincos(%struct.VEC_gimple_heap** nonnull %stmts, %struct.basic_block_def** nonnull %top_bb, %union.gimple_statement_d* %9) #7, !dbg !5092
  %tobool15 = icmp ne i8 %call14, 0, !dbg !5092
  %cond = zext i1 %tobool15 to i32, !dbg !5092
  %or = or i32 %seen_cos.0, %cond, !dbg !5093
  call void @llvm.dbg.value(metadata i32 %or, metadata !5046, metadata !DIExpression()), !dbg !5056
  br label %for.inc, !dbg !5094

sw.bb16:                                          ; preds = %if.end, %if.end, %if.end
  %10 = load %union.gimple_statement_d*, %union.gimple_statement_d** %use_stmt, align 8, !dbg !5095
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %10, metadata !5044, metadata !DIExpression()), !dbg !5056
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap** %stmts, metadata !5049, metadata !DIExpression(DW_OP_deref)), !dbg !5056
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %top_bb, metadata !5050, metadata !DIExpression(DW_OP_deref)), !dbg !5056
  %call17 = call fastcc zeroext i8 @maybe_record_sincos(%struct.VEC_gimple_heap** nonnull %stmts, %struct.basic_block_def** nonnull %top_bb, %union.gimple_statement_d* %10) #7, !dbg !5096
  %tobool19 = icmp ne i8 %call17, 0, !dbg !5096
  %cond20 = zext i1 %tobool19 to i32, !dbg !5096
  %or21 = or i32 %seen_sin.0, %cond20, !dbg !5097
  call void @llvm.dbg.value(metadata i32 %or21, metadata !5047, metadata !DIExpression()), !dbg !5056
  br label %for.inc, !dbg !5098

sw.bb22:                                          ; preds = %if.end, %if.end, %if.end
  %11 = load %union.gimple_statement_d*, %union.gimple_statement_d** %use_stmt, align 8, !dbg !5099
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %11, metadata !5044, metadata !DIExpression()), !dbg !5056
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap** %stmts, metadata !5049, metadata !DIExpression(DW_OP_deref)), !dbg !5056
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %top_bb, metadata !5050, metadata !DIExpression(DW_OP_deref)), !dbg !5056
  %call23 = call fastcc zeroext i8 @maybe_record_sincos(%struct.VEC_gimple_heap** nonnull %stmts, %struct.basic_block_def** nonnull %top_bb, %union.gimple_statement_d* %11) #7, !dbg !5100
  %tobool25 = icmp ne i8 %call23, 0, !dbg !5100
  %cond26 = zext i1 %tobool25 to i32, !dbg !5100
  %or27 = or i32 %seen_cexpi.0, %cond26, !dbg !5101
  call void @llvm.dbg.value(metadata i32 %or27, metadata !5048, metadata !DIExpression()), !dbg !5056
  br label %for.inc, !dbg !5102

for.inc:                                          ; preds = %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false, %for.body, %sw.bb, %sw.bb16, %sw.bb22, %if.end
  %seen_sin.2 = phi i32 [ %seen_sin.0, %lor.lhs.false9 ], [ %seen_sin.0, %lor.lhs.false6 ], [ %seen_sin.0, %lor.lhs.false ], [ %seen_sin.0, %for.body ], [ %seen_sin.0, %sw.bb22 ], [ %or21, %sw.bb16 ], [ %seen_sin.0, %sw.bb ], [ %seen_sin.0, %if.end ], !dbg !5068
  %seen_cos.2 = phi i32 [ %seen_cos.0, %lor.lhs.false9 ], [ %seen_cos.0, %lor.lhs.false6 ], [ %seen_cos.0, %lor.lhs.false ], [ %seen_cos.0, %for.body ], [ %seen_cos.0, %sw.bb22 ], [ %seen_cos.0, %sw.bb16 ], [ %or, %sw.bb ], [ %seen_cos.0, %if.end ], !dbg !5069
  %seen_cexpi.2 = phi i32 [ %seen_cexpi.0, %lor.lhs.false9 ], [ %seen_cexpi.0, %lor.lhs.false6 ], [ %seen_cexpi.0, %lor.lhs.false ], [ %seen_cexpi.0, %for.body ], [ %or27, %sw.bb22 ], [ %seen_cexpi.0, %sw.bb16 ], [ %seen_cexpi.0, %sw.bb ], [ %seen_cexpi.0, %if.end ], !dbg !5070
  call void @llvm.dbg.value(metadata i32 %seen_cexpi.2, metadata !5048, metadata !DIExpression()), !dbg !5056
  call void @llvm.dbg.value(metadata i32 %seen_cos.2, metadata !5046, metadata !DIExpression()), !dbg !5056
  call void @llvm.dbg.value(metadata i32 %seen_sin.2, metadata !5047, metadata !DIExpression()), !dbg !5056
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %use_iter, metadata !5039, metadata !DIExpression(DW_OP_deref)), !dbg !5056
  %call28 = call fastcc %union.gimple_statement_d* @next_imm_use_stmt(%struct.immediate_use_iterator_d* nonnull %use_iter) #7, !dbg !5071
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call28, metadata !5044, metadata !DIExpression()), !dbg !5056
  br label %for.cond, !dbg !5071, !llvm.loop !5103

for.end:                                          ; preds = %for.cond
  %seen_sin.0.lcssa = phi i32 [ %seen_sin.0, %for.cond ], !dbg !5068
  %seen_cos.0.lcssa = phi i32 [ %seen_cos.0, %for.cond ], !dbg !5069
  %seen_cexpi.0.lcssa = phi i32 [ %seen_cexpi.0, %for.cond ], !dbg !5070
  call void @llvm.dbg.value(metadata i32 %seen_sin.0.lcssa, metadata !5047, metadata !DIExpression()), !dbg !5056
  call void @llvm.dbg.value(metadata i32 %seen_cos.0.lcssa, metadata !5046, metadata !DIExpression()), !dbg !5056
  call void @llvm.dbg.value(metadata i32 %seen_cexpi.0.lcssa, metadata !5048, metadata !DIExpression()), !dbg !5056
  call void @llvm.dbg.value(metadata i32 %seen_sin.0.lcssa, metadata !5047, metadata !DIExpression()), !dbg !5056
  call void @llvm.dbg.value(metadata i32 %seen_cos.0.lcssa, metadata !5046, metadata !DIExpression()), !dbg !5056
  call void @llvm.dbg.value(metadata i32 %seen_cexpi.0.lcssa, metadata !5048, metadata !DIExpression()), !dbg !5056
  call void @llvm.dbg.value(metadata i32 %seen_sin.0.lcssa, metadata !5047, metadata !DIExpression()), !dbg !5056
  call void @llvm.dbg.value(metadata i32 %seen_cos.0.lcssa, metadata !5046, metadata !DIExpression()), !dbg !5056
  call void @llvm.dbg.value(metadata i32 %seen_cexpi.0.lcssa, metadata !5048, metadata !DIExpression()), !dbg !5056
  %add = add nsw i32 %seen_cos.0.lcssa, %seen_sin.0.lcssa, !dbg !5105
  %add29 = add nsw i32 %add, %seen_cexpi.0.lcssa, !dbg !5107
  %cmp30 = icmp slt i32 %add29, 2, !dbg !5108
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !5109

if.then32:                                        ; preds = %for.end
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap** %stmts, metadata !5049, metadata !DIExpression(DW_OP_deref)), !dbg !5056
  call fastcc void @VEC_gimple_heap_free(%struct.VEC_gimple_heap** nonnull %stmts) #7, !dbg !5110
  br label %cleanup, !dbg !5112

if.end33:                                         ; preds = %for.end
  %call34 = call %union.tree_node* @mathfn_built_in(%union.tree_node* %5, i32 285) #6, !dbg !5113
  call void @llvm.dbg.value(metadata %union.tree_node* %call34, metadata !5040, metadata !DIExpression()), !dbg !5056
  %tobool35 = icmp eq %union.tree_node* %call34, null, !dbg !5114
  br i1 %tobool35, label %cleanup, label %if.end37, !dbg !5116

if.end37:                                         ; preds = %if.end33
  %type39 = getelementptr inbounds %union.tree_node, %union.tree_node* %call34, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5117
  %12 = bitcast %union.tree_node** %type39 to %struct.tree_common**, !dbg !5117
  %13 = load %struct.tree_common*, %struct.tree_common** %12, align 8, !dbg !5117
  %type41 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %13, i64 0, i32 2, !dbg !5117
  %14 = load %union.tree_node*, %union.tree_node** %type41, align 8, !dbg !5117
  %call42 = call %union.tree_node* @make_rename_temp(%union.tree_node* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !5118
  call void @llvm.dbg.value(metadata %union.tree_node* %call42, metadata !5041, metadata !DIExpression()), !dbg !5056
  %call43 = call %union.gimple_statement_d* (%union.tree_node*, i32, ...) @gimple_build_call(%union.tree_node* nonnull %call34, i32 1, %union.tree_node* %name) #6, !dbg !5119
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call43, metadata !5045, metadata !DIExpression()), !dbg !5056
  call fastcc void @gimple_call_set_lhs(%union.gimple_statement_d* %call43, %union.tree_node* %call42) #7, !dbg !5120
  %def_stmt44 = getelementptr inbounds %union.tree_node, %union.tree_node* %name, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !5121
  %15 = bitcast %union.tree_node** %def_stmt44 to %union.gimple_statement_d**, !dbg !5121
  %16 = load %union.gimple_statement_d*, %union.gimple_statement_d** %15, align 8, !dbg !5121
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %16, metadata !5043, metadata !DIExpression()), !dbg !5056
  %17 = getelementptr inbounds %union.tree_node, %union.tree_node* %name, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !5122
  %bf.load45 = load i64, i64* %17, align 8, !dbg !5122
  %bf.cast1 = and i64 %bf.load45, 4294967296, !dbg !5122
  %tobool48 = icmp eq i64 %bf.cast1, 0, !dbg !5122
  br i1 %tobool48, label %land.lhs.true, label %if.else, !dbg !5124

land.lhs.true:                                    ; preds = %if.end37
  %call49 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %16) #7, !dbg !5125
  %cmp50 = icmp eq i32 %call49, 16, !dbg !5126
  br i1 %cmp50, label %if.else, label %land.lhs.true52, !dbg !5127

land.lhs.true52:                                  ; preds = %land.lhs.true
  %call53 = call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %16) #7, !dbg !5128
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %top_bb, align 8, !dbg !5129
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %18, metadata !5050, metadata !DIExpression()), !dbg !5056
  %cmp54 = icmp eq %struct.basic_block_def* %call53, %18, !dbg !5130
  br i1 %cmp54, label %if.then56, label %if.else, !dbg !5131

if.then56:                                        ; preds = %land.lhs.true52
  %19 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !5132
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %19) #8, !dbg !5132
  call void @gsi_for_stmt(%struct.gimple_stmt_iterator* nonnull sret %tmp, %union.gimple_statement_d* %16) #6, !dbg !5132
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %19, i64 24, i1 false), !dbg !5132
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %19) #8, !dbg !5132
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5038, metadata !DIExpression(DW_OP_deref)), !dbg !5056
  call void @gsi_insert_after(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call43, i32 1) #6, !dbg !5134
  br label %if.end58, !dbg !5135

if.else:                                          ; preds = %land.lhs.true, %if.end37, %land.lhs.true52
  %20 = bitcast %struct.gimple_stmt_iterator* %tmp57 to i8*, !dbg !5136
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %20) #8, !dbg !5136
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %top_bb, align 8, !dbg !5138
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %21, metadata !5050, metadata !DIExpression()), !dbg !5056
  call fastcc void @gsi_after_labels(%struct.gimple_stmt_iterator* nonnull sret %tmp57, %struct.basic_block_def* %21) #7, !dbg !5136
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %20, i64 24, i1 false), !dbg !5136
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %20) #8, !dbg !5136
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5038, metadata !DIExpression(DW_OP_deref)), !dbg !5056
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call43, i32 1) #6, !dbg !5139
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.then56
  call fastcc void @update_stmt(%union.gimple_statement_d* %call43) #7, !dbg !5140
  call void @llvm.dbg.value(metadata i32 0, metadata !5051, metadata !DIExpression()), !dbg !5056
  %22 = bitcast %struct.gimple_stmt_iterator* %tmp80 to i8*, !dbg !5141
  br label %for.cond59, !dbg !5142

for.cond59:                                       ; preds = %sw.epilog77, %if.end58
  %i.0 = phi i32 [ 0, %if.end58 ], [ %inc, %sw.epilog77 ], !dbg !5143
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !5051, metadata !DIExpression()), !dbg !5056
  %23 = load %struct.VEC_gimple_heap*, %struct.VEC_gimple_heap** %stmts, align 8, !dbg !5144
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap* %23, metadata !5049, metadata !DIExpression()), !dbg !5056
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap* %23, metadata !5049, metadata !DIExpression()), !dbg !5056
  %base61 = getelementptr inbounds %struct.VEC_gimple_heap, %struct.VEC_gimple_heap* %23, i64 0, i32 0, !dbg !5144
  call void @llvm.dbg.value(metadata %union.gimple_statement_d** %use_stmt, metadata !5044, metadata !DIExpression(DW_OP_deref)), !dbg !5056
  %call63 = call fastcc i32 @VEC_gimple_base_iterate(%struct.VEC_gimple_base* %base61, i32 %i.0, %union.gimple_statement_d** nonnull %use_stmt) #7, !dbg !5144
  %tobool64 = icmp eq i32 %call63, 0, !dbg !5145
  br i1 %tobool64, label %for.end82, label %for.body65, !dbg !5145

for.body65:                                       ; preds = %for.cond59
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !5052, metadata !DIExpression()), !dbg !5141
  %24 = load %union.gimple_statement_d*, %union.gimple_statement_d** %use_stmt, align 8, !dbg !5146
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %24, metadata !5044, metadata !DIExpression()), !dbg !5056
  %call66 = call fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %24) #7, !dbg !5147
  call void @llvm.dbg.value(metadata %union.tree_node* %call66, metadata !5040, metadata !DIExpression()), !dbg !5056
  %function_code68 = getelementptr inbounds %union.tree_node, %union.tree_node* %call66, i64 0, i32 0, i32 5, !dbg !5148
  %bf.load69 = load i32, i32* %function_code68, align 8, !dbg !5148
  %bf.clear70 = and i32 %bf.load69, 2047, !dbg !5148
  switch i32 %bf.clear70, label %sw.default76 [
    i32 30, label %sw.bb71
    i32 31, label %sw.bb71
    i32 35, label %sw.bb71
    i32 219, label %sw.bb73
    i32 223, label %sw.bb73
    i32 227, label %sw.bb73
    i32 285, label %sw.epilog77
    i32 286, label %sw.epilog77
    i32 287, label %sw.epilog77
  ], !dbg !5149

sw.bb71:                                          ; preds = %for.body65, %for.body65, %for.body65
  %call72 = call %union.tree_node* @fold_build1_stat_loc(i32 0, i32 43, %union.tree_node* %5, %union.tree_node* %call42) #6, !dbg !5150
  call void @llvm.dbg.value(metadata %union.tree_node* %call72, metadata !5052, metadata !DIExpression()), !dbg !5141
  br label %sw.epilog77, !dbg !5152

sw.bb73:                                          ; preds = %for.body65, %for.body65, %for.body65
  %call74 = call %union.tree_node* @fold_build1_stat_loc(i32 0, i32 44, %union.tree_node* %5, %union.tree_node* %call42) #6, !dbg !5153
  call void @llvm.dbg.value(metadata %union.tree_node* %call74, metadata !5052, metadata !DIExpression()), !dbg !5141
  br label %sw.epilog77, !dbg !5154

sw.default76:                                     ; preds = %for.body65
  call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 733, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !5155
  br label %sw.epilog77, !dbg !5156

sw.epilog77:                                      ; preds = %for.body65, %for.body65, %for.body65, %sw.default76, %sw.bb73, %sw.bb71
  %rhs.0 = phi %union.tree_node* [ null, %sw.default76 ], [ %call74, %sw.bb73 ], [ %call72, %sw.bb71 ], [ %call42, %for.body65 ], [ %call42, %for.body65 ], [ %call42, %for.body65 ], !dbg !5141
  call void @llvm.dbg.value(metadata %union.tree_node* %rhs.0, metadata !5052, metadata !DIExpression()), !dbg !5141
  %25 = load %union.gimple_statement_d*, %union.gimple_statement_d** %use_stmt, align 8, !dbg !5157
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %25, metadata !5044, metadata !DIExpression()), !dbg !5056
  %call78 = call fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %25) #7, !dbg !5157
  %call79 = call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %call78, %union.tree_node* %rhs.0) #6, !dbg !5157
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call79, metadata !5045, metadata !DIExpression()), !dbg !5056
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %22) #8, !dbg !5158
  %26 = load %union.gimple_statement_d*, %union.gimple_statement_d** %use_stmt, align 8, !dbg !5159
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %26, metadata !5044, metadata !DIExpression()), !dbg !5056
  call void @gsi_for_stmt(%struct.gimple_stmt_iterator* nonnull sret %tmp80, %union.gimple_statement_d* %26) #6, !dbg !5158
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %22, i64 24, i1 false), !dbg !5158
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %22) #8, !dbg !5158
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5038, metadata !DIExpression(DW_OP_deref)), !dbg !5056
  call void @gsi_insert_after(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %call79, i32 1) #6, !dbg !5160
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !5038, metadata !DIExpression(DW_OP_deref)), !dbg !5056
  call void @gsi_remove(%struct.gimple_stmt_iterator* nonnull %gsi, i8 zeroext 1) #6, !dbg !5161
  %inc = add nuw nsw i32 %i.0, 1, !dbg !5162
  call void @llvm.dbg.value(metadata i32 %inc, metadata !5051, metadata !DIExpression()), !dbg !5056
  br label %for.cond59, !dbg !5163, !llvm.loop !5164

for.end82:                                        ; preds = %for.cond59
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap** %stmts, metadata !5049, metadata !DIExpression(DW_OP_deref)), !dbg !5056
  call fastcc void @VEC_gimple_heap_free(%struct.VEC_gimple_heap** nonnull %stmts) #7, !dbg !5166
  br label %cleanup, !dbg !5167

cleanup:                                          ; preds = %if.end33, %for.end82, %if.then32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #8, !dbg !5167
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8, !dbg !5167
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8, !dbg !5167
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %1) #8, !dbg !5167
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !5167
  ret void, !dbg !5167
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @maybe_record_sincos(%struct.VEC_gimple_heap** %stmts, %struct.basic_block_def** %top_bb, %union.gimple_statement_d* %use_stmt) unnamed_addr #5 !dbg !5168 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap** %stmts, metadata !5174, metadata !DIExpression()), !dbg !5178
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %top_bb, metadata !5175, metadata !DIExpression()), !dbg !5178
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %use_stmt, metadata !5176, metadata !DIExpression()), !dbg !5178
  %call = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %use_stmt) #7, !dbg !5179
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !5177, metadata !DIExpression()), !dbg !5178
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %top_bb, align 8, !dbg !5180
  %tobool = icmp eq %struct.basic_block_def* %0, null, !dbg !5180
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !5182

land.lhs.true:                                    ; preds = %entry
  %cmp = icmp eq %struct.basic_block_def* %0, %call, !dbg !5183
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5184

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call1 = tail call zeroext i8 @dominated_by_p(i32 1, %struct.basic_block_def* %call, %struct.basic_block_def* nonnull %0) #6, !dbg !5185
  %tobool2 = icmp eq i8 %call1, 0, !dbg !5185
  br i1 %tobool2, label %lor.lhs.false.if.else_crit_edge, label %if.then, !dbg !5186

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  %.pre = load %struct.basic_block_def*, %struct.basic_block_def** %top_bb, align 8, !dbg !5187
  br label %if.else, !dbg !5186

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %call3 = tail call fastcc %union.gimple_statement_d** @VEC_gimple_heap_safe_push(%struct.VEC_gimple_heap** %stmts, %union.gimple_statement_d* %use_stmt) #7, !dbg !5189
  br label %cleanup, !dbg !5189

if.else:                                          ; preds = %lor.lhs.false.if.else_crit_edge, %entry
  %1 = phi %struct.basic_block_def* [ %.pre, %lor.lhs.false.if.else_crit_edge ], [ null, %entry ], !dbg !5187
  %tobool4 = icmp eq %struct.basic_block_def* %1, null, !dbg !5187
  br i1 %tobool4, label %if.then9, label %lor.lhs.false5, !dbg !5190

lor.lhs.false5:                                   ; preds = %if.else
  %call6 = tail call zeroext i8 @dominated_by_p(i32 1, %struct.basic_block_def* nonnull %1, %struct.basic_block_def* %call) #6, !dbg !5191
  %tobool8 = icmp eq i8 %call6, 0, !dbg !5191
  br i1 %tobool8, label %cleanup, label %if.then9, !dbg !5192

if.then9:                                         ; preds = %lor.lhs.false5, %if.else
  %call10 = tail call fastcc %union.gimple_statement_d** @VEC_gimple_heap_safe_push(%struct.VEC_gimple_heap** %stmts, %union.gimple_statement_d* %use_stmt) #7, !dbg !5193
  store %struct.basic_block_def* %call, %struct.basic_block_def** %top_bb, align 8, !dbg !5195
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false5, %if.then, %if.then9
  %retval.0 = phi i8 [ 0, %lor.lhs.false5 ], [ 1, %if.then9 ], [ 1, %if.then ], !dbg !5178
  ret i8 %retval.0, !dbg !5196
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_gimple_heap_free(%struct.VEC_gimple_heap** %vec_) unnamed_addr #0 !dbg !5197 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap** %vec_, metadata !5201, metadata !DIExpression()), !dbg !5202
  %0 = load %struct.VEC_gimple_heap*, %struct.VEC_gimple_heap** %vec_, align 8, !dbg !5203
  %tobool = icmp eq %struct.VEC_gimple_heap* %0, null, !dbg !5203
  br i1 %tobool, label %if.end, label %if.then, !dbg !5205

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_gimple_heap* %0 to i8*, !dbg !5205
  tail call void @free(i8* nonnull %1) #6, !dbg !5203
  br label %if.end, !dbg !5203

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_gimple_heap* null, %struct.VEC_gimple_heap** %vec_, align 8, !dbg !5205
  ret void, !dbg !5205
}

declare dso_local %union.tree_node* @mathfn_built_in(%union.tree_node*, i32) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @gimple_build_call(%union.tree_node*, i32, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_call_set_lhs(%union.gimple_statement_d* %gs, %union.tree_node* %lhs) unnamed_addr #0 !dbg !5206 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5208, metadata !DIExpression()), !dbg !5210
  call void @llvm.dbg.value(metadata %union.tree_node* %lhs, metadata !5209, metadata !DIExpression()), !dbg !5210
  tail call fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 0, %union.tree_node* %lhs) #7, !dbg !5211
  %tobool = icmp eq %union.tree_node* %lhs, null, !dbg !5212
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !5214

land.lhs.true:                                    ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %lhs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !5215
  %bf.load = load i64, i64* %0, align 8, !dbg !5215
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !5216
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !5216
  br i1 %cmp, label %if.then, label %if.end, !dbg !5217

if.then:                                          ; preds = %land.lhs.true
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %lhs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !5218
  %1 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !5218
  store %union.gimple_statement_d* %gs, %union.gimple_statement_d** %1, align 8, !dbg !5219
  br label %if.end, !dbg !5218

if.end:                                           ; preds = %entry, %if.then, %land.lhs.true
  ret void, !dbg !5220
}

declare dso_local void @gsi_for_stmt(%struct.gimple_stmt_iterator* sret, %union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_gimple_base_iterate(%struct.VEC_gimple_base* %vec_, i32 %ix_, %union.gimple_statement_d** %ptr) unnamed_addr #0 !dbg !5221 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_base* %vec_, metadata !5228, metadata !DIExpression()), !dbg !5231
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !5229, metadata !DIExpression()), !dbg !5231
  call void @llvm.dbg.value(metadata %union.gimple_statement_d** %ptr, metadata !5230, metadata !DIExpression()), !dbg !5231
  %tobool = icmp eq %struct.VEC_gimple_base* %vec_, null, !dbg !5232
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !5232

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 0, !dbg !5232
  %0 = load i32, i32* %num, align 8, !dbg !5232
  %cmp = icmp ugt i32 %0, %ix_, !dbg !5232
  br i1 %cmp, label %if.then, label %if.else, !dbg !5234

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !5235
  %arrayidx = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !5235
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %arrayidx, align 8, !dbg !5235
  br label %return, !dbg !5235

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !5237

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %union.gimple_statement_d* [ null, %if.else ], [ %1, %if.then ], !dbg !5239
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !5239
  store %union.gimple_statement_d* %storemerge, %union.gimple_statement_d** %ptr, align 8, !dbg !5239
  ret i32 %retval.0, !dbg !5234
}

declare dso_local %union.tree_node* @fold_build1_stat_loc(i32, i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local void @gsi_remove(%struct.gimple_stmt_iterator*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d** @VEC_gimple_heap_safe_push(%struct.VEC_gimple_heap** %vec_, %union.gimple_statement_d* %obj_) unnamed_addr #0 !dbg !5240 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap** %vec_, metadata !5244, metadata !DIExpression()), !dbg !5246
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %obj_, metadata !5245, metadata !DIExpression()), !dbg !5246
  %call = tail call fastcc i32 @VEC_gimple_heap_reserve(%struct.VEC_gimple_heap** %vec_, i32 1) #7, !dbg !5247
  %0 = load %struct.VEC_gimple_heap*, %struct.VEC_gimple_heap** %vec_, align 8, !dbg !5247
  %tobool = icmp eq %struct.VEC_gimple_heap* %0, null, !dbg !5247
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5247

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_gimple_heap, %struct.VEC_gimple_heap* %0, i64 0, i32 0, !dbg !5247
  br label %cond.end, !dbg !5247

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_gimple_base* [ %base, %cond.true ], [ null, %entry ], !dbg !5247
  %call1 = tail call fastcc %union.gimple_statement_d** @VEC_gimple_base_quick_push(%struct.VEC_gimple_base* %cond, %union.gimple_statement_d* %obj_) #7, !dbg !5247
  ret %union.gimple_statement_d** %call1, !dbg !5247
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_gimple_heap_reserve(%struct.VEC_gimple_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !5248 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap** %vec_, metadata !5252, metadata !DIExpression()), !dbg !5255
  call void @llvm.dbg.value(metadata i32 1, metadata !5253, metadata !DIExpression()), !dbg !5255
  %0 = load %struct.VEC_gimple_heap*, %struct.VEC_gimple_heap** %vec_, align 8, !dbg !5256
  %tobool = icmp eq %struct.VEC_gimple_heap* %0, null, !dbg !5256
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5256

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_gimple_heap, %struct.VEC_gimple_heap* %0, i64 0, i32 0, !dbg !5256
  br label %cond.end, !dbg !5256

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_gimple_base* [ %base, %cond.true ], [ null, %entry ], !dbg !5256
  %call = tail call fastcc i32 @VEC_gimple_base_space(%struct.VEC_gimple_base* %cond, i32 1) #7, !dbg !5256
  %tobool1 = icmp eq i32 %call, 0, !dbg !5256
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !5256
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !5254, metadata !DIExpression()), !dbg !5255
  br i1 %tobool1, label %if.then, label %if.end, !dbg !5256

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_gimple_heap** %vec_ to i8**, !dbg !5257
  %2 = load i8*, i8** %1, align 8, !dbg !5257
  %call3 = tail call i8* @vec_heap_p_reserve(i8* %2, i32 1) #6, !dbg !5257
  store i8* %call3, i8** %1, align 8, !dbg !5257
  br label %if.end, !dbg !5257

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !5256
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d** @VEC_gimple_base_quick_push(%struct.VEC_gimple_base* %vec_, %union.gimple_statement_d* %obj_) unnamed_addr #0 !dbg !5259 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_base* %vec_, metadata !5264, metadata !DIExpression()), !dbg !5267
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %obj_, metadata !5265, metadata !DIExpression()), !dbg !5267
  %num1 = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 0, !dbg !5268
  %0 = load i32, i32* %num1, align 8, !dbg !5268
  %inc = add i32 %0, 1, !dbg !5268
  store i32 %inc, i32* %num1, align 8, !dbg !5268
  %idxprom = zext i32 %0 to i64, !dbg !5268
  %arrayidx = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !5268
  call void @llvm.dbg.value(metadata %union.gimple_statement_d** %arrayidx, metadata !5266, metadata !DIExpression()), !dbg !5267
  store %union.gimple_statement_d* %obj_, %union.gimple_statement_d** %arrayidx, align 8, !dbg !5268
  ret %union.gimple_statement_d** %arrayidx, !dbg !5268
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_gimple_base_space(%struct.VEC_gimple_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !5269 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_base* %vec_, metadata !5273, metadata !DIExpression()), !dbg !5275
  call void @llvm.dbg.value(metadata i32 1, metadata !5274, metadata !DIExpression()), !dbg !5275
  %tobool = icmp eq %struct.VEC_gimple_base* %vec_, null, !dbg !5276
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !5276

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 1, !dbg !5276
  %0 = load i32, i32* %alloc, align 4, !dbg !5276
  %num = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 0, !dbg !5276
  %1 = load i32, i32* %num, align 8, !dbg !5276
  %cmp1 = icmp ne i32 %0, %1, !dbg !5276
  %phitmp = zext i1 %cmp1 to i32, !dbg !5276
  br label %cond.end, !dbg !5276

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5276

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !5276
}

declare dso_local i8* @vec_heap_p_reserve(i8*, i32) local_unnamed_addr #2

declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_expr_type(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !5277 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !5279, metadata !DIExpression()), !dbg !5284
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #7, !dbg !5285
  call void @llvm.dbg.value(metadata i32 %call, metadata !5280, metadata !DIExpression()), !dbg !5284
  switch i32 %call, label %if.else14 [
    i32 8, label %if.then3
    i32 6, label %if.else
    i32 1, label %if.then13
  ], !dbg !5286

if.then3:                                         ; preds = %entry
  %call4 = tail call fastcc %union.tree_node* @gimple_call_return_type(%union.gimple_statement_d* %stmt) #7, !dbg !5287
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !5281, metadata !DIExpression()), !dbg !5289
  br label %cleanup, !dbg !5290

if.else:                                          ; preds = %entry
  %call5 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %stmt) #7, !dbg !5291
  %cond = icmp eq i32 %call5, 66, !dbg !5292
  br i1 %cond, label %sw.bb, label %sw.default, !dbg !5292

sw.bb:                                            ; preds = %if.else
  %call6 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %stmt) #7, !dbg !5293
  %type7 = getelementptr inbounds %union.tree_node, %union.tree_node* %call6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5293
  %0 = load %union.tree_node*, %union.tree_node** %type7, align 8, !dbg !5293
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !5281, metadata !DIExpression()), !dbg !5289
  br label %cleanup, !dbg !5295

sw.default:                                       ; preds = %if.else
  %call8 = tail call %union.tree_node* @gimple_get_lhs(%union.gimple_statement_d* %stmt) #6, !dbg !5296
  %type10 = getelementptr inbounds %union.tree_node, %union.tree_node* %call8, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5296
  %1 = load %union.tree_node*, %union.tree_node** %type10, align 8, !dbg !5296
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !5281, metadata !DIExpression()), !dbg !5289
  br label %cleanup, !dbg !5297

if.then13:                                        ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !5298
  br label %cleanup, !dbg !5300

if.else14:                                        ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 38), align 16, !dbg !5301
  br label %cleanup, !dbg !5302

cleanup:                                          ; preds = %if.then3, %sw.default, %sw.bb, %if.else14, %if.then13
  %retval.0 = phi %union.tree_node* [ %2, %if.then13 ], [ %3, %if.else14 ], [ %call4, %if.then3 ], [ %1, %sw.default ], [ %0, %sw.bb ], !dbg !5303
  ret %union.tree_node* %retval.0, !dbg !5304
}

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @find_bswap(%union.gimple_statement_d* %stmt) unnamed_addr #5 !dbg !5305 {
entry:
  %n = alloca %struct.symbolic_number, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !5309, metadata !DIExpression()), !dbg !5320
  call void @llvm.dbg.value(metadata i64 72623859790382856, metadata !5310, metadata !DIExpression()), !dbg !5320
  %0 = bitcast %struct.symbolic_number* %n to i8*, !dbg !5321
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !5321
  %call = tail call fastcc %union.tree_node* @gimple_expr_type(%union.gimple_statement_d* %stmt) #7, !dbg !5322
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !5322
  %2 = bitcast %union.tree_node** %1 to %struct.tree_int_cst**, !dbg !5322
  %3 = load %struct.tree_int_cst*, %struct.tree_int_cst** %2, align 8, !dbg !5322
  %low = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %3, i64 0, i32 1, i32 0, !dbg !5322
  %4 = load i64, i64* %low, align 8, !dbg !5322
  %5 = trunc i64 %4 to i32, !dbg !5322
  %conv = add i32 %5, 1, !dbg !5322
  call void @llvm.dbg.value(metadata %struct.symbolic_number* %n, metadata !5311, metadata !DIExpression(DW_OP_deref)), !dbg !5320
  %call2 = call fastcc %union.tree_node* @find_bswap_1(%union.gimple_statement_d* %stmt, %struct.symbolic_number* nonnull %n, i32 %conv) #7, !dbg !5323
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !5316, metadata !DIExpression()), !dbg !5320
  %tobool = icmp eq %union.tree_node* %call2, null, !dbg !5324
  br i1 %tobool, label %cleanup, label %if.end, !dbg !5326

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct.symbolic_number, %struct.symbolic_number* %n, i64 0, i32 1, !dbg !5327
  %6 = load i32, i32* %size, align 8, !dbg !5327
  %cmp3 = icmp slt i32 %6, 8, !dbg !5328
  br i1 %cmp3, label %if.then5, label %if.end.if.end12_crit_edge, !dbg !5329

if.end.if.end12_crit_edge:                        ; preds = %if.end
  %n13.phi.trans.insert = getelementptr inbounds %struct.symbolic_number, %struct.symbolic_number* %n, i64 0, i32 0, !dbg !5330
  %.pre = load i64, i64* %n13.phi.trans.insert, align 8, !dbg !5332
  br label %if.end12, !dbg !5329

if.then5:                                         ; preds = %if.end
  %mul = shl nsw i32 %6, 3, !dbg !5333
  %sh_prom = zext i32 %mul to i64, !dbg !5334
  %notmask = shl nsw i64 -1, %sh_prom, !dbg !5335
  %sub = xor i64 %notmask, -1, !dbg !5335
  call void @llvm.dbg.value(metadata i64 %sub, metadata !5317, metadata !DIExpression()), !dbg !5336
  %n7 = getelementptr inbounds %struct.symbolic_number, %struct.symbolic_number* %n, i64 0, i32 0, !dbg !5337
  %7 = load i64, i64* %n7, align 8, !dbg !5338
  %and = and i64 %7, %sub, !dbg !5338
  store i64 %and, i64* %n7, align 8, !dbg !5338
  %conv9 = sext i32 %6 to i64, !dbg !5339
  %sub10 = shl nsw i64 %conv9, 3, !dbg !5340
  %mul11 = sub nsw i64 64, %sub10, !dbg !5340
  %shr = lshr i64 72623859790382856, %mul11, !dbg !5341
  call void @llvm.dbg.value(metadata i64 %shr, metadata !5310, metadata !DIExpression()), !dbg !5320
  br label %if.end12, !dbg !5342

if.end12:                                         ; preds = %if.end.if.end12_crit_edge, %if.then5
  %8 = phi i64 [ %and, %if.then5 ], [ %.pre, %if.end.if.end12_crit_edge ], !dbg !5332
  %cmp.0 = phi i64 [ %shr, %if.then5 ], [ 72623859790382856, %if.end.if.end12_crit_edge ], !dbg !5320
  call void @llvm.dbg.value(metadata i64 %cmp.0, metadata !5310, metadata !DIExpression()), !dbg !5320
  %cmp14 = icmp eq i64 %cmp.0, %8, !dbg !5343
  %.call2 = select i1 %cmp14, %union.tree_node* %call2, %union.tree_node* null, !dbg !5320
  br label %cleanup, !dbg !5320

cleanup:                                          ; preds = %entry, %if.end12
  %retval.0 = phi %union.tree_node* [ null, %entry ], [ %.call2, %if.end12 ], !dbg !5320
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !5344
  ret %union.tree_node* %retval.0, !dbg !5344
}

declare dso_local zeroext i8 @useless_type_conversion_p(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @create_tmp_var(%union.tree_node*, i8*) local_unnamed_addr #2

declare dso_local zeroext i8 @add_referenced_var(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @make_ssa_name(%union.tree_node* %var, %union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !5345 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !5349, metadata !DIExpression()), !dbg !5351
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* null, metadata !5350, metadata !DIExpression()), !dbg !5351
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !5352
  %call = tail call %union.tree_node* @make_ssa_name_fn(%struct.function* %0, %union.tree_node* %var, %union.gimple_statement_d* null) #6, !dbg !5353
  ret %union.tree_node* %call, !dbg !5354
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !5355 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5357, metadata !DIExpression()), !dbg !5358
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #7, !dbg !5359
  ret %union.tree_node* %call, !dbg !5360
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

declare dso_local void @print_gimple_stmt(%struct._IO_FILE*, %union.gimple_statement_d*, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_return_type(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !5361 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5363, metadata !DIExpression()), !dbg !5366
  %call = tail call fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) #7, !dbg !5367
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !5364, metadata !DIExpression()), !dbg !5366
  %type1 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5368
  %0 = bitcast %union.tree_node** %type1 to %struct.tree_common**, !dbg !5368
  %1 = load %struct.tree_common*, %struct.tree_common** %0, align 8, !dbg !5368
  %type3 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1, i64 0, i32 2, !dbg !5369
  %2 = bitcast %union.tree_node** %type3 to %struct.tree_common**, !dbg !5369
  %3 = load %struct.tree_common*, %struct.tree_common** %2, align 8, !dbg !5369
  %type5 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %3, i64 0, i32 2, !dbg !5370
  %4 = load %union.tree_node*, %union.tree_node** %type5, align 8, !dbg !5370
  ret %union.tree_node* %4, !dbg !5371
}

declare dso_local %union.tree_node* @gimple_get_lhs(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @find_bswap_1(%union.gimple_statement_d* %stmt, %struct.symbolic_number* %n, i32 %limit) unnamed_addr #5 !dbg !5372 {
entry:
  %n1 = alloca %struct.symbolic_number, align 8
  %n2 = alloca %struct.symbolic_number, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !5377, metadata !DIExpression()), !dbg !5401
  call void @llvm.dbg.value(metadata %struct.symbolic_number* %n, metadata !5378, metadata !DIExpression()), !dbg !5401
  call void @llvm.dbg.value(metadata i32 %limit, metadata !5379, metadata !DIExpression()), !dbg !5401
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !5382, metadata !DIExpression()), !dbg !5401
  %tobool = icmp eq i32 %limit, 0, !dbg !5402
  br i1 %tobool, label %cleanup154, label %lor.lhs.false, !dbg !5404

lor.lhs.false:                                    ; preds = %entry
  %call = tail call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %stmt) #7, !dbg !5405
  %tobool1 = icmp eq i8 %call, 0, !dbg !5405
  br i1 %tobool1, label %cleanup154, label %if.end, !dbg !5406

if.end:                                           ; preds = %lor.lhs.false
  %call2 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %stmt) #7, !dbg !5407
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !5381, metadata !DIExpression()), !dbg !5401
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !5408
  %bf.load = load i64, i64* %0, align 8, !dbg !5408
  %bf.cast4 = and i64 %bf.load, 65535, !dbg !5410
  %cmp = icmp eq i64 %bf.cast4, 141, !dbg !5410
  br i1 %cmp, label %if.end4, label %cleanup154, !dbg !5411

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %stmt) #7, !dbg !5412
  call void @llvm.dbg.value(metadata i32 %call5, metadata !5380, metadata !DIExpression()), !dbg !5401
  %call6 = tail call fastcc i32 @gimple_assign_rhs_class(%union.gimple_statement_d* %stmt) #7, !dbg !5413
  call void @llvm.dbg.value(metadata i32 %call6, metadata !5386, metadata !DIExpression()), !dbg !5401
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !5414
  %1 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !5414
  %2 = load %union.gimple_statement_d*, %union.gimple_statement_d** %1, align 8, !dbg !5414
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %2, metadata !5383, metadata !DIExpression()), !dbg !5401
  %cmp7 = icmp eq i32 %call6, 1, !dbg !5415
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !5417

if.then8:                                         ; preds = %if.end4
  %call9 = tail call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %stmt) #7, !dbg !5418
  call void @llvm.dbg.value(metadata %union.tree_node* %call9, metadata !5382, metadata !DIExpression()), !dbg !5401
  br label %if.end10, !dbg !5419

if.end10:                                         ; preds = %if.then8, %if.end4
  %rhs2.0 = phi %union.tree_node* [ %call9, %if.then8 ], [ null, %if.end4 ], !dbg !5401
  call void @llvm.dbg.value(metadata %union.tree_node* %rhs2.0, metadata !5382, metadata !DIExpression()), !dbg !5401
  switch i32 %call6, label %cleanup154 [
    i32 2, label %if.then19
    i32 1, label %land.lhs.true
  ], !dbg !5420

land.lhs.true:                                    ; preds = %if.end10
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %rhs2.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !5421
  %bf.load15 = load i64, i64* %3, align 8, !dbg !5421
  %bf.cast175 = and i64 %bf.load15, 65535, !dbg !5422
  %cmp18 = icmp eq i64 %bf.cast175, 23, !dbg !5422
  br i1 %cmp18, label %if.then19, label %if.end104, !dbg !5423

if.then19:                                        ; preds = %if.end10, %land.lhs.true
  switch i32 %call5, label %cleanup154 [
    i32 89, label %if.end34
    i32 83, label %if.end34
    i32 84, label %if.end34
    i32 85, label %if.end34
    i32 86, label %if.end34
    i32 116, label %if.end34
    i32 113, label %if.end34
  ], !dbg !5424

if.end34:                                         ; preds = %if.then19, %if.then19, %if.then19, %if.then19, %if.then19, %if.then19, %if.then19
  %sub = add nsw i32 %limit, -1, !dbg !5426
  %call35 = tail call fastcc %union.tree_node* @find_bswap_1(%union.gimple_statement_d* %2, %struct.symbolic_number* %n, i32 %sub) #7, !dbg !5427
  call void @llvm.dbg.value(metadata %union.tree_node* %call35, metadata !5385, metadata !DIExpression()), !dbg !5401
  %tobool36 = icmp eq %union.tree_node* %call35, null, !dbg !5428
  br i1 %tobool36, label %if.then37, label %if.end54, !dbg !5430

if.then37:                                        ; preds = %if.end34
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5431
  %4 = bitcast %union.tree_node** %type to %struct.tree_type**, !dbg !5431
  %5 = load %struct.tree_type*, %struct.tree_type** %4, align 8, !dbg !5431
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %5, i64 0, i32 6, !dbg !5431
  %bf.load39 = load i32, i32* %precision, align 4, !dbg !5431
  %bf.clear40 = and i32 %bf.load39, 1023, !dbg !5431
  %size = getelementptr inbounds %struct.symbolic_number, %struct.symbolic_number* %n, i64 0, i32 1, !dbg !5433
  store i32 %bf.clear40, i32* %size, align 8, !dbg !5434
  %rem = and i32 %bf.load39, 7, !dbg !5435
  %cmp42 = icmp eq i32 %rem, 0, !dbg !5437
  br i1 %cmp42, label %if.end44, label %cleanup154, !dbg !5438

if.end44:                                         ; preds = %if.then37
  %div = lshr i32 %bf.clear40, 3, !dbg !5439
  store i32 %div, i32* %size, align 8, !dbg !5439
  %n46 = getelementptr inbounds %struct.symbolic_number, %struct.symbolic_number* %n, i64 0, i32 0, !dbg !5440
  store i64 578437695752307201, i64* %n46, align 8, !dbg !5441
  %cmp48 = icmp ult i32 %bf.clear40, 64, !dbg !5442
  br i1 %cmp48, label %if.then49, label %if.end54, !dbg !5444

if.then49:                                        ; preds = %if.end44
  %mul = and i32 %bf.load39, 1016, !dbg !5445
  %sh_prom = zext i32 %mul to i64, !dbg !5446
  %notmask7 = shl nsw i64 -1, %sh_prom, !dbg !5447
  %sub51 = and i64 %notmask7, 578437695752307201, !dbg !5448
  %and = xor i64 %sub51, 578437695752307201, !dbg !5448
  store i64 %and, i64* %n46, align 8, !dbg !5448
  br label %if.end54, !dbg !5449

if.end54:                                         ; preds = %if.end34, %if.end44, %if.then49
  %source_expr1.0 = phi %union.tree_node* [ %call35, %if.end34 ], [ %call2, %if.then49 ], [ %call2, %if.end44 ], !dbg !5450
  call void @llvm.dbg.value(metadata %union.tree_node* %source_expr1.0, metadata !5385, metadata !DIExpression()), !dbg !5401
  switch i32 %call5, label %cleanup154 [
    i32 89, label %sw.bb
    i32 83, label %sw.bb69
    i32 84, label %sw.bb69
    i32 85, label %sw.bb69
    i32 86, label %sw.bb69
    i32 116, label %sw.bb75
    i32 113, label %sw.bb75
  ], !dbg !5451

sw.bb:                                            ; preds = %if.end54
  %call55 = tail call i64 @widest_int_cst_value(%union.tree_node* %rhs2.0) #6, !dbg !5452
  call void @llvm.dbg.value(metadata i64 %call55, metadata !5392, metadata !DIExpression()), !dbg !5453
  call void @llvm.dbg.value(metadata i64 %call55, metadata !5393, metadata !DIExpression()), !dbg !5453
  call void @llvm.dbg.value(metadata i32 0, metadata !5387, metadata !DIExpression()), !dbg !5453
  %size56 = getelementptr inbounds %struct.symbolic_number, %struct.symbolic_number* %n, i64 0, i32 1, !dbg !5454
  %6 = load i32, i32* %size56, align 8, !dbg !5454
  br label %for.cond, !dbg !5457

for.cond:                                         ; preds = %for.inc, %sw.bb
  %i.0 = phi i32 [ 0, %sw.bb ], [ %inc, %for.inc ], !dbg !5458
  %tmp.0 = phi i64 [ %call55, %sw.bb ], [ %shr, %for.inc ], !dbg !5453
  call void @llvm.dbg.value(metadata i64 %tmp.0, metadata !5393, metadata !DIExpression()), !dbg !5453
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !5387, metadata !DIExpression()), !dbg !5453
  %cmp57 = icmp slt i32 %i.0, %6, !dbg !5459
  br i1 %cmp57, label %for.body, label %for.end, !dbg !5460

for.body:                                         ; preds = %for.cond
  %and58 = and i64 %tmp.0, 255, !dbg !5461
  %cmp59 = icmp ne i64 %and58, 0, !dbg !5463
  %cmp62 = icmp ne i64 %and58, 255, !dbg !5464
  %or.cond = and i1 %cmp59, %cmp62, !dbg !5465
  br i1 %or.cond, label %cleanup.loopexit, label %for.inc, !dbg !5465

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !5466
  call void @llvm.dbg.value(metadata i32 %inc, metadata !5387, metadata !DIExpression()), !dbg !5453
  %shr = lshr i64 %tmp.0, 8, !dbg !5467
  call void @llvm.dbg.value(metadata i64 %shr, metadata !5393, metadata !DIExpression()), !dbg !5453
  br label %for.cond, !dbg !5468, !llvm.loop !5469

for.end:                                          ; preds = %for.cond
  %n65 = getelementptr inbounds %struct.symbolic_number, %struct.symbolic_number* %n, i64 0, i32 0, !dbg !5471
  %7 = load i64, i64* %n65, align 8, !dbg !5472
  %and66 = and i64 %7, %call55, !dbg !5472
  store i64 %and66, i64* %n65, align 8, !dbg !5472
  br label %cleanup, !dbg !5473

cleanup.loopexit:                                 ; preds = %for.body
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %for.end
  %cleanup.dest.slot.0 = phi i1 [ true, %for.end ], [ false, %cleanup.loopexit ]
  br i1 %cleanup.dest.slot.0, label %sw.epilog, label %cleanup154

sw.bb69:                                          ; preds = %if.end54, %if.end54, %if.end54, %if.end54
  %int_cst70 = getelementptr inbounds %union.tree_node, %union.tree_node* %rhs2.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !5474
  %low = bitcast i32* %int_cst70 to i64*, !dbg !5474
  %8 = load i64, i64* %low, align 8, !dbg !5474
  %conv = trunc i64 %8 to i32, !dbg !5476
  %call71 = tail call fastcc zeroext i8 @do_shift_rotate(i32 %call5, %struct.symbolic_number* %n, i32 %conv) #7, !dbg !5477
  %tobool72 = icmp eq i8 %call71, 0, !dbg !5477
  br i1 %tobool72, label %cleanup154, label %sw.epilog, !dbg !5478

sw.bb75:                                          ; preds = %if.end54, %if.end54
  %call76 = tail call fastcc %union.tree_node* @gimple_expr_type(%union.gimple_statement_d* %stmt) #7, !dbg !5479
  %type77 = bitcast %union.tree_node* %call76 to %struct.tree_type*, !dbg !5479
  %precision78 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type77, i64 0, i32 6, !dbg !5479
  %bf.load79 = load i32, i32* %precision78, align 4, !dbg !5479
  %bf.clear80 = and i32 %bf.load79, 1023, !dbg !5479
  call void @llvm.dbg.value(metadata i32 %bf.clear80, metadata !5394, metadata !DIExpression()), !dbg !5480
  %rem81 = and i32 %bf.load79, 7, !dbg !5481
  %cmp82 = icmp eq i32 %rem81, 0, !dbg !5483
  br i1 %cmp82, label %if.end85, label %cleanup98, !dbg !5484

if.end85:                                         ; preds = %sw.bb75
  %cmp87 = icmp ult i32 %bf.clear80, 64, !dbg !5485
  br i1 %cmp87, label %if.then89, label %if.end95, !dbg !5487

if.then89:                                        ; preds = %if.end85
  %sh_prom90 = zext i32 %bf.clear80 to i64, !dbg !5488
  %notmask = shl nsw i64 -1, %sh_prom90, !dbg !5490
  %sub92 = xor i64 %notmask, -1, !dbg !5490
  %n93 = getelementptr inbounds %struct.symbolic_number, %struct.symbolic_number* %n, i64 0, i32 0, !dbg !5491
  %9 = load i64, i64* %n93, align 8, !dbg !5492
  %and94 = and i64 %9, %sub92, !dbg !5492
  store i64 %and94, i64* %n93, align 8, !dbg !5492
  br label %if.end95, !dbg !5493

if.end95:                                         ; preds = %if.then89, %if.end85
  %div96 = lshr i32 %bf.clear80, 3, !dbg !5494
  %size97 = getelementptr inbounds %struct.symbolic_number, %struct.symbolic_number* %n, i64 0, i32 1, !dbg !5495
  store i32 %div96, i32* %size97, align 8, !dbg !5496
  br label %cleanup98, !dbg !5497

cleanup98:                                        ; preds = %sw.bb75, %if.end95
  %cleanup.dest.slot.1 = phi i1 [ true, %if.end95 ], [ false, %sw.bb75 ]
  br i1 %cleanup.dest.slot.1, label %sw.epilog, label %cleanup154

sw.epilog:                                        ; preds = %sw.bb69, %cleanup98, %cleanup
  %call101 = tail call fastcc zeroext i8 @verify_symbolic_number_p(%struct.symbolic_number* %n, %union.gimple_statement_d* %stmt) #7, !dbg !5498
  %tobool103 = icmp eq i8 %call101, 0, !dbg !5498
  %source_expr1.0. = select i1 %tobool103, %union.tree_node* null, %union.tree_node* %source_expr1.0, !dbg !5498
  br label %cleanup154, !dbg !5499

if.end104:                                        ; preds = %land.lhs.true
  br i1 true, label %if.then107, label %if.end104.cleanup154_crit_edge, !dbg !5500

if.end104.cleanup154_crit_edge:                   ; preds = %if.end104
  br label %cleanup154, !dbg !5500

if.then107:                                       ; preds = %if.end104
  %10 = bitcast %struct.symbolic_number* %n1 to i8*, !dbg !5501
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #8, !dbg !5501
  %11 = bitcast %struct.symbolic_number* %n2 to i8*, !dbg !5501
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %11) #8, !dbg !5501
  %cmp108 = icmp eq i32 %call5, 87, !dbg !5502
  br i1 %cmp108, label %if.end111, label %cleanup150, !dbg !5504

if.end111:                                        ; preds = %if.then107
  %cmp116 = icmp eq i64 %bf.cast175, 141, !dbg !5505
  br i1 %cmp116, label %if.end119, label %cleanup150, !dbg !5507

if.end119:                                        ; preds = %if.end111
  %def_stmt121 = getelementptr inbounds %union.tree_node, %union.tree_node* %rhs2.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !5508
  %12 = bitcast %union.tree_node** %def_stmt121 to %union.gimple_statement_d**, !dbg !5508
  %13 = load %union.gimple_statement_d*, %union.gimple_statement_d** %12, align 8, !dbg !5508
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %13, metadata !5384, metadata !DIExpression()), !dbg !5401
  br i1 true, label %sw.bb122, label %if.end119.cleanup150_crit_edge, !dbg !5509

if.end119.cleanup150_crit_edge:                   ; preds = %if.end119
  br label %cleanup150, !dbg !5509

sw.bb122:                                         ; preds = %if.end119
  %sub123 = add nsw i32 %limit, -1, !dbg !5510
  call void @llvm.dbg.value(metadata %struct.symbolic_number* %n1, metadata !5396, metadata !DIExpression(DW_OP_deref)), !dbg !5512
  %call124 = call fastcc %union.tree_node* @find_bswap_1(%union.gimple_statement_d* %2, %struct.symbolic_number* nonnull %n1, i32 %sub123) #7, !dbg !5513
  call void @llvm.dbg.value(metadata %union.tree_node* %call124, metadata !5385, metadata !DIExpression()), !dbg !5401
  %tobool125 = icmp eq %union.tree_node* %call124, null, !dbg !5514
  br i1 %tobool125, label %cleanup150, label %if.end127, !dbg !5516

if.end127:                                        ; preds = %sw.bb122
  call void @llvm.dbg.value(metadata %struct.symbolic_number* %n2, metadata !5399, metadata !DIExpression(DW_OP_deref)), !dbg !5512
  %call129 = call fastcc %union.tree_node* @find_bswap_1(%union.gimple_statement_d* %13, %struct.symbolic_number* nonnull %n2, i32 %sub123) #7, !dbg !5517
  call void @llvm.dbg.value(metadata %union.tree_node* %call129, metadata !5400, metadata !DIExpression()), !dbg !5512
  %cmp130 = icmp eq %union.tree_node* %call124, %call129, !dbg !5518
  br i1 %cmp130, label %lor.lhs.false132, label %cleanup150, !dbg !5520

lor.lhs.false132:                                 ; preds = %if.end127
  %size133 = getelementptr inbounds %struct.symbolic_number, %struct.symbolic_number* %n1, i64 0, i32 1, !dbg !5521
  %14 = load i32, i32* %size133, align 8, !dbg !5521
  %size134 = getelementptr inbounds %struct.symbolic_number, %struct.symbolic_number* %n2, i64 0, i32 1, !dbg !5522
  %15 = load i32, i32* %size134, align 8, !dbg !5522
  %cmp135 = icmp eq i32 %14, %15, !dbg !5523
  br i1 %cmp135, label %if.end138, label %cleanup150, !dbg !5524

if.end138:                                        ; preds = %lor.lhs.false132
  %size140 = getelementptr inbounds %struct.symbolic_number, %struct.symbolic_number* %n, i64 0, i32 1, !dbg !5525
  store i32 %14, i32* %size140, align 8, !dbg !5526
  %n141 = getelementptr inbounds %struct.symbolic_number, %struct.symbolic_number* %n1, i64 0, i32 0, !dbg !5527
  %16 = load i64, i64* %n141, align 8, !dbg !5527
  %n142 = getelementptr inbounds %struct.symbolic_number, %struct.symbolic_number* %n2, i64 0, i32 0, !dbg !5528
  %17 = load i64, i64* %n142, align 8, !dbg !5528
  %or = or i64 %16, %17, !dbg !5529
  %n143 = getelementptr inbounds %struct.symbolic_number, %struct.symbolic_number* %n, i64 0, i32 0, !dbg !5530
  store i64 %or, i64* %n143, align 8, !dbg !5531
  %call144 = call fastcc zeroext i8 @verify_symbolic_number_p(%struct.symbolic_number* %n, %union.gimple_statement_d* %stmt) #7, !dbg !5532
  %tobool145 = icmp eq i8 %call144, 0, !dbg !5532
  %spec.select = select i1 %tobool145, %union.tree_node* null, %union.tree_node* %call124, !dbg !5534
  br label %cleanup150, !dbg !5534

cleanup150:                                       ; preds = %if.end119.cleanup150_crit_edge, %lor.lhs.false132, %if.end127, %sw.bb122, %if.end111, %if.then107, %if.end138
  %retval.2 = phi %union.tree_node* [ null, %if.then107 ], [ null, %if.end111 ], [ null, %sw.bb122 ], [ null, %lor.lhs.false132 ], [ null, %if.end127 ], [ undef, %if.end119.cleanup150_crit_edge ], [ %spec.select, %if.end138 ], !dbg !5512
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #8, !dbg !5535
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #8, !dbg !5535
  br label %cleanup154

cleanup154:                                       ; preds = %if.end104.cleanup154_crit_edge, %sw.bb69, %if.then37, %if.end, %lor.lhs.false, %entry, %if.end10, %if.end54, %if.then19, %cleanup, %cleanup98, %cleanup150, %sw.epilog
  %retval.3 = phi %union.tree_node* [ null, %cleanup98 ], [ %source_expr1.0., %sw.epilog ], [ null, %cleanup ], [ %retval.2, %cleanup150 ], [ null, %lor.lhs.false ], [ null, %entry ], [ null, %if.end ], [ null, %if.then19 ], [ null, %if.then37 ], [ null, %sw.bb69 ], [ null, %if.end54 ], [ null, %if.end10 ], [ undef, %if.end104.cleanup154_crit_edge ], !dbg !5401
  ret %union.tree_node* %retval.3, !dbg !5536
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_assign_rhs_class(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !5537 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5541, metadata !DIExpression()), !dbg !5542
  %call = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %gs) #7, !dbg !5543
  %call1 = tail call fastcc i32 @get_gimple_rhs_class(i32 %call) #7, !dbg !5544
  ret i32 %call1, !dbg !5545
}

declare dso_local i64 @widest_int_cst_value(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @do_shift_rotate(i32 %code, %struct.symbolic_number* %n, i32 %count) unnamed_addr #0 !dbg !5546 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !5550, metadata !DIExpression()), !dbg !5553
  call void @llvm.dbg.value(metadata %struct.symbolic_number* %n, metadata !5551, metadata !DIExpression()), !dbg !5553
  call void @llvm.dbg.value(metadata i32 %count, metadata !5552, metadata !DIExpression()), !dbg !5553
  %rem1 = and i32 %count, 7, !dbg !5554
  %cmp = icmp eq i32 %rem1, 0, !dbg !5554
  br i1 %cmp, label %if.end, label %return, !dbg !5556

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct.symbolic_number, %struct.symbolic_number* %n, i64 0, i32 1, !dbg !5557
  %0 = load i32, i32* %size, align 8, !dbg !5557
  %cmp1 = icmp slt i32 %0, 8, !dbg !5559
  br i1 %cmp1, label %if.then2, label %if.end5, !dbg !5560

if.then2:                                         ; preds = %if.end
  %mul = shl nsw i32 %0, 3, !dbg !5561
  %sh_prom = zext i32 %mul to i64, !dbg !5562
  %notmask = shl nsw i64 -1, %sh_prom, !dbg !5563
  %sub = xor i64 %notmask, -1, !dbg !5563
  %n4 = getelementptr inbounds %struct.symbolic_number, %struct.symbolic_number* %n, i64 0, i32 0, !dbg !5564
  %1 = load i64, i64* %n4, align 8, !dbg !5565
  %and = and i64 %1, %sub, !dbg !5565
  store i64 %and, i64* %n4, align 8, !dbg !5565
  br label %if.end5, !dbg !5566

if.end5:                                          ; preds = %if.then2, %if.end
  switch i32 %code, label %return [
    i32 83, label %sw.bb
    i32 84, label %sw.bb9
    i32 85, label %sw.bb12
    i32 86, label %sw.bb23
  ], !dbg !5567

sw.bb:                                            ; preds = %if.end5
  %n6 = getelementptr inbounds %struct.symbolic_number, %struct.symbolic_number* %n, i64 0, i32 0, !dbg !5568
  %2 = load i64, i64* %n6, align 8, !dbg !5570
  %sh_prom7 = zext i32 %count to i64, !dbg !5570
  %shl8 = shl i64 %2, %sh_prom7, !dbg !5570
  store i64 %shl8, i64* %n6, align 8, !dbg !5570
  br label %return, !dbg !5571

sw.bb9:                                           ; preds = %if.end5
  %n10 = getelementptr inbounds %struct.symbolic_number, %struct.symbolic_number* %n, i64 0, i32 0, !dbg !5572
  %3 = load i64, i64* %n10, align 8, !dbg !5573
  %sh_prom11 = zext i32 %count to i64, !dbg !5573
  %shr = lshr i64 %3, %sh_prom11, !dbg !5573
  store i64 %shr, i64* %n10, align 8, !dbg !5573
  br label %return, !dbg !5574

sw.bb12:                                          ; preds = %if.end5
  %n13 = getelementptr inbounds %struct.symbolic_number, %struct.symbolic_number* %n, i64 0, i32 0, !dbg !5575
  %4 = load i64, i64* %n13, align 8, !dbg !5575
  %sh_prom14 = zext i32 %count to i64, !dbg !5576
  %shl15 = shl i64 %4, %sh_prom14, !dbg !5576
  %mul18 = shl nsw i32 %0, 3, !dbg !5577
  %sub19 = sub nsw i32 %mul18, %count, !dbg !5578
  %sh_prom20 = zext i32 %sub19 to i64, !dbg !5579
  %shr21 = lshr i64 %4, %sh_prom20, !dbg !5579
  %or = or i64 %shl15, %shr21, !dbg !5580
  store i64 %or, i64* %n13, align 8, !dbg !5581
  br label %return, !dbg !5582

sw.bb23:                                          ; preds = %if.end5
  %n24 = getelementptr inbounds %struct.symbolic_number, %struct.symbolic_number* %n, i64 0, i32 0, !dbg !5583
  %5 = load i64, i64* %n24, align 8, !dbg !5583
  %sh_prom25 = zext i32 %count to i64, !dbg !5584
  %shr26 = lshr i64 %5, %sh_prom25, !dbg !5584
  %mul29 = shl nsw i32 %0, 3, !dbg !5585
  %sub30 = sub nsw i32 %mul29, %count, !dbg !5586
  %sh_prom31 = zext i32 %sub30 to i64, !dbg !5587
  %shl32 = shl i64 %5, %sh_prom31, !dbg !5587
  %or33 = or i64 %shr26, %shl32, !dbg !5588
  store i64 %or33, i64* %n24, align 8, !dbg !5589
  br label %return, !dbg !5590

return:                                           ; preds = %entry, %sw.bb, %sw.bb9, %sw.bb12, %sw.bb23, %if.end5
  %retval.0 = phi i8 [ 0, %entry ], [ 0, %if.end5 ], [ 1, %sw.bb23 ], [ 1, %sw.bb12 ], [ 1, %sw.bb9 ], [ 1, %sw.bb ], !dbg !5553
  ret i8 %retval.0, !dbg !5591
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @verify_symbolic_number_p(%struct.symbolic_number* %n, %union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !5592 {
entry:
  call void @llvm.dbg.value(metadata %struct.symbolic_number* %n, metadata !5596, metadata !DIExpression()), !dbg !5599
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !5597, metadata !DIExpression()), !dbg !5599
  %call = tail call fastcc %union.tree_node* @gimple_expr_type(%union.gimple_statement_d* %stmt) #7, !dbg !5600
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !5598, metadata !DIExpression()), !dbg !5599
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !5601
  %bf.load = load i64, i64* %0, align 8, !dbg !5601
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !5603
  %cmp = icmp eq i64 %bf.cast1, 8, !dbg !5603
  br i1 %cmp, label %if.end, label %cleanup, !dbg !5604

if.end:                                           ; preds = %entry
  %type = bitcast %union.tree_node* %call to %struct.tree_type*, !dbg !5605
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type, i64 0, i32 6, !dbg !5605
  %bf.load1 = load i32, i32* %precision, align 4, !dbg !5605
  %bf.clear2 = and i32 %bf.load1, 1023, !dbg !5605
  %size = getelementptr inbounds %struct.symbolic_number, %struct.symbolic_number* %n, i64 0, i32 1, !dbg !5607
  %1 = load i32, i32* %size, align 8, !dbg !5607
  %mul = shl nsw i32 %1, 3, !dbg !5608
  %cmp3 = icmp eq i32 %bf.clear2, %mul, !dbg !5609
  %. = zext i1 %cmp3 to i8, !dbg !5599
  br label %cleanup, !dbg !5599

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i8 [ 0, %entry ], [ %., %if.end ], !dbg !5599
  ret i8 %retval.0, !dbg !5610
}

declare dso_local %union.tree_node* @make_ssa_name_fn(%struct.function*, %union.tree_node*, %union.gimple_statement_d*) local_unnamed_addr #2

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
!llvm.module.flags = !{!2738, !2739, !2740}
!llvm.ident = !{!2741}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_cse_reciprocals", scope: !2, file: !3, line: 588, type: !2685, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1358, globals: !2682, nameTableKind: None)
!3 = !DIFile(filename: "tree-ssa-math-opts.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !13, !189, !317, !323, !328, !333, !352, !359, !366, !560, !1280, !1319, !1326, !1332}
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
!560 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "built_in_function", file: !334, line: 220, baseType: !7, size: 32, elements: !561)
!561 = !{!562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279}
!562 = !DIEnumerator(name: "BUILT_IN_ACOS", value: 0, isUnsigned: true)
!563 = !DIEnumerator(name: "BUILT_IN_ACOSF", value: 1, isUnsigned: true)
!564 = !DIEnumerator(name: "BUILT_IN_ACOSH", value: 2, isUnsigned: true)
!565 = !DIEnumerator(name: "BUILT_IN_ACOSHF", value: 3, isUnsigned: true)
!566 = !DIEnumerator(name: "BUILT_IN_ACOSHL", value: 4, isUnsigned: true)
!567 = !DIEnumerator(name: "BUILT_IN_ACOSL", value: 5, isUnsigned: true)
!568 = !DIEnumerator(name: "BUILT_IN_ASIN", value: 6, isUnsigned: true)
!569 = !DIEnumerator(name: "BUILT_IN_ASINF", value: 7, isUnsigned: true)
!570 = !DIEnumerator(name: "BUILT_IN_ASINH", value: 8, isUnsigned: true)
!571 = !DIEnumerator(name: "BUILT_IN_ASINHF", value: 9, isUnsigned: true)
!572 = !DIEnumerator(name: "BUILT_IN_ASINHL", value: 10, isUnsigned: true)
!573 = !DIEnumerator(name: "BUILT_IN_ASINL", value: 11, isUnsigned: true)
!574 = !DIEnumerator(name: "BUILT_IN_ATAN", value: 12, isUnsigned: true)
!575 = !DIEnumerator(name: "BUILT_IN_ATAN2", value: 13, isUnsigned: true)
!576 = !DIEnumerator(name: "BUILT_IN_ATAN2F", value: 14, isUnsigned: true)
!577 = !DIEnumerator(name: "BUILT_IN_ATAN2L", value: 15, isUnsigned: true)
!578 = !DIEnumerator(name: "BUILT_IN_ATANF", value: 16, isUnsigned: true)
!579 = !DIEnumerator(name: "BUILT_IN_ATANH", value: 17, isUnsigned: true)
!580 = !DIEnumerator(name: "BUILT_IN_ATANHF", value: 18, isUnsigned: true)
!581 = !DIEnumerator(name: "BUILT_IN_ATANHL", value: 19, isUnsigned: true)
!582 = !DIEnumerator(name: "BUILT_IN_ATANL", value: 20, isUnsigned: true)
!583 = !DIEnumerator(name: "BUILT_IN_CBRT", value: 21, isUnsigned: true)
!584 = !DIEnumerator(name: "BUILT_IN_CBRTF", value: 22, isUnsigned: true)
!585 = !DIEnumerator(name: "BUILT_IN_CBRTL", value: 23, isUnsigned: true)
!586 = !DIEnumerator(name: "BUILT_IN_CEIL", value: 24, isUnsigned: true)
!587 = !DIEnumerator(name: "BUILT_IN_CEILF", value: 25, isUnsigned: true)
!588 = !DIEnumerator(name: "BUILT_IN_CEILL", value: 26, isUnsigned: true)
!589 = !DIEnumerator(name: "BUILT_IN_COPYSIGN", value: 27, isUnsigned: true)
!590 = !DIEnumerator(name: "BUILT_IN_COPYSIGNF", value: 28, isUnsigned: true)
!591 = !DIEnumerator(name: "BUILT_IN_COPYSIGNL", value: 29, isUnsigned: true)
!592 = !DIEnumerator(name: "BUILT_IN_COS", value: 30, isUnsigned: true)
!593 = !DIEnumerator(name: "BUILT_IN_COSF", value: 31, isUnsigned: true)
!594 = !DIEnumerator(name: "BUILT_IN_COSH", value: 32, isUnsigned: true)
!595 = !DIEnumerator(name: "BUILT_IN_COSHF", value: 33, isUnsigned: true)
!596 = !DIEnumerator(name: "BUILT_IN_COSHL", value: 34, isUnsigned: true)
!597 = !DIEnumerator(name: "BUILT_IN_COSL", value: 35, isUnsigned: true)
!598 = !DIEnumerator(name: "BUILT_IN_DREM", value: 36, isUnsigned: true)
!599 = !DIEnumerator(name: "BUILT_IN_DREMF", value: 37, isUnsigned: true)
!600 = !DIEnumerator(name: "BUILT_IN_DREML", value: 38, isUnsigned: true)
!601 = !DIEnumerator(name: "BUILT_IN_ERF", value: 39, isUnsigned: true)
!602 = !DIEnumerator(name: "BUILT_IN_ERFC", value: 40, isUnsigned: true)
!603 = !DIEnumerator(name: "BUILT_IN_ERFCF", value: 41, isUnsigned: true)
!604 = !DIEnumerator(name: "BUILT_IN_ERFCL", value: 42, isUnsigned: true)
!605 = !DIEnumerator(name: "BUILT_IN_ERFF", value: 43, isUnsigned: true)
!606 = !DIEnumerator(name: "BUILT_IN_ERFL", value: 44, isUnsigned: true)
!607 = !DIEnumerator(name: "BUILT_IN_EXP", value: 45, isUnsigned: true)
!608 = !DIEnumerator(name: "BUILT_IN_EXP10", value: 46, isUnsigned: true)
!609 = !DIEnumerator(name: "BUILT_IN_EXP10F", value: 47, isUnsigned: true)
!610 = !DIEnumerator(name: "BUILT_IN_EXP10L", value: 48, isUnsigned: true)
!611 = !DIEnumerator(name: "BUILT_IN_EXP2", value: 49, isUnsigned: true)
!612 = !DIEnumerator(name: "BUILT_IN_EXP2F", value: 50, isUnsigned: true)
!613 = !DIEnumerator(name: "BUILT_IN_EXP2L", value: 51, isUnsigned: true)
!614 = !DIEnumerator(name: "BUILT_IN_EXPF", value: 52, isUnsigned: true)
!615 = !DIEnumerator(name: "BUILT_IN_EXPL", value: 53, isUnsigned: true)
!616 = !DIEnumerator(name: "BUILT_IN_EXPM1", value: 54, isUnsigned: true)
!617 = !DIEnumerator(name: "BUILT_IN_EXPM1F", value: 55, isUnsigned: true)
!618 = !DIEnumerator(name: "BUILT_IN_EXPM1L", value: 56, isUnsigned: true)
!619 = !DIEnumerator(name: "BUILT_IN_FABS", value: 57, isUnsigned: true)
!620 = !DIEnumerator(name: "BUILT_IN_FABSF", value: 58, isUnsigned: true)
!621 = !DIEnumerator(name: "BUILT_IN_FABSL", value: 59, isUnsigned: true)
!622 = !DIEnumerator(name: "BUILT_IN_FDIM", value: 60, isUnsigned: true)
!623 = !DIEnumerator(name: "BUILT_IN_FDIMF", value: 61, isUnsigned: true)
!624 = !DIEnumerator(name: "BUILT_IN_FDIML", value: 62, isUnsigned: true)
!625 = !DIEnumerator(name: "BUILT_IN_FLOOR", value: 63, isUnsigned: true)
!626 = !DIEnumerator(name: "BUILT_IN_FLOORF", value: 64, isUnsigned: true)
!627 = !DIEnumerator(name: "BUILT_IN_FLOORL", value: 65, isUnsigned: true)
!628 = !DIEnumerator(name: "BUILT_IN_FMA", value: 66, isUnsigned: true)
!629 = !DIEnumerator(name: "BUILT_IN_FMAF", value: 67, isUnsigned: true)
!630 = !DIEnumerator(name: "BUILT_IN_FMAL", value: 68, isUnsigned: true)
!631 = !DIEnumerator(name: "BUILT_IN_FMAX", value: 69, isUnsigned: true)
!632 = !DIEnumerator(name: "BUILT_IN_FMAXF", value: 70, isUnsigned: true)
!633 = !DIEnumerator(name: "BUILT_IN_FMAXL", value: 71, isUnsigned: true)
!634 = !DIEnumerator(name: "BUILT_IN_FMIN", value: 72, isUnsigned: true)
!635 = !DIEnumerator(name: "BUILT_IN_FMINF", value: 73, isUnsigned: true)
!636 = !DIEnumerator(name: "BUILT_IN_FMINL", value: 74, isUnsigned: true)
!637 = !DIEnumerator(name: "BUILT_IN_FMOD", value: 75, isUnsigned: true)
!638 = !DIEnumerator(name: "BUILT_IN_FMODF", value: 76, isUnsigned: true)
!639 = !DIEnumerator(name: "BUILT_IN_FMODL", value: 77, isUnsigned: true)
!640 = !DIEnumerator(name: "BUILT_IN_FREXP", value: 78, isUnsigned: true)
!641 = !DIEnumerator(name: "BUILT_IN_FREXPF", value: 79, isUnsigned: true)
!642 = !DIEnumerator(name: "BUILT_IN_FREXPL", value: 80, isUnsigned: true)
!643 = !DIEnumerator(name: "BUILT_IN_GAMMA", value: 81, isUnsigned: true)
!644 = !DIEnumerator(name: "BUILT_IN_GAMMAF", value: 82, isUnsigned: true)
!645 = !DIEnumerator(name: "BUILT_IN_GAMMAL", value: 83, isUnsigned: true)
!646 = !DIEnumerator(name: "BUILT_IN_GAMMA_R", value: 84, isUnsigned: true)
!647 = !DIEnumerator(name: "BUILT_IN_GAMMAF_R", value: 85, isUnsigned: true)
!648 = !DIEnumerator(name: "BUILT_IN_GAMMAL_R", value: 86, isUnsigned: true)
!649 = !DIEnumerator(name: "BUILT_IN_HUGE_VAL", value: 87, isUnsigned: true)
!650 = !DIEnumerator(name: "BUILT_IN_HUGE_VALF", value: 88, isUnsigned: true)
!651 = !DIEnumerator(name: "BUILT_IN_HUGE_VALL", value: 89, isUnsigned: true)
!652 = !DIEnumerator(name: "BUILT_IN_HYPOT", value: 90, isUnsigned: true)
!653 = !DIEnumerator(name: "BUILT_IN_HYPOTF", value: 91, isUnsigned: true)
!654 = !DIEnumerator(name: "BUILT_IN_HYPOTL", value: 92, isUnsigned: true)
!655 = !DIEnumerator(name: "BUILT_IN_ILOGB", value: 93, isUnsigned: true)
!656 = !DIEnumerator(name: "BUILT_IN_ILOGBF", value: 94, isUnsigned: true)
!657 = !DIEnumerator(name: "BUILT_IN_ILOGBL", value: 95, isUnsigned: true)
!658 = !DIEnumerator(name: "BUILT_IN_INF", value: 96, isUnsigned: true)
!659 = !DIEnumerator(name: "BUILT_IN_INFF", value: 97, isUnsigned: true)
!660 = !DIEnumerator(name: "BUILT_IN_INFL", value: 98, isUnsigned: true)
!661 = !DIEnumerator(name: "BUILT_IN_INFD32", value: 99, isUnsigned: true)
!662 = !DIEnumerator(name: "BUILT_IN_INFD64", value: 100, isUnsigned: true)
!663 = !DIEnumerator(name: "BUILT_IN_INFD128", value: 101, isUnsigned: true)
!664 = !DIEnumerator(name: "BUILT_IN_J0", value: 102, isUnsigned: true)
!665 = !DIEnumerator(name: "BUILT_IN_J0F", value: 103, isUnsigned: true)
!666 = !DIEnumerator(name: "BUILT_IN_J0L", value: 104, isUnsigned: true)
!667 = !DIEnumerator(name: "BUILT_IN_J1", value: 105, isUnsigned: true)
!668 = !DIEnumerator(name: "BUILT_IN_J1F", value: 106, isUnsigned: true)
!669 = !DIEnumerator(name: "BUILT_IN_J1L", value: 107, isUnsigned: true)
!670 = !DIEnumerator(name: "BUILT_IN_JN", value: 108, isUnsigned: true)
!671 = !DIEnumerator(name: "BUILT_IN_JNF", value: 109, isUnsigned: true)
!672 = !DIEnumerator(name: "BUILT_IN_JNL", value: 110, isUnsigned: true)
!673 = !DIEnumerator(name: "BUILT_IN_LCEIL", value: 111, isUnsigned: true)
!674 = !DIEnumerator(name: "BUILT_IN_LCEILF", value: 112, isUnsigned: true)
!675 = !DIEnumerator(name: "BUILT_IN_LCEILL", value: 113, isUnsigned: true)
!676 = !DIEnumerator(name: "BUILT_IN_LDEXP", value: 114, isUnsigned: true)
!677 = !DIEnumerator(name: "BUILT_IN_LDEXPF", value: 115, isUnsigned: true)
!678 = !DIEnumerator(name: "BUILT_IN_LDEXPL", value: 116, isUnsigned: true)
!679 = !DIEnumerator(name: "BUILT_IN_LFLOOR", value: 117, isUnsigned: true)
!680 = !DIEnumerator(name: "BUILT_IN_LFLOORF", value: 118, isUnsigned: true)
!681 = !DIEnumerator(name: "BUILT_IN_LFLOORL", value: 119, isUnsigned: true)
!682 = !DIEnumerator(name: "BUILT_IN_LGAMMA", value: 120, isUnsigned: true)
!683 = !DIEnumerator(name: "BUILT_IN_LGAMMAF", value: 121, isUnsigned: true)
!684 = !DIEnumerator(name: "BUILT_IN_LGAMMAL", value: 122, isUnsigned: true)
!685 = !DIEnumerator(name: "BUILT_IN_LGAMMA_R", value: 123, isUnsigned: true)
!686 = !DIEnumerator(name: "BUILT_IN_LGAMMAF_R", value: 124, isUnsigned: true)
!687 = !DIEnumerator(name: "BUILT_IN_LGAMMAL_R", value: 125, isUnsigned: true)
!688 = !DIEnumerator(name: "BUILT_IN_LLCEIL", value: 126, isUnsigned: true)
!689 = !DIEnumerator(name: "BUILT_IN_LLCEILF", value: 127, isUnsigned: true)
!690 = !DIEnumerator(name: "BUILT_IN_LLCEILL", value: 128, isUnsigned: true)
!691 = !DIEnumerator(name: "BUILT_IN_LLFLOOR", value: 129, isUnsigned: true)
!692 = !DIEnumerator(name: "BUILT_IN_LLFLOORF", value: 130, isUnsigned: true)
!693 = !DIEnumerator(name: "BUILT_IN_LLFLOORL", value: 131, isUnsigned: true)
!694 = !DIEnumerator(name: "BUILT_IN_LLRINT", value: 132, isUnsigned: true)
!695 = !DIEnumerator(name: "BUILT_IN_LLRINTF", value: 133, isUnsigned: true)
!696 = !DIEnumerator(name: "BUILT_IN_LLRINTL", value: 134, isUnsigned: true)
!697 = !DIEnumerator(name: "BUILT_IN_LLROUND", value: 135, isUnsigned: true)
!698 = !DIEnumerator(name: "BUILT_IN_LLROUNDF", value: 136, isUnsigned: true)
!699 = !DIEnumerator(name: "BUILT_IN_LLROUNDL", value: 137, isUnsigned: true)
!700 = !DIEnumerator(name: "BUILT_IN_LOG", value: 138, isUnsigned: true)
!701 = !DIEnumerator(name: "BUILT_IN_LOG10", value: 139, isUnsigned: true)
!702 = !DIEnumerator(name: "BUILT_IN_LOG10F", value: 140, isUnsigned: true)
!703 = !DIEnumerator(name: "BUILT_IN_LOG10L", value: 141, isUnsigned: true)
!704 = !DIEnumerator(name: "BUILT_IN_LOG1P", value: 142, isUnsigned: true)
!705 = !DIEnumerator(name: "BUILT_IN_LOG1PF", value: 143, isUnsigned: true)
!706 = !DIEnumerator(name: "BUILT_IN_LOG1PL", value: 144, isUnsigned: true)
!707 = !DIEnumerator(name: "BUILT_IN_LOG2", value: 145, isUnsigned: true)
!708 = !DIEnumerator(name: "BUILT_IN_LOG2F", value: 146, isUnsigned: true)
!709 = !DIEnumerator(name: "BUILT_IN_LOG2L", value: 147, isUnsigned: true)
!710 = !DIEnumerator(name: "BUILT_IN_LOGB", value: 148, isUnsigned: true)
!711 = !DIEnumerator(name: "BUILT_IN_LOGBF", value: 149, isUnsigned: true)
!712 = !DIEnumerator(name: "BUILT_IN_LOGBL", value: 150, isUnsigned: true)
!713 = !DIEnumerator(name: "BUILT_IN_LOGF", value: 151, isUnsigned: true)
!714 = !DIEnumerator(name: "BUILT_IN_LOGL", value: 152, isUnsigned: true)
!715 = !DIEnumerator(name: "BUILT_IN_LRINT", value: 153, isUnsigned: true)
!716 = !DIEnumerator(name: "BUILT_IN_LRINTF", value: 154, isUnsigned: true)
!717 = !DIEnumerator(name: "BUILT_IN_LRINTL", value: 155, isUnsigned: true)
!718 = !DIEnumerator(name: "BUILT_IN_LROUND", value: 156, isUnsigned: true)
!719 = !DIEnumerator(name: "BUILT_IN_LROUNDF", value: 157, isUnsigned: true)
!720 = !DIEnumerator(name: "BUILT_IN_LROUNDL", value: 158, isUnsigned: true)
!721 = !DIEnumerator(name: "BUILT_IN_MODF", value: 159, isUnsigned: true)
!722 = !DIEnumerator(name: "BUILT_IN_MODFF", value: 160, isUnsigned: true)
!723 = !DIEnumerator(name: "BUILT_IN_MODFL", value: 161, isUnsigned: true)
!724 = !DIEnumerator(name: "BUILT_IN_NAN", value: 162, isUnsigned: true)
!725 = !DIEnumerator(name: "BUILT_IN_NANF", value: 163, isUnsigned: true)
!726 = !DIEnumerator(name: "BUILT_IN_NANL", value: 164, isUnsigned: true)
!727 = !DIEnumerator(name: "BUILT_IN_NAND32", value: 165, isUnsigned: true)
!728 = !DIEnumerator(name: "BUILT_IN_NAND64", value: 166, isUnsigned: true)
!729 = !DIEnumerator(name: "BUILT_IN_NAND128", value: 167, isUnsigned: true)
!730 = !DIEnumerator(name: "BUILT_IN_NANS", value: 168, isUnsigned: true)
!731 = !DIEnumerator(name: "BUILT_IN_NANSF", value: 169, isUnsigned: true)
!732 = !DIEnumerator(name: "BUILT_IN_NANSL", value: 170, isUnsigned: true)
!733 = !DIEnumerator(name: "BUILT_IN_NEARBYINT", value: 171, isUnsigned: true)
!734 = !DIEnumerator(name: "BUILT_IN_NEARBYINTF", value: 172, isUnsigned: true)
!735 = !DIEnumerator(name: "BUILT_IN_NEARBYINTL", value: 173, isUnsigned: true)
!736 = !DIEnumerator(name: "BUILT_IN_NEXTAFTER", value: 174, isUnsigned: true)
!737 = !DIEnumerator(name: "BUILT_IN_NEXTAFTERF", value: 175, isUnsigned: true)
!738 = !DIEnumerator(name: "BUILT_IN_NEXTAFTERL", value: 176, isUnsigned: true)
!739 = !DIEnumerator(name: "BUILT_IN_NEXTTOWARD", value: 177, isUnsigned: true)
!740 = !DIEnumerator(name: "BUILT_IN_NEXTTOWARDF", value: 178, isUnsigned: true)
!741 = !DIEnumerator(name: "BUILT_IN_NEXTTOWARDL", value: 179, isUnsigned: true)
!742 = !DIEnumerator(name: "BUILT_IN_POW", value: 180, isUnsigned: true)
!743 = !DIEnumerator(name: "BUILT_IN_POW10", value: 181, isUnsigned: true)
!744 = !DIEnumerator(name: "BUILT_IN_POW10F", value: 182, isUnsigned: true)
!745 = !DIEnumerator(name: "BUILT_IN_POW10L", value: 183, isUnsigned: true)
!746 = !DIEnumerator(name: "BUILT_IN_POWF", value: 184, isUnsigned: true)
!747 = !DIEnumerator(name: "BUILT_IN_POWI", value: 185, isUnsigned: true)
!748 = !DIEnumerator(name: "BUILT_IN_POWIF", value: 186, isUnsigned: true)
!749 = !DIEnumerator(name: "BUILT_IN_POWIL", value: 187, isUnsigned: true)
!750 = !DIEnumerator(name: "BUILT_IN_POWL", value: 188, isUnsigned: true)
!751 = !DIEnumerator(name: "BUILT_IN_REMAINDER", value: 189, isUnsigned: true)
!752 = !DIEnumerator(name: "BUILT_IN_REMAINDERF", value: 190, isUnsigned: true)
!753 = !DIEnumerator(name: "BUILT_IN_REMAINDERL", value: 191, isUnsigned: true)
!754 = !DIEnumerator(name: "BUILT_IN_REMQUO", value: 192, isUnsigned: true)
!755 = !DIEnumerator(name: "BUILT_IN_REMQUOF", value: 193, isUnsigned: true)
!756 = !DIEnumerator(name: "BUILT_IN_REMQUOL", value: 194, isUnsigned: true)
!757 = !DIEnumerator(name: "BUILT_IN_RINT", value: 195, isUnsigned: true)
!758 = !DIEnumerator(name: "BUILT_IN_RINTF", value: 196, isUnsigned: true)
!759 = !DIEnumerator(name: "BUILT_IN_RINTL", value: 197, isUnsigned: true)
!760 = !DIEnumerator(name: "BUILT_IN_ROUND", value: 198, isUnsigned: true)
!761 = !DIEnumerator(name: "BUILT_IN_ROUNDF", value: 199, isUnsigned: true)
!762 = !DIEnumerator(name: "BUILT_IN_ROUNDL", value: 200, isUnsigned: true)
!763 = !DIEnumerator(name: "BUILT_IN_SCALB", value: 201, isUnsigned: true)
!764 = !DIEnumerator(name: "BUILT_IN_SCALBF", value: 202, isUnsigned: true)
!765 = !DIEnumerator(name: "BUILT_IN_SCALBL", value: 203, isUnsigned: true)
!766 = !DIEnumerator(name: "BUILT_IN_SCALBLN", value: 204, isUnsigned: true)
!767 = !DIEnumerator(name: "BUILT_IN_SCALBLNF", value: 205, isUnsigned: true)
!768 = !DIEnumerator(name: "BUILT_IN_SCALBLNL", value: 206, isUnsigned: true)
!769 = !DIEnumerator(name: "BUILT_IN_SCALBN", value: 207, isUnsigned: true)
!770 = !DIEnumerator(name: "BUILT_IN_SCALBNF", value: 208, isUnsigned: true)
!771 = !DIEnumerator(name: "BUILT_IN_SCALBNL", value: 209, isUnsigned: true)
!772 = !DIEnumerator(name: "BUILT_IN_SIGNBIT", value: 210, isUnsigned: true)
!773 = !DIEnumerator(name: "BUILT_IN_SIGNBITF", value: 211, isUnsigned: true)
!774 = !DIEnumerator(name: "BUILT_IN_SIGNBITL", value: 212, isUnsigned: true)
!775 = !DIEnumerator(name: "BUILT_IN_SIGNBITD32", value: 213, isUnsigned: true)
!776 = !DIEnumerator(name: "BUILT_IN_SIGNBITD64", value: 214, isUnsigned: true)
!777 = !DIEnumerator(name: "BUILT_IN_SIGNBITD128", value: 215, isUnsigned: true)
!778 = !DIEnumerator(name: "BUILT_IN_SIGNIFICAND", value: 216, isUnsigned: true)
!779 = !DIEnumerator(name: "BUILT_IN_SIGNIFICANDF", value: 217, isUnsigned: true)
!780 = !DIEnumerator(name: "BUILT_IN_SIGNIFICANDL", value: 218, isUnsigned: true)
!781 = !DIEnumerator(name: "BUILT_IN_SIN", value: 219, isUnsigned: true)
!782 = !DIEnumerator(name: "BUILT_IN_SINCOS", value: 220, isUnsigned: true)
!783 = !DIEnumerator(name: "BUILT_IN_SINCOSF", value: 221, isUnsigned: true)
!784 = !DIEnumerator(name: "BUILT_IN_SINCOSL", value: 222, isUnsigned: true)
!785 = !DIEnumerator(name: "BUILT_IN_SINF", value: 223, isUnsigned: true)
!786 = !DIEnumerator(name: "BUILT_IN_SINH", value: 224, isUnsigned: true)
!787 = !DIEnumerator(name: "BUILT_IN_SINHF", value: 225, isUnsigned: true)
!788 = !DIEnumerator(name: "BUILT_IN_SINHL", value: 226, isUnsigned: true)
!789 = !DIEnumerator(name: "BUILT_IN_SINL", value: 227, isUnsigned: true)
!790 = !DIEnumerator(name: "BUILT_IN_SQRT", value: 228, isUnsigned: true)
!791 = !DIEnumerator(name: "BUILT_IN_SQRTF", value: 229, isUnsigned: true)
!792 = !DIEnumerator(name: "BUILT_IN_SQRTL", value: 230, isUnsigned: true)
!793 = !DIEnumerator(name: "BUILT_IN_TAN", value: 231, isUnsigned: true)
!794 = !DIEnumerator(name: "BUILT_IN_TANF", value: 232, isUnsigned: true)
!795 = !DIEnumerator(name: "BUILT_IN_TANH", value: 233, isUnsigned: true)
!796 = !DIEnumerator(name: "BUILT_IN_TANHF", value: 234, isUnsigned: true)
!797 = !DIEnumerator(name: "BUILT_IN_TANHL", value: 235, isUnsigned: true)
!798 = !DIEnumerator(name: "BUILT_IN_TANL", value: 236, isUnsigned: true)
!799 = !DIEnumerator(name: "BUILT_IN_TGAMMA", value: 237, isUnsigned: true)
!800 = !DIEnumerator(name: "BUILT_IN_TGAMMAF", value: 238, isUnsigned: true)
!801 = !DIEnumerator(name: "BUILT_IN_TGAMMAL", value: 239, isUnsigned: true)
!802 = !DIEnumerator(name: "BUILT_IN_TRUNC", value: 240, isUnsigned: true)
!803 = !DIEnumerator(name: "BUILT_IN_TRUNCF", value: 241, isUnsigned: true)
!804 = !DIEnumerator(name: "BUILT_IN_TRUNCL", value: 242, isUnsigned: true)
!805 = !DIEnumerator(name: "BUILT_IN_Y0", value: 243, isUnsigned: true)
!806 = !DIEnumerator(name: "BUILT_IN_Y0F", value: 244, isUnsigned: true)
!807 = !DIEnumerator(name: "BUILT_IN_Y0L", value: 245, isUnsigned: true)
!808 = !DIEnumerator(name: "BUILT_IN_Y1", value: 246, isUnsigned: true)
!809 = !DIEnumerator(name: "BUILT_IN_Y1F", value: 247, isUnsigned: true)
!810 = !DIEnumerator(name: "BUILT_IN_Y1L", value: 248, isUnsigned: true)
!811 = !DIEnumerator(name: "BUILT_IN_YN", value: 249, isUnsigned: true)
!812 = !DIEnumerator(name: "BUILT_IN_YNF", value: 250, isUnsigned: true)
!813 = !DIEnumerator(name: "BUILT_IN_YNL", value: 251, isUnsigned: true)
!814 = !DIEnumerator(name: "BUILT_IN_CABS", value: 252, isUnsigned: true)
!815 = !DIEnumerator(name: "BUILT_IN_CABSF", value: 253, isUnsigned: true)
!816 = !DIEnumerator(name: "BUILT_IN_CABSL", value: 254, isUnsigned: true)
!817 = !DIEnumerator(name: "BUILT_IN_CACOS", value: 255, isUnsigned: true)
!818 = !DIEnumerator(name: "BUILT_IN_CACOSF", value: 256, isUnsigned: true)
!819 = !DIEnumerator(name: "BUILT_IN_CACOSH", value: 257, isUnsigned: true)
!820 = !DIEnumerator(name: "BUILT_IN_CACOSHF", value: 258, isUnsigned: true)
!821 = !DIEnumerator(name: "BUILT_IN_CACOSHL", value: 259, isUnsigned: true)
!822 = !DIEnumerator(name: "BUILT_IN_CACOSL", value: 260, isUnsigned: true)
!823 = !DIEnumerator(name: "BUILT_IN_CARG", value: 261, isUnsigned: true)
!824 = !DIEnumerator(name: "BUILT_IN_CARGF", value: 262, isUnsigned: true)
!825 = !DIEnumerator(name: "BUILT_IN_CARGL", value: 263, isUnsigned: true)
!826 = !DIEnumerator(name: "BUILT_IN_CASIN", value: 264, isUnsigned: true)
!827 = !DIEnumerator(name: "BUILT_IN_CASINF", value: 265, isUnsigned: true)
!828 = !DIEnumerator(name: "BUILT_IN_CASINH", value: 266, isUnsigned: true)
!829 = !DIEnumerator(name: "BUILT_IN_CASINHF", value: 267, isUnsigned: true)
!830 = !DIEnumerator(name: "BUILT_IN_CASINHL", value: 268, isUnsigned: true)
!831 = !DIEnumerator(name: "BUILT_IN_CASINL", value: 269, isUnsigned: true)
!832 = !DIEnumerator(name: "BUILT_IN_CATAN", value: 270, isUnsigned: true)
!833 = !DIEnumerator(name: "BUILT_IN_CATANF", value: 271, isUnsigned: true)
!834 = !DIEnumerator(name: "BUILT_IN_CATANH", value: 272, isUnsigned: true)
!835 = !DIEnumerator(name: "BUILT_IN_CATANHF", value: 273, isUnsigned: true)
!836 = !DIEnumerator(name: "BUILT_IN_CATANHL", value: 274, isUnsigned: true)
!837 = !DIEnumerator(name: "BUILT_IN_CATANL", value: 275, isUnsigned: true)
!838 = !DIEnumerator(name: "BUILT_IN_CCOS", value: 276, isUnsigned: true)
!839 = !DIEnumerator(name: "BUILT_IN_CCOSF", value: 277, isUnsigned: true)
!840 = !DIEnumerator(name: "BUILT_IN_CCOSH", value: 278, isUnsigned: true)
!841 = !DIEnumerator(name: "BUILT_IN_CCOSHF", value: 279, isUnsigned: true)
!842 = !DIEnumerator(name: "BUILT_IN_CCOSHL", value: 280, isUnsigned: true)
!843 = !DIEnumerator(name: "BUILT_IN_CCOSL", value: 281, isUnsigned: true)
!844 = !DIEnumerator(name: "BUILT_IN_CEXP", value: 282, isUnsigned: true)
!845 = !DIEnumerator(name: "BUILT_IN_CEXPF", value: 283, isUnsigned: true)
!846 = !DIEnumerator(name: "BUILT_IN_CEXPL", value: 284, isUnsigned: true)
!847 = !DIEnumerator(name: "BUILT_IN_CEXPI", value: 285, isUnsigned: true)
!848 = !DIEnumerator(name: "BUILT_IN_CEXPIF", value: 286, isUnsigned: true)
!849 = !DIEnumerator(name: "BUILT_IN_CEXPIL", value: 287, isUnsigned: true)
!850 = !DIEnumerator(name: "BUILT_IN_CIMAG", value: 288, isUnsigned: true)
!851 = !DIEnumerator(name: "BUILT_IN_CIMAGF", value: 289, isUnsigned: true)
!852 = !DIEnumerator(name: "BUILT_IN_CIMAGL", value: 290, isUnsigned: true)
!853 = !DIEnumerator(name: "BUILT_IN_CLOG", value: 291, isUnsigned: true)
!854 = !DIEnumerator(name: "BUILT_IN_CLOGF", value: 292, isUnsigned: true)
!855 = !DIEnumerator(name: "BUILT_IN_CLOGL", value: 293, isUnsigned: true)
!856 = !DIEnumerator(name: "BUILT_IN_CLOG10", value: 294, isUnsigned: true)
!857 = !DIEnumerator(name: "BUILT_IN_CLOG10F", value: 295, isUnsigned: true)
!858 = !DIEnumerator(name: "BUILT_IN_CLOG10L", value: 296, isUnsigned: true)
!859 = !DIEnumerator(name: "BUILT_IN_CONJ", value: 297, isUnsigned: true)
!860 = !DIEnumerator(name: "BUILT_IN_CONJF", value: 298, isUnsigned: true)
!861 = !DIEnumerator(name: "BUILT_IN_CONJL", value: 299, isUnsigned: true)
!862 = !DIEnumerator(name: "BUILT_IN_CPOW", value: 300, isUnsigned: true)
!863 = !DIEnumerator(name: "BUILT_IN_CPOWF", value: 301, isUnsigned: true)
!864 = !DIEnumerator(name: "BUILT_IN_CPOWL", value: 302, isUnsigned: true)
!865 = !DIEnumerator(name: "BUILT_IN_CPROJ", value: 303, isUnsigned: true)
!866 = !DIEnumerator(name: "BUILT_IN_CPROJF", value: 304, isUnsigned: true)
!867 = !DIEnumerator(name: "BUILT_IN_CPROJL", value: 305, isUnsigned: true)
!868 = !DIEnumerator(name: "BUILT_IN_CREAL", value: 306, isUnsigned: true)
!869 = !DIEnumerator(name: "BUILT_IN_CREALF", value: 307, isUnsigned: true)
!870 = !DIEnumerator(name: "BUILT_IN_CREALL", value: 308, isUnsigned: true)
!871 = !DIEnumerator(name: "BUILT_IN_CSIN", value: 309, isUnsigned: true)
!872 = !DIEnumerator(name: "BUILT_IN_CSINF", value: 310, isUnsigned: true)
!873 = !DIEnumerator(name: "BUILT_IN_CSINH", value: 311, isUnsigned: true)
!874 = !DIEnumerator(name: "BUILT_IN_CSINHF", value: 312, isUnsigned: true)
!875 = !DIEnumerator(name: "BUILT_IN_CSINHL", value: 313, isUnsigned: true)
!876 = !DIEnumerator(name: "BUILT_IN_CSINL", value: 314, isUnsigned: true)
!877 = !DIEnumerator(name: "BUILT_IN_CSQRT", value: 315, isUnsigned: true)
!878 = !DIEnumerator(name: "BUILT_IN_CSQRTF", value: 316, isUnsigned: true)
!879 = !DIEnumerator(name: "BUILT_IN_CSQRTL", value: 317, isUnsigned: true)
!880 = !DIEnumerator(name: "BUILT_IN_CTAN", value: 318, isUnsigned: true)
!881 = !DIEnumerator(name: "BUILT_IN_CTANF", value: 319, isUnsigned: true)
!882 = !DIEnumerator(name: "BUILT_IN_CTANH", value: 320, isUnsigned: true)
!883 = !DIEnumerator(name: "BUILT_IN_CTANHF", value: 321, isUnsigned: true)
!884 = !DIEnumerator(name: "BUILT_IN_CTANHL", value: 322, isUnsigned: true)
!885 = !DIEnumerator(name: "BUILT_IN_CTANL", value: 323, isUnsigned: true)
!886 = !DIEnumerator(name: "BUILT_IN_BCMP", value: 324, isUnsigned: true)
!887 = !DIEnumerator(name: "BUILT_IN_BCOPY", value: 325, isUnsigned: true)
!888 = !DIEnumerator(name: "BUILT_IN_BZERO", value: 326, isUnsigned: true)
!889 = !DIEnumerator(name: "BUILT_IN_INDEX", value: 327, isUnsigned: true)
!890 = !DIEnumerator(name: "BUILT_IN_MEMCHR", value: 328, isUnsigned: true)
!891 = !DIEnumerator(name: "BUILT_IN_MEMCMP", value: 329, isUnsigned: true)
!892 = !DIEnumerator(name: "BUILT_IN_MEMCPY", value: 330, isUnsigned: true)
!893 = !DIEnumerator(name: "BUILT_IN_MEMMOVE", value: 331, isUnsigned: true)
!894 = !DIEnumerator(name: "BUILT_IN_MEMPCPY", value: 332, isUnsigned: true)
!895 = !DIEnumerator(name: "BUILT_IN_MEMSET", value: 333, isUnsigned: true)
!896 = !DIEnumerator(name: "BUILT_IN_RINDEX", value: 334, isUnsigned: true)
!897 = !DIEnumerator(name: "BUILT_IN_STPCPY", value: 335, isUnsigned: true)
!898 = !DIEnumerator(name: "BUILT_IN_STPNCPY", value: 336, isUnsigned: true)
!899 = !DIEnumerator(name: "BUILT_IN_STRCASECMP", value: 337, isUnsigned: true)
!900 = !DIEnumerator(name: "BUILT_IN_STRCAT", value: 338, isUnsigned: true)
!901 = !DIEnumerator(name: "BUILT_IN_STRCHR", value: 339, isUnsigned: true)
!902 = !DIEnumerator(name: "BUILT_IN_STRCMP", value: 340, isUnsigned: true)
!903 = !DIEnumerator(name: "BUILT_IN_STRCPY", value: 341, isUnsigned: true)
!904 = !DIEnumerator(name: "BUILT_IN_STRCSPN", value: 342, isUnsigned: true)
!905 = !DIEnumerator(name: "BUILT_IN_STRDUP", value: 343, isUnsigned: true)
!906 = !DIEnumerator(name: "BUILT_IN_STRNDUP", value: 344, isUnsigned: true)
!907 = !DIEnumerator(name: "BUILT_IN_STRLEN", value: 345, isUnsigned: true)
!908 = !DIEnumerator(name: "BUILT_IN_STRNCASECMP", value: 346, isUnsigned: true)
!909 = !DIEnumerator(name: "BUILT_IN_STRNCAT", value: 347, isUnsigned: true)
!910 = !DIEnumerator(name: "BUILT_IN_STRNCMP", value: 348, isUnsigned: true)
!911 = !DIEnumerator(name: "BUILT_IN_STRNCPY", value: 349, isUnsigned: true)
!912 = !DIEnumerator(name: "BUILT_IN_STRPBRK", value: 350, isUnsigned: true)
!913 = !DIEnumerator(name: "BUILT_IN_STRRCHR", value: 351, isUnsigned: true)
!914 = !DIEnumerator(name: "BUILT_IN_STRSPN", value: 352, isUnsigned: true)
!915 = !DIEnumerator(name: "BUILT_IN_STRSTR", value: 353, isUnsigned: true)
!916 = !DIEnumerator(name: "BUILT_IN_FPRINTF", value: 354, isUnsigned: true)
!917 = !DIEnumerator(name: "BUILT_IN_FPRINTF_UNLOCKED", value: 355, isUnsigned: true)
!918 = !DIEnumerator(name: "BUILT_IN_PUTC", value: 356, isUnsigned: true)
!919 = !DIEnumerator(name: "BUILT_IN_PUTC_UNLOCKED", value: 357, isUnsigned: true)
!920 = !DIEnumerator(name: "BUILT_IN_FPUTC", value: 358, isUnsigned: true)
!921 = !DIEnumerator(name: "BUILT_IN_FPUTC_UNLOCKED", value: 359, isUnsigned: true)
!922 = !DIEnumerator(name: "BUILT_IN_FPUTS", value: 360, isUnsigned: true)
!923 = !DIEnumerator(name: "BUILT_IN_FPUTS_UNLOCKED", value: 361, isUnsigned: true)
!924 = !DIEnumerator(name: "BUILT_IN_FSCANF", value: 362, isUnsigned: true)
!925 = !DIEnumerator(name: "BUILT_IN_FWRITE", value: 363, isUnsigned: true)
!926 = !DIEnumerator(name: "BUILT_IN_FWRITE_UNLOCKED", value: 364, isUnsigned: true)
!927 = !DIEnumerator(name: "BUILT_IN_PRINTF", value: 365, isUnsigned: true)
!928 = !DIEnumerator(name: "BUILT_IN_PRINTF_UNLOCKED", value: 366, isUnsigned: true)
!929 = !DIEnumerator(name: "BUILT_IN_PUTCHAR", value: 367, isUnsigned: true)
!930 = !DIEnumerator(name: "BUILT_IN_PUTCHAR_UNLOCKED", value: 368, isUnsigned: true)
!931 = !DIEnumerator(name: "BUILT_IN_PUTS", value: 369, isUnsigned: true)
!932 = !DIEnumerator(name: "BUILT_IN_PUTS_UNLOCKED", value: 370, isUnsigned: true)
!933 = !DIEnumerator(name: "BUILT_IN_SCANF", value: 371, isUnsigned: true)
!934 = !DIEnumerator(name: "BUILT_IN_SNPRINTF", value: 372, isUnsigned: true)
!935 = !DIEnumerator(name: "BUILT_IN_SPRINTF", value: 373, isUnsigned: true)
!936 = !DIEnumerator(name: "BUILT_IN_SSCANF", value: 374, isUnsigned: true)
!937 = !DIEnumerator(name: "BUILT_IN_VFPRINTF", value: 375, isUnsigned: true)
!938 = !DIEnumerator(name: "BUILT_IN_VFSCANF", value: 376, isUnsigned: true)
!939 = !DIEnumerator(name: "BUILT_IN_VPRINTF", value: 377, isUnsigned: true)
!940 = !DIEnumerator(name: "BUILT_IN_VSCANF", value: 378, isUnsigned: true)
!941 = !DIEnumerator(name: "BUILT_IN_VSNPRINTF", value: 379, isUnsigned: true)
!942 = !DIEnumerator(name: "BUILT_IN_VSPRINTF", value: 380, isUnsigned: true)
!943 = !DIEnumerator(name: "BUILT_IN_VSSCANF", value: 381, isUnsigned: true)
!944 = !DIEnumerator(name: "BUILT_IN_ISALNUM", value: 382, isUnsigned: true)
!945 = !DIEnumerator(name: "BUILT_IN_ISALPHA", value: 383, isUnsigned: true)
!946 = !DIEnumerator(name: "BUILT_IN_ISASCII", value: 384, isUnsigned: true)
!947 = !DIEnumerator(name: "BUILT_IN_ISBLANK", value: 385, isUnsigned: true)
!948 = !DIEnumerator(name: "BUILT_IN_ISCNTRL", value: 386, isUnsigned: true)
!949 = !DIEnumerator(name: "BUILT_IN_ISDIGIT", value: 387, isUnsigned: true)
!950 = !DIEnumerator(name: "BUILT_IN_ISGRAPH", value: 388, isUnsigned: true)
!951 = !DIEnumerator(name: "BUILT_IN_ISLOWER", value: 389, isUnsigned: true)
!952 = !DIEnumerator(name: "BUILT_IN_ISPRINT", value: 390, isUnsigned: true)
!953 = !DIEnumerator(name: "BUILT_IN_ISPUNCT", value: 391, isUnsigned: true)
!954 = !DIEnumerator(name: "BUILT_IN_ISSPACE", value: 392, isUnsigned: true)
!955 = !DIEnumerator(name: "BUILT_IN_ISUPPER", value: 393, isUnsigned: true)
!956 = !DIEnumerator(name: "BUILT_IN_ISXDIGIT", value: 394, isUnsigned: true)
!957 = !DIEnumerator(name: "BUILT_IN_TOASCII", value: 395, isUnsigned: true)
!958 = !DIEnumerator(name: "BUILT_IN_TOLOWER", value: 396, isUnsigned: true)
!959 = !DIEnumerator(name: "BUILT_IN_TOUPPER", value: 397, isUnsigned: true)
!960 = !DIEnumerator(name: "BUILT_IN_ISWALNUM", value: 398, isUnsigned: true)
!961 = !DIEnumerator(name: "BUILT_IN_ISWALPHA", value: 399, isUnsigned: true)
!962 = !DIEnumerator(name: "BUILT_IN_ISWBLANK", value: 400, isUnsigned: true)
!963 = !DIEnumerator(name: "BUILT_IN_ISWCNTRL", value: 401, isUnsigned: true)
!964 = !DIEnumerator(name: "BUILT_IN_ISWDIGIT", value: 402, isUnsigned: true)
!965 = !DIEnumerator(name: "BUILT_IN_ISWGRAPH", value: 403, isUnsigned: true)
!966 = !DIEnumerator(name: "BUILT_IN_ISWLOWER", value: 404, isUnsigned: true)
!967 = !DIEnumerator(name: "BUILT_IN_ISWPRINT", value: 405, isUnsigned: true)
!968 = !DIEnumerator(name: "BUILT_IN_ISWPUNCT", value: 406, isUnsigned: true)
!969 = !DIEnumerator(name: "BUILT_IN_ISWSPACE", value: 407, isUnsigned: true)
!970 = !DIEnumerator(name: "BUILT_IN_ISWUPPER", value: 408, isUnsigned: true)
!971 = !DIEnumerator(name: "BUILT_IN_ISWXDIGIT", value: 409, isUnsigned: true)
!972 = !DIEnumerator(name: "BUILT_IN_TOWLOWER", value: 410, isUnsigned: true)
!973 = !DIEnumerator(name: "BUILT_IN_TOWUPPER", value: 411, isUnsigned: true)
!974 = !DIEnumerator(name: "BUILT_IN_ABORT", value: 412, isUnsigned: true)
!975 = !DIEnumerator(name: "BUILT_IN_ABS", value: 413, isUnsigned: true)
!976 = !DIEnumerator(name: "BUILT_IN_AGGREGATE_INCOMING_ADDRESS", value: 414, isUnsigned: true)
!977 = !DIEnumerator(name: "BUILT_IN_ALLOCA", value: 415, isUnsigned: true)
!978 = !DIEnumerator(name: "BUILT_IN_APPLY", value: 416, isUnsigned: true)
!979 = !DIEnumerator(name: "BUILT_IN_APPLY_ARGS", value: 417, isUnsigned: true)
!980 = !DIEnumerator(name: "BUILT_IN_ARGS_INFO", value: 418, isUnsigned: true)
!981 = !DIEnumerator(name: "BUILT_IN_BSWAP32", value: 419, isUnsigned: true)
!982 = !DIEnumerator(name: "BUILT_IN_BSWAP64", value: 420, isUnsigned: true)
!983 = !DIEnumerator(name: "BUILT_IN_CLEAR_CACHE", value: 421, isUnsigned: true)
!984 = !DIEnumerator(name: "BUILT_IN_CALLOC", value: 422, isUnsigned: true)
!985 = !DIEnumerator(name: "BUILT_IN_CLASSIFY_TYPE", value: 423, isUnsigned: true)
!986 = !DIEnumerator(name: "BUILT_IN_CLZ", value: 424, isUnsigned: true)
!987 = !DIEnumerator(name: "BUILT_IN_CLZIMAX", value: 425, isUnsigned: true)
!988 = !DIEnumerator(name: "BUILT_IN_CLZL", value: 426, isUnsigned: true)
!989 = !DIEnumerator(name: "BUILT_IN_CLZLL", value: 427, isUnsigned: true)
!990 = !DIEnumerator(name: "BUILT_IN_CONSTANT_P", value: 428, isUnsigned: true)
!991 = !DIEnumerator(name: "BUILT_IN_CTZ", value: 429, isUnsigned: true)
!992 = !DIEnumerator(name: "BUILT_IN_CTZIMAX", value: 430, isUnsigned: true)
!993 = !DIEnumerator(name: "BUILT_IN_CTZL", value: 431, isUnsigned: true)
!994 = !DIEnumerator(name: "BUILT_IN_CTZLL", value: 432, isUnsigned: true)
!995 = !DIEnumerator(name: "BUILT_IN_DCGETTEXT", value: 433, isUnsigned: true)
!996 = !DIEnumerator(name: "BUILT_IN_DGETTEXT", value: 434, isUnsigned: true)
!997 = !DIEnumerator(name: "BUILT_IN_DWARF_CFA", value: 435, isUnsigned: true)
!998 = !DIEnumerator(name: "BUILT_IN_DWARF_SP_COLUMN", value: 436, isUnsigned: true)
!999 = !DIEnumerator(name: "BUILT_IN_EH_RETURN", value: 437, isUnsigned: true)
!1000 = !DIEnumerator(name: "BUILT_IN_EH_RETURN_DATA_REGNO", value: 438, isUnsigned: true)
!1001 = !DIEnumerator(name: "BUILT_IN_EXECL", value: 439, isUnsigned: true)
!1002 = !DIEnumerator(name: "BUILT_IN_EXECLP", value: 440, isUnsigned: true)
!1003 = !DIEnumerator(name: "BUILT_IN_EXECLE", value: 441, isUnsigned: true)
!1004 = !DIEnumerator(name: "BUILT_IN_EXECV", value: 442, isUnsigned: true)
!1005 = !DIEnumerator(name: "BUILT_IN_EXECVP", value: 443, isUnsigned: true)
!1006 = !DIEnumerator(name: "BUILT_IN_EXECVE", value: 444, isUnsigned: true)
!1007 = !DIEnumerator(name: "BUILT_IN_EXIT", value: 445, isUnsigned: true)
!1008 = !DIEnumerator(name: "BUILT_IN_EXPECT", value: 446, isUnsigned: true)
!1009 = !DIEnumerator(name: "BUILT_IN_EXTEND_POINTER", value: 447, isUnsigned: true)
!1010 = !DIEnumerator(name: "BUILT_IN_EXTRACT_RETURN_ADDR", value: 448, isUnsigned: true)
!1011 = !DIEnumerator(name: "BUILT_IN_FFS", value: 449, isUnsigned: true)
!1012 = !DIEnumerator(name: "BUILT_IN_FFSIMAX", value: 450, isUnsigned: true)
!1013 = !DIEnumerator(name: "BUILT_IN_FFSL", value: 451, isUnsigned: true)
!1014 = !DIEnumerator(name: "BUILT_IN_FFSLL", value: 452, isUnsigned: true)
!1015 = !DIEnumerator(name: "BUILT_IN_FORK", value: 453, isUnsigned: true)
!1016 = !DIEnumerator(name: "BUILT_IN_FRAME_ADDRESS", value: 454, isUnsigned: true)
!1017 = !DIEnumerator(name: "BUILT_IN_FREE", value: 455, isUnsigned: true)
!1018 = !DIEnumerator(name: "BUILT_IN_FROB_RETURN_ADDR", value: 456, isUnsigned: true)
!1019 = !DIEnumerator(name: "BUILT_IN_GETTEXT", value: 457, isUnsigned: true)
!1020 = !DIEnumerator(name: "BUILT_IN_IMAXABS", value: 458, isUnsigned: true)
!1021 = !DIEnumerator(name: "BUILT_IN_INIT_DWARF_REG_SIZES", value: 459, isUnsigned: true)
!1022 = !DIEnumerator(name: "BUILT_IN_FINITE", value: 460, isUnsigned: true)
!1023 = !DIEnumerator(name: "BUILT_IN_FINITEF", value: 461, isUnsigned: true)
!1024 = !DIEnumerator(name: "BUILT_IN_FINITEL", value: 462, isUnsigned: true)
!1025 = !DIEnumerator(name: "BUILT_IN_FINITED32", value: 463, isUnsigned: true)
!1026 = !DIEnumerator(name: "BUILT_IN_FINITED64", value: 464, isUnsigned: true)
!1027 = !DIEnumerator(name: "BUILT_IN_FINITED128", value: 465, isUnsigned: true)
!1028 = !DIEnumerator(name: "BUILT_IN_FPCLASSIFY", value: 466, isUnsigned: true)
!1029 = !DIEnumerator(name: "BUILT_IN_ISFINITE", value: 467, isUnsigned: true)
!1030 = !DIEnumerator(name: "BUILT_IN_ISINF_SIGN", value: 468, isUnsigned: true)
!1031 = !DIEnumerator(name: "BUILT_IN_ISINF", value: 469, isUnsigned: true)
!1032 = !DIEnumerator(name: "BUILT_IN_ISINFF", value: 470, isUnsigned: true)
!1033 = !DIEnumerator(name: "BUILT_IN_ISINFL", value: 471, isUnsigned: true)
!1034 = !DIEnumerator(name: "BUILT_IN_ISINFD32", value: 472, isUnsigned: true)
!1035 = !DIEnumerator(name: "BUILT_IN_ISINFD64", value: 473, isUnsigned: true)
!1036 = !DIEnumerator(name: "BUILT_IN_ISINFD128", value: 474, isUnsigned: true)
!1037 = !DIEnumerator(name: "BUILT_IN_ISNAN", value: 475, isUnsigned: true)
!1038 = !DIEnumerator(name: "BUILT_IN_ISNANF", value: 476, isUnsigned: true)
!1039 = !DIEnumerator(name: "BUILT_IN_ISNANL", value: 477, isUnsigned: true)
!1040 = !DIEnumerator(name: "BUILT_IN_ISNAND32", value: 478, isUnsigned: true)
!1041 = !DIEnumerator(name: "BUILT_IN_ISNAND64", value: 479, isUnsigned: true)
!1042 = !DIEnumerator(name: "BUILT_IN_ISNAND128", value: 480, isUnsigned: true)
!1043 = !DIEnumerator(name: "BUILT_IN_ISNORMAL", value: 481, isUnsigned: true)
!1044 = !DIEnumerator(name: "BUILT_IN_ISGREATER", value: 482, isUnsigned: true)
!1045 = !DIEnumerator(name: "BUILT_IN_ISGREATEREQUAL", value: 483, isUnsigned: true)
!1046 = !DIEnumerator(name: "BUILT_IN_ISLESS", value: 484, isUnsigned: true)
!1047 = !DIEnumerator(name: "BUILT_IN_ISLESSEQUAL", value: 485, isUnsigned: true)
!1048 = !DIEnumerator(name: "BUILT_IN_ISLESSGREATER", value: 486, isUnsigned: true)
!1049 = !DIEnumerator(name: "BUILT_IN_ISUNORDERED", value: 487, isUnsigned: true)
!1050 = !DIEnumerator(name: "BUILT_IN_LABS", value: 488, isUnsigned: true)
!1051 = !DIEnumerator(name: "BUILT_IN_LLABS", value: 489, isUnsigned: true)
!1052 = !DIEnumerator(name: "BUILT_IN_LONGJMP", value: 490, isUnsigned: true)
!1053 = !DIEnumerator(name: "BUILT_IN_MALLOC", value: 491, isUnsigned: true)
!1054 = !DIEnumerator(name: "BUILT_IN_NEXT_ARG", value: 492, isUnsigned: true)
!1055 = !DIEnumerator(name: "BUILT_IN_PARITY", value: 493, isUnsigned: true)
!1056 = !DIEnumerator(name: "BUILT_IN_PARITYIMAX", value: 494, isUnsigned: true)
!1057 = !DIEnumerator(name: "BUILT_IN_PARITYL", value: 495, isUnsigned: true)
!1058 = !DIEnumerator(name: "BUILT_IN_PARITYLL", value: 496, isUnsigned: true)
!1059 = !DIEnumerator(name: "BUILT_IN_POPCOUNT", value: 497, isUnsigned: true)
!1060 = !DIEnumerator(name: "BUILT_IN_POPCOUNTIMAX", value: 498, isUnsigned: true)
!1061 = !DIEnumerator(name: "BUILT_IN_POPCOUNTL", value: 499, isUnsigned: true)
!1062 = !DIEnumerator(name: "BUILT_IN_POPCOUNTLL", value: 500, isUnsigned: true)
!1063 = !DIEnumerator(name: "BUILT_IN_PREFETCH", value: 501, isUnsigned: true)
!1064 = !DIEnumerator(name: "BUILT_IN_REALLOC", value: 502, isUnsigned: true)
!1065 = !DIEnumerator(name: "BUILT_IN_RETURN", value: 503, isUnsigned: true)
!1066 = !DIEnumerator(name: "BUILT_IN_RETURN_ADDRESS", value: 504, isUnsigned: true)
!1067 = !DIEnumerator(name: "BUILT_IN_SAVEREGS", value: 505, isUnsigned: true)
!1068 = !DIEnumerator(name: "BUILT_IN_SETJMP", value: 506, isUnsigned: true)
!1069 = !DIEnumerator(name: "BUILT_IN_STRFMON", value: 507, isUnsigned: true)
!1070 = !DIEnumerator(name: "BUILT_IN_STRFTIME", value: 508, isUnsigned: true)
!1071 = !DIEnumerator(name: "BUILT_IN_TRAP", value: 509, isUnsigned: true)
!1072 = !DIEnumerator(name: "BUILT_IN_UNREACHABLE", value: 510, isUnsigned: true)
!1073 = !DIEnumerator(name: "BUILT_IN_UNWIND_INIT", value: 511, isUnsigned: true)
!1074 = !DIEnumerator(name: "BUILT_IN_UPDATE_SETJMP_BUF", value: 512, isUnsigned: true)
!1075 = !DIEnumerator(name: "BUILT_IN_VA_COPY", value: 513, isUnsigned: true)
!1076 = !DIEnumerator(name: "BUILT_IN_VA_END", value: 514, isUnsigned: true)
!1077 = !DIEnumerator(name: "BUILT_IN_VA_START", value: 515, isUnsigned: true)
!1078 = !DIEnumerator(name: "BUILT_IN_VA_ARG_PACK", value: 516, isUnsigned: true)
!1079 = !DIEnumerator(name: "BUILT_IN_VA_ARG_PACK_LEN", value: 517, isUnsigned: true)
!1080 = !DIEnumerator(name: "BUILT_IN__EXIT", value: 518, isUnsigned: true)
!1081 = !DIEnumerator(name: "BUILT_IN__EXIT2", value: 519, isUnsigned: true)
!1082 = !DIEnumerator(name: "BUILT_IN_INIT_TRAMPOLINE", value: 520, isUnsigned: true)
!1083 = !DIEnumerator(name: "BUILT_IN_ADJUST_TRAMPOLINE", value: 521, isUnsigned: true)
!1084 = !DIEnumerator(name: "BUILT_IN_NONLOCAL_GOTO", value: 522, isUnsigned: true)
!1085 = !DIEnumerator(name: "BUILT_IN_SETJMP_SETUP", value: 523, isUnsigned: true)
!1086 = !DIEnumerator(name: "BUILT_IN_SETJMP_DISPATCHER", value: 524, isUnsigned: true)
!1087 = !DIEnumerator(name: "BUILT_IN_SETJMP_RECEIVER", value: 525, isUnsigned: true)
!1088 = !DIEnumerator(name: "BUILT_IN_STACK_SAVE", value: 526, isUnsigned: true)
!1089 = !DIEnumerator(name: "BUILT_IN_STACK_RESTORE", value: 527, isUnsigned: true)
!1090 = !DIEnumerator(name: "BUILT_IN_OBJECT_SIZE", value: 528, isUnsigned: true)
!1091 = !DIEnumerator(name: "BUILT_IN_MEMCPY_CHK", value: 529, isUnsigned: true)
!1092 = !DIEnumerator(name: "BUILT_IN_MEMMOVE_CHK", value: 530, isUnsigned: true)
!1093 = !DIEnumerator(name: "BUILT_IN_MEMPCPY_CHK", value: 531, isUnsigned: true)
!1094 = !DIEnumerator(name: "BUILT_IN_MEMSET_CHK", value: 532, isUnsigned: true)
!1095 = !DIEnumerator(name: "BUILT_IN_STPCPY_CHK", value: 533, isUnsigned: true)
!1096 = !DIEnumerator(name: "BUILT_IN_STRCAT_CHK", value: 534, isUnsigned: true)
!1097 = !DIEnumerator(name: "BUILT_IN_STRCPY_CHK", value: 535, isUnsigned: true)
!1098 = !DIEnumerator(name: "BUILT_IN_STRNCAT_CHK", value: 536, isUnsigned: true)
!1099 = !DIEnumerator(name: "BUILT_IN_STRNCPY_CHK", value: 537, isUnsigned: true)
!1100 = !DIEnumerator(name: "BUILT_IN_SNPRINTF_CHK", value: 538, isUnsigned: true)
!1101 = !DIEnumerator(name: "BUILT_IN_SPRINTF_CHK", value: 539, isUnsigned: true)
!1102 = !DIEnumerator(name: "BUILT_IN_VSNPRINTF_CHK", value: 540, isUnsigned: true)
!1103 = !DIEnumerator(name: "BUILT_IN_VSPRINTF_CHK", value: 541, isUnsigned: true)
!1104 = !DIEnumerator(name: "BUILT_IN_FPRINTF_CHK", value: 542, isUnsigned: true)
!1105 = !DIEnumerator(name: "BUILT_IN_PRINTF_CHK", value: 543, isUnsigned: true)
!1106 = !DIEnumerator(name: "BUILT_IN_VFPRINTF_CHK", value: 544, isUnsigned: true)
!1107 = !DIEnumerator(name: "BUILT_IN_VPRINTF_CHK", value: 545, isUnsigned: true)
!1108 = !DIEnumerator(name: "BUILT_IN_PROFILE_FUNC_ENTER", value: 546, isUnsigned: true)
!1109 = !DIEnumerator(name: "BUILT_IN_PROFILE_FUNC_EXIT", value: 547, isUnsigned: true)
!1110 = !DIEnumerator(name: "BUILT_IN_EMUTLS_GET_ADDRESS", value: 548, isUnsigned: true)
!1111 = !DIEnumerator(name: "BUILT_IN_EMUTLS_REGISTER_COMMON", value: 549, isUnsigned: true)
!1112 = !DIEnumerator(name: "BUILT_IN_UNWIND_RESUME", value: 550, isUnsigned: true)
!1113 = !DIEnumerator(name: "BUILT_IN_CXA_END_CLEANUP", value: 551, isUnsigned: true)
!1114 = !DIEnumerator(name: "BUILT_IN_EH_POINTER", value: 552, isUnsigned: true)
!1115 = !DIEnumerator(name: "BUILT_IN_EH_FILTER", value: 553, isUnsigned: true)
!1116 = !DIEnumerator(name: "BUILT_IN_EH_COPY_VALUES", value: 554, isUnsigned: true)
!1117 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_ADD_N", value: 555, isUnsigned: true)
!1118 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_ADD_1", value: 556, isUnsigned: true)
!1119 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_ADD_2", value: 557, isUnsigned: true)
!1120 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_ADD_4", value: 558, isUnsigned: true)
!1121 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_ADD_8", value: 559, isUnsigned: true)
!1122 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_ADD_16", value: 560, isUnsigned: true)
!1123 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_SUB_N", value: 561, isUnsigned: true)
!1124 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_SUB_1", value: 562, isUnsigned: true)
!1125 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_SUB_2", value: 563, isUnsigned: true)
!1126 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_SUB_4", value: 564, isUnsigned: true)
!1127 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_SUB_8", value: 565, isUnsigned: true)
!1128 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_SUB_16", value: 566, isUnsigned: true)
!1129 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_OR_N", value: 567, isUnsigned: true)
!1130 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_OR_1", value: 568, isUnsigned: true)
!1131 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_OR_2", value: 569, isUnsigned: true)
!1132 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_OR_4", value: 570, isUnsigned: true)
!1133 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_OR_8", value: 571, isUnsigned: true)
!1134 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_OR_16", value: 572, isUnsigned: true)
!1135 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_AND_N", value: 573, isUnsigned: true)
!1136 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_AND_1", value: 574, isUnsigned: true)
!1137 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_AND_2", value: 575, isUnsigned: true)
!1138 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_AND_4", value: 576, isUnsigned: true)
!1139 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_AND_8", value: 577, isUnsigned: true)
!1140 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_AND_16", value: 578, isUnsigned: true)
!1141 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_XOR_N", value: 579, isUnsigned: true)
!1142 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_XOR_1", value: 580, isUnsigned: true)
!1143 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_XOR_2", value: 581, isUnsigned: true)
!1144 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_XOR_4", value: 582, isUnsigned: true)
!1145 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_XOR_8", value: 583, isUnsigned: true)
!1146 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_XOR_16", value: 584, isUnsigned: true)
!1147 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_NAND_N", value: 585, isUnsigned: true)
!1148 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_NAND_1", value: 586, isUnsigned: true)
!1149 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_NAND_2", value: 587, isUnsigned: true)
!1150 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_NAND_4", value: 588, isUnsigned: true)
!1151 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_NAND_8", value: 589, isUnsigned: true)
!1152 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_NAND_16", value: 590, isUnsigned: true)
!1153 = !DIEnumerator(name: "BUILT_IN_ADD_AND_FETCH_N", value: 591, isUnsigned: true)
!1154 = !DIEnumerator(name: "BUILT_IN_ADD_AND_FETCH_1", value: 592, isUnsigned: true)
!1155 = !DIEnumerator(name: "BUILT_IN_ADD_AND_FETCH_2", value: 593, isUnsigned: true)
!1156 = !DIEnumerator(name: "BUILT_IN_ADD_AND_FETCH_4", value: 594, isUnsigned: true)
!1157 = !DIEnumerator(name: "BUILT_IN_ADD_AND_FETCH_8", value: 595, isUnsigned: true)
!1158 = !DIEnumerator(name: "BUILT_IN_ADD_AND_FETCH_16", value: 596, isUnsigned: true)
!1159 = !DIEnumerator(name: "BUILT_IN_SUB_AND_FETCH_N", value: 597, isUnsigned: true)
!1160 = !DIEnumerator(name: "BUILT_IN_SUB_AND_FETCH_1", value: 598, isUnsigned: true)
!1161 = !DIEnumerator(name: "BUILT_IN_SUB_AND_FETCH_2", value: 599, isUnsigned: true)
!1162 = !DIEnumerator(name: "BUILT_IN_SUB_AND_FETCH_4", value: 600, isUnsigned: true)
!1163 = !DIEnumerator(name: "BUILT_IN_SUB_AND_FETCH_8", value: 601, isUnsigned: true)
!1164 = !DIEnumerator(name: "BUILT_IN_SUB_AND_FETCH_16", value: 602, isUnsigned: true)
!1165 = !DIEnumerator(name: "BUILT_IN_OR_AND_FETCH_N", value: 603, isUnsigned: true)
!1166 = !DIEnumerator(name: "BUILT_IN_OR_AND_FETCH_1", value: 604, isUnsigned: true)
!1167 = !DIEnumerator(name: "BUILT_IN_OR_AND_FETCH_2", value: 605, isUnsigned: true)
!1168 = !DIEnumerator(name: "BUILT_IN_OR_AND_FETCH_4", value: 606, isUnsigned: true)
!1169 = !DIEnumerator(name: "BUILT_IN_OR_AND_FETCH_8", value: 607, isUnsigned: true)
!1170 = !DIEnumerator(name: "BUILT_IN_OR_AND_FETCH_16", value: 608, isUnsigned: true)
!1171 = !DIEnumerator(name: "BUILT_IN_AND_AND_FETCH_N", value: 609, isUnsigned: true)
!1172 = !DIEnumerator(name: "BUILT_IN_AND_AND_FETCH_1", value: 610, isUnsigned: true)
!1173 = !DIEnumerator(name: "BUILT_IN_AND_AND_FETCH_2", value: 611, isUnsigned: true)
!1174 = !DIEnumerator(name: "BUILT_IN_AND_AND_FETCH_4", value: 612, isUnsigned: true)
!1175 = !DIEnumerator(name: "BUILT_IN_AND_AND_FETCH_8", value: 613, isUnsigned: true)
!1176 = !DIEnumerator(name: "BUILT_IN_AND_AND_FETCH_16", value: 614, isUnsigned: true)
!1177 = !DIEnumerator(name: "BUILT_IN_XOR_AND_FETCH_N", value: 615, isUnsigned: true)
!1178 = !DIEnumerator(name: "BUILT_IN_XOR_AND_FETCH_1", value: 616, isUnsigned: true)
!1179 = !DIEnumerator(name: "BUILT_IN_XOR_AND_FETCH_2", value: 617, isUnsigned: true)
!1180 = !DIEnumerator(name: "BUILT_IN_XOR_AND_FETCH_4", value: 618, isUnsigned: true)
!1181 = !DIEnumerator(name: "BUILT_IN_XOR_AND_FETCH_8", value: 619, isUnsigned: true)
!1182 = !DIEnumerator(name: "BUILT_IN_XOR_AND_FETCH_16", value: 620, isUnsigned: true)
!1183 = !DIEnumerator(name: "BUILT_IN_NAND_AND_FETCH_N", value: 621, isUnsigned: true)
!1184 = !DIEnumerator(name: "BUILT_IN_NAND_AND_FETCH_1", value: 622, isUnsigned: true)
!1185 = !DIEnumerator(name: "BUILT_IN_NAND_AND_FETCH_2", value: 623, isUnsigned: true)
!1186 = !DIEnumerator(name: "BUILT_IN_NAND_AND_FETCH_4", value: 624, isUnsigned: true)
!1187 = !DIEnumerator(name: "BUILT_IN_NAND_AND_FETCH_8", value: 625, isUnsigned: true)
!1188 = !DIEnumerator(name: "BUILT_IN_NAND_AND_FETCH_16", value: 626, isUnsigned: true)
!1189 = !DIEnumerator(name: "BUILT_IN_BOOL_COMPARE_AND_SWAP_N", value: 627, isUnsigned: true)
!1190 = !DIEnumerator(name: "BUILT_IN_BOOL_COMPARE_AND_SWAP_1", value: 628, isUnsigned: true)
!1191 = !DIEnumerator(name: "BUILT_IN_BOOL_COMPARE_AND_SWAP_2", value: 629, isUnsigned: true)
!1192 = !DIEnumerator(name: "BUILT_IN_BOOL_COMPARE_AND_SWAP_4", value: 630, isUnsigned: true)
!1193 = !DIEnumerator(name: "BUILT_IN_BOOL_COMPARE_AND_SWAP_8", value: 631, isUnsigned: true)
!1194 = !DIEnumerator(name: "BUILT_IN_BOOL_COMPARE_AND_SWAP_16", value: 632, isUnsigned: true)
!1195 = !DIEnumerator(name: "BUILT_IN_VAL_COMPARE_AND_SWAP_N", value: 633, isUnsigned: true)
!1196 = !DIEnumerator(name: "BUILT_IN_VAL_COMPARE_AND_SWAP_1", value: 634, isUnsigned: true)
!1197 = !DIEnumerator(name: "BUILT_IN_VAL_COMPARE_AND_SWAP_2", value: 635, isUnsigned: true)
!1198 = !DIEnumerator(name: "BUILT_IN_VAL_COMPARE_AND_SWAP_4", value: 636, isUnsigned: true)
!1199 = !DIEnumerator(name: "BUILT_IN_VAL_COMPARE_AND_SWAP_8", value: 637, isUnsigned: true)
!1200 = !DIEnumerator(name: "BUILT_IN_VAL_COMPARE_AND_SWAP_16", value: 638, isUnsigned: true)
!1201 = !DIEnumerator(name: "BUILT_IN_LOCK_TEST_AND_SET_N", value: 639, isUnsigned: true)
!1202 = !DIEnumerator(name: "BUILT_IN_LOCK_TEST_AND_SET_1", value: 640, isUnsigned: true)
!1203 = !DIEnumerator(name: "BUILT_IN_LOCK_TEST_AND_SET_2", value: 641, isUnsigned: true)
!1204 = !DIEnumerator(name: "BUILT_IN_LOCK_TEST_AND_SET_4", value: 642, isUnsigned: true)
!1205 = !DIEnumerator(name: "BUILT_IN_LOCK_TEST_AND_SET_8", value: 643, isUnsigned: true)
!1206 = !DIEnumerator(name: "BUILT_IN_LOCK_TEST_AND_SET_16", value: 644, isUnsigned: true)
!1207 = !DIEnumerator(name: "BUILT_IN_LOCK_RELEASE_N", value: 645, isUnsigned: true)
!1208 = !DIEnumerator(name: "BUILT_IN_LOCK_RELEASE_1", value: 646, isUnsigned: true)
!1209 = !DIEnumerator(name: "BUILT_IN_LOCK_RELEASE_2", value: 647, isUnsigned: true)
!1210 = !DIEnumerator(name: "BUILT_IN_LOCK_RELEASE_4", value: 648, isUnsigned: true)
!1211 = !DIEnumerator(name: "BUILT_IN_LOCK_RELEASE_8", value: 649, isUnsigned: true)
!1212 = !DIEnumerator(name: "BUILT_IN_LOCK_RELEASE_16", value: 650, isUnsigned: true)
!1213 = !DIEnumerator(name: "BUILT_IN_SYNCHRONIZE", value: 651, isUnsigned: true)
!1214 = !DIEnumerator(name: "BUILT_IN_OMP_GET_THREAD_NUM", value: 652, isUnsigned: true)
!1215 = !DIEnumerator(name: "BUILT_IN_OMP_GET_NUM_THREADS", value: 653, isUnsigned: true)
!1216 = !DIEnumerator(name: "BUILT_IN_GOMP_ATOMIC_START", value: 654, isUnsigned: true)
!1217 = !DIEnumerator(name: "BUILT_IN_GOMP_ATOMIC_END", value: 655, isUnsigned: true)
!1218 = !DIEnumerator(name: "BUILT_IN_GOMP_BARRIER", value: 656, isUnsigned: true)
!1219 = !DIEnumerator(name: "BUILT_IN_GOMP_TASKWAIT", value: 657, isUnsigned: true)
!1220 = !DIEnumerator(name: "BUILT_IN_GOMP_CRITICAL_START", value: 658, isUnsigned: true)
!1221 = !DIEnumerator(name: "BUILT_IN_GOMP_CRITICAL_END", value: 659, isUnsigned: true)
!1222 = !DIEnumerator(name: "BUILT_IN_GOMP_CRITICAL_NAME_START", value: 660, isUnsigned: true)
!1223 = !DIEnumerator(name: "BUILT_IN_GOMP_CRITICAL_NAME_END", value: 661, isUnsigned: true)
!1224 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_STATIC_START", value: 662, isUnsigned: true)
!1225 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_DYNAMIC_START", value: 663, isUnsigned: true)
!1226 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_GUIDED_START", value: 664, isUnsigned: true)
!1227 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_RUNTIME_START", value: 665, isUnsigned: true)
!1228 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_STATIC_START", value: 666, isUnsigned: true)
!1229 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_DYNAMIC_START", value: 667, isUnsigned: true)
!1230 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_GUIDED_START", value: 668, isUnsigned: true)
!1231 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_RUNTIME_START", value: 669, isUnsigned: true)
!1232 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_STATIC_NEXT", value: 670, isUnsigned: true)
!1233 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_DYNAMIC_NEXT", value: 671, isUnsigned: true)
!1234 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_GUIDED_NEXT", value: 672, isUnsigned: true)
!1235 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_RUNTIME_NEXT", value: 673, isUnsigned: true)
!1236 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_STATIC_NEXT", value: 674, isUnsigned: true)
!1237 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_DYNAMIC_NEXT", value: 675, isUnsigned: true)
!1238 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_GUIDED_NEXT", value: 676, isUnsigned: true)
!1239 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_RUNTIME_NEXT", value: 677, isUnsigned: true)
!1240 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_STATIC_START", value: 678, isUnsigned: true)
!1241 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_DYNAMIC_START", value: 679, isUnsigned: true)
!1242 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_GUIDED_START", value: 680, isUnsigned: true)
!1243 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_RUNTIME_START", value: 681, isUnsigned: true)
!1244 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_STATIC_START", value: 682, isUnsigned: true)
!1245 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_DYNAMIC_START", value: 683, isUnsigned: true)
!1246 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_GUIDED_START", value: 684, isUnsigned: true)
!1247 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_RUNTIME_START", value: 685, isUnsigned: true)
!1248 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_STATIC_NEXT", value: 686, isUnsigned: true)
!1249 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_DYNAMIC_NEXT", value: 687, isUnsigned: true)
!1250 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_GUIDED_NEXT", value: 688, isUnsigned: true)
!1251 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_RUNTIME_NEXT", value: 689, isUnsigned: true)
!1252 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_STATIC_NEXT", value: 690, isUnsigned: true)
!1253 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_DYNAMIC_NEXT", value: 691, isUnsigned: true)
!1254 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_GUIDED_NEXT", value: 692, isUnsigned: true)
!1255 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_RUNTIME_NEXT", value: 693, isUnsigned: true)
!1256 = !DIEnumerator(name: "BUILT_IN_GOMP_PARALLEL_LOOP_STATIC_START", value: 694, isUnsigned: true)
!1257 = !DIEnumerator(name: "BUILT_IN_GOMP_PARALLEL_LOOP_DYNAMIC_START", value: 695, isUnsigned: true)
!1258 = !DIEnumerator(name: "BUILT_IN_GOMP_PARALLEL_LOOP_GUIDED_START", value: 696, isUnsigned: true)
!1259 = !DIEnumerator(name: "BUILT_IN_GOMP_PARALLEL_LOOP_RUNTIME_START", value: 697, isUnsigned: true)
!1260 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_END", value: 698, isUnsigned: true)
!1261 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_END_NOWAIT", value: 699, isUnsigned: true)
!1262 = !DIEnumerator(name: "BUILT_IN_GOMP_ORDERED_START", value: 700, isUnsigned: true)
!1263 = !DIEnumerator(name: "BUILT_IN_GOMP_ORDERED_END", value: 701, isUnsigned: true)
!1264 = !DIEnumerator(name: "BUILT_IN_GOMP_PARALLEL_START", value: 702, isUnsigned: true)
!1265 = !DIEnumerator(name: "BUILT_IN_GOMP_PARALLEL_END", value: 703, isUnsigned: true)
!1266 = !DIEnumerator(name: "BUILT_IN_GOMP_TASK", value: 704, isUnsigned: true)
!1267 = !DIEnumerator(name: "BUILT_IN_GOMP_SECTIONS_START", value: 705, isUnsigned: true)
!1268 = !DIEnumerator(name: "BUILT_IN_GOMP_SECTIONS_NEXT", value: 706, isUnsigned: true)
!1269 = !DIEnumerator(name: "BUILT_IN_GOMP_PARALLEL_SECTIONS_START", value: 707, isUnsigned: true)
!1270 = !DIEnumerator(name: "BUILT_IN_GOMP_SECTIONS_END", value: 708, isUnsigned: true)
!1271 = !DIEnumerator(name: "BUILT_IN_GOMP_SECTIONS_END_NOWAIT", value: 709, isUnsigned: true)
!1272 = !DIEnumerator(name: "BUILT_IN_GOMP_SINGLE_START", value: 710, isUnsigned: true)
!1273 = !DIEnumerator(name: "BUILT_IN_GOMP_SINGLE_COPY_START", value: 711, isUnsigned: true)
!1274 = !DIEnumerator(name: "BUILT_IN_GOMP_SINGLE_COPY_END", value: 712, isUnsigned: true)
!1275 = !DIEnumerator(name: "BUILT_IN_COMPLEX_MUL_MIN", value: 713, isUnsigned: true)
!1276 = !DIEnumerator(name: "BUILT_IN_COMPLEX_MUL_MAX", value: 716, isUnsigned: true)
!1277 = !DIEnumerator(name: "BUILT_IN_COMPLEX_DIV_MIN", value: 717, isUnsigned: true)
!1278 = !DIEnumerator(name: "BUILT_IN_COMPLEX_DIV_MAX", value: 720, isUnsigned: true)
!1279 = !DIEnumerator(name: "END_BUILTINS", value: 721, isUnsigned: true)
!1280 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_code", file: !1281, line: 51, baseType: !7, size: 32, elements: !1282)
!1281 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1282 = !{!1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318}
!1283 = !DIEnumerator(name: "GIMPLE_ERROR_MARK", value: 0, isUnsigned: true)
!1284 = !DIEnumerator(name: "GIMPLE_COND", value: 1, isUnsigned: true)
!1285 = !DIEnumerator(name: "GIMPLE_DEBUG", value: 2, isUnsigned: true)
!1286 = !DIEnumerator(name: "GIMPLE_GOTO", value: 3, isUnsigned: true)
!1287 = !DIEnumerator(name: "GIMPLE_LABEL", value: 4, isUnsigned: true)
!1288 = !DIEnumerator(name: "GIMPLE_SWITCH", value: 5, isUnsigned: true)
!1289 = !DIEnumerator(name: "GIMPLE_ASSIGN", value: 6, isUnsigned: true)
!1290 = !DIEnumerator(name: "GIMPLE_ASM", value: 7, isUnsigned: true)
!1291 = !DIEnumerator(name: "GIMPLE_CALL", value: 8, isUnsigned: true)
!1292 = !DIEnumerator(name: "GIMPLE_RETURN", value: 9, isUnsigned: true)
!1293 = !DIEnumerator(name: "GIMPLE_BIND", value: 10, isUnsigned: true)
!1294 = !DIEnumerator(name: "GIMPLE_CATCH", value: 11, isUnsigned: true)
!1295 = !DIEnumerator(name: "GIMPLE_EH_FILTER", value: 12, isUnsigned: true)
!1296 = !DIEnumerator(name: "GIMPLE_EH_MUST_NOT_THROW", value: 13, isUnsigned: true)
!1297 = !DIEnumerator(name: "GIMPLE_RESX", value: 14, isUnsigned: true)
!1298 = !DIEnumerator(name: "GIMPLE_EH_DISPATCH", value: 15, isUnsigned: true)
!1299 = !DIEnumerator(name: "GIMPLE_PHI", value: 16, isUnsigned: true)
!1300 = !DIEnumerator(name: "GIMPLE_TRY", value: 17, isUnsigned: true)
!1301 = !DIEnumerator(name: "GIMPLE_NOP", value: 18, isUnsigned: true)
!1302 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_LOAD", value: 19, isUnsigned: true)
!1303 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_STORE", value: 20, isUnsigned: true)
!1304 = !DIEnumerator(name: "GIMPLE_OMP_CONTINUE", value: 21, isUnsigned: true)
!1305 = !DIEnumerator(name: "GIMPLE_OMP_CRITICAL", value: 22, isUnsigned: true)
!1306 = !DIEnumerator(name: "GIMPLE_OMP_FOR", value: 23, isUnsigned: true)
!1307 = !DIEnumerator(name: "GIMPLE_OMP_MASTER", value: 24, isUnsigned: true)
!1308 = !DIEnumerator(name: "GIMPLE_OMP_ORDERED", value: 25, isUnsigned: true)
!1309 = !DIEnumerator(name: "GIMPLE_OMP_PARALLEL", value: 26, isUnsigned: true)
!1310 = !DIEnumerator(name: "GIMPLE_OMP_TASK", value: 27, isUnsigned: true)
!1311 = !DIEnumerator(name: "GIMPLE_OMP_RETURN", value: 28, isUnsigned: true)
!1312 = !DIEnumerator(name: "GIMPLE_OMP_SECTION", value: 29, isUnsigned: true)
!1313 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS", value: 30, isUnsigned: true)
!1314 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS_SWITCH", value: 31, isUnsigned: true)
!1315 = !DIEnumerator(name: "GIMPLE_OMP_SINGLE", value: 32, isUnsigned: true)
!1316 = !DIEnumerator(name: "GIMPLE_PREDICT", value: 33, isUnsigned: true)
!1317 = !DIEnumerator(name: "GIMPLE_WITH_CLEANUP_EXPR", value: 34, isUnsigned: true)
!1318 = !DIEnumerator(name: "LAST_AND_UNUSED_GIMPLE_CODE", value: 35, isUnsigned: true)
!1319 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ssa_op_iter_type", file: !1320, line: 119, baseType: !7, size: 32, elements: !1321)
!1320 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1321 = !{!1322, !1323, !1324, !1325}
!1322 = !DIEnumerator(name: "ssa_op_iter_none", value: 0, isUnsigned: true)
!1323 = !DIEnumerator(name: "ssa_op_iter_tree", value: 1, isUnsigned: true)
!1324 = !DIEnumerator(name: "ssa_op_iter_use", value: 2, isUnsigned: true)
!1325 = !DIEnumerator(name: "ssa_op_iter_def", value: 3, isUnsigned: true)
!1326 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_rhs_class", file: !1281, line: 80, baseType: !7, size: 32, elements: !1327)
!1327 = !{!1328, !1329, !1330, !1331}
!1328 = !DIEnumerator(name: "GIMPLE_INVALID_RHS", value: 0, isUnsigned: true)
!1329 = !DIEnumerator(name: "GIMPLE_BINARY_RHS", value: 1, isUnsigned: true)
!1330 = !DIEnumerator(name: "GIMPLE_UNARY_RHS", value: 2, isUnsigned: true)
!1331 = !DIEnumerator(name: "GIMPLE_SINGLE_RHS", value: 3, isUnsigned: true)
!1332 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_statement_structure_enum", file: !1281, line: 727, baseType: !7, size: 32, elements: !1333)
!1333 = !{!1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357}
!1334 = !DIEnumerator(name: "GSS_BASE", value: 0, isUnsigned: true)
!1335 = !DIEnumerator(name: "GSS_WITH_OPS", value: 1, isUnsigned: true)
!1336 = !DIEnumerator(name: "GSS_WITH_MEM_OPS_BASE", value: 2, isUnsigned: true)
!1337 = !DIEnumerator(name: "GSS_WITH_MEM_OPS", value: 3, isUnsigned: true)
!1338 = !DIEnumerator(name: "GSS_ASM", value: 4, isUnsigned: true)
!1339 = !DIEnumerator(name: "GSS_BIND", value: 5, isUnsigned: true)
!1340 = !DIEnumerator(name: "GSS_PHI", value: 6, isUnsigned: true)
!1341 = !DIEnumerator(name: "GSS_TRY", value: 7, isUnsigned: true)
!1342 = !DIEnumerator(name: "GSS_CATCH", value: 8, isUnsigned: true)
!1343 = !DIEnumerator(name: "GSS_EH_FILTER", value: 9, isUnsigned: true)
!1344 = !DIEnumerator(name: "GSS_EH_MNT", value: 10, isUnsigned: true)
!1345 = !DIEnumerator(name: "GSS_EH_CTRL", value: 11, isUnsigned: true)
!1346 = !DIEnumerator(name: "GSS_WCE", value: 12, isUnsigned: true)
!1347 = !DIEnumerator(name: "GSS_OMP", value: 13, isUnsigned: true)
!1348 = !DIEnumerator(name: "GSS_OMP_CRITICAL", value: 14, isUnsigned: true)
!1349 = !DIEnumerator(name: "GSS_OMP_FOR", value: 15, isUnsigned: true)
!1350 = !DIEnumerator(name: "GSS_OMP_PARALLEL", value: 16, isUnsigned: true)
!1351 = !DIEnumerator(name: "GSS_OMP_TASK", value: 17, isUnsigned: true)
!1352 = !DIEnumerator(name: "GSS_OMP_SECTIONS", value: 18, isUnsigned: true)
!1353 = !DIEnumerator(name: "GSS_OMP_SINGLE", value: 19, isUnsigned: true)
!1354 = !DIEnumerator(name: "GSS_OMP_CONTINUE", value: 20, isUnsigned: true)
!1355 = !DIEnumerator(name: "GSS_OMP_ATOMIC_LOAD", value: 21, isUnsigned: true)
!1356 = !DIEnumerator(name: "GSS_OMP_ATOMIC_STORE", value: 22, isUnsigned: true)
!1357 = !DIEnumerator(name: "LAST_GSS_ENUM", value: 23, isUnsigned: true)
!1358 = !{!1359, !1360, !1361, !1362, !1365, !1366, !366, !1368, !2672, !1435, !1326, !1411, !2675, !2018, !1363, !1430, !2677, !7, !1410, !1488}
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1361 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1364)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "occurrence", file: !3, line: 109, size: 384, elements: !1370)
!1370 = !{!1371, !2666, !2667, !2668, !2669, !2670, !2671}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !1369, file: !3, line: 111, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !1373, line: 111, baseType: !1374)
!1373 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !318, line: 217, size: 832, elements: !1376)
!1376 = !{!1377, !2631, !2632, !2633, !2636, !2640, !2641, !2642, !2660, !2661, !2662, !2663, !2664, !2665}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !1375, file: !318, line: 219, baseType: !1378, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !318, line: 151, baseType: !1380)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !318, line: 151, size: 128, elements: !1381)
!1381 = !{!1382}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1380, file: !318, line: 151, baseType: !1383, size: 128)
!1383 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !318, line: 150, baseType: !1384)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !318, line: 150, size: 128, elements: !1385)
!1385 = !{!1386, !1387, !1388}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1384, file: !318, line: 150, baseType: !7, size: 32)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1384, file: !318, line: 150, baseType: !7, size: 32, offset: 32)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1384, file: !318, line: 150, baseType: !1389, size: 64, offset: 64)
!1389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1390, size: 64, elements: !1533)
!1390 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !1373, line: 108, baseType: !1391)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !318, line: 122, size: 512, elements: !1393)
!1393 = !{!1394, !1395, !1396, !2623, !2624, !2625, !2626, !2627, !2628, !2629}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1392, file: !318, line: 124, baseType: !1374, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !1392, file: !318, line: 125, baseType: !1374, size: 64, offset: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !1392, file: !318, line: 131, baseType: !1397, size: 64, offset: 128)
!1397 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !318, line: 128, size: 64, elements: !1398)
!1398 = !{!1399, !2622}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1397, file: !318, line: 129, baseType: !1400, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !1373, line: 66, baseType: !1401)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !1281, line: 143, size: 192, elements: !1403)
!1403 = !{!1404, !2620, !2621}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1402, file: !1281, line: 145, baseType: !1405, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !1373, line: 69, baseType: !1406)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !1281, line: 136, size: 192, elements: !1408)
!1408 = !{!1409, !2618, !2619}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1407, file: !1281, line: 137, baseType: !1410, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !1373, line: 58, baseType: !1411)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !1281, line: 737, size: 768, elements: !1413)
!1413 = !{!1414, !2465, !2475, !2481, !2486, !2491, !2498, !2504, !2510, !2515, !2529, !2534, !2540, !2545, !2555, !2560, !2576, !2583, !2590, !2596, !2601, !2607, !2613}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1412, file: !1281, line: 738, baseType: !1415, size: 256)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !1281, line: 271, size: 256, elements: !1416)
!1416 = !{!1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1432, !1433, !1434}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1415, file: !1281, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !1415, file: !1281, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1415, file: !1281, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !1415, file: !1281, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !1415, file: !1281, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !1415, file: !1281, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !1415, file: !1281, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !1415, file: !1281, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1415, file: !1281, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1415, file: !1281, line: 312, baseType: !7, size: 32, offset: 32)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !1415, file: !1281, line: 316, baseType: !1428, size: 32, offset: 64)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !1429, line: 58, baseType: !1430)
!1429 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1430 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !1431, line: 44, baseType: !7)
!1431 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !1415, file: !1281, line: 319, baseType: !7, size: 32, offset: 96)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !1415, file: !1281, line: 323, baseType: !1374, size: 64, offset: 128)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1415, file: !1281, line: 327, baseType: !1435, size: 64, offset: 192)
!1435 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !1373, line: 56, baseType: !1436)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !334, line: 3371, size: 1792, elements: !1438)
!1438 = !{!1439, !1472, !1478, !1491, !1510, !1521, !1526, !1535, !1541, !1554, !1562, !1600, !1774, !1802, !1819, !1820, !1825, !1834, !1840, !1845, !1849, !1853, !2116, !2163, !2169, !2175, !2182, !2195, !2209, !2226, !2238, !2260, !2275, !2447}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1437, file: !334, line: 3372, baseType: !1440, size: 64)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !334, line: 360, size: 64, elements: !1441)
!1441 = !{!1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1440, file: !334, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !1440, file: !334, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !1440, file: !334, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !1440, file: !334, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !1440, file: !334, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !1440, file: !334, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !1440, file: !334, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !1440, file: !334, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !1440, file: !334, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !1440, file: !334, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !1440, file: !334, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !1440, file: !334, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !1440, file: !334, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !1440, file: !334, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !1440, file: !334, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !1440, file: !334, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !1440, file: !334, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !1440, file: !334, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1440, file: !334, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1440, file: !334, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1440, file: !334, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1440, file: !334, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1440, file: !334, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1440, file: !334, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1440, file: !334, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1440, file: !334, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !1440, file: !334, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !1440, file: !334, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !1440, file: !334, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !1440, file: !334, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1437, file: !334, line: 3373, baseType: !1473, size: 192)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !334, line: 402, size: 192, elements: !1474)
!1474 = !{!1475, !1476, !1477}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1473, file: !334, line: 403, baseType: !1440, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !1473, file: !334, line: 404, baseType: !1435, size: 64, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1473, file: !334, line: 405, baseType: !1435, size: 64, offset: 128)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !1437, file: !334, line: 3374, baseType: !1479, size: 320)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !334, line: 1384, size: 320, elements: !1480)
!1480 = !{!1481, !1482}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1479, file: !334, line: 1385, baseType: !1473, size: 192)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !1479, file: !334, line: 1386, baseType: !1483, size: 128, offset: 192)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !1484, line: 58, baseType: !1485)
!1484 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1484, line: 54, size: 128, elements: !1486)
!1486 = !{!1487, !1489}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !1485, file: !1484, line: 56, baseType: !1488, size: 64)
!1488 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !1485, file: !1484, line: 57, baseType: !1490, size: 64, offset: 64)
!1490 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !1437, file: !334, line: 3375, baseType: !1492, size: 256)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !334, line: 1397, size: 256, elements: !1493)
!1493 = !{!1494, !1495}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1492, file: !334, line: 1398, baseType: !1473, size: 192)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !1492, file: !334, line: 1399, baseType: !1496, size: 64, offset: 192)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !1498, line: 52, size: 256, elements: !1499)
!1498 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1499 = !{!1500, !1501, !1502, !1503, !1504, !1505, !1506}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !1497, file: !1498, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !1497, file: !1498, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !1497, file: !1498, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !1497, file: !1498, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1497, file: !1498, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !1497, file: !1498, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1497, file: !1498, line: 62, baseType: !1507, size: 192, offset: 64)
!1507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1488, size: 192, elements: !1508)
!1508 = !{!1509}
!1509 = !DISubrange(count: 3)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !1437, file: !334, line: 3376, baseType: !1511, size: 256)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !334, line: 1408, size: 256, elements: !1512)
!1512 = !{!1513, !1514}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1511, file: !334, line: 1409, baseType: !1473, size: 192)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !1511, file: !334, line: 1410, baseType: !1515, size: 64, offset: 192)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !1517, line: 27, size: 192, elements: !1518)
!1517 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1518 = !{!1519, !1520}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1516, file: !1517, line: 29, baseType: !1483, size: 128)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1516, file: !1517, line: 30, baseType: !189, size: 32, offset: 128)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1437, file: !334, line: 3377, baseType: !1522, size: 256)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !334, line: 1437, size: 256, elements: !1523)
!1523 = !{!1524, !1525}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1522, file: !334, line: 1438, baseType: !1473, size: 192)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1522, file: !334, line: 1439, baseType: !1435, size: 64, offset: 192)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1437, file: !334, line: 3378, baseType: !1527, size: 256)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !334, line: 1418, size: 256, elements: !1528)
!1528 = !{!1529, !1530, !1531}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1527, file: !334, line: 1419, baseType: !1473, size: 192)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1527, file: !334, line: 1420, baseType: !1361, size: 32, offset: 192)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1527, file: !334, line: 1421, baseType: !1532, size: 8, offset: 224)
!1532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1364, size: 8, elements: !1533)
!1533 = !{!1534}
!1534 = !DISubrange(count: 1)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !1437, file: !334, line: 3379, baseType: !1536, size: 320)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !334, line: 1428, size: 320, elements: !1537)
!1537 = !{!1538, !1539, !1540}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1536, file: !334, line: 1429, baseType: !1473, size: 192)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !1536, file: !334, line: 1430, baseType: !1435, size: 64, offset: 192)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !1536, file: !334, line: 1431, baseType: !1435, size: 64, offset: 256)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !1437, file: !334, line: 3380, baseType: !1542, size: 320)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !334, line: 1460, size: 320, elements: !1543)
!1543 = !{!1544, !1545}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1542, file: !334, line: 1461, baseType: !1473, size: 192)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1542, file: !334, line: 1462, baseType: !1546, size: 128, offset: 192)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !1547, line: 31, size: 128, elements: !1548)
!1547 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1548 = !{!1549, !1552, !1553}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1546, file: !1547, line: 32, baseType: !1550, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1360)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1546, file: !1547, line: 33, baseType: !7, size: 32, offset: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !1546, file: !1547, line: 34, baseType: !7, size: 32, offset: 96)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !1437, file: !334, line: 3381, baseType: !1555, size: 384)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !334, line: 2507, size: 384, elements: !1556)
!1556 = !{!1557, !1558, !1559, !1560, !1561}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1555, file: !334, line: 2508, baseType: !1473, size: 192)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1555, file: !334, line: 2509, baseType: !1428, size: 32, offset: 192)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1555, file: !334, line: 2510, baseType: !7, size: 32, offset: 224)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1555, file: !334, line: 2511, baseType: !1435, size: 64, offset: 256)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1555, file: !334, line: 2512, baseType: !1435, size: 64, offset: 320)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !1437, file: !334, line: 3382, baseType: !1563, size: 896)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !334, line: 2652, size: 896, elements: !1564)
!1564 = !{!1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1563, file: !334, line: 2653, baseType: !1555, size: 384)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1563, file: !334, line: 2654, baseType: !1435, size: 64, offset: 384)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1563, file: !334, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !1563, file: !334, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !1563, file: !334, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !1563, file: !334, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1563, file: !334, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !1563, file: !334, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !1563, file: !334, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !1563, file: !334, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1563, file: !334, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1563, file: !334, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1563, file: !334, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1563, file: !334, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1563, file: !334, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1563, file: !334, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1563, file: !334, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !1563, file: !334, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !1563, file: !334, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !1563, file: !334, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !1563, file: !334, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !1563, file: !334, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !1563, file: !334, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !1563, file: !334, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !1563, file: !334, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !1563, file: !334, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !1563, file: !334, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1563, file: !334, line: 2703, baseType: !7, size: 32, offset: 512)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1563, file: !334, line: 2705, baseType: !1435, size: 64, offset: 576)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1563, file: !334, line: 2706, baseType: !1435, size: 64, offset: 640)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1563, file: !334, line: 2707, baseType: !1435, size: 64, offset: 704)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1563, file: !334, line: 2708, baseType: !1435, size: 64, offset: 768)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1563, file: !334, line: 2711, baseType: !1598, size: 64, offset: 832)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !334, line: 2711, flags: DIFlagFwdDecl)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !1437, file: !334, line: 3383, baseType: !1601, size: 960)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !334, line: 2756, size: 960, elements: !1602)
!1602 = !{!1603, !1604}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1601, file: !334, line: 2757, baseType: !1563, size: 896)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1601, file: !334, line: 2758, baseType: !1605, size: 64, offset: 896)
!1605 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !1373, line: 50, baseType: !1606)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !1608, line: 240, size: 384, elements: !1609)
!1608 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1609 = !{!1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1607, file: !1608, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1607, file: !1608, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !1607, file: !1608, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !1607, file: !1608, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !1607, file: !1608, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !1607, file: !1608, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !1607, file: !1608, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1607, file: !1608, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !1607, file: !1608, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !1607, file: !1608, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1607, file: !1608, line: 321, baseType: !1621, size: 320, offset: 64)
!1621 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !1608, line: 315, size: 320, elements: !1622)
!1622 = !{!1623, !1741, !1743, !1772, !1773}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1621, file: !1608, line: 316, baseType: !1624, size: 64)
!1624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1625, size: 64, elements: !1533)
!1625 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !1608, line: 183, baseType: !1626)
!1626 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !1608, line: 166, size: 64, elements: !1627)
!1627 = !{!1628, !1629, !1630, !1631, !1632, !1640, !1641, !1653, !1656, !1716, !1717, !1718, !1731, !1738}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !1626, file: !1608, line: 168, baseType: !1361, size: 32)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !1626, file: !1608, line: 169, baseType: !7, size: 32)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !1626, file: !1608, line: 170, baseType: !1366, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !1626, file: !1608, line: 171, baseType: !1605, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !1626, file: !1608, line: 172, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !1373, line: 53, baseType: !1634)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !1608, line: 359, size: 128, elements: !1636)
!1636 = !{!1637, !1638}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !1635, file: !1608, line: 360, baseType: !1361, size: 32)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1635, file: !1608, line: 361, baseType: !1639, size: 64, offset: 64)
!1639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1605, size: 64, elements: !1533)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !1626, file: !1608, line: 173, baseType: !189, size: 32)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !1626, file: !1608, line: 174, baseType: !1642, size: 32)
!1642 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !1608, line: 133, baseType: !1643)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1608, line: 115, size: 32, elements: !1644)
!1644 = !{!1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !1643, file: !1608, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !1643, file: !1608, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !1643, file: !1608, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !1643, file: !1608, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !1643, file: !1608, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !1643, file: !1608, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !1643, file: !1608, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !1643, file: !1608, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !1626, file: !1608, line: 175, baseType: !1654, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !1608, line: 175, flags: DIFlagFwdDecl)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !1626, file: !1608, line: 176, baseType: !1657, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !1659, line: 75, size: 256, elements: !1660)
!1659 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1660 = !{!1661, !1675, !1676, !1677}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1658, file: !1659, line: 76, baseType: !1662, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !1659, line: 68, baseType: !1664)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !1659, line: 63, size: 320, elements: !1665)
!1665 = !{!1666, !1668, !1669, !1670}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1664, file: !1659, line: 64, baseType: !1667, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1664, file: !1659, line: 65, baseType: !1667, size: 64, offset: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !1664, file: !1659, line: 66, baseType: !7, size: 32, offset: 128)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1664, file: !1659, line: 67, baseType: !1671, size: 128, offset: 192)
!1671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1672, size: 128, elements: !1673)
!1672 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !1659, line: 29, baseType: !1488)
!1673 = !{!1674}
!1674 = !DISubrange(count: 2)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !1658, file: !1659, line: 77, baseType: !1662, size: 64, offset: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !1658, file: !1659, line: 78, baseType: !7, size: 32, offset: 128)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !1658, file: !1659, line: 79, baseType: !1678, size: 64, offset: 192)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !1659, line: 49, baseType: !1680)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !1659, line: 45, size: 832, elements: !1681)
!1681 = !{!1682, !1683, !1684}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1680, file: !1659, line: 46, baseType: !1667, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !1680, file: !1659, line: 47, baseType: !1657, size: 64, offset: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !1680, file: !1659, line: 48, baseType: !1685, size: 704, offset: 128)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !1686, line: 164, size: 704, elements: !1687)
!1686 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1687 = !{!1688, !1689, !1699, !1700, !1701, !1702, !1703, !1704, !1708, !1712, !1713, !1714, !1715}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !1685, file: !1686, line: 166, baseType: !1490, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !1685, file: !1686, line: 167, baseType: !1690, size: 64, offset: 64)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !1686, line: 157, size: 192, elements: !1692)
!1692 = !{!1693, !1694, !1695}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1691, file: !1686, line: 159, baseType: !1363, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1691, file: !1686, line: 160, baseType: !1690, size: 64, offset: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !1691, file: !1686, line: 161, baseType: !1696, size: 32, offset: 128)
!1696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1364, size: 32, elements: !1697)
!1697 = !{!1698}
!1698 = !DISubrange(count: 4)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !1685, file: !1686, line: 168, baseType: !1363, size: 64, offset: 128)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !1685, file: !1686, line: 169, baseType: !1363, size: 64, offset: 192)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !1685, file: !1686, line: 170, baseType: !1363, size: 64, offset: 256)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !1685, file: !1686, line: 171, baseType: !1490, size: 64, offset: 320)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !1685, file: !1686, line: 172, baseType: !1361, size: 32, offset: 384)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !1685, file: !1686, line: 176, baseType: !1705, size: 64, offset: 448)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!1690, !1365, !1490}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !1685, file: !1686, line: 177, baseType: !1709, size: 64, offset: 512)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{null, !1365, !1690}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !1685, file: !1686, line: 178, baseType: !1365, size: 64, offset: 576)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !1685, file: !1686, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !1685, file: !1686, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !1685, file: !1686, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !1626, file: !1608, line: 177, baseType: !1435, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !1626, file: !1608, line: 178, baseType: !1374, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !1626, file: !1608, line: 179, baseType: !1719, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !1608, line: 150, baseType: !1721)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !1608, line: 142, size: 320, elements: !1722)
!1722 = !{!1723, !1724, !1725, !1726, !1729, !1730}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1721, file: !1608, line: 144, baseType: !1435, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1721, file: !1608, line: 145, baseType: !1605, size: 64, offset: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1721, file: !1608, line: 146, baseType: !1605, size: 64, offset: 128)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1721, file: !1608, line: 147, baseType: !1727, size: 32, offset: 192)
!1727 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1728, line: 31, baseType: !1361)
!1728 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1721, file: !1608, line: 148, baseType: !7, size: 32, offset: 224)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1721, file: !1608, line: 149, baseType: !1360, size: 8, offset: 256)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !1626, file: !1608, line: 180, baseType: !1732, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !1608, line: 162, baseType: !1734)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !1608, line: 159, size: 128, elements: !1735)
!1735 = !{!1736, !1737}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1734, file: !1608, line: 160, baseType: !1435, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1734, file: !1608, line: 161, baseType: !1490, size: 64, offset: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !1626, file: !1608, line: 181, baseType: !1739, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !1608, line: 181, flags: DIFlagFwdDecl)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !1621, file: !1608, line: 317, baseType: !1742, size: 64)
!1742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1490, size: 64, elements: !1533)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !1621, file: !1608, line: 318, baseType: !1744, size: 320)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !1608, line: 188, size: 320, elements: !1745)
!1745 = !{!1746, !1748, !1771}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1744, file: !1608, line: 190, baseType: !1747, size: 192)
!1747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1625, size: 192, elements: !1508)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1744, file: !1608, line: 193, baseType: !1749, size: 64, offset: 192)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !1608, line: 206, size: 320, elements: !1751)
!1751 = !{!1752, !1756, !1757, !1758, !1770}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1750, file: !1608, line: 208, baseType: !1753, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !1373, line: 62, baseType: !1755)
!1755 = !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1373, line: 61, flags: DIFlagFwdDecl)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1750, file: !1608, line: 211, baseType: !7, size: 32, offset: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1750, file: !1608, line: 214, baseType: !1490, size: 64, offset: 128)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1750, file: !1608, line: 224, baseType: !1759, size: 64, offset: 192)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !1608, line: 202, baseType: !1761)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !1608, line: 202, size: 128, elements: !1762)
!1762 = !{!1763}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1761, file: !1608, line: 202, baseType: !1764, size: 128)
!1764 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !1608, line: 200, baseType: !1765)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !1608, line: 200, size: 128, elements: !1766)
!1766 = !{!1767, !1768, !1769}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1765, file: !1608, line: 200, baseType: !7, size: 32)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1765, file: !1608, line: 200, baseType: !7, size: 32, offset: 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1765, file: !1608, line: 200, baseType: !1639, size: 64, offset: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1750, file: !1608, line: 234, baseType: !1759, size: 64, offset: 256)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1744, file: !1608, line: 197, baseType: !1490, size: 64, offset: 256)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !1621, file: !1608, line: 319, baseType: !1497, size: 256)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !1621, file: !1608, line: 320, baseType: !1516, size: 192)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !1437, file: !334, line: 3384, baseType: !1775, size: 1472)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !334, line: 3114, size: 1472, elements: !1776)
!1776 = !{!1777, !1798, !1799, !1800, !1801}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1775, file: !334, line: 3115, baseType: !1778, size: 1216)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !334, line: 2984, size: 1216, elements: !1779)
!1779 = !{!1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1778, file: !334, line: 2985, baseType: !1601, size: 960)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1778, file: !334, line: 2986, baseType: !1435, size: 64, offset: 960)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1778, file: !334, line: 2987, baseType: !1435, size: 64, offset: 1024)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1778, file: !334, line: 2988, baseType: !1435, size: 64, offset: 1088)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1778, file: !334, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1778, file: !334, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1778, file: !334, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1778, file: !334, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1778, file: !334, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1778, file: !334, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1778, file: !334, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1778, file: !334, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1778, file: !334, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1778, file: !334, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1778, file: !334, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1778, file: !334, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1778, file: !334, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1778, file: !334, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1775, file: !334, line: 3117, baseType: !1435, size: 64, offset: 1216)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1775, file: !334, line: 3119, baseType: !1435, size: 64, offset: 1280)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1775, file: !334, line: 3121, baseType: !1435, size: 64, offset: 1344)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1775, file: !334, line: 3123, baseType: !1435, size: 64, offset: 1408)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !1437, file: !334, line: 3385, baseType: !1803, size: 1088)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !334, line: 2874, size: 1088, elements: !1804)
!1804 = !{!1805, !1806, !1807}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1803, file: !334, line: 2875, baseType: !1601, size: 960)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1803, file: !334, line: 2876, baseType: !1605, size: 64, offset: 960)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1803, file: !334, line: 2877, baseType: !1808, size: 64, offset: 1024)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !1810, line: 172, size: 128, elements: !1811)
!1810 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1811 = !{!1812, !1813, !1814, !1815, !1816, !1817, !1818}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !1809, file: !1810, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1809, file: !1810, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !1809, file: !1810, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !1809, file: !1810, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !1809, file: !1810, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !1809, file: !1810, line: 195, baseType: !7, size: 32, offset: 32)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !1809, file: !1810, line: 199, baseType: !1435, size: 64, offset: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !1437, file: !334, line: 3386, baseType: !1778, size: 1216)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !1437, file: !334, line: 3387, baseType: !1821, size: 1280)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !334, line: 3093, size: 1280, elements: !1822)
!1822 = !{!1823, !1824}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1821, file: !334, line: 3094, baseType: !1778, size: 1216)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1821, file: !334, line: 3095, baseType: !1808, size: 64, offset: 1216)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !1437, file: !334, line: 3388, baseType: !1826, size: 1216)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !334, line: 2824, size: 1216, elements: !1827)
!1827 = !{!1828, !1829, !1830, !1831, !1832, !1833}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1826, file: !334, line: 2825, baseType: !1563, size: 896)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1826, file: !334, line: 2827, baseType: !1435, size: 64, offset: 896)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1826, file: !334, line: 2828, baseType: !1435, size: 64, offset: 960)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1826, file: !334, line: 2829, baseType: !1435, size: 64, offset: 1024)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1826, file: !334, line: 2830, baseType: !1435, size: 64, offset: 1088)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1826, file: !334, line: 2831, baseType: !1435, size: 64, offset: 1152)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !1437, file: !334, line: 3389, baseType: !1835, size: 1024)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !334, line: 2850, size: 1024, elements: !1836)
!1836 = !{!1837, !1838, !1839}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1835, file: !334, line: 2851, baseType: !1601, size: 960)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1835, file: !334, line: 2852, baseType: !1361, size: 32, offset: 960)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1835, file: !334, line: 2853, baseType: !1361, size: 32, offset: 992)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !1437, file: !334, line: 3390, baseType: !1841, size: 1024)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !334, line: 2857, size: 1024, elements: !1842)
!1842 = !{!1843, !1844}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1841, file: !334, line: 2858, baseType: !1601, size: 960)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1841, file: !334, line: 2859, baseType: !1808, size: 64, offset: 960)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !1437, file: !334, line: 3391, baseType: !1846, size: 960)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !334, line: 2862, size: 960, elements: !1847)
!1847 = !{!1848}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1846, file: !334, line: 2863, baseType: !1601, size: 960)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !1437, file: !334, line: 3392, baseType: !1850, size: 1472)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !334, line: 3304, size: 1472, elements: !1851)
!1851 = !{!1852}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1850, file: !334, line: 3305, baseType: !1775, size: 1472)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !1437, file: !334, line: 3393, baseType: !1854, size: 1792)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !334, line: 3248, size: 1792, elements: !1855)
!1855 = !{!1856, !1857, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1854, file: !334, line: 3249, baseType: !1775, size: 1472)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1854, file: !334, line: 3251, baseType: !1858, size: 64, offset: 1472)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1860, line: 463, size: 1152, elements: !1861)
!1860 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1861 = !{!1862, !1865, !1895, !1896, !2036, !2039, !2040, !2041, !2042, !2043, !2044, !2068, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1859, file: !1860, line: 464, baseType: !1863, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1860, line: 464, flags: DIFlagFwdDecl)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1859, file: !1860, line: 467, baseType: !1866, size: 64, offset: 64)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !318, line: 374, size: 640, elements: !1868)
!1868 = !{!1869, !1870, !1871, !1884, !1885, !1886, !1887, !1888, !1889, !1891, !1893, !1894}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1867, file: !318, line: 377, baseType: !1372, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1867, file: !318, line: 378, baseType: !1372, size: 64, offset: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1867, file: !318, line: 381, baseType: !1872, size: 64, offset: 128)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !318, line: 282, baseType: !1874)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !318, line: 282, size: 128, elements: !1875)
!1875 = !{!1876}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1874, file: !318, line: 282, baseType: !1877, size: 128)
!1877 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !318, line: 281, baseType: !1878)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !318, line: 281, size: 128, elements: !1879)
!1879 = !{!1880, !1881, !1882}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1878, file: !318, line: 281, baseType: !7, size: 32)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1878, file: !318, line: 281, baseType: !7, size: 32, offset: 32)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1878, file: !318, line: 281, baseType: !1883, size: 64, offset: 64)
!1883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1372, size: 64, elements: !1533)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1867, file: !318, line: 384, baseType: !1361, size: 32, offset: 192)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1867, file: !318, line: 387, baseType: !1361, size: 32, offset: 224)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1867, file: !318, line: 390, baseType: !1361, size: 32, offset: 256)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1867, file: !318, line: 394, baseType: !1872, size: 64, offset: 320)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1867, file: !318, line: 396, baseType: !317, size: 32, offset: 384)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1867, file: !318, line: 399, baseType: !1890, size: 64, offset: 416)
!1890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 64, elements: !1673)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1867, file: !318, line: 402, baseType: !1892, size: 64, offset: 480)
!1892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !1673)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1867, file: !318, line: 406, baseType: !1361, size: 32, offset: 544)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1867, file: !318, line: 409, baseType: !1361, size: 32, offset: 576)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1859, file: !1860, line: 470, baseType: !1401, size: 64, offset: 128)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1859, file: !1860, line: 473, baseType: !1897, size: 64, offset: 192)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1810, line: 39, size: 1152, elements: !1899)
!1899 = !{!1900, !1952, !1965, !1978, !1979, !1991, !1992, !1996, !1997, !1998, !1999, !2000}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1898, file: !1810, line: 41, baseType: !1901, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1902, line: 144, baseType: !1903)
!1902 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1902, line: 100, size: 896, elements: !1905)
!1905 = !{!1906, !1914, !1919, !1924, !1926, !1929, !1930, !1931, !1932, !1933, !1938, !1940, !1941, !1946, !1951}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1904, file: !1902, line: 102, baseType: !1907, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1902, line: 52, baseType: !1908)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!1911, !1912}
!1911 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1902, line: 47, baseType: !7)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1904, file: !1902, line: 105, baseType: !1915, size: 64, offset: 64)
!1915 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1902, line: 59, baseType: !1916)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!1361, !1912, !1912}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1904, file: !1902, line: 108, baseType: !1920, size: 64, offset: 128)
!1920 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1902, line: 63, baseType: !1921)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{null, !1365}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1904, file: !1902, line: 111, baseType: !1925, size: 64, offset: 192)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1904, file: !1902, line: 114, baseType: !1927, size: 64, offset: 256)
!1927 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1928, line: 46, baseType: !1488)
!1928 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1904, file: !1902, line: 117, baseType: !1927, size: 64, offset: 320)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1904, file: !1902, line: 120, baseType: !1927, size: 64, offset: 384)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1904, file: !1902, line: 124, baseType: !7, size: 32, offset: 448)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1904, file: !1902, line: 128, baseType: !7, size: 32, offset: 480)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1904, file: !1902, line: 131, baseType: !1934, size: 64, offset: 512)
!1934 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1902, line: 75, baseType: !1935)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!1365, !1927, !1927}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1904, file: !1902, line: 132, baseType: !1939, size: 64, offset: 576)
!1939 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1902, line: 78, baseType: !1921)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1904, file: !1902, line: 135, baseType: !1365, size: 64, offset: 640)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1904, file: !1902, line: 136, baseType: !1942, size: 64, offset: 704)
!1942 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1902, line: 82, baseType: !1943)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!1365, !1365, !1927, !1927}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1904, file: !1902, line: 137, baseType: !1947, size: 64, offset: 768)
!1947 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1902, line: 83, baseType: !1948)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{null, !1365, !1365}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1904, file: !1902, line: 141, baseType: !7, size: 32, offset: 832)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1898, file: !1810, line: 48, baseType: !1953, size: 64, offset: 64)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !1281, line: 35, baseType: !1955)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !1281, line: 35, size: 128, elements: !1956)
!1956 = !{!1957}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1955, file: !1281, line: 35, baseType: !1958, size: 128)
!1958 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !1281, line: 33, baseType: !1959)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !1281, line: 33, size: 128, elements: !1960)
!1960 = !{!1961, !1962, !1963}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1959, file: !1281, line: 33, baseType: !7, size: 32)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1959, file: !1281, line: 33, baseType: !7, size: 32, offset: 32)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1959, file: !1281, line: 33, baseType: !1964, size: 64, offset: 64)
!1964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1410, size: 64, elements: !1533)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1898, file: !1810, line: 51, baseType: !1966, size: 64, offset: 128)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !334, line: 183, baseType: !1968)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !334, line: 183, size: 128, elements: !1969)
!1969 = !{!1970}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1968, file: !334, line: 183, baseType: !1971, size: 128)
!1971 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !334, line: 182, baseType: !1972)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !334, line: 182, size: 128, elements: !1973)
!1973 = !{!1974, !1975, !1976}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1972, file: !334, line: 182, baseType: !7, size: 32)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1972, file: !334, line: 182, baseType: !7, size: 32, offset: 32)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1972, file: !334, line: 182, baseType: !1977, size: 64, offset: 64)
!1977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1435, size: 64, elements: !1533)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1898, file: !1810, line: 54, baseType: !1435, size: 64, offset: 192)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1898, file: !1810, line: 57, baseType: !1980, size: 128, offset: 256)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1981, line: 31, size: 128, elements: !1982)
!1981 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1982 = !{!1983, !1984, !1985, !1986, !1987, !1988, !1989}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1980, file: !1981, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1980, file: !1981, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1980, file: !1981, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1980, file: !1981, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1980, file: !1981, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1980, file: !1981, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1980, file: !1981, line: 56, baseType: !1990, size: 64, offset: 64)
!1990 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !1373, line: 47, baseType: !1657)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1898, file: !1810, line: 60, baseType: !1980, size: 128, offset: 384)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1898, file: !1810, line: 64, baseType: !1993, size: 64, offset: 512)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1995, line: 33, flags: DIFlagFwdDecl)
!1995 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1898, file: !1810, line: 67, baseType: !1435, size: 64, offset: 576)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1898, file: !1810, line: 73, baseType: !1901, size: 64, offset: 640)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1898, file: !1810, line: 77, baseType: !1990, size: 64, offset: 704)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1898, file: !1810, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1898, file: !1810, line: 82, baseType: !2001, size: 320, offset: 832)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !1320, line: 62, size: 320, elements: !2002)
!2002 = !{!2003, !2009, !2010, !2011, !2012, !2019}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !2001, file: !1320, line: 63, baseType: !2004, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !1320, line: 56, size: 128, elements: !2006)
!2006 = !{!2007, !2008}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2005, file: !1320, line: 57, baseType: !2004, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !2005, file: !1320, line: 58, baseType: !1532, size: 8, offset: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !2001, file: !1320, line: 64, baseType: !7, size: 32, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !2001, file: !1320, line: 66, baseType: !7, size: 32, offset: 96)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !2001, file: !1320, line: 68, baseType: !1360, size: 8, offset: 128)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !2001, file: !1320, line: 70, baseType: !2013, size: 64, offset: 192)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !1320, line: 37, size: 128, elements: !2015)
!2015 = !{!2016, !2017}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2014, file: !1320, line: 39, baseType: !2013, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !2014, file: !1320, line: 40, baseType: !2018, size: 64, offset: 64)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !2001, file: !1320, line: 71, baseType: !2020, size: 64, offset: 256)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !1320, line: 45, size: 320, elements: !2022)
!2022 = !{!2023, !2024}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2021, file: !1320, line: 47, baseType: !2020, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !2021, file: !1320, line: 48, baseType: !2025, size: 256, offset: 64)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !334, line: 1883, size: 256, elements: !2026)
!2026 = !{!2027, !2029, !2030, !2035}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !2025, file: !334, line: 1884, baseType: !2028, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2025, file: !334, line: 1885, baseType: !2028, size: 64, offset: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !2025, file: !334, line: 1891, baseType: !2031, size: 64, offset: 128)
!2031 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2025, file: !334, line: 1891, size: 64, elements: !2032)
!2032 = !{!2033, !2034}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !2031, file: !334, line: 1891, baseType: !1410, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !2031, file: !334, line: 1891, baseType: !1435, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !2025, file: !334, line: 1892, baseType: !2018, size: 64, offset: 192)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1859, file: !1860, line: 476, baseType: !2037, size: 64, offset: 256)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1860, line: 476, flags: DIFlagFwdDecl)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1859, file: !1860, line: 479, baseType: !1901, size: 64, offset: 320)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1859, file: !1860, line: 484, baseType: !1435, size: 64, offset: 384)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1859, file: !1860, line: 488, baseType: !1435, size: 64, offset: 448)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1859, file: !1860, line: 493, baseType: !1435, size: 64, offset: 512)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1859, file: !1860, line: 496, baseType: !1435, size: 64, offset: 576)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1859, file: !1860, line: 501, baseType: !2045, size: 64, offset: 640)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !329, line: 2355, size: 576, elements: !2047)
!2047 = !{!2048, !2051, !2052, !2053, !2054, !2056, !2057, !2062, !2063, !2064, !2065, !2066, !2067}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !2046, file: !329, line: 2356, baseType: !2049, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !329, line: 2356, flags: DIFlagFwdDecl)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !2046, file: !329, line: 2357, baseType: !1366, size: 64, offset: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !2046, file: !329, line: 2358, baseType: !1361, size: 32, offset: 128)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !2046, file: !329, line: 2359, baseType: !1361, size: 32, offset: 160)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !2046, file: !329, line: 2360, baseType: !2055, size: 128, offset: 192)
!2055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1361, size: 128, elements: !1697)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !2046, file: !329, line: 2364, baseType: !1361, size: 32, offset: 320)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !2046, file: !329, line: 2367, baseType: !2058, size: 128, offset: 384)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !329, line: 2349, size: 128, elements: !2059)
!2059 = !{!2060, !2061}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !2058, file: !329, line: 2351, baseType: !1605, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2058, file: !329, line: 2352, baseType: !1490, size: 64, offset: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !2046, file: !329, line: 2371, baseType: !328, size: 32, offset: 512)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !2046, file: !329, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !2046, file: !329, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !2046, file: !329, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !2046, file: !329, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !2046, file: !329, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1859, file: !1860, line: 504, baseType: !2069, size: 64, offset: 704)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1860, line: 504, flags: DIFlagFwdDecl)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1859, file: !1860, line: 507, baseType: !1901, size: 64, offset: 768)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1859, file: !1860, line: 510, baseType: !1361, size: 32, offset: 832)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1859, file: !1860, line: 513, baseType: !1361, size: 32, offset: 864)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1859, file: !1860, line: 516, baseType: !1428, size: 32, offset: 896)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1859, file: !1860, line: 519, baseType: !1428, size: 32, offset: 928)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1859, file: !1860, line: 522, baseType: !7, size: 32, offset: 960)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1859, file: !1860, line: 523, baseType: !7, size: 32, offset: 992)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1859, file: !1860, line: 528, baseType: !1366, size: 64, offset: 1024)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1859, file: !1860, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1859, file: !1860, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1859, file: !1860, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1859, file: !1860, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1859, file: !1860, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1859, file: !1860, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1859, file: !1860, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1859, file: !1860, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1859, file: !1860, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1859, file: !1860, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1859, file: !1860, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1859, file: !1860, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1859, file: !1860, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1859, file: !1860, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1859, file: !1860, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1859, file: !1860, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1854, file: !334, line: 3254, baseType: !1435, size: 64, offset: 1536)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1854, file: !334, line: 3257, baseType: !1435, size: 64, offset: 1600)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1854, file: !334, line: 3258, baseType: !1435, size: 64, offset: 1664)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1854, file: !334, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1854, file: !334, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1854, file: !334, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1854, file: !334, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1854, file: !334, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1854, file: !334, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1854, file: !334, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1854, file: !334, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1854, file: !334, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1854, file: !334, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1854, file: !334, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1854, file: !334, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1854, file: !334, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1854, file: !334, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1854, file: !334, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1854, file: !334, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1854, file: !334, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1854, file: !334, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1437, file: !334, line: 3394, baseType: !2117, size: 1344)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !334, line: 2279, size: 1344, elements: !2118)
!2118 = !{!2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2117, file: !334, line: 2280, baseType: !1473, size: 192)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !2117, file: !334, line: 2281, baseType: !1435, size: 64, offset: 192)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2117, file: !334, line: 2282, baseType: !1435, size: 64, offset: 256)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !2117, file: !334, line: 2283, baseType: !1435, size: 64, offset: 320)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !2117, file: !334, line: 2284, baseType: !1435, size: 64, offset: 384)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2117, file: !334, line: 2285, baseType: !7, size: 32, offset: 448)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !2117, file: !334, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !2117, file: !334, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !2117, file: !334, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !2117, file: !334, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !2117, file: !334, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !2117, file: !334, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2117, file: !334, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !2117, file: !334, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !2117, file: !334, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !2117, file: !334, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !2117, file: !334, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !2117, file: !334, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !2117, file: !334, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !2117, file: !334, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !2117, file: !334, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2117, file: !334, line: 2305, baseType: !7, size: 32, offset: 512)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !2117, file: !334, line: 2306, baseType: !1727, size: 32, offset: 544)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !2117, file: !334, line: 2307, baseType: !1435, size: 64, offset: 576)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !2117, file: !334, line: 2308, baseType: !1435, size: 64, offset: 640)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2117, file: !334, line: 2314, baseType: !2145, size: 64, offset: 704)
!2145 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !334, line: 2309, size: 64, elements: !2146)
!2146 = !{!2147, !2148, !2149}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2145, file: !334, line: 2310, baseType: !1361, size: 32)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2145, file: !334, line: 2311, baseType: !1366, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !2145, file: !334, line: 2312, baseType: !2150, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !334, line: 2277, flags: DIFlagFwdDecl)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2117, file: !334, line: 2315, baseType: !1435, size: 64, offset: 768)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !2117, file: !334, line: 2316, baseType: !1435, size: 64, offset: 832)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !2117, file: !334, line: 2317, baseType: !1435, size: 64, offset: 896)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !2117, file: !334, line: 2318, baseType: !1435, size: 64, offset: 960)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !2117, file: !334, line: 2319, baseType: !1435, size: 64, offset: 1024)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !2117, file: !334, line: 2320, baseType: !1435, size: 64, offset: 1088)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2117, file: !334, line: 2321, baseType: !1435, size: 64, offset: 1152)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !2117, file: !334, line: 2322, baseType: !1435, size: 64, offset: 1216)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !2117, file: !334, line: 2324, baseType: !2161, size: 64, offset: 1280)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !334, line: 2324, flags: DIFlagFwdDecl)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1437, file: !334, line: 3395, baseType: !2164, size: 320)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !334, line: 1469, size: 320, elements: !2165)
!2165 = !{!2166, !2167, !2168}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2164, file: !334, line: 1470, baseType: !1473, size: 192)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !2164, file: !334, line: 1471, baseType: !1435, size: 64, offset: 192)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2164, file: !334, line: 1472, baseType: !1435, size: 64, offset: 256)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1437, file: !334, line: 3396, baseType: !2170, size: 320)
!2170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !334, line: 1482, size: 320, elements: !2171)
!2171 = !{!2172, !2173, !2174}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2170, file: !334, line: 1483, baseType: !1473, size: 192)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2170, file: !334, line: 1484, baseType: !1361, size: 32, offset: 192)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !2170, file: !334, line: 1485, baseType: !1977, size: 64, offset: 256)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !1437, file: !334, line: 3397, baseType: !2176, size: 384)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !334, line: 1829, size: 384, elements: !2177)
!2177 = !{!2178, !2179, !2180, !2181}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2176, file: !334, line: 1830, baseType: !1473, size: 192)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !2176, file: !334, line: 1831, baseType: !1428, size: 32, offset: 192)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2176, file: !334, line: 1832, baseType: !1435, size: 64, offset: 256)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !2176, file: !334, line: 1835, baseType: !1977, size: 64, offset: 320)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1437, file: !334, line: 3398, baseType: !2183, size: 704)
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !334, line: 1898, size: 704, elements: !2184)
!2184 = !{!2185, !2186, !2187, !2188, !2189, !2194}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2183, file: !334, line: 1899, baseType: !1473, size: 192)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !2183, file: !334, line: 1902, baseType: !1435, size: 64, offset: 192)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !2183, file: !334, line: 1905, baseType: !1410, size: 64, offset: 256)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2183, file: !334, line: 1908, baseType: !7, size: 32, offset: 320)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !2183, file: !334, line: 1911, baseType: !2190, size: 64, offset: 384)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !1810, line: 117, size: 128, elements: !2192)
!2192 = !{!2193}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !2191, file: !1810, line: 120, baseType: !1980, size: 128)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !2183, file: !334, line: 1914, baseType: !2025, size: 256, offset: 448)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1437, file: !334, line: 3399, baseType: !2196, size: 704)
!2196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !334, line: 2008, size: 704, elements: !2197)
!2197 = !{!2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2196, file: !334, line: 2009, baseType: !1473, size: 192)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !2196, file: !334, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !2196, file: !334, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !2196, file: !334, line: 2014, baseType: !1428, size: 32, offset: 224)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !2196, file: !334, line: 2016, baseType: !1435, size: 64, offset: 256)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !2196, file: !334, line: 2017, baseType: !1966, size: 64, offset: 320)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !2196, file: !334, line: 2019, baseType: !1435, size: 64, offset: 384)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !2196, file: !334, line: 2020, baseType: !1435, size: 64, offset: 448)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !2196, file: !334, line: 2021, baseType: !1435, size: 64, offset: 512)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !2196, file: !334, line: 2022, baseType: !1435, size: 64, offset: 576)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !2196, file: !334, line: 2023, baseType: !1435, size: 64, offset: 640)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1437, file: !334, line: 3400, baseType: !2210, size: 832)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !334, line: 2430, size: 832, elements: !2211)
!2211 = !{!2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2210, file: !334, line: 2431, baseType: !1473, size: 192)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2210, file: !334, line: 2433, baseType: !1435, size: 64, offset: 192)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !2210, file: !334, line: 2434, baseType: !1435, size: 64, offset: 256)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !2210, file: !334, line: 2435, baseType: !1435, size: 64, offset: 320)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !2210, file: !334, line: 2436, baseType: !1435, size: 64, offset: 384)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !2210, file: !334, line: 2437, baseType: !1966, size: 64, offset: 448)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !2210, file: !334, line: 2438, baseType: !1435, size: 64, offset: 512)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !2210, file: !334, line: 2440, baseType: !1435, size: 64, offset: 576)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !2210, file: !334, line: 2441, baseType: !1435, size: 64, offset: 640)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !2210, file: !334, line: 2443, baseType: !2222, size: 128, offset: 704)
!2222 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !334, line: 182, baseType: !2223)
!2223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !334, line: 182, size: 128, elements: !2224)
!2224 = !{!2225}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2223, file: !334, line: 182, baseType: !1971, size: 128)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !1437, file: !334, line: 3401, baseType: !2227, size: 320)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !334, line: 3327, size: 320, elements: !2228)
!2228 = !{!2229, !2230, !2237}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2227, file: !334, line: 3329, baseType: !1473, size: 192)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2227, file: !334, line: 3330, baseType: !2231, size: 64, offset: 192)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !334, line: 3320, size: 192, elements: !2233)
!2233 = !{!2234, !2235, !2236}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !2232, file: !334, line: 3322, baseType: !2231, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2232, file: !334, line: 3323, baseType: !2231, size: 64, offset: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !2232, file: !334, line: 3324, baseType: !1435, size: 64, offset: 128)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2227, file: !334, line: 3331, baseType: !2231, size: 64, offset: 256)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !1437, file: !334, line: 3402, baseType: !2239, size: 256)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !334, line: 1540, size: 256, elements: !2240)
!2240 = !{!2241, !2242}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2239, file: !334, line: 1541, baseType: !1473, size: 192)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !2239, file: !334, line: 1542, baseType: !2243, size: 64, offset: 192)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !334, line: 1538, baseType: !2245)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !334, line: 1538, size: 192, elements: !2246)
!2246 = !{!2247}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2245, file: !334, line: 1538, baseType: !2248, size: 192)
!2248 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !334, line: 1537, baseType: !2249)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !334, line: 1537, size: 192, elements: !2250)
!2250 = !{!2251, !2252, !2253}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2249, file: !334, line: 1537, baseType: !7, size: 32)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2249, file: !334, line: 1537, baseType: !7, size: 32, offset: 32)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2249, file: !334, line: 1537, baseType: !2254, size: 128, offset: 64)
!2254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2255, size: 128, elements: !1533)
!2255 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !334, line: 1535, baseType: !2256)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !334, line: 1532, size: 128, elements: !2257)
!2257 = !{!2258, !2259}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2256, file: !334, line: 1533, baseType: !1435, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2256, file: !334, line: 1534, baseType: !1435, size: 64, offset: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !1437, file: !334, line: 3403, baseType: !2261, size: 512)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !334, line: 1938, size: 512, elements: !2262)
!2262 = !{!2263, !2264, !2265, !2266, !2272, !2273, !2274}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2261, file: !334, line: 1939, baseType: !1473, size: 192)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !2261, file: !334, line: 1940, baseType: !1428, size: 32, offset: 192)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2261, file: !334, line: 1941, baseType: !333, size: 32, offset: 224)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !2261, file: !334, line: 1946, baseType: !2267, size: 32, offset: 256)
!2267 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !334, line: 1942, size: 32, elements: !2268)
!2268 = !{!2269, !2270, !2271}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !2267, file: !334, line: 1943, baseType: !352, size: 32)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !2267, file: !334, line: 1944, baseType: !359, size: 32)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !2267, file: !334, line: 1945, baseType: !366, size: 32)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !2261, file: !334, line: 1950, baseType: !1400, size: 64, offset: 320)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !2261, file: !334, line: 1951, baseType: !1400, size: 64, offset: 384)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2261, file: !334, line: 1953, baseType: !1977, size: 64, offset: 448)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !1437, file: !334, line: 3404, baseType: !2276, size: 1664)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !334, line: 3337, size: 1664, elements: !2277)
!2277 = !{!2278, !2279}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2276, file: !334, line: 3338, baseType: !1473, size: 192)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !2276, file: !334, line: 3341, baseType: !2280, size: 1472, offset: 192)
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !2281, line: 410, size: 1472, elements: !2282)
!2281 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2282 = !{!2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !2280, file: !2281, line: 412, baseType: !1361, size: 32)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !2280, file: !2281, line: 413, baseType: !1361, size: 32, offset: 32)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !2280, file: !2281, line: 414, baseType: !1361, size: 32, offset: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !2280, file: !2281, line: 415, baseType: !1361, size: 32, offset: 96)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !2280, file: !2281, line: 416, baseType: !1361, size: 32, offset: 128)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !2280, file: !2281, line: 417, baseType: !1361, size: 32, offset: 160)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !2280, file: !2281, line: 418, baseType: !1360, size: 8, offset: 192)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !2280, file: !2281, line: 419, baseType: !1360, size: 8, offset: 200)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !2280, file: !2281, line: 420, baseType: !2292, size: 8, offset: 208)
!2292 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !2280, file: !2281, line: 421, baseType: !2292, size: 8, offset: 216)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !2280, file: !2281, line: 422, baseType: !2292, size: 8, offset: 224)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !2280, file: !2281, line: 423, baseType: !2292, size: 8, offset: 232)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !2280, file: !2281, line: 424, baseType: !2292, size: 8, offset: 240)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !2280, file: !2281, line: 425, baseType: !2292, size: 8, offset: 248)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !2280, file: !2281, line: 426, baseType: !2292, size: 8, offset: 256)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !2280, file: !2281, line: 427, baseType: !2292, size: 8, offset: 264)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !2280, file: !2281, line: 428, baseType: !2292, size: 8, offset: 272)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !2280, file: !2281, line: 429, baseType: !2292, size: 8, offset: 280)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !2280, file: !2281, line: 430, baseType: !2292, size: 8, offset: 288)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !2280, file: !2281, line: 431, baseType: !2292, size: 8, offset: 296)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !2280, file: !2281, line: 432, baseType: !2292, size: 8, offset: 304)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !2280, file: !2281, line: 433, baseType: !2292, size: 8, offset: 312)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !2280, file: !2281, line: 434, baseType: !2292, size: 8, offset: 320)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !2280, file: !2281, line: 435, baseType: !2292, size: 8, offset: 328)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !2280, file: !2281, line: 436, baseType: !2292, size: 8, offset: 336)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !2280, file: !2281, line: 437, baseType: !2292, size: 8, offset: 344)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !2280, file: !2281, line: 438, baseType: !2292, size: 8, offset: 352)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !2280, file: !2281, line: 439, baseType: !2292, size: 8, offset: 360)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !2280, file: !2281, line: 440, baseType: !2292, size: 8, offset: 368)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !2280, file: !2281, line: 441, baseType: !2292, size: 8, offset: 376)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !2280, file: !2281, line: 442, baseType: !2292, size: 8, offset: 384)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !2280, file: !2281, line: 443, baseType: !2292, size: 8, offset: 392)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !2280, file: !2281, line: 444, baseType: !2292, size: 8, offset: 400)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !2280, file: !2281, line: 445, baseType: !2292, size: 8, offset: 408)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !2280, file: !2281, line: 446, baseType: !2292, size: 8, offset: 416)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !2280, file: !2281, line: 447, baseType: !2292, size: 8, offset: 424)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !2280, file: !2281, line: 448, baseType: !2292, size: 8, offset: 432)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !2280, file: !2281, line: 449, baseType: !2292, size: 8, offset: 440)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !2280, file: !2281, line: 450, baseType: !2292, size: 8, offset: 448)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !2280, file: !2281, line: 451, baseType: !2292, size: 8, offset: 456)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !2280, file: !2281, line: 452, baseType: !2292, size: 8, offset: 464)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !2280, file: !2281, line: 453, baseType: !2292, size: 8, offset: 472)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !2280, file: !2281, line: 454, baseType: !2292, size: 8, offset: 480)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !2280, file: !2281, line: 455, baseType: !2292, size: 8, offset: 488)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !2280, file: !2281, line: 456, baseType: !2292, size: 8, offset: 496)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !2280, file: !2281, line: 457, baseType: !2292, size: 8, offset: 504)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !2280, file: !2281, line: 458, baseType: !2292, size: 8, offset: 512)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !2280, file: !2281, line: 459, baseType: !2292, size: 8, offset: 520)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !2280, file: !2281, line: 460, baseType: !2292, size: 8, offset: 528)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !2280, file: !2281, line: 461, baseType: !2292, size: 8, offset: 536)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !2280, file: !2281, line: 462, baseType: !2292, size: 8, offset: 544)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !2280, file: !2281, line: 463, baseType: !2292, size: 8, offset: 552)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !2280, file: !2281, line: 464, baseType: !2292, size: 8, offset: 560)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !2280, file: !2281, line: 465, baseType: !2292, size: 8, offset: 568)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !2280, file: !2281, line: 466, baseType: !2292, size: 8, offset: 576)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !2280, file: !2281, line: 467, baseType: !2292, size: 8, offset: 584)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !2280, file: !2281, line: 468, baseType: !2292, size: 8, offset: 592)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !2280, file: !2281, line: 469, baseType: !2292, size: 8, offset: 600)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !2280, file: !2281, line: 470, baseType: !2292, size: 8, offset: 608)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !2280, file: !2281, line: 471, baseType: !2292, size: 8, offset: 616)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !2280, file: !2281, line: 472, baseType: !2292, size: 8, offset: 624)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !2280, file: !2281, line: 473, baseType: !2292, size: 8, offset: 632)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !2280, file: !2281, line: 474, baseType: !2292, size: 8, offset: 640)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !2280, file: !2281, line: 475, baseType: !2292, size: 8, offset: 648)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !2280, file: !2281, line: 476, baseType: !2292, size: 8, offset: 656)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !2280, file: !2281, line: 477, baseType: !2292, size: 8, offset: 664)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !2280, file: !2281, line: 478, baseType: !2292, size: 8, offset: 672)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !2280, file: !2281, line: 479, baseType: !2292, size: 8, offset: 680)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !2280, file: !2281, line: 480, baseType: !2292, size: 8, offset: 688)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !2280, file: !2281, line: 481, baseType: !2292, size: 8, offset: 696)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !2280, file: !2281, line: 482, baseType: !2292, size: 8, offset: 704)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !2280, file: !2281, line: 483, baseType: !2292, size: 8, offset: 712)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !2280, file: !2281, line: 484, baseType: !2292, size: 8, offset: 720)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !2280, file: !2281, line: 485, baseType: !2292, size: 8, offset: 728)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !2280, file: !2281, line: 486, baseType: !2292, size: 8, offset: 736)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !2280, file: !2281, line: 487, baseType: !2292, size: 8, offset: 744)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !2280, file: !2281, line: 488, baseType: !2292, size: 8, offset: 752)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !2280, file: !2281, line: 489, baseType: !2292, size: 8, offset: 760)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !2280, file: !2281, line: 490, baseType: !2292, size: 8, offset: 768)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !2280, file: !2281, line: 491, baseType: !2292, size: 8, offset: 776)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !2280, file: !2281, line: 492, baseType: !2292, size: 8, offset: 784)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !2280, file: !2281, line: 493, baseType: !2292, size: 8, offset: 792)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !2280, file: !2281, line: 494, baseType: !2292, size: 8, offset: 800)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !2280, file: !2281, line: 495, baseType: !2292, size: 8, offset: 808)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !2280, file: !2281, line: 496, baseType: !2292, size: 8, offset: 816)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !2280, file: !2281, line: 497, baseType: !2292, size: 8, offset: 824)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !2280, file: !2281, line: 498, baseType: !2292, size: 8, offset: 832)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !2280, file: !2281, line: 499, baseType: !2292, size: 8, offset: 840)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !2280, file: !2281, line: 500, baseType: !2292, size: 8, offset: 848)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !2280, file: !2281, line: 501, baseType: !2292, size: 8, offset: 856)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !2280, file: !2281, line: 502, baseType: !2292, size: 8, offset: 864)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !2280, file: !2281, line: 503, baseType: !2292, size: 8, offset: 872)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !2280, file: !2281, line: 504, baseType: !2292, size: 8, offset: 880)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !2280, file: !2281, line: 505, baseType: !2292, size: 8, offset: 888)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !2280, file: !2281, line: 506, baseType: !2292, size: 8, offset: 896)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !2280, file: !2281, line: 507, baseType: !2292, size: 8, offset: 904)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !2280, file: !2281, line: 508, baseType: !2292, size: 8, offset: 912)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !2280, file: !2281, line: 509, baseType: !2292, size: 8, offset: 920)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !2280, file: !2281, line: 510, baseType: !2292, size: 8, offset: 928)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !2280, file: !2281, line: 511, baseType: !2292, size: 8, offset: 936)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !2280, file: !2281, line: 512, baseType: !2292, size: 8, offset: 944)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !2280, file: !2281, line: 513, baseType: !2292, size: 8, offset: 952)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !2280, file: !2281, line: 514, baseType: !2292, size: 8, offset: 960)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !2280, file: !2281, line: 515, baseType: !2292, size: 8, offset: 968)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !2280, file: !2281, line: 516, baseType: !2292, size: 8, offset: 976)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !2280, file: !2281, line: 517, baseType: !2292, size: 8, offset: 984)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !2280, file: !2281, line: 518, baseType: !2292, size: 8, offset: 992)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !2280, file: !2281, line: 519, baseType: !2292, size: 8, offset: 1000)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !2280, file: !2281, line: 520, baseType: !2292, size: 8, offset: 1008)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !2280, file: !2281, line: 521, baseType: !2292, size: 8, offset: 1016)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !2280, file: !2281, line: 522, baseType: !2292, size: 8, offset: 1024)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !2280, file: !2281, line: 523, baseType: !2292, size: 8, offset: 1032)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !2280, file: !2281, line: 524, baseType: !2292, size: 8, offset: 1040)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !2280, file: !2281, line: 525, baseType: !2292, size: 8, offset: 1048)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !2280, file: !2281, line: 526, baseType: !2292, size: 8, offset: 1056)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !2280, file: !2281, line: 527, baseType: !2292, size: 8, offset: 1064)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !2280, file: !2281, line: 528, baseType: !2292, size: 8, offset: 1072)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !2280, file: !2281, line: 529, baseType: !2292, size: 8, offset: 1080)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !2280, file: !2281, line: 530, baseType: !2292, size: 8, offset: 1088)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !2280, file: !2281, line: 531, baseType: !2292, size: 8, offset: 1096)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !2280, file: !2281, line: 532, baseType: !2292, size: 8, offset: 1104)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !2280, file: !2281, line: 533, baseType: !2292, size: 8, offset: 1112)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !2280, file: !2281, line: 534, baseType: !2292, size: 8, offset: 1120)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !2280, file: !2281, line: 535, baseType: !2292, size: 8, offset: 1128)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !2280, file: !2281, line: 536, baseType: !2292, size: 8, offset: 1136)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !2280, file: !2281, line: 537, baseType: !2292, size: 8, offset: 1144)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !2280, file: !2281, line: 538, baseType: !2292, size: 8, offset: 1152)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !2280, file: !2281, line: 539, baseType: !2292, size: 8, offset: 1160)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !2280, file: !2281, line: 540, baseType: !2292, size: 8, offset: 1168)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !2280, file: !2281, line: 541, baseType: !2292, size: 8, offset: 1176)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !2280, file: !2281, line: 542, baseType: !2292, size: 8, offset: 1184)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !2280, file: !2281, line: 543, baseType: !2292, size: 8, offset: 1192)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !2280, file: !2281, line: 544, baseType: !2292, size: 8, offset: 1200)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !2280, file: !2281, line: 545, baseType: !2292, size: 8, offset: 1208)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !2280, file: !2281, line: 546, baseType: !2292, size: 8, offset: 1216)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !2280, file: !2281, line: 547, baseType: !2292, size: 8, offset: 1224)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !2280, file: !2281, line: 548, baseType: !2292, size: 8, offset: 1232)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !2280, file: !2281, line: 549, baseType: !2292, size: 8, offset: 1240)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !2280, file: !2281, line: 550, baseType: !2292, size: 8, offset: 1248)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !2280, file: !2281, line: 551, baseType: !2292, size: 8, offset: 1256)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !2280, file: !2281, line: 552, baseType: !2292, size: 8, offset: 1264)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !2280, file: !2281, line: 553, baseType: !2292, size: 8, offset: 1272)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !2280, file: !2281, line: 554, baseType: !2292, size: 8, offset: 1280)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !2280, file: !2281, line: 555, baseType: !2292, size: 8, offset: 1288)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !2280, file: !2281, line: 556, baseType: !2292, size: 8, offset: 1296)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !2280, file: !2281, line: 557, baseType: !2292, size: 8, offset: 1304)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !2280, file: !2281, line: 558, baseType: !2292, size: 8, offset: 1312)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !2280, file: !2281, line: 559, baseType: !2292, size: 8, offset: 1320)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !2280, file: !2281, line: 560, baseType: !2292, size: 8, offset: 1328)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !2280, file: !2281, line: 561, baseType: !2292, size: 8, offset: 1336)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !2280, file: !2281, line: 562, baseType: !2292, size: 8, offset: 1344)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !2280, file: !2281, line: 563, baseType: !2292, size: 8, offset: 1352)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !2280, file: !2281, line: 564, baseType: !2292, size: 8, offset: 1360)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !2280, file: !2281, line: 565, baseType: !2292, size: 8, offset: 1368)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !2280, file: !2281, line: 566, baseType: !2292, size: 8, offset: 1376)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !2280, file: !2281, line: 567, baseType: !2292, size: 8, offset: 1384)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !2280, file: !2281, line: 568, baseType: !2292, size: 8, offset: 1392)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !2280, file: !2281, line: 569, baseType: !2292, size: 8, offset: 1400)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !2280, file: !2281, line: 570, baseType: !2292, size: 8, offset: 1408)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !2280, file: !2281, line: 571, baseType: !2292, size: 8, offset: 1416)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !2280, file: !2281, line: 572, baseType: !2292, size: 8, offset: 1424)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !2280, file: !2281, line: 573, baseType: !2292, size: 8, offset: 1432)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !2280, file: !2281, line: 574, baseType: !2292, size: 8, offset: 1440)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !1437, file: !334, line: 3405, baseType: !2448, size: 384)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !334, line: 3352, size: 384, elements: !2449)
!2449 = !{!2450, !2451}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2448, file: !334, line: 3353, baseType: !1473, size: 192)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !2448, file: !334, line: 3356, baseType: !2452, size: 192, offset: 192)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !2281, line: 578, size: 192, elements: !2453)
!2453 = !{!2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !2452, file: !2281, line: 580, baseType: !1361, size: 32)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !2452, file: !2281, line: 581, baseType: !1361, size: 32, offset: 32)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !2452, file: !2281, line: 582, baseType: !1361, size: 32, offset: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !2452, file: !2281, line: 583, baseType: !1361, size: 32, offset: 96)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2452, file: !2281, line: 584, baseType: !1360, size: 8, offset: 128)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !2452, file: !2281, line: 585, baseType: !1360, size: 8, offset: 136)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !2452, file: !2281, line: 586, baseType: !1360, size: 8, offset: 144)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !2452, file: !2281, line: 587, baseType: !1360, size: 8, offset: 152)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !2452, file: !2281, line: 588, baseType: !1360, size: 8, offset: 160)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !2452, file: !2281, line: 589, baseType: !1360, size: 8, offset: 168)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !2452, file: !2281, line: 590, baseType: !1360, size: 8, offset: 176)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !1412, file: !1281, line: 739, baseType: !2466, size: 448)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !1281, line: 350, size: 448, elements: !2467)
!2467 = !{!2468, !2474}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !2466, file: !1281, line: 353, baseType: !2469, size: 384)
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !1281, line: 333, size: 384, elements: !2470)
!2470 = !{!2471, !2472, !2473}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2469, file: !1281, line: 336, baseType: !1415, size: 256)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !2469, file: !1281, line: 343, baseType: !2013, size: 64, offset: 256)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !2469, file: !1281, line: 344, baseType: !2020, size: 64, offset: 320)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2466, file: !1281, line: 359, baseType: !1977, size: 64, offset: 384)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !1412, file: !1281, line: 740, baseType: !2476, size: 512)
!2476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !1281, line: 365, size: 512, elements: !2477)
!2477 = !{!2478, !2479, !2480}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !2476, file: !1281, line: 368, baseType: !2469, size: 384)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !2476, file: !1281, line: 373, baseType: !1435, size: 64, offset: 384)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !2476, file: !1281, line: 374, baseType: !1435, size: 64, offset: 448)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !1412, file: !1281, line: 741, baseType: !2482, size: 576)
!2482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !1281, line: 380, size: 576, elements: !2483)
!2483 = !{!2484, !2485}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !2482, file: !1281, line: 383, baseType: !2476, size: 512)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2482, file: !1281, line: 389, baseType: !1977, size: 64, offset: 512)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1412, file: !1281, line: 742, baseType: !2487, size: 320)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !1281, line: 395, size: 320, elements: !2488)
!2488 = !{!2489, !2490}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2487, file: !1281, line: 397, baseType: !1415, size: 256)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !2487, file: !1281, line: 400, baseType: !1400, size: 64, offset: 256)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !1412, file: !1281, line: 743, baseType: !2492, size: 448)
!2492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !1281, line: 406, size: 448, elements: !2493)
!2493 = !{!2494, !2495, !2496, !2497}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2492, file: !1281, line: 408, baseType: !1415, size: 256)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !2492, file: !1281, line: 412, baseType: !1435, size: 64, offset: 256)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2492, file: !1281, line: 420, baseType: !1435, size: 64, offset: 320)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !2492, file: !1281, line: 423, baseType: !1400, size: 64, offset: 384)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !1412, file: !1281, line: 744, baseType: !2499, size: 384)
!2499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !1281, line: 429, size: 384, elements: !2500)
!2500 = !{!2501, !2502, !2503}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2499, file: !1281, line: 431, baseType: !1415, size: 256)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !2499, file: !1281, line: 434, baseType: !1435, size: 64, offset: 256)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !2499, file: !1281, line: 437, baseType: !1400, size: 64, offset: 320)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !1412, file: !1281, line: 745, baseType: !2505, size: 384)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !1281, line: 443, size: 384, elements: !2506)
!2506 = !{!2507, !2508, !2509}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2505, file: !1281, line: 445, baseType: !1415, size: 256)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !2505, file: !1281, line: 449, baseType: !1435, size: 64, offset: 256)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !2505, file: !1281, line: 453, baseType: !1400, size: 64, offset: 320)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !1412, file: !1281, line: 746, baseType: !2511, size: 320)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !1281, line: 459, size: 320, elements: !2512)
!2512 = !{!2513, !2514}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2511, file: !1281, line: 461, baseType: !1415, size: 256)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !2511, file: !1281, line: 464, baseType: !1435, size: 64, offset: 256)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !1412, file: !1281, line: 747, baseType: !2516, size: 768)
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !1281, line: 469, size: 768, elements: !2517)
!2517 = !{!2518, !2519, !2520, !2521, !2522}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2516, file: !1281, line: 471, baseType: !1415, size: 256)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !2516, file: !1281, line: 474, baseType: !7, size: 32, offset: 256)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2516, file: !1281, line: 475, baseType: !7, size: 32, offset: 288)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !2516, file: !1281, line: 478, baseType: !1435, size: 64, offset: 320)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2516, file: !1281, line: 481, baseType: !2523, size: 384, offset: 384)
!2523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2524, size: 384, elements: !1533)
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !334, line: 1917, size: 384, elements: !2525)
!2525 = !{!2526, !2527, !2528}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !2524, file: !334, line: 1920, baseType: !2025, size: 256)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !2524, file: !334, line: 1921, baseType: !1435, size: 64, offset: 256)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !2524, file: !334, line: 1922, baseType: !1428, size: 32, offset: 320)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !1412, file: !1281, line: 748, baseType: !2530, size: 320)
!2530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !1281, line: 487, size: 320, elements: !2531)
!2531 = !{!2532, !2533}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2530, file: !1281, line: 490, baseType: !1415, size: 256)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !2530, file: !1281, line: 494, baseType: !1361, size: 32, offset: 256)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !1412, file: !1281, line: 749, baseType: !2535, size: 384)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !1281, line: 500, size: 384, elements: !2536)
!2536 = !{!2537, !2538, !2539}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2535, file: !1281, line: 502, baseType: !1415, size: 256)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !2535, file: !1281, line: 506, baseType: !1400, size: 64, offset: 256)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2535, file: !1281, line: 510, baseType: !1400, size: 64, offset: 320)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !1412, file: !1281, line: 750, baseType: !2541, size: 320)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !1281, line: 529, size: 320, elements: !2542)
!2542 = !{!2543, !2544}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2541, file: !1281, line: 531, baseType: !1415, size: 256)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2541, file: !1281, line: 540, baseType: !1400, size: 64, offset: 256)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !1412, file: !1281, line: 751, baseType: !2546, size: 704)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !1281, line: 546, size: 704, elements: !2547)
!2547 = !{!2548, !2549, !2550, !2551, !2552, !2553, !2554}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !2546, file: !1281, line: 549, baseType: !2476, size: 512)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2546, file: !1281, line: 553, baseType: !1366, size: 64, offset: 512)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !2546, file: !1281, line: 557, baseType: !1360, size: 8, offset: 576)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !2546, file: !1281, line: 558, baseType: !1360, size: 8, offset: 584)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !2546, file: !1281, line: 559, baseType: !1360, size: 8, offset: 592)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !2546, file: !1281, line: 560, baseType: !1360, size: 8, offset: 600)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2546, file: !1281, line: 566, baseType: !1977, size: 64, offset: 640)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !1412, file: !1281, line: 752, baseType: !2556, size: 384)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !1281, line: 571, size: 384, elements: !2557)
!2557 = !{!2558, !2559}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !2556, file: !1281, line: 573, baseType: !2487, size: 320)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2556, file: !1281, line: 577, baseType: !1435, size: 64, offset: 320)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !1412, file: !1281, line: 753, baseType: !2561, size: 576)
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !1281, line: 600, size: 576, elements: !2562)
!2562 = !{!2563, !2564, !2565, !2566, !2575}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !2561, file: !1281, line: 602, baseType: !2487, size: 320)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !2561, file: !1281, line: 605, baseType: !1435, size: 64, offset: 320)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !2561, file: !1281, line: 609, baseType: !1927, size: 64, offset: 384)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !2561, file: !1281, line: 612, baseType: !2567, size: 64, offset: 448)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !1281, line: 581, size: 320, elements: !2569)
!2569 = !{!2570, !2571, !2572, !2573, !2574}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !2568, file: !1281, line: 583, baseType: !366, size: 32)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2568, file: !1281, line: 586, baseType: !1435, size: 64, offset: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !2568, file: !1281, line: 589, baseType: !1435, size: 64, offset: 128)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !2568, file: !1281, line: 592, baseType: !1435, size: 64, offset: 192)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2568, file: !1281, line: 595, baseType: !1435, size: 64, offset: 256)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !2561, file: !1281, line: 616, baseType: !1400, size: 64, offset: 512)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !1412, file: !1281, line: 754, baseType: !2577, size: 512)
!2577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !1281, line: 622, size: 512, elements: !2578)
!2578 = !{!2579, !2580, !2581, !2582}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !2577, file: !1281, line: 624, baseType: !2487, size: 320)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !2577, file: !1281, line: 628, baseType: !1435, size: 64, offset: 320)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !2577, file: !1281, line: 632, baseType: !1435, size: 64, offset: 384)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !2577, file: !1281, line: 636, baseType: !1435, size: 64, offset: 448)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !1412, file: !1281, line: 755, baseType: !2584, size: 704)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !1281, line: 642, size: 704, elements: !2585)
!2585 = !{!2586, !2587, !2588, !2589}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !2584, file: !1281, line: 644, baseType: !2577, size: 512)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !2584, file: !1281, line: 648, baseType: !1435, size: 64, offset: 512)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !2584, file: !1281, line: 652, baseType: !1435, size: 64, offset: 576)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !2584, file: !1281, line: 653, baseType: !1435, size: 64, offset: 640)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !1412, file: !1281, line: 756, baseType: !2591, size: 448)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !1281, line: 663, size: 448, elements: !2592)
!2592 = !{!2593, !2594, !2595}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !2591, file: !1281, line: 665, baseType: !2487, size: 320)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !2591, file: !1281, line: 668, baseType: !1435, size: 64, offset: 320)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !2591, file: !1281, line: 673, baseType: !1435, size: 64, offset: 384)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !1412, file: !1281, line: 757, baseType: !2597, size: 384)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !1281, line: 694, size: 384, elements: !2598)
!2598 = !{!2599, !2600}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !2597, file: !1281, line: 696, baseType: !2487, size: 320)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !2597, file: !1281, line: 699, baseType: !1435, size: 64, offset: 320)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !1412, file: !1281, line: 758, baseType: !2602, size: 384)
!2602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !1281, line: 681, size: 384, elements: !2603)
!2603 = !{!2604, !2605, !2606}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2602, file: !1281, line: 683, baseType: !1415, size: 256)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !2602, file: !1281, line: 686, baseType: !1435, size: 64, offset: 256)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !2602, file: !1281, line: 689, baseType: !1435, size: 64, offset: 320)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !1412, file: !1281, line: 759, baseType: !2608, size: 384)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !1281, line: 707, size: 384, elements: !2609)
!2609 = !{!2610, !2611, !2612}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2608, file: !1281, line: 709, baseType: !1415, size: 256)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !2608, file: !1281, line: 712, baseType: !1435, size: 64, offset: 256)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !2608, file: !1281, line: 712, baseType: !1435, size: 64, offset: 320)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !1412, file: !1281, line: 760, baseType: !2614, size: 320)
!2614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !1281, line: 718, size: 320, elements: !2615)
!2615 = !{!2616, !2617}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2614, file: !1281, line: 720, baseType: !1415, size: 256)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2614, file: !1281, line: 723, baseType: !1435, size: 64, offset: 256)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1407, file: !1281, line: 138, baseType: !1406, size: 64, offset: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1407, file: !1281, line: 139, baseType: !1406, size: 64, offset: 128)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1402, file: !1281, line: 146, baseType: !1405, size: 64, offset: 64)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !1402, file: !1281, line: 152, baseType: !1400, size: 64, offset: 128)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1397, file: !318, line: 130, baseType: !1605, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1392, file: !318, line: 134, baseType: !1365, size: 64, offset: 192)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !1392, file: !318, line: 137, baseType: !1435, size: 64, offset: 256)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !1392, file: !318, line: 138, baseType: !1428, size: 32, offset: 320)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !1392, file: !318, line: 142, baseType: !7, size: 32, offset: 352)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1392, file: !318, line: 144, baseType: !1361, size: 32, offset: 384)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !1392, file: !318, line: 145, baseType: !1361, size: 32, offset: 416)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1392, file: !318, line: 146, baseType: !2630, size: 64, offset: 448)
!2630 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !318, line: 119, baseType: !1490)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !1375, file: !318, line: 220, baseType: !1378, size: 64, offset: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1375, file: !318, line: 223, baseType: !1365, size: 64, offset: 128)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !1375, file: !318, line: 226, baseType: !2634, size: 64, offset: 192)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !318, line: 185, flags: DIFlagFwdDecl)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !1375, file: !318, line: 229, baseType: !2637, size: 128, offset: 256)
!2637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2638, size: 128, elements: !1673)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !318, line: 229, flags: DIFlagFwdDecl)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !1375, file: !318, line: 232, baseType: !1374, size: 64, offset: 384)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !1375, file: !318, line: 233, baseType: !1374, size: 64, offset: 448)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !1375, file: !318, line: 238, baseType: !2643, size: 64, offset: 512)
!2643 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !318, line: 235, size: 64, elements: !2644)
!2644 = !{!2645, !2651}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !2643, file: !318, line: 236, baseType: !2646, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !318, line: 273, size: 128, elements: !2648)
!2648 = !{!2649, !2650}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2647, file: !318, line: 275, baseType: !1400, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !2647, file: !318, line: 278, baseType: !1400, size: 64, offset: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !2643, file: !318, line: 237, baseType: !2652, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !318, line: 259, size: 320, elements: !2654)
!2654 = !{!2655, !2656, !2657, !2658, !2659}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !2653, file: !318, line: 261, baseType: !1605, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !2653, file: !318, line: 262, baseType: !1605, size: 64, offset: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2653, file: !318, line: 266, baseType: !1605, size: 64, offset: 128)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !2653, file: !318, line: 267, baseType: !1605, size: 64, offset: 192)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !2653, file: !318, line: 270, baseType: !1361, size: 32, offset: 256)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1375, file: !318, line: 241, baseType: !2630, size: 64, offset: 576)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1375, file: !318, line: 244, baseType: !1361, size: 32, offset: 640)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !1375, file: !318, line: 247, baseType: !1361, size: 32, offset: 672)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !1375, file: !318, line: 250, baseType: !1361, size: 32, offset: 704)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !1375, file: !318, line: 253, baseType: !1361, size: 32, offset: 736)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1375, file: !318, line: 256, baseType: !1361, size: 32, offset: 768)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "recip_def", scope: !1369, file: !3, line: 115, baseType: !1435, size: 64, offset: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "recip_def_stmt", scope: !1369, file: !3, line: 119, baseType: !1410, size: 64, offset: 128)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1369, file: !3, line: 123, baseType: !1368, size: 64, offset: 192)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1369, file: !3, line: 127, baseType: !1368, size: 64, offset: 256)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "num_divisions", scope: !1369, file: !3, line: 132, baseType: !1361, size: 32, offset: 320)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "bb_has_division", scope: !1369, file: !3, line: 137, baseType: !1360, size: 8, offset: 352)
!2672 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_operand_p", file: !1320, line: 30, baseType: !2673)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_use_operand_t", file: !334, line: 1893, baseType: !2025)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1412)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_heap", file: !1281, line: 34, baseType: !2679)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_heap", file: !1281, line: 34, size: 128, elements: !2680)
!2680 = !{!2681}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2679, file: !1281, line: 34, baseType: !1958, size: 128)
!2682 = !{!0, !2683, !2711, !2713, !2736}
!2683 = !DIGlobalVariableExpression(var: !2684, expr: !DIExpression())
!2684 = distinct !DIGlobalVariable(name: "pass_cse_sincos", scope: !2, file: !3, line: 802, type: !2685, isLocal: false, isDefinition: true)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_opt_pass", file: !6, line: 156, size: 640, elements: !2686)
!2686 = !{!2687}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !2685, file: !6, line: 158, baseType: !2688, size: 640)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !6, line: 114, size: 640, elements: !2689)
!2689 = !{!2690, !2691, !2692, !2696, !2700, !2702, !2703, !2704, !2706, !2707, !2708, !2709, !2710}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2688, file: !6, line: 117, baseType: !5, size: 32)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2688, file: !6, line: 121, baseType: !1366, size: 64, offset: 64)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !2688, file: !6, line: 125, baseType: !2693, size: 64, offset: 128)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!1360}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !2688, file: !6, line: 130, baseType: !2697, size: 64, offset: 192)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!7}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !2688, file: !6, line: 133, baseType: !2701, size: 64, offset: 256)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2688, file: !6, line: 136, baseType: !2701, size: 64, offset: 320)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !2688, file: !6, line: 139, baseType: !1361, size: 32, offset: 384)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !2688, file: !6, line: 143, baseType: !2705, size: 32, offset: 416)
!2705 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !14, line: 80, baseType: !13)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !2688, file: !6, line: 146, baseType: !7, size: 32, offset: 448)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !2688, file: !6, line: 147, baseType: !7, size: 32, offset: 480)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !2688, file: !6, line: 148, baseType: !7, size: 32, offset: 512)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !2688, file: !6, line: 151, baseType: !7, size: 32, offset: 544)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !2688, file: !6, line: 152, baseType: !7, size: 32, offset: 576)
!2711 = !DIGlobalVariableExpression(var: !2712, expr: !DIExpression())
!2712 = distinct !DIGlobalVariable(name: "pass_optimize_bswap", scope: !2, file: !3, line: 1245, type: !2685, isLocal: false, isDefinition: true)
!2713 = !DIGlobalVariableExpression(var: !2714, expr: !DIExpression())
!2714 = distinct !DIGlobalVariable(name: "occ_pool", scope: !2, file: !3, line: 146, type: !2715, isLocal: true, isDefinition: true)
!2715 = !DIDerivedType(tag: DW_TAG_typedef, name: "alloc_pool", file: !2716, line: 58, baseType: !2717)
!2716 = !DIFile(filename: "./alloc-pool.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "alloc_pool_def", file: !2716, line: 32, size: 704, elements: !2719)
!2719 = !{!2720, !2721, !2722, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2718, file: !2716, line: 34, baseType: !1366, size: 64)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "elts_per_block", scope: !2718, file: !2716, line: 38, baseType: !1927, size: 64, offset: 64)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "returned_free_list", scope: !2718, file: !2716, line: 41, baseType: !2723, size: 64, offset: 128)
!2723 = !DIDerivedType(tag: DW_TAG_typedef, name: "alloc_pool_list", file: !2716, line: 30, baseType: !2724)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "alloc_pool_list_def", file: !2716, line: 26, size: 64, elements: !2726)
!2726 = !{!2727}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2725, file: !2716, line: 28, baseType: !2724, size: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "virgin_free_list", scope: !2718, file: !2716, line: 45, baseType: !1363, size: 64, offset: 192)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "virgin_elts_remaining", scope: !2718, file: !2716, line: 49, baseType: !1927, size: 64, offset: 256)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "elts_allocated", scope: !2718, file: !2716, line: 51, baseType: !1927, size: 64, offset: 320)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "elts_free", scope: !2718, file: !2716, line: 52, baseType: !1927, size: 64, offset: 384)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_allocated", scope: !2718, file: !2716, line: 53, baseType: !1927, size: 64, offset: 448)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "block_list", scope: !2718, file: !2716, line: 54, baseType: !2723, size: 64, offset: 512)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !2718, file: !2716, line: 55, baseType: !1927, size: 64, offset: 576)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "elt_size", scope: !2718, file: !2716, line: 56, baseType: !1927, size: 64, offset: 640)
!2736 = !DIGlobalVariableExpression(var: !2737, expr: !DIExpression())
!2737 = distinct !DIGlobalVariable(name: "occ_head", scope: !2, file: !3, line: 143, type: !1368, isLocal: true, isDefinition: true)
!2738 = !{i32 2, !"Dwarf Version", i32 4}
!2739 = !{i32 2, !"Debug Info Version", i32 3}
!2740 = !{i32 1, !"wchar_size", i32 4}
!2741 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!2742 = distinct !DISubprogram(name: "vprintf", scope: !2743, file: !2743, line: 39, type: !2744, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2754)
!2743 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!1361, !2746, !2747}
!2746 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1366)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2749)
!2749 = !{!2750, !2751, !2752, !2753}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2748, file: !3, baseType: !7, size: 32)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2748, file: !3, baseType: !7, size: 32, offset: 32)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2748, file: !3, baseType: !1365, size: 64, offset: 64)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2748, file: !3, baseType: !1365, size: 64, offset: 128)
!2754 = !{!2755, !2756}
!2755 = !DILocalVariable(name: "__fmt", arg: 1, scope: !2742, file: !2743, line: 39, type: !2746)
!2756 = !DILocalVariable(name: "__arg", arg: 2, scope: !2742, file: !2743, line: 39, type: !2747)
!2757 = !DILocation(line: 0, scope: !2742)
!2758 = !DILocation(line: 41, column: 20, scope: !2742)
!2759 = !DILocation(line: 41, column: 10, scope: !2742)
!2760 = !DILocation(line: 41, column: 3, scope: !2742)
!2761 = distinct !DISubprogram(name: "getchar", scope: !2743, file: !2743, line: 47, type: !2762, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2764)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!1361}
!2764 = !{}
!2765 = !DILocation(line: 49, column: 16, scope: !2761)
!2766 = !DILocation(line: 49, column: 10, scope: !2761)
!2767 = !DILocation(line: 49, column: 3, scope: !2761)
!2768 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !2743, file: !2743, line: 56, type: !2769, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2822)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{!1361, !2771}
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2773, line: 7, baseType: !2774)
!2773 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2775, line: 49, size: 1728, elements: !2776)
!2775 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2776 = !{!2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2792, !2794, !2795, !2796, !2799, !2801, !2802, !2803, !2806, !2808, !2811, !2814, !2815, !2816, !2817, !2818}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2774, file: !2775, line: 51, baseType: !1361, size: 32)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2774, file: !2775, line: 54, baseType: !1363, size: 64, offset: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2774, file: !2775, line: 55, baseType: !1363, size: 64, offset: 128)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2774, file: !2775, line: 56, baseType: !1363, size: 64, offset: 192)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2774, file: !2775, line: 57, baseType: !1363, size: 64, offset: 256)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2774, file: !2775, line: 58, baseType: !1363, size: 64, offset: 320)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2774, file: !2775, line: 59, baseType: !1363, size: 64, offset: 384)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2774, file: !2775, line: 60, baseType: !1363, size: 64, offset: 448)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2774, file: !2775, line: 61, baseType: !1363, size: 64, offset: 512)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2774, file: !2775, line: 64, baseType: !1363, size: 64, offset: 576)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2774, file: !2775, line: 65, baseType: !1363, size: 64, offset: 640)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2774, file: !2775, line: 66, baseType: !1363, size: 64, offset: 704)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2774, file: !2775, line: 68, baseType: !2790, size: 64, offset: 768)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2775, line: 36, flags: DIFlagFwdDecl)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2774, file: !2775, line: 70, baseType: !2793, size: 64, offset: 832)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2774, file: !2775, line: 72, baseType: !1361, size: 32, offset: 896)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2774, file: !2775, line: 73, baseType: !1361, size: 32, offset: 928)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2774, file: !2775, line: 74, baseType: !2797, size: 64, offset: 960)
!2797 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2798, line: 152, baseType: !1490)
!2798 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2774, file: !2775, line: 77, baseType: !2800, size: 16, offset: 1024)
!2800 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2774, file: !2775, line: 78, baseType: !2292, size: 8, offset: 1040)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2774, file: !2775, line: 79, baseType: !1532, size: 8, offset: 1048)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2774, file: !2775, line: 81, baseType: !2804, size: 64, offset: 1088)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2775, line: 43, baseType: null)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2774, file: !2775, line: 89, baseType: !2807, size: 64, offset: 1152)
!2807 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2798, line: 153, baseType: !1490)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2774, file: !2775, line: 91, baseType: !2809, size: 64, offset: 1216)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2775, line: 37, flags: DIFlagFwdDecl)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2774, file: !2775, line: 92, baseType: !2812, size: 64, offset: 1280)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2775, line: 38, flags: DIFlagFwdDecl)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2774, file: !2775, line: 93, baseType: !2793, size: 64, offset: 1344)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2774, file: !2775, line: 94, baseType: !1365, size: 64, offset: 1408)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2774, file: !2775, line: 95, baseType: !1927, size: 64, offset: 1472)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2774, file: !2775, line: 96, baseType: !1361, size: 32, offset: 1536)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2774, file: !2775, line: 98, baseType: !2819, size: 160, offset: 1568)
!2819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1364, size: 160, elements: !2820)
!2820 = !{!2821}
!2821 = !DISubrange(count: 20)
!2822 = !{!2823}
!2823 = !DILocalVariable(name: "__fp", arg: 1, scope: !2768, file: !2743, line: 56, type: !2771)
!2824 = !DILocation(line: 0, scope: !2768)
!2825 = !DILocation(line: 58, column: 10, scope: !2768)
!2826 = !DILocation(line: 58, column: 3, scope: !2768)
!2827 = distinct !DISubprogram(name: "getc_unlocked", scope: !2743, file: !2743, line: 66, type: !2769, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2828)
!2828 = !{!2829}
!2829 = !DILocalVariable(name: "__fp", arg: 1, scope: !2827, file: !2743, line: 66, type: !2771)
!2830 = !DILocation(line: 0, scope: !2827)
!2831 = !DILocation(line: 68, column: 10, scope: !2827)
!2832 = !DILocation(line: 68, column: 3, scope: !2827)
!2833 = distinct !DISubprogram(name: "getchar_unlocked", scope: !2743, file: !2743, line: 73, type: !2762, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2764)
!2834 = !DILocation(line: 75, column: 10, scope: !2833)
!2835 = !DILocation(line: 75, column: 3, scope: !2833)
!2836 = distinct !DISubprogram(name: "putchar", scope: !2743, file: !2743, line: 82, type: !2837, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2839)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!1361, !1361}
!2839 = !{!2840}
!2840 = !DILocalVariable(name: "__c", arg: 1, scope: !2836, file: !2743, line: 82, type: !1361)
!2841 = !DILocation(line: 0, scope: !2836)
!2842 = !DILocation(line: 84, column: 21, scope: !2836)
!2843 = !DILocation(line: 84, column: 10, scope: !2836)
!2844 = !DILocation(line: 84, column: 3, scope: !2836)
!2845 = distinct !DISubprogram(name: "fputc_unlocked", scope: !2743, file: !2743, line: 91, type: !2846, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2848)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!1361, !1361, !2771}
!2848 = !{!2849, !2850}
!2849 = !DILocalVariable(name: "__c", arg: 1, scope: !2845, file: !2743, line: 91, type: !1361)
!2850 = !DILocalVariable(name: "__stream", arg: 2, scope: !2845, file: !2743, line: 91, type: !2771)
!2851 = !DILocation(line: 0, scope: !2845)
!2852 = !DILocation(line: 93, column: 10, scope: !2845)
!2853 = !DILocation(line: 93, column: 3, scope: !2845)
!2854 = distinct !DISubprogram(name: "putc_unlocked", scope: !2743, file: !2743, line: 101, type: !2846, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2855)
!2855 = !{!2856, !2857}
!2856 = !DILocalVariable(name: "__c", arg: 1, scope: !2854, file: !2743, line: 101, type: !1361)
!2857 = !DILocalVariable(name: "__stream", arg: 2, scope: !2854, file: !2743, line: 101, type: !2771)
!2858 = !DILocation(line: 0, scope: !2854)
!2859 = !DILocation(line: 103, column: 10, scope: !2854)
!2860 = !DILocation(line: 103, column: 3, scope: !2854)
!2861 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2743, file: !2743, line: 108, type: !2837, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2862)
!2862 = !{!2863}
!2863 = !DILocalVariable(name: "__c", arg: 1, scope: !2861, file: !2743, line: 108, type: !1361)
!2864 = !DILocation(line: 0, scope: !2861)
!2865 = !DILocation(line: 110, column: 10, scope: !2861)
!2866 = !DILocation(line: 110, column: 3, scope: !2861)
!2867 = distinct !DISubprogram(name: "getline", scope: !2743, file: !2743, line: 118, type: !2868, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2872)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!2870, !1362, !2871, !2771}
!2870 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2798, line: 193, baseType: !1490)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!2872 = !{!2873, !2874, !2875}
!2873 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2867, file: !2743, line: 118, type: !1362)
!2874 = !DILocalVariable(name: "__n", arg: 2, scope: !2867, file: !2743, line: 118, type: !2871)
!2875 = !DILocalVariable(name: "__stream", arg: 3, scope: !2867, file: !2743, line: 118, type: !2771)
!2876 = !DILocation(line: 0, scope: !2867)
!2877 = !DILocation(line: 120, column: 10, scope: !2867)
!2878 = !DILocation(line: 120, column: 3, scope: !2867)
!2879 = distinct !DISubprogram(name: "feof_unlocked", scope: !2743, file: !2743, line: 128, type: !2769, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2880)
!2880 = !{!2881}
!2881 = !DILocalVariable(name: "__stream", arg: 1, scope: !2879, file: !2743, line: 128, type: !2771)
!2882 = !DILocation(line: 0, scope: !2879)
!2883 = !DILocation(line: 130, column: 10, scope: !2879)
!2884 = !DILocation(line: 130, column: 3, scope: !2879)
!2885 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2743, file: !2743, line: 135, type: !2769, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2886)
!2886 = !{!2887}
!2887 = !DILocalVariable(name: "__stream", arg: 1, scope: !2885, file: !2743, line: 135, type: !2771)
!2888 = !DILocation(line: 0, scope: !2885)
!2889 = !DILocation(line: 137, column: 10, scope: !2885)
!2890 = !DILocation(line: 137, column: 3, scope: !2885)
!2891 = distinct !DISubprogram(name: "tolower", scope: !2892, file: !2892, line: 207, type: !2837, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2893)
!2892 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2893 = !{!2894}
!2894 = !DILocalVariable(name: "__c", arg: 1, scope: !2891, file: !2892, line: 207, type: !1361)
!2895 = !DILocation(line: 0, scope: !2891)
!2896 = !DILocation(line: 209, column: 22, scope: !2891)
!2897 = !DILocation(line: 209, column: 39, scope: !2891)
!2898 = !DILocation(line: 209, column: 38, scope: !2891)
!2899 = !DILocation(line: 209, column: 37, scope: !2891)
!2900 = !DILocation(line: 209, column: 10, scope: !2891)
!2901 = !DILocation(line: 209, column: 3, scope: !2891)
!2902 = distinct !DISubprogram(name: "toupper", scope: !2892, file: !2892, line: 213, type: !2837, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2903)
!2903 = !{!2904}
!2904 = !DILocalVariable(name: "__c", arg: 1, scope: !2902, file: !2892, line: 213, type: !1361)
!2905 = !DILocation(line: 0, scope: !2902)
!2906 = !DILocation(line: 215, column: 22, scope: !2902)
!2907 = !DILocation(line: 215, column: 39, scope: !2902)
!2908 = !DILocation(line: 215, column: 38, scope: !2902)
!2909 = !DILocation(line: 215, column: 37, scope: !2902)
!2910 = !DILocation(line: 215, column: 10, scope: !2902)
!2911 = !DILocation(line: 215, column: 3, scope: !2902)
!2912 = distinct !DISubprogram(name: "atoi", scope: !2913, file: !2913, line: 361, type: !2914, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2916)
!2913 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!1361, !1366}
!2916 = !{!2917}
!2917 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2912, file: !2913, line: 361, type: !1366)
!2918 = !DILocation(line: 0, scope: !2912)
!2919 = !DILocation(line: 363, column: 16, scope: !2912)
!2920 = !DILocation(line: 363, column: 10, scope: !2912)
!2921 = !DILocation(line: 363, column: 3, scope: !2912)
!2922 = distinct !DISubprogram(name: "atol", scope: !2913, file: !2913, line: 366, type: !2923, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2925)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!1490, !1366}
!2925 = !{!2926}
!2926 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2922, file: !2913, line: 366, type: !1366)
!2927 = !DILocation(line: 0, scope: !2922)
!2928 = !DILocation(line: 368, column: 10, scope: !2922)
!2929 = !DILocation(line: 368, column: 3, scope: !2922)
!2930 = distinct !DISubprogram(name: "atoll", scope: !2913, file: !2913, line: 373, type: !2931, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2934)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!2933, !1366}
!2933 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2934 = !{!2935}
!2935 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2930, file: !2913, line: 373, type: !1366)
!2936 = !DILocation(line: 0, scope: !2930)
!2937 = !DILocation(line: 375, column: 10, scope: !2930)
!2938 = !DILocation(line: 375, column: 3, scope: !2930)
!2939 = distinct !DISubprogram(name: "bsearch", scope: !2940, file: !2940, line: 20, type: !2941, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2944)
!2940 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!1365, !1912, !1912, !1927, !1927, !2943}
!2943 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2913, line: 808, baseType: !1916)
!2944 = !{!2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954}
!2945 = !DILocalVariable(name: "__key", arg: 1, scope: !2939, file: !2940, line: 20, type: !1912)
!2946 = !DILocalVariable(name: "__base", arg: 2, scope: !2939, file: !2940, line: 20, type: !1912)
!2947 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2939, file: !2940, line: 20, type: !1927)
!2948 = !DILocalVariable(name: "__size", arg: 4, scope: !2939, file: !2940, line: 20, type: !1927)
!2949 = !DILocalVariable(name: "__compar", arg: 5, scope: !2939, file: !2940, line: 21, type: !2943)
!2950 = !DILocalVariable(name: "__l", scope: !2939, file: !2940, line: 23, type: !1927)
!2951 = !DILocalVariable(name: "__u", scope: !2939, file: !2940, line: 23, type: !1927)
!2952 = !DILocalVariable(name: "__idx", scope: !2939, file: !2940, line: 23, type: !1927)
!2953 = !DILocalVariable(name: "__p", scope: !2939, file: !2940, line: 24, type: !1912)
!2954 = !DILocalVariable(name: "__comparison", scope: !2939, file: !2940, line: 25, type: !1361)
!2955 = !DILocation(line: 0, scope: !2939)
!2956 = !DILocation(line: 29, column: 3, scope: !2939)
!2957 = !DILocation(line: 27, column: 7, scope: !2939)
!2958 = !DILocation(line: 29, column: 14, scope: !2939)
!2959 = !DILocation(line: 31, column: 20, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2939, file: !2940, line: 30, column: 5)
!2961 = !DILocation(line: 31, column: 27, scope: !2960)
!2962 = !DILocation(line: 32, column: 56, scope: !2960)
!2963 = !DILocation(line: 32, column: 47, scope: !2960)
!2964 = !DILocation(line: 33, column: 22, scope: !2960)
!2965 = !DILocation(line: 34, column: 24, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2960, file: !2940, line: 34, column: 11)
!2967 = !DILocation(line: 34, column: 11, scope: !2960)
!2968 = !DILocation(line: 36, column: 29, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2966, file: !2940, line: 36, column: 16)
!2970 = !DILocation(line: 36, column: 16, scope: !2966)
!2971 = !DILocation(line: 37, column: 14, scope: !2969)
!2972 = distinct !{!2972, !2956, !2973}
!2973 = !DILocation(line: 40, column: 5, scope: !2939)
!2974 = !DILocation(line: 43, column: 1, scope: !2939)
!2975 = distinct !DISubprogram(name: "atof", scope: !2976, file: !2976, line: 25, type: !2977, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2980)
!2976 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!2979, !1366}
!2979 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2980 = !{!2981}
!2981 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2975, file: !2976, line: 25, type: !1366)
!2982 = !DILocation(line: 0, scope: !2975)
!2983 = !DILocation(line: 27, column: 10, scope: !2975)
!2984 = !DILocation(line: 27, column: 3, scope: !2975)
!2985 = distinct !DISubprogram(name: "strtoimax", scope: !2986, file: !2986, line: 324, type: !2987, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2993)
!2986 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!2989, !2746, !2992, !1361}
!2989 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2990, line: 101, baseType: !2991)
!2990 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2991 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2798, line: 72, baseType: !1490)
!2992 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1362)
!2993 = !{!2994, !2995, !2996}
!2994 = !DILocalVariable(name: "nptr", arg: 1, scope: !2985, file: !2986, line: 324, type: !2746)
!2995 = !DILocalVariable(name: "endptr", arg: 2, scope: !2985, file: !2986, line: 324, type: !2992)
!2996 = !DILocalVariable(name: "base", arg: 3, scope: !2985, file: !2986, line: 324, type: !1361)
!2997 = !DILocation(line: 0, scope: !2985)
!2998 = !DILocation(line: 327, column: 10, scope: !2985)
!2999 = !DILocation(line: 327, column: 3, scope: !2985)
!3000 = distinct !DISubprogram(name: "strtoumax", scope: !2986, file: !2986, line: 336, type: !3001, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3005)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!3003, !2746, !2992, !1361}
!3003 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2990, line: 102, baseType: !3004)
!3004 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2798, line: 73, baseType: !1488)
!3005 = !{!3006, !3007, !3008}
!3006 = !DILocalVariable(name: "nptr", arg: 1, scope: !3000, file: !2986, line: 336, type: !2746)
!3007 = !DILocalVariable(name: "endptr", arg: 2, scope: !3000, file: !2986, line: 336, type: !2992)
!3008 = !DILocalVariable(name: "base", arg: 3, scope: !3000, file: !2986, line: 336, type: !1361)
!3009 = !DILocation(line: 0, scope: !3000)
!3010 = !DILocation(line: 339, column: 10, scope: !3000)
!3011 = !DILocation(line: 339, column: 3, scope: !3000)
!3012 = distinct !DISubprogram(name: "wcstoimax", scope: !2986, file: !2986, line: 348, type: !3013, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3022)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!2989, !3015, !3019, !1361}
!3015 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3016)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3018)
!3018 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2986, line: 34, baseType: !1361)
!3019 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3020)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3022 = !{!3023, !3024, !3025}
!3023 = !DILocalVariable(name: "nptr", arg: 1, scope: !3012, file: !2986, line: 348, type: !3015)
!3024 = !DILocalVariable(name: "endptr", arg: 2, scope: !3012, file: !2986, line: 348, type: !3019)
!3025 = !DILocalVariable(name: "base", arg: 3, scope: !3012, file: !2986, line: 348, type: !1361)
!3026 = !DILocation(line: 0, scope: !3012)
!3027 = !DILocation(line: 351, column: 10, scope: !3012)
!3028 = !DILocation(line: 351, column: 3, scope: !3012)
!3029 = distinct !DISubprogram(name: "wcstoumax", scope: !2986, file: !2986, line: 362, type: !3030, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3032)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{!3003, !3015, !3019, !1361}
!3032 = !{!3033, !3034, !3035}
!3033 = !DILocalVariable(name: "nptr", arg: 1, scope: !3029, file: !2986, line: 362, type: !3015)
!3034 = !DILocalVariable(name: "endptr", arg: 2, scope: !3029, file: !2986, line: 362, type: !3019)
!3035 = !DILocalVariable(name: "base", arg: 3, scope: !3029, file: !2986, line: 362, type: !1361)
!3036 = !DILocation(line: 0, scope: !3029)
!3037 = !DILocation(line: 365, column: 10, scope: !3029)
!3038 = !DILocation(line: 365, column: 3, scope: !3029)
!3039 = distinct !DISubprogram(name: "stat", scope: !3040, file: !3040, line: 453, type: !3041, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3078)
!3040 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!1361, !1366, !3043}
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !3045, line: 46, size: 1152, elements: !3046)
!3045 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!3046 = !{!3047, !3049, !3051, !3053, !3055, !3057, !3059, !3060, !3061, !3062, !3064, !3066, !3074, !3075, !3076}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3044, file: !3045, line: 48, baseType: !3048, size: 64)
!3048 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2798, line: 145, baseType: !1488)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3044, file: !3045, line: 53, baseType: !3050, size: 64, offset: 64)
!3050 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2798, line: 148, baseType: !1488)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !3044, file: !3045, line: 61, baseType: !3052, size: 64, offset: 128)
!3052 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2798, line: 151, baseType: !1488)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !3044, file: !3045, line: 62, baseType: !3054, size: 32, offset: 192)
!3054 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2798, line: 150, baseType: !7)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !3044, file: !3045, line: 64, baseType: !3056, size: 32, offset: 224)
!3056 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2798, line: 146, baseType: !7)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !3044, file: !3045, line: 65, baseType: !3058, size: 32, offset: 256)
!3058 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2798, line: 147, baseType: !7)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !3044, file: !3045, line: 67, baseType: !1361, size: 32, offset: 288)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !3044, file: !3045, line: 69, baseType: !3048, size: 64, offset: 320)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3044, file: !3045, line: 74, baseType: !2797, size: 64, offset: 384)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !3044, file: !3045, line: 78, baseType: !3063, size: 64, offset: 448)
!3063 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2798, line: 174, baseType: !1490)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !3044, file: !3045, line: 80, baseType: !3065, size: 64, offset: 512)
!3065 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2798, line: 179, baseType: !1490)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !3044, file: !3045, line: 91, baseType: !3067, size: 128, offset: 576)
!3067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !3068, line: 10, size: 128, elements: !3069)
!3068 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!3069 = !{!3070, !3072}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3067, file: !3068, line: 12, baseType: !3071, size: 64)
!3071 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2798, line: 160, baseType: !1490)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3067, file: !3068, line: 16, baseType: !3073, size: 64, offset: 64)
!3073 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2798, line: 196, baseType: !1490)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !3044, file: !3045, line: 92, baseType: !3067, size: 128, offset: 704)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !3044, file: !3045, line: 93, baseType: !3067, size: 128, offset: 832)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3044, file: !3045, line: 106, baseType: !3077, size: 192, offset: 960)
!3077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3073, size: 192, elements: !1508)
!3078 = !{!3079, !3080}
!3079 = !DILocalVariable(name: "__path", arg: 1, scope: !3039, file: !3040, line: 453, type: !1366)
!3080 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !3039, file: !3040, line: 453, type: !3043)
!3081 = !DILocation(line: 0, scope: !3039)
!3082 = !DILocation(line: 455, column: 10, scope: !3039)
!3083 = !DILocation(line: 455, column: 3, scope: !3039)
!3084 = distinct !DISubprogram(name: "lstat", scope: !3040, file: !3040, line: 460, type: !3041, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3085)
!3085 = !{!3086, !3087}
!3086 = !DILocalVariable(name: "__path", arg: 1, scope: !3084, file: !3040, line: 460, type: !1366)
!3087 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !3084, file: !3040, line: 460, type: !3043)
!3088 = !DILocation(line: 0, scope: !3084)
!3089 = !DILocation(line: 462, column: 10, scope: !3084)
!3090 = !DILocation(line: 462, column: 3, scope: !3084)
!3091 = distinct !DISubprogram(name: "fstat", scope: !3040, file: !3040, line: 467, type: !3092, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3094)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!1361, !1361, !3043}
!3094 = !{!3095, !3096}
!3095 = !DILocalVariable(name: "__fd", arg: 1, scope: !3091, file: !3040, line: 467, type: !1361)
!3096 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !3091, file: !3040, line: 467, type: !3043)
!3097 = !DILocation(line: 0, scope: !3091)
!3098 = !DILocation(line: 469, column: 10, scope: !3091)
!3099 = !DILocation(line: 469, column: 3, scope: !3091)
!3100 = distinct !DISubprogram(name: "fstatat", scope: !3040, file: !3040, line: 474, type: !3101, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3103)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!1361, !1361, !1366, !3043, !1361}
!3103 = !{!3104, !3105, !3106, !3107}
!3104 = !DILocalVariable(name: "__fd", arg: 1, scope: !3100, file: !3040, line: 474, type: !1361)
!3105 = !DILocalVariable(name: "__filename", arg: 2, scope: !3100, file: !3040, line: 474, type: !1366)
!3106 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !3100, file: !3040, line: 474, type: !3043)
!3107 = !DILocalVariable(name: "__flag", arg: 4, scope: !3100, file: !3040, line: 474, type: !1361)
!3108 = !DILocation(line: 0, scope: !3100)
!3109 = !DILocation(line: 477, column: 10, scope: !3100)
!3110 = !DILocation(line: 477, column: 3, scope: !3100)
!3111 = distinct !DISubprogram(name: "mknod", scope: !3040, file: !3040, line: 483, type: !3112, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3114)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{!1361, !1366, !3054, !3048}
!3114 = !{!3115, !3116, !3117}
!3115 = !DILocalVariable(name: "__path", arg: 1, scope: !3111, file: !3040, line: 483, type: !1366)
!3116 = !DILocalVariable(name: "__mode", arg: 2, scope: !3111, file: !3040, line: 483, type: !3054)
!3117 = !DILocalVariable(name: "__dev", arg: 3, scope: !3111, file: !3040, line: 483, type: !3048)
!3118 = !DILocation(line: 0, scope: !3111)
!3119 = !DILocation(line: 485, column: 10, scope: !3111)
!3120 = !DILocation(line: 485, column: 3, scope: !3111)
!3121 = distinct !DISubprogram(name: "mknodat", scope: !3040, file: !3040, line: 491, type: !3122, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3124)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!1361, !1361, !1366, !3054, !3048}
!3124 = !{!3125, !3126, !3127, !3128}
!3125 = !DILocalVariable(name: "__fd", arg: 1, scope: !3121, file: !3040, line: 491, type: !1361)
!3126 = !DILocalVariable(name: "__path", arg: 2, scope: !3121, file: !3040, line: 491, type: !1366)
!3127 = !DILocalVariable(name: "__mode", arg: 3, scope: !3121, file: !3040, line: 491, type: !3054)
!3128 = !DILocalVariable(name: "__dev", arg: 4, scope: !3121, file: !3040, line: 491, type: !3048)
!3129 = !DILocation(line: 0, scope: !3121)
!3130 = !DILocation(line: 494, column: 10, scope: !3121)
!3131 = !DILocation(line: 494, column: 3, scope: !3121)
!3132 = distinct !DISubprogram(name: "stat64", scope: !3040, file: !3040, line: 502, type: !3133, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3155)
!3133 = !DISubroutineType(types: !3134)
!3134 = !{!1361, !1366, !3135}
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !3045, line: 119, size: 1152, elements: !3137)
!3137 = !{!3138, !3139, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3151, !3152, !3153, !3154}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3136, file: !3045, line: 121, baseType: !3048, size: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3136, file: !3045, line: 123, baseType: !3140, size: 64, offset: 64)
!3140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2798, line: 149, baseType: !1488)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !3136, file: !3045, line: 124, baseType: !3052, size: 64, offset: 128)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !3136, file: !3045, line: 125, baseType: !3054, size: 32, offset: 192)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !3136, file: !3045, line: 132, baseType: !3056, size: 32, offset: 224)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !3136, file: !3045, line: 133, baseType: !3058, size: 32, offset: 256)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !3136, file: !3045, line: 135, baseType: !1361, size: 32, offset: 288)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !3136, file: !3045, line: 136, baseType: !3048, size: 64, offset: 320)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3136, file: !3045, line: 137, baseType: !2797, size: 64, offset: 384)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !3136, file: !3045, line: 143, baseType: !3063, size: 64, offset: 448)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !3136, file: !3045, line: 144, baseType: !3150, size: 64, offset: 512)
!3150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2798, line: 180, baseType: !1490)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !3136, file: !3045, line: 152, baseType: !3067, size: 128, offset: 576)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !3136, file: !3045, line: 153, baseType: !3067, size: 128, offset: 704)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !3136, file: !3045, line: 154, baseType: !3067, size: 128, offset: 832)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3136, file: !3045, line: 164, baseType: !3077, size: 192, offset: 960)
!3155 = !{!3156, !3157}
!3156 = !DILocalVariable(name: "__path", arg: 1, scope: !3132, file: !3040, line: 502, type: !1366)
!3157 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !3132, file: !3040, line: 502, type: !3135)
!3158 = !DILocation(line: 0, scope: !3132)
!3159 = !DILocation(line: 504, column: 10, scope: !3132)
!3160 = !DILocation(line: 504, column: 3, scope: !3132)
!3161 = distinct !DISubprogram(name: "lstat64", scope: !3040, file: !3040, line: 509, type: !3133, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3162)
!3162 = !{!3163, !3164}
!3163 = !DILocalVariable(name: "__path", arg: 1, scope: !3161, file: !3040, line: 509, type: !1366)
!3164 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !3161, file: !3040, line: 509, type: !3135)
!3165 = !DILocation(line: 0, scope: !3161)
!3166 = !DILocation(line: 511, column: 10, scope: !3161)
!3167 = !DILocation(line: 511, column: 3, scope: !3161)
!3168 = distinct !DISubprogram(name: "fstat64", scope: !3040, file: !3040, line: 516, type: !3169, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3171)
!3169 = !DISubroutineType(types: !3170)
!3170 = !{!1361, !1361, !3135}
!3171 = !{!3172, !3173}
!3172 = !DILocalVariable(name: "__fd", arg: 1, scope: !3168, file: !3040, line: 516, type: !1361)
!3173 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !3168, file: !3040, line: 516, type: !3135)
!3174 = !DILocation(line: 0, scope: !3168)
!3175 = !DILocation(line: 518, column: 10, scope: !3168)
!3176 = !DILocation(line: 518, column: 3, scope: !3168)
!3177 = distinct !DISubprogram(name: "fstatat64", scope: !3040, file: !3040, line: 523, type: !3178, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3180)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!1361, !1361, !1366, !3135, !1361}
!3180 = !{!3181, !3182, !3183, !3184}
!3181 = !DILocalVariable(name: "__fd", arg: 1, scope: !3177, file: !3040, line: 523, type: !1361)
!3182 = !DILocalVariable(name: "__filename", arg: 2, scope: !3177, file: !3040, line: 523, type: !1366)
!3183 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !3177, file: !3040, line: 523, type: !3135)
!3184 = !DILocalVariable(name: "__flag", arg: 4, scope: !3177, file: !3040, line: 523, type: !1361)
!3185 = !DILocation(line: 0, scope: !3177)
!3186 = !DILocation(line: 526, column: 10, scope: !3177)
!3187 = !DILocation(line: 526, column: 3, scope: !3177)
!3188 = distinct !DISubprogram(name: "gate_cse_reciprocals", scope: !3, file: !3, line: 451, type: !2694, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2764)
!3189 = !DILocation(line: 453, column: 10, scope: !3188)
!3190 = !DILocation(line: 453, column: 19, scope: !3188)
!3191 = !DILocation(line: 453, column: 3, scope: !3188)
!3192 = distinct !DISubprogram(name: "execute_cse_reciprocals", scope: !3, file: !3, line: 459, type: !2698, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3193)
!3193 = !{!3194, !3195, !3196, !3206, !3207, !3208, !3212, !3216, !3217, !3220, !3221, !3224, !3225, !3226, !3234, !3235}
!3194 = !DILocalVariable(name: "bb", scope: !3192, file: !3, line: 461, type: !1372)
!3195 = !DILocalVariable(name: "arg", scope: !3192, file: !3, line: 462, type: !1435)
!3196 = !DILocalVariable(name: "gsi", scope: !3197, file: !3, line: 484, type: !3200)
!3197 = distinct !DILexicalBlock(scope: !3198, file: !3, line: 483, column: 5)
!3198 = distinct !DILexicalBlock(scope: !3199, file: !3, line: 482, column: 3)
!3199 = distinct !DILexicalBlock(scope: !3192, file: !3, line: 482, column: 3)
!3200 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !1281, line: 265, baseType: !3201)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1281, line: 254, size: 192, elements: !3202)
!3202 = !{!3203, !3204, !3205}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3201, file: !1281, line: 257, baseType: !1405, size: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3201, file: !1281, line: 263, baseType: !1400, size: 64, offset: 64)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !3201, file: !1281, line: 264, baseType: !1372, size: 64, offset: 128)
!3206 = !DILocalVariable(name: "phi", scope: !3197, file: !3, line: 485, type: !1410)
!3207 = !DILocalVariable(name: "def", scope: !3197, file: !3, line: 486, type: !1435)
!3208 = !DILocalVariable(name: "stmt", scope: !3209, file: !3, line: 499, type: !1410)
!3209 = distinct !DILexicalBlock(scope: !3210, file: !3, line: 498, column: 9)
!3210 = distinct !DILexicalBlock(scope: !3211, file: !3, line: 497, column: 7)
!3211 = distinct !DILexicalBlock(scope: !3197, file: !3, line: 497, column: 7)
!3212 = !DILocalVariable(name: "stmt", scope: !3213, file: !3, line: 514, type: !1410)
!3213 = distinct !DILexicalBlock(scope: !3214, file: !3, line: 513, column: 9)
!3214 = distinct !DILexicalBlock(scope: !3215, file: !3, line: 512, column: 7)
!3215 = distinct !DILexicalBlock(scope: !3197, file: !3, line: 512, column: 7)
!3216 = !DILocalVariable(name: "fndecl", scope: !3213, file: !3, line: 515, type: !1435)
!3217 = !DILocalVariable(name: "arg1", scope: !3218, file: !3, line: 520, type: !1435)
!3218 = distinct !DILexicalBlock(scope: !3219, file: !3, line: 519, column: 6)
!3219 = distinct !DILexicalBlock(scope: !3213, file: !3, line: 517, column: 8)
!3220 = !DILocalVariable(name: "stmt1", scope: !3218, file: !3, line: 521, type: !1410)
!3221 = !DILocalVariable(name: "code", scope: !3222, file: !3, line: 534, type: !560)
!3222 = distinct !DILexicalBlock(scope: !3223, file: !3, line: 533, column: 3)
!3223 = distinct !DILexicalBlock(scope: !3218, file: !3, line: 528, column: 12)
!3224 = !DILocalVariable(name: "md_code", scope: !3222, file: !3, line: 535, type: !1360)
!3225 = !DILocalVariable(name: "fail", scope: !3222, file: !3, line: 535, type: !1360)
!3226 = !DILocalVariable(name: "ui", scope: !3222, file: !3, line: 536, type: !3227)
!3227 = !DIDerivedType(tag: DW_TAG_typedef, name: "imm_use_iterator", file: !1810, line: 249, baseType: !3228)
!3228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "immediate_use_iterator_d", file: !1810, line: 238, size: 448, elements: !3229)
!3229 = !{!3230, !3231, !3232, !3233}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !3228, file: !1810, line: 241, baseType: !2673, size: 64)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "end_p", scope: !3228, file: !1810, line: 243, baseType: !2673, size: 64, offset: 64)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "iter_node", scope: !3228, file: !1810, line: 245, baseType: !2674, size: 256, offset: 128)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "next_imm_name", scope: !3228, file: !1810, line: 248, baseType: !2673, size: 64, offset: 384)
!3234 = !DILocalVariable(name: "use_p", scope: !3222, file: !3, line: 537, type: !2672)
!3235 = !DILocalVariable(name: "stmt2", scope: !3236, file: !3, line: 552, type: !1410)
!3236 = distinct !DILexicalBlock(scope: !3237, file: !3, line: 551, column: 7)
!3237 = distinct !DILexicalBlock(scope: !3238, file: !3, line: 550, column: 5)
!3238 = distinct !DILexicalBlock(scope: !3222, file: !3, line: 550, column: 5)
!3239 = !DILocation(line: 466, column: 5, scope: !3192)
!3240 = !DILocation(line: 466, column: 20, scope: !3192)
!3241 = !DILocation(line: 466, column: 24, scope: !3192)
!3242 = !DILocation(line: 464, column: 14, scope: !3192)
!3243 = !DILocation(line: 464, column: 12, scope: !3192)
!3244 = !DILocation(line: 468, column: 3, scope: !3192)
!3245 = !DILocation(line: 469, column: 3, scope: !3192)
!3246 = !DILocation(line: 476, column: 14, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3192, file: !3, line: 476, column: 3)
!3248 = !DILocation(line: 476, column: 8, scope: !3247)
!3249 = !DILocation(line: 0, scope: !3192)
!3250 = !DILocation(line: 0, scope: !3247)
!3251 = !DILocation(line: 476, column: 3, scope: !3247)
!3252 = !DILocation(line: 477, column: 9, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3254, file: !3, line: 477, column: 9)
!3254 = distinct !DILexicalBlock(scope: !3247, file: !3, line: 476, column: 3)
!3255 = !DILocation(line: 478, column: 2, scope: !3253)
!3256 = !DILocation(line: 478, column: 5, scope: !3253)
!3257 = !DILocation(line: 479, column: 2, scope: !3253)
!3258 = !DILocation(line: 479, column: 5, scope: !3253)
!3259 = !DILocation(line: 477, column: 9, scope: !3254)
!3260 = !DILocation(line: 480, column: 60, scope: !3253)
!3261 = !DILocation(line: 480, column: 40, scope: !3253)
!3262 = !DILocation(line: 480, column: 7, scope: !3253)
!3263 = !DILocation(line: 476, column: 54, scope: !3254)
!3264 = !DILocation(line: 476, column: 3, scope: !3254)
!3265 = distinct !{!3265, !3251, !3266}
!3266 = !DILocation(line: 480, column: 70, scope: !3247)
!3267 = !DILocation(line: 482, column: 3, scope: !3199)
!3268 = !DILocation(line: 0, scope: !3197)
!3269 = !DILocation(line: 0, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3197, file: !3, line: 488, column: 7)
!3271 = !DILocation(line: 0, scope: !3211)
!3272 = !DILocation(line: 0, scope: !3215)
!3273 = !DILocation(line: 0, scope: !3222)
!3274 = !DILocation(line: 482, column: 3, scope: !3198)
!3275 = !DILocation(line: 0, scope: !3199)
!3276 = !DILocation(line: 484, column: 7, scope: !3197)
!3277 = !DILocation(line: 488, column: 18, scope: !3270)
!3278 = !DILocation(line: 488, column: 12, scope: !3270)
!3279 = !DILocation(line: 488, column: 40, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3270, file: !3, line: 488, column: 7)
!3281 = !DILocation(line: 488, column: 39, scope: !3280)
!3282 = !DILocation(line: 488, column: 7, scope: !3270)
!3283 = !DILocation(line: 490, column: 10, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3280, file: !3, line: 489, column: 2)
!3285 = !DILocation(line: 491, column: 10, scope: !3284)
!3286 = !DILocation(line: 492, column: 8, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3284, file: !3, line: 492, column: 8)
!3288 = !DILocation(line: 493, column: 8, scope: !3287)
!3289 = !DILocation(line: 493, column: 11, scope: !3287)
!3290 = !DILocation(line: 492, column: 8, scope: !3284)
!3291 = !DILocation(line: 494, column: 6, scope: !3287)
!3292 = !DILocation(line: 488, column: 57, scope: !3280)
!3293 = !DILocation(line: 488, column: 7, scope: !3280)
!3294 = distinct !{!3294, !3282, !3295}
!3295 = !DILocation(line: 495, column: 2, scope: !3270)
!3296 = !DILocation(line: 497, column: 18, scope: !3211)
!3297 = !DILocation(line: 497, column: 12, scope: !3211)
!3298 = !DILocation(line: 497, column: 42, scope: !3210)
!3299 = !DILocation(line: 497, column: 41, scope: !3210)
!3300 = !DILocation(line: 497, column: 7, scope: !3211)
!3301 = !DILocation(line: 499, column: 18, scope: !3209)
!3302 = !DILocation(line: 0, scope: !3209)
!3303 = !DILocation(line: 501, column: 8, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3209, file: !3, line: 501, column: 8)
!3305 = !DILocation(line: 502, column: 8, scope: !3304)
!3306 = !DILocation(line: 502, column: 18, scope: !3304)
!3307 = !DILocation(line: 502, column: 62, scope: !3304)
!3308 = !DILocation(line: 503, column: 8, scope: !3304)
!3309 = !DILocation(line: 503, column: 11, scope: !3304)
!3310 = !DILocation(line: 504, column: 8, scope: !3304)
!3311 = !DILocation(line: 504, column: 11, scope: !3304)
!3312 = !DILocation(line: 504, column: 27, scope: !3304)
!3313 = !DILocation(line: 501, column: 8, scope: !3209)
!3314 = !DILocation(line: 505, column: 6, scope: !3304)
!3315 = !DILocation(line: 497, column: 59, scope: !3210)
!3316 = !DILocation(line: 497, column: 7, scope: !3210)
!3317 = distinct !{!3317, !3300, !3318}
!3318 = !DILocation(line: 506, column: 2, scope: !3211)
!3319 = !DILocation(line: 508, column: 11, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3197, file: !3, line: 508, column: 11)
!3321 = !DILocation(line: 508, column: 11, scope: !3197)
!3322 = !DILocation(line: 512, column: 18, scope: !3215)
!3323 = !DILocation(line: 512, column: 12, scope: !3215)
!3324 = !DILocation(line: 512, column: 42, scope: !3214)
!3325 = !DILocation(line: 512, column: 41, scope: !3214)
!3326 = !DILocation(line: 512, column: 7, scope: !3215)
!3327 = !DILocation(line: 514, column: 18, scope: !3213)
!3328 = !DILocation(line: 0, scope: !3213)
!3329 = !DILocation(line: 517, column: 8, scope: !3219)
!3330 = !DILocation(line: 518, column: 8, scope: !3219)
!3331 = !DILocation(line: 518, column: 11, scope: !3219)
!3332 = !DILocation(line: 518, column: 41, scope: !3219)
!3333 = !DILocation(line: 517, column: 8, scope: !3213)
!3334 = !DILocation(line: 520, column: 20, scope: !3218)
!3335 = !DILocation(line: 0, scope: !3218)
!3336 = !DILocation(line: 523, column: 12, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3218, file: !3, line: 523, column: 12)
!3338 = !DILocation(line: 523, column: 29, scope: !3337)
!3339 = !DILocation(line: 523, column: 12, scope: !3218)
!3340 = !DILocation(line: 526, column: 16, scope: !3218)
!3341 = !DILocation(line: 528, column: 12, scope: !3223)
!3342 = !DILocation(line: 529, column: 5, scope: !3223)
!3343 = !DILocation(line: 529, column: 8, scope: !3223)
!3344 = !DILocation(line: 530, column: 5, scope: !3223)
!3345 = !DILocation(line: 530, column: 18, scope: !3223)
!3346 = !DILocation(line: 530, column: 16, scope: !3223)
!3347 = !DILocation(line: 531, column: 5, scope: !3223)
!3348 = !DILocation(line: 531, column: 9, scope: !3223)
!3349 = !DILocation(line: 531, column: 38, scope: !3223)
!3350 = !DILocation(line: 532, column: 9, scope: !3223)
!3351 = !DILocation(line: 532, column: 41, scope: !3223)
!3352 = !DILocation(line: 528, column: 12, scope: !3218)
!3353 = !DILocation(line: 536, column: 5, scope: !3222)
!3354 = !DILocation(line: 539, column: 12, scope: !3222)
!3355 = !DILocation(line: 540, column: 44, scope: !3222)
!3356 = !DILocation(line: 540, column: 15, scope: !3222)
!3357 = !DILocation(line: 542, column: 22, scope: !3222)
!3358 = !DILocation(line: 542, column: 14, scope: !3222)
!3359 = !DILocation(line: 543, column: 10, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3222, file: !3, line: 543, column: 9)
!3361 = !DILocation(line: 543, column: 9, scope: !3222)
!3362 = !DILocation(line: 550, column: 5, scope: !3238)
!3363 = !DILocation(line: 549, column: 10, scope: !3222)
!3364 = !DILocation(line: 0, scope: !3238)
!3365 = !DILocation(line: 550, column: 5, scope: !3237)
!3366 = !DILocation(line: 552, column: 24, scope: !3236)
!3367 = !DILocation(line: 0, scope: !3236)
!3368 = !DILocation(line: 553, column: 13, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3236, file: !3, line: 553, column: 13)
!3370 = !DILocation(line: 553, column: 13, scope: !3236)
!3371 = !DILocation(line: 555, column: 14, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !3236, file: !3, line: 555, column: 13)
!3373 = !DILocation(line: 556, column: 6, scope: !3372)
!3374 = !DILocation(line: 556, column: 9, scope: !3372)
!3375 = !DILocation(line: 556, column: 40, scope: !3372)
!3376 = !DILocation(line: 557, column: 6, scope: !3372)
!3377 = !DILocation(line: 557, column: 9, scope: !3372)
!3378 = !DILocation(line: 557, column: 36, scope: !3372)
!3379 = !DILocation(line: 558, column: 6, scope: !3372)
!3380 = !DILocation(line: 558, column: 9, scope: !3372)
!3381 = !DILocation(line: 558, column: 36, scope: !3372)
!3382 = !DILocation(line: 555, column: 13, scope: !3236)
!3383 = distinct !{!3383, !3362, !3384}
!3384 = !DILocation(line: 563, column: 7, scope: !3238)
!3385 = !DILocation(line: 564, column: 9, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3222, file: !3, line: 564, column: 9)
!3387 = !DILocation(line: 564, column: 9, scope: !3222)
!3388 = !DILocation(line: 567, column: 5, scope: !3222)
!3389 = !DILocation(line: 568, column: 5, scope: !3222)
!3390 = !DILocation(line: 569, column: 5, scope: !3222)
!3391 = !DILocation(line: 571, column: 5, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3222, file: !3, line: 571, column: 5)
!3393 = !DILocation(line: 0, scope: !3392)
!3394 = !DILocation(line: 571, column: 5, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3392, file: !3, line: 571, column: 5)
!3396 = !DILocation(line: 573, column: 9, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3395, file: !3, line: 572, column: 7)
!3398 = !DILocation(line: 574, column: 9, scope: !3397)
!3399 = !DILocation(line: 575, column: 9, scope: !3397)
!3400 = distinct !{!3400, !3391, !3401}
!3401 = !DILocation(line: 576, column: 7, scope: !3392)
!3402 = !DILocation(line: 577, column: 3, scope: !3223)
!3403 = !DILocation(line: 578, column: 6, scope: !3219)
!3404 = !DILocation(line: 579, column: 2, scope: !3214)
!3405 = !DILocation(line: 512, column: 59, scope: !3214)
!3406 = !DILocation(line: 512, column: 7, scope: !3214)
!3407 = distinct !{!3407, !3326, !3408}
!3408 = !DILocation(line: 579, column: 2, scope: !3215)
!3409 = !DILocation(line: 580, column: 5, scope: !3198)
!3410 = !DILocation(line: 0, scope: !3198)
!3411 = distinct !{!3411, !3267, !3412}
!3412 = !DILocation(line: 580, column: 5, scope: !3199)
!3413 = !DILocation(line: 582, column: 3, scope: !3192)
!3414 = !DILocation(line: 583, column: 3, scope: !3192)
!3415 = !DILocation(line: 584, column: 20, scope: !3192)
!3416 = !DILocation(line: 584, column: 3, scope: !3192)
!3417 = !DILocation(line: 585, column: 3, scope: !3192)
!3418 = distinct !DISubprogram(name: "gate_cse_sincos", scope: !3, file: !3, line: 794, type: !2694, scopeLine: 795, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2764)
!3419 = !DILocation(line: 797, column: 11, scope: !3418)
!3420 = !DILocation(line: 798, column: 4, scope: !3418)
!3421 = !DILocation(line: 799, column: 3, scope: !3418)
!3422 = !DILocation(line: 799, column: 6, scope: !3418)
!3423 = !DILocation(line: 797, column: 3, scope: !3418)
!3424 = distinct !DISubprogram(name: "execute_cse_sincos", scope: !3, file: !3, line: 751, type: !2698, scopeLine: 752, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3425)
!3425 = !{!3426, !3427, !3431, !3435, !3436}
!3426 = !DILocalVariable(name: "bb", scope: !3424, file: !3, line: 753, type: !1372)
!3427 = !DILocalVariable(name: "gsi", scope: !3428, file: !3, line: 759, type: !3200)
!3428 = distinct !DILexicalBlock(scope: !3429, file: !3, line: 758, column: 5)
!3429 = distinct !DILexicalBlock(scope: !3430, file: !3, line: 757, column: 3)
!3430 = distinct !DILexicalBlock(scope: !3424, file: !3, line: 757, column: 3)
!3431 = !DILocalVariable(name: "stmt", scope: !3432, file: !3, line: 763, type: !1410)
!3432 = distinct !DILexicalBlock(scope: !3433, file: !3, line: 762, column: 9)
!3433 = distinct !DILexicalBlock(scope: !3434, file: !3, line: 761, column: 7)
!3434 = distinct !DILexicalBlock(scope: !3428, file: !3, line: 761, column: 7)
!3435 = !DILocalVariable(name: "fndecl", scope: !3432, file: !3, line: 764, type: !1435)
!3436 = !DILocalVariable(name: "arg", scope: !3437, file: !3, line: 771, type: !1435)
!3437 = distinct !DILexicalBlock(scope: !3438, file: !3, line: 770, column: 6)
!3438 = distinct !DILexicalBlock(scope: !3432, file: !3, line: 766, column: 8)
!3439 = !DILocation(line: 755, column: 3, scope: !3424)
!3440 = !DILocation(line: 757, column: 3, scope: !3430)
!3441 = !DILocation(line: 0, scope: !3428)
!3442 = !DILocation(line: 0, scope: !3434)
!3443 = !DILocation(line: 757, column: 3, scope: !3429)
!3444 = !DILocation(line: 0, scope: !3430)
!3445 = !DILocation(line: 0, scope: !3424)
!3446 = !DILocation(line: 759, column: 7, scope: !3428)
!3447 = !DILocation(line: 761, column: 18, scope: !3434)
!3448 = !DILocation(line: 761, column: 12, scope: !3434)
!3449 = !DILocation(line: 761, column: 42, scope: !3433)
!3450 = !DILocation(line: 761, column: 41, scope: !3433)
!3451 = !DILocation(line: 761, column: 7, scope: !3434)
!3452 = !DILocation(line: 763, column: 18, scope: !3432)
!3453 = !DILocation(line: 0, scope: !3432)
!3454 = !DILocation(line: 766, column: 8, scope: !3438)
!3455 = !DILocation(line: 767, column: 8, scope: !3438)
!3456 = !DILocation(line: 767, column: 11, scope: !3438)
!3457 = !DILocation(line: 768, column: 8, scope: !3438)
!3458 = !DILocation(line: 768, column: 21, scope: !3438)
!3459 = !DILocation(line: 768, column: 19, scope: !3438)
!3460 = !DILocation(line: 769, column: 8, scope: !3438)
!3461 = !DILocation(line: 769, column: 11, scope: !3438)
!3462 = !DILocation(line: 769, column: 40, scope: !3438)
!3463 = !DILocation(line: 766, column: 8, scope: !3432)
!3464 = !DILocation(line: 773, column: 16, scope: !3437)
!3465 = !DILocation(line: 773, column: 8, scope: !3437)
!3466 = !DILocation(line: 778, column: 11, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3437, file: !3, line: 774, column: 3)
!3468 = !DILocation(line: 0, scope: !3437)
!3469 = !DILocation(line: 779, column: 9, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3467, file: !3, line: 779, column: 9)
!3471 = !DILocation(line: 779, column: 25, scope: !3470)
!3472 = !DILocation(line: 779, column: 9, scope: !3467)
!3473 = !DILocation(line: 780, column: 7, scope: !3470)
!3474 = !DILocation(line: 761, column: 59, scope: !3433)
!3475 = !DILocation(line: 761, column: 7, scope: !3433)
!3476 = distinct !{!3476, !3451, !3477}
!3477 = !DILocation(line: 786, column: 2, scope: !3434)
!3478 = !DILocation(line: 787, column: 5, scope: !3429)
!3479 = !DILocation(line: 0, scope: !3429)
!3480 = distinct !{!3480, !3440, !3481}
!3481 = !DILocation(line: 787, column: 5, scope: !3430)
!3482 = !DILocation(line: 789, column: 3, scope: !3424)
!3483 = !DILocation(line: 790, column: 3, scope: !3424)
!3484 = distinct !DISubprogram(name: "gate_optimize_bswap", scope: !3, file: !3, line: 1240, type: !2694, scopeLine: 1241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2764)
!3485 = !DILocation(line: 1242, column: 10, scope: !3484)
!3486 = !DILocation(line: 1242, column: 39, scope: !3484)
!3487 = !DILocation(line: 1242, column: 3, scope: !3484)
!3488 = distinct !DISubprogram(name: "execute_optimize_bswap", scope: !3, file: !3, line: 1101, type: !2698, scopeLine: 1102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3489)
!3489 = !{!3490, !3491, !3492, !3493, !3494, !3495, !3496, !3499, !3502, !3506, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3519}
!3490 = !DILocalVariable(name: "bb", scope: !3488, file: !3, line: 1103, type: !1372)
!3491 = !DILocalVariable(name: "bswap32_p", scope: !3488, file: !3, line: 1104, type: !1360)
!3492 = !DILocalVariable(name: "bswap64_p", scope: !3488, file: !3, line: 1104, type: !1360)
!3493 = !DILocalVariable(name: "changed", scope: !3488, file: !3, line: 1105, type: !1360)
!3494 = !DILocalVariable(name: "bswap32_type", scope: !3488, file: !3, line: 1106, type: !1435)
!3495 = !DILocalVariable(name: "bswap64_type", scope: !3488, file: !3, line: 1106, type: !1435)
!3496 = !DILocalVariable(name: "fndecl", scope: !3497, file: !3, line: 1129, type: !1435)
!3497 = distinct !DILexicalBlock(scope: !3498, file: !3, line: 1128, column: 5)
!3498 = distinct !DILexicalBlock(scope: !3488, file: !3, line: 1127, column: 7)
!3499 = !DILocalVariable(name: "fndecl", scope: !3500, file: !3, line: 1135, type: !1435)
!3500 = distinct !DILexicalBlock(scope: !3501, file: !3, line: 1134, column: 5)
!3501 = distinct !DILexicalBlock(scope: !3488, file: !3, line: 1133, column: 7)
!3502 = !DILocalVariable(name: "gsi", scope: !3503, file: !3, line: 1141, type: !3200)
!3503 = distinct !DILexicalBlock(scope: !3504, file: !3, line: 1140, column: 5)
!3504 = distinct !DILexicalBlock(scope: !3505, file: !3, line: 1139, column: 3)
!3505 = distinct !DILexicalBlock(scope: !3488, file: !3, line: 1139, column: 3)
!3506 = !DILocalVariable(name: "stmt", scope: !3507, file: !3, line: 1145, type: !1410)
!3507 = distinct !DILexicalBlock(scope: !3508, file: !3, line: 1144, column: 9)
!3508 = distinct !DILexicalBlock(scope: !3509, file: !3, line: 1143, column: 7)
!3509 = distinct !DILexicalBlock(scope: !3503, file: !3, line: 1143, column: 7)
!3510 = !DILocalVariable(name: "bswap_src", scope: !3507, file: !3, line: 1146, type: !1435)
!3511 = !DILocalVariable(name: "bswap_type", scope: !3507, file: !3, line: 1146, type: !1435)
!3512 = !DILocalVariable(name: "bswap_tmp", scope: !3507, file: !3, line: 1147, type: !1435)
!3513 = !DILocalVariable(name: "fndecl", scope: !3507, file: !3, line: 1148, type: !1435)
!3514 = !DILocalVariable(name: "type_size", scope: !3507, file: !3, line: 1149, type: !1361)
!3515 = !DILocalVariable(name: "call", scope: !3507, file: !3, line: 1150, type: !1410)
!3516 = !DILocalVariable(name: "convert_stmt", scope: !3517, file: !3, line: 1193, type: !1410)
!3517 = distinct !DILexicalBlock(scope: !3518, file: !3, line: 1192, column: 6)
!3518 = distinct !DILexicalBlock(scope: !3507, file: !3, line: 1191, column: 8)
!3519 = !DILocalVariable(name: "convert_stmt", scope: !3520, file: !3, line: 1211, type: !1410)
!3520 = distinct !DILexicalBlock(scope: !3521, file: !3, line: 1210, column: 6)
!3521 = distinct !DILexicalBlock(scope: !3507, file: !3, line: 1209, column: 8)
!3522 = !DILocation(line: 0, scope: !3488)
!3523 = !DILocation(line: 1114, column: 16, scope: !3488)
!3524 = !DILocation(line: 1115, column: 9, scope: !3488)
!3525 = !DILocation(line: 1117, column: 16, scope: !3488)
!3526 = !DILocation(line: 1118, column: 9, scope: !3488)
!3527 = !DILocation(line: 1118, column: 50, scope: !3488)
!3528 = !DILocation(line: 1118, column: 60, scope: !3488)
!3529 = !DILocation(line: 1120, column: 6, scope: !3488)
!3530 = !DILocation(line: 1120, column: 20, scope: !3488)
!3531 = !DILocation(line: 1122, column: 18, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3488, file: !3, line: 1122, column: 7)
!3533 = !DILocation(line: 1127, column: 7, scope: !3488)
!3534 = !DILocation(line: 1130, column: 22, scope: !3497)
!3535 = !DILocation(line: 1131, column: 5, scope: !3497)
!3536 = !DILocation(line: 1133, column: 7, scope: !3488)
!3537 = !DILocation(line: 1136, column: 22, scope: !3500)
!3538 = !DILocation(line: 1137, column: 5, scope: !3500)
!3539 = !DILocation(line: 1139, column: 3, scope: !3505)
!3540 = !DILocation(line: 0, scope: !3503)
!3541 = !DILocation(line: 0, scope: !3509)
!3542 = !DILocation(line: 1139, column: 3, scope: !3504)
!3543 = !DILocation(line: 1105, column: 8, scope: !3488)
!3544 = !DILocation(line: 0, scope: !3505)
!3545 = !DILocation(line: 0, scope: !3507)
!3546 = !DILocation(line: 1141, column: 7, scope: !3503)
!3547 = !DILocation(line: 1143, column: 18, scope: !3509)
!3548 = !DILocation(line: 1143, column: 12, scope: !3509)
!3549 = !DILocation(line: 1143, column: 42, scope: !3508)
!3550 = !DILocation(line: 1143, column: 41, scope: !3508)
!3551 = !DILocation(line: 1143, column: 7, scope: !3509)
!3552 = !DILocation(line: 1145, column: 18, scope: !3507)
!3553 = !DILocation(line: 1152, column: 9, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3507, file: !3, line: 1152, column: 8)
!3555 = !DILocation(line: 1153, column: 8, scope: !3554)
!3556 = !DILocation(line: 1153, column: 11, scope: !3554)
!3557 = !DILocation(line: 1153, column: 41, scope: !3554)
!3558 = !DILocation(line: 1152, column: 8, scope: !3507)
!3559 = !DILocation(line: 1156, column: 16, scope: !3507)
!3560 = !DILocation(line: 1158, column: 4, scope: !3507)
!3561 = !DILocation(line: 1163, column: 14, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3563, file: !3, line: 1162, column: 3)
!3563 = distinct !DILexicalBlock(scope: !3564, file: !3, line: 1161, column: 12)
!3564 = distinct !DILexicalBlock(scope: !3507, file: !3, line: 1159, column: 6)
!3565 = !DILocation(line: 1161, column: 12, scope: !3564)
!3566 = !DILocation(line: 1166, column: 8, scope: !3564)
!3567 = !DILocation(line: 1170, column: 14, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3569, file: !3, line: 1169, column: 3)
!3569 = distinct !DILexicalBlock(scope: !3564, file: !3, line: 1168, column: 12)
!3570 = !DILocation(line: 1168, column: 12, scope: !3564)
!3571 = !DILocation(line: 1173, column: 8, scope: !3564)
!3572 = !DILocation(line: 0, scope: !3564)
!3573 = !DILocation(line: 1178, column: 9, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !3507, file: !3, line: 1178, column: 8)
!3575 = !DILocation(line: 1178, column: 8, scope: !3507)
!3576 = !DILocation(line: 1181, column: 16, scope: !3507)
!3577 = !DILocation(line: 1183, column: 9, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3507, file: !3, line: 1183, column: 8)
!3579 = !DILocation(line: 1183, column: 8, scope: !3507)
!3580 = !DILocation(line: 1191, column: 36, scope: !3518)
!3581 = !DILocation(line: 1191, column: 9, scope: !3518)
!3582 = !DILocation(line: 1191, column: 8, scope: !3507)
!3583 = !DILocation(line: 1195, column: 20, scope: !3517)
!3584 = !DILocation(line: 1196, column: 8, scope: !3517)
!3585 = !DILocation(line: 1197, column: 20, scope: !3517)
!3586 = !DILocation(line: 1199, column: 23, scope: !3517)
!3587 = !DILocation(line: 0, scope: !3517)
!3588 = !DILocation(line: 1201, column: 8, scope: !3517)
!3589 = !DILocation(line: 1202, column: 6, scope: !3517)
!3590 = !DILocation(line: 1204, column: 11, scope: !3507)
!3591 = !DILocation(line: 1206, column: 16, scope: !3507)
!3592 = !DILocation(line: 1209, column: 36, scope: !3521)
!3593 = !DILocation(line: 1209, column: 9, scope: !3521)
!3594 = !DILocation(line: 1209, column: 8, scope: !3507)
!3595 = !DILocation(line: 1213, column: 20, scope: !3520)
!3596 = !DILocation(line: 1214, column: 8, scope: !3520)
!3597 = !DILocation(line: 1215, column: 20, scope: !3520)
!3598 = !DILocation(line: 1216, column: 23, scope: !3520)
!3599 = !DILocation(line: 0, scope: !3520)
!3600 = !DILocation(line: 1218, column: 8, scope: !3520)
!3601 = !DILocation(line: 1219, column: 6, scope: !3520)
!3602 = !DILocation(line: 1221, column: 4, scope: !3507)
!3603 = !DILocation(line: 1223, column: 8, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3507, file: !3, line: 1223, column: 8)
!3605 = !DILocation(line: 1223, column: 8, scope: !3507)
!3606 = !DILocation(line: 1225, column: 8, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3604, file: !3, line: 1224, column: 6)
!3608 = !DILocation(line: 1227, column: 27, scope: !3607)
!3609 = !DILocation(line: 1227, column: 8, scope: !3607)
!3610 = !DILocation(line: 1228, column: 6, scope: !3607)
!3611 = !DILocation(line: 1230, column: 4, scope: !3507)
!3612 = !DILocation(line: 1231, column: 4, scope: !3507)
!3613 = !DILocation(line: 1232, column: 2, scope: !3508)
!3614 = !DILocation(line: 1143, column: 59, scope: !3508)
!3615 = !DILocation(line: 1143, column: 7, scope: !3508)
!3616 = distinct !{!3616, !3551, !3617}
!3617 = !DILocation(line: 1232, column: 2, scope: !3509)
!3618 = !DILocation(line: 1233, column: 5, scope: !3504)
!3619 = !DILocation(line: 0, scope: !3504)
!3620 = distinct !{!3620, !3539, !3621}
!3621 = !DILocation(line: 1233, column: 5, scope: !3505)
!3622 = !DILocation(line: 1235, column: 11, scope: !3488)
!3623 = !DILocation(line: 1235, column: 3, scope: !3488)
!3624 = !DILocation(line: 1237, column: 1, scope: !3488)
!3625 = distinct !DISubprogram(name: "execute_cse_reciprocals_1", scope: !3, file: !3, line: 404, type: !3626, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3629)
!3626 = !DISubroutineType(types: !3627)
!3627 = !{null, !3628, !1435}
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3629 = !{!3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3641}
!3630 = !DILocalVariable(name: "def_gsi", arg: 1, scope: !3625, file: !3, line: 404, type: !3628)
!3631 = !DILocalVariable(name: "def", arg: 2, scope: !3625, file: !3, line: 404, type: !1435)
!3632 = !DILocalVariable(name: "use_p", scope: !3625, file: !3, line: 406, type: !2672)
!3633 = !DILocalVariable(name: "use_iter", scope: !3625, file: !3, line: 407, type: !3227)
!3634 = !DILocalVariable(name: "occ", scope: !3625, file: !3, line: 408, type: !1368)
!3635 = !DILocalVariable(name: "count", scope: !3625, file: !3, line: 409, type: !1361)
!3636 = !DILocalVariable(name: "threshold", scope: !3625, file: !3, line: 409, type: !1361)
!3637 = !DILocalVariable(name: "use_stmt", scope: !3638, file: !3, line: 415, type: !1410)
!3638 = distinct !DILexicalBlock(scope: !3639, file: !3, line: 414, column: 5)
!3639 = distinct !DILexicalBlock(scope: !3640, file: !3, line: 413, column: 3)
!3640 = distinct !DILexicalBlock(scope: !3625, file: !3, line: 413, column: 3)
!3641 = !DILocalVariable(name: "use_stmt", scope: !3642, file: !3, line: 427, type: !1410)
!3642 = distinct !DILexicalBlock(scope: !3643, file: !3, line: 426, column: 5)
!3643 = distinct !DILexicalBlock(scope: !3625, file: !3, line: 425, column: 7)
!3644 = !DILocation(line: 0, scope: !3625)
!3645 = !DILocation(line: 407, column: 3, scope: !3625)
!3646 = !DILocation(line: 411, column: 3, scope: !3625)
!3647 = !DILocation(line: 413, column: 3, scope: !3640)
!3648 = !DILocation(line: 0, scope: !3640)
!3649 = !DILocation(line: 413, column: 3, scope: !3639)
!3650 = !DILocation(line: 415, column: 25, scope: !3638)
!3651 = !DILocation(line: 0, scope: !3638)
!3652 = !DILocation(line: 416, column: 11, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !3638, file: !3, line: 416, column: 11)
!3654 = !DILocation(line: 416, column: 11, scope: !3638)
!3655 = !DILocation(line: 418, column: 26, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3653, file: !3, line: 417, column: 2)
!3657 = !DILocation(line: 418, column: 4, scope: !3656)
!3658 = !DILocation(line: 419, column: 9, scope: !3656)
!3659 = !DILocation(line: 420, column: 2, scope: !3656)
!3660 = distinct !{!3660, !3647, !3661}
!3661 = !DILocation(line: 421, column: 5, scope: !3640)
!3662 = !DILocation(line: 424, column: 23, scope: !3625)
!3663 = !DILocation(line: 424, column: 52, scope: !3625)
!3664 = !DILocation(line: 424, column: 15, scope: !3625)
!3665 = !DILocation(line: 425, column: 13, scope: !3643)
!3666 = !DILocation(line: 425, column: 7, scope: !3625)
!3667 = !DILocation(line: 428, column: 12, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3642, file: !3, line: 428, column: 7)
!3669 = !DILocation(line: 0, scope: !3668)
!3670 = !DILocation(line: 428, column: 7, scope: !3668)
!3671 = !DILocation(line: 430, column: 4, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3673, file: !3, line: 429, column: 2)
!3673 = distinct !DILexicalBlock(scope: !3668, file: !3, line: 428, column: 7)
!3674 = !DILocation(line: 431, column: 4, scope: !3672)
!3675 = !DILocation(line: 428, column: 44, scope: !3673)
!3676 = !DILocation(line: 428, column: 7, scope: !3673)
!3677 = distinct !{!3677, !3670, !3678}
!3678 = !DILocation(line: 432, column: 2, scope: !3668)
!3679 = !DILocation(line: 434, column: 7, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3642, file: !3, line: 434, column: 7)
!3681 = !DILocation(line: 0, scope: !3642)
!3682 = !DILocation(line: 0, scope: !3680)
!3683 = !DILocation(line: 434, column: 7, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3680, file: !3, line: 434, column: 7)
!3685 = !DILocation(line: 436, column: 8, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3687, file: !3, line: 436, column: 8)
!3687 = distinct !DILexicalBlock(scope: !3684, file: !3, line: 435, column: 2)
!3688 = !DILocation(line: 436, column: 8, scope: !3687)
!3689 = !DILocation(line: 438, column: 8, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3691, file: !3, line: 438, column: 8)
!3691 = distinct !DILexicalBlock(scope: !3686, file: !3, line: 437, column: 6)
!3692 = !DILocation(line: 0, scope: !3690)
!3693 = !DILocation(line: 438, column: 8, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3690, file: !3, line: 438, column: 8)
!3695 = !DILocation(line: 439, column: 3, scope: !3694)
!3696 = distinct !{!3696, !3689, !3697}
!3697 = !DILocation(line: 439, column: 28, scope: !3690)
!3698 = distinct !{!3698, !3679, !3699}
!3699 = !DILocation(line: 441, column: 2, scope: !3680)
!3700 = !DILocation(line: 444, column: 14, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3625, file: !3, line: 444, column: 3)
!3702 = !DILocation(line: 444, column: 8, scope: !3701)
!3703 = !DILocation(line: 0, scope: !3701)
!3704 = !DILocation(line: 444, column: 3, scope: !3701)
!3705 = !DILocation(line: 445, column: 11, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3701, file: !3, line: 444, column: 3)
!3707 = !DILocation(line: 444, column: 3, scope: !3706)
!3708 = distinct !{!3708, !3704, !3709}
!3709 = !DILocation(line: 445, column: 23, scope: !3701)
!3710 = !DILocation(line: 447, column: 12, scope: !3625)
!3711 = !DILocation(line: 448, column: 1, scope: !3625)
!3712 = distinct !DISubprogram(name: "gsi_end_p", scope: !1281, file: !1281, line: 4467, type: !3713, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3715)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!1360, !3200}
!3715 = !{!3716}
!3716 = !DILocalVariable(name: "i", arg: 1, scope: !3712, file: !1281, line: 4467, type: !3200)
!3717 = !DILocation(line: 4467, column: 33, scope: !3712)
!3718 = !DILocation(line: 4469, column: 12, scope: !3712)
!3719 = !DILocation(line: 4469, column: 16, scope: !3712)
!3720 = !DILocation(line: 4469, column: 10, scope: !3712)
!3721 = !DILocation(line: 4469, column: 3, scope: !3712)
!3722 = distinct !DISubprogram(name: "gsi_stmt", scope: !1281, file: !1281, line: 4501, type: !3723, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3725)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!1410, !3200}
!3725 = !{!3726}
!3726 = !DILocalVariable(name: "i", arg: 1, scope: !3722, file: !1281, line: 4501, type: !3200)
!3727 = !DILocation(line: 4501, column: 32, scope: !3722)
!3728 = !DILocation(line: 4503, column: 12, scope: !3722)
!3729 = !DILocation(line: 4503, column: 17, scope: !3722)
!3730 = !DILocation(line: 4503, column: 3, scope: !3722)
!3731 = distinct !DISubprogram(name: "get_def_from_ptr", scope: !3732, file: !3732, line: 434, type: !3733, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3736)
!3732 = !DIFile(filename: "./tree-flow-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!3733 = !DISubroutineType(types: !3734)
!3734 = !{!1435, !3735}
!3735 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_operand_p", file: !1320, line: 27, baseType: !2018)
!3736 = !{!3737}
!3737 = !DILocalVariable(name: "def", arg: 1, scope: !3731, file: !3732, line: 434, type: !3735)
!3738 = !DILocation(line: 0, scope: !3731)
!3739 = !DILocation(line: 436, column: 10, scope: !3731)
!3740 = !DILocation(line: 436, column: 3, scope: !3731)
!3741 = distinct !DISubprogram(name: "gimple_phi_result_ptr", scope: !1281, file: !1281, line: 3080, type: !3742, scopeLine: 3081, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3744)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!2018, !1410}
!3744 = !{!3745}
!3745 = !DILocalVariable(name: "gs", arg: 1, scope: !3741, file: !1281, line: 3080, type: !1410)
!3746 = !DILocation(line: 0, scope: !3741)
!3747 = !DILocation(line: 3083, column: 26, scope: !3741)
!3748 = !DILocation(line: 3083, column: 3, scope: !3741)
!3749 = distinct !DISubprogram(name: "gsi_next", scope: !1281, file: !1281, line: 4485, type: !3750, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3752)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{null, !3628}
!3752 = !{!3753}
!3753 = !DILocalVariable(name: "i", arg: 1, scope: !3749, file: !1281, line: 4485, type: !3628)
!3754 = !DILocation(line: 0, scope: !3749)
!3755 = !DILocation(line: 4487, column: 15, scope: !3749)
!3756 = !DILocation(line: 4487, column: 20, scope: !3749)
!3757 = !DILocation(line: 4487, column: 10, scope: !3749)
!3758 = !DILocation(line: 4488, column: 1, scope: !3749)
!3759 = distinct !DISubprogram(name: "gsi_after_labels", scope: !1281, file: !1281, line: 4510, type: !3760, scopeLine: 4511, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3762)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!3200, !1372}
!3762 = !{!3763, !3764}
!3763 = !DILocalVariable(name: "bb", arg: 1, scope: !3759, file: !1281, line: 4510, type: !1372)
!3764 = !DILocalVariable(name: "gsi", scope: !3759, file: !1281, line: 4512, type: !3200)
!3765 = !DILocation(line: 0, scope: !3759)
!3766 = !DILocation(line: 4512, column: 24, scope: !3759)
!3767 = !DILocation(line: 4512, column: 30, scope: !3759)
!3768 = !DILocation(line: 4514, column: 3, scope: !3759)
!3769 = !DILocation(line: 4514, column: 11, scope: !3759)
!3770 = !DILocation(line: 4514, column: 27, scope: !3759)
!3771 = !DILocation(line: 4514, column: 43, scope: !3759)
!3772 = !DILocation(line: 4514, column: 30, scope: !3759)
!3773 = !DILocation(line: 4514, column: 59, scope: !3759)
!3774 = !DILocation(line: 4515, column: 5, scope: !3759)
!3775 = distinct !{!3775, !3768, !3776}
!3776 = !DILocation(line: 4515, column: 19, scope: !3759)
!3777 = !DILocation(line: 4517, column: 3, scope: !3759)
!3778 = distinct !DISubprogram(name: "gimple_has_lhs", scope: !1281, file: !1281, line: 2210, type: !3779, scopeLine: 2211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3781)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{!1360, !1410}
!3781 = !{!3782}
!3782 = !DILocalVariable(name: "stmt", arg: 1, scope: !3778, file: !1281, line: 2210, type: !1410)
!3783 = !DILocation(line: 0, scope: !3778)
!3784 = !DILocation(line: 2212, column: 11, scope: !3778)
!3785 = !DILocation(line: 2213, column: 4, scope: !3778)
!3786 = !DILocation(line: 2213, column: 8, scope: !3778)
!3787 = !DILocation(line: 2214, column: 8, scope: !3778)
!3788 = !DILocation(line: 2214, column: 11, scope: !3778)
!3789 = !DILocation(line: 2214, column: 34, scope: !3778)
!3790 = !DILocation(line: 2212, column: 3, scope: !3778)
!3791 = distinct !DISubprogram(name: "single_ssa_tree_operand", scope: !3732, file: !3732, line: 803, type: !3792, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3794)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!1435, !1410, !1361}
!3794 = !{!3795, !3796, !3797, !3798}
!3795 = !DILocalVariable(name: "stmt", arg: 1, scope: !3791, file: !3732, line: 803, type: !1410)
!3796 = !DILocalVariable(name: "flags", arg: 2, scope: !3791, file: !3732, line: 803, type: !1361)
!3797 = !DILocalVariable(name: "var", scope: !3791, file: !3732, line: 805, type: !1435)
!3798 = !DILocalVariable(name: "iter", scope: !3791, file: !3732, line: 806, type: !3799)
!3799 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_op_iter", file: !1320, line: 140, baseType: !3800)
!3800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_iterator_d", file: !1320, line: 131, size: 320, elements: !3801)
!3801 = !{!3802, !3803, !3804, !3806, !3808, !3809, !3810}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !3800, file: !1320, line: 133, baseType: !1360, size: 8)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !3800, file: !1320, line: 134, baseType: !1319, size: 32, offset: 32)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "defs", scope: !3800, file: !1320, line: 135, baseType: !3805, size: 64, offset: 64)
!3805 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_optype_p", file: !1320, line: 42, baseType: !2013)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "uses", scope: !3800, file: !1320, line: 136, baseType: !3807, size: 64, offset: 128)
!3807 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_optype_p", file: !1320, line: 50, baseType: !2020)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "phi_i", scope: !3800, file: !1320, line: 137, baseType: !1361, size: 32, offset: 192)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "num_phi", scope: !3800, file: !1320, line: 138, baseType: !1361, size: 32, offset: 224)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "phi_stmt", scope: !3800, file: !1320, line: 139, baseType: !1410, size: 64, offset: 256)
!3811 = !DILocation(line: 0, scope: !3791)
!3812 = !DILocation(line: 806, column: 3, scope: !3791)
!3813 = !DILocation(line: 808, column: 9, scope: !3791)
!3814 = !DILocation(line: 809, column: 7, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3791, file: !3732, line: 809, column: 7)
!3816 = !DILocation(line: 809, column: 7, scope: !3791)
!3817 = !DILocation(line: 811, column: 3, scope: !3791)
!3818 = !DILocation(line: 812, column: 7, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3791, file: !3732, line: 812, column: 7)
!3820 = !DILocation(line: 815, column: 1, scope: !3791)
!3821 = distinct !DISubprogram(name: "is_gimple_assign", scope: !1281, file: !1281, line: 1677, type: !3822, scopeLine: 1678, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3825)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{!1360, !3824}
!3824 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !1373, line: 60, baseType: !2675)
!3825 = !{!3826}
!3826 = !DILocalVariable(name: "gs", arg: 1, scope: !3821, file: !1281, line: 1677, type: !3824)
!3827 = !DILocation(line: 0, scope: !3821)
!3828 = !DILocation(line: 1679, column: 10, scope: !3821)
!3829 = !DILocation(line: 1679, column: 27, scope: !3821)
!3830 = !DILocation(line: 1679, column: 3, scope: !3821)
!3831 = distinct !DISubprogram(name: "gimple_assign_rhs_code", scope: !1281, file: !1281, line: 1815, type: !3832, scopeLine: 1816, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3834)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{!366, !3824}
!3834 = !{!3835, !3836}
!3835 = !DILocalVariable(name: "gs", arg: 1, scope: !3831, file: !1281, line: 1815, type: !3824)
!3836 = !DILocalVariable(name: "code", scope: !3831, file: !1281, line: 1817, type: !366)
!3837 = !DILocation(line: 0, scope: !3831)
!3838 = !DILocation(line: 1820, column: 10, scope: !3831)
!3839 = !DILocation(line: 1821, column: 7, scope: !3840)
!3840 = distinct !DILexicalBlock(scope: !3831, file: !1281, line: 1821, column: 7)
!3841 = !DILocation(line: 1821, column: 35, scope: !3840)
!3842 = !DILocation(line: 1821, column: 7, scope: !3831)
!3843 = !DILocation(line: 1822, column: 12, scope: !3840)
!3844 = !DILocation(line: 1822, column: 5, scope: !3840)
!3845 = !DILocation(line: 1824, column: 3, scope: !3831)
!3846 = distinct !DISubprogram(name: "gimple_assign_rhs2", scope: !1281, file: !1281, line: 1759, type: !3847, scopeLine: 1760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3849)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!1435, !3824}
!3849 = !{!3850}
!3850 = !DILocalVariable(name: "gs", arg: 1, scope: !3846, file: !1281, line: 1759, type: !3824)
!3851 = !DILocation(line: 0, scope: !3846)
!3852 = !DILocation(line: 1763, column: 7, scope: !3853)
!3853 = distinct !DILexicalBlock(scope: !3846, file: !1281, line: 1763, column: 7)
!3854 = !DILocation(line: 1763, column: 27, scope: !3853)
!3855 = !DILocation(line: 1763, column: 7, scope: !3846)
!3856 = !DILocation(line: 1764, column: 12, scope: !3853)
!3857 = !DILocation(line: 1764, column: 5, scope: !3853)
!3858 = !DILocation(line: 0, scope: !3853)
!3859 = !DILocation(line: 1767, column: 1, scope: !3846)
!3860 = distinct !DISubprogram(name: "is_gimple_call", scope: !1281, file: !1281, line: 1870, type: !3822, scopeLine: 1871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3861)
!3861 = !{!3862}
!3862 = !DILocalVariable(name: "gs", arg: 1, scope: !3860, file: !1281, line: 1870, type: !3824)
!3863 = !DILocation(line: 0, scope: !3860)
!3864 = !DILocation(line: 1872, column: 10, scope: !3860)
!3865 = !DILocation(line: 1872, column: 27, scope: !3860)
!3866 = !DILocation(line: 1872, column: 3, scope: !3860)
!3867 = distinct !DISubprogram(name: "gimple_call_lhs", scope: !1281, file: !1281, line: 1878, type: !3847, scopeLine: 1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3868)
!3868 = !{!3869}
!3869 = !DILocalVariable(name: "gs", arg: 1, scope: !3867, file: !1281, line: 1878, type: !3824)
!3870 = !DILocation(line: 0, scope: !3867)
!3871 = !DILocation(line: 1881, column: 10, scope: !3867)
!3872 = !DILocation(line: 1881, column: 3, scope: !3867)
!3873 = distinct !DISubprogram(name: "gimple_call_fndecl", scope: !1281, file: !1281, line: 1954, type: !3847, scopeLine: 1955, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3874)
!3874 = !{!3875, !3876}
!3875 = !DILocalVariable(name: "gs", arg: 1, scope: !3873, file: !1281, line: 1954, type: !3824)
!3876 = !DILocalVariable(name: "addr", scope: !3873, file: !1281, line: 1956, type: !1435)
!3877 = !DILocation(line: 0, scope: !3873)
!3878 = !DILocation(line: 1956, column: 15, scope: !3873)
!3879 = !DILocation(line: 1957, column: 7, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3873, file: !1281, line: 1957, column: 7)
!3881 = !DILocation(line: 1957, column: 24, scope: !3880)
!3882 = !DILocation(line: 1957, column: 7, scope: !3873)
!3883 = !DILocation(line: 1958, column: 12, scope: !3880)
!3884 = !DILocation(line: 1958, column: 5, scope: !3880)
!3885 = !DILocation(line: 1960, column: 1, scope: !3873)
!3886 = distinct !DISubprogram(name: "first_readonly_imm_use", scope: !3732, file: !3732, line: 292, type: !3887, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3890)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!2672, !3889, !1435}
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3890 = !{!3891, !3892}
!3891 = !DILocalVariable(name: "imm", arg: 1, scope: !3886, file: !3732, line: 292, type: !3889)
!3892 = !DILocalVariable(name: "var", arg: 2, scope: !3886, file: !3732, line: 292, type: !1435)
!3893 = !DILocation(line: 0, scope: !3886)
!3894 = !DILocation(line: 294, column: 18, scope: !3886)
!3895 = !DILocation(line: 294, column: 8, scope: !3886)
!3896 = !DILocation(line: 294, column: 14, scope: !3886)
!3897 = !DILocation(line: 295, column: 30, scope: !3886)
!3898 = !DILocation(line: 295, column: 16, scope: !3886)
!3899 = !DILocation(line: 299, column: 7, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3886, file: !3732, line: 299, column: 7)
!3901 = !DILocation(line: 299, column: 7, scope: !3886)
!3902 = !DILocation(line: 301, column: 15, scope: !3886)
!3903 = !DILocation(line: 301, column: 3, scope: !3886)
!3904 = !DILocation(line: 302, column: 1, scope: !3886)
!3905 = distinct !DISubprogram(name: "end_readonly_imm_use_p", scope: !3732, file: !3732, line: 285, type: !3906, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3910)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{!1360, !3908}
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3227)
!3910 = !{!3911}
!3911 = !DILocalVariable(name: "imm", arg: 1, scope: !3905, file: !3732, line: 285, type: !3908)
!3912 = !DILocation(line: 0, scope: !3905)
!3913 = !DILocation(line: 287, column: 16, scope: !3905)
!3914 = !DILocation(line: 287, column: 32, scope: !3905)
!3915 = !DILocation(line: 287, column: 24, scope: !3905)
!3916 = !DILocation(line: 287, column: 10, scope: !3905)
!3917 = !DILocation(line: 287, column: 3, scope: !3905)
!3918 = distinct !DISubprogram(name: "is_gimple_debug", scope: !1281, file: !1281, line: 3249, type: !3822, scopeLine: 3250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3919)
!3919 = !{!3920}
!3920 = !DILocalVariable(name: "gs", arg: 1, scope: !3918, file: !1281, line: 3249, type: !3824)
!3921 = !DILocation(line: 0, scope: !3918)
!3922 = !DILocation(line: 3251, column: 10, scope: !3918)
!3923 = !DILocation(line: 3251, column: 27, scope: !3918)
!3924 = !DILocation(line: 3251, column: 3, scope: !3918)
!3925 = distinct !DISubprogram(name: "gimple_assign_rhs1", scope: !1281, file: !1281, line: 1727, type: !3847, scopeLine: 1728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3926)
!3926 = !{!3927}
!3927 = !DILocalVariable(name: "gs", arg: 1, scope: !3925, file: !1281, line: 1727, type: !3824)
!3928 = !DILocation(line: 0, scope: !3925)
!3929 = !DILocation(line: 1730, column: 10, scope: !3925)
!3930 = !DILocation(line: 1730, column: 3, scope: !3925)
!3931 = distinct !DISubprogram(name: "next_readonly_imm_use", scope: !3732, file: !3732, line: 306, type: !3932, scopeLine: 307, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3934)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{!2672, !3889}
!3934 = !{!3935, !3936}
!3935 = !DILocalVariable(name: "imm", arg: 1, scope: !3931, file: !3732, line: 306, type: !3889)
!3936 = !DILocalVariable(name: "old", scope: !3931, file: !3732, line: 308, type: !2672)
!3937 = !DILocation(line: 0, scope: !3931)
!3938 = !DILocation(line: 308, column: 28, scope: !3931)
!3939 = !DILocation(line: 319, column: 23, scope: !3931)
!3940 = !DILocation(line: 319, column: 16, scope: !3931)
!3941 = !DILocation(line: 320, column: 7, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3931, file: !3732, line: 320, column: 7)
!3943 = !DILocation(line: 320, column: 7, scope: !3931)
!3944 = !DILocation(line: 322, column: 15, scope: !3931)
!3945 = !DILocation(line: 322, column: 3, scope: !3931)
!3946 = !DILocation(line: 323, column: 1, scope: !3931)
!3947 = distinct !DISubprogram(name: "gimple_call_set_fndecl", scope: !1281, file: !1281, line: 1942, type: !3948, scopeLine: 1943, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3950)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{null, !1410, !1435}
!3950 = !{!3951, !3952}
!3951 = !DILocalVariable(name: "gs", arg: 1, scope: !3947, file: !1281, line: 1942, type: !1410)
!3952 = !DILocalVariable(name: "decl", arg: 2, scope: !3947, file: !1281, line: 1942, type: !1435)
!3953 = !DILocation(line: 0, scope: !3947)
!3954 = !DILocation(line: 1945, column: 51, scope: !3947)
!3955 = !DILocation(line: 1945, column: 25, scope: !3947)
!3956 = !DILocation(line: 1945, column: 3, scope: !3947)
!3957 = !DILocation(line: 1946, column: 1, scope: !3947)
!3958 = distinct !DISubprogram(name: "update_stmt", scope: !1281, file: !1281, line: 1456, type: !3959, scopeLine: 1457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3961)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{null, !1410}
!3961 = !{!3962}
!3962 = !DILocalVariable(name: "s", arg: 1, scope: !3958, file: !1281, line: 1456, type: !1410)
!3963 = !DILocation(line: 0, scope: !3958)
!3964 = !DILocation(line: 1458, column: 7, scope: !3965)
!3965 = distinct !DILexicalBlock(scope: !3958, file: !1281, line: 1458, column: 7)
!3966 = !DILocation(line: 1458, column: 7, scope: !3958)
!3967 = !DILocation(line: 1460, column: 7, scope: !3968)
!3968 = distinct !DILexicalBlock(scope: !3965, file: !1281, line: 1459, column: 5)
!3969 = !DILocation(line: 1461, column: 7, scope: !3968)
!3970 = !DILocation(line: 1462, column: 5, scope: !3968)
!3971 = !DILocation(line: 1463, column: 1, scope: !3958)
!3972 = distinct !DISubprogram(name: "first_imm_use_stmt", scope: !3732, file: !3732, line: 1058, type: !3973, scopeLine: 1059, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3975)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!1410, !3889, !1435}
!3975 = !{!3976, !3977}
!3976 = !DILocalVariable(name: "imm", arg: 1, scope: !3972, file: !3732, line: 1058, type: !3889)
!3977 = !DILocalVariable(name: "var", arg: 2, scope: !3972, file: !3732, line: 1058, type: !1435)
!3978 = !DILocation(line: 0, scope: !3972)
!3979 = !DILocation(line: 1060, column: 18, scope: !3972)
!3980 = !DILocation(line: 1060, column: 8, scope: !3972)
!3981 = !DILocation(line: 1060, column: 14, scope: !3972)
!3982 = !DILocation(line: 1061, column: 30, scope: !3972)
!3983 = !DILocation(line: 1061, column: 16, scope: !3972)
!3984 = !DILocation(line: 1062, column: 8, scope: !3972)
!3985 = !DILocation(line: 1062, column: 22, scope: !3972)
!3986 = !DILocation(line: 1067, column: 18, scope: !3972)
!3987 = !DILocation(line: 1067, column: 23, scope: !3972)
!3988 = !DILocation(line: 1068, column: 18, scope: !3972)
!3989 = !DILocation(line: 1068, column: 23, scope: !3972)
!3990 = !DILocation(line: 1069, column: 22, scope: !3972)
!3991 = !DILocation(line: 1069, column: 27, scope: !3972)
!3992 = !DILocation(line: 1070, column: 18, scope: !3972)
!3993 = !DILocation(line: 1070, column: 22, scope: !3972)
!3994 = !DILocation(line: 1072, column: 7, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3972, file: !3732, line: 1072, column: 7)
!3996 = !DILocation(line: 1072, column: 7, scope: !3972)
!3997 = !DILocation(line: 1075, column: 30, scope: !3972)
!3998 = !DILocation(line: 1075, column: 3, scope: !3972)
!3999 = !DILocation(line: 1077, column: 10, scope: !3972)
!4000 = !DILocation(line: 1077, column: 3, scope: !3972)
!4001 = !DILocation(line: 1078, column: 1, scope: !3972)
!4002 = distinct !DISubprogram(name: "end_imm_use_stmt_p", scope: !3732, file: !3732, line: 969, type: !3906, scopeLine: 970, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4003)
!4003 = !{!4004}
!4004 = !DILocalVariable(name: "imm", arg: 1, scope: !4002, file: !3732, line: 969, type: !3908)
!4005 = !DILocation(line: 0, scope: !4002)
!4006 = !DILocation(line: 971, column: 16, scope: !4002)
!4007 = !DILocation(line: 971, column: 32, scope: !4002)
!4008 = !DILocation(line: 971, column: 24, scope: !4002)
!4009 = !DILocation(line: 971, column: 10, scope: !4002)
!4010 = !DILocation(line: 971, column: 3, scope: !4002)
!4011 = distinct !DISubprogram(name: "gimple_assign_set_rhs_code", scope: !1281, file: !1281, line: 1832, type: !4012, scopeLine: 1833, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4014)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{null, !1410, !366}
!4014 = !{!4015, !4016}
!4015 = !DILocalVariable(name: "s", arg: 1, scope: !4011, file: !1281, line: 1832, type: !1410)
!4016 = !DILocalVariable(name: "code", arg: 2, scope: !4011, file: !1281, line: 1832, type: !366)
!4017 = !DILocation(line: 0, scope: !4011)
!4018 = !DILocation(line: 1835, column: 13, scope: !4011)
!4019 = !DILocation(line: 1835, column: 21, scope: !4011)
!4020 = !DILocation(line: 1836, column: 1, scope: !4011)
!4021 = distinct !DISubprogram(name: "next_imm_use_stmt", scope: !3732, file: !3732, line: 1083, type: !4022, scopeLine: 1084, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4024)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{!1410, !3889}
!4024 = !{!4025}
!4025 = !DILocalVariable(name: "imm", arg: 1, scope: !4021, file: !3732, line: 1083, type: !3889)
!4026 = !DILocation(line: 0, scope: !4021)
!4027 = !DILocation(line: 1085, column: 33, scope: !4021)
!4028 = !DILocation(line: 1085, column: 16, scope: !4021)
!4029 = !DILocation(line: 1086, column: 7, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !4021, file: !3732, line: 1086, column: 7)
!4031 = !DILocation(line: 1086, column: 7, scope: !4021)
!4032 = !DILocation(line: 1088, column: 26, scope: !4033)
!4033 = distinct !DILexicalBlock(scope: !4034, file: !3732, line: 1088, column: 11)
!4034 = distinct !DILexicalBlock(scope: !4030, file: !3732, line: 1087, column: 5)
!4035 = !DILocation(line: 1088, column: 31, scope: !4033)
!4036 = !DILocation(line: 1088, column: 11, scope: !4034)
!4037 = !DILocation(line: 1089, column: 24, scope: !4033)
!4038 = !DILocation(line: 1089, column: 2, scope: !4033)
!4039 = !DILocation(line: 1093, column: 30, scope: !4021)
!4040 = !DILocation(line: 1093, column: 3, scope: !4021)
!4041 = !DILocation(line: 1094, column: 10, scope: !4021)
!4042 = !DILocation(line: 1094, column: 3, scope: !4021)
!4043 = !DILocation(line: 1095, column: 1, scope: !4021)
!4044 = distinct !DISubprogram(name: "is_division_by", scope: !3, file: !3, line: 278, type: !4045, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4047)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{!1360, !1410, !1435}
!4047 = !{!4048, !4049}
!4048 = !DILocalVariable(name: "use_stmt", arg: 1, scope: !4044, file: !3, line: 278, type: !1410)
!4049 = !DILocalVariable(name: "def", arg: 2, scope: !4044, file: !3, line: 278, type: !1435)
!4050 = !DILocation(line: 0, scope: !4044)
!4051 = !DILocation(line: 280, column: 10, scope: !4044)
!4052 = !DILocation(line: 281, column: 3, scope: !4044)
!4053 = !DILocation(line: 281, column: 6, scope: !4044)
!4054 = !DILocation(line: 281, column: 40, scope: !4044)
!4055 = !DILocation(line: 282, column: 3, scope: !4044)
!4056 = !DILocation(line: 282, column: 6, scope: !4044)
!4057 = !DILocation(line: 282, column: 36, scope: !4044)
!4058 = !DILocation(line: 286, column: 3, scope: !4044)
!4059 = !DILocation(line: 286, column: 6, scope: !4044)
!4060 = !DILocation(line: 286, column: 36, scope: !4044)
!4061 = !DILocation(line: 280, column: 3, scope: !4044)
!4062 = distinct !DISubprogram(name: "register_division_in", scope: !3, file: !3, line: 234, type: !4063, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4065)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{null, !1372}
!4065 = !{!4066, !4067}
!4066 = !DILocalVariable(name: "bb", arg: 1, scope: !4062, file: !3, line: 234, type: !1372)
!4067 = !DILocalVariable(name: "occ", scope: !4062, file: !3, line: 236, type: !1368)
!4068 = !DILocation(line: 0, scope: !4062)
!4069 = !DILocation(line: 238, column: 35, scope: !4062)
!4070 = !DILocation(line: 239, column: 8, scope: !4071)
!4071 = distinct !DILexicalBlock(scope: !4062, file: !3, line: 239, column: 7)
!4072 = !DILocation(line: 239, column: 7, scope: !4062)
!4073 = !DILocation(line: 241, column: 13, scope: !4074)
!4074 = distinct !DILexicalBlock(scope: !4071, file: !3, line: 240, column: 5)
!4075 = !DILocation(line: 242, column: 23, scope: !4074)
!4076 = !DILocation(line: 242, column: 7, scope: !4074)
!4077 = !DILocation(line: 243, column: 5, scope: !4074)
!4078 = !DILocation(line: 245, column: 8, scope: !4062)
!4079 = !DILocation(line: 245, column: 24, scope: !4062)
!4080 = !DILocation(line: 246, column: 8, scope: !4062)
!4081 = !DILocation(line: 246, column: 21, scope: !4062)
!4082 = !DILocation(line: 247, column: 1, scope: !4062)
!4083 = distinct !DISubprogram(name: "gimple_bb", scope: !1281, file: !1281, line: 1112, type: !4084, scopeLine: 1113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4086)
!4084 = !DISubroutineType(types: !4085)
!4085 = !{!1374, !3824}
!4086 = !{!4087}
!4087 = !DILocalVariable(name: "g", arg: 1, scope: !4083, file: !1281, line: 1112, type: !3824)
!4088 = !DILocation(line: 0, scope: !4083)
!4089 = !DILocation(line: 1114, column: 20, scope: !4083)
!4090 = !DILocation(line: 1114, column: 3, scope: !4083)
!4091 = distinct !DISubprogram(name: "compute_merit", scope: !3, file: !3, line: 254, type: !4092, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4094)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{null, !1368}
!4094 = !{!4095, !4096, !4097, !4098}
!4095 = !DILocalVariable(name: "occ", arg: 1, scope: !4091, file: !3, line: 254, type: !1368)
!4096 = !DILocalVariable(name: "occ_child", scope: !4091, file: !3, line: 256, type: !1368)
!4097 = !DILocalVariable(name: "dom", scope: !4091, file: !3, line: 257, type: !1372)
!4098 = !DILocalVariable(name: "bb", scope: !4099, file: !3, line: 261, type: !1372)
!4099 = distinct !DILexicalBlock(scope: !4100, file: !3, line: 260, column: 5)
!4100 = distinct !DILexicalBlock(scope: !4101, file: !3, line: 259, column: 3)
!4101 = distinct !DILexicalBlock(scope: !4091, file: !3, line: 259, column: 3)
!4102 = !DILocation(line: 0, scope: !4091)
!4103 = !DILocation(line: 257, column: 26, scope: !4091)
!4104 = !DILocation(line: 259, column: 25, scope: !4101)
!4105 = !DILocation(line: 0, scope: !4106)
!4106 = distinct !DILexicalBlock(scope: !4099, file: !3, line: 270, column: 11)
!4107 = !DILocation(line: 259, column: 8, scope: !4101)
!4108 = !DILocation(line: 0, scope: !4101)
!4109 = !DILocation(line: 259, column: 3, scope: !4101)
!4110 = !DILocation(line: 262, column: 22, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !4099, file: !3, line: 262, column: 11)
!4112 = !DILocation(line: 262, column: 11, scope: !4111)
!4113 = !DILocation(line: 262, column: 11, scope: !4099)
!4114 = !DILocation(line: 263, column: 9, scope: !4111)
!4115 = !DILocation(line: 265, column: 11, scope: !4116)
!4116 = distinct !DILexicalBlock(scope: !4099, file: !3, line: 265, column: 11)
!4117 = !DILocation(line: 265, column: 11, scope: !4099)
!4118 = !DILocation(line: 266, column: 7, scope: !4116)
!4119 = !DILocation(line: 0, scope: !4099)
!4120 = !DILocation(line: 266, column: 2, scope: !4116)
!4121 = !DILocation(line: 0, scope: !4116)
!4122 = !DILocation(line: 270, column: 63, scope: !4106)
!4123 = !DILocation(line: 270, column: 11, scope: !4106)
!4124 = !DILocation(line: 270, column: 11, scope: !4099)
!4125 = !DILocation(line: 271, column: 42, scope: !4106)
!4126 = !DILocation(line: 271, column: 28, scope: !4106)
!4127 = !DILocation(line: 271, column: 9, scope: !4106)
!4128 = !DILocation(line: 259, column: 69, scope: !4100)
!4129 = !DILocation(line: 259, column: 3, scope: !4100)
!4130 = distinct !{!4130, !4109, !4131}
!4131 = !DILocation(line: 272, column: 5, scope: !4101)
!4132 = !DILocation(line: 273, column: 1, scope: !4091)
!4133 = distinct !DISubprogram(name: "insert_reciprocals", scope: !3, file: !3, line: 299, type: !4134, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4136)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{null, !3628, !1368, !1435, !1435, !1361}
!4136 = !{!4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145}
!4137 = !DILocalVariable(name: "def_gsi", arg: 1, scope: !4133, file: !3, line: 299, type: !3628)
!4138 = !DILocalVariable(name: "occ", arg: 2, scope: !4133, file: !3, line: 299, type: !1368)
!4139 = !DILocalVariable(name: "def", arg: 3, scope: !4133, file: !3, line: 300, type: !1435)
!4140 = !DILocalVariable(name: "recip_def", arg: 4, scope: !4133, file: !3, line: 300, type: !1435)
!4141 = !DILocalVariable(name: "threshold", arg: 5, scope: !4133, file: !3, line: 300, type: !1361)
!4142 = !DILocalVariable(name: "type", scope: !4133, file: !3, line: 302, type: !1435)
!4143 = !DILocalVariable(name: "new_stmt", scope: !4133, file: !3, line: 303, type: !1410)
!4144 = !DILocalVariable(name: "gsi", scope: !4133, file: !3, line: 304, type: !3200)
!4145 = !DILocalVariable(name: "occ_child", scope: !4133, file: !3, line: 305, type: !1368)
!4146 = !DILocation(line: 0, scope: !4133)
!4147 = !DILocation(line: 304, column: 3, scope: !4133)
!4148 = !DILocation(line: 307, column: 8, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !4133, file: !3, line: 307, column: 7)
!4150 = !DILocation(line: 308, column: 7, scope: !4149)
!4151 = !DILocation(line: 308, column: 16, scope: !4149)
!4152 = !DILocation(line: 308, column: 11, scope: !4149)
!4153 = !DILocation(line: 308, column: 36, scope: !4149)
!4154 = !DILocation(line: 308, column: 32, scope: !4149)
!4155 = !DILocation(line: 309, column: 15, scope: !4149)
!4156 = !DILocation(line: 309, column: 29, scope: !4149)
!4157 = !DILocation(line: 307, column: 7, scope: !4133)
!4158 = !DILocation(line: 312, column: 14, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !4149, file: !3, line: 310, column: 5)
!4160 = !DILocation(line: 313, column: 19, scope: !4159)
!4161 = !DILocation(line: 314, column: 18, scope: !4159)
!4162 = !DILocation(line: 317, column: 16, scope: !4163)
!4163 = distinct !DILexicalBlock(scope: !4159, file: !3, line: 317, column: 11)
!4164 = !DILocation(line: 317, column: 11, scope: !4163)
!4165 = !DILocation(line: 317, column: 11, scope: !4159)
!4166 = !DILocation(line: 320, column: 17, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !4163, file: !3, line: 318, column: 9)
!4168 = !DILocation(line: 320, column: 40, scope: !4167)
!4169 = !DILocation(line: 321, column: 11, scope: !4167)
!4170 = !DILocation(line: 321, column: 19, scope: !4167)
!4171 = !DILocation(line: 321, column: 35, scope: !4167)
!4172 = !DILocation(line: 321, column: 55, scope: !4167)
!4173 = !DILocation(line: 321, column: 39, scope: !4167)
!4174 = !DILocation(line: 321, column: 38, scope: !4167)
!4175 = !DILocation(line: 322, column: 6, scope: !4167)
!4176 = distinct !{!4176, !4169, !4177}
!4177 = !DILocation(line: 322, column: 20, scope: !4167)
!4178 = !DILocation(line: 324, column: 11, scope: !4167)
!4179 = !DILocation(line: 325, column: 9, scope: !4167)
!4180 = !DILocation(line: 326, column: 16, scope: !4181)
!4181 = distinct !DILexicalBlock(scope: !4163, file: !3, line: 326, column: 16)
!4182 = !DILocation(line: 326, column: 24, scope: !4181)
!4183 = !DILocation(line: 0, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4181, file: !3, line: 335, column: 9)
!4185 = !DILocation(line: 337, column: 40, scope: !4184)
!4186 = !DILocation(line: 326, column: 32, scope: !4181)
!4187 = !DILocation(line: 326, column: 47, scope: !4181)
!4188 = !DILocation(line: 326, column: 35, scope: !4181)
!4189 = !DILocation(line: 326, column: 16, scope: !4163)
!4190 = !DILocation(line: 332, column: 11, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4181, file: !3, line: 327, column: 9)
!4192 = !DILocation(line: 333, column: 9, scope: !4191)
!4193 = !DILocation(line: 337, column: 17, scope: !4184)
!4194 = !DILocation(line: 338, column: 11, scope: !4184)
!4195 = !DILocation(line: 341, column: 12, scope: !4159)
!4196 = !DILocation(line: 341, column: 27, scope: !4159)
!4197 = !DILocation(line: 342, column: 5, scope: !4159)
!4198 = !DILocation(line: 344, column: 8, scope: !4133)
!4199 = !DILocation(line: 344, column: 18, scope: !4133)
!4200 = !DILocation(line: 345, column: 25, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !4133, file: !3, line: 345, column: 3)
!4202 = !DILocation(line: 345, column: 8, scope: !4201)
!4203 = !DILocation(line: 0, scope: !4201)
!4204 = !DILocation(line: 345, column: 3, scope: !4201)
!4205 = !DILocation(line: 346, column: 5, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !4201, file: !3, line: 345, column: 3)
!4207 = !DILocation(line: 345, column: 69, scope: !4206)
!4208 = !DILocation(line: 345, column: 3, scope: !4206)
!4209 = distinct !{!4209, !4204, !4210}
!4210 = !DILocation(line: 346, column: 70, scope: !4201)
!4211 = !DILocation(line: 347, column: 1, scope: !4133)
!4212 = distinct !DISubprogram(name: "first_imm_use_on_stmt", scope: !3732, file: !3732, line: 1101, type: !3932, scopeLine: 1102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4213)
!4213 = !{!4214}
!4214 = !DILocalVariable(name: "imm", arg: 1, scope: !4212, file: !3732, line: 1101, type: !3889)
!4215 = !DILocation(line: 0, scope: !4212)
!4216 = !DILocation(line: 1103, column: 29, scope: !4212)
!4217 = !DILocation(line: 1103, column: 38, scope: !4212)
!4218 = !DILocation(line: 1103, column: 8, scope: !4212)
!4219 = !DILocation(line: 1103, column: 22, scope: !4212)
!4220 = !DILocation(line: 1104, column: 3, scope: !4212)
!4221 = distinct !DISubprogram(name: "end_imm_use_on_stmt_p", scope: !3732, file: !3732, line: 1110, type: !3906, scopeLine: 1111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4222)
!4222 = !{!4223}
!4223 = !DILocalVariable(name: "imm", arg: 1, scope: !4221, file: !3732, line: 1110, type: !3908)
!4224 = !DILocation(line: 0, scope: !4221)
!4225 = !DILocation(line: 1112, column: 16, scope: !4221)
!4226 = !DILocation(line: 1112, column: 34, scope: !4221)
!4227 = !DILocation(line: 1112, column: 24, scope: !4221)
!4228 = !DILocation(line: 1112, column: 10, scope: !4221)
!4229 = !DILocation(line: 1112, column: 3, scope: !4221)
!4230 = distinct !DISubprogram(name: "replace_reciprocal", scope: !3, file: !3, line: 354, type: !4231, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4233)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{null, !2672}
!4233 = !{!4234, !4235, !4236, !4237}
!4234 = !DILocalVariable(name: "use_p", arg: 1, scope: !4230, file: !3, line: 354, type: !2672)
!4235 = !DILocalVariable(name: "use_stmt", scope: !4230, file: !3, line: 356, type: !1410)
!4236 = !DILocalVariable(name: "bb", scope: !4230, file: !3, line: 357, type: !1372)
!4237 = !DILocalVariable(name: "occ", scope: !4230, file: !3, line: 358, type: !1368)
!4238 = !DILocation(line: 0, scope: !4230)
!4239 = !DILocation(line: 356, column: 21, scope: !4230)
!4240 = !DILocation(line: 357, column: 20, scope: !4230)
!4241 = !DILocation(line: 358, column: 54, scope: !4230)
!4242 = !DILocation(line: 360, column: 7, scope: !4243)
!4243 = distinct !DILexicalBlock(scope: !4230, file: !3, line: 360, column: 7)
!4244 = !DILocation(line: 361, column: 7, scope: !4243)
!4245 = !DILocation(line: 361, column: 15, scope: !4243)
!4246 = !DILocation(line: 361, column: 10, scope: !4243)
!4247 = !DILocation(line: 361, column: 25, scope: !4243)
!4248 = !DILocation(line: 361, column: 45, scope: !4243)
!4249 = !DILocation(line: 361, column: 37, scope: !4243)
!4250 = !DILocation(line: 360, column: 7, scope: !4230)
!4251 = !DILocation(line: 363, column: 7, scope: !4252)
!4252 = distinct !DILexicalBlock(scope: !4243, file: !3, line: 362, column: 5)
!4253 = !DILocation(line: 364, column: 7, scope: !4252)
!4254 = !DILocation(line: 365, column: 7, scope: !4252)
!4255 = !DILocation(line: 366, column: 7, scope: !4252)
!4256 = !DILocation(line: 367, column: 5, scope: !4252)
!4257 = !DILocation(line: 368, column: 1, scope: !4230)
!4258 = distinct !DISubprogram(name: "next_imm_use_on_stmt", scope: !3732, file: !3732, line: 1118, type: !3932, scopeLine: 1119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4259)
!4259 = !{!4260}
!4260 = !DILocalVariable(name: "imm", arg: 1, scope: !4258, file: !3732, line: 1118, type: !3889)
!4261 = !DILocation(line: 0, scope: !4258)
!4262 = !DILocation(line: 1120, column: 23, scope: !4258)
!4263 = !DILocation(line: 1120, column: 16, scope: !4258)
!4264 = !DILocation(line: 1121, column: 7, scope: !4265)
!4265 = distinct !DILexicalBlock(scope: !4258, file: !3732, line: 1121, column: 7)
!4266 = !DILocation(line: 1121, column: 7, scope: !4258)
!4267 = !DILocation(line: 1125, column: 33, scope: !4268)
!4268 = distinct !DILexicalBlock(scope: !4265, file: !3732, line: 1124, column: 5)
!4269 = !DILocation(line: 1125, column: 42, scope: !4268)
!4270 = !DILocation(line: 1125, column: 26, scope: !4268)
!4271 = !DILocation(line: 1126, column: 7, scope: !4268)
!4272 = !DILocation(line: 0, scope: !4265)
!4273 = !DILocation(line: 1128, column: 1, scope: !4258)
!4274 = distinct !DISubprogram(name: "free_bb", scope: !3, file: !3, line: 374, type: !4275, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4277)
!4275 = !DISubroutineType(types: !4276)
!4276 = !{!1368, !1368}
!4277 = !{!4278, !4279, !4280}
!4278 = !DILocalVariable(name: "occ", arg: 1, scope: !4274, file: !3, line: 374, type: !1368)
!4279 = !DILocalVariable(name: "child", scope: !4274, file: !3, line: 376, type: !1368)
!4280 = !DILocalVariable(name: "next", scope: !4274, file: !3, line: 376, type: !1368)
!4281 = !DILocation(line: 0, scope: !4274)
!4282 = !DILocation(line: 379, column: 15, scope: !4274)
!4283 = !DILocation(line: 380, column: 16, scope: !4274)
!4284 = !DILocation(line: 381, column: 8, scope: !4274)
!4285 = !DILocation(line: 381, column: 12, scope: !4274)
!4286 = !DILocation(line: 381, column: 16, scope: !4274)
!4287 = !DILocation(line: 382, column: 14, scope: !4274)
!4288 = !DILocation(line: 382, column: 24, scope: !4274)
!4289 = !DILocation(line: 382, column: 3, scope: !4274)
!4290 = !DILocation(line: 385, column: 8, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4274, file: !3, line: 385, column: 7)
!4292 = !DILocation(line: 385, column: 7, scope: !4274)
!4293 = !DILocation(line: 389, column: 7, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4291, file: !3, line: 388, column: 5)
!4295 = !DILocation(line: 390, column: 9, scope: !4294)
!4296 = distinct !{!4296, !4293, !4297}
!4297 = !DILocation(line: 390, column: 22, scope: !4294)
!4298 = !DILocation(line: 394, column: 1, scope: !4274)
!4299 = !DILocation(line: 0, scope: !4291)
!4300 = distinct !DISubprogram(name: "occ_new", scope: !3, file: !3, line: 153, type: !4301, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4303)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{!1368, !1372, !1368}
!4303 = !{!4304, !4305, !4306}
!4304 = !DILocalVariable(name: "bb", arg: 1, scope: !4300, file: !3, line: 153, type: !1372)
!4305 = !DILocalVariable(name: "children", arg: 2, scope: !4300, file: !3, line: 153, type: !1368)
!4306 = !DILocalVariable(name: "occ", scope: !4300, file: !3, line: 155, type: !1368)
!4307 = !DILocation(line: 0, scope: !4300)
!4308 = !DILocation(line: 157, column: 53, scope: !4300)
!4309 = !DILocation(line: 157, column: 41, scope: !4300)
!4310 = !DILocation(line: 157, column: 19, scope: !4300)
!4311 = !DILocation(line: 157, column: 7, scope: !4300)
!4312 = !DILocation(line: 157, column: 11, scope: !4300)
!4313 = !DILocation(line: 158, column: 3, scope: !4300)
!4314 = !DILocation(line: 160, column: 8, scope: !4300)
!4315 = !DILocation(line: 160, column: 11, scope: !4300)
!4316 = !DILocation(line: 161, column: 8, scope: !4300)
!4317 = !DILocation(line: 161, column: 17, scope: !4300)
!4318 = !DILocation(line: 162, column: 3, scope: !4300)
!4319 = distinct !DISubprogram(name: "insert_bb", scope: !3, file: !3, line: 175, type: !4320, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4323)
!4320 = !DISubroutineType(types: !4321)
!4321 = !{null, !1368, !1372, !4322}
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!4323 = !{!4324, !4325, !4326, !4327, !4328, !4329, !4333, !4334}
!4324 = !DILocalVariable(name: "new_occ", arg: 1, scope: !4319, file: !3, line: 175, type: !1368)
!4325 = !DILocalVariable(name: "idom", arg: 2, scope: !4319, file: !3, line: 175, type: !1372)
!4326 = !DILocalVariable(name: "p_head", arg: 3, scope: !4319, file: !3, line: 176, type: !4322)
!4327 = !DILocalVariable(name: "occ", scope: !4319, file: !3, line: 178, type: !1368)
!4328 = !DILocalVariable(name: "p_occ", scope: !4319, file: !3, line: 178, type: !4322)
!4329 = !DILocalVariable(name: "bb", scope: !4330, file: !3, line: 182, type: !1372)
!4330 = distinct !DILexicalBlock(scope: !4331, file: !3, line: 181, column: 5)
!4331 = distinct !DILexicalBlock(scope: !4332, file: !3, line: 180, column: 3)
!4332 = distinct !DILexicalBlock(scope: !4319, file: !3, line: 180, column: 3)
!4333 = !DILocalVariable(name: "occ_bb", scope: !4330, file: !3, line: 182, type: !1372)
!4334 = !DILocalVariable(name: "dom", scope: !4330, file: !3, line: 183, type: !1372)
!4335 = !DILocation(line: 0, scope: !4319)
!4336 = !DILocation(line: 180, column: 8, scope: !4332)
!4337 = !DILocation(line: 180, column: 14, scope: !4332)
!4338 = !DILocation(line: 180, column: 31, scope: !4331)
!4339 = !DILocation(line: 180, column: 39, scope: !4331)
!4340 = !DILocation(line: 180, column: 3, scope: !4332)
!4341 = !DILocation(line: 182, column: 33, scope: !4330)
!4342 = !DILocation(line: 0, scope: !4330)
!4343 = !DILocation(line: 182, column: 51, scope: !4330)
!4344 = !DILocation(line: 183, column: 25, scope: !4330)
!4345 = !DILocation(line: 184, column: 15, scope: !4346)
!4346 = distinct !DILexicalBlock(scope: !4330, file: !3, line: 184, column: 11)
!4347 = !DILocation(line: 184, column: 11, scope: !4330)
!4348 = !DILocation(line: 188, column: 18, scope: !4349)
!4349 = distinct !DILexicalBlock(scope: !4346, file: !3, line: 185, column: 2)
!4350 = !DILocation(line: 188, column: 11, scope: !4349)
!4351 = !DILocation(line: 189, column: 25, scope: !4349)
!4352 = !DILocation(line: 189, column: 14, scope: !4349)
!4353 = !DILocation(line: 190, column: 22, scope: !4349)
!4354 = !DILocation(line: 193, column: 2, scope: !4349)
!4355 = !DILocation(line: 195, column: 20, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4346, file: !3, line: 195, column: 16)
!4357 = !DILocation(line: 195, column: 16, scope: !4346)
!4358 = !DILocation(line: 198, column: 35, scope: !4359)
!4359 = distinct !DILexicalBlock(scope: !4356, file: !3, line: 196, column: 2)
!4360 = !DILocation(line: 198, column: 4, scope: !4359)
!4361 = !DILocation(line: 199, column: 4, scope: !4359)
!4362 = !DILocation(line: 202, column: 20, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !4356, file: !3, line: 202, column: 16)
!4364 = !DILocation(line: 202, column: 16, scope: !4356)
!4365 = !DILocation(line: 204, column: 4, scope: !4366)
!4366 = distinct !DILexicalBlock(scope: !4363, file: !3, line: 203, column: 2)
!4367 = !DILocation(line: 209, column: 18, scope: !4366)
!4368 = !DILocation(line: 209, column: 11, scope: !4366)
!4369 = !DILocation(line: 210, column: 13, scope: !4366)
!4370 = !DILocation(line: 210, column: 18, scope: !4366)
!4371 = !DILocation(line: 211, column: 14, scope: !4366)
!4372 = !DILocation(line: 216, column: 21, scope: !4366)
!4373 = !DILocation(line: 217, column: 2, scope: !4366)
!4374 = !DILocation(line: 222, column: 18, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4363, file: !3, line: 220, column: 2)
!4376 = distinct !{!4376, !4340, !4377}
!4377 = !DILocation(line: 224, column: 5, scope: !4332)
!4378 = !DILocation(line: 227, column: 19, scope: !4319)
!4379 = !DILocation(line: 227, column: 12, scope: !4319)
!4380 = !DILocation(line: 227, column: 17, scope: !4319)
!4381 = !DILocation(line: 228, column: 11, scope: !4319)
!4382 = !DILocation(line: 229, column: 1, scope: !4319)
!4383 = distinct !DISubprogram(name: "set_ssa_use_from_ptr", scope: !3732, file: !3732, line: 233, type: !4384, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4386)
!4384 = !DISubroutineType(types: !4385)
!4385 = !{null, !2672, !1435}
!4386 = !{!4387, !4388}
!4387 = !DILocalVariable(name: "use", arg: 1, scope: !4383, file: !3732, line: 233, type: !2672)
!4388 = !DILocalVariable(name: "val", arg: 2, scope: !4383, file: !3732, line: 233, type: !1435)
!4389 = !DILocation(line: 0, scope: !4383)
!4390 = !DILocation(line: 235, column: 3, scope: !4383)
!4391 = !DILocation(line: 236, column: 10, scope: !4383)
!4392 = !DILocation(line: 236, column: 15, scope: !4383)
!4393 = !DILocation(line: 237, column: 3, scope: !4383)
!4394 = !DILocation(line: 238, column: 1, scope: !4383)
!4395 = distinct !DISubprogram(name: "delink_imm_use", scope: !3732, file: !3732, line: 188, type: !4396, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4398)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{null, !2673}
!4398 = !{!4399}
!4399 = !DILocalVariable(name: "linknode", arg: 1, scope: !4395, file: !3732, line: 188, type: !2673)
!4400 = !DILocation(line: 0, scope: !4395)
!4401 = !DILocation(line: 191, column: 17, scope: !4402)
!4402 = distinct !DILexicalBlock(scope: !4395, file: !3732, line: 191, column: 7)
!4403 = !DILocation(line: 191, column: 22, scope: !4402)
!4404 = !DILocation(line: 191, column: 7, scope: !4395)
!4405 = !DILocation(line: 194, column: 36, scope: !4395)
!4406 = !DILocation(line: 194, column: 19, scope: !4395)
!4407 = !DILocation(line: 194, column: 24, scope: !4395)
!4408 = !DILocation(line: 195, column: 36, scope: !4395)
!4409 = !DILocation(line: 195, column: 13, scope: !4395)
!4410 = !DILocation(line: 195, column: 24, scope: !4395)
!4411 = !DILocation(line: 196, column: 18, scope: !4395)
!4412 = !DILocation(line: 197, column: 18, scope: !4395)
!4413 = !DILocation(line: 198, column: 1, scope: !4395)
!4414 = distinct !DISubprogram(name: "link_imm_use", scope: !3732, file: !3732, line: 214, type: !4415, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4417)
!4415 = !DISubroutineType(types: !4416)
!4416 = !{null, !2673, !1435}
!4417 = !{!4418, !4419, !4420}
!4418 = !DILocalVariable(name: "linknode", arg: 1, scope: !4414, file: !3732, line: 214, type: !2673)
!4419 = !DILocalVariable(name: "def", arg: 2, scope: !4414, file: !3732, line: 214, type: !1435)
!4420 = !DILocalVariable(name: "root", scope: !4414, file: !3732, line: 216, type: !2673)
!4421 = !DILocation(line: 0, scope: !4414)
!4422 = !DILocation(line: 218, column: 8, scope: !4423)
!4423 = distinct !DILexicalBlock(scope: !4414, file: !3732, line: 218, column: 7)
!4424 = !DILocation(line: 218, column: 12, scope: !4423)
!4425 = !DILocation(line: 218, column: 15, scope: !4423)
!4426 = !DILocation(line: 218, column: 31, scope: !4423)
!4427 = !DILocation(line: 218, column: 7, scope: !4414)
!4428 = !DILocation(line: 219, column: 15, scope: !4423)
!4429 = !DILocation(line: 219, column: 20, scope: !4423)
!4430 = !DILocation(line: 219, column: 5, scope: !4423)
!4431 = !DILocation(line: 222, column: 16, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !4423, file: !3732, line: 221, column: 5)
!4433 = !DILocation(line: 227, column: 7, scope: !4432)
!4434 = !DILocation(line: 229, column: 1, scope: !4414)
!4435 = distinct !DISubprogram(name: "link_imm_use_to_list", scope: !3732, file: !3732, line: 202, type: !4436, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4438)
!4436 = !DISubroutineType(types: !4437)
!4437 = !{null, !2673, !2673}
!4438 = !{!4439, !4440}
!4439 = !DILocalVariable(name: "linknode", arg: 1, scope: !4435, file: !3732, line: 202, type: !2673)
!4440 = !DILocalVariable(name: "list", arg: 2, scope: !4435, file: !3732, line: 202, type: !2673)
!4441 = !DILocation(line: 0, scope: !4435)
!4442 = !DILocation(line: 206, column: 13, scope: !4435)
!4443 = !DILocation(line: 206, column: 18, scope: !4435)
!4444 = !DILocation(line: 207, column: 26, scope: !4435)
!4445 = !DILocation(line: 207, column: 13, scope: !4435)
!4446 = !DILocation(line: 207, column: 18, scope: !4435)
!4447 = !DILocation(line: 208, column: 9, scope: !4435)
!4448 = !DILocation(line: 208, column: 15, scope: !4435)
!4449 = !DILocation(line: 208, column: 20, scope: !4435)
!4450 = !DILocation(line: 209, column: 14, scope: !4435)
!4451 = !DILocation(line: 210, column: 1, scope: !4435)
!4452 = distinct !DISubprogram(name: "gsi_start_bb", scope: !1281, file: !1281, line: 4418, type: !3760, scopeLine: 4419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4453)
!4453 = !{!4454, !4455, !4456}
!4454 = !DILocalVariable(name: "bb", arg: 1, scope: !4452, file: !1281, line: 4418, type: !1372)
!4455 = !DILocalVariable(name: "i", scope: !4452, file: !1281, line: 4420, type: !3200)
!4456 = !DILocalVariable(name: "seq", scope: !4452, file: !1281, line: 4421, type: !1400)
!4457 = !DILocation(line: 0, scope: !4452)
!4458 = !DILocation(line: 4420, column: 24, scope: !4452)
!4459 = !DILocation(line: 4423, column: 9, scope: !4452)
!4460 = !DILocation(line: 4424, column: 11, scope: !4452)
!4461 = !DILocation(line: 4424, column: 5, scope: !4452)
!4462 = !DILocation(line: 4424, column: 9, scope: !4452)
!4463 = !DILocation(line: 4425, column: 5, scope: !4452)
!4464 = !DILocation(line: 4425, column: 9, scope: !4452)
!4465 = !DILocation(line: 4426, column: 5, scope: !4452)
!4466 = !DILocation(line: 4426, column: 8, scope: !4452)
!4467 = !DILocation(line: 4429, column: 1, scope: !4452)
!4468 = distinct !DISubprogram(name: "gimple_code", scope: !1281, file: !1281, line: 1052, type: !4469, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4471)
!4469 = !DISubroutineType(types: !4470)
!4470 = !{!1280, !3824}
!4471 = !{!4472}
!4472 = !DILocalVariable(name: "g", arg: 1, scope: !4468, file: !1281, line: 1052, type: !3824)
!4473 = !DILocation(line: 0, scope: !4468)
!4474 = !DILocation(line: 1054, column: 20, scope: !4468)
!4475 = !DILocation(line: 1054, column: 3, scope: !4468)
!4476 = distinct !DISubprogram(name: "bb_seq", scope: !1281, file: !1281, line: 237, type: !4477, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4482)
!4477 = !DISubroutineType(types: !4478)
!4478 = !{!1400, !4479}
!4479 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !1373, line: 112, baseType: !4480)
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4481, size: 64)
!4481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1375)
!4482 = !{!4483}
!4483 = !DILocalVariable(name: "bb", arg: 1, scope: !4476, file: !1281, line: 237, type: !4479)
!4484 = !DILocation(line: 0, scope: !4476)
!4485 = !DILocation(line: 239, column: 17, scope: !4476)
!4486 = !DILocation(line: 239, column: 23, scope: !4476)
!4487 = !DILocation(line: 239, column: 33, scope: !4476)
!4488 = !DILocation(line: 239, column: 43, scope: !4476)
!4489 = !DILocation(line: 239, column: 36, scope: !4476)
!4490 = !DILocation(line: 239, column: 10, scope: !4476)
!4491 = !DILocation(line: 239, column: 68, scope: !4476)
!4492 = !DILocation(line: 239, column: 3, scope: !4476)
!4493 = distinct !DISubprogram(name: "gimple_seq_first", scope: !1281, file: !1281, line: 159, type: !4494, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4499)
!4494 = !DISubroutineType(types: !4495)
!4495 = !{!1405, !4496}
!4496 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !1373, line: 67, baseType: !4497)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1402)
!4499 = !{!4500}
!4500 = !DILocalVariable(name: "s", arg: 1, scope: !4493, file: !1281, line: 159, type: !4496)
!4501 = !DILocation(line: 0, scope: !4493)
!4502 = !DILocation(line: 161, column: 10, scope: !4493)
!4503 = !DILocation(line: 161, column: 17, scope: !4493)
!4504 = !DILocation(line: 161, column: 3, scope: !4493)
!4505 = distinct !DISubprogram(name: "op_iter_init_tree", scope: !3732, file: !3732, line: 792, type: !4506, scopeLine: 793, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4509)
!4506 = !DISubroutineType(types: !4507)
!4507 = !{!1435, !4508, !1410, !1361}
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!4509 = !{!4510, !4511, !4512}
!4510 = !DILocalVariable(name: "ptr", arg: 1, scope: !4505, file: !3732, line: 792, type: !4508)
!4511 = !DILocalVariable(name: "stmt", arg: 2, scope: !4505, file: !3732, line: 792, type: !1410)
!4512 = !DILocalVariable(name: "flags", arg: 3, scope: !4505, file: !3732, line: 792, type: !1361)
!4513 = !DILocation(line: 0, scope: !4505)
!4514 = !DILocation(line: 794, column: 3, scope: !4505)
!4515 = !DILocation(line: 795, column: 8, scope: !4505)
!4516 = !DILocation(line: 795, column: 18, scope: !4505)
!4517 = !DILocation(line: 796, column: 10, scope: !4505)
!4518 = !DILocation(line: 796, column: 3, scope: !4505)
!4519 = distinct !DISubprogram(name: "op_iter_done", scope: !3732, file: !3732, line: 652, type: !4520, scopeLine: 653, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4524)
!4520 = !DISubroutineType(types: !4521)
!4521 = !{!1360, !4522}
!4522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4523, size: 64)
!4523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3799)
!4524 = !{!4525}
!4525 = !DILocalVariable(name: "ptr", arg: 1, scope: !4519, file: !3732, line: 652, type: !4522)
!4526 = !DILocation(line: 0, scope: !4519)
!4527 = !DILocation(line: 654, column: 15, scope: !4519)
!4528 = !DILocation(line: 654, column: 3, scope: !4519)
!4529 = distinct !DISubprogram(name: "op_iter_next_tree", scope: !3732, file: !3732, line: 699, type: !4530, scopeLine: 700, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4532)
!4530 = !DISubroutineType(types: !4531)
!4531 = !{!1435, !4508}
!4532 = !{!4533, !4534}
!4533 = !DILocalVariable(name: "ptr", arg: 1, scope: !4529, file: !3732, line: 699, type: !4508)
!4534 = !DILocalVariable(name: "val", scope: !4529, file: !3732, line: 701, type: !1435)
!4535 = !DILocation(line: 0, scope: !4529)
!4536 = !DILocation(line: 705, column: 12, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4529, file: !3732, line: 705, column: 7)
!4538 = !DILocation(line: 705, column: 7, scope: !4537)
!4539 = !DILocation(line: 705, column: 7, scope: !4529)
!4540 = !DILocation(line: 707, column: 13, scope: !4541)
!4541 = distinct !DILexicalBlock(scope: !4537, file: !3732, line: 706, column: 5)
!4542 = !DILocation(line: 708, column: 24, scope: !4541)
!4543 = !DILocation(line: 708, column: 30, scope: !4541)
!4544 = !DILocation(line: 708, column: 17, scope: !4541)
!4545 = !DILocation(line: 709, column: 7, scope: !4541)
!4546 = !DILocation(line: 711, column: 12, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !4529, file: !3732, line: 711, column: 7)
!4548 = !DILocation(line: 711, column: 7, scope: !4547)
!4549 = !DILocation(line: 711, column: 7, scope: !4529)
!4550 = !DILocation(line: 713, column: 13, scope: !4551)
!4551 = distinct !DILexicalBlock(scope: !4547, file: !3732, line: 712, column: 5)
!4552 = !DILocation(line: 714, column: 24, scope: !4551)
!4553 = !DILocation(line: 714, column: 30, scope: !4551)
!4554 = !DILocation(line: 714, column: 17, scope: !4551)
!4555 = !DILocation(line: 715, column: 7, scope: !4551)
!4556 = !DILocation(line: 718, column: 8, scope: !4529)
!4557 = !DILocation(line: 718, column: 13, scope: !4529)
!4558 = !DILocation(line: 719, column: 3, scope: !4529)
!4559 = !DILocation(line: 721, column: 1, scope: !4529)
!4560 = distinct !DISubprogram(name: "op_iter_init", scope: !3732, file: !3732, line: 742, type: !4561, scopeLine: 743, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4563)
!4561 = !DISubroutineType(types: !4562)
!4562 = !{null, !4508, !1410, !1361}
!4563 = !{!4564, !4565, !4566}
!4564 = !DILocalVariable(name: "ptr", arg: 1, scope: !4560, file: !3732, line: 742, type: !4508)
!4565 = !DILocalVariable(name: "stmt", arg: 2, scope: !4560, file: !3732, line: 742, type: !1410)
!4566 = !DILocalVariable(name: "flags", arg: 3, scope: !4560, file: !3732, line: 742, type: !1361)
!4567 = !DILocation(line: 0, scope: !4560)
!4568 = !DILocation(line: 746, column: 3, scope: !4560)
!4569 = !DILocation(line: 748, column: 22, scope: !4560)
!4570 = !DILocation(line: 748, column: 15, scope: !4560)
!4571 = !DILocation(line: 748, column: 52, scope: !4560)
!4572 = !DILocation(line: 748, column: 8, scope: !4560)
!4573 = !DILocation(line: 748, column: 13, scope: !4560)
!4574 = !DILocation(line: 749, column: 15, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4560, file: !3732, line: 749, column: 7)
!4576 = !DILocation(line: 750, column: 7, scope: !4575)
!4577 = !DILocation(line: 750, column: 10, scope: !4575)
!4578 = !DILocation(line: 751, column: 7, scope: !4575)
!4579 = !DILocation(line: 751, column: 10, scope: !4575)
!4580 = !DILocation(line: 751, column: 29, scope: !4575)
!4581 = !DILocation(line: 749, column: 7, scope: !4560)
!4582 = !DILocation(line: 752, column: 22, scope: !4575)
!4583 = !DILocation(line: 752, column: 28, scope: !4575)
!4584 = !DILocation(line: 752, column: 15, scope: !4575)
!4585 = !DILocation(line: 752, column: 5, scope: !4575)
!4586 = !DILocation(line: 753, column: 22, scope: !4560)
!4587 = !DILocation(line: 753, column: 15, scope: !4560)
!4588 = !DILocation(line: 753, column: 52, scope: !4560)
!4589 = !DILocation(line: 753, column: 8, scope: !4560)
!4590 = !DILocation(line: 753, column: 13, scope: !4560)
!4591 = !DILocation(line: 754, column: 15, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4560, file: !3732, line: 754, column: 7)
!4593 = !DILocation(line: 755, column: 7, scope: !4592)
!4594 = !DILocation(line: 755, column: 10, scope: !4592)
!4595 = !DILocation(line: 756, column: 7, scope: !4592)
!4596 = !DILocation(line: 756, column: 10, scope: !4592)
!4597 = !DILocation(line: 756, column: 29, scope: !4592)
!4598 = !DILocation(line: 754, column: 7, scope: !4560)
!4599 = !DILocation(line: 757, column: 22, scope: !4592)
!4600 = !DILocation(line: 757, column: 28, scope: !4592)
!4601 = !DILocation(line: 757, column: 15, scope: !4592)
!4602 = !DILocation(line: 757, column: 5, scope: !4592)
!4603 = !DILocation(line: 758, column: 8, scope: !4560)
!4604 = !DILocation(line: 758, column: 13, scope: !4560)
!4605 = !DILocation(line: 760, column: 8, scope: !4560)
!4606 = !DILocation(line: 760, column: 14, scope: !4560)
!4607 = !DILocation(line: 761, column: 8, scope: !4560)
!4608 = !DILocation(line: 761, column: 16, scope: !4560)
!4609 = !DILocation(line: 762, column: 8, scope: !4560)
!4610 = !DILocation(line: 762, column: 17, scope: !4560)
!4611 = !DILocation(line: 763, column: 1, scope: !4560)
!4612 = distinct !DISubprogram(name: "gimple_def_ops", scope: !1281, file: !1281, line: 1292, type: !4613, scopeLine: 1293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4615)
!4613 = !DISubroutineType(types: !4614)
!4614 = !{!2013, !3824}
!4615 = !{!4616}
!4616 = !DILocalVariable(name: "g", arg: 1, scope: !4612, file: !1281, line: 1292, type: !3824)
!4617 = !DILocation(line: 0, scope: !4612)
!4618 = !DILocation(line: 1294, column: 8, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !4612, file: !1281, line: 1294, column: 7)
!4620 = !DILocation(line: 1294, column: 7, scope: !4612)
!4621 = !DILocation(line: 1296, column: 26, scope: !4612)
!4622 = !DILocation(line: 1296, column: 3, scope: !4612)
!4623 = !DILocation(line: 1297, column: 1, scope: !4612)
!4624 = distinct !DISubprogram(name: "gimple_vdef", scope: !1281, file: !1281, line: 1375, type: !3847, scopeLine: 1376, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4625)
!4625 = !{!4626}
!4626 = !DILocalVariable(name: "g", arg: 1, scope: !4624, file: !1281, line: 1375, type: !3824)
!4627 = !DILocation(line: 0, scope: !4624)
!4628 = !DILocation(line: 1377, column: 8, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !4624, file: !1281, line: 1377, column: 7)
!4630 = !DILocation(line: 1377, column: 7, scope: !4624)
!4631 = !DILocation(line: 1379, column: 23, scope: !4624)
!4632 = !DILocation(line: 1379, column: 3, scope: !4624)
!4633 = !DILocation(line: 1380, column: 1, scope: !4624)
!4634 = distinct !DISubprogram(name: "gimple_use_ops", scope: !1281, file: !1281, line: 1313, type: !4635, scopeLine: 1314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4637)
!4635 = !DISubroutineType(types: !4636)
!4636 = !{!2020, !3824}
!4637 = !{!4638}
!4638 = !DILocalVariable(name: "g", arg: 1, scope: !4634, file: !1281, line: 1313, type: !3824)
!4639 = !DILocation(line: 0, scope: !4634)
!4640 = !DILocation(line: 1315, column: 8, scope: !4641)
!4641 = distinct !DILexicalBlock(scope: !4634, file: !1281, line: 1315, column: 7)
!4642 = !DILocation(line: 1315, column: 7, scope: !4634)
!4643 = !DILocation(line: 1317, column: 26, scope: !4634)
!4644 = !DILocation(line: 1317, column: 3, scope: !4634)
!4645 = !DILocation(line: 1318, column: 1, scope: !4634)
!4646 = distinct !DISubprogram(name: "gimple_vuse", scope: !1281, file: !1281, line: 1365, type: !3847, scopeLine: 1366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4647)
!4647 = !{!4648}
!4648 = !DILocalVariable(name: "g", arg: 1, scope: !4646, file: !1281, line: 1365, type: !3824)
!4649 = !DILocation(line: 0, scope: !4646)
!4650 = !DILocation(line: 1367, column: 8, scope: !4651)
!4651 = distinct !DILexicalBlock(scope: !4646, file: !1281, line: 1367, column: 7)
!4652 = !DILocation(line: 1367, column: 7, scope: !4646)
!4653 = !DILocation(line: 1369, column: 23, scope: !4646)
!4654 = !DILocation(line: 1369, column: 3, scope: !4646)
!4655 = !DILocation(line: 1370, column: 1, scope: !4646)
!4656 = distinct !DISubprogram(name: "gimple_has_ops", scope: !1281, file: !1281, line: 1274, type: !3822, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4657)
!4657 = !{!4658}
!4658 = !DILocalVariable(name: "g", arg: 1, scope: !4656, file: !1281, line: 1274, type: !3824)
!4659 = !DILocation(line: 0, scope: !4656)
!4660 = !DILocation(line: 1276, column: 10, scope: !4656)
!4661 = !DILocation(line: 1276, column: 26, scope: !4656)
!4662 = !DILocation(line: 1276, column: 41, scope: !4656)
!4663 = !DILocation(line: 1276, column: 44, scope: !4656)
!4664 = !DILocation(line: 1276, column: 60, scope: !4656)
!4665 = !DILocation(line: 1276, column: 3, scope: !4656)
!4666 = distinct !DISubprogram(name: "gimple_has_mem_ops", scope: !1281, file: !1281, line: 1283, type: !3822, scopeLine: 1284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4667)
!4667 = !{!4668}
!4668 = !DILocalVariable(name: "g", arg: 1, scope: !4666, file: !1281, line: 1283, type: !3824)
!4669 = !DILocation(line: 0, scope: !4666)
!4670 = !DILocation(line: 1285, column: 10, scope: !4666)
!4671 = !DILocation(line: 1285, column: 26, scope: !4666)
!4672 = !DILocation(line: 1285, column: 43, scope: !4666)
!4673 = !DILocation(line: 1285, column: 46, scope: !4666)
!4674 = !DILocation(line: 1285, column: 62, scope: !4666)
!4675 = !DILocation(line: 1285, column: 3, scope: !4666)
!4676 = distinct !DISubprogram(name: "get_use_from_ptr", scope: !3732, file: !3732, line: 427, type: !4677, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4679)
!4677 = !DISubroutineType(types: !4678)
!4678 = !{!1435, !2672}
!4679 = !{!4680}
!4680 = !DILocalVariable(name: "use", arg: 1, scope: !4676, file: !3732, line: 427, type: !2672)
!4681 = !DILocation(line: 0, scope: !4676)
!4682 = !DILocation(line: 429, column: 17, scope: !4676)
!4683 = !DILocation(line: 429, column: 10, scope: !4676)
!4684 = !DILocation(line: 429, column: 3, scope: !4676)
!4685 = distinct !DISubprogram(name: "gimple_expr_code", scope: !1281, file: !1281, line: 1438, type: !3832, scopeLine: 1439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4686)
!4686 = !{!4687, !4688}
!4687 = !DILocalVariable(name: "stmt", arg: 1, scope: !4685, file: !1281, line: 1438, type: !3824)
!4688 = !DILocalVariable(name: "code", scope: !4685, file: !1281, line: 1440, type: !1280)
!4689 = !DILocation(line: 0, scope: !4685)
!4690 = !DILocation(line: 1440, column: 27, scope: !4685)
!4691 = !DILocation(line: 1441, column: 29, scope: !4692)
!4692 = distinct !DILexicalBlock(scope: !4685, file: !1281, line: 1441, column: 7)
!4693 = !DILocation(line: 1442, column: 42, scope: !4692)
!4694 = !DILocation(line: 1442, column: 5, scope: !4692)
!4695 = !DILocation(line: 1446, column: 5, scope: !4696)
!4696 = distinct !DILexicalBlock(scope: !4692, file: !1281, line: 1443, column: 12)
!4697 = !DILocation(line: 1448, column: 5, scope: !4685)
!4698 = !DILocation(line: 1450, column: 1, scope: !4685)
!4699 = distinct !DISubprogram(name: "get_gimple_rhs_class", scope: !1281, file: !1281, line: 1686, type: !4700, scopeLine: 1687, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4702)
!4700 = !DISubroutineType(types: !4701)
!4701 = !{!1326, !366}
!4702 = !{!4703}
!4703 = !DILocalVariable(name: "code", arg: 1, scope: !4699, file: !1281, line: 1686, type: !366)
!4704 = !DILocation(line: 0, scope: !4699)
!4705 = !DILocation(line: 1688, column: 34, scope: !4699)
!4706 = !DILocation(line: 1688, column: 10, scope: !4699)
!4707 = !DILocation(line: 1688, column: 3, scope: !4699)
!4708 = distinct !DISubprogram(name: "gimple_num_ops", scope: !1281, file: !1281, line: 1596, type: !4709, scopeLine: 1597, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4711)
!4709 = !DISubroutineType(types: !4710)
!4710 = !{!7, !3824}
!4711 = !{!4712}
!4712 = !DILocalVariable(name: "gs", arg: 1, scope: !4708, file: !1281, line: 1596, type: !3824)
!4713 = !DILocation(line: 0, scope: !4708)
!4714 = !DILocation(line: 1598, column: 21, scope: !4708)
!4715 = !DILocation(line: 1598, column: 3, scope: !4708)
!4716 = distinct !DISubprogram(name: "gimple_op", scope: !1281, file: !1281, line: 1631, type: !4717, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4719)
!4717 = !DISubroutineType(types: !4718)
!4718 = !{!1435, !3824, !7}
!4719 = !{!4720, !4721}
!4720 = !DILocalVariable(name: "gs", arg: 1, scope: !4716, file: !1281, line: 1631, type: !3824)
!4721 = !DILocalVariable(name: "i", arg: 2, scope: !4716, file: !1281, line: 1631, type: !7)
!4722 = !DILocation(line: 0, scope: !4716)
!4723 = !DILocation(line: 1633, column: 7, scope: !4724)
!4724 = distinct !DILexicalBlock(scope: !4716, file: !1281, line: 1633, column: 7)
!4725 = !DILocation(line: 1633, column: 7, scope: !4716)
!4726 = !DILocation(line: 1638, column: 14, scope: !4727)
!4727 = distinct !DILexicalBlock(scope: !4724, file: !1281, line: 1634, column: 5)
!4728 = !DILocation(line: 1638, column: 7, scope: !4727)
!4729 = !DILocation(line: 0, scope: !4724)
!4730 = !DILocation(line: 1642, column: 1, scope: !4716)
!4731 = distinct !DISubprogram(name: "gimple_ops", scope: !1281, file: !1281, line: 1614, type: !3742, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4732)
!4732 = !{!4733, !4734}
!4733 = !DILocalVariable(name: "gs", arg: 1, scope: !4731, file: !1281, line: 1614, type: !1410)
!4734 = !DILocalVariable(name: "off", scope: !4731, file: !1281, line: 1616, type: !1927)
!4735 = !DILocation(line: 0, scope: !4731)
!4736 = !DILocation(line: 1621, column: 28, scope: !4731)
!4737 = !DILocation(line: 1621, column: 9, scope: !4731)
!4738 = !DILocation(line: 1622, column: 3, scope: !4731)
!4739 = !DILocation(line: 1624, column: 20, scope: !4731)
!4740 = !DILocation(line: 1624, column: 32, scope: !4731)
!4741 = !DILocation(line: 1624, column: 10, scope: !4731)
!4742 = !DILocation(line: 1624, column: 3, scope: !4731)
!4743 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !1281, file: !1281, line: 1073, type: !4744, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4746)
!4744 = !DISubroutineType(types: !4745)
!4745 = !{!1332, !1410}
!4746 = !{!4747}
!4747 = !DILocalVariable(name: "gs", arg: 1, scope: !4743, file: !1281, line: 1073, type: !1410)
!4748 = !DILocation(line: 0, scope: !4743)
!4749 = !DILocation(line: 1075, column: 24, scope: !4743)
!4750 = !DILocation(line: 1075, column: 10, scope: !4743)
!4751 = !DILocation(line: 1075, column: 3, scope: !4743)
!4752 = distinct !DISubprogram(name: "gss_for_code", scope: !1281, file: !1281, line: 1061, type: !4753, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4755)
!4753 = !DISubroutineType(types: !4754)
!4754 = !{!1332, !1280}
!4755 = !{!4756}
!4756 = !DILocalVariable(name: "code", arg: 1, scope: !4752, file: !1281, line: 1061, type: !1280)
!4757 = !DILocation(line: 0, scope: !4752)
!4758 = !DILocation(line: 1066, column: 10, scope: !4752)
!4759 = !DILocation(line: 1066, column: 3, scope: !4752)
!4760 = distinct !DISubprogram(name: "gimple_call_fn", scope: !1281, file: !1281, line: 1911, type: !3847, scopeLine: 1912, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4761)
!4761 = !{!4762}
!4762 = !DILocalVariable(name: "gs", arg: 1, scope: !4760, file: !1281, line: 1911, type: !3824)
!4763 = !DILocation(line: 0, scope: !4760)
!4764 = !DILocation(line: 1914, column: 10, scope: !4760)
!4765 = !DILocation(line: 1914, column: 3, scope: !4760)
!4766 = distinct !DISubprogram(name: "gimple_set_op", scope: !1281, file: !1281, line: 1663, type: !4767, scopeLine: 1664, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4769)
!4767 = !DISubroutineType(types: !4768)
!4768 = !{null, !1410, !7, !1435}
!4769 = !{!4770, !4771, !4772}
!4770 = !DILocalVariable(name: "gs", arg: 1, scope: !4766, file: !1281, line: 1663, type: !1410)
!4771 = !DILocalVariable(name: "i", arg: 2, scope: !4766, file: !1281, line: 1663, type: !7)
!4772 = !DILocalVariable(name: "op", arg: 3, scope: !4766, file: !1281, line: 1663, type: !1435)
!4773 = !DILocation(line: 0, scope: !4766)
!4774 = !DILocation(line: 1665, column: 3, scope: !4766)
!4775 = !DILocation(line: 1671, column: 3, scope: !4766)
!4776 = !DILocation(line: 1671, column: 22, scope: !4766)
!4777 = !DILocation(line: 1672, column: 1, scope: !4766)
!4778 = distinct !DISubprogram(name: "gimple_location", scope: !1281, file: !1281, line: 1139, type: !4779, scopeLine: 1140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4781)
!4779 = !DISubroutineType(types: !4780)
!4780 = !{!1428, !3824}
!4781 = !{!4782}
!4782 = !DILocalVariable(name: "g", arg: 1, scope: !4778, file: !1281, line: 1139, type: !3824)
!4783 = !DILocation(line: 0, scope: !4778)
!4784 = !DILocation(line: 1141, column: 20, scope: !4778)
!4785 = !DILocation(line: 1141, column: 3, scope: !4778)
!4786 = distinct !DISubprogram(name: "link_use_stmts_after", scope: !3732, file: !3732, line: 1018, type: !4787, scopeLine: 1019, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4789)
!4787 = !DISubroutineType(types: !4788)
!4788 = !{null, !2672, !3889}
!4789 = !{!4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797}
!4790 = !DILocalVariable(name: "head", arg: 1, scope: !4786, file: !3732, line: 1018, type: !2672)
!4791 = !DILocalVariable(name: "imm", arg: 2, scope: !4786, file: !3732, line: 1018, type: !3889)
!4792 = !DILocalVariable(name: "use_p", scope: !4786, file: !3732, line: 1020, type: !2672)
!4793 = !DILocalVariable(name: "last_p", scope: !4786, file: !3732, line: 1021, type: !2672)
!4794 = !DILocalVariable(name: "head_stmt", scope: !4786, file: !3732, line: 1022, type: !1410)
!4795 = !DILocalVariable(name: "use", scope: !4786, file: !3732, line: 1023, type: !1435)
!4796 = !DILocalVariable(name: "op_iter", scope: !4786, file: !3732, line: 1024, type: !3799)
!4797 = !DILocalVariable(name: "flag", scope: !4786, file: !3732, line: 1025, type: !1361)
!4798 = !DILocation(line: 0, scope: !4786)
!4799 = !DILocation(line: 1022, column: 22, scope: !4786)
!4800 = !DILocation(line: 1023, column: 14, scope: !4786)
!4801 = !DILocation(line: 1024, column: 3, scope: !4786)
!4802 = !DILocation(line: 1028, column: 11, scope: !4786)
!4803 = !DILocation(line: 1030, column: 7, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4786, file: !3732, line: 1030, column: 7)
!4805 = !DILocation(line: 1030, column: 31, scope: !4804)
!4806 = !DILocation(line: 1030, column: 7, scope: !4786)
!4807 = !DILocation(line: 1032, column: 7, scope: !4808)
!4808 = distinct !DILexicalBlock(scope: !4809, file: !3732, line: 1032, column: 7)
!4809 = distinct !DILexicalBlock(scope: !4804, file: !3732, line: 1031, column: 5)
!4810 = !DILocation(line: 0, scope: !4808)
!4811 = !DILocation(line: 1032, column: 7, scope: !4812)
!4812 = distinct !DILexicalBlock(scope: !4808, file: !3732, line: 1032, column: 7)
!4813 = !DILocation(line: 1033, column: 6, scope: !4814)
!4814 = distinct !DILexicalBlock(scope: !4812, file: !3732, line: 1033, column: 6)
!4815 = !DILocation(line: 1033, column: 27, scope: !4814)
!4816 = !DILocation(line: 1033, column: 6, scope: !4812)
!4817 = !DILocation(line: 1034, column: 13, scope: !4814)
!4818 = !DILocation(line: 1034, column: 4, scope: !4814)
!4819 = distinct !{!4819, !4807, !4820}
!4820 = !DILocation(line: 1034, column: 53, scope: !4808)
!4821 = !DILocation(line: 1038, column: 11, scope: !4822)
!4822 = distinct !DILexicalBlock(scope: !4804, file: !3732, line: 1037, column: 5)
!4823 = !DILocation(line: 1040, column: 4, scope: !4824)
!4824 = distinct !DILexicalBlock(scope: !4825, file: !3732, line: 1040, column: 4)
!4825 = distinct !DILexicalBlock(scope: !4826, file: !3732, line: 1039, column: 2)
!4826 = distinct !DILexicalBlock(scope: !4822, file: !3732, line: 1038, column: 11)
!4827 = !DILocation(line: 0, scope: !4824)
!4828 = !DILocation(line: 1040, column: 4, scope: !4829)
!4829 = distinct !DILexicalBlock(scope: !4824, file: !3732, line: 1040, column: 4)
!4830 = !DILocation(line: 1041, column: 10, scope: !4831)
!4831 = distinct !DILexicalBlock(scope: !4829, file: !3732, line: 1041, column: 10)
!4832 = !DILocation(line: 1041, column: 31, scope: !4831)
!4833 = !DILocation(line: 1041, column: 10, scope: !4829)
!4834 = !DILocation(line: 1042, column: 17, scope: !4831)
!4835 = !DILocation(line: 1042, column: 8, scope: !4831)
!4836 = distinct !{!4836, !4823, !4837}
!4837 = !DILocation(line: 1042, column: 57, scope: !4824)
!4838 = !DILocation(line: 1044, column: 25, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4826, file: !3732, line: 1044, column: 16)
!4840 = !DILocation(line: 1044, column: 53, scope: !4839)
!4841 = !DILocation(line: 1044, column: 16, scope: !4826)
!4842 = !DILocation(line: 1046, column: 8, scope: !4843)
!4843 = distinct !DILexicalBlock(scope: !4844, file: !3732, line: 1046, column: 8)
!4844 = distinct !DILexicalBlock(scope: !4839, file: !3732, line: 1045, column: 2)
!4845 = !DILocation(line: 1046, column: 29, scope: !4843)
!4846 = !DILocation(line: 1046, column: 8, scope: !4844)
!4847 = !DILocation(line: 1047, column: 15, scope: !4843)
!4848 = !DILocation(line: 1047, column: 6, scope: !4843)
!4849 = !DILocation(line: 1051, column: 22, scope: !4850)
!4850 = distinct !DILexicalBlock(scope: !4786, file: !3732, line: 1051, column: 7)
!4851 = !DILocation(line: 1021, column: 17, scope: !4786)
!4852 = !DILocation(line: 1051, column: 27, scope: !4850)
!4853 = !DILocation(line: 1051, column: 7, scope: !4786)
!4854 = !DILocation(line: 1052, column: 27, scope: !4850)
!4855 = !DILocation(line: 1052, column: 5, scope: !4850)
!4856 = !DILocation(line: 1053, column: 32, scope: !4786)
!4857 = !DILocation(line: 1053, column: 3, scope: !4786)
!4858 = !DILocation(line: 1054, column: 1, scope: !4786)
!4859 = distinct !DISubprogram(name: "op_iter_init_phiuse", scope: !3732, file: !3732, line: 910, type: !4860, scopeLine: 911, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4862)
!4860 = !DISubroutineType(types: !4861)
!4861 = !{!2672, !4508, !1410, !1361}
!4862 = !{!4863, !4864, !4865, !4866, !4867}
!4863 = !DILocalVariable(name: "ptr", arg: 1, scope: !4859, file: !3732, line: 910, type: !4508)
!4864 = !DILocalVariable(name: "phi", arg: 2, scope: !4859, file: !3732, line: 910, type: !1410)
!4865 = !DILocalVariable(name: "flags", arg: 3, scope: !4859, file: !3732, line: 910, type: !1361)
!4866 = !DILocalVariable(name: "phi_def", scope: !4859, file: !3732, line: 912, type: !1435)
!4867 = !DILocalVariable(name: "comp", scope: !4859, file: !3732, line: 913, type: !1361)
!4868 = !DILocation(line: 0, scope: !4859)
!4869 = !DILocation(line: 912, column: 18, scope: !4859)
!4870 = !DILocation(line: 915, column: 3, scope: !4859)
!4871 = !DILocation(line: 916, column: 8, scope: !4859)
!4872 = !DILocation(line: 916, column: 13, scope: !4859)
!4873 = !DILocation(line: 918, column: 3, scope: !4859)
!4874 = !DILocation(line: 920, column: 11, scope: !4859)
!4875 = !DILocation(line: 923, column: 14, scope: !4876)
!4876 = distinct !DILexicalBlock(scope: !4859, file: !3732, line: 923, column: 7)
!4877 = !DILocation(line: 923, column: 22, scope: !4876)
!4878 = !DILocation(line: 923, column: 7, scope: !4859)
!4879 = !DILocation(line: 925, column: 17, scope: !4880)
!4880 = distinct !DILexicalBlock(scope: !4876, file: !3732, line: 924, column: 5)
!4881 = !DILocation(line: 926, column: 7, scope: !4880)
!4882 = !DILocation(line: 929, column: 8, scope: !4859)
!4883 = !DILocation(line: 929, column: 17, scope: !4859)
!4884 = !DILocation(line: 930, column: 18, scope: !4859)
!4885 = !DILocation(line: 930, column: 8, scope: !4859)
!4886 = !DILocation(line: 930, column: 16, scope: !4859)
!4887 = !DILocation(line: 931, column: 8, scope: !4859)
!4888 = !DILocation(line: 931, column: 18, scope: !4859)
!4889 = !DILocation(line: 932, column: 10, scope: !4859)
!4890 = !DILocation(line: 932, column: 3, scope: !4859)
!4891 = !DILocation(line: 933, column: 1, scope: !4859)
!4892 = distinct !DISubprogram(name: "move_use_after_head", scope: !3732, file: !3732, line: 990, type: !4893, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4895)
!4893 = !DISubroutineType(types: !4894)
!4894 = !{!2672, !2672, !2672, !2672}
!4895 = !{!4896, !4897, !4898}
!4896 = !DILocalVariable(name: "use_p", arg: 1, scope: !4892, file: !3732, line: 990, type: !2672)
!4897 = !DILocalVariable(name: "head", arg: 2, scope: !4892, file: !3732, line: 990, type: !2672)
!4898 = !DILocalVariable(name: "last_p", arg: 3, scope: !4892, file: !3732, line: 991, type: !2672)
!4899 = !DILocation(line: 0, scope: !4892)
!4900 = !DILocation(line: 997, column: 13, scope: !4901)
!4901 = distinct !DILexicalBlock(scope: !4892, file: !3732, line: 997, column: 7)
!4902 = !DILocation(line: 997, column: 7, scope: !4892)
!4903 = !DILocation(line: 1000, column: 19, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4905, file: !3732, line: 1000, column: 11)
!4905 = distinct !DILexicalBlock(scope: !4901, file: !3732, line: 998, column: 5)
!4906 = !DILocation(line: 1000, column: 24, scope: !4904)
!4907 = !DILocation(line: 1000, column: 11, scope: !4905)
!4908 = !DILocation(line: 1005, column: 4, scope: !4909)
!4909 = distinct !DILexicalBlock(scope: !4904, file: !3732, line: 1003, column: 2)
!4910 = !DILocation(line: 1006, column: 4, scope: !4909)
!4911 = !DILocation(line: 1010, column: 3, scope: !4892)
!4912 = distinct !DISubprogram(name: "op_iter_next_use", scope: !3732, file: !3732, line: 659, type: !4913, scopeLine: 660, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4915)
!4913 = !DISubroutineType(types: !4914)
!4914 = !{!2672, !4508}
!4915 = !{!4916, !4917}
!4916 = !DILocalVariable(name: "ptr", arg: 1, scope: !4912, file: !3732, line: 659, type: !4508)
!4917 = !DILocalVariable(name: "use_p", scope: !4912, file: !3732, line: 661, type: !2672)
!4918 = !DILocation(line: 0, scope: !4912)
!4919 = !DILocation(line: 665, column: 12, scope: !4920)
!4920 = distinct !DILexicalBlock(scope: !4912, file: !3732, line: 665, column: 7)
!4921 = !DILocation(line: 665, column: 7, scope: !4920)
!4922 = !DILocation(line: 665, column: 7, scope: !4912)
!4923 = !DILocation(line: 667, column: 15, scope: !4924)
!4924 = distinct !DILexicalBlock(scope: !4920, file: !3732, line: 666, column: 5)
!4925 = !DILocation(line: 668, column: 30, scope: !4924)
!4926 = !DILocation(line: 668, column: 17, scope: !4924)
!4927 = !DILocation(line: 669, column: 7, scope: !4924)
!4928 = !DILocation(line: 671, column: 12, scope: !4929)
!4929 = distinct !DILexicalBlock(scope: !4912, file: !3732, line: 671, column: 7)
!4930 = !DILocation(line: 671, column: 25, scope: !4929)
!4931 = !DILocation(line: 671, column: 18, scope: !4929)
!4932 = !DILocation(line: 671, column: 7, scope: !4912)
!4933 = !DILocation(line: 673, column: 14, scope: !4934)
!4934 = distinct !DILexicalBlock(scope: !4929, file: !3732, line: 672, column: 5)
!4935 = !DILocation(line: 673, column: 7, scope: !4934)
!4936 = !DILocation(line: 675, column: 8, scope: !4912)
!4937 = !DILocation(line: 675, column: 13, scope: !4912)
!4938 = !DILocation(line: 676, column: 3, scope: !4912)
!4939 = !DILocation(line: 677, column: 1, scope: !4912)
!4940 = distinct !DISubprogram(name: "op_iter_init_use", scope: !3732, file: !3732, line: 768, type: !4860, scopeLine: 769, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4941)
!4941 = !{!4942, !4943, !4944}
!4942 = !DILocalVariable(name: "ptr", arg: 1, scope: !4940, file: !3732, line: 768, type: !4508)
!4943 = !DILocalVariable(name: "stmt", arg: 2, scope: !4940, file: !3732, line: 768, type: !1410)
!4944 = !DILocalVariable(name: "flags", arg: 3, scope: !4940, file: !3732, line: 768, type: !1361)
!4945 = !DILocation(line: 0, scope: !4940)
!4946 = !DILocation(line: 770, column: 3, scope: !4940)
!4947 = !DILocation(line: 772, column: 3, scope: !4940)
!4948 = !DILocation(line: 773, column: 8, scope: !4940)
!4949 = !DILocation(line: 773, column: 18, scope: !4940)
!4950 = !DILocation(line: 774, column: 10, scope: !4940)
!4951 = !DILocation(line: 774, column: 3, scope: !4940)
!4952 = distinct !DISubprogram(name: "gimple_vuse_op", scope: !1281, file: !1281, line: 1334, type: !4953, scopeLine: 1335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4955)
!4953 = !DISubroutineType(types: !4954)
!4954 = !{!2672, !3824}
!4955 = !{!4956, !4957}
!4956 = !DILocalVariable(name: "g", arg: 1, scope: !4952, file: !1281, line: 1334, type: !3824)
!4957 = !DILocalVariable(name: "ops", scope: !4952, file: !1281, line: 1336, type: !2020)
!4958 = !DILocation(line: 0, scope: !4952)
!4959 = !DILocation(line: 1337, column: 8, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4952, file: !1281, line: 1337, column: 7)
!4961 = !DILocation(line: 1337, column: 7, scope: !4952)
!4962 = !DILocation(line: 1339, column: 25, scope: !4952)
!4963 = !DILocation(line: 1340, column: 7, scope: !4964)
!4964 = distinct !DILexicalBlock(scope: !4952, file: !1281, line: 1340, column: 7)
!4965 = !DILocation(line: 1341, column: 7, scope: !4964)
!4966 = !DILocation(line: 1341, column: 28, scope: !4964)
!4967 = !DILocation(line: 1341, column: 49, scope: !4964)
!4968 = !DILocation(line: 1341, column: 32, scope: !4964)
!4969 = !DILocation(line: 1342, column: 12, scope: !4964)
!4970 = !DILocation(line: 1340, column: 7, scope: !4952)
!4971 = !DILocation(line: 1344, column: 1, scope: !4952)
!4972 = distinct !DISubprogram(name: "gimple_phi_result", scope: !1281, file: !1281, line: 3071, type: !3847, scopeLine: 3072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4973)
!4973 = !{!4974}
!4974 = !DILocalVariable(name: "gs", arg: 1, scope: !4972, file: !1281, line: 3071, type: !3824)
!4975 = !DILocation(line: 0, scope: !4972)
!4976 = !DILocation(line: 3074, column: 25, scope: !4972)
!4977 = !DILocation(line: 3074, column: 3, scope: !4972)
!4978 = distinct !DISubprogram(name: "clear_and_done_ssa_iter", scope: !3732, file: !3732, line: 729, type: !4979, scopeLine: 730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4981)
!4979 = !DISubroutineType(types: !4980)
!4980 = !{null, !4508}
!4981 = !{!4982}
!4982 = !DILocalVariable(name: "ptr", arg: 1, scope: !4978, file: !3732, line: 729, type: !4508)
!4983 = !DILocation(line: 0, scope: !4978)
!4984 = !DILocation(line: 731, column: 8, scope: !4978)
!4985 = !DILocation(line: 731, column: 13, scope: !4978)
!4986 = !DILocation(line: 732, column: 8, scope: !4978)
!4987 = !DILocation(line: 732, column: 13, scope: !4978)
!4988 = !DILocation(line: 733, column: 8, scope: !4978)
!4989 = !DILocation(line: 733, column: 18, scope: !4978)
!4990 = !DILocation(line: 734, column: 8, scope: !4978)
!4991 = !DILocation(line: 734, column: 14, scope: !4978)
!4992 = !DILocation(line: 735, column: 8, scope: !4978)
!4993 = !DILocation(line: 735, column: 16, scope: !4978)
!4994 = !DILocation(line: 736, column: 8, scope: !4978)
!4995 = !DILocation(line: 736, column: 17, scope: !4978)
!4996 = !DILocation(line: 737, column: 8, scope: !4978)
!4997 = !DILocation(line: 737, column: 13, scope: !4978)
!4998 = !DILocation(line: 738, column: 1, scope: !4978)
!4999 = distinct !DISubprogram(name: "gimple_phi_num_args", scope: !1281, file: !1281, line: 3061, type: !4709, scopeLine: 3062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5000)
!5000 = !{!5001}
!5001 = !DILocalVariable(name: "gs", arg: 1, scope: !4999, file: !1281, line: 3061, type: !3824)
!5002 = !DILocation(line: 0, scope: !4999)
!5003 = !DILocation(line: 3064, column: 25, scope: !4999)
!5004 = !DILocation(line: 3064, column: 3, scope: !4999)
!5005 = distinct !DISubprogram(name: "gimple_phi_arg_imm_use_ptr", scope: !3732, file: !3732, line: 442, type: !5006, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5008)
!5006 = !DISubroutineType(types: !5007)
!5007 = !{!2672, !1410, !1361}
!5008 = !{!5009, !5010}
!5009 = !DILocalVariable(name: "gs", arg: 1, scope: !5005, file: !3732, line: 442, type: !1410)
!5010 = !DILocalVariable(name: "i", arg: 2, scope: !5005, file: !3732, line: 442, type: !1361)
!5011 = !DILocation(line: 0, scope: !5005)
!5012 = !DILocation(line: 444, column: 11, scope: !5005)
!5013 = !DILocation(line: 444, column: 35, scope: !5005)
!5014 = !DILocation(line: 444, column: 3, scope: !5005)
!5015 = distinct !DISubprogram(name: "gimple_phi_arg", scope: !1281, file: !1281, line: 3100, type: !5016, scopeLine: 3101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5019)
!5016 = !DISubroutineType(types: !5017)
!5017 = !{!5018, !1410, !7}
!5018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!5019 = !{!5020, !5021}
!5020 = !DILocalVariable(name: "gs", arg: 1, scope: !5015, file: !1281, line: 3100, type: !1410)
!5021 = !DILocalVariable(name: "index", arg: 2, scope: !5015, file: !1281, line: 3100, type: !7)
!5022 = !DILocation(line: 0, scope: !5015)
!5023 = !DILocation(line: 3103, column: 3, scope: !5015)
!5024 = !DILocation(line: 3104, column: 12, scope: !5015)
!5025 = !DILocation(line: 3104, column: 3, scope: !5015)
!5026 = distinct !DISubprogram(name: "gimple_call_arg", scope: !1281, file: !1281, line: 2025, type: !4717, scopeLine: 2026, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5027)
!5027 = !{!5028, !5029}
!5028 = !DILocalVariable(name: "gs", arg: 1, scope: !5026, file: !1281, line: 2025, type: !3824)
!5029 = !DILocalVariable(name: "index", arg: 2, scope: !5026, file: !1281, line: 2025, type: !7)
!5030 = !DILocation(line: 0, scope: !5026)
!5031 = !DILocation(line: 2028, column: 10, scope: !5026)
!5032 = !DILocation(line: 2028, column: 3, scope: !5026)
!5033 = distinct !DISubprogram(name: "execute_cse_sincos_1", scope: !3, file: !3, line: 644, type: !5034, scopeLine: 645, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5036)
!5034 = !DISubroutineType(types: !5035)
!5035 = !{null, !1435}
!5036 = !{!5037, !5038, !5039, !5040, !5041, !5042, !5043, !5044, !5045, !5046, !5047, !5048, !5049, !5050, !5051, !5052}
!5037 = !DILocalVariable(name: "name", arg: 1, scope: !5033, file: !3, line: 644, type: !1435)
!5038 = !DILocalVariable(name: "gsi", scope: !5033, file: !3, line: 646, type: !3200)
!5039 = !DILocalVariable(name: "use_iter", scope: !5033, file: !3, line: 647, type: !3227)
!5040 = !DILocalVariable(name: "fndecl", scope: !5033, file: !3, line: 648, type: !1435)
!5041 = !DILocalVariable(name: "res", scope: !5033, file: !3, line: 648, type: !1435)
!5042 = !DILocalVariable(name: "type", scope: !5033, file: !3, line: 648, type: !1435)
!5043 = !DILocalVariable(name: "def_stmt", scope: !5033, file: !3, line: 649, type: !1410)
!5044 = !DILocalVariable(name: "use_stmt", scope: !5033, file: !3, line: 649, type: !1410)
!5045 = !DILocalVariable(name: "stmt", scope: !5033, file: !3, line: 649, type: !1410)
!5046 = !DILocalVariable(name: "seen_cos", scope: !5033, file: !3, line: 650, type: !1361)
!5047 = !DILocalVariable(name: "seen_sin", scope: !5033, file: !3, line: 650, type: !1361)
!5048 = !DILocalVariable(name: "seen_cexpi", scope: !5033, file: !3, line: 650, type: !1361)
!5049 = !DILocalVariable(name: "stmts", scope: !5033, file: !3, line: 651, type: !2677)
!5050 = !DILocalVariable(name: "top_bb", scope: !5033, file: !3, line: 652, type: !1372)
!5051 = !DILocalVariable(name: "i", scope: !5033, file: !3, line: 653, type: !1361)
!5052 = !DILocalVariable(name: "rhs", scope: !5053, file: !3, line: 715, type: !1435)
!5053 = distinct !DILexicalBlock(scope: !5054, file: !3, line: 714, column: 5)
!5054 = distinct !DILexicalBlock(scope: !5055, file: !3, line: 713, column: 3)
!5055 = distinct !DILexicalBlock(scope: !5033, file: !3, line: 713, column: 3)
!5056 = !DILocation(line: 0, scope: !5033)
!5057 = !DILocation(line: 646, column: 3, scope: !5033)
!5058 = !DILocation(line: 647, column: 3, scope: !5033)
!5059 = !DILocation(line: 649, column: 3, scope: !5033)
!5060 = !DILocation(line: 651, column: 3, scope: !5033)
!5061 = !DILocation(line: 651, column: 22, scope: !5033)
!5062 = !DILocation(line: 652, column: 3, scope: !5033)
!5063 = !DILocation(line: 652, column: 15, scope: !5033)
!5064 = !DILocation(line: 655, column: 10, scope: !5033)
!5065 = !DILocation(line: 656, column: 3, scope: !5066)
!5066 = distinct !DILexicalBlock(scope: !5033, file: !3, line: 656, column: 3)
!5067 = !DILocation(line: 0, scope: !5066)
!5068 = !DILocation(line: 650, column: 21, scope: !5033)
!5069 = !DILocation(line: 650, column: 7, scope: !5033)
!5070 = !DILocation(line: 650, column: 35, scope: !5033)
!5071 = !DILocation(line: 656, column: 3, scope: !5072)
!5072 = distinct !DILexicalBlock(scope: !5066, file: !3, line: 656, column: 3)
!5073 = !DILocation(line: 658, column: 11, scope: !5074)
!5074 = distinct !DILexicalBlock(scope: !5075, file: !3, line: 658, column: 11)
!5075 = distinct !DILexicalBlock(scope: !5072, file: !3, line: 657, column: 5)
!5076 = !DILocation(line: 658, column: 34, scope: !5074)
!5077 = !DILocation(line: 659, column: 4, scope: !5074)
!5078 = !DILocation(line: 659, column: 25, scope: !5074)
!5079 = !DILocation(line: 659, column: 8, scope: !5074)
!5080 = !DILocation(line: 660, column: 4, scope: !5074)
!5081 = !DILocation(line: 660, column: 38, scope: !5074)
!5082 = !DILocation(line: 660, column: 18, scope: !5074)
!5083 = !DILocation(line: 660, column: 16, scope: !5074)
!5084 = !DILocation(line: 661, column: 4, scope: !5074)
!5085 = !DILocation(line: 661, column: 7, scope: !5074)
!5086 = !DILocation(line: 661, column: 36, scope: !5074)
!5087 = !DILocation(line: 658, column: 11, scope: !5075)
!5088 = !DILocation(line: 664, column: 15, scope: !5075)
!5089 = !DILocation(line: 664, column: 7, scope: !5075)
!5090 = !DILocation(line: 667, column: 54, scope: !5091)
!5091 = distinct !DILexicalBlock(scope: !5075, file: !3, line: 665, column: 2)
!5092 = !DILocation(line: 667, column: 16, scope: !5091)
!5093 = !DILocation(line: 667, column: 13, scope: !5091)
!5094 = !DILocation(line: 668, column: 4, scope: !5091)
!5095 = !DILocation(line: 671, column: 54, scope: !5091)
!5096 = !DILocation(line: 671, column: 16, scope: !5091)
!5097 = !DILocation(line: 671, column: 13, scope: !5091)
!5098 = !DILocation(line: 672, column: 4, scope: !5091)
!5099 = !DILocation(line: 675, column: 56, scope: !5091)
!5100 = !DILocation(line: 675, column: 18, scope: !5091)
!5101 = !DILocation(line: 675, column: 15, scope: !5091)
!5102 = !DILocation(line: 676, column: 4, scope: !5091)
!5103 = distinct !{!5103, !5065, !5104}
!5104 = !DILocation(line: 680, column: 5, scope: !5066)
!5105 = !DILocation(line: 682, column: 16, scope: !5106)
!5106 = distinct !DILexicalBlock(scope: !5033, file: !3, line: 682, column: 7)
!5107 = !DILocation(line: 682, column: 27, scope: !5106)
!5108 = !DILocation(line: 682, column: 40, scope: !5106)
!5109 = !DILocation(line: 682, column: 7, scope: !5033)
!5110 = !DILocation(line: 684, column: 7, scope: !5111)
!5111 = distinct !DILexicalBlock(scope: !5106, file: !3, line: 683, column: 5)
!5112 = !DILocation(line: 685, column: 7, scope: !5111)
!5113 = !DILocation(line: 690, column: 12, scope: !5033)
!5114 = !DILocation(line: 691, column: 8, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !5033, file: !3, line: 691, column: 7)
!5116 = !DILocation(line: 691, column: 7, scope: !5033)
!5117 = !DILocation(line: 693, column: 27, scope: !5033)
!5118 = !DILocation(line: 693, column: 9, scope: !5033)
!5119 = !DILocation(line: 694, column: 10, scope: !5033)
!5120 = !DILocation(line: 695, column: 3, scope: !5033)
!5121 = !DILocation(line: 697, column: 14, scope: !5033)
!5122 = !DILocation(line: 698, column: 8, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !5033, file: !3, line: 698, column: 7)
!5124 = !DILocation(line: 699, column: 7, scope: !5123)
!5125 = !DILocation(line: 699, column: 10, scope: !5123)
!5126 = !DILocation(line: 699, column: 33, scope: !5123)
!5127 = !DILocation(line: 700, column: 7, scope: !5123)
!5128 = !DILocation(line: 700, column: 10, scope: !5123)
!5129 = !DILocation(line: 700, column: 34, scope: !5123)
!5130 = !DILocation(line: 700, column: 31, scope: !5123)
!5131 = !DILocation(line: 698, column: 7, scope: !5033)
!5132 = !DILocation(line: 702, column: 13, scope: !5133)
!5133 = distinct !DILexicalBlock(scope: !5123, file: !3, line: 701, column: 5)
!5134 = !DILocation(line: 703, column: 7, scope: !5133)
!5135 = !DILocation(line: 704, column: 5, scope: !5133)
!5136 = !DILocation(line: 707, column: 13, scope: !5137)
!5137 = distinct !DILexicalBlock(scope: !5123, file: !3, line: 706, column: 5)
!5138 = !DILocation(line: 707, column: 31, scope: !5137)
!5139 = !DILocation(line: 708, column: 7, scope: !5137)
!5140 = !DILocation(line: 710, column: 3, scope: !5033)
!5141 = !DILocation(line: 0, scope: !5053)
!5142 = !DILocation(line: 713, column: 8, scope: !5055)
!5143 = !DILocation(line: 0, scope: !5055)
!5144 = !DILocation(line: 713, column: 15, scope: !5054)
!5145 = !DILocation(line: 713, column: 3, scope: !5055)
!5146 = !DILocation(line: 716, column: 36, scope: !5053)
!5147 = !DILocation(line: 716, column: 16, scope: !5053)
!5148 = !DILocation(line: 718, column: 15, scope: !5053)
!5149 = !DILocation(line: 718, column: 7, scope: !5053)
!5150 = !DILocation(line: 721, column: 10, scope: !5151)
!5151 = distinct !DILexicalBlock(scope: !5053, file: !3, line: 719, column: 2)
!5152 = !DILocation(line: 722, column: 4, scope: !5151)
!5153 = !DILocation(line: 725, column: 10, scope: !5151)
!5154 = !DILocation(line: 726, column: 4, scope: !5151)
!5155 = !DILocation(line: 733, column: 4, scope: !5151)
!5156 = !DILocation(line: 734, column: 2, scope: !5151)
!5157 = !DILocation(line: 737, column: 9, scope: !5053)
!5158 = !DILocation(line: 739, column: 8, scope: !5053)
!5159 = !DILocation(line: 739, column: 22, scope: !5053)
!5160 = !DILocation(line: 740, column: 2, scope: !5053)
!5161 = !DILocation(line: 741, column: 2, scope: !5053)
!5162 = !DILocation(line: 713, column: 56, scope: !5054)
!5163 = !DILocation(line: 713, column: 3, scope: !5054)
!5164 = distinct !{!5164, !5145, !5165}
!5165 = !DILocation(line: 742, column: 5, scope: !5055)
!5166 = !DILocation(line: 744, column: 3, scope: !5033)
!5167 = !DILocation(line: 745, column: 1, scope: !5033)
!5168 = distinct !DISubprogram(name: "maybe_record_sincos", scope: !3, file: !3, line: 615, type: !5169, scopeLine: 617, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5173)
!5169 = !DISubroutineType(types: !5170)
!5170 = !{!1360, !5171, !5172, !1410}
!5171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!5172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!5173 = !{!5174, !5175, !5176, !5177}
!5174 = !DILocalVariable(name: "stmts", arg: 1, scope: !5168, file: !3, line: 615, type: !5171)
!5175 = !DILocalVariable(name: "top_bb", arg: 2, scope: !5168, file: !3, line: 616, type: !5172)
!5176 = !DILocalVariable(name: "use_stmt", arg: 3, scope: !5168, file: !3, line: 616, type: !1410)
!5177 = !DILocalVariable(name: "use_bb", scope: !5168, file: !3, line: 618, type: !1372)
!5178 = !DILocation(line: 0, scope: !5168)
!5179 = !DILocation(line: 618, column: 24, scope: !5168)
!5180 = !DILocation(line: 619, column: 7, scope: !5181)
!5181 = distinct !DILexicalBlock(scope: !5168, file: !3, line: 619, column: 7)
!5182 = !DILocation(line: 620, column: 7, scope: !5181)
!5183 = !DILocation(line: 620, column: 19, scope: !5181)
!5184 = !DILocation(line: 621, column: 4, scope: !5181)
!5185 = !DILocation(line: 621, column: 7, scope: !5181)
!5186 = !DILocation(line: 619, column: 7, scope: !5168)
!5187 = !DILocation(line: 623, column: 13, scope: !5188)
!5188 = distinct !DILexicalBlock(scope: !5181, file: !3, line: 623, column: 12)
!5189 = !DILocation(line: 622, column: 5, scope: !5181)
!5190 = !DILocation(line: 624, column: 5, scope: !5188)
!5191 = !DILocation(line: 624, column: 8, scope: !5188)
!5192 = !DILocation(line: 623, column: 12, scope: !5181)
!5193 = !DILocation(line: 626, column: 7, scope: !5194)
!5194 = distinct !DILexicalBlock(scope: !5188, file: !3, line: 625, column: 5)
!5195 = !DILocation(line: 627, column: 15, scope: !5194)
!5196 = !DILocation(line: 633, column: 1, scope: !5168)
!5197 = distinct !DISubprogram(name: "VEC_gimple_heap_free", scope: !1281, file: !1281, line: 34, type: !5198, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5200)
!5198 = !DISubroutineType(types: !5199)
!5199 = !{null, !5171}
!5200 = !{!5201}
!5201 = !DILocalVariable(name: "vec_", arg: 1, scope: !5197, file: !1281, line: 34, type: !5171)
!5202 = !DILocation(line: 0, scope: !5197)
!5203 = !DILocation(line: 34, column: 1, scope: !5204)
!5204 = distinct !DILexicalBlock(scope: !5197, file: !1281, line: 34, column: 1)
!5205 = !DILocation(line: 34, column: 1, scope: !5197)
!5206 = distinct !DISubprogram(name: "gimple_call_set_lhs", scope: !1281, file: !1281, line: 1898, type: !3948, scopeLine: 1899, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5207)
!5207 = !{!5208, !5209}
!5208 = !DILocalVariable(name: "gs", arg: 1, scope: !5206, file: !1281, line: 1898, type: !1410)
!5209 = !DILocalVariable(name: "lhs", arg: 2, scope: !5206, file: !1281, line: 1898, type: !1435)
!5210 = !DILocation(line: 0, scope: !5206)
!5211 = !DILocation(line: 1901, column: 3, scope: !5206)
!5212 = !DILocation(line: 1902, column: 7, scope: !5213)
!5213 = distinct !DILexicalBlock(scope: !5206, file: !1281, line: 1902, column: 7)
!5214 = !DILocation(line: 1902, column: 11, scope: !5213)
!5215 = !DILocation(line: 1902, column: 14, scope: !5213)
!5216 = !DILocation(line: 1902, column: 30, scope: !5213)
!5217 = !DILocation(line: 1902, column: 7, scope: !5206)
!5218 = !DILocation(line: 1903, column: 5, scope: !5213)
!5219 = !DILocation(line: 1903, column: 29, scope: !5213)
!5220 = !DILocation(line: 1904, column: 1, scope: !5206)
!5221 = distinct !DISubprogram(name: "VEC_gimple_base_iterate", scope: !1281, file: !1281, line: 33, type: !5222, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5227)
!5222 = !DISubroutineType(types: !5223)
!5223 = !{!1361, !5224, !7, !5226}
!5224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5225, size: 64)
!5225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1958)
!5226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!5227 = !{!5228, !5229, !5230}
!5228 = !DILocalVariable(name: "vec_", arg: 1, scope: !5221, file: !1281, line: 33, type: !5224)
!5229 = !DILocalVariable(name: "ix_", arg: 2, scope: !5221, file: !1281, line: 33, type: !7)
!5230 = !DILocalVariable(name: "ptr", arg: 3, scope: !5221, file: !1281, line: 33, type: !5226)
!5231 = !DILocation(line: 0, scope: !5221)
!5232 = !DILocation(line: 33, column: 1, scope: !5233)
!5233 = distinct !DILexicalBlock(scope: !5221, file: !1281, line: 33, column: 1)
!5234 = !DILocation(line: 33, column: 1, scope: !5221)
!5235 = !DILocation(line: 33, column: 1, scope: !5236)
!5236 = distinct !DILexicalBlock(scope: !5233, file: !1281, line: 33, column: 1)
!5237 = !DILocation(line: 33, column: 1, scope: !5238)
!5238 = distinct !DILexicalBlock(scope: !5233, file: !1281, line: 33, column: 1)
!5239 = !DILocation(line: 0, scope: !5233)
!5240 = distinct !DISubprogram(name: "VEC_gimple_heap_safe_push", scope: !1281, file: !1281, line: 34, type: !5241, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5243)
!5241 = !DISubroutineType(types: !5242)
!5242 = !{!5226, !5171, !1410}
!5243 = !{!5244, !5245}
!5244 = !DILocalVariable(name: "vec_", arg: 1, scope: !5240, file: !1281, line: 34, type: !5171)
!5245 = !DILocalVariable(name: "obj_", arg: 2, scope: !5240, file: !1281, line: 34, type: !1410)
!5246 = !DILocation(line: 0, scope: !5240)
!5247 = !DILocation(line: 34, column: 1, scope: !5240)
!5248 = distinct !DISubprogram(name: "VEC_gimple_heap_reserve", scope: !1281, file: !1281, line: 34, type: !5249, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5251)
!5249 = !DISubroutineType(types: !5250)
!5250 = !{!1361, !5171, !1361}
!5251 = !{!5252, !5253, !5254}
!5252 = !DILocalVariable(name: "vec_", arg: 1, scope: !5248, file: !1281, line: 34, type: !5171)
!5253 = !DILocalVariable(name: "alloc_", arg: 2, scope: !5248, file: !1281, line: 34, type: !1361)
!5254 = !DILocalVariable(name: "extend", scope: !5248, file: !1281, line: 34, type: !1361)
!5255 = !DILocation(line: 0, scope: !5248)
!5256 = !DILocation(line: 34, column: 1, scope: !5248)
!5257 = !DILocation(line: 34, column: 1, scope: !5258)
!5258 = distinct !DILexicalBlock(scope: !5248, file: !1281, line: 34, column: 1)
!5259 = distinct !DISubprogram(name: "VEC_gimple_base_quick_push", scope: !1281, file: !1281, line: 33, type: !5260, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5263)
!5260 = !DISubroutineType(types: !5261)
!5261 = !{!5226, !5262, !1410}
!5262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!5263 = !{!5264, !5265, !5266}
!5264 = !DILocalVariable(name: "vec_", arg: 1, scope: !5259, file: !1281, line: 33, type: !5262)
!5265 = !DILocalVariable(name: "obj_", arg: 2, scope: !5259, file: !1281, line: 33, type: !1410)
!5266 = !DILocalVariable(name: "slot_", scope: !5259, file: !1281, line: 33, type: !5226)
!5267 = !DILocation(line: 0, scope: !5259)
!5268 = !DILocation(line: 33, column: 1, scope: !5259)
!5269 = distinct !DISubprogram(name: "VEC_gimple_base_space", scope: !1281, file: !1281, line: 33, type: !5270, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5272)
!5270 = !DISubroutineType(types: !5271)
!5271 = !{!1361, !5262, !1361}
!5272 = !{!5273, !5274}
!5273 = !DILocalVariable(name: "vec_", arg: 1, scope: !5269, file: !1281, line: 33, type: !5262)
!5274 = !DILocalVariable(name: "alloc_", arg: 2, scope: !5269, file: !1281, line: 33, type: !1361)
!5275 = !DILocation(line: 0, scope: !5269)
!5276 = !DILocation(line: 33, column: 1, scope: !5269)
!5277 = distinct !DISubprogram(name: "gimple_expr_type", scope: !1281, file: !1281, line: 4366, type: !3847, scopeLine: 4367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5278)
!5278 = !{!5279, !5280, !5281}
!5279 = !DILocalVariable(name: "stmt", arg: 1, scope: !5277, file: !1281, line: 4366, type: !3824)
!5280 = !DILocalVariable(name: "code", scope: !5277, file: !1281, line: 4368, type: !1280)
!5281 = !DILocalVariable(name: "type", scope: !5282, file: !1281, line: 4372, type: !1435)
!5282 = distinct !DILexicalBlock(scope: !5283, file: !1281, line: 4371, column: 5)
!5283 = distinct !DILexicalBlock(scope: !5277, file: !1281, line: 4370, column: 7)
!5284 = !DILocation(line: 0, scope: !5277)
!5285 = !DILocation(line: 4368, column: 27, scope: !5277)
!5286 = !DILocation(line: 4370, column: 29, scope: !5283)
!5287 = !DILocation(line: 4378, column: 9, scope: !5288)
!5288 = distinct !DILexicalBlock(scope: !5282, file: !1281, line: 4377, column: 11)
!5289 = !DILocation(line: 0, scope: !5282)
!5290 = !DILocation(line: 4378, column: 2, scope: !5288)
!5291 = !DILocation(line: 4380, column: 10, scope: !5288)
!5292 = !DILocation(line: 4380, column: 2, scope: !5288)
!5293 = !DILocation(line: 4383, column: 13, scope: !5294)
!5294 = distinct !DILexicalBlock(scope: !5288, file: !1281, line: 4381, column: 4)
!5295 = !DILocation(line: 4384, column: 6, scope: !5294)
!5296 = !DILocation(line: 4388, column: 13, scope: !5294)
!5297 = !DILocation(line: 4389, column: 6, scope: !5294)
!5298 = !DILocation(line: 4394, column: 12, scope: !5299)
!5299 = distinct !DILexicalBlock(scope: !5283, file: !1281, line: 4393, column: 12)
!5300 = !DILocation(line: 4394, column: 5, scope: !5299)
!5301 = !DILocation(line: 4396, column: 12, scope: !5299)
!5302 = !DILocation(line: 4396, column: 5, scope: !5299)
!5303 = !DILocation(line: 0, scope: !5283)
!5304 = !DILocation(line: 4397, column: 1, scope: !5277)
!5305 = distinct !DISubprogram(name: "find_bswap", scope: !3, file: !3, line: 1055, type: !5306, scopeLine: 1056, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5308)
!5306 = !DISubroutineType(types: !5307)
!5307 = !{!1435, !1410}
!5308 = !{!5309, !5310, !5311, !5316, !5317}
!5309 = !DILocalVariable(name: "stmt", arg: 1, scope: !5305, file: !3, line: 1055, type: !1410)
!5310 = !DILocalVariable(name: "cmp", scope: !5305, file: !3, line: 1060, type: !1488)
!5311 = !DILocalVariable(name: "n", scope: !5305, file: !3, line: 1064, type: !5312)
!5312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "symbolic_number", file: !3, line: 830, size: 128, elements: !5313)
!5313 = !{!5314, !5315}
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !5312, file: !3, line: 831, baseType: !1488, size: 64)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5312, file: !3, line: 832, baseType: !1361, size: 32, offset: 64)
!5316 = !DILocalVariable(name: "source_expr", scope: !5305, file: !3, line: 1065, type: !1435)
!5317 = !DILocalVariable(name: "mask", scope: !5318, file: !3, line: 1082, type: !1488)
!5318 = distinct !DILexicalBlock(scope: !5319, file: !3, line: 1081, column: 5)
!5319 = distinct !DILexicalBlock(scope: !5305, file: !3, line: 1080, column: 7)
!5320 = !DILocation(line: 0, scope: !5305)
!5321 = !DILocation(line: 1064, column: 3, scope: !5305)
!5322 = !DILocation(line: 1073, column: 11, scope: !5305)
!5323 = !DILocation(line: 1072, column: 18, scope: !5305)
!5324 = !DILocation(line: 1076, column: 8, scope: !5325)
!5325 = distinct !DILexicalBlock(scope: !5305, file: !3, line: 1076, column: 7)
!5326 = !DILocation(line: 1076, column: 7, scope: !5305)
!5327 = !DILocation(line: 1080, column: 9, scope: !5319)
!5328 = !DILocation(line: 1080, column: 14, scope: !5319)
!5329 = !DILocation(line: 1080, column: 7, scope: !5305)
!5330 = !DILocation(line: 0, scope: !5331)
!5331 = distinct !DILexicalBlock(scope: !5305, file: !3, line: 1091, column: 7)
!5332 = !DILocation(line: 1091, column: 16, scope: !5331)
!5333 = !DILocation(line: 1083, column: 42, scope: !5318)
!5334 = !DILocation(line: 1083, column: 31, scope: !5318)
!5335 = !DILocation(line: 1083, column: 60, scope: !5318)
!5336 = !DILocation(line: 0, scope: !5318)
!5337 = !DILocation(line: 1085, column: 9, scope: !5318)
!5338 = !DILocation(line: 1085, column: 11, scope: !5318)
!5339 = !DILocation(line: 1086, column: 43, scope: !5318)
!5340 = !DILocation(line: 1086, column: 51, scope: !5318)
!5341 = !DILocation(line: 1086, column: 11, scope: !5318)
!5342 = !DILocation(line: 1087, column: 5, scope: !5318)
!5343 = !DILocation(line: 1091, column: 11, scope: !5331)
!5344 = !DILocation(line: 1095, column: 1, scope: !5305)
!5345 = distinct !DISubprogram(name: "make_ssa_name", scope: !3732, file: !3732, line: 1245, type: !5346, scopeLine: 1246, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5348)
!5346 = !DISubroutineType(types: !5347)
!5347 = !{!1435, !1435, !1410}
!5348 = !{!5349, !5350}
!5349 = !DILocalVariable(name: "var", arg: 1, scope: !5345, file: !3732, line: 1245, type: !1435)
!5350 = !DILocalVariable(name: "stmt", arg: 2, scope: !5345, file: !3732, line: 1245, type: !1410)
!5351 = !DILocation(line: 0, scope: !5345)
!5352 = !DILocation(line: 1247, column: 28, scope: !5345)
!5353 = !DILocation(line: 1247, column: 10, scope: !5345)
!5354 = !DILocation(line: 1247, column: 3, scope: !5345)
!5355 = distinct !DISubprogram(name: "gimple_assign_lhs", scope: !1281, file: !1281, line: 1694, type: !3847, scopeLine: 1695, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5356)
!5356 = !{!5357}
!5357 = !DILocalVariable(name: "gs", arg: 1, scope: !5355, file: !1281, line: 1694, type: !3824)
!5358 = !DILocation(line: 0, scope: !5355)
!5359 = !DILocation(line: 1697, column: 10, scope: !5355)
!5360 = !DILocation(line: 1697, column: 3, scope: !5355)
!5361 = distinct !DISubprogram(name: "gimple_call_return_type", scope: !1281, file: !1281, line: 1966, type: !3847, scopeLine: 1967, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5362)
!5362 = !{!5363, !5364, !5365}
!5363 = !DILocalVariable(name: "gs", arg: 1, scope: !5361, file: !1281, line: 1966, type: !3824)
!5364 = !DILocalVariable(name: "fn", scope: !5361, file: !1281, line: 1968, type: !1435)
!5365 = !DILocalVariable(name: "type", scope: !5361, file: !1281, line: 1969, type: !1435)
!5366 = !DILocation(line: 0, scope: !5361)
!5367 = !DILocation(line: 1968, column: 13, scope: !5361)
!5368 = !DILocation(line: 1969, column: 15, scope: !5361)
!5369 = !DILocation(line: 1972, column: 10, scope: !5361)
!5370 = !DILocation(line: 1976, column: 10, scope: !5361)
!5371 = !DILocation(line: 1976, column: 3, scope: !5361)
!5372 = distinct !DISubprogram(name: "find_bswap_1", scope: !3, file: !3, line: 897, type: !5373, scopeLine: 898, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5376)
!5373 = !DISubroutineType(types: !5374)
!5374 = !{!1435, !1410, !5375, !1361}
!5375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5312, size: 64)
!5376 = !{!5377, !5378, !5379, !5380, !5381, !5382, !5383, !5384, !5385, !5386, !5387, !5392, !5393, !5394, !5396, !5399, !5400}
!5377 = !DILocalVariable(name: "stmt", arg: 1, scope: !5372, file: !3, line: 897, type: !1410)
!5378 = !DILocalVariable(name: "n", arg: 2, scope: !5372, file: !3, line: 897, type: !5375)
!5379 = !DILocalVariable(name: "limit", arg: 3, scope: !5372, file: !3, line: 897, type: !1361)
!5380 = !DILocalVariable(name: "code", scope: !5372, file: !3, line: 899, type: !366)
!5381 = !DILocalVariable(name: "rhs1", scope: !5372, file: !3, line: 900, type: !1435)
!5382 = !DILocalVariable(name: "rhs2", scope: !5372, file: !3, line: 900, type: !1435)
!5383 = !DILocalVariable(name: "rhs1_stmt", scope: !5372, file: !3, line: 901, type: !1410)
!5384 = !DILocalVariable(name: "rhs2_stmt", scope: !5372, file: !3, line: 901, type: !1410)
!5385 = !DILocalVariable(name: "source_expr1", scope: !5372, file: !3, line: 902, type: !1435)
!5386 = !DILocalVariable(name: "rhs_class", scope: !5372, file: !3, line: 903, type: !1326)
!5387 = !DILocalVariable(name: "i", scope: !5388, file: !3, line: 964, type: !1361)
!5388 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 963, column: 4)
!5389 = distinct !DILexicalBlock(scope: !5390, file: !3, line: 961, column: 2)
!5390 = distinct !DILexicalBlock(scope: !5391, file: !3, line: 926, column: 5)
!5391 = distinct !DILexicalBlock(scope: !5372, file: !3, line: 923, column: 7)
!5392 = !DILocalVariable(name: "val", scope: !5388, file: !3, line: 965, type: !1488)
!5393 = !DILocalVariable(name: "tmp", scope: !5388, file: !3, line: 966, type: !1488)
!5394 = !DILocalVariable(name: "type_size", scope: !5395, file: !3, line: 985, type: !1361)
!5395 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 984, column: 4)
!5396 = !DILocalVariable(name: "n1", scope: !5397, file: !3, line: 1010, type: !5312)
!5397 = distinct !DILexicalBlock(scope: !5398, file: !3, line: 1009, column: 5)
!5398 = distinct !DILexicalBlock(scope: !5372, file: !3, line: 1008, column: 7)
!5399 = !DILocalVariable(name: "n2", scope: !5397, file: !3, line: 1010, type: !5312)
!5400 = !DILocalVariable(name: "source_expr2", scope: !5397, file: !3, line: 1011, type: !1435)
!5401 = !DILocation(line: 0, scope: !5372)
!5402 = !DILocation(line: 905, column: 8, scope: !5403)
!5403 = distinct !DILexicalBlock(scope: !5372, file: !3, line: 905, column: 7)
!5404 = !DILocation(line: 905, column: 14, scope: !5403)
!5405 = !DILocation(line: 905, column: 18, scope: !5403)
!5406 = !DILocation(line: 905, column: 7, scope: !5372)
!5407 = !DILocation(line: 908, column: 10, scope: !5372)
!5408 = !DILocation(line: 910, column: 7, scope: !5409)
!5409 = distinct !DILexicalBlock(scope: !5372, file: !3, line: 910, column: 7)
!5410 = !DILocation(line: 910, column: 24, scope: !5409)
!5411 = !DILocation(line: 910, column: 7, scope: !5372)
!5412 = !DILocation(line: 913, column: 10, scope: !5372)
!5413 = !DILocation(line: 914, column: 15, scope: !5372)
!5414 = !DILocation(line: 915, column: 15, scope: !5372)
!5415 = !DILocation(line: 917, column: 17, scope: !5416)
!5416 = distinct !DILexicalBlock(scope: !5372, file: !3, line: 917, column: 7)
!5417 = !DILocation(line: 917, column: 7, scope: !5372)
!5418 = !DILocation(line: 918, column: 12, scope: !5416)
!5419 = !DILocation(line: 918, column: 5, scope: !5416)
!5420 = !DILocation(line: 924, column: 7, scope: !5391)
!5421 = !DILocation(line: 925, column: 7, scope: !5391)
!5422 = !DILocation(line: 925, column: 24, scope: !5391)
!5423 = !DILocation(line: 923, column: 7, scope: !5372)
!5424 = !DILocation(line: 928, column: 4, scope: !5425)
!5425 = distinct !DILexicalBlock(scope: !5390, file: !3, line: 927, column: 11)
!5426 = !DILocation(line: 936, column: 56, scope: !5390)
!5427 = !DILocation(line: 936, column: 22, scope: !5390)
!5428 = !DILocation(line: 940, column: 12, scope: !5429)
!5429 = distinct !DILexicalBlock(scope: !5390, file: !3, line: 940, column: 11)
!5430 = !DILocation(line: 940, column: 11, scope: !5390)
!5431 = !DILocation(line: 946, column: 14, scope: !5432)
!5432 = distinct !DILexicalBlock(scope: !5429, file: !3, line: 941, column: 2)
!5433 = !DILocation(line: 946, column: 7, scope: !5432)
!5434 = !DILocation(line: 946, column: 12, scope: !5432)
!5435 = !DILocation(line: 947, column: 16, scope: !5436)
!5436 = distinct !DILexicalBlock(scope: !5432, file: !3, line: 947, column: 8)
!5437 = !DILocation(line: 947, column: 32, scope: !5436)
!5438 = !DILocation(line: 947, column: 8, scope: !5432)
!5439 = !DILocation(line: 949, column: 12, scope: !5432)
!5440 = !DILocation(line: 950, column: 7, scope: !5432)
!5441 = !DILocation(line: 950, column: 9, scope: !5432)
!5442 = !DILocation(line: 953, column: 16, scope: !5443)
!5443 = distinct !DILexicalBlock(scope: !5432, file: !3, line: 953, column: 8)
!5444 = !DILocation(line: 953, column: 8, scope: !5432)
!5445 = !DILocation(line: 955, column: 17, scope: !5443)
!5446 = !DILocation(line: 954, column: 43, scope: !5443)
!5447 = !DILocation(line: 955, column: 35, scope: !5443)
!5448 = !DILocation(line: 954, column: 11, scope: !5443)
!5449 = !DILocation(line: 954, column: 6, scope: !5443)
!5450 = !DILocation(line: 0, scope: !5390)
!5451 = !DILocation(line: 960, column: 7, scope: !5390)
!5452 = !DILocation(line: 965, column: 37, scope: !5388)
!5453 = !DILocation(line: 0, scope: !5388)
!5454 = !DILocation(line: 0, scope: !5455)
!5455 = distinct !DILexicalBlock(scope: !5456, file: !3, line: 969, column: 6)
!5456 = distinct !DILexicalBlock(scope: !5388, file: !3, line: 969, column: 6)
!5457 = !DILocation(line: 969, column: 11, scope: !5456)
!5458 = !DILocation(line: 0, scope: !5456)
!5459 = !DILocation(line: 969, column: 20, scope: !5455)
!5460 = !DILocation(line: 969, column: 6, scope: !5456)
!5461 = !DILocation(line: 970, column: 17, scope: !5462)
!5462 = distinct !DILexicalBlock(scope: !5455, file: !3, line: 970, column: 12)
!5463 = !DILocation(line: 970, column: 25, scope: !5462)
!5464 = !DILocation(line: 970, column: 46, scope: !5462)
!5465 = !DILocation(line: 970, column: 30, scope: !5462)
!5466 = !DILocation(line: 969, column: 32, scope: !5455)
!5467 = !DILocation(line: 969, column: 40, scope: !5455)
!5468 = !DILocation(line: 969, column: 6, scope: !5455)
!5469 = distinct !{!5469, !5460, !5470}
!5470 = !DILocation(line: 971, column: 10, scope: !5456)
!5471 = !DILocation(line: 973, column: 9, scope: !5388)
!5472 = !DILocation(line: 973, column: 11, scope: !5388)
!5473 = !DILocation(line: 974, column: 4, scope: !5389)
!5474 = !DILocation(line: 980, column: 40, scope: !5475)
!5475 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 980, column: 8)
!5476 = !DILocation(line: 980, column: 35, scope: !5475)
!5477 = !DILocation(line: 980, column: 9, scope: !5475)
!5478 = !DILocation(line: 980, column: 8, scope: !5389)
!5479 = !DILocation(line: 987, column: 18, scope: !5395)
!5480 = !DILocation(line: 0, scope: !5395)
!5481 = !DILocation(line: 988, column: 20, scope: !5482)
!5482 = distinct !DILexicalBlock(scope: !5395, file: !3, line: 988, column: 10)
!5483 = !DILocation(line: 988, column: 36, scope: !5482)
!5484 = !DILocation(line: 988, column: 10, scope: !5395)
!5485 = !DILocation(line: 991, column: 36, scope: !5486)
!5486 = distinct !DILexicalBlock(scope: !5395, file: !3, line: 991, column: 10)
!5487 = !DILocation(line: 991, column: 10, scope: !5395)
!5488 = !DILocation(line: 995, column: 40, scope: !5489)
!5489 = distinct !DILexicalBlock(scope: !5486, file: !3, line: 992, column: 8)
!5490 = !DILocation(line: 995, column: 54, scope: !5489)
!5491 = !DILocation(line: 995, column: 6, scope: !5489)
!5492 = !DILocation(line: 995, column: 8, scope: !5489)
!5493 = !DILocation(line: 996, column: 8, scope: !5489)
!5494 = !DILocation(line: 997, column: 26, scope: !5395)
!5495 = !DILocation(line: 997, column: 9, scope: !5395)
!5496 = !DILocation(line: 997, column: 14, scope: !5395)
!5497 = !DILocation(line: 998, column: 4, scope: !5389)
!5498 = !DILocation(line: 1003, column: 14, scope: !5390)
!5499 = !DILocation(line: 1003, column: 7, scope: !5390)
!5500 = !DILocation(line: 1008, column: 7, scope: !5372)
!5501 = !DILocation(line: 1010, column: 7, scope: !5397)
!5502 = !DILocation(line: 1013, column: 16, scope: !5503)
!5503 = distinct !DILexicalBlock(scope: !5397, file: !3, line: 1013, column: 11)
!5504 = !DILocation(line: 1013, column: 11, scope: !5397)
!5505 = !DILocation(line: 1016, column: 28, scope: !5506)
!5506 = distinct !DILexicalBlock(scope: !5397, file: !3, line: 1016, column: 11)
!5507 = !DILocation(line: 1016, column: 11, scope: !5397)
!5508 = !DILocation(line: 1019, column: 19, scope: !5397)
!5509 = !DILocation(line: 1021, column: 7, scope: !5397)
!5510 = !DILocation(line: 1024, column: 55, scope: !5511)
!5511 = distinct !DILexicalBlock(scope: !5397, file: !3, line: 1022, column: 2)
!5512 = !DILocation(line: 0, scope: !5397)
!5513 = !DILocation(line: 1024, column: 19, scope: !5511)
!5514 = !DILocation(line: 1026, column: 9, scope: !5515)
!5515 = distinct !DILexicalBlock(scope: !5511, file: !3, line: 1026, column: 8)
!5516 = !DILocation(line: 1026, column: 8, scope: !5511)
!5517 = !DILocation(line: 1029, column: 19, scope: !5511)
!5518 = !DILocation(line: 1031, column: 21, scope: !5519)
!5519 = distinct !DILexicalBlock(scope: !5511, file: !3, line: 1031, column: 8)
!5520 = !DILocation(line: 1032, column: 8, scope: !5519)
!5521 = !DILocation(line: 1032, column: 14, scope: !5519)
!5522 = !DILocation(line: 1032, column: 25, scope: !5519)
!5523 = !DILocation(line: 1032, column: 19, scope: !5519)
!5524 = !DILocation(line: 1031, column: 8, scope: !5511)
!5525 = !DILocation(line: 1035, column: 7, scope: !5511)
!5526 = !DILocation(line: 1035, column: 12, scope: !5511)
!5527 = !DILocation(line: 1036, column: 14, scope: !5511)
!5528 = !DILocation(line: 1036, column: 21, scope: !5511)
!5529 = !DILocation(line: 1036, column: 16, scope: !5511)
!5530 = !DILocation(line: 1036, column: 7, scope: !5511)
!5531 = !DILocation(line: 1036, column: 9, scope: !5511)
!5532 = !DILocation(line: 1038, column: 9, scope: !5533)
!5533 = distinct !DILexicalBlock(scope: !5511, file: !3, line: 1038, column: 8)
!5534 = !DILocation(line: 1038, column: 8, scope: !5511)
!5535 = !DILocation(line: 1046, column: 5, scope: !5398)
!5536 = !DILocation(line: 1048, column: 1, scope: !5372)
!5537 = distinct !DISubprogram(name: "gimple_assign_rhs_class", scope: !1281, file: !1281, line: 1844, type: !5538, scopeLine: 1845, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5540)
!5538 = !DISubroutineType(types: !5539)
!5539 = !{!1326, !3824}
!5540 = !{!5541}
!5541 = !DILocalVariable(name: "gs", arg: 1, scope: !5537, file: !1281, line: 1844, type: !3824)
!5542 = !DILocation(line: 0, scope: !5537)
!5543 = !DILocation(line: 1846, column: 32, scope: !5537)
!5544 = !DILocation(line: 1846, column: 10, scope: !5537)
!5545 = !DILocation(line: 1846, column: 3, scope: !5537)
!5546 = distinct !DISubprogram(name: "do_shift_rotate", scope: !3, file: !3, line: 840, type: !5547, scopeLine: 843, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5549)
!5547 = !DISubroutineType(types: !5548)
!5548 = !{!1360, !366, !5375, !1361}
!5549 = !{!5550, !5551, !5552}
!5550 = !DILocalVariable(name: "code", arg: 1, scope: !5546, file: !3, line: 840, type: !366)
!5551 = !DILocalVariable(name: "n", arg: 2, scope: !5546, file: !3, line: 841, type: !5375)
!5552 = !DILocalVariable(name: "count", arg: 3, scope: !5546, file: !3, line: 842, type: !1361)
!5553 = !DILocation(line: 0, scope: !5546)
!5554 = !DILocation(line: 844, column: 17, scope: !5555)
!5555 = distinct !DILexicalBlock(scope: !5546, file: !3, line: 844, column: 7)
!5556 = !DILocation(line: 844, column: 7, scope: !5546)
!5557 = !DILocation(line: 849, column: 10, scope: !5558)
!5558 = distinct !DILexicalBlock(scope: !5546, file: !3, line: 849, column: 7)
!5559 = !DILocation(line: 849, column: 15, scope: !5558)
!5560 = !DILocation(line: 849, column: 7, scope: !5546)
!5561 = !DILocation(line: 850, column: 54, scope: !5558)
!5562 = !DILocation(line: 850, column: 42, scope: !5558)
!5563 = !DILocation(line: 850, column: 72, scope: !5558)
!5564 = !DILocation(line: 850, column: 8, scope: !5558)
!5565 = !DILocation(line: 850, column: 10, scope: !5558)
!5566 = !DILocation(line: 850, column: 5, scope: !5558)
!5567 = !DILocation(line: 852, column: 3, scope: !5546)
!5568 = !DILocation(line: 855, column: 10, scope: !5569)
!5569 = distinct !DILexicalBlock(scope: !5546, file: !3, line: 853, column: 5)
!5570 = !DILocation(line: 855, column: 12, scope: !5569)
!5571 = !DILocation(line: 856, column: 7, scope: !5569)
!5572 = !DILocation(line: 858, column: 10, scope: !5569)
!5573 = !DILocation(line: 858, column: 12, scope: !5569)
!5574 = !DILocation(line: 859, column: 7, scope: !5569)
!5575 = !DILocation(line: 861, column: 18, scope: !5569)
!5576 = !DILocation(line: 861, column: 20, scope: !5569)
!5577 = !DILocation(line: 861, column: 51, scope: !5569)
!5578 = !DILocation(line: 861, column: 68, scope: !5569)
!5579 = !DILocation(line: 861, column: 38, scope: !5569)
!5580 = !DILocation(line: 861, column: 30, scope: !5569)
!5581 = !DILocation(line: 861, column: 12, scope: !5569)
!5582 = !DILocation(line: 862, column: 7, scope: !5569)
!5583 = !DILocation(line: 864, column: 18, scope: !5569)
!5584 = !DILocation(line: 864, column: 20, scope: !5569)
!5585 = !DILocation(line: 864, column: 51, scope: !5569)
!5586 = !DILocation(line: 864, column: 68, scope: !5569)
!5587 = !DILocation(line: 864, column: 38, scope: !5569)
!5588 = !DILocation(line: 864, column: 30, scope: !5569)
!5589 = !DILocation(line: 864, column: 12, scope: !5569)
!5590 = !DILocation(line: 865, column: 7, scope: !5569)
!5591 = !DILocation(line: 870, column: 1, scope: !5546)
!5592 = distinct !DISubprogram(name: "verify_symbolic_number_p", scope: !3, file: !3, line: 876, type: !5593, scopeLine: 877, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5595)
!5593 = !DISubroutineType(types: !5594)
!5594 = !{!1360, !5375, !1410}
!5595 = !{!5596, !5597, !5598}
!5596 = !DILocalVariable(name: "n", arg: 1, scope: !5592, file: !3, line: 876, type: !5375)
!5597 = !DILocalVariable(name: "stmt", arg: 2, scope: !5592, file: !3, line: 876, type: !1410)
!5598 = !DILocalVariable(name: "lhs_type", scope: !5592, file: !3, line: 878, type: !1435)
!5599 = !DILocation(line: 0, scope: !5592)
!5600 = !DILocation(line: 880, column: 14, scope: !5592)
!5601 = !DILocation(line: 882, column: 7, scope: !5602)
!5602 = distinct !DILexicalBlock(scope: !5592, file: !3, line: 882, column: 7)
!5603 = !DILocation(line: 882, column: 28, scope: !5602)
!5604 = !DILocation(line: 882, column: 7, scope: !5592)
!5605 = !DILocation(line: 885, column: 7, scope: !5606)
!5606 = distinct !DILexicalBlock(scope: !5592, file: !3, line: 885, column: 7)
!5607 = !DILocation(line: 885, column: 39, scope: !5606)
!5608 = !DILocation(line: 885, column: 44, scope: !5606)
!5609 = !DILocation(line: 885, column: 33, scope: !5606)
!5610 = !DILocation(line: 889, column: 1, scope: !5592)
