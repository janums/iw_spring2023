; ModuleID = 'tree-ssa-address.bc'
source_filename = "tree-ssa-address.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %struct.vectorize, i32, void ()*, i8 (i64, i8*, i32)*, void ()*, i32 ()*, i32 ()*, i32 ()*, i32 ()*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %struct.attribute_spec*, i32 (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*, %union.tree_node**)*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, i8 ()*, i8 ()*, i8 ()*, i8 ()*, void ()*, %union.tree_node* (i32, i8)*, %struct.rtx_def* (%union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, i32)*, %union.tree_node* (i32, %union.tree_node*, i8*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, i8)*, %union.tree_node* (i32, i8, i8)*, i8* (%union.tree_node*)*, void ()*, i32 (%union.tree_node*, i8*, i32)*, i8 ()*, i32 ()*, i8 (i8)*, i8 ()*, i8 (%struct.rtx_def*)*, i8 (%struct.rtx_def*)*, i8 (%struct.rtx_def*, i32)*, %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*, i32)*, %struct.rtx_def* (%struct.rtx_def*)*, i8 (i32, %struct.rtx_def*, i8)*, i8 (i32, %struct.rtx_def*)*, i64, i64, i8 (%struct.rtx_def*)*, i8 (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*, %struct.rtx_def*, i32)*, i8* (i8*)*, i64 (i32)*, i32 (i32)*, i32 (i32, i32)*, i8 (i32)*, %struct.addr_space, i8 (i32)*, i8 (i32)*, i8 (%struct.rtx_def*, i32, i32, i32*, i8)*, i32 (%struct.rtx_def*, i8)*, %struct.rtx_def* (%struct.rtx_def*)*, i32 (%struct.rtx_def*, i32)*, %struct.rtx_def* (%struct.rtx_def*)*, void (%union.tree_node*)*, i8 (i32*, i32*)*, i32 (i32, i32)*, void ()*, %union.tree_node* ()*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void (%union.tree_node*, %struct.rtx_def*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %struct.gimple_seq_d**, %struct.gimple_seq_d**)*, i8* (i64*)*, i8* (i8*, i64)*, i8* (i32)*, i8 ()*, %struct.rtx_def* ()*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, i32 (%union.tree_node*)*, void (i8*, %struct.rtx_def*, i32)*, i8 (%struct.stdarg_info*, %union.gimple_statement_d*)*, %union.tree_node* ()*, %union.tree_node* ()*, i8* (%struct.rtx_def*)*, i8 (%union.tree_node*)*, i64, %struct.calls, i8* (%union.tree_node*, %union.tree_node*)*, i8* (i32, %union.tree_node*)*, i8* (i32, %union.tree_node*, %union.tree_node*)*, i8* (%union.tree_node*)*, i8* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, i32* ()*, i32 (i8, %struct.rtx_def*, i32, i32, %struct.secondary_reload_info*)*, void ()*, void ()*, i8 (i32)*, i32 ()*, i8 ()*, i8 (i32, i32)*, %struct.c, %struct.cxx, %struct.emutls, %struct.target_option_hooks, void (%struct.bitmap_head_def*)*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asm_out = type { i8*, i8*, i8*, %struct.asm_int_op, %struct.asm_int_op, i8 (%struct.rtx_def*, i32, i32)*, void (%struct._IO_FILE*, i8*)*, void (%struct._IO_FILE*, %union.tree_node*)*, void (%struct._IO_FILE*, %union.tree_node*, i32, i32)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*, %struct.rtx_def*)*, void (%struct._IO_FILE*, i8*, i64)*, i8 (%struct.rtx_def*)*, void (%union.tree_node*, i32)*, void (%struct._IO_FILE*, i64)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*, i64)*, void ()*, void (i8*, i32, %union.tree_node*)*, i32 ()*, %union.section* (%union.tree_node*, i32, i64)*, %union.section* (i32, %struct.rtx_def*, i64)*, void (%union.tree_node*, i32)*, %union.section* (%union.tree_node*)*, void (%struct.rtx_def*, i32)*, void (%struct.rtx_def*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i64, i64, %union.tree_node*)*, i8 (%union.tree_node*, i64, i64, %union.tree_node*)*, void ()*, void ()*, void ()*, void (%struct.rtx_def*)*, void (i8*)*, i32 (i32, i8*)*, i8*, void (%struct.rtx_def*)*, void (%struct._IO_FILE*, i32, %struct.rtx_def*)*, void (%struct._IO_FILE*, %struct.rtx_def*, %struct.rtx_def**, i32)*, void (%struct._IO_FILE*)* }
%struct.asm_int_op = type { i8*, i8*, i8*, i8* }
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
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
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
%struct.VEC_mem_addr_template_gc = type { %struct.VEC_mem_addr_template_base }
%struct.VEC_mem_addr_template_base = type { i32, i32, [1 x %struct.mem_addr_template] }
%struct.mem_addr_template = type { %struct.rtx_def*, %struct.rtx_def**, %struct.rtx_def** }
%struct.ggc_root_tab = type { i8*, i64, i64, void (i8*)*, void (i8*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.mem_address = type { %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node* }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.affine_tree_combination = type { %union.tree_node*, %struct.double_int, i32, [8 x %struct.aff_comb_elt], %union.tree_node* }
%struct.aff_comb_elt = type { %union.tree_node*, %struct.double_int }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_type_symtab, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_type* }
%union.tree_type_symtab = type { i8* }
%struct.lang_type = type opaque

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@targetm = external dso_local local_unnamed_addr global %struct.gcc_target, align 8
@mem_addr_template_list = internal global %struct.VEC_mem_addr_template_gc* null, align 8, !dbg !0
@.str = private unnamed_addr constant [12 x i8] c"test_symbol\00", align 1
@const_int_rtx = external dso_local local_unnamed_addr global [129 x %struct.rtx_def*], align 16
@current_function_decl = external dso_local local_unnamed_addr global %union.tree_node*, align 8
@sizetype_tab = external dso_local local_unnamed_addr global [4 x %union.tree_node*], align 16
@.str.1 = private unnamed_addr constant [19 x i8] c"tree-ssa-address.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"symbol: \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"base: \00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"index: \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"step: \00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"offset: \00", align 1
@gt_ggc_r_gt_tree_ssa_address_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { i8* bitcast (%struct.VEC_mem_addr_template_gc** @mem_addr_template_list to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_VEC_mem_addr_template_gc, void (i8*)* @gt_pch_nx_VEC_mem_addr_template_gc }, %struct.ggc_root_tab zeroinitializer], align 16, !dbg !1888
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1906 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1919, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1920, metadata !DIExpression()), !dbg !1921
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1922
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1923
  ret i32 %call, !dbg !1924
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1925 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1929
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1930
  ret i32 %call, !dbg !1931
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1932 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1987, metadata !DIExpression()), !dbg !1988
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1989
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1989
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1989
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1989
  %cmp = icmp uge i8* %0, %1, !dbg !1989
  %conv1 = zext i1 %cmp to i64, !dbg !1989
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1989
  %tobool = icmp eq i64 %expval, 0, !dbg !1989
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1989

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1989
  br label %cond.end, !dbg !1989

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1989
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1989
  %2 = load i8, i8* %0, align 1, !dbg !1989
  %conv3 = zext i8 %2 to i32, !dbg !1989
  br label %cond.end, !dbg !1989

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1989
  ret i32 %cond, !dbg !1990
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1991 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1993, metadata !DIExpression()), !dbg !1994
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1995
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1995
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1995
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1995
  %cmp = icmp uge i8* %0, %1, !dbg !1995
  %conv1 = zext i1 %cmp to i64, !dbg !1995
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1995
  %tobool = icmp eq i64 %expval, 0, !dbg !1995
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1995

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1995
  br label %cond.end, !dbg !1995

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1995
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1995
  %2 = load i8, i8* %0, align 1, !dbg !1995
  %conv3 = zext i8 %2 to i32, !dbg !1995
  br label %cond.end, !dbg !1995

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1995
  ret i32 %cond, !dbg !1996
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1997 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1998
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1998
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1998
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1998
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1998
  %cmp = icmp uge i8* %1, %2, !dbg !1998
  %conv1 = zext i1 %cmp to i64, !dbg !1998
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1998
  %tobool = icmp eq i64 %expval, 0, !dbg !1998
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1998

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1998
  br label %cond.end, !dbg !1998

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1998
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1998
  %3 = load i8, i8* %1, align 1, !dbg !1998
  %conv3 = zext i8 %3 to i32, !dbg !1998
  br label %cond.end, !dbg !1998

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1998
  ret i32 %cond, !dbg !1999
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2000 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2004, metadata !DIExpression()), !dbg !2005
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2006
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2007
  ret i32 %call, !dbg !2008
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2009 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2013, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2014, metadata !DIExpression()), !dbg !2015
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2016
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2016
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2016
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2016
  %cmp = icmp uge i8* %0, %1, !dbg !2016
  %conv1 = zext i1 %cmp to i64, !dbg !2016
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2016
  %tobool = icmp eq i64 %expval, 0, !dbg !2016
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2016

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2016
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2016
  br label %cond.end, !dbg !2016

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2016
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2016
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2016
  store i8 %conv2, i8* %0, align 1, !dbg !2016
  %conv6 = and i32 %__c, 255, !dbg !2016
  br label %cond.end, !dbg !2016

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2016
  ret i32 %cond, !dbg !2017
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2018 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2020, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2021, metadata !DIExpression()), !dbg !2022
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2023
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2023
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2023
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2023
  %cmp = icmp uge i8* %0, %1, !dbg !2023
  %conv1 = zext i1 %cmp to i64, !dbg !2023
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2023
  %tobool = icmp eq i64 %expval, 0, !dbg !2023
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2023

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2023
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2023
  br label %cond.end, !dbg !2023

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2023
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2023
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2023
  store i8 %conv2, i8* %0, align 1, !dbg !2023
  %conv6 = and i32 %__c, 255, !dbg !2023
  br label %cond.end, !dbg !2023

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2023
  ret i32 %cond, !dbg !2024
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2025 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2027, metadata !DIExpression()), !dbg !2028
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2029
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2029
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2029
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2029
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2029
  %cmp = icmp uge i8* %1, %2, !dbg !2029
  %conv1 = zext i1 %cmp to i64, !dbg !2029
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2029
  %tobool = icmp eq i64 %expval, 0, !dbg !2029
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2029

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2029
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2029
  br label %cond.end, !dbg !2029

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2029
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2029
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2029
  store i8 %conv4, i8* %1, align 1, !dbg !2029
  %conv6 = and i32 %__c, 255, !dbg !2029
  br label %cond.end, !dbg !2029

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2029
  ret i32 %cond, !dbg !2030
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2031 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2037, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2038, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2039, metadata !DIExpression()), !dbg !2040
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2041
  ret i64 %call, !dbg !2042
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2043 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2045, metadata !DIExpression()), !dbg !2046
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2047
  %0 = load i32, i32* %_flags, align 8, !dbg !2047
  %and = lshr i32 %0, 4, !dbg !2047
  %and.lobit = and i32 %and, 1, !dbg !2047
  ret i32 %and.lobit, !dbg !2048
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2049 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2051, metadata !DIExpression()), !dbg !2052
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2053
  %0 = load i32, i32* %_flags, align 8, !dbg !2053
  %and = lshr i32 %0, 5, !dbg !2053
  %and.lobit = and i32 %and, 1, !dbg !2053
  ret i32 %and.lobit, !dbg !2054
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2055 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2058, metadata !DIExpression()), !dbg !2059
  %__c.off = add i32 %__c, 128, !dbg !2060
  %0 = icmp ult i32 %__c.off, 384, !dbg !2060
  br i1 %0, label %cond.true, label %cond.end, !dbg !2060

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2061
  %1 = load i32*, i32** %call, align 8, !dbg !2062
  %idxprom = sext i32 %__c to i64, !dbg !2063
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2063
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2063
  br label %cond.end, !dbg !2064

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2064
  ret i32 %cond, !dbg !2065
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2066 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2068, metadata !DIExpression()), !dbg !2069
  %__c.off = add i32 %__c, 128, !dbg !2070
  %0 = icmp ult i32 %__c.off, 384, !dbg !2070
  br i1 %0, label %cond.true, label %cond.end, !dbg !2070

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2071
  %1 = load i32*, i32** %call, align 8, !dbg !2072
  %idxprom = sext i32 %__c to i64, !dbg !2073
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2073
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2073
  br label %cond.end, !dbg !2074

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2074
  ret i32 %cond, !dbg !2075
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2076 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2081, metadata !DIExpression()), !dbg !2082
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2083
  %conv = trunc i64 %call to i32, !dbg !2084
  ret i32 %conv, !dbg !2085
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2086 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2090, metadata !DIExpression()), !dbg !2091
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2092
  ret i64 %call, !dbg !2093
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2094 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2099, metadata !DIExpression()), !dbg !2100
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2101
  ret i64 %call, !dbg !2102
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2103 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2109, metadata !DIExpression()), !dbg !2119
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2110, metadata !DIExpression()), !dbg !2119
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2111, metadata !DIExpression()), !dbg !2119
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2112, metadata !DIExpression()), !dbg !2119
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2113, metadata !DIExpression()), !dbg !2119
  call void @llvm.dbg.value(metadata i64 0, metadata !2114, metadata !DIExpression()), !dbg !2119
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2115, metadata !DIExpression()), !dbg !2119
  br label %while.cond, !dbg !2120

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2121
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2119
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2115, metadata !DIExpression()), !dbg !2119
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2114, metadata !DIExpression()), !dbg !2119
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2122
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2120

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2123
  %div = lshr i64 %add, 1, !dbg !2125
  call void @llvm.dbg.value(metadata i64 %div, metadata !2116, metadata !DIExpression()), !dbg !2119
  %mul = mul i64 %div, %__size, !dbg !2126
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2127
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2117, metadata !DIExpression()), !dbg !2119
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2128
  call void @llvm.dbg.value(metadata i32 %call, metadata !2118, metadata !DIExpression()), !dbg !2119
  %cmp1 = icmp slt i32 %call, 0, !dbg !2129
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2131

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2132
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2134

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2135
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2114, metadata !DIExpression()), !dbg !2119
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2119
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2119
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2115, metadata !DIExpression()), !dbg !2119
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2114, metadata !DIExpression()), !dbg !2119
  br label %while.cond, !dbg !2120, !llvm.loop !2136

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2119
  ret i8* %retval.0, !dbg !2138
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2139 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2145, metadata !DIExpression()), !dbg !2146
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2147
  ret double %call, !dbg !2148
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2149 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2158, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2159, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata i32 %base, metadata !2160, metadata !DIExpression()), !dbg !2161
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2162
  ret i64 %call, !dbg !2163
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2164 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2170, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2171, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i32 %base, metadata !2172, metadata !DIExpression()), !dbg !2173
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2174
  ret i64 %call, !dbg !2175
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2176 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2187, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2188, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i32 %base, metadata !2189, metadata !DIExpression()), !dbg !2190
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2191
  ret i64 %call, !dbg !2192
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2193 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2197, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2198, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i32 %base, metadata !2199, metadata !DIExpression()), !dbg !2200
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2201
  ret i64 %call, !dbg !2202
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2203 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2243, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2244, metadata !DIExpression()), !dbg !2245
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2246
  ret i32 %call, !dbg !2247
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2248 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2250, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2251, metadata !DIExpression()), !dbg !2252
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2253
  ret i32 %call, !dbg !2254
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2255 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2259, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2260, metadata !DIExpression()), !dbg !2261
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2262
  ret i32 %call, !dbg !2263
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2264 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2268, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2269, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2270, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2271, metadata !DIExpression()), !dbg !2272
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2273
  ret i32 %call, !dbg !2274
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2275 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2279, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2280, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2281, metadata !DIExpression()), !dbg !2282
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2281, metadata !DIExpression(DW_OP_deref)), !dbg !2282
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2283
  ret i32 %call, !dbg !2284
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2285 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2289, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2290, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2291, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2292, metadata !DIExpression()), !dbg !2293
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2292, metadata !DIExpression(DW_OP_deref)), !dbg !2293
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2294
  ret i32 %call, !dbg !2295
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2296 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2320, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2321, metadata !DIExpression()), !dbg !2322
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2323
  ret i32 %call, !dbg !2324
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2325 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2327, metadata !DIExpression()), !dbg !2329
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2328, metadata !DIExpression()), !dbg !2329
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2330
  ret i32 %call, !dbg !2331
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2332 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2336, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2337, metadata !DIExpression()), !dbg !2338
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2339
  ret i32 %call, !dbg !2340
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2341 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2345, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2346, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2347, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2348, metadata !DIExpression()), !dbg !2349
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2350
  ret i32 %call, !dbg !2351
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @addr_for_mem_ref(%struct.mem_address* %addr, i8 zeroext %as, i8 zeroext %really_expand) local_unnamed_addr #4 !dbg !2352 {
entry:
  %address = alloca %struct.rtx_def*, align 8
  call void @llvm.dbg.value(metadata %struct.mem_address* %addr, metadata !2365, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata i8 %as, metadata !2366, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata i8 %really_expand, metadata !2367, metadata !DIExpression()), !dbg !2380
  %0 = load i32 (i8)*, i32 (i8)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 57, i32 1), align 8, !dbg !2381
  %call = tail call i32 %0(i8 zeroext %as) #6, !dbg !2382
  call void @llvm.dbg.value(metadata i32 %call, metadata !2368, metadata !DIExpression()), !dbg !2380
  %1 = bitcast %struct.rtx_def** %address to i8*, !dbg !2383
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !2383
  %step = getelementptr inbounds %struct.mem_address, %struct.mem_address* %addr, i64 0, i32 3, !dbg !2384
  %2 = load %union.tree_node*, %union.tree_node** %step, align 8, !dbg !2384
  %tobool = icmp eq %union.tree_node* %2, null, !dbg !2386
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2387

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @integer_onep(%union.tree_node* nonnull %2) #6, !dbg !2388
  %tobool3 = icmp eq i32 %call2, 0, !dbg !2388
  br i1 %tobool3, label %if.then, label %if.end, !dbg !2389

if.then:                                          ; preds = %land.lhs.true
  %3 = bitcast %union.tree_node** %step to %struct.tree_int_cst**, !dbg !2390
  %4 = load %struct.tree_int_cst*, %struct.tree_int_cst** %3, align 8, !dbg !2390
  %low = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %4, i64 0, i32 1, i32 0, !dbg !2390
  %5 = load i64, i64* %low, align 8, !dbg !2390
  %high = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %4, i64 0, i32 1, i32 1, !dbg !2391
  %6 = load i64, i64* %high, align 8, !dbg !2391
  %call9 = tail call %struct.rtx_def* @immed_double_const(i64 %5, i64 %6, i32 %call) #6, !dbg !2392
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call9, metadata !2373, metadata !DIExpression()), !dbg !2380
  br label %if.end, !dbg !2393

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  %st.0 = phi %struct.rtx_def* [ %call9, %if.then ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !2394
  call void @llvm.dbg.value(metadata %struct.rtx_def* %st.0, metadata !2373, metadata !DIExpression()), !dbg !2380
  %offset = getelementptr inbounds %struct.mem_address, %struct.mem_address* %addr, i64 0, i32 4, !dbg !2395
  %7 = load %union.tree_node*, %union.tree_node** %offset, align 8, !dbg !2395
  %tobool10 = icmp eq %union.tree_node* %7, null, !dbg !2397
  br i1 %tobool10, label %if.end26, label %land.lhs.true11, !dbg !2398

land.lhs.true11:                                  ; preds = %if.end
  %call13 = tail call i32 @integer_zerop(%union.tree_node* nonnull %7) #6, !dbg !2399
  %tobool14 = icmp eq i32 %call13, 0, !dbg !2399
  br i1 %tobool14, label %if.then15, label %if.end26, !dbg !2400

if.then15:                                        ; preds = %land.lhs.true11
  %8 = bitcast %union.tree_node** %offset to %struct.tree_int_cst**, !dbg !2401
  %9 = load %struct.tree_int_cst*, %struct.tree_int_cst** %8, align 8, !dbg !2401
  %low19 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %9, i64 0, i32 1, i32 0, !dbg !2401
  %10 = load i64, i64* %low19, align 8, !dbg !2401
  %high23 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %9, i64 0, i32 1, i32 1, !dbg !2402
  %11 = load i64, i64* %high23, align 8, !dbg !2402
  %call24 = tail call %struct.rtx_def* @immed_double_const(i64 %10, i64 %11, i32 %call) #6, !dbg !2403
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call24, metadata !2374, metadata !DIExpression()), !dbg !2380
  br label %if.end26, !dbg !2404

if.end26:                                         ; preds = %land.lhs.true11, %if.end, %if.then15
  %off.0 = phi %struct.rtx_def* [ %call24, %if.then15 ], [ null, %land.lhs.true11 ], [ null, %if.end ], !dbg !2405
  call void @llvm.dbg.value(metadata %struct.rtx_def* %off.0, metadata !2374, metadata !DIExpression()), !dbg !2380
  %tobool27 = icmp eq i8 %really_expand, 0, !dbg !2406
  br i1 %tobool27, label %if.then28, label %if.end105, !dbg !2407

if.then28:                                        ; preds = %if.end26
  %conv = zext i8 %as to i32, !dbg !2408
  %shl = shl nuw nsw i32 %conv, 5, !dbg !2408
  %symbol = getelementptr inbounds %struct.mem_address, %struct.mem_address* %addr, i64 0, i32 0, !dbg !2408
  %12 = load %union.tree_node*, %union.tree_node** %symbol, align 8, !dbg !2408
  %cmp = icmp ne %union.tree_node* %12, null, !dbg !2408
  %conv29 = zext i1 %cmp to i32, !dbg !2408
  %shl30 = shl nuw nsw i32 %conv29, 4, !dbg !2408
  %or = or i32 %shl, %shl30, !dbg !2408
  %base = getelementptr inbounds %struct.mem_address, %struct.mem_address* %addr, i64 0, i32 1, !dbg !2408
  %13 = load %union.tree_node*, %union.tree_node** %base, align 8, !dbg !2408
  %cmp31 = icmp ne %union.tree_node* %13, null, !dbg !2408
  %conv32 = zext i1 %cmp31 to i32, !dbg !2408
  %shl33 = shl nuw nsw i32 %conv32, 3, !dbg !2408
  %or34 = or i32 %or, %shl33, !dbg !2408
  %index = getelementptr inbounds %struct.mem_address, %struct.mem_address* %addr, i64 0, i32 2, !dbg !2408
  %14 = load %union.tree_node*, %union.tree_node** %index, align 8, !dbg !2408
  %cmp35 = icmp ne %union.tree_node* %14, null, !dbg !2408
  %conv36 = zext i1 %cmp35 to i32, !dbg !2408
  %shl37 = shl nuw nsw i32 %conv36, 2, !dbg !2408
  %or38 = or i32 %or34, %shl37, !dbg !2408
  %cmp39 = icmp ne %struct.rtx_def* %st.0, null, !dbg !2408
  %conv40 = zext i1 %cmp39 to i32, !dbg !2408
  %shl41 = shl nuw nsw i32 %conv40, 1, !dbg !2408
  %or42 = or i32 %or38, %shl41, !dbg !2408
  %cmp43 = icmp ne %struct.rtx_def* %off.0, null, !dbg !2408
  %conv44 = zext i1 %cmp43 to i32, !dbg !2408
  %or45 = or i32 %or42, %conv44, !dbg !2408
  call void @llvm.dbg.value(metadata i32 %or45, metadata !2377, metadata !DIExpression()), !dbg !2409
  %15 = load %struct.VEC_mem_addr_template_gc*, %struct.VEC_mem_addr_template_gc** @mem_addr_template_list, align 8, !dbg !2410
  %base47 = getelementptr inbounds %struct.VEC_mem_addr_template_gc, %struct.VEC_mem_addr_template_gc* %15, i64 0, i32 0, !dbg !2410
  %call48 = tail call fastcc i32 @VEC_mem_addr_template_base_length(%struct.VEC_mem_addr_template_base* %base47) #8, !dbg !2410
  %cmp49 = icmp ult i32 %or45, %call48, !dbg !2412
  br i1 %cmp49, label %if.end52, label %if.then51, !dbg !2413

if.then51:                                        ; preds = %if.then28
  %add = add i32 %or45, 1, !dbg !2414
  tail call fastcc void @VEC_mem_addr_template_gc_safe_grow_cleared(%struct.VEC_mem_addr_template_gc** nonnull @mem_addr_template_list, i32 %add) #8, !dbg !2414
  br label %if.end52, !dbg !2414

if.end52:                                         ; preds = %if.then28, %if.then51
  %16 = load %struct.VEC_mem_addr_template_gc*, %struct.VEC_mem_addr_template_gc** @mem_addr_template_list, align 8, !dbg !2415
  %base55 = getelementptr inbounds %struct.VEC_mem_addr_template_gc, %struct.VEC_mem_addr_template_gc* %16, i64 0, i32 0, !dbg !2415
  %call59 = tail call fastcc %struct.mem_addr_template* @VEC_mem_addr_template_base_index(%struct.VEC_mem_addr_template_base* %base55, i32 %or45) #8, !dbg !2415
  call void @llvm.dbg.value(metadata %struct.mem_addr_template* %call59, metadata !2375, metadata !DIExpression()), !dbg !2380
  %ref = getelementptr inbounds %struct.mem_addr_template, %struct.mem_addr_template* %call59, i64 0, i32 0, !dbg !2416
  %17 = load %struct.rtx_def*, %struct.rtx_def** %ref, align 8, !dbg !2416
  %tobool60 = icmp eq %struct.rtx_def* %17, null, !dbg !2418
  br i1 %tobool60, label %if.then61, label %if.end95, !dbg !2419

if.then61:                                        ; preds = %if.end52
  %18 = load %union.tree_node*, %union.tree_node** %symbol, align 8, !dbg !2420
  %tobool63 = icmp eq %union.tree_node* %18, null, !dbg !2422
  br i1 %tobool63, label %cond.end68, label %cond.true64, !dbg !2422

cond.true64:                                      ; preds = %if.then61
  %call65 = tail call i8* @ggc_alloc_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 -1) #6, !dbg !2423
  %call66 = tail call %struct.rtx_def* @gen_rtx_fmt_s00_stat(i32 45, i32 %call, i8* %call65) #6, !dbg !2423
  br label %cond.end68, !dbg !2422

cond.end68:                                       ; preds = %if.then61, %cond.true64
  %cond69 = phi %struct.rtx_def* [ %call66, %cond.true64 ], [ null, %if.then61 ], !dbg !2422
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond69, metadata !2370, metadata !DIExpression()), !dbg !2380
  %19 = load %union.tree_node*, %union.tree_node** %base, align 8, !dbg !2424
  %tobool71 = icmp eq %union.tree_node* %19, null, !dbg !2425
  br i1 %tobool71, label %cond.end75, label %cond.true72, !dbg !2425

cond.true72:                                      ; preds = %cond.end68
  %call73 = tail call %struct.rtx_def* @gen_raw_REG(i32 %call, i32 58) #6, !dbg !2426
  br label %cond.end75, !dbg !2425

cond.end75:                                       ; preds = %cond.end68, %cond.true72
  %cond76 = phi %struct.rtx_def* [ %call73, %cond.true72 ], [ null, %cond.end68 ], !dbg !2425
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond76, metadata !2371, metadata !DIExpression()), !dbg !2380
  %20 = load %union.tree_node*, %union.tree_node** %index, align 8, !dbg !2427
  %tobool78 = icmp eq %union.tree_node* %20, null, !dbg !2428
  br i1 %tobool78, label %cond.end82, label %cond.true79, !dbg !2428

cond.true79:                                      ; preds = %cond.end75
  %call80 = tail call %struct.rtx_def* @gen_raw_REG(i32 %call, i32 59) #6, !dbg !2429
  br label %cond.end82, !dbg !2428

cond.end82:                                       ; preds = %cond.end75, %cond.true79
  %cond83 = phi %struct.rtx_def* [ %call80, %cond.true79 ], [ null, %cond.end75 ], !dbg !2428
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond83, metadata !2372, metadata !DIExpression()), !dbg !2380
  %tobool84 = icmp eq %struct.rtx_def* %st.0, null, !dbg !2430
  %21 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 64), align 16, !dbg !2430
  %cond88 = select i1 %tobool84, %struct.rtx_def* null, %struct.rtx_def* %21, !dbg !2430
  %tobool89 = icmp eq %struct.rtx_def* %off.0, null, !dbg !2431
  %cond93 = select i1 %tobool89, %struct.rtx_def* null, %struct.rtx_def* %21, !dbg !2431
  %step_p = getelementptr inbounds %struct.mem_addr_template, %struct.mem_addr_template* %call59, i64 0, i32 1, !dbg !2432
  %off_p = getelementptr inbounds %struct.mem_addr_template, %struct.mem_addr_template* %call59, i64 0, i32 2, !dbg !2433
  tail call fastcc void @gen_addr_rtx(i32 %call, %struct.rtx_def* %cond69, %struct.rtx_def* %cond76, %struct.rtx_def* %cond83, %struct.rtx_def* %cond88, %struct.rtx_def* %cond93, %struct.rtx_def** %ref, %struct.rtx_def*** nonnull %step_p, %struct.rtx_def*** nonnull %off_p) #8, !dbg !2434
  br label %if.end95, !dbg !2435

if.end95:                                         ; preds = %if.end52, %cond.end82
  %tobool96 = icmp eq %struct.rtx_def* %st.0, null, !dbg !2436
  br i1 %tobool96, label %if.end99, label %if.then97, !dbg !2438

if.then97:                                        ; preds = %if.end95
  %step_p98 = getelementptr inbounds %struct.mem_addr_template, %struct.mem_addr_template* %call59, i64 0, i32 1, !dbg !2439
  %22 = load %struct.rtx_def**, %struct.rtx_def*** %step_p98, align 8, !dbg !2439
  store %struct.rtx_def* %st.0, %struct.rtx_def** %22, align 8, !dbg !2440
  br label %if.end99, !dbg !2441

if.end99:                                         ; preds = %if.end95, %if.then97
  %tobool100 = icmp eq %struct.rtx_def* %off.0, null, !dbg !2442
  br i1 %tobool100, label %if.end103, label %if.then101, !dbg !2444

if.then101:                                       ; preds = %if.end99
  %off_p102 = getelementptr inbounds %struct.mem_addr_template, %struct.mem_addr_template* %call59, i64 0, i32 2, !dbg !2445
  %23 = load %struct.rtx_def**, %struct.rtx_def*** %off_p102, align 8, !dbg !2445
  store %struct.rtx_def* %off.0, %struct.rtx_def** %23, align 8, !dbg !2446
  br label %if.end103, !dbg !2447

if.end103:                                        ; preds = %if.end99, %if.then101
  br label %cleanup

if.end105:                                        ; preds = %if.end26
  %symbol106 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %addr, i64 0, i32 0, !dbg !2448
  %24 = load %union.tree_node*, %union.tree_node** %symbol106, align 8, !dbg !2448
  %tobool107 = icmp eq %union.tree_node* %24, null, !dbg !2449
  br i1 %tobool107, label %cond.end113, label %cond.true108, !dbg !2449

cond.true108:                                     ; preds = %if.end105
  %25 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !2450
  %call110 = tail call %union.tree_node* @build_addr(%union.tree_node* nonnull %24, %union.tree_node* %25) #6, !dbg !2451
  %call111 = tail call fastcc %struct.rtx_def* @expand_expr(%union.tree_node* %call110, %struct.rtx_def* null, i32 %call, i32 0) #8, !dbg !2452
  br label %cond.end113, !dbg !2449

cond.end113:                                      ; preds = %if.end105, %cond.true108
  %cond114 = phi %struct.rtx_def* [ %call111, %cond.true108 ], [ null, %if.end105 ], !dbg !2449
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond114, metadata !2370, metadata !DIExpression()), !dbg !2380
  %base115 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %addr, i64 0, i32 1, !dbg !2453
  %26 = load %union.tree_node*, %union.tree_node** %base115, align 8, !dbg !2453
  %tobool116 = icmp eq %union.tree_node* %26, null, !dbg !2454
  br i1 %tobool116, label %cond.end121, label %cond.true117, !dbg !2454

cond.true117:                                     ; preds = %cond.end113
  %call119 = tail call fastcc %struct.rtx_def* @expand_expr(%union.tree_node* nonnull %26, %struct.rtx_def* null, i32 %call, i32 0) #8, !dbg !2455
  br label %cond.end121, !dbg !2454

cond.end121:                                      ; preds = %cond.end113, %cond.true117
  %cond122 = phi %struct.rtx_def* [ %call119, %cond.true117 ], [ null, %cond.end113 ], !dbg !2454
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond122, metadata !2371, metadata !DIExpression()), !dbg !2380
  %index123 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %addr, i64 0, i32 2, !dbg !2456
  %27 = load %union.tree_node*, %union.tree_node** %index123, align 8, !dbg !2456
  %tobool124 = icmp eq %union.tree_node* %27, null, !dbg !2457
  br i1 %tobool124, label %cond.end129, label %cond.true125, !dbg !2457

cond.true125:                                     ; preds = %cond.end121
  %call127 = tail call fastcc %struct.rtx_def* @expand_expr(%union.tree_node* nonnull %27, %struct.rtx_def* null, i32 %call, i32 0) #8, !dbg !2458
  br label %cond.end129, !dbg !2457

cond.end129:                                      ; preds = %cond.end121, %cond.true125
  %cond130 = phi %struct.rtx_def* [ %call127, %cond.true125 ], [ null, %cond.end121 ], !dbg !2457
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond130, metadata !2372, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata %struct.rtx_def** %address, metadata !2369, metadata !DIExpression(DW_OP_deref)), !dbg !2380
  call fastcc void @gen_addr_rtx(i32 %call, %struct.rtx_def* %cond114, %struct.rtx_def* %cond122, %struct.rtx_def* %cond130, %struct.rtx_def* %st.0, %struct.rtx_def* %off.0, %struct.rtx_def** nonnull %address, %struct.rtx_def*** null, %struct.rtx_def*** null) #8, !dbg !2459
  br label %cleanup, !dbg !2460

cleanup:                                          ; preds = %cond.end129, %if.end103
  %retval.0.in = phi %struct.rtx_def** [ %address, %cond.end129 ], [ %ref, %if.end103 ]
  %retval.0 = load %struct.rtx_def*, %struct.rtx_def** %retval.0.in, align 8, !dbg !2380
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !2461
  ret %struct.rtx_def* %retval.0, !dbg !2461
}

declare dso_local i32 @integer_onep(%union.tree_node*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @immed_double_const(i64, i64, i32) local_unnamed_addr #1

declare dso_local i32 @integer_zerop(%union.tree_node*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_mem_addr_template_base_length(%struct.VEC_mem_addr_template_base* %vec_) unnamed_addr #0 !dbg !2462 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_mem_addr_template_base* %vec_, metadata !2468, metadata !DIExpression()), !dbg !2469
  %tobool = icmp eq %struct.VEC_mem_addr_template_base* %vec_, null, !dbg !2470
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2470

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_mem_addr_template_base, %struct.VEC_mem_addr_template_base* %vec_, i64 0, i32 0, !dbg !2470
  %0 = load i32, i32* %num, align 8, !dbg !2470
  br label %cond.end, !dbg !2470

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2470
  ret i32 %cond, !dbg !2470
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_mem_addr_template_gc_safe_grow_cleared(%struct.VEC_mem_addr_template_gc** %vec_, i32 %size_) unnamed_addr #0 !dbg !2471 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_mem_addr_template_gc** @mem_addr_template_list, metadata !2476, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i32 %size_, metadata !2477, metadata !DIExpression()), !dbg !2479
  %0 = load %struct.VEC_mem_addr_template_gc*, %struct.VEC_mem_addr_template_gc** @mem_addr_template_list, align 8, !dbg !2480
  %tobool = icmp eq %struct.VEC_mem_addr_template_gc* %0, null, !dbg !2480
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2480

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_mem_addr_template_gc, %struct.VEC_mem_addr_template_gc* %0, i64 0, i32 0, !dbg !2480
  br label %cond.end, !dbg !2480

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_mem_addr_template_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2480
  %call = tail call fastcc i32 @VEC_mem_addr_template_base_length(%struct.VEC_mem_addr_template_base* %cond) #8, !dbg !2480
  call void @llvm.dbg.value(metadata i32 %call, metadata !2478, metadata !DIExpression()), !dbg !2479
  tail call fastcc void @VEC_mem_addr_template_gc_safe_grow(%struct.VEC_mem_addr_template_gc** nonnull @mem_addr_template_list, i32 %size_) #8, !dbg !2480
  %1 = load %struct.VEC_mem_addr_template_gc*, %struct.VEC_mem_addr_template_gc** @mem_addr_template_list, align 8, !dbg !2480
  %tobool1 = icmp eq %struct.VEC_mem_addr_template_gc* %1, null, !dbg !2480
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !2480

cond.true2:                                       ; preds = %cond.end
  %base3 = getelementptr inbounds %struct.VEC_mem_addr_template_gc, %struct.VEC_mem_addr_template_gc* %1, i64 0, i32 0, !dbg !2480
  br label %cond.end5, !dbg !2480

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_mem_addr_template_base* [ %base3, %cond.true2 ], [ null, %cond.end ], !dbg !2480
  %call7 = tail call fastcc %struct.mem_addr_template* @VEC_mem_addr_template_base_address(%struct.VEC_mem_addr_template_base* %cond6) #8, !dbg !2480
  %idxprom = sext i32 %call to i64, !dbg !2480
  %arrayidx = getelementptr inbounds %struct.mem_addr_template, %struct.mem_addr_template* %call7, i64 %idxprom, !dbg !2480
  %2 = bitcast %struct.mem_addr_template* %arrayidx to i8*, !dbg !2480
  %sub = sub nsw i32 %size_, %call, !dbg !2480
  %conv = sext i32 %sub to i64, !dbg !2480
  %mul = mul nsw i64 %conv, 24, !dbg !2480
  %call8 = tail call i8* @memset(i8* %2, i32 0, i64 %mul) #6, !dbg !2480
  ret void, !dbg !2480
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.mem_addr_template* @VEC_mem_addr_template_base_index(%struct.VEC_mem_addr_template_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2481 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_mem_addr_template_base* %vec_, metadata !2487, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2488, metadata !DIExpression()), !dbg !2489
  br label %land.end, !dbg !2490

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !2490
  %arrayidx = getelementptr inbounds %struct.VEC_mem_addr_template_base, %struct.VEC_mem_addr_template_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2490
  ret %struct.mem_addr_template* %arrayidx, !dbg !2490
}

declare dso_local %struct.rtx_def* @gen_rtx_fmt_s00_stat(i32, i32, i8*) local_unnamed_addr #1

declare dso_local i8* @ggc_alloc_string(i8*, i32) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @gen_raw_REG(i32, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @gen_addr_rtx(i32 %address_mode, %struct.rtx_def* %symbol, %struct.rtx_def* %base, %struct.rtx_def* %index, %struct.rtx_def* %step, %struct.rtx_def* %offset, %struct.rtx_def** %addr, %struct.rtx_def*** %step_p, %struct.rtx_def*** %offset_p) unnamed_addr #4 !dbg !2491 {
entry:
  call void @llvm.dbg.value(metadata i32 %address_mode, metadata !2496, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata %struct.rtx_def* %symbol, metadata !2497, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata %struct.rtx_def* %base, metadata !2498, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata %struct.rtx_def* %index, metadata !2499, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata %struct.rtx_def* %step, metadata !2500, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata %struct.rtx_def* %offset, metadata !2501, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata %struct.rtx_def** %addr, metadata !2502, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata %struct.rtx_def*** %step_p, metadata !2503, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata %struct.rtx_def*** %offset_p, metadata !2504, metadata !DIExpression()), !dbg !2506
  store %struct.rtx_def* null, %struct.rtx_def** %addr, align 8, !dbg !2507
  %tobool = icmp eq %struct.rtx_def*** %step_p, null, !dbg !2508
  br i1 %tobool, label %if.end, label %if.then, !dbg !2510

if.then:                                          ; preds = %entry
  store %struct.rtx_def** null, %struct.rtx_def*** %step_p, align 8, !dbg !2511
  br label %if.end, !dbg !2512

if.end:                                           ; preds = %entry, %if.then
  %tobool1 = icmp eq %struct.rtx_def*** %offset_p, null, !dbg !2513
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !2515

if.then2:                                         ; preds = %if.end
  store %struct.rtx_def** null, %struct.rtx_def*** %offset_p, align 8, !dbg !2516
  br label %if.end3, !dbg !2517

if.end3:                                          ; preds = %if.end, %if.then2
  %tobool4 = icmp eq %struct.rtx_def* %index, null, !dbg !2518
  br i1 %tobool4, label %if.end12, label %if.then5, !dbg !2520

if.then5:                                         ; preds = %if.end3
  call void @llvm.dbg.value(metadata %struct.rtx_def* %index, metadata !2505, metadata !DIExpression()), !dbg !2506
  %tobool6 = icmp eq %struct.rtx_def* %step, null, !dbg !2521
  br i1 %tobool6, label %if.end11, label %if.then7, !dbg !2524

if.then7:                                         ; preds = %if.then5
  %call = tail call %struct.rtx_def* @gen_rtx_fmt_ee_stat(i32 52, i32 %address_mode, %struct.rtx_def* nonnull %index, %struct.rtx_def* nonnull %step) #6, !dbg !2525
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !2505, metadata !DIExpression()), !dbg !2506
  br i1 %tobool, label %if.end11, label %if.then9, !dbg !2527

if.then9:                                         ; preds = %if.then7
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2528
  %1 = bitcast %struct.rtx_def*** %step_p to %union.rtunion_def**, !dbg !2530
  store %union.rtunion_def* %0, %union.rtunion_def** %1, align 8, !dbg !2530
  br label %if.end11, !dbg !2531

if.end11:                                         ; preds = %if.then7, %if.then5, %if.then9
  %act_elem.0 = phi %struct.rtx_def* [ %index, %if.then5 ], [ %call, %if.then9 ], [ %call, %if.then7 ], !dbg !2532
  call void @llvm.dbg.value(metadata %struct.rtx_def* %act_elem.0, metadata !2505, metadata !DIExpression()), !dbg !2506
  store %struct.rtx_def* %act_elem.0, %struct.rtx_def** %addr, align 8, !dbg !2533
  br label %if.end12, !dbg !2534

if.end12:                                         ; preds = %if.end3, %if.end11
  %tobool13 = icmp eq %struct.rtx_def* %base, null, !dbg !2535
  br i1 %tobool13, label %if.end19, label %if.then14, !dbg !2537

if.then14:                                        ; preds = %if.end12
  %2 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8, !dbg !2538
  %tobool15 = icmp eq %struct.rtx_def* %2, null, !dbg !2538
  br i1 %tobool15, label %if.else, label %if.then16, !dbg !2541

if.then16:                                        ; preds = %if.then14
  %call17 = tail call %struct.rtx_def* @simplify_gen_binary(i32 49, i32 %address_mode, %struct.rtx_def* nonnull %base, %struct.rtx_def* nonnull %2) #6, !dbg !2542
  store %struct.rtx_def* %call17, %struct.rtx_def** %addr, align 8, !dbg !2543
  br label %if.end19, !dbg !2544

if.else:                                          ; preds = %if.then14
  store %struct.rtx_def* %base, %struct.rtx_def** %addr, align 8, !dbg !2545
  br label %if.end19

if.end19:                                         ; preds = %if.end12, %if.then16, %if.else
  %tobool20 = icmp eq %struct.rtx_def* %symbol, null, !dbg !2546
  %tobool22 = icmp ne %struct.rtx_def* %offset, null, !dbg !2548
  br i1 %tobool20, label %if.else48, label %if.then21, !dbg !2549

if.then21:                                        ; preds = %if.end19
  call void @llvm.dbg.value(metadata %struct.rtx_def* %symbol, metadata !2505, metadata !DIExpression()), !dbg !2506
  br i1 %tobool22, label %if.then23, label %if.end42, !dbg !2550

if.then23:                                        ; preds = %if.then21
  %call24 = tail call %struct.rtx_def* @gen_rtx_fmt_ee_stat(i32 49, i32 %address_mode, %struct.rtx_def* nonnull %symbol, %struct.rtx_def* nonnull %offset) #6, !dbg !2552
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call24, metadata !2505, metadata !DIExpression()), !dbg !2506
  br i1 %tobool1, label %if.end31, label %if.then26, !dbg !2555

if.then26:                                        ; preds = %if.then23
  %3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call24, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2556
  %4 = bitcast %struct.rtx_def*** %offset_p to %union.rtunion_def**, !dbg !2558
  store %union.rtunion_def* %3, %union.rtunion_def** %4, align 8, !dbg !2558
  br label %if.end31, !dbg !2559

if.end31:                                         ; preds = %if.then23, %if.then26
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %symbol, i64 0, i32 0, !dbg !2560
  %bf.load = load i32, i32* %5, align 8, !dbg !2560
  %bf.clear = and i32 %bf.load, 65535, !dbg !2560
  %cmp = icmp eq i32 %bf.clear, 45, !dbg !2562
  br i1 %cmp, label %if.then39, label %lor.lhs.false, !dbg !2563

lor.lhs.false:                                    ; preds = %if.end31
  %cmp34 = icmp eq i32 %bf.clear, 44, !dbg !2564
  br i1 %cmp34, label %if.then39, label %lor.lhs.false35, !dbg !2565

lor.lhs.false35:                                  ; preds = %lor.lhs.false
  %cmp38 = icmp eq i32 %bf.clear, 35, !dbg !2566
  br i1 %cmp38, label %if.then39, label %if.end42, !dbg !2567

if.then39:                                        ; preds = %lor.lhs.false35, %lor.lhs.false, %if.end31
  %call40 = tail call %struct.rtx_def* @gen_rtx_fmt_e_stat(i32 35, i32 %address_mode, %struct.rtx_def* %call24) #6, !dbg !2568
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call40, metadata !2505, metadata !DIExpression()), !dbg !2506
  br label %if.end42, !dbg !2569

if.end42:                                         ; preds = %lor.lhs.false35, %if.then39, %if.then21
  %act_elem.2 = phi %struct.rtx_def* [ %symbol, %if.then21 ], [ %call40, %if.then39 ], [ %call24, %lor.lhs.false35 ], !dbg !2570
  call void @llvm.dbg.value(metadata %struct.rtx_def* %act_elem.2, metadata !2505, metadata !DIExpression()), !dbg !2506
  %6 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8, !dbg !2571
  %tobool43 = icmp eq %struct.rtx_def* %6, null, !dbg !2571
  br i1 %tobool43, label %if.else46, label %if.then44, !dbg !2573

if.then44:                                        ; preds = %if.end42
  %call45 = tail call %struct.rtx_def* @gen_rtx_fmt_ee_stat(i32 49, i32 %address_mode, %struct.rtx_def* nonnull %6, %struct.rtx_def* %act_elem.2) #6, !dbg !2574
  store %struct.rtx_def* %call45, %struct.rtx_def** %addr, align 8, !dbg !2575
  br label %if.end67, !dbg !2576

if.else46:                                        ; preds = %if.end42
  store %struct.rtx_def* %act_elem.2, %struct.rtx_def** %addr, align 8, !dbg !2577
  br label %if.end67

if.else48:                                        ; preds = %if.end19
  br i1 %tobool22, label %if.then50, label %if.end67, !dbg !2578

if.then50:                                        ; preds = %if.else48
  %7 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8, !dbg !2579
  %tobool51 = icmp eq %struct.rtx_def* %7, null, !dbg !2579
  br i1 %tobool51, label %if.else61, label %if.then52, !dbg !2583

if.then52:                                        ; preds = %if.then50
  %call53 = tail call %struct.rtx_def* @gen_rtx_fmt_ee_stat(i32 49, i32 %address_mode, %struct.rtx_def* nonnull %7, %struct.rtx_def* nonnull %offset) #6, !dbg !2584
  store %struct.rtx_def* %call53, %struct.rtx_def** %addr, align 8, !dbg !2586
  br i1 %tobool1, label %if.end67, label %if.then55, !dbg !2587

if.then55:                                        ; preds = %if.then52
  %8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call53, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2588
  %9 = bitcast %struct.rtx_def*** %offset_p to %union.rtunion_def**, !dbg !2590
  store %union.rtunion_def* %8, %union.rtunion_def** %9, align 8, !dbg !2590
  br label %if.end67, !dbg !2591

if.else61:                                        ; preds = %if.then50
  store %struct.rtx_def* %offset, %struct.rtx_def** %addr, align 8, !dbg !2592
  br i1 %tobool1, label %if.end67, label %if.then63, !dbg !2594

if.then63:                                        ; preds = %if.else61
  store %struct.rtx_def** %addr, %struct.rtx_def*** %offset_p, align 8, !dbg !2595
  br label %if.end67, !dbg !2597

if.end67:                                         ; preds = %if.then52, %if.else61, %if.else48, %if.then63, %if.then55, %if.then44, %if.else46
  %10 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8, !dbg !2598
  %tobool68 = icmp eq %struct.rtx_def* %10, null, !dbg !2598
  br i1 %tobool68, label %if.then69, label %if.end70, !dbg !2600

if.then69:                                        ; preds = %if.end67
  %11 = load i64, i64* bitcast (%struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 64) to i64*), align 16, !dbg !2601
  %12 = bitcast %struct.rtx_def** %addr to i64*, !dbg !2602
  store i64 %11, i64* %12, align 8, !dbg !2602
  br label %if.end70, !dbg !2603

if.end70:                                         ; preds = %if.end67, %if.then69
  ret void, !dbg !2604
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.rtx_def* @expand_expr(%union.tree_node* %exp, %struct.rtx_def* %target, i32 %mode, i32 %modifier) unnamed_addr #0 !dbg !2605 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %exp, metadata !2609, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata %struct.rtx_def* null, metadata !2610, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2611, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i32 0, metadata !2612, metadata !DIExpression()), !dbg !2613
  %call = tail call %struct.rtx_def* @expand_expr_real(%union.tree_node* %exp, %struct.rtx_def* null, i32 %mode, i32 0, %struct.rtx_def** null) #6, !dbg !2614
  ret %struct.rtx_def* %call, !dbg !2615
}

declare dso_local %union.tree_node* @build_addr(%union.tree_node*, %union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @tree_mem_ref_addr(%union.tree_node* %type, %union.tree_node* %mem_ref) local_unnamed_addr #4 !dbg !2616 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !2620, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata %union.tree_node* %mem_ref, metadata !2621, metadata !DIExpression()), !dbg !2630
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %mem_ref, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2631
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 3, !dbg !2631
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !2631
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !2624, metadata !DIExpression()), !dbg !2630
  %arrayidx3 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 4, !dbg !2632
  %1 = load %union.tree_node*, %union.tree_node** %arrayidx3, align 8, !dbg !2632
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !2625, metadata !DIExpression()), !dbg !2630
  %2 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !2633
  call void @llvm.dbg.value(metadata %union.tree_node* %2, metadata !2626, metadata !DIExpression()), !dbg !2630
  %arrayidx9 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !2634
  %3 = load %union.tree_node*, %union.tree_node** %arrayidx9, align 8, !dbg !2634
  call void @llvm.dbg.value(metadata %union.tree_node* %3, metadata !2627, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !2628, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !2629, metadata !DIExpression()), !dbg !2630
  %tobool = icmp eq %union.tree_node* %2, null, !dbg !2635
  br i1 %tobool, label %if.else, label %if.then, !dbg !2637

if.then:                                          ; preds = %entry
  %4 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !2638
  %call = tail call %union.tree_node* @build_addr(%union.tree_node* nonnull %2, %union.tree_node* %4) #6, !dbg !2638
  %call10 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %type, %union.tree_node* %call) #6, !dbg !2638
  call void @llvm.dbg.value(metadata %union.tree_node* %call10, metadata !2628, metadata !DIExpression()), !dbg !2630
  br label %if.end23, !dbg !2639

if.else:                                          ; preds = %entry
  %tobool11 = icmp eq %union.tree_node* %3, null, !dbg !2640
  br i1 %tobool11, label %if.end23, label %land.lhs.true, !dbg !2642

land.lhs.true:                                    ; preds = %if.else
  %type12 = getelementptr inbounds %union.tree_node, %union.tree_node* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2643
  %5 = bitcast %union.tree_node** %type12 to i64**, !dbg !2643
  %6 = load i64*, i64** %5, align 8, !dbg !2643
  %bf.load = load i64, i64* %6, align 8, !dbg !2643
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2643
  %cmp = icmp eq i64 %bf.cast1, 10, !dbg !2643
  br i1 %cmp, label %if.then21, label %lor.lhs.false, !dbg !2643

lor.lhs.false:                                    ; preds = %land.lhs.true
  %cmp20 = icmp eq i64 %bf.cast1, 12, !dbg !2643
  br i1 %cmp20, label %if.then21, label %if.end23, !dbg !2644

if.then21:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %call22 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %type, %union.tree_node* nonnull %3) #6, !dbg !2645
  call void @llvm.dbg.value(metadata %union.tree_node* %call22, metadata !2628, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !2627, metadata !DIExpression()), !dbg !2630
  br label %if.end23, !dbg !2647

if.end23:                                         ; preds = %if.else, %lor.lhs.false, %if.then21, %if.then
  %base.1 = phi %union.tree_node* [ %3, %if.then ], [ null, %if.then21 ], [ %3, %lor.lhs.false ], [ null, %if.else ], !dbg !2630
  %addr_base.1 = phi %union.tree_node* [ %call10, %if.then ], [ %call22, %if.then21 ], [ null, %lor.lhs.false ], [ null, %if.else ], !dbg !2648
  call void @llvm.dbg.value(metadata %union.tree_node* %addr_base.1, metadata !2628, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata %union.tree_node* %base.1, metadata !2627, metadata !DIExpression()), !dbg !2630
  %arrayidx26 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 2, !dbg !2649
  %7 = load %union.tree_node*, %union.tree_node** %arrayidx26, align 8, !dbg !2649
  call void @llvm.dbg.value(metadata %union.tree_node* %7, metadata !2623, metadata !DIExpression()), !dbg !2630
  %tobool27 = icmp eq %union.tree_node* %7, null, !dbg !2650
  br i1 %tobool27, label %if.end33, label %if.then28, !dbg !2652

if.then28:                                        ; preds = %if.end23
  %tobool29 = icmp eq %union.tree_node* %0, null, !dbg !2653
  br i1 %tobool29, label %if.end33, label %if.then30, !dbg !2656

if.then30:                                        ; preds = %if.then28
  %8 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !2657
  %call31 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 65, %union.tree_node* %8, %union.tree_node* nonnull %7, %union.tree_node* nonnull %0) #6, !dbg !2657
  call void @llvm.dbg.value(metadata %union.tree_node* %call31, metadata !2623, metadata !DIExpression()), !dbg !2630
  br label %if.end33, !dbg !2658

if.end33:                                         ; preds = %if.then28, %if.end23, %if.then30
  %addr_off.0 = phi %union.tree_node* [ null, %if.end23 ], [ %call31, %if.then30 ], [ %7, %if.then28 ], !dbg !2630
  call void @llvm.dbg.value(metadata %union.tree_node* %addr_off.0, metadata !2629, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata %union.tree_node* %base.1, metadata !2623, metadata !DIExpression()), !dbg !2630
  %tobool34 = icmp eq %union.tree_node* %base.1, null, !dbg !2659
  br i1 %tobool34, label %if.end41, label %if.then35, !dbg !2661

if.then35:                                        ; preds = %if.end33
  %tobool36 = icmp eq %union.tree_node* %addr_off.0, null, !dbg !2662
  br i1 %tobool36, label %if.end41, label %if.then37, !dbg !2665

if.then37:                                        ; preds = %if.then35
  %9 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !2666
  %call38 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 63, %union.tree_node* %9, %union.tree_node* nonnull %addr_off.0, %union.tree_node* nonnull %base.1) #6, !dbg !2666
  call void @llvm.dbg.value(metadata %union.tree_node* %call38, metadata !2629, metadata !DIExpression()), !dbg !2630
  br label %if.end41, !dbg !2667

if.end41:                                         ; preds = %if.then35, %if.end33, %if.then37
  %addr_off.2 = phi %union.tree_node* [ %addr_off.0, %if.end33 ], [ %call38, %if.then37 ], [ %base.1, %if.then35 ], !dbg !2630
  call void @llvm.dbg.value(metadata %union.tree_node* %addr_off.2, metadata !2629, metadata !DIExpression()), !dbg !2630
  %tobool42 = icmp eq %union.tree_node* %1, null, !dbg !2668
  br i1 %tobool42, label %if.end52, label %land.lhs.true43, !dbg !2670

land.lhs.true43:                                  ; preds = %if.end41
  %call44 = tail call i32 @integer_zerop(%union.tree_node* nonnull %1) #6, !dbg !2671
  %tobool45 = icmp eq i32 %call44, 0, !dbg !2671
  br i1 %tobool45, label %if.then46, label %if.end52, !dbg !2672

if.then46:                                        ; preds = %land.lhs.true43
  %tobool47 = icmp eq %union.tree_node* %addr_off.2, null, !dbg !2673
  br i1 %tobool47, label %if.end52, label %if.then48, !dbg !2676

if.then48:                                        ; preds = %if.then46
  %10 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !2677
  %call49 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 63, %union.tree_node* %10, %union.tree_node* nonnull %addr_off.2, %union.tree_node* nonnull %1) #6, !dbg !2677
  call void @llvm.dbg.value(metadata %union.tree_node* %call49, metadata !2629, metadata !DIExpression()), !dbg !2630
  br label %if.end52, !dbg !2678

if.end52:                                         ; preds = %if.then46, %land.lhs.true43, %if.end41, %if.then48
  %addr_off.4 = phi %union.tree_node* [ %addr_off.2, %land.lhs.true43 ], [ %addr_off.2, %if.end41 ], [ %call49, %if.then48 ], [ %1, %if.then46 ], !dbg !2630
  call void @llvm.dbg.value(metadata %union.tree_node* %addr_off.4, metadata !2629, metadata !DIExpression()), !dbg !2630
  %tobool53 = icmp eq %union.tree_node* %addr_off.4, null, !dbg !2679
  %tobool55 = icmp ne %union.tree_node* %addr_base.1, null, !dbg !2681
  br i1 %tobool53, label %if.else61, label %if.then54, !dbg !2682

if.then54:                                        ; preds = %if.end52
  br i1 %tobool55, label %if.then56, label %if.else58, !dbg !2683

if.then56:                                        ; preds = %if.then54
  %call57 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 66, %union.tree_node* %type, %union.tree_node* nonnull %addr_base.1, %union.tree_node* nonnull %addr_off.4) #6, !dbg !2685
  call void @llvm.dbg.value(metadata %union.tree_node* %call57, metadata !2622, metadata !DIExpression()), !dbg !2630
  br label %if.end67, !dbg !2687

if.else58:                                        ; preds = %if.then54
  %call59 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %type, %union.tree_node* nonnull %addr_off.4) #6, !dbg !2688
  call void @llvm.dbg.value(metadata %union.tree_node* %call59, metadata !2622, metadata !DIExpression()), !dbg !2630
  br label %if.end67

if.else61:                                        ; preds = %if.end52
  br i1 %tobool55, label %if.end67, label %if.else64, !dbg !2689

if.else64:                                        ; preds = %if.else61
  %call65 = tail call %union.tree_node* @build_int_cst(%union.tree_node* %type, i64 0) #6, !dbg !2690
  call void @llvm.dbg.value(metadata %union.tree_node* %call65, metadata !2622, metadata !DIExpression()), !dbg !2630
  br label %if.end67

if.end67:                                         ; preds = %if.else64, %if.else61, %if.then56, %if.else58
  %addr.2 = phi %union.tree_node* [ %call57, %if.then56 ], [ %call59, %if.else58 ], [ %call65, %if.else64 ], [ %addr_base.1, %if.else61 ], !dbg !2681
  call void @llvm.dbg.value(metadata %union.tree_node* %addr.2, metadata !2622, metadata !DIExpression()), !dbg !2630
  ret %union.tree_node* %addr.2, !dbg !2692
}

declare dso_local %union.tree_node* @fold_convert_loc(i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @fold_build2_stat_loc(i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @build_int_cst(%union.tree_node*, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @create_mem_ref(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %type, %struct.affine_tree_combination* %addr, %union.tree_node* %base_hint, i8 zeroext %speed) local_unnamed_addr #4 !dbg !2693 {
entry:
  %parts = alloca %struct.mem_address, align 8
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2721, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !2722, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %addr, metadata !2723, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata %union.tree_node* %base_hint, metadata !2724, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata i8 %speed, metadata !2725, metadata !DIExpression()), !dbg !2730
  %0 = bitcast %struct.mem_address* %parts to i8*, !dbg !2731
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #7, !dbg !2731
  call void @llvm.dbg.value(metadata %struct.mem_address* %parts, metadata !2729, metadata !DIExpression(DW_OP_deref)), !dbg !2730
  call fastcc void @addr_to_parts(%union.tree_node* %type, %struct.affine_tree_combination* %addr, %union.tree_node* %base_hint, %struct.mem_address* nonnull %parts, i8 zeroext %speed) #8, !dbg !2732
  call void @llvm.dbg.value(metadata %struct.mem_address* %parts, metadata !2729, metadata !DIExpression(DW_OP_deref)), !dbg !2730
  call fastcc void @gimplify_mem_ref_parts(%struct.gimple_stmt_iterator* %gsi, %struct.mem_address* nonnull %parts) #8, !dbg !2733
  call void @llvm.dbg.value(metadata %struct.mem_address* %parts, metadata !2729, metadata !DIExpression(DW_OP_deref)), !dbg !2730
  %call = call fastcc %union.tree_node* @create_mem_ref_raw(%union.tree_node* %type, %struct.mem_address* nonnull %parts) #8, !dbg !2734
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2726, metadata !DIExpression()), !dbg !2730
  %tobool = icmp eq %union.tree_node* %call, null, !dbg !2735
  br i1 %tobool, label %if.end, label %cleanup, !dbg !2737

if.end:                                           ; preds = %entry
  %step = getelementptr inbounds %struct.mem_address, %struct.mem_address* %parts, i64 0, i32 3, !dbg !2738
  %1 = load %union.tree_node*, %union.tree_node** %step, align 8, !dbg !2738
  %tobool1 = icmp eq %union.tree_node* %1, null, !dbg !2740
  br i1 %tobool1, label %if.end17, label %land.lhs.true, !dbg !2741

land.lhs.true:                                    ; preds = %if.end
  %call3 = call i32 @integer_onep(%union.tree_node* nonnull %1) #6, !dbg !2742
  %tobool4 = icmp eq i32 %call3, 0, !dbg !2742
  br i1 %tobool4, label %if.then5, label %if.end17, !dbg !2743

if.then5:                                         ; preds = %land.lhs.true
  %index = getelementptr inbounds %struct.mem_address, %struct.mem_address* %parts, i64 0, i32 2, !dbg !2744
  %2 = load %union.tree_node*, %union.tree_node** %index, align 8, !dbg !2744
  %tobool6 = icmp eq %union.tree_node* %2, null, !dbg !2744
  br i1 %tobool6, label %cond.true, label %cond.end, !dbg !2744

cond.true:                                        ; preds = %if.then5
  call void @fancy_abort(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 650, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2744
  %.pre = load %union.tree_node*, %union.tree_node** %index, align 8, !dbg !2746
  br label %cond.end, !dbg !2744

cond.end:                                         ; preds = %if.then5, %cond.true
  %3 = phi %union.tree_node* [ %2, %if.then5 ], [ %.pre, %cond.true ], !dbg !2746
  %4 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !2746
  %5 = load %union.tree_node*, %union.tree_node** %step, align 8, !dbg !2746
  %call9 = call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 65, %union.tree_node* %4, %union.tree_node* %3, %union.tree_node* %5) #6, !dbg !2746
  %call10 = call %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %call9, i8 zeroext 1, %union.tree_node* null, i8 zeroext 1, i32 1) #6, !dbg !2747
  store %union.tree_node* %call10, %union.tree_node** %index, align 8, !dbg !2748
  store %union.tree_node* null, %union.tree_node** %step, align 8, !dbg !2749
  call void @llvm.dbg.value(metadata %struct.mem_address* %parts, metadata !2729, metadata !DIExpression(DW_OP_deref)), !dbg !2730
  %call13 = call fastcc %union.tree_node* @create_mem_ref_raw(%union.tree_node* %type, %struct.mem_address* nonnull %parts) #8, !dbg !2750
  call void @llvm.dbg.value(metadata %union.tree_node* %call13, metadata !2726, metadata !DIExpression()), !dbg !2730
  %tobool14 = icmp eq %union.tree_node* %call13, null, !dbg !2751
  br i1 %tobool14, label %if.end17, label %cleanup, !dbg !2753

if.end17:                                         ; preds = %cond.end, %land.lhs.true, %if.end
  %symbol = getelementptr inbounds %struct.mem_address, %struct.mem_address* %parts, i64 0, i32 0, !dbg !2754
  %6 = load %union.tree_node*, %union.tree_node** %symbol, align 8, !dbg !2754
  %tobool18 = icmp eq %union.tree_node* %6, null, !dbg !2756
  br i1 %tobool18, label %if.end60, label %if.then19, !dbg !2757

if.then19:                                        ; preds = %if.end17
  %7 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !2758
  %call21 = call %union.tree_node* @build_addr(%union.tree_node* nonnull %6, %union.tree_node* %7) #6, !dbg !2760
  call void @llvm.dbg.value(metadata %union.tree_node* %call21, metadata !2727, metadata !DIExpression()), !dbg !2730
  %call22 = call zeroext i8 @is_gimple_val(%union.tree_node* %call21) #6, !dbg !2761
  %tobool23 = icmp eq i8 %call22, 0, !dbg !2761
  br i1 %tobool23, label %cond.true24, label %cond.end26, !dbg !2761

cond.true24:                                      ; preds = %if.then19
  call void @fancy_abort(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 665, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2761
  br label %cond.end26, !dbg !2761

cond.end26:                                       ; preds = %if.then19, %cond.true24
  %base = getelementptr inbounds %struct.mem_address, %struct.mem_address* %parts, i64 0, i32 1, !dbg !2762
  %8 = load %union.tree_node*, %union.tree_node** %base, align 8, !dbg !2762
  %tobool28 = icmp eq %union.tree_node* %8, null, !dbg !2764
  br i1 %tobool28, label %if.else52, label %if.then29, !dbg !2765

if.then29:                                        ; preds = %cond.end26
  %9 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !2766
  %type31 = getelementptr inbounds %union.tree_node, %union.tree_node* %8, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2766
  %10 = load %union.tree_node*, %union.tree_node** %type31, align 8, !dbg !2766
  %call32 = call zeroext i8 @useless_type_conversion_p(%union.tree_node* %9, %union.tree_node* %10) #6, !dbg !2766
  %tobool33 = icmp eq i8 %call32, 0, !dbg !2766
  br i1 %tobool33, label %cond.true34, label %cond.end36, !dbg !2766

cond.true34:                                      ; preds = %if.then29
  call void @fancy_abort(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 671, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2766
  br label %cond.end36, !dbg !2766

cond.end36:                                       ; preds = %if.then29, %cond.true34
  %index38 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %parts, i64 0, i32 2, !dbg !2768
  %11 = load %union.tree_node*, %union.tree_node** %index38, align 8, !dbg !2768
  %tobool39 = icmp eq %union.tree_node* %11, null, !dbg !2770
  br i1 %tobool39, label %if.else, label %if.then40, !dbg !2771

if.then40:                                        ; preds = %cond.end36
  %type42 = getelementptr inbounds %union.tree_node, %union.tree_node* %call21, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2772
  %12 = load %union.tree_node*, %union.tree_node** %type42, align 8, !dbg !2772
  call void @llvm.dbg.value(metadata %union.tree_node* %12, metadata !2728, metadata !DIExpression()), !dbg !2730
  %13 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !2774
  %14 = load %union.tree_node*, %union.tree_node** %base, align 8, !dbg !2774
  %call44 = call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %13, %union.tree_node* %14) #6, !dbg !2774
  %call45 = call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 66, %union.tree_node* %12, %union.tree_node* %call21, %union.tree_node* %call44) #6, !dbg !2774
  %call46 = call %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %call45, i8 zeroext 1, %union.tree_node* null, i8 zeroext 1, i32 1) #6, !dbg !2775
  store %union.tree_node* %call46, %union.tree_node** %base, align 8, !dbg !2776
  br label %if.end54, !dbg !2777

if.else:                                          ; preds = %cond.end36
  %15 = bitcast %union.tree_node** %base to i64*, !dbg !2778
  %16 = load i64, i64* %15, align 8, !dbg !2778
  %17 = bitcast %union.tree_node** %index38 to i64*, !dbg !2780
  store i64 %16, i64* %17, align 8, !dbg !2780
  store %union.tree_node* %call21, %union.tree_node** %base, align 8, !dbg !2781
  br label %if.end54

if.else52:                                        ; preds = %cond.end26
  store %union.tree_node* %call21, %union.tree_node** %base, align 8, !dbg !2782
  br label %if.end54

if.end54:                                         ; preds = %if.then40, %if.else, %if.else52
  store %union.tree_node* null, %union.tree_node** %symbol, align 8, !dbg !2783
  call void @llvm.dbg.value(metadata %struct.mem_address* %parts, metadata !2729, metadata !DIExpression(DW_OP_deref)), !dbg !2730
  %call56 = call fastcc %union.tree_node* @create_mem_ref_raw(%union.tree_node* %type, %struct.mem_address* nonnull %parts) #8, !dbg !2784
  call void @llvm.dbg.value(metadata %union.tree_node* %call56, metadata !2726, metadata !DIExpression()), !dbg !2730
  %tobool57 = icmp eq %union.tree_node* %call56, null, !dbg !2785
  br i1 %tobool57, label %if.end60, label %cleanup, !dbg !2787

if.end60:                                         ; preds = %if.end54, %if.end17
  %index61 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %parts, i64 0, i32 2, !dbg !2788
  %18 = load %union.tree_node*, %union.tree_node** %index61, align 8, !dbg !2788
  %tobool62 = icmp eq %union.tree_node* %18, null, !dbg !2790
  %19 = ptrtoint %union.tree_node* %18 to i64, !dbg !2791
  br i1 %tobool62, label %if.end84, label %if.then63, !dbg !2791

if.then63:                                        ; preds = %if.end60
  %base64 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %parts, i64 0, i32 1, !dbg !2792
  %20 = load %union.tree_node*, %union.tree_node** %base64, align 8, !dbg !2792
  %tobool65 = icmp eq %union.tree_node* %20, null, !dbg !2795
  br i1 %tobool65, label %if.else75, label %if.then66, !dbg !2796

if.then66:                                        ; preds = %if.then63
  %type69 = getelementptr inbounds %union.tree_node, %union.tree_node* %20, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2797
  %21 = load %union.tree_node*, %union.tree_node** %type69, align 8, !dbg !2797
  call void @llvm.dbg.value(metadata %union.tree_node* %21, metadata !2728, metadata !DIExpression()), !dbg !2730
  %call72 = call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 66, %union.tree_node* %21, %union.tree_node* nonnull %20, %union.tree_node* nonnull %18) #6, !dbg !2799
  %call73 = call %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %call72, i8 zeroext 1, %union.tree_node* null, i8 zeroext 1, i32 1) #6, !dbg !2800
  store %union.tree_node* %call73, %union.tree_node** %base64, align 8, !dbg !2801
  br label %if.end78, !dbg !2802

if.else75:                                        ; preds = %if.then63
  %22 = bitcast %union.tree_node** %base64 to i64*, !dbg !2803
  store i64 %19, i64* %22, align 8, !dbg !2803
  br label %if.end78

if.end78:                                         ; preds = %if.else75, %if.then66
  store %union.tree_node* null, %union.tree_node** %index61, align 8, !dbg !2804
  call void @llvm.dbg.value(metadata %struct.mem_address* %parts, metadata !2729, metadata !DIExpression(DW_OP_deref)), !dbg !2730
  %call80 = call fastcc %union.tree_node* @create_mem_ref_raw(%union.tree_node* %type, %struct.mem_address* nonnull %parts) #8, !dbg !2805
  call void @llvm.dbg.value(metadata %union.tree_node* %call80, metadata !2726, metadata !DIExpression()), !dbg !2730
  %tobool81 = icmp eq %union.tree_node* %call80, null, !dbg !2806
  br i1 %tobool81, label %if.end84, label %cleanup, !dbg !2808

if.end84:                                         ; preds = %if.end78, %if.end60
  %offset = getelementptr inbounds %struct.mem_address, %struct.mem_address* %parts, i64 0, i32 4, !dbg !2809
  %23 = load %union.tree_node*, %union.tree_node** %offset, align 8, !dbg !2809
  %tobool85 = icmp eq %union.tree_node* %23, null, !dbg !2811
  br i1 %tobool85, label %if.end112, label %land.lhs.true86, !dbg !2812

land.lhs.true86:                                  ; preds = %if.end84
  %call88 = call i32 @integer_zerop(%union.tree_node* nonnull %23) #6, !dbg !2813
  %tobool89 = icmp eq i32 %call88, 0, !dbg !2813
  br i1 %tobool89, label %if.then90, label %if.end112, !dbg !2814

if.then90:                                        ; preds = %land.lhs.true86
  %base91 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %parts, i64 0, i32 1, !dbg !2815
  %24 = load %union.tree_node*, %union.tree_node** %base91, align 8, !dbg !2815
  %tobool92 = icmp eq %union.tree_node* %24, null, !dbg !2818
  br i1 %tobool92, label %if.else103, label %if.then93, !dbg !2819

if.then93:                                        ; preds = %if.then90
  %type96 = getelementptr inbounds %union.tree_node, %union.tree_node* %24, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2820
  %25 = load %union.tree_node*, %union.tree_node** %type96, align 8, !dbg !2820
  call void @llvm.dbg.value(metadata %union.tree_node* %25, metadata !2728, metadata !DIExpression()), !dbg !2730
  %26 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !2822
  %27 = load %union.tree_node*, %union.tree_node** %offset, align 8, !dbg !2822
  %call99 = call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %26, %union.tree_node* %27) #6, !dbg !2822
  %call100 = call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 66, %union.tree_node* %25, %union.tree_node* nonnull %24, %union.tree_node* %call99) #6, !dbg !2822
  %call101 = call %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %call100, i8 zeroext 1, %union.tree_node* null, i8 zeroext 1, i32 1) #6, !dbg !2823
  store %union.tree_node* %call101, %union.tree_node** %base91, align 8, !dbg !2824
  br label %if.end106, !dbg !2825

if.else103:                                       ; preds = %if.then90
  %28 = bitcast %union.tree_node** %offset to i64*, !dbg !2826
  %29 = load i64, i64* %28, align 8, !dbg !2826
  %30 = bitcast %union.tree_node** %base91 to i64*, !dbg !2827
  store i64 %29, i64* %30, align 8, !dbg !2827
  br label %if.end106

if.end106:                                        ; preds = %if.else103, %if.then93
  store %union.tree_node* null, %union.tree_node** %offset, align 8, !dbg !2828
  call void @llvm.dbg.value(metadata %struct.mem_address* %parts, metadata !2729, metadata !DIExpression(DW_OP_deref)), !dbg !2730
  %call108 = call fastcc %union.tree_node* @create_mem_ref_raw(%union.tree_node* %type, %struct.mem_address* nonnull %parts) #8, !dbg !2829
  call void @llvm.dbg.value(metadata %union.tree_node* %call108, metadata !2726, metadata !DIExpression()), !dbg !2730
  %tobool109 = icmp eq %union.tree_node* %call108, null, !dbg !2830
  br i1 %tobool109, label %if.end112, label %cleanup, !dbg !2832

if.end112:                                        ; preds = %if.end106, %land.lhs.true86, %if.end84
  %31 = load %union.tree_node*, %union.tree_node** %symbol, align 8, !dbg !2833
  %cmp = icmp eq %union.tree_node* %31, null, !dbg !2833
  br i1 %cmp, label %cond.end116, label %cond.true114, !dbg !2833

cond.true114:                                     ; preds = %if.end112
  call void @fancy_abort(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 743, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2833
  br label %cond.end116, !dbg !2833

cond.end116:                                      ; preds = %if.end112, %cond.true114
  %32 = load %union.tree_node*, %union.tree_node** %index61, align 8, !dbg !2834
  %cmp119 = icmp eq %union.tree_node* %32, null, !dbg !2834
  br i1 %cmp119, label %cond.end122, label %cond.true120, !dbg !2834

cond.true120:                                     ; preds = %cond.end116
  call void @fancy_abort(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 744, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2834
  br label %cond.end122, !dbg !2834

cond.end122:                                      ; preds = %cond.end116, %cond.true120
  %33 = load %union.tree_node*, %union.tree_node** %step, align 8, !dbg !2835
  %tobool125 = icmp eq %union.tree_node* %33, null, !dbg !2835
  br i1 %tobool125, label %cond.end131, label %lor.lhs.false, !dbg !2835

lor.lhs.false:                                    ; preds = %cond.end122
  %call127 = call i32 @integer_onep(%union.tree_node* nonnull %33) #6, !dbg !2835
  %tobool128 = icmp eq i32 %call127, 0, !dbg !2835
  br i1 %tobool128, label %cond.true129, label %cond.end131, !dbg !2835

cond.true129:                                     ; preds = %lor.lhs.false
  call void @fancy_abort(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 745, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2835
  br label %cond.end131, !dbg !2835

cond.end131:                                      ; preds = %lor.lhs.false, %cond.end122, %cond.true129
  %34 = load %union.tree_node*, %union.tree_node** %offset, align 8, !dbg !2836
  %tobool134 = icmp eq %union.tree_node* %34, null, !dbg !2836
  br i1 %tobool134, label %cond.end141, label %lor.lhs.false135, !dbg !2836

lor.lhs.false135:                                 ; preds = %cond.end131
  %call137 = call i32 @integer_zerop(%union.tree_node* nonnull %34) #6, !dbg !2836
  %tobool138 = icmp eq i32 %call137, 0, !dbg !2836
  br i1 %tobool138, label %cond.true139, label %cond.end141, !dbg !2836

cond.true139:                                     ; preds = %lor.lhs.false135
  call void @fancy_abort(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 746, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2836
  br label %cond.end141, !dbg !2836

cond.end141:                                      ; preds = %lor.lhs.false135, %cond.end131, %cond.true139
  call void @fancy_abort(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 747, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2837
  br label %cleanup, !dbg !2838

cleanup:                                          ; preds = %cond.end, %if.end54, %if.end78, %if.end106, %entry, %cond.end141
  %retval.0 = phi %union.tree_node* [ null, %cond.end141 ], [ %call, %entry ], [ %call13, %cond.end ], [ %call56, %if.end54 ], [ %call80, %if.end78 ], [ %call108, %if.end106 ], !dbg !2730
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #7, !dbg !2839
  ret %union.tree_node* %retval.0, !dbg !2839
}

; Function Attrs: nounwind uwtable
define internal fastcc void @addr_to_parts(%union.tree_node* %type, %struct.affine_tree_combination* %addr, %union.tree_node* %base_hint, %struct.mem_address* %parts, i8 zeroext %speed) unnamed_addr #4 !dbg !2840 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !2844, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %addr, metadata !2845, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata %union.tree_node* %base_hint, metadata !2846, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata %struct.mem_address* %parts, metadata !2847, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i8 %speed, metadata !2848, metadata !DIExpression()), !dbg !2851
  %symbol = getelementptr inbounds %struct.mem_address, %struct.mem_address* %parts, i64 0, i32 0, !dbg !2852
  store %union.tree_node* null, %union.tree_node** %symbol, align 8, !dbg !2853
  %base = getelementptr inbounds %struct.mem_address, %struct.mem_address* %parts, i64 0, i32 1, !dbg !2854
  store %union.tree_node* null, %union.tree_node** %base, align 8, !dbg !2855
  %index = getelementptr inbounds %struct.mem_address, %struct.mem_address* %parts, i64 0, i32 2, !dbg !2856
  store %union.tree_node* null, %union.tree_node** %index, align 8, !dbg !2857
  %step = getelementptr inbounds %struct.mem_address, %struct.mem_address* %parts, i64 0, i32 3, !dbg !2858
  store %union.tree_node* null, %union.tree_node** %step, align 8, !dbg !2859
  %0 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %addr, i64 0, i32 1, i32 0, !dbg !2860
  %1 = load i64, i64* %0, align 8, !dbg !2860
  %2 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %addr, i64 0, i32 1, i32 1, !dbg !2860
  %3 = load i64, i64* %2, align 8, !dbg !2860
  %call = tail call fastcc zeroext i8 @double_int_zero_p(i64 %1, i64 %3) #8, !dbg !2860
  %tobool = icmp eq i8 %call, 0, !dbg !2860
  br i1 %tobool, label %if.then, label %if.else, !dbg !2862

if.then:                                          ; preds = %entry
  %4 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !2863
  %5 = load i64, i64* %0, align 8, !dbg !2864
  %6 = load i64, i64* %2, align 8, !dbg !2864
  %call2 = tail call %union.tree_node* @double_int_to_tree(%union.tree_node* %4, i64 %5, i64 %6) #6, !dbg !2864
  %offset3 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %parts, i64 0, i32 4, !dbg !2865
  store %union.tree_node* %call2, %union.tree_node** %offset3, align 8, !dbg !2866
  br label %if.end, !dbg !2867

if.else:                                          ; preds = %entry
  %offset4 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %parts, i64 0, i32 4, !dbg !2868
  store %union.tree_node* null, %union.tree_node** %offset4, align 8, !dbg !2869
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call fastcc void @move_fixed_address_to_symbol(%struct.mem_address* %parts, %struct.affine_tree_combination* %addr) #8, !dbg !2870
  tail call fastcc void @most_expensive_mult_to_index(%union.tree_node* %type, %struct.mem_address* %parts, %struct.affine_tree_combination* %addr, i8 zeroext %speed) #8, !dbg !2871
  %7 = load %union.tree_node*, %union.tree_node** %symbol, align 8, !dbg !2872
  %tobool6 = icmp eq %union.tree_node* %7, null, !dbg !2874
  %tobool7 = icmp ne %union.tree_node* %base_hint, null, !dbg !2875
  %or.cond = and i1 %tobool6, %tobool7, !dbg !2876
  br i1 %or.cond, label %if.then8, label %if.end9, !dbg !2876

if.then8:                                         ; preds = %if.end
  tail call fastcc void @move_hint_to_base(%union.tree_node* %type, %struct.mem_address* %parts, %union.tree_node* nonnull %base_hint, %struct.affine_tree_combination* %addr) #8, !dbg !2877
  %.pre = load %union.tree_node*, %union.tree_node** %symbol, align 8, !dbg !2878
  br label %if.end9, !dbg !2877

if.end9:                                          ; preds = %if.end, %if.then8
  %8 = phi %union.tree_node* [ %7, %if.end ], [ %.pre, %if.then8 ], !dbg !2878
  %tobool11 = icmp eq %union.tree_node* %8, null, !dbg !2880
  br i1 %tobool11, label %land.lhs.true12, label %if.end16, !dbg !2881

land.lhs.true12:                                  ; preds = %if.end9
  %9 = load %union.tree_node*, %union.tree_node** %base, align 8, !dbg !2882
  %tobool14 = icmp eq %union.tree_node* %9, null, !dbg !2883
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !2884

if.then15:                                        ; preds = %land.lhs.true12
  tail call fastcc void @move_pointer_to_base(%struct.mem_address* %parts, %struct.affine_tree_combination* %addr) #8, !dbg !2885
  br label %if.end16, !dbg !2885

if.end16:                                         ; preds = %land.lhs.true12, %if.end9, %if.then15
  call void @llvm.dbg.value(metadata i32 0, metadata !2850, metadata !DIExpression()), !dbg !2851
  %n = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %addr, i64 0, i32 2, !dbg !2886
  br label %for.cond, !dbg !2889

for.cond:                                         ; preds = %if.end30, %if.end16
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end30 ], [ 0, %if.end16 ], !dbg !2890
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2850, metadata !DIExpression()), !dbg !2851
  %10 = load i32, i32* %n, align 8, !dbg !2891
  %11 = zext i32 %10 to i64, !dbg !2892
  %cmp = icmp ult i64 %indvars.iv, %11, !dbg !2892
  br i1 %cmp, label %for.body, label %for.end, !dbg !2893

for.body:                                         ; preds = %for.cond
  %12 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !2894
  %val = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %addr, i64 0, i32 3, i64 %indvars.iv, i32 0, !dbg !2894
  %13 = load %union.tree_node*, %union.tree_node** %val, align 8, !dbg !2894
  %call17 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %12, %union.tree_node* %13) #6, !dbg !2894
  call void @llvm.dbg.value(metadata %union.tree_node* %call17, metadata !2849, metadata !DIExpression()), !dbg !2851
  %14 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %addr, i64 0, i32 3, i64 %indvars.iv, i32 1, i32 0, !dbg !2896
  %15 = load i64, i64* %14, align 8, !dbg !2896
  %16 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %addr, i64 0, i32 3, i64 %indvars.iv, i32 1, i32 1, !dbg !2896
  %17 = load i64, i64* %16, align 8, !dbg !2896
  %call21 = tail call fastcc zeroext i8 @double_int_one_p(i64 %15, i64 %17) #8, !dbg !2896
  %tobool22 = icmp eq i8 %call21, 0, !dbg !2896
  br i1 %tobool22, label %if.then23, label %if.end30, !dbg !2898

if.then23:                                        ; preds = %for.body
  %18 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !2899
  %19 = load i64, i64* %14, align 8, !dbg !2899
  %20 = load i64, i64* %16, align 8, !dbg !2899
  %call28 = tail call %union.tree_node* @double_int_to_tree(%union.tree_node* %18, i64 %19, i64 %20) #6, !dbg !2899
  %call29 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 65, %union.tree_node* %18, %union.tree_node* %call17, %union.tree_node* %call28) #6, !dbg !2899
  call void @llvm.dbg.value(metadata %union.tree_node* %call29, metadata !2849, metadata !DIExpression()), !dbg !2851
  br label %if.end30, !dbg !2900

if.end30:                                         ; preds = %for.body, %if.then23
  %part.0 = phi %union.tree_node* [ %call17, %for.body ], [ %call29, %if.then23 ], !dbg !2901
  call void @llvm.dbg.value(metadata %union.tree_node* %part.0, metadata !2849, metadata !DIExpression()), !dbg !2851
  tail call fastcc void @add_to_parts(%struct.mem_address* %parts, %union.tree_node* %part.0) #8, !dbg !2902
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2903
  br label %for.cond, !dbg !2904, !llvm.loop !2905

for.end:                                          ; preds = %for.cond
  %rest = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %addr, i64 0, i32 4, !dbg !2907
  %21 = load %union.tree_node*, %union.tree_node** %rest, align 8, !dbg !2907
  %tobool31 = icmp eq %union.tree_node* %21, null, !dbg !2909
  br i1 %tobool31, label %if.end35, label %if.then32, !dbg !2910

if.then32:                                        ; preds = %for.end
  %22 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !2911
  %call34 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %22, %union.tree_node* nonnull %21) #6, !dbg !2911
  tail call fastcc void @add_to_parts(%struct.mem_address* %parts, %union.tree_node* %call34) #8, !dbg !2912
  br label %if.end35, !dbg !2912

if.end35:                                         ; preds = %for.end, %if.then32
  ret void, !dbg !2913
}

; Function Attrs: nounwind uwtable
define internal fastcc void @gimplify_mem_ref_parts(%struct.gimple_stmt_iterator* %gsi, %struct.mem_address* %parts) unnamed_addr #4 !dbg !2914 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2918, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata %struct.mem_address* %parts, metadata !2919, metadata !DIExpression()), !dbg !2920
  %base = getelementptr inbounds %struct.mem_address, %struct.mem_address* %parts, i64 0, i32 1, !dbg !2921
  %0 = load %union.tree_node*, %union.tree_node** %base, align 8, !dbg !2921
  %tobool = icmp eq %union.tree_node* %0, null, !dbg !2923
  br i1 %tobool, label %if.end, label %if.then, !dbg !2924

if.then:                                          ; preds = %entry
  %call = tail call %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* nonnull %0, i8 zeroext 1, %union.tree_node* null, i8 zeroext 1, i32 1) #6, !dbg !2925
  store %union.tree_node* %call, %union.tree_node** %base, align 8, !dbg !2926
  br label %if.end, !dbg !2927

if.end:                                           ; preds = %entry, %if.then
  %index = getelementptr inbounds %struct.mem_address, %struct.mem_address* %parts, i64 0, i32 2, !dbg !2928
  %1 = load %union.tree_node*, %union.tree_node** %index, align 8, !dbg !2928
  %tobool3 = icmp eq %union.tree_node* %1, null, !dbg !2930
  br i1 %tobool3, label %if.end8, label %if.then4, !dbg !2931

if.then4:                                         ; preds = %if.end
  %call6 = tail call %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* nonnull %1, i8 zeroext 1, %union.tree_node* null, i8 zeroext 1, i32 1) #6, !dbg !2932
  store %union.tree_node* %call6, %union.tree_node** %index, align 8, !dbg !2933
  br label %if.end8, !dbg !2934

if.end8:                                          ; preds = %if.end, %if.then4
  ret void, !dbg !2935
}

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @create_mem_ref_raw(%union.tree_node* %type, %struct.mem_address* %addr) unnamed_addr #4 !dbg !2936 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !2940, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata %struct.mem_address* %addr, metadata !2941, metadata !DIExpression()), !dbg !2942
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2943
  %bf.load = load i64, i64* %0, align 8, !dbg !2943
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2943
  %cmp = icmp eq i64 %bf.cast1, 14, !dbg !2943
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2943

cond.true:                                        ; preds = %entry
  %call = tail call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2943
  %bf.load5.pre = load i64, i64* %0, align 8, !dbg !2945
  br label %cond.end, !dbg !2943

cond.false:                                       ; preds = %entry
  %type1 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2943
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i64 0, i32 6, !dbg !2943
  %bf.load2 = load i32, i32* %mode, align 4, !dbg !2943
  %bf.lshr = lshr i32 %bf.load2, 16, !dbg !2943
  %bf.clear3 = and i32 %bf.lshr, 255, !dbg !2943
  br label %cond.end, !dbg !2943

cond.end:                                         ; preds = %cond.false, %cond.true
  %bf.load5 = phi i64 [ %bf.load5.pre, %cond.true ], [ %bf.load, %cond.false ], !dbg !2945
  %cond = phi i32 [ %call, %cond.true ], [ %bf.clear3, %cond.false ], !dbg !2943
  %bf.lshr6 = lshr i64 %bf.load5, 56, !dbg !2945
  %conv = trunc i64 %bf.lshr6 to i8, !dbg !2945
  %call8 = tail call fastcc zeroext i8 @valid_mem_ref_p(i32 %cond, i8 zeroext %conv, %struct.mem_address* %addr) #8, !dbg !2946
  %tobool = icmp eq i8 %call8, 0, !dbg !2946
  br i1 %tobool, label %return, label %if.end, !dbg !2947

if.end:                                           ; preds = %cond.end
  %step = getelementptr inbounds %struct.mem_address, %struct.mem_address* %addr, i64 0, i32 3, !dbg !2948
  %1 = load %union.tree_node*, %union.tree_node** %step, align 8, !dbg !2948
  %tobool9 = icmp eq %union.tree_node* %1, null, !dbg !2950
  br i1 %tobool9, label %if.end15, label %land.lhs.true, !dbg !2951

land.lhs.true:                                    ; preds = %if.end
  %call11 = tail call i32 @integer_onep(%union.tree_node* nonnull %1) #6, !dbg !2952
  %tobool12 = icmp eq i32 %call11, 0, !dbg !2952
  br i1 %tobool12, label %if.end15, label %if.then13, !dbg !2953

if.then13:                                        ; preds = %land.lhs.true
  store %union.tree_node* null, %union.tree_node** %step, align 8, !dbg !2954
  br label %if.end15, !dbg !2955

if.end15:                                         ; preds = %land.lhs.true, %if.end, %if.then13
  %offset = getelementptr inbounds %struct.mem_address, %struct.mem_address* %addr, i64 0, i32 4, !dbg !2956
  %2 = load %union.tree_node*, %union.tree_node** %offset, align 8, !dbg !2956
  %tobool16 = icmp eq %union.tree_node* %2, null, !dbg !2958
  br i1 %tobool16, label %if.end23, label %land.lhs.true17, !dbg !2959

land.lhs.true17:                                  ; preds = %if.end15
  %call19 = tail call i32 @integer_zerop(%union.tree_node* nonnull %2) #6, !dbg !2960
  %tobool20 = icmp eq i32 %call19, 0, !dbg !2960
  br i1 %tobool20, label %land.lhs.true17.if.end23_crit_edge, label %if.then21, !dbg !2961

land.lhs.true17.if.end23_crit_edge:               ; preds = %land.lhs.true17
  %.pre = load %union.tree_node*, %union.tree_node** %offset, align 8, !dbg !2962
  br label %if.end23, !dbg !2961

if.then21:                                        ; preds = %land.lhs.true17
  store %union.tree_node* null, %union.tree_node** %offset, align 8, !dbg !2963
  br label %if.end23, !dbg !2964

if.end23:                                         ; preds = %land.lhs.true17.if.end23_crit_edge, %if.end15, %if.then21
  %3 = phi %union.tree_node* [ %.pre, %land.lhs.true17.if.end23_crit_edge ], [ null, %if.end15 ], [ null, %if.then21 ], !dbg !2962
  %symbol = getelementptr inbounds %struct.mem_address, %struct.mem_address* %addr, i64 0, i32 0, !dbg !2962
  %4 = load %union.tree_node*, %union.tree_node** %symbol, align 8, !dbg !2962
  %base24 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %addr, i64 0, i32 1, !dbg !2962
  %5 = load %union.tree_node*, %union.tree_node** %base24, align 8, !dbg !2962
  %index = getelementptr inbounds %struct.mem_address, %struct.mem_address* %addr, i64 0, i32 2, !dbg !2962
  %6 = load %union.tree_node*, %union.tree_node** %index, align 8, !dbg !2962
  %7 = load %union.tree_node*, %union.tree_node** %step, align 8, !dbg !2962
  %call27 = tail call %union.tree_node* @build6_stat(i32 152, %union.tree_node* %type, %union.tree_node* %4, %union.tree_node* %5, %union.tree_node* %6, %union.tree_node* %7, %union.tree_node* %3, %union.tree_node* null) #6, !dbg !2962
  br label %return, !dbg !2965

return:                                           ; preds = %cond.end, %if.end23
  %retval.0 = phi %union.tree_node* [ %call27, %if.end23 ], [ null, %cond.end ], !dbg !2942
  ret %union.tree_node* %retval.0, !dbg !2966
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

declare dso_local %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator*, %union.tree_node*, i8 zeroext, %union.tree_node*, i8 zeroext, i32) local_unnamed_addr #1

declare dso_local zeroext i8 @is_gimple_val(%union.tree_node*) local_unnamed_addr #1

declare dso_local zeroext i8 @useless_type_conversion_p(%union.tree_node*, %union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @get_address_description(%union.tree_node* %op, %struct.mem_address* %addr) local_unnamed_addr #4 !dbg !2967 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %op, metadata !2971, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata %struct.mem_address* %addr, metadata !2972, metadata !DIExpression()), !dbg !2973
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %op, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2974
  %0 = bitcast %union.tree_node** %operands to i64*, !dbg !2974
  %1 = load i64, i64* %0, align 8, !dbg !2974
  %2 = bitcast %struct.mem_address* %addr to i64*, !dbg !2975
  store i64 %1, i64* %2, align 8, !dbg !2975
  %arrayidx3 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !2976
  %3 = bitcast %union.tree_node** %arrayidx3 to i64*, !dbg !2976
  %4 = load i64, i64* %3, align 8, !dbg !2976
  %base = getelementptr inbounds %struct.mem_address, %struct.mem_address* %addr, i64 0, i32 1, !dbg !2977
  %5 = bitcast %union.tree_node** %base to i64*, !dbg !2978
  store i64 %4, i64* %5, align 8, !dbg !2978
  %arrayidx6 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 2, !dbg !2979
  %6 = bitcast %union.tree_node** %arrayidx6 to i64*, !dbg !2979
  %7 = load i64, i64* %6, align 8, !dbg !2979
  %index = getelementptr inbounds %struct.mem_address, %struct.mem_address* %addr, i64 0, i32 2, !dbg !2980
  %8 = bitcast %union.tree_node** %index to i64*, !dbg !2981
  store i64 %7, i64* %8, align 8, !dbg !2981
  %arrayidx9 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 3, !dbg !2982
  %9 = bitcast %union.tree_node** %arrayidx9 to i64*, !dbg !2982
  %10 = load i64, i64* %9, align 8, !dbg !2982
  %step = getelementptr inbounds %struct.mem_address, %struct.mem_address* %addr, i64 0, i32 3, !dbg !2983
  %11 = bitcast %union.tree_node** %step to i64*, !dbg !2984
  store i64 %10, i64* %11, align 8, !dbg !2984
  %arrayidx12 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 4, !dbg !2985
  %12 = bitcast %union.tree_node** %arrayidx12 to i64*, !dbg !2985
  %13 = load i64, i64* %12, align 8, !dbg !2985
  %offset = getelementptr inbounds %struct.mem_address, %struct.mem_address* %addr, i64 0, i32 4, !dbg !2986
  %14 = bitcast %union.tree_node** %offset to i64*, !dbg !2987
  store i64 %13, i64* %14, align 8, !dbg !2987
  ret void, !dbg !2988
}

; Function Attrs: nounwind uwtable
define dso_local void @copy_mem_ref_info(%union.tree_node* %to, %union.tree_node* %from) local_unnamed_addr #4 !dbg !2989 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %to, metadata !2993, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata %union.tree_node* %from, metadata !2994, metadata !DIExpression()), !dbg !2995
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %from, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2996
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 5, !dbg !2996
  %0 = bitcast %union.tree_node** %arrayidx to i64*, !dbg !2996
  %1 = load i64, i64* %0, align 8, !dbg !2996
  %operands2 = getelementptr inbounds %union.tree_node, %union.tree_node* %to, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2997
  %arrayidx3 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands2, i64 5, !dbg !2997
  %2 = bitcast %union.tree_node** %arrayidx3 to i64*, !dbg !2998
  store i64 %1, i64* %2, align 8, !dbg !2998
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %from, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2999
  %bf.load = load i64, i64* %3, align 8, !dbg !2999
  %bf.cast = and i64 %bf.load, 65536, !dbg !2999
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %to, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3000
  %bf.load5 = load i64, i64* %4, align 8, !dbg !3001
  %bf.clear6 = and i64 %bf.load5, -65537, !dbg !3001
  %bf.set = or i64 %bf.clear6, %bf.cast, !dbg !3001
  store i64 %bf.set, i64* %4, align 8, !dbg !3001
  %bf.load8 = load i64, i64* %3, align 8, !dbg !3002
  %bf.cast11 = and i64 %bf.load8, 524288, !dbg !3002
  %bf.clear16 = and i64 %bf.set, -524289, !dbg !3003
  %bf.set17 = or i64 %bf.clear16, %bf.cast11, !dbg !3003
  store i64 %bf.set17, i64* %4, align 8, !dbg !3003
  ret void, !dbg !3004
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @maybe_fold_tmr(%union.tree_node* %ref) local_unnamed_addr #4 !dbg !3005 {
entry:
  %addr = alloca %struct.mem_address, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %ref, metadata !3009, metadata !DIExpression()), !dbg !3014
  %0 = bitcast %struct.mem_address* %addr to i8*, !dbg !3015
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #7, !dbg !3015
  call void @llvm.dbg.value(metadata i8 0, metadata !3011, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata %struct.mem_address* %addr, metadata !3010, metadata !DIExpression(DW_OP_deref)), !dbg !3014
  call void @get_address_description(%union.tree_node* %ref, %struct.mem_address* nonnull %addr) #8, !dbg !3016
  %base = getelementptr inbounds %struct.mem_address, %struct.mem_address* %addr, i64 0, i32 1, !dbg !3017
  %1 = load %union.tree_node*, %union.tree_node** %base, align 8, !dbg !3017
  %tobool = icmp eq %union.tree_node* %1, null, !dbg !3019
  %2 = ptrtoint %union.tree_node* %1 to i64, !dbg !3020
  br i1 %tobool, label %if.end12, label %land.lhs.true, !dbg !3020

land.lhs.true:                                    ; preds = %entry
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3020
  %bf.load = load i64, i64* %3, align 8, !dbg !3021
  %bf.cast2 = and i64 %bf.load, 65535, !dbg !3022
  %cmp = icmp eq i64 %bf.cast2, 23, !dbg !3022
  br i1 %cmp, label %if.then, label %if.end12, !dbg !3023

if.then:                                          ; preds = %land.lhs.true
  %offset = getelementptr inbounds %struct.mem_address, %struct.mem_address* %addr, i64 0, i32 4, !dbg !3024
  %4 = load %union.tree_node*, %union.tree_node** %offset, align 8, !dbg !3024
  %tobool3 = icmp eq %union.tree_node* %4, null, !dbg !3027
  br i1 %tobool3, label %if.else, label %if.then4, !dbg !3028

if.then4:                                         ; preds = %if.then
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !3029
  %call = call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %5, %union.tree_node* nonnull %1) #6, !dbg !3030
  %call7 = call %union.tree_node* @fold_binary_to_constant(i32 63, %union.tree_node* %5, %union.tree_node* nonnull %4, %union.tree_node* %call) #6, !dbg !3031
  store %union.tree_node* %call7, %union.tree_node** %offset, align 8, !dbg !3032
  br label %if.end, !dbg !3033

if.else:                                          ; preds = %if.then
  %6 = bitcast %union.tree_node** %offset to i64*, !dbg !3034
  store i64 %2, i64* %6, align 8, !dbg !3034
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  store %union.tree_node* null, %union.tree_node** %base, align 8, !dbg !3035
  call void @llvm.dbg.value(metadata i8 1, metadata !3011, metadata !DIExpression()), !dbg !3014
  br label %if.end12, !dbg !3036

if.end12:                                         ; preds = %entry, %if.end, %land.lhs.true
  %changed.0 = phi i8 [ 1, %if.end ], [ 0, %land.lhs.true ], [ 0, %entry ], !dbg !3014
  call void @llvm.dbg.value(metadata i8 %changed.0, metadata !3011, metadata !DIExpression()), !dbg !3014
  %index = getelementptr inbounds %struct.mem_address, %struct.mem_address* %addr, i64 0, i32 2, !dbg !3037
  %7 = load %union.tree_node*, %union.tree_node** %index, align 8, !dbg !3037
  %tobool13 = icmp eq %union.tree_node* %7, null, !dbg !3039
  br i1 %tobool13, label %if.end39, label %land.lhs.true14, !dbg !3040

land.lhs.true14:                                  ; preds = %if.end12
  %8 = getelementptr inbounds %union.tree_node, %union.tree_node* %7, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3040
  %bf.load17 = load i64, i64* %8, align 8, !dbg !3041
  %bf.cast191 = and i64 %bf.load17, 65535, !dbg !3042
  %cmp20 = icmp eq i64 %bf.cast191, 23, !dbg !3042
  br i1 %cmp20, label %if.then21, label %if.end39, !dbg !3043

if.then21:                                        ; preds = %land.lhs.true14
  call void @llvm.dbg.value(metadata %union.tree_node* %7, metadata !3013, metadata !DIExpression()), !dbg !3014
  %step = getelementptr inbounds %struct.mem_address, %struct.mem_address* %addr, i64 0, i32 3, !dbg !3044
  %9 = load %union.tree_node*, %union.tree_node** %step, align 8, !dbg !3044
  %tobool23 = icmp eq %union.tree_node* %9, null, !dbg !3047
  br i1 %tobool23, label %if.end28, label %if.then24, !dbg !3048

if.then24:                                        ; preds = %if.then21
  %10 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !3049
  %call26 = call %union.tree_node* @fold_binary_to_constant(i32 65, %union.tree_node* %10, %union.tree_node* nonnull %7, %union.tree_node* nonnull %9) #6, !dbg !3051
  call void @llvm.dbg.value(metadata %union.tree_node* %call26, metadata !3013, metadata !DIExpression()), !dbg !3014
  store %union.tree_node* null, %union.tree_node** %step, align 8, !dbg !3052
  br label %if.end28, !dbg !3053

if.end28:                                         ; preds = %if.then21, %if.then24
  %off.0 = phi %union.tree_node* [ %call26, %if.then24 ], [ %7, %if.then21 ], !dbg !3054
  call void @llvm.dbg.value(metadata %union.tree_node* %off.0, metadata !3013, metadata !DIExpression()), !dbg !3014
  %offset29 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %addr, i64 0, i32 4, !dbg !3055
  %11 = load %union.tree_node*, %union.tree_node** %offset29, align 8, !dbg !3055
  %tobool30 = icmp eq %union.tree_node* %11, null, !dbg !3057
  br i1 %tobool30, label %if.else35, label %if.then31, !dbg !3058

if.then31:                                        ; preds = %if.end28
  %12 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !3059
  %call33 = call %union.tree_node* @fold_binary_to_constant(i32 63, %union.tree_node* %12, %union.tree_node* nonnull %11, %union.tree_node* %off.0) #6, !dbg !3061
  br label %if.end37, !dbg !3062

if.else35:                                        ; preds = %if.end28
  br label %if.end37

if.end37:                                         ; preds = %if.else35, %if.then31
  %storemerge = phi %union.tree_node* [ %call33, %if.then31 ], [ %off.0, %if.else35 ], !dbg !3063
  store %union.tree_node* %storemerge, %union.tree_node** %offset29, align 8, !dbg !3063
  store %union.tree_node* null, %union.tree_node** %index, align 8, !dbg !3064
  call void @llvm.dbg.value(metadata i8 1, metadata !3011, metadata !DIExpression()), !dbg !3014
  br label %if.end39, !dbg !3065

if.end39:                                         ; preds = %if.end12, %if.end37, %land.lhs.true14
  %changed.1 = phi i8 [ 1, %if.end37 ], [ %changed.0, %land.lhs.true14 ], [ %changed.0, %if.end12 ], !dbg !3014
  call void @llvm.dbg.value(metadata i8 %changed.1, metadata !3011, metadata !DIExpression()), !dbg !3014
  %tobool40 = icmp eq i8 %changed.1, 0, !dbg !3066
  br i1 %tobool40, label %cleanup, label %if.end42, !dbg !3068

if.end42:                                         ; preds = %if.end39
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %ref, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3069
  %13 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !3069
  call void @llvm.dbg.value(metadata %struct.mem_address* %addr, metadata !3010, metadata !DIExpression(DW_OP_deref)), !dbg !3014
  %call43 = call fastcc %union.tree_node* @create_mem_ref_raw(%union.tree_node* %13, %struct.mem_address* nonnull %addr) #8, !dbg !3070
  call void @llvm.dbg.value(metadata %union.tree_node* %call43, metadata !3012, metadata !DIExpression()), !dbg !3014
  %tobool44 = icmp eq %union.tree_node* %call43, null, !dbg !3071
  br i1 %tobool44, label %cleanup, label %if.end46, !dbg !3073

if.end46:                                         ; preds = %if.end42
  call void @copy_mem_ref_info(%union.tree_node* nonnull %call43, %union.tree_node* %ref) #8, !dbg !3074
  br label %cleanup, !dbg !3075

cleanup:                                          ; preds = %if.end42, %if.end39, %if.end46
  %retval.0 = phi %union.tree_node* [ %call43, %if.end46 ], [ null, %if.end39 ], [ null, %if.end42 ], !dbg !3014
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #7, !dbg !3076
  ret %union.tree_node* %retval.0, !dbg !3076
}

declare dso_local %union.tree_node* @fold_binary_to_constant(i32, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @dump_mem_address(%struct._IO_FILE* %file, %struct.mem_address* %parts) local_unnamed_addr #4 !dbg !3077 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !3081, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata %struct.mem_address* %parts, metadata !3082, metadata !DIExpression()), !dbg !3083
  %symbol = getelementptr inbounds %struct.mem_address, %struct.mem_address* %parts, i64 0, i32 0, !dbg !3084
  %0 = load %union.tree_node*, %union.tree_node** %symbol, align 8, !dbg !3084
  %tobool = icmp eq %union.tree_node* %0, null, !dbg !3086
  br i1 %tobool, label %if.end, label %if.then, !dbg !3087

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !3088
  %1 = load %union.tree_node*, %union.tree_node** %symbol, align 8, !dbg !3090
  tail call void @print_generic_expr(%struct._IO_FILE* %file, %union.tree_node* %1, i32 2) #6, !dbg !3091
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3092
  br label %if.end, !dbg !3093

if.end:                                           ; preds = %entry, %if.then
  %base = getelementptr inbounds %struct.mem_address, %struct.mem_address* %parts, i64 0, i32 1, !dbg !3094
  %2 = load %union.tree_node*, %union.tree_node** %base, align 8, !dbg !3094
  %tobool3 = icmp eq %union.tree_node* %2, null, !dbg !3096
  br i1 %tobool3, label %if.end8, label %if.then4, !dbg !3097

if.then4:                                         ; preds = %if.end
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !3098
  %3 = load %union.tree_node*, %union.tree_node** %base, align 8, !dbg !3100
  tail call void @print_generic_expr(%struct._IO_FILE* %file, %union.tree_node* %3, i32 2) #6, !dbg !3101
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3102
  br label %if.end8, !dbg !3103

if.end8:                                          ; preds = %if.end, %if.then4
  %index = getelementptr inbounds %struct.mem_address, %struct.mem_address* %parts, i64 0, i32 2, !dbg !3104
  %4 = load %union.tree_node*, %union.tree_node** %index, align 8, !dbg !3104
  %tobool9 = icmp eq %union.tree_node* %4, null, !dbg !3106
  br i1 %tobool9, label %if.end14, label %if.then10, !dbg !3107

if.then10:                                        ; preds = %if.end8
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !3108
  %5 = load %union.tree_node*, %union.tree_node** %index, align 8, !dbg !3110
  tail call void @print_generic_expr(%struct._IO_FILE* %file, %union.tree_node* %5, i32 2) #6, !dbg !3111
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3112
  br label %if.end14, !dbg !3113

if.end14:                                         ; preds = %if.end8, %if.then10
  %step = getelementptr inbounds %struct.mem_address, %struct.mem_address* %parts, i64 0, i32 3, !dbg !3114
  %6 = load %union.tree_node*, %union.tree_node** %step, align 8, !dbg !3114
  %tobool15 = icmp eq %union.tree_node* %6, null, !dbg !3116
  br i1 %tobool15, label %if.end20, label %if.then16, !dbg !3117

if.then16:                                        ; preds = %if.end14
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3118
  %7 = load %union.tree_node*, %union.tree_node** %step, align 8, !dbg !3120
  tail call void @print_generic_expr(%struct._IO_FILE* %file, %union.tree_node* %7, i32 2) #6, !dbg !3121
  %call19 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3122
  br label %if.end20, !dbg !3123

if.end20:                                         ; preds = %if.end14, %if.then16
  %offset = getelementptr inbounds %struct.mem_address, %struct.mem_address* %parts, i64 0, i32 4, !dbg !3124
  %8 = load %union.tree_node*, %union.tree_node** %offset, align 8, !dbg !3124
  %tobool21 = icmp eq %union.tree_node* %8, null, !dbg !3126
  br i1 %tobool21, label %if.end26, label %if.then22, !dbg !3127

if.then22:                                        ; preds = %if.end20
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !3128
  %9 = load %union.tree_node*, %union.tree_node** %offset, align 8, !dbg !3130
  tail call void @print_generic_expr(%struct._IO_FILE* %file, %union.tree_node* %9, i32 2) #6, !dbg !3131
  %call25 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3132
  br label %if.end26, !dbg !3133

if.end26:                                         ; preds = %if.end20, %if.then22
  ret void, !dbg !3134
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

declare dso_local void @print_generic_expr(%struct._IO_FILE*, %union.tree_node*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @gt_ggc_mx_VEC_mem_addr_template_gc(i8* %x_p) #4 !dbg !3135 {
entry:
  call void @llvm.dbg.value(metadata i8* %x_p, metadata !3137, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata i8* %x_p, metadata !3138, metadata !DIExpression()), !dbg !3145
  %cmp = icmp ne i8* %x_p, null, !dbg !3146
  %cmp1 = icmp ne i8* %x_p, inttoptr (i64 1 to i8*), !dbg !3146
  %or.cond = and i1 %cmp, %cmp1, !dbg !3146
  br i1 %or.cond, label %land.lhs.true2, label %if.end13, !dbg !3146

land.lhs.true2:                                   ; preds = %entry
  %call = tail call i32 @ggc_set_mark(i8* nonnull %x_p) #6, !dbg !3146
  %tobool = icmp eq i32 %call, 0, !dbg !3146
  br i1 %tobool, label %if.then, label %if.end13, !dbg !3147

if.then:                                          ; preds = %land.lhs.true2
  %num = bitcast i8* %x_p to i32*, !dbg !3148
  %0 = load i32, i32* %num, align 8, !dbg !3148
  %conv = zext i32 %0 to i64, !dbg !3149
  call void @llvm.dbg.value(metadata i64 %conv, metadata !3144, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i64 0, metadata !3140, metadata !DIExpression()), !dbg !3150
  %vec = getelementptr inbounds i8, i8* %x_p, i64 8, !dbg !3151
  %1 = bitcast i8* %vec to [1 x %struct.mem_addr_template]*, !dbg !3151
  br label %for.cond, !dbg !3157

for.cond:                                         ; preds = %for.inc, %if.then
  %i0.0 = phi i64 [ 0, %if.then ], [ %inc, %for.inc ], !dbg !3158
  call void @llvm.dbg.value(metadata i64 %i0.0, metadata !3140, metadata !DIExpression()), !dbg !3150
  %cmp3 = icmp eq i64 %i0.0, %conv, !dbg !3159
  br i1 %cmp3, label %if.end13.loopexit, label %do.body, !dbg !3160

do.body:                                          ; preds = %for.cond
  %ref = getelementptr inbounds [1 x %struct.mem_addr_template], [1 x %struct.mem_addr_template]* %1, i64 0, i64 %i0.0, i32 0, !dbg !3161
  %2 = load %struct.rtx_def*, %struct.rtx_def** %ref, align 8, !dbg !3161
  %cmp6 = icmp eq %struct.rtx_def* %2, null, !dbg !3161
  br i1 %cmp6, label %for.inc, label %if.then8, !dbg !3162

if.then8:                                         ; preds = %do.body
  %3 = bitcast %struct.rtx_def* %2 to i8*, !dbg !3162
  tail call void @gt_ggc_mx_rtx_def(i8* nonnull %3) #6, !dbg !3161
  br label %for.inc, !dbg !3161

for.inc:                                          ; preds = %do.body, %if.then8
  %inc = add nuw nsw i64 %i0.0, 1, !dbg !3163
  call void @llvm.dbg.value(metadata i64 %inc, metadata !3140, metadata !DIExpression()), !dbg !3150
  br label %for.cond, !dbg !3164, !llvm.loop !3165

if.end13.loopexit:                                ; preds = %for.cond
  br label %if.end13, !dbg !3167

if.end13:                                         ; preds = %if.end13.loopexit, %land.lhs.true2, %entry
  ret void, !dbg !3167
}

declare dso_local i32 @ggc_set_mark(i8*) local_unnamed_addr #1

declare dso_local void @gt_ggc_mx_rtx_def(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @gt_pch_nx_VEC_mem_addr_template_gc(i8* %x_p) #4 !dbg !3168 {
entry:
  call void @llvm.dbg.value(metadata i8* %x_p, metadata !3170, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i8* %x_p, metadata !3171, metadata !DIExpression()), !dbg !3177
  %call = tail call i32 @gt_pch_note_object(i8* %x_p, i8* %x_p, void (i8*, i8*, void (i8*, i8*)*, i8*)* nonnull @gt_pch_p_24VEC_mem_addr_template_gc, i32 58) #6, !dbg !3178
  %tobool = icmp eq i32 %call, 0, !dbg !3178
  br i1 %tobool, label %if.end10, label %if.then, !dbg !3179

if.then:                                          ; preds = %entry
  %num = bitcast i8* %x_p to i32*, !dbg !3180
  %0 = load i32, i32* %num, align 8, !dbg !3180
  %conv = zext i32 %0 to i64, !dbg !3181
  call void @llvm.dbg.value(metadata i64 %conv, metadata !3176, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i64 0, metadata !3172, metadata !DIExpression()), !dbg !3182
  %vec = getelementptr inbounds i8, i8* %x_p, i64 8, !dbg !3183
  %1 = bitcast i8* %vec to [1 x %struct.mem_addr_template]*, !dbg !3183
  br label %for.cond, !dbg !3189

for.cond:                                         ; preds = %for.inc, %if.then
  %i0.0 = phi i64 [ 0, %if.then ], [ %inc, %for.inc ], !dbg !3190
  call void @llvm.dbg.value(metadata i64 %i0.0, metadata !3172, metadata !DIExpression()), !dbg !3182
  %cmp = icmp eq i64 %i0.0, %conv, !dbg !3191
  br i1 %cmp, label %if.end10.loopexit, label %do.body, !dbg !3192

do.body:                                          ; preds = %for.cond
  %ref = getelementptr inbounds [1 x %struct.mem_addr_template], [1 x %struct.mem_addr_template]* %1, i64 0, i64 %i0.0, i32 0, !dbg !3193
  %2 = load %struct.rtx_def*, %struct.rtx_def** %ref, align 8, !dbg !3193
  %cmp3 = icmp eq %struct.rtx_def* %2, null, !dbg !3193
  br i1 %cmp3, label %for.inc, label %if.then5, !dbg !3194

if.then5:                                         ; preds = %do.body
  %3 = bitcast %struct.rtx_def* %2 to i8*, !dbg !3194
  tail call void @gt_pch_nx_rtx_def(i8* nonnull %3) #6, !dbg !3193
  br label %for.inc, !dbg !3193

for.inc:                                          ; preds = %do.body, %if.then5
  %inc = add nuw nsw i64 %i0.0, 1, !dbg !3195
  call void @llvm.dbg.value(metadata i64 %inc, metadata !3172, metadata !DIExpression()), !dbg !3182
  br label %for.cond, !dbg !3196, !llvm.loop !3197

if.end10.loopexit:                                ; preds = %for.cond
  br label %if.end10, !dbg !3199

if.end10:                                         ; preds = %if.end10.loopexit, %entry
  ret void, !dbg !3199
}

declare dso_local i32 @gt_pch_note_object(i8*, i8*, void (i8*, i8*, void (i8*, i8*)*, i8*)*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @gt_pch_p_24VEC_mem_addr_template_gc(i8* %this_obj, i8* %x_p, void (i8*, i8*)* %op, i8* %cookie) #4 !dbg !3200 {
entry:
  call void @llvm.dbg.value(metadata i8* %this_obj, metadata !3205, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8* %x_p, metadata !3206, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata void (i8*, i8*)* %op, metadata !3207, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8* %cookie, metadata !3208, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i8* %x_p, metadata !3209, metadata !DIExpression()), !dbg !3213
  %num = bitcast i8* %x_p to i32*, !dbg !3214
  %0 = load i32, i32* %num, align 8, !dbg !3214
  %conv = zext i32 %0 to i64, !dbg !3215
  call void @llvm.dbg.value(metadata i64 %conv, metadata !3212, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i64 0, metadata !3210, metadata !DIExpression()), !dbg !3216
  %cmp2 = icmp eq i8* %x_p, %this_obj, !dbg !3217
  %vec = getelementptr inbounds i8, i8* %x_p, i64 8, !dbg !3217
  %1 = bitcast i8* %vec to [1 x %struct.mem_addr_template]*, !dbg !3217
  br i1 %cmp2, label %entry.split.us, label %entry.entry.split_crit_edge, !dbg !3222

entry.entry.split_crit_edge:                      ; preds = %entry
  br label %for.end.us-lcssa, !dbg !3222

entry.split.us:                                   ; preds = %entry
  br label %for.cond.us, !dbg !3222

for.cond.us:                                      ; preds = %for.body.us, %entry.split.us
  %i0.0.us = phi i64 [ 0, %entry.split.us ], [ %inc.us, %for.body.us ], !dbg !3223
  call void @llvm.dbg.value(metadata i64 %i0.0.us, metadata !3210, metadata !DIExpression()), !dbg !3216
  %cmp.us = icmp eq i64 %i0.0.us, %conv, !dbg !3224
  br i1 %cmp.us, label %for.end.us-lcssa.us, label %for.body.us, !dbg !3225

for.body.us:                                      ; preds = %for.cond.us
  %ref.us = getelementptr inbounds [1 x %struct.mem_addr_template], [1 x %struct.mem_addr_template]* %1, i64 0, i64 %i0.0.us, i32 0, !dbg !3226
  %2 = bitcast %struct.rtx_def** %ref.us to i8*, !dbg !3227
  tail call void %op(i8* nonnull %2, i8* %cookie) #6, !dbg !3228
  %inc.us = add nuw nsw i64 %i0.0.us, 1, !dbg !3229
  call void @llvm.dbg.value(metadata i64 %inc.us, metadata !3210, metadata !DIExpression()), !dbg !3216
  br label %for.cond.us, !dbg !3230, !llvm.loop !3231

for.end.us-lcssa.us:                              ; preds = %for.cond.us
  br label %for.end, !dbg !3233

for.end.us-lcssa:                                 ; preds = %entry.entry.split_crit_edge
  call void @llvm.dbg.value(metadata i32 undef, metadata !3210, metadata !DIExpression()), !dbg !3216
  br label %for.end, !dbg !3233

for.end:                                          ; preds = %for.end.us-lcssa.us, %for.end.us-lcssa
  ret void, !dbg !3233
}

declare dso_local void @gt_pch_nx_rtx_def(i8*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_mem_addr_template_gc_safe_grow(%struct.VEC_mem_addr_template_gc** %vec_, i32 %size_) unnamed_addr #0 !dbg !3234 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_mem_addr_template_gc** @mem_addr_template_list, metadata !3236, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i32 %size_, metadata !3237, metadata !DIExpression()), !dbg !3238
  %cmp = icmp sgt i32 %size_, -1, !dbg !3239
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3239

land.rhs:                                         ; preds = %entry
  %0 = load %struct.VEC_mem_addr_template_gc*, %struct.VEC_mem_addr_template_gc** @mem_addr_template_list, align 8, !dbg !3239
  %tobool = icmp eq %struct.VEC_mem_addr_template_gc* %0, null, !dbg !3239
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3239

cond.true:                                        ; preds = %land.rhs
  %base = getelementptr inbounds %struct.VEC_mem_addr_template_gc, %struct.VEC_mem_addr_template_gc* %0, i64 0, i32 0, !dbg !3239
  br label %cond.end, !dbg !3239

cond.end:                                         ; preds = %land.rhs, %cond.true
  %cond = phi %struct.VEC_mem_addr_template_base* [ %base, %cond.true ], [ null, %land.rhs ], !dbg !3239
  %call = tail call fastcc i32 @VEC_mem_addr_template_base_length(%struct.VEC_mem_addr_template_base* %cond) #8, !dbg !3239
  br label %land.end

land.end:                                         ; preds = %cond.end, %entry
  %1 = load %struct.VEC_mem_addr_template_gc*, %struct.VEC_mem_addr_template_gc** @mem_addr_template_list, align 8, !dbg !3239
  %tobool2 = icmp eq %struct.VEC_mem_addr_template_gc* %1, null, !dbg !3239
  br i1 %tobool2, label %cond.end11, label %cond.true3, !dbg !3239

cond.true3:                                       ; preds = %land.end
  %num = getelementptr inbounds %struct.VEC_mem_addr_template_gc, %struct.VEC_mem_addr_template_gc* %1, i64 0, i32 0, i32 0, !dbg !3239
  %2 = load i32, i32* %num, align 8, !dbg !3239
  br label %cond.end11, !dbg !3239

cond.end11:                                       ; preds = %land.end, %cond.true3
  %cond12 = phi i32 [ %2, %cond.true3 ], [ 0, %land.end ], !dbg !3239
  %sub = sub nsw i32 %size_, %cond12, !dbg !3239
  %call13 = tail call fastcc i32 @VEC_mem_addr_template_gc_reserve_exact(%struct.VEC_mem_addr_template_gc** nonnull @mem_addr_template_list, i32 %sub) #8, !dbg !3239
  %3 = load %struct.VEC_mem_addr_template_gc*, %struct.VEC_mem_addr_template_gc** @mem_addr_template_list, align 8, !dbg !3239
  %num20 = getelementptr inbounds %struct.VEC_mem_addr_template_gc, %struct.VEC_mem_addr_template_gc* %3, i64 0, i32 0, i32 0, !dbg !3239
  store i32 %size_, i32* %num20, align 8, !dbg !3239
  ret void, !dbg !3239
}

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.mem_addr_template* @VEC_mem_addr_template_base_address(%struct.VEC_mem_addr_template_base* %vec_) unnamed_addr #0 !dbg !3240 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_mem_addr_template_base* %vec_, metadata !3244, metadata !DIExpression()), !dbg !3245
  %tobool = icmp eq %struct.VEC_mem_addr_template_base* %vec_, null, !dbg !3246
  %arraydecay = getelementptr inbounds %struct.VEC_mem_addr_template_base, %struct.VEC_mem_addr_template_base* %vec_, i64 0, i32 2, i64 0, !dbg !3246
  %cond = select i1 %tobool, %struct.mem_addr_template* null, %struct.mem_addr_template* %arraydecay, !dbg !3246
  ret %struct.mem_addr_template* %cond, !dbg !3246
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_mem_addr_template_gc_reserve_exact(%struct.VEC_mem_addr_template_gc** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3247 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_mem_addr_template_gc** @mem_addr_template_list, metadata !3251, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !3252, metadata !DIExpression()), !dbg !3254
  %0 = load %struct.VEC_mem_addr_template_gc*, %struct.VEC_mem_addr_template_gc** @mem_addr_template_list, align 8, !dbg !3255
  %tobool = icmp eq %struct.VEC_mem_addr_template_gc* %0, null, !dbg !3255
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3255

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_mem_addr_template_gc, %struct.VEC_mem_addr_template_gc* %0, i64 0, i32 0, !dbg !3255
  br label %cond.end, !dbg !3255

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_mem_addr_template_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3255
  %call = tail call fastcc i32 @VEC_mem_addr_template_base_space(%struct.VEC_mem_addr_template_base* %cond, i32 %alloc_) #8, !dbg !3255
  %tobool1 = icmp eq i32 %call, 0, !dbg !3255
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !3255
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !3253, metadata !DIExpression()), !dbg !3254
  br i1 %tobool1, label %if.then, label %if.end, !dbg !3255

if.then:                                          ; preds = %cond.end
  %1 = load i8*, i8** bitcast (%struct.VEC_mem_addr_template_gc** @mem_addr_template_list to i8**), align 8, !dbg !3256
  %call3 = tail call i8* @vec_gc_o_reserve_exact(i8* %1, i32 %alloc_, i64 8, i64 24) #6, !dbg !3256
  store i8* %call3, i8** bitcast (%struct.VEC_mem_addr_template_gc** @mem_addr_template_list to i8**), align 8, !dbg !3256
  br label %if.end, !dbg !3256

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !3255
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_mem_addr_template_base_space(%struct.VEC_mem_addr_template_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3258 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_mem_addr_template_base* %vec_, metadata !3262, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !3263, metadata !DIExpression()), !dbg !3264
  %tobool = icmp eq %struct.VEC_mem_addr_template_base* %vec_, null, !dbg !3265
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !3265

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_mem_addr_template_base, %struct.VEC_mem_addr_template_base* %vec_, i64 0, i32 1, !dbg !3265
  %0 = load i32, i32* %alloc, align 4, !dbg !3265
  %num = getelementptr inbounds %struct.VEC_mem_addr_template_base, %struct.VEC_mem_addr_template_base* %vec_, i64 0, i32 0, !dbg !3265
  %1 = load i32, i32* %num, align 8, !dbg !3265
  %sub = sub i32 %0, %1, !dbg !3265
  %cmp1 = icmp uge i32 %sub, %alloc_, !dbg !3265
  br label %cond.end, !dbg !3265

cond.false:                                       ; preds = %entry
  %tobool3 = icmp eq i32 %alloc_, 0, !dbg !3265
  br label %cond.end, !dbg !3265

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i1 [ %cmp1, %cond.true ], [ %tobool3, %cond.false ]
  %cond = zext i1 %cond.in to i32, !dbg !3265
  ret i32 %cond, !dbg !3265
}

declare dso_local i8* @vec_gc_o_reserve_exact(i8*, i32, i64, i64) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @gen_rtx_fmt_ee_stat(i32, i32, %struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @simplify_gen_binary(i32, i32, %struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @gen_rtx_fmt_e_stat(i32, i32, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @expand_expr_real(%union.tree_node*, %struct.rtx_def*, i32, i32, %struct.rtx_def**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @double_int_zero_p(i64 %cst.coerce0, i64 %cst.coerce1) unnamed_addr #0 !dbg !3266 {
entry:
  %0 = or i64 %cst.coerce0, %cst.coerce1, !dbg !3271
  %1 = icmp eq i64 %0, 0, !dbg !3271
  %conv = zext i1 %1 to i8, !dbg !3272
  ret i8 %conv, !dbg !3273
}

declare dso_local %union.tree_node* @double_int_to_tree(%union.tree_node*, i64, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @move_fixed_address_to_symbol(%struct.mem_address* %parts, %struct.affine_tree_combination* %addr) unnamed_addr #4 !dbg !3274 {
entry:
  call void @llvm.dbg.value(metadata %struct.mem_address* %parts, metadata !3278, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %addr, metadata !3279, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !3281, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i32 0, metadata !3280, metadata !DIExpression()), !dbg !3282
  %n = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %addr, i64 0, i32 2, !dbg !3283
  br label %for.cond, !dbg !3286

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ], !dbg !3287
  %val.0 = phi %union.tree_node* [ %val.1, %for.inc ], [ null, %entry ], !dbg !3282
  call void @llvm.dbg.value(metadata %union.tree_node* %val.0, metadata !3281, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3280, metadata !DIExpression()), !dbg !3282
  %0 = load i32, i32* %n, align 8, !dbg !3288
  %1 = zext i32 %0 to i64, !dbg !3289
  %cmp = icmp ult i64 %indvars.iv, %1, !dbg !3289
  br i1 %cmp, label %for.body, label %for.end.loopexit, !dbg !3290

for.body:                                         ; preds = %for.cond
  %2 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %addr, i64 0, i32 3, i64 %indvars.iv, i32 1, i32 0, !dbg !3291
  %3 = load i64, i64* %2, align 8, !dbg !3291
  %4 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %addr, i64 0, i32 3, i64 %indvars.iv, i32 1, i32 1, !dbg !3291
  %5 = load i64, i64* %4, align 8, !dbg !3291
  %call = tail call fastcc zeroext i8 @double_int_one_p(i64 %3, i64 %5) #8, !dbg !3291
  %tobool = icmp eq i8 %call, 0, !dbg !3291
  br i1 %tobool, label %for.inc, label %if.end, !dbg !3294

if.end:                                           ; preds = %for.body
  %val4 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %addr, i64 0, i32 3, i64 %indvars.iv, i32 0, !dbg !3295
  %6 = load %union.tree_node*, %union.tree_node** %val4, align 8, !dbg !3295
  call void @llvm.dbg.value(metadata %union.tree_node* %6, metadata !3281, metadata !DIExpression()), !dbg !3282
  %7 = getelementptr inbounds %union.tree_node, %union.tree_node* %6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3296
  %bf.load = load i64, i64* %7, align 8, !dbg !3296
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3298
  %cmp5 = icmp eq i64 %bf.cast1, 121, !dbg !3298
  br i1 %cmp5, label %land.lhs.true, label %for.inc, !dbg !3299

land.lhs.true:                                    ; preds = %if.end
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3300
  %8 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !3300
  %call7 = tail call fastcc zeroext i8 @fixed_address_object_p(%union.tree_node* %8) #8, !dbg !3301
  %tobool8 = icmp eq i8 %call7, 0, !dbg !3301
  br i1 %tobool8, label %for.inc, label %land.lhs.true.for.end_crit_edge, !dbg !3302

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  %.lcssa11 = phi %union.tree_node* [ %6, %land.lhs.true ], !dbg !3295
  %indvars.iv.lcssa9 = phi i64 [ %indvars.iv, %land.lhs.true ], !dbg !3287
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa9, metadata !3280, metadata !DIExpression()), !dbg !3282
  %.pre = load i32, i32* %n, align 8, !dbg !3303
  br label %for.end, !dbg !3302

for.inc:                                          ; preds = %land.lhs.true, %for.body, %if.end
  %val.1 = phi %union.tree_node* [ %val.0, %for.body ], [ %6, %land.lhs.true ], [ %6, %if.end ], !dbg !3282
  call void @llvm.dbg.value(metadata %union.tree_node* %val.1, metadata !3281, metadata !DIExpression()), !dbg !3282
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3305
  br label %for.cond, !dbg !3306, !llvm.loop !3307

for.end.loopexit:                                 ; preds = %for.cond
  %indvars.iv.lcssa = phi i64 [ %indvars.iv, %for.cond ], !dbg !3287
  %val.0.lcssa = phi %union.tree_node* [ %val.0, %for.cond ], !dbg !3282
  %.lcssa = phi i32 [ %0, %for.cond ], !dbg !3288
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa, metadata !3280, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata %union.tree_node* %val.0.lcssa, metadata !3281, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata %union.tree_node* %val.0.lcssa, metadata !3281, metadata !DIExpression()), !dbg !3282
  br label %for.end, !dbg !3309

for.end:                                          ; preds = %for.end.loopexit, %land.lhs.true.for.end_crit_edge
  %indvars.iv10 = phi i64 [ %indvars.iv.lcssa9, %land.lhs.true.for.end_crit_edge ], [ %indvars.iv.lcssa, %for.end.loopexit ]
  %9 = phi i32 [ %.pre, %land.lhs.true.for.end_crit_edge ], [ %.lcssa, %for.end.loopexit ], !dbg !3303
  %val.2 = phi %union.tree_node* [ %.lcssa11, %land.lhs.true.for.end_crit_edge ], [ %val.0.lcssa, %for.end.loopexit ], !dbg !3282
  %i.05 = trunc i64 %indvars.iv10 to i32, !dbg !3282
  call void @llvm.dbg.value(metadata i32 %i.05, metadata !3280, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i32 %i.05, metadata !3280, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata %union.tree_node* %val.2, metadata !3281, metadata !DIExpression()), !dbg !3282
  %cmp12 = icmp eq i32 %9, %i.05, !dbg !3309
  br i1 %cmp12, label %cleanup.cont, label %if.end15, !dbg !3310

if.end15:                                         ; preds = %for.end
  %operands17 = getelementptr inbounds %union.tree_node, %union.tree_node* %val.2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3311
  %10 = bitcast %union.tree_node** %operands17 to i64*, !dbg !3311
  %11 = load i64, i64* %10, align 8, !dbg !3311
  %12 = bitcast %struct.mem_address* %parts to i64*, !dbg !3312
  store i64 %11, i64* %12, align 8, !dbg !3312
  tail call void @aff_combination_remove_elt(%struct.affine_tree_combination* %addr, i32 %i.05) #6, !dbg !3313
  br label %cleanup.cont, !dbg !3314

cleanup.cont:                                     ; preds = %if.end15, %for.end
  ret void, !dbg !3314
}

; Function Attrs: nounwind uwtable
define internal fastcc void @most_expensive_mult_to_index(%union.tree_node* %type, %struct.mem_address* %parts, %struct.affine_tree_combination* %addr, i8 zeroext %speed) unnamed_addr #4 !dbg !3315 {
entry:
  %best_mult = alloca %struct.double_int, align 8
  %amult = alloca %struct.double_int, align 8
  %amult_neg = alloca %struct.double_int, align 8
  %tmp = alloca %struct.double_int, align 8
  %tmp47 = alloca %struct.double_int, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !3319, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata %struct.mem_address* %parts, metadata !3320, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %addr, metadata !3321, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i8 %speed, metadata !3322, metadata !DIExpression()), !dbg !3336
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3337
  %bf.load = load i64, i64* %0, align 8, !dbg !3337
  %bf.lshr = lshr i64 %bf.load, 56, !dbg !3337
  %conv = trunc i64 %bf.lshr to i8, !dbg !3337
  call void @llvm.dbg.value(metadata i8 %conv, metadata !3323, metadata !DIExpression()), !dbg !3336
  %1 = load i32 (i8)*, i32 (i8)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 57, i32 1), align 8, !dbg !3338
  %call = tail call i32 %1(i8 zeroext %conv) #6, !dbg !3339
  call void @llvm.dbg.value(metadata i32 %call, metadata !3324, metadata !DIExpression()), !dbg !3336
  %2 = bitcast %struct.double_int* %best_mult to i8*, !dbg !3340
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !3340
  %3 = bitcast %struct.double_int* %amult to i8*, !dbg !3340
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #7, !dbg !3340
  %4 = bitcast %struct.double_int* %amult_neg to i8*, !dbg !3340
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #7, !dbg !3340
  call void @llvm.dbg.value(metadata i32 0, metadata !3329, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !3331, metadata !DIExpression()), !dbg !3336
  %5 = bitcast %struct.double_int* %tmp to i8*, !dbg !3341
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #7, !dbg !3341
  %call1 = tail call fastcc { i64, i64 } @shwi_to_double_int(i64 0) #8, !dbg !3341
  %6 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 0, !dbg !3341
  store i64 0, i64* %6, align 8, !dbg !3341
  %7 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 1, !dbg !3341
  store i64 0, i64* %7, align 8, !dbg !3341
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %5, i64 16, i1 false), !dbg !3341
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #7, !dbg !3341
  call void @llvm.dbg.value(metadata i32 0, metadata !3333, metadata !DIExpression()), !dbg !3336
  %n = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %addr, i64 0, i32 2, !dbg !3342
  %type18 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !3345
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type18, i64 0, i32 6, !dbg !3345
  br label %for.cond, !dbg !3348

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %for.inc ], [ 0, %entry ], !dbg !3349
  %best_mult_cost.0 = phi i32 [ %best_mult_cost.2, %for.inc ], [ 0, %entry ], !dbg !3349
  call void @llvm.dbg.value(metadata i64 %indvars.iv2, metadata !3333, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i32 %best_mult_cost.0, metadata !3329, metadata !DIExpression()), !dbg !3336
  %8 = load i32, i32* %n, align 8, !dbg !3350
  %9 = zext i32 %8 to i64, !dbg !3351
  %cmp = icmp ult i64 %indvars.iv2, %9, !dbg !3351
  br i1 %cmp, label %for.body, label %for.end, !dbg !3352

for.body:                                         ; preds = %for.cond
  %10 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %addr, i64 0, i32 3, i64 %indvars.iv2, i32 1, i32 0, !dbg !3353
  %11 = load i64, i64* %10, align 8, !dbg !3353
  %12 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %addr, i64 0, i32 3, i64 %indvars.iv2, i32 1, i32 1, !dbg !3353
  %13 = load i64, i64* %12, align 8, !dbg !3353
  %call4 = tail call zeroext i8 @double_int_fits_in_shwi_p(i64 %11, i64 %13) #6, !dbg !3353
  %tobool = icmp eq i8 %call4, 0, !dbg !3353
  br i1 %tobool, label %for.inc, label %if.end, !dbg !3355

if.end:                                           ; preds = %for.body
  %14 = load i64, i64* %10, align 8, !dbg !3356
  %15 = load i64, i64* %12, align 8, !dbg !3356
  %call9 = tail call i64 @double_int_to_shwi(i64 %14, i64 %15) #6, !dbg !3356
  call void @llvm.dbg.value(metadata i64 %call9, metadata !3325, metadata !DIExpression()), !dbg !3336
  %cmp10 = icmp eq i64 %call9, 1, !dbg !3357
  br i1 %cmp10, label %for.inc, label %lor.lhs.false, !dbg !3358

lor.lhs.false:                                    ; preds = %if.end
  %bf.load13 = load i64, i64* %0, align 8, !dbg !3359
  %bf.cast141 = and i64 %bf.load13, 65535, !dbg !3359
  %cmp15 = icmp eq i64 %bf.cast141, 14, !dbg !3359
  br i1 %cmp15, label %cond.true, label %cond.false, !dbg !3359

cond.true:                                        ; preds = %lor.lhs.false
  %call17 = tail call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !3359
  br label %cond.end, !dbg !3359

cond.false:                                       ; preds = %lor.lhs.false
  %bf.load19 = load i32, i32* %mode, align 4, !dbg !3359
  %bf.lshr20 = lshr i32 %bf.load19, 16, !dbg !3359
  %bf.clear21 = and i32 %bf.lshr20, 255, !dbg !3359
  br label %cond.end, !dbg !3359

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call17, %cond.true ], [ %bf.clear21, %cond.false ], !dbg !3359
  %call22 = tail call zeroext i8 @multiplier_allowed_in_address_p(i64 %call9, i32 %cond, i8 zeroext %conv) #6, !dbg !3360
  %tobool23 = icmp eq i8 %call22, 0, !dbg !3360
  br i1 %tobool23, label %for.inc, label %if.end25, !dbg !3361

if.end25:                                         ; preds = %cond.end
  %call26 = tail call i32 @multiply_by_cost(i64 %call9, i32 %call, i8 zeroext %speed) #6, !dbg !3362
  call void @llvm.dbg.value(metadata i32 %call26, metadata !3330, metadata !DIExpression()), !dbg !3336
  %cmp27 = icmp ugt i32 %call26, %best_mult_cost.0, !dbg !3363
  br i1 %cmp27, label %if.then29, label %for.inc, !dbg !3365

if.then29:                                        ; preds = %if.end25
  call void @llvm.dbg.value(metadata i32 %call26, metadata !3329, metadata !DIExpression()), !dbg !3336
  %coef33 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %addr, i64 0, i32 3, i64 %indvars.iv2, i32 1, !dbg !3366
  %16 = bitcast %struct.double_int* %coef33 to i8*, !dbg !3366
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %16, i64 16, i1 false), !dbg !3366
  br label %for.inc, !dbg !3368

for.inc:                                          ; preds = %cond.end, %for.body, %if.end25, %if.then29, %if.end
  %best_mult_cost.2 = phi i32 [ %best_mult_cost.0, %for.body ], [ %best_mult_cost.0, %cond.end ], [ %best_mult_cost.0, %if.end ], [ %call26, %if.then29 ], [ %best_mult_cost.0, %if.end25 ], !dbg !3336
  call void @llvm.dbg.value(metadata i32 %best_mult_cost.2, metadata !3329, metadata !DIExpression()), !dbg !3336
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1, !dbg !3369
  br label %for.cond, !dbg !3370, !llvm.loop !3371

for.end:                                          ; preds = %for.cond
  %best_mult_cost.0.lcssa = phi i32 [ %best_mult_cost.0, %for.cond ], !dbg !3349
  %.lcssa = phi i32 [ %8, %for.cond ], !dbg !3350
  call void @llvm.dbg.value(metadata i32 %best_mult_cost.0.lcssa, metadata !3329, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i32 %best_mult_cost.0.lcssa, metadata !3329, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i32 %best_mult_cost.0.lcssa, metadata !3329, metadata !DIExpression()), !dbg !3336
  %tobool35 = icmp eq i32 %best_mult_cost.0.lcssa, 0, !dbg !3373
  br i1 %tobool35, label %cleanup, label %for.cond38.preheader, !dbg !3375

for.cond38.preheader:                             ; preds = %for.end
  %17 = bitcast %struct.double_int* %tmp47 to i8*, !dbg !3376
  %18 = getelementptr inbounds %struct.double_int, %struct.double_int* %amult, i64 0, i32 0, !dbg !3376
  %19 = getelementptr inbounds %struct.double_int, %struct.double_int* %amult, i64 0, i32 1, !dbg !3376
  %20 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp47, i64 0, i32 0, !dbg !3376
  %21 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp47, i64 0, i32 1, !dbg !3376
  %22 = getelementptr inbounds %struct.double_int, %struct.double_int* %best_mult, i64 0, i32 0, !dbg !3380
  %23 = load i64, i64* %22, align 8, !dbg !3380
  %24 = getelementptr inbounds %struct.double_int, %struct.double_int* %best_mult, i64 0, i32 1, !dbg !3380
  %25 = load i64, i64* %24, align 8, !dbg !3380
  %26 = getelementptr inbounds %struct.double_int, %struct.double_int* %amult_neg, i64 0, i32 0, !dbg !3382
  %27 = getelementptr inbounds %struct.double_int, %struct.double_int* %amult_neg, i64 0, i32 1, !dbg !3382
  br label %for.cond38, !dbg !3384

for.cond38:                                       ; preds = %for.cond38.preheader, %for.inc81
  %indvars.iv = phi i64 [ 0, %for.cond38.preheader ], [ %indvars.iv.next, %for.inc81 ], !dbg !3385
  %28 = phi i32 [ %.lcssa, %for.cond38.preheader ], [ %.pre, %for.inc81 ], !dbg !3385
  %mult_elt.0 = phi %union.tree_node* [ null, %for.cond38.preheader ], [ %mult_elt.3, %for.inc81 ], !dbg !3336
  %j.0 = phi i32 [ 0, %for.cond38.preheader ], [ %j.1, %for.inc81 ], !dbg !3386
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !3334, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3333, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata %union.tree_node* %mult_elt.0, metadata !3331, metadata !DIExpression()), !dbg !3336
  %29 = zext i32 %28 to i64, !dbg !3387
  %cmp40 = icmp ult i64 %indvars.iv, %29, !dbg !3387
  br i1 %cmp40, label %for.body42, label %for.end83, !dbg !3384

for.body42:                                       ; preds = %for.cond38
  %coef46 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %addr, i64 0, i32 3, i64 %indvars.iv, i32 1, !dbg !3388
  %30 = bitcast %struct.double_int* %coef46 to i8*, !dbg !3388
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* nonnull align 8 %30, i64 16, i1 false), !dbg !3388
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %17) #7, !dbg !3389
  %31 = load i64, i64* %18, align 8, !dbg !3390
  %32 = load i64, i64* %19, align 8, !dbg !3390
  %call48 = tail call { i64, i64 } @double_int_neg(i64 %31, i64 %32) #6, !dbg !3390
  %33 = extractvalue { i64, i64 } %call48, 0, !dbg !3390
  %34 = extractvalue { i64, i64 } %call48, 1, !dbg !3390
  %call49 = tail call { i64, i64 } @double_int_ext_for_comb(i64 %33, i64 %34, %struct.affine_tree_combination* %addr) #6, !dbg !3389
  %35 = extractvalue { i64, i64 } %call49, 0, !dbg !3389
  store i64 %35, i64* %20, align 8, !dbg !3389
  %36 = extractvalue { i64, i64 } %call49, 1, !dbg !3389
  store i64 %36, i64* %21, align 8, !dbg !3389
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* nonnull align 8 %17, i64 16, i1 false), !dbg !3389
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %17) #7, !dbg !3389
  %call50 = tail call fastcc zeroext i8 @double_int_equal_p(i64 %31, i64 %32, i64 %23, i64 %25) #8, !dbg !3391
  %tobool51 = icmp eq i8 %call50, 0, !dbg !3391
  br i1 %tobool51, label %if.else, label %if.end65, !dbg !3392

if.else:                                          ; preds = %for.body42
  %37 = load i64, i64* %26, align 8, !dbg !3393
  %38 = load i64, i64* %27, align 8, !dbg !3393
  %call53 = tail call fastcc zeroext i8 @double_int_equal_p(i64 %37, i64 %38, i64 %23, i64 %25) #8, !dbg !3393
  %tobool54 = icmp eq i8 %call53, 0, !dbg !3393
  br i1 %tobool54, label %if.else56, label %if.end65, !dbg !3394

if.else56:                                        ; preds = %if.else
  %idxprom58 = zext i32 %j.0 to i64, !dbg !3395
  %arrayidx59 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %addr, i64 0, i32 3, i64 %idxprom58, !dbg !3395
  %arrayidx62 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %addr, i64 0, i32 3, i64 %indvars.iv, !dbg !3397
  %39 = bitcast %struct.aff_comb_elt* %arrayidx59 to i8*, !dbg !3397
  %40 = bitcast %struct.aff_comb_elt* %arrayidx62 to i8*, !dbg !3397
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %39, i8* nonnull align 8 %40, i64 24, i1 false), !dbg !3397
  %inc63 = add i32 %j.0, 1, !dbg !3398
  call void @llvm.dbg.value(metadata i32 %inc63, metadata !3334, metadata !DIExpression()), !dbg !3336
  br label %for.inc81, !dbg !3399

if.end65:                                         ; preds = %if.else, %for.body42
  %op_code.0 = phi i32 [ 63, %for.body42 ], [ 64, %if.else ], !dbg !3380
  call void @llvm.dbg.value(metadata i32 %op_code.0, metadata !3335, metadata !DIExpression()), !dbg !3336
  %41 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !3400
  %val = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %addr, i64 0, i32 3, i64 %indvars.iv, i32 0, !dbg !3400
  %42 = load %union.tree_node*, %union.tree_node** %val, align 8, !dbg !3400
  %call69 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %41, %union.tree_node* %42) #6, !dbg !3400
  call void @llvm.dbg.value(metadata %union.tree_node* %call69, metadata !3332, metadata !DIExpression()), !dbg !3336
  %tobool70 = icmp eq %union.tree_node* %mult_elt.0, null, !dbg !3401
  br i1 %tobool70, label %if.else73, label %if.then71, !dbg !3403

if.then71:                                        ; preds = %if.end65
  %43 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !3404
  %call72 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 %op_code.0, %union.tree_node* %43, %union.tree_node* nonnull %mult_elt.0, %union.tree_node* %call69) #6, !dbg !3404
  call void @llvm.dbg.value(metadata %union.tree_node* %call72, metadata !3331, metadata !DIExpression()), !dbg !3336
  br label %for.inc81, !dbg !3405

if.else73:                                        ; preds = %if.end65
  %cmp74 = icmp eq i32 %op_code.0, 63, !dbg !3406
  br i1 %cmp74, label %for.inc81, label %if.else77, !dbg !3408

if.else77:                                        ; preds = %if.else73
  %44 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !3409
  %call78 = tail call %union.tree_node* @fold_build1_stat_loc(i32 0, i32 79, %union.tree_node* %44, %union.tree_node* %call69) #6, !dbg !3409
  call void @llvm.dbg.value(metadata %union.tree_node* %call78, metadata !3331, metadata !DIExpression()), !dbg !3336
  br label %for.inc81

for.inc81:                                        ; preds = %if.then71, %if.else73, %if.else77, %if.else56
  %mult_elt.3 = phi %union.tree_node* [ %mult_elt.0, %if.else56 ], [ %call72, %if.then71 ], [ %call78, %if.else77 ], [ %call69, %if.else73 ], !dbg !3336
  %j.1 = phi i32 [ %inc63, %if.else56 ], [ %j.0, %if.then71 ], [ %j.0, %if.else77 ], [ %j.0, %if.else73 ], !dbg !3410
  call void @llvm.dbg.value(metadata i32 %j.1, metadata !3334, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata %union.tree_node* %mult_elt.3, metadata !3331, metadata !DIExpression()), !dbg !3336
  %.pre = load i32, i32* %n, align 8, !dbg !3385
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3411
  br label %for.cond38, !dbg !3412, !llvm.loop !3413

for.end83:                                        ; preds = %for.cond38
  %mult_elt.0.lcssa = phi %union.tree_node* [ %mult_elt.0, %for.cond38 ], !dbg !3336
  %j.0.lcssa = phi i32 [ %j.0, %for.cond38 ], !dbg !3386
  call void @llvm.dbg.value(metadata %union.tree_node* %mult_elt.0.lcssa, metadata !3331, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i32 %j.0.lcssa, metadata !3334, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata %union.tree_node* %mult_elt.0.lcssa, metadata !3331, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i32 %j.0.lcssa, metadata !3334, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata %union.tree_node* %mult_elt.0.lcssa, metadata !3331, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i32 %j.0.lcssa, metadata !3334, metadata !DIExpression()), !dbg !3336
  store i32 %j.0.lcssa, i32* %n, align 8, !dbg !3415
  %index = getelementptr inbounds %struct.mem_address, %struct.mem_address* %parts, i64 0, i32 2, !dbg !3416
  store %union.tree_node* %mult_elt.0.lcssa, %union.tree_node** %index, align 8, !dbg !3417
  %45 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !3418
  %call85 = tail call %union.tree_node* @double_int_to_tree(%union.tree_node* %45, i64 %23, i64 %25) #6, !dbg !3419
  %step = getelementptr inbounds %struct.mem_address, %struct.mem_address* %parts, i64 0, i32 3, !dbg !3420
  store %union.tree_node* %call85, %union.tree_node** %step, align 8, !dbg !3421
  br label %cleanup, !dbg !3422

cleanup:                                          ; preds = %for.end, %for.end83
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #7, !dbg !3422
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #7, !dbg !3422
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !3422
  ret void, !dbg !3422
}

; Function Attrs: nounwind uwtable
define internal fastcc void @move_hint_to_base(%union.tree_node* %type, %struct.mem_address* %parts, %union.tree_node* %base_hint, %struct.affine_tree_combination* %addr) unnamed_addr #4 !dbg !3423 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !3427, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata %struct.mem_address* %parts, metadata !3428, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata %union.tree_node* %base_hint, metadata !3429, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %addr, metadata !3430, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !3432, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata i32 0, metadata !3431, metadata !DIExpression()), !dbg !3434
  %n = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %addr, i64 0, i32 2, !dbg !3435
  br label %for.cond, !dbg !3438

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ], !dbg !3439
  %val.0 = phi %union.tree_node* [ %val.1, %for.inc ], [ null, %entry ], !dbg !3434
  call void @llvm.dbg.value(metadata %union.tree_node* %val.0, metadata !3432, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3431, metadata !DIExpression()), !dbg !3434
  %0 = load i32, i32* %n, align 8, !dbg !3440
  %1 = zext i32 %0 to i64, !dbg !3441
  %cmp = icmp ult i64 %indvars.iv, %1, !dbg !3441
  br i1 %cmp, label %for.body, label %for.end.loopexit, !dbg !3442

for.body:                                         ; preds = %for.cond
  %2 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %addr, i64 0, i32 3, i64 %indvars.iv, i32 1, i32 0, !dbg !3443
  %3 = load i64, i64* %2, align 8, !dbg !3443
  %4 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %addr, i64 0, i32 3, i64 %indvars.iv, i32 1, i32 1, !dbg !3443
  %5 = load i64, i64* %4, align 8, !dbg !3443
  %call = tail call fastcc zeroext i8 @double_int_one_p(i64 %3, i64 %5) #8, !dbg !3443
  %tobool = icmp eq i8 %call, 0, !dbg !3443
  br i1 %tobool, label %for.inc, label %if.end, !dbg !3446

if.end:                                           ; preds = %for.body
  %val4 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %addr, i64 0, i32 3, i64 %indvars.iv, i32 0, !dbg !3447
  %6 = load %union.tree_node*, %union.tree_node** %val4, align 8, !dbg !3447
  call void @llvm.dbg.value(metadata %union.tree_node* %6, metadata !3432, metadata !DIExpression()), !dbg !3434
  %call5 = tail call i32 @operand_equal_p(%union.tree_node* %6, %union.tree_node* %base_hint, i32 0) #6, !dbg !3448
  %tobool6 = icmp eq i32 %call5, 0, !dbg !3448
  br i1 %tobool6, label %for.inc, label %if.end.for.end_crit_edge, !dbg !3450

if.end.for.end_crit_edge:                         ; preds = %if.end
  %.lcssa12 = phi %union.tree_node* [ %6, %if.end ], !dbg !3447
  %indvars.iv.lcssa10 = phi i64 [ %indvars.iv, %if.end ], !dbg !3439
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa10, metadata !3431, metadata !DIExpression()), !dbg !3434
  %.pre = load i32, i32* %n, align 8, !dbg !3451
  br label %for.end, !dbg !3450

for.inc:                                          ; preds = %if.end, %for.body
  %val.1 = phi %union.tree_node* [ %val.0, %for.body ], [ %6, %if.end ], !dbg !3434
  call void @llvm.dbg.value(metadata %union.tree_node* %val.1, metadata !3432, metadata !DIExpression()), !dbg !3434
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3453
  br label %for.cond, !dbg !3454, !llvm.loop !3455

for.end.loopexit:                                 ; preds = %for.cond
  %indvars.iv.lcssa = phi i64 [ %indvars.iv, %for.cond ], !dbg !3439
  %val.0.lcssa = phi %union.tree_node* [ %val.0, %for.cond ], !dbg !3434
  %.lcssa = phi i32 [ %0, %for.cond ], !dbg !3440
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa, metadata !3431, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata %union.tree_node* %val.0.lcssa, metadata !3432, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata %union.tree_node* %val.0.lcssa, metadata !3432, metadata !DIExpression()), !dbg !3434
  br label %for.end, !dbg !3457

for.end:                                          ; preds = %for.end.loopexit, %if.end.for.end_crit_edge
  %indvars.iv11 = phi i64 [ %indvars.iv.lcssa10, %if.end.for.end_crit_edge ], [ %indvars.iv.lcssa, %for.end.loopexit ]
  %7 = phi i32 [ %.pre, %if.end.for.end_crit_edge ], [ %.lcssa, %for.end.loopexit ], !dbg !3451
  %val.2 = phi %union.tree_node* [ %.lcssa12, %if.end.for.end_crit_edge ], [ %val.0.lcssa, %for.end.loopexit ], !dbg !3434
  %i.06 = trunc i64 %indvars.iv11 to i32, !dbg !3434
  call void @llvm.dbg.value(metadata i32 %i.06, metadata !3431, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata i32 %i.06, metadata !3431, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata %union.tree_node* %val.2, metadata !3432, metadata !DIExpression()), !dbg !3434
  %cmp10 = icmp eq i32 %7, %i.06, !dbg !3457
  br i1 %cmp10, label %cleanup.cont, label %if.end12, !dbg !3458

if.end12:                                         ; preds = %for.end
  %8 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3459
  %bf.load = load i64, i64* %8, align 8, !dbg !3459
  %9 = lshr i64 %bf.load, 48, !dbg !3459
  %10 = trunc i64 %9 to i32, !dbg !3459
  %shl = and i32 %10, 65280, !dbg !3459
  call void @llvm.dbg.value(metadata i32 %shl, metadata !3433, metadata !DIExpression()), !dbg !3434
  %11 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 38), align 16, !dbg !3460
  %call13 = tail call %union.tree_node* @build_qualified_type(%union.tree_node* %11, i32 %shl) #6, !dbg !3461
  call void @llvm.dbg.value(metadata %union.tree_node* %call13, metadata !3427, metadata !DIExpression()), !dbg !3434
  %call14 = tail call %union.tree_node* @build_pointer_type(%union.tree_node* %call13) #6, !dbg !3462
  %call15 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %call14, %union.tree_node* %val.2) #6, !dbg !3462
  %base16 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %parts, i64 0, i32 1, !dbg !3463
  store %union.tree_node* %call15, %union.tree_node** %base16, align 8, !dbg !3464
  tail call void @aff_combination_remove_elt(%struct.affine_tree_combination* %addr, i32 %i.06) #6, !dbg !3465
  br label %cleanup.cont, !dbg !3466

cleanup.cont:                                     ; preds = %if.end12, %for.end
  ret void, !dbg !3466
}

; Function Attrs: nounwind uwtable
define internal fastcc void @move_pointer_to_base(%struct.mem_address* %parts, %struct.affine_tree_combination* %addr) unnamed_addr #4 !dbg !3467 {
entry:
  call void @llvm.dbg.value(metadata %struct.mem_address* %parts, metadata !3469, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata %struct.affine_tree_combination* %addr, metadata !3470, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !3472, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i32 0, metadata !3471, metadata !DIExpression()), !dbg !3473
  %n = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %addr, i64 0, i32 2, !dbg !3474
  br label %for.cond, !dbg !3477

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ], !dbg !3478
  %val.0 = phi %union.tree_node* [ %val.1, %for.inc ], [ null, %entry ], !dbg !3473
  call void @llvm.dbg.value(metadata %union.tree_node* %val.0, metadata !3472, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3471, metadata !DIExpression()), !dbg !3473
  %0 = load i32, i32* %n, align 8, !dbg !3479
  %1 = zext i32 %0 to i64, !dbg !3480
  %cmp = icmp ult i64 %indvars.iv, %1, !dbg !3480
  %2 = trunc i64 %indvars.iv to i32, !dbg !3481
  br i1 %cmp, label %for.body, label %for.end, !dbg !3481

for.body:                                         ; preds = %for.cond
  %3 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %addr, i64 0, i32 3, i64 %indvars.iv, i32 1, i32 0, !dbg !3482
  %4 = load i64, i64* %3, align 8, !dbg !3482
  %5 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %addr, i64 0, i32 3, i64 %indvars.iv, i32 1, i32 1, !dbg !3482
  %6 = load i64, i64* %5, align 8, !dbg !3482
  %call = tail call fastcc zeroext i8 @double_int_one_p(i64 %4, i64 %6) #8, !dbg !3482
  %tobool = icmp eq i8 %call, 0, !dbg !3482
  br i1 %tobool, label %for.inc, label %if.end, !dbg !3485

if.end:                                           ; preds = %for.body
  %val4 = getelementptr inbounds %struct.affine_tree_combination, %struct.affine_tree_combination* %addr, i64 0, i32 3, i64 %indvars.iv, i32 0, !dbg !3486
  %7 = load %union.tree_node*, %union.tree_node** %val4, align 8, !dbg !3486
  call void @llvm.dbg.value(metadata %union.tree_node* %7, metadata !3472, metadata !DIExpression()), !dbg !3473
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %7, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3487
  %8 = bitcast %union.tree_node** %type to i64**, !dbg !3487
  %9 = load i64*, i64** %8, align 8, !dbg !3487
  %bf.load = load i64, i64* %9, align 8, !dbg !3487
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3487
  %cmp5 = icmp eq i64 %bf.cast1, 10, !dbg !3487
  %cmp12 = icmp eq i64 %bf.cast1, 12, !dbg !3487
  %or.cond = or i1 %cmp5, %cmp12, !dbg !3487
  br i1 %or.cond, label %for.end, label %for.inc, !dbg !3487

for.inc:                                          ; preds = %if.end, %for.body
  %val.1 = phi %union.tree_node* [ %val.0, %for.body ], [ %7, %if.end ], !dbg !3473
  call void @llvm.dbg.value(metadata %union.tree_node* %val.1, metadata !3472, metadata !DIExpression()), !dbg !3473
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3489
  br label %for.cond, !dbg !3490, !llvm.loop !3491

for.end:                                          ; preds = %if.end, %for.cond
  %.lcssa = phi i32 [ %2, %if.end ], [ %2, %for.cond ], !dbg !3481
  %val.2 = phi %union.tree_node* [ %val.0, %for.cond ], [ %7, %if.end ], !dbg !3473
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !3471, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !3471, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !3471, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !3471, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !3471, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata %union.tree_node* %val.2, metadata !3472, metadata !DIExpression()), !dbg !3473
  %10 = load i32, i32* %n, align 8, !dbg !3493
  %cmp16 = icmp eq i32 %10, %.lcssa, !dbg !3495
  br i1 %cmp16, label %cleanup.cont, label %if.end18, !dbg !3496

if.end18:                                         ; preds = %for.end
  %base19 = getelementptr inbounds %struct.mem_address, %struct.mem_address* %parts, i64 0, i32 1, !dbg !3497
  store %union.tree_node* %val.2, %union.tree_node** %base19, align 8, !dbg !3498
  tail call void @aff_combination_remove_elt(%struct.affine_tree_combination* %addr, i32 %.lcssa) #6, !dbg !3499
  br label %cleanup.cont, !dbg !3500

cleanup.cont:                                     ; preds = %if.end18, %for.end
  ret void, !dbg !3500
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @double_int_one_p(i64 %cst.coerce0, i64 %cst.coerce1) unnamed_addr #0 !dbg !3501 {
entry:
  %cmp = icmp eq i64 %cst.coerce0, 1, !dbg !3504
  %cmp1 = icmp eq i64 %cst.coerce1, 0, !dbg !3505
  %0 = and i1 %cmp, %cmp1, !dbg !3505
  %conv = zext i1 %0 to i8, !dbg !3506
  ret i8 %conv, !dbg !3507
}

; Function Attrs: nounwind uwtable
define internal fastcc void @add_to_parts(%struct.mem_address* %parts, %union.tree_node* %elt) unnamed_addr #4 !dbg !3508 {
entry:
  call void @llvm.dbg.value(metadata %struct.mem_address* %parts, metadata !3512, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata %union.tree_node* %elt, metadata !3513, metadata !DIExpression()), !dbg !3515
  %index = getelementptr inbounds %struct.mem_address, %struct.mem_address* %parts, i64 0, i32 2, !dbg !3516
  %0 = load %union.tree_node*, %union.tree_node** %index, align 8, !dbg !3516
  %tobool = icmp eq %union.tree_node* %0, null, !dbg !3518
  br i1 %tobool, label %if.then, label %if.end, !dbg !3519

if.then:                                          ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !3520
  %call = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %1, %union.tree_node* %elt) #6, !dbg !3520
  store %union.tree_node* %call, %union.tree_node** %index, align 8, !dbg !3522
  br label %cleanup.cont, !dbg !3523

if.end:                                           ; preds = %entry
  %base = getelementptr inbounds %struct.mem_address, %struct.mem_address* %parts, i64 0, i32 1, !dbg !3524
  %2 = load %union.tree_node*, %union.tree_node** %base, align 8, !dbg !3524
  %tobool2 = icmp eq %union.tree_node* %2, null, !dbg !3526
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !3527

if.then3:                                         ; preds = %if.end
  store %union.tree_node* %elt, %union.tree_node** %base, align 8, !dbg !3528
  br label %cleanup.cont, !dbg !3530

if.end5:                                          ; preds = %if.end
  %type7 = getelementptr inbounds %union.tree_node, %union.tree_node* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3531
  %3 = load %union.tree_node*, %union.tree_node** %type7, align 8, !dbg !3531
  call void @llvm.dbg.value(metadata %union.tree_node* %3, metadata !3514, metadata !DIExpression()), !dbg !3515
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3532
  %bf.load = load i64, i64* %4, align 8, !dbg !3532
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3532
  %cmp = icmp eq i64 %bf.cast1, 10, !dbg !3532
  br i1 %cmp, label %if.then14, label %lor.lhs.false, !dbg !3532

lor.lhs.false:                                    ; preds = %if.end5
  %cmp13 = icmp eq i64 %bf.cast1, 12, !dbg !3532
  br i1 %cmp13, label %if.then14, label %if.else, !dbg !3534

if.then14:                                        ; preds = %lor.lhs.false, %if.end5
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !3535
  %call16 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %5, %union.tree_node* %elt) #6, !dbg !3535
  %call17 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 66, %union.tree_node* %3, %union.tree_node* nonnull %2, %union.tree_node* %call16) #6, !dbg !3535
  store %union.tree_node* %call17, %union.tree_node** %base, align 8, !dbg !3536
  br label %cleanup.cont, !dbg !3537

if.else:                                          ; preds = %lor.lhs.false
  %call20 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 63, %union.tree_node* %3, %union.tree_node* nonnull %2, %union.tree_node* %elt) #6, !dbg !3538
  store %union.tree_node* %call20, %union.tree_node** %base, align 8, !dbg !3539
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %if.then, %if.then3, %if.else, %if.then14
  ret void, !dbg !3540
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @fixed_address_object_p(%union.tree_node* %obj) unnamed_addr #4 !dbg !3541 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %obj, metadata !3545, metadata !DIExpression()), !dbg !3546
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %obj, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3547
  %bf.load = load i64, i64* %0, align 8, !dbg !3547
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3548
  %cmp = icmp eq i64 %bf.cast1, 32, !dbg !3548
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !3549

land.lhs.true:                                    ; preds = %entry
  %bf.cast42 = and i64 %bf.load, 67108864, !dbg !3550
  %tobool = icmp eq i64 %bf.cast42, 0, !dbg !3550
  br i1 %tobool, label %lor.lhs.false, label %land.rhs, !dbg !3551

lor.lhs.false:                                    ; preds = %land.lhs.true
  %decl_flag_1 = getelementptr inbounds %union.tree_node, %union.tree_node* %obj, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3552
  %1 = bitcast i40* %decl_flag_1 to i64*, !dbg !3552
  %bf.load5 = load i64, i64* %1, align 8, !dbg !3552
  %bf.cast83 = and i64 %bf.load5, 33554432, !dbg !3552
  %tobool9 = icmp eq i64 %bf.cast83, 0, !dbg !3552
  br i1 %tobool9, label %land.end, label %land.rhs, !dbg !3553

land.rhs:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %dllimport_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %obj, i64 0, i32 0, i32 0, i32 0, i32 4, !dbg !3554
  %2 = bitcast i24* %dllimport_flag to i32*, !dbg !3554
  %bf.load10 = load i32, i32* %2, align 8, !dbg !3554
  %bf.clear12 = lshr i32 %bf.load10, 5
  %3 = trunc i32 %bf.clear12 to i8
  %4 = and i8 %3, 1
  %5 = xor i8 %4, 1
  br label %land.end

land.end:                                         ; preds = %lor.lhs.false, %land.rhs, %entry
  %6 = phi i8 [ 0, %lor.lhs.false ], [ 0, %entry ], [ %5, %land.rhs ]
  ret i8 %6, !dbg !3555
}

declare dso_local void @aff_combination_remove_elt(%struct.affine_tree_combination*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i64, i64 } @shwi_to_double_int(i64 %cst) unnamed_addr #0 !dbg !3556 {
entry:
  call void @llvm.dbg.value(metadata i64 0, metadata !3560, metadata !DIExpression()), !dbg !3562
  ret { i64, i64 } undef, !dbg !3563
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

declare dso_local zeroext i8 @double_int_fits_in_shwi_p(i64, i64) local_unnamed_addr #1

declare dso_local i64 @double_int_to_shwi(i64, i64) local_unnamed_addr #1

declare dso_local zeroext i8 @multiplier_allowed_in_address_p(i64, i32, i8 zeroext) local_unnamed_addr #1

declare dso_local i32 @vector_type_mode(%union.tree_node*) local_unnamed_addr #1

declare dso_local i32 @multiply_by_cost(i64, i32, i8 zeroext) local_unnamed_addr #1

declare dso_local { i64, i64 } @double_int_ext_for_comb(i64, i64, %struct.affine_tree_combination*) local_unnamed_addr #1

declare dso_local { i64, i64 } @double_int_neg(i64, i64) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @double_int_equal_p(i64 %cst1.coerce0, i64 %cst1.coerce1, i64 %cst2.coerce0, i64 %cst2.coerce1) unnamed_addr #0 !dbg !3564 {
entry:
  %cmp = icmp eq i64 %cst1.coerce0, %cst2.coerce0, !dbg !3570
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3571

land.rhs:                                         ; preds = %entry
  %cmp3 = icmp eq i64 %cst1.coerce1, %cst2.coerce1, !dbg !3572
  %phitmp = zext i1 %cmp3 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !3573
}

declare dso_local %union.tree_node* @fold_build1_stat_loc(i32, i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #1

declare dso_local i32 @operand_equal_p(%union.tree_node*, %union.tree_node*, i32) local_unnamed_addr #1

declare dso_local %union.tree_node* @build_qualified_type(%union.tree_node*, i32) local_unnamed_addr #1

declare dso_local %union.tree_node* @build_pointer_type(%union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @valid_mem_ref_p(i32 %mode, i8 zeroext %as, %struct.mem_address* %addr) unnamed_addr #4 !dbg !3574 {
entry:
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3578, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i8 %as, metadata !3579, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata %struct.mem_address* %addr, metadata !3580, metadata !DIExpression()), !dbg !3582
  %call = tail call %struct.rtx_def* @addr_for_mem_ref(%struct.mem_address* %addr, i8 zeroext %as, i8 zeroext 0) #8, !dbg !3583
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !3581, metadata !DIExpression()), !dbg !3582
  %tobool = icmp eq %struct.rtx_def* %call, null, !dbg !3584
  br i1 %tobool, label %cleanup, label %if.end, !dbg !3586

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @memory_address_addr_space_p(i32 %mode, %struct.rtx_def* nonnull %call, i8 zeroext %as) #6, !dbg !3587
  %conv = trunc i32 %call1 to i8, !dbg !3587
  br label %cleanup, !dbg !3588

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i8 [ %conv, %if.end ], [ 0, %entry ], !dbg !3582
  ret i8 %retval.0, !dbg !3589
}

declare dso_local %union.tree_node* @build6_stat(i32, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #1

declare dso_local i32 @memory_address_addr_space_p(i32, %struct.rtx_def*, i8 zeroext) local_unnamed_addr #1

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
!llvm.module.flags = !{!1902, !1903, !1904}
!llvm.ident = !{!1905}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mem_addr_template_list", scope: !2, file: !3, line: 90, type: !1885, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !530, globals: !1887, nameTableKind: None)
!3 = !DIFile(filename: "tree-ssa-address.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !329, !335, !340, !345, !363, !370, !377, !520}
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
!377 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rtx_code", file: !378, line: 45, baseType: !7, size: 32, elements: !379)
!378 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!379 = !{!380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519}
!380 = !DIEnumerator(name: "UNKNOWN", value: 0, isUnsigned: true)
!381 = !DIEnumerator(name: "VALUE", value: 1, isUnsigned: true)
!382 = !DIEnumerator(name: "DEBUG_EXPR", value: 2, isUnsigned: true)
!383 = !DIEnumerator(name: "EXPR_LIST", value: 3, isUnsigned: true)
!384 = !DIEnumerator(name: "INSN_LIST", value: 4, isUnsigned: true)
!385 = !DIEnumerator(name: "SEQUENCE", value: 5, isUnsigned: true)
!386 = !DIEnumerator(name: "ADDRESS", value: 6, isUnsigned: true)
!387 = !DIEnumerator(name: "DEBUG_INSN", value: 7, isUnsigned: true)
!388 = !DIEnumerator(name: "INSN", value: 8, isUnsigned: true)
!389 = !DIEnumerator(name: "JUMP_INSN", value: 9, isUnsigned: true)
!390 = !DIEnumerator(name: "CALL_INSN", value: 10, isUnsigned: true)
!391 = !DIEnumerator(name: "BARRIER", value: 11, isUnsigned: true)
!392 = !DIEnumerator(name: "CODE_LABEL", value: 12, isUnsigned: true)
!393 = !DIEnumerator(name: "NOTE", value: 13, isUnsigned: true)
!394 = !DIEnumerator(name: "COND_EXEC", value: 14, isUnsigned: true)
!395 = !DIEnumerator(name: "PARALLEL", value: 15, isUnsigned: true)
!396 = !DIEnumerator(name: "ASM_INPUT", value: 16, isUnsigned: true)
!397 = !DIEnumerator(name: "ASM_OPERANDS", value: 17, isUnsigned: true)
!398 = !DIEnumerator(name: "UNSPEC", value: 18, isUnsigned: true)
!399 = !DIEnumerator(name: "UNSPEC_VOLATILE", value: 19, isUnsigned: true)
!400 = !DIEnumerator(name: "ADDR_VEC", value: 20, isUnsigned: true)
!401 = !DIEnumerator(name: "ADDR_DIFF_VEC", value: 21, isUnsigned: true)
!402 = !DIEnumerator(name: "PREFETCH", value: 22, isUnsigned: true)
!403 = !DIEnumerator(name: "SET", value: 23, isUnsigned: true)
!404 = !DIEnumerator(name: "USE", value: 24, isUnsigned: true)
!405 = !DIEnumerator(name: "CLOBBER", value: 25, isUnsigned: true)
!406 = !DIEnumerator(name: "CALL", value: 26, isUnsigned: true)
!407 = !DIEnumerator(name: "RETURN", value: 27, isUnsigned: true)
!408 = !DIEnumerator(name: "EH_RETURN", value: 28, isUnsigned: true)
!409 = !DIEnumerator(name: "TRAP_IF", value: 29, isUnsigned: true)
!410 = !DIEnumerator(name: "CONST_INT", value: 30, isUnsigned: true)
!411 = !DIEnumerator(name: "CONST_FIXED", value: 31, isUnsigned: true)
!412 = !DIEnumerator(name: "CONST_DOUBLE", value: 32, isUnsigned: true)
!413 = !DIEnumerator(name: "CONST_VECTOR", value: 33, isUnsigned: true)
!414 = !DIEnumerator(name: "CONST_STRING", value: 34, isUnsigned: true)
!415 = !DIEnumerator(name: "CONST", value: 35, isUnsigned: true)
!416 = !DIEnumerator(name: "PC", value: 36, isUnsigned: true)
!417 = !DIEnumerator(name: "REG", value: 37, isUnsigned: true)
!418 = !DIEnumerator(name: "SCRATCH", value: 38, isUnsigned: true)
!419 = !DIEnumerator(name: "SUBREG", value: 39, isUnsigned: true)
!420 = !DIEnumerator(name: "STRICT_LOW_PART", value: 40, isUnsigned: true)
!421 = !DIEnumerator(name: "CONCAT", value: 41, isUnsigned: true)
!422 = !DIEnumerator(name: "CONCATN", value: 42, isUnsigned: true)
!423 = !DIEnumerator(name: "MEM", value: 43, isUnsigned: true)
!424 = !DIEnumerator(name: "LABEL_REF", value: 44, isUnsigned: true)
!425 = !DIEnumerator(name: "SYMBOL_REF", value: 45, isUnsigned: true)
!426 = !DIEnumerator(name: "CC0", value: 46, isUnsigned: true)
!427 = !DIEnumerator(name: "IF_THEN_ELSE", value: 47, isUnsigned: true)
!428 = !DIEnumerator(name: "COMPARE", value: 48, isUnsigned: true)
!429 = !DIEnumerator(name: "PLUS", value: 49, isUnsigned: true)
!430 = !DIEnumerator(name: "MINUS", value: 50, isUnsigned: true)
!431 = !DIEnumerator(name: "NEG", value: 51, isUnsigned: true)
!432 = !DIEnumerator(name: "MULT", value: 52, isUnsigned: true)
!433 = !DIEnumerator(name: "SS_MULT", value: 53, isUnsigned: true)
!434 = !DIEnumerator(name: "US_MULT", value: 54, isUnsigned: true)
!435 = !DIEnumerator(name: "DIV", value: 55, isUnsigned: true)
!436 = !DIEnumerator(name: "SS_DIV", value: 56, isUnsigned: true)
!437 = !DIEnumerator(name: "US_DIV", value: 57, isUnsigned: true)
!438 = !DIEnumerator(name: "MOD", value: 58, isUnsigned: true)
!439 = !DIEnumerator(name: "UDIV", value: 59, isUnsigned: true)
!440 = !DIEnumerator(name: "UMOD", value: 60, isUnsigned: true)
!441 = !DIEnumerator(name: "AND", value: 61, isUnsigned: true)
!442 = !DIEnumerator(name: "IOR", value: 62, isUnsigned: true)
!443 = !DIEnumerator(name: "XOR", value: 63, isUnsigned: true)
!444 = !DIEnumerator(name: "NOT", value: 64, isUnsigned: true)
!445 = !DIEnumerator(name: "ASHIFT", value: 65, isUnsigned: true)
!446 = !DIEnumerator(name: "ROTATE", value: 66, isUnsigned: true)
!447 = !DIEnumerator(name: "ASHIFTRT", value: 67, isUnsigned: true)
!448 = !DIEnumerator(name: "LSHIFTRT", value: 68, isUnsigned: true)
!449 = !DIEnumerator(name: "ROTATERT", value: 69, isUnsigned: true)
!450 = !DIEnumerator(name: "SMIN", value: 70, isUnsigned: true)
!451 = !DIEnumerator(name: "SMAX", value: 71, isUnsigned: true)
!452 = !DIEnumerator(name: "UMIN", value: 72, isUnsigned: true)
!453 = !DIEnumerator(name: "UMAX", value: 73, isUnsigned: true)
!454 = !DIEnumerator(name: "PRE_DEC", value: 74, isUnsigned: true)
!455 = !DIEnumerator(name: "PRE_INC", value: 75, isUnsigned: true)
!456 = !DIEnumerator(name: "POST_DEC", value: 76, isUnsigned: true)
!457 = !DIEnumerator(name: "POST_INC", value: 77, isUnsigned: true)
!458 = !DIEnumerator(name: "PRE_MODIFY", value: 78, isUnsigned: true)
!459 = !DIEnumerator(name: "POST_MODIFY", value: 79, isUnsigned: true)
!460 = !DIEnumerator(name: "NE", value: 80, isUnsigned: true)
!461 = !DIEnumerator(name: "EQ", value: 81, isUnsigned: true)
!462 = !DIEnumerator(name: "GE", value: 82, isUnsigned: true)
!463 = !DIEnumerator(name: "GT", value: 83, isUnsigned: true)
!464 = !DIEnumerator(name: "LE", value: 84, isUnsigned: true)
!465 = !DIEnumerator(name: "LT", value: 85, isUnsigned: true)
!466 = !DIEnumerator(name: "GEU", value: 86, isUnsigned: true)
!467 = !DIEnumerator(name: "GTU", value: 87, isUnsigned: true)
!468 = !DIEnumerator(name: "LEU", value: 88, isUnsigned: true)
!469 = !DIEnumerator(name: "LTU", value: 89, isUnsigned: true)
!470 = !DIEnumerator(name: "UNORDERED", value: 90, isUnsigned: true)
!471 = !DIEnumerator(name: "ORDERED", value: 91, isUnsigned: true)
!472 = !DIEnumerator(name: "UNEQ", value: 92, isUnsigned: true)
!473 = !DIEnumerator(name: "UNGE", value: 93, isUnsigned: true)
!474 = !DIEnumerator(name: "UNGT", value: 94, isUnsigned: true)
!475 = !DIEnumerator(name: "UNLE", value: 95, isUnsigned: true)
!476 = !DIEnumerator(name: "UNLT", value: 96, isUnsigned: true)
!477 = !DIEnumerator(name: "LTGT", value: 97, isUnsigned: true)
!478 = !DIEnumerator(name: "SIGN_EXTEND", value: 98, isUnsigned: true)
!479 = !DIEnumerator(name: "ZERO_EXTEND", value: 99, isUnsigned: true)
!480 = !DIEnumerator(name: "TRUNCATE", value: 100, isUnsigned: true)
!481 = !DIEnumerator(name: "FLOAT_EXTEND", value: 101, isUnsigned: true)
!482 = !DIEnumerator(name: "FLOAT_TRUNCATE", value: 102, isUnsigned: true)
!483 = !DIEnumerator(name: "FLOAT", value: 103, isUnsigned: true)
!484 = !DIEnumerator(name: "FIX", value: 104, isUnsigned: true)
!485 = !DIEnumerator(name: "UNSIGNED_FLOAT", value: 105, isUnsigned: true)
!486 = !DIEnumerator(name: "UNSIGNED_FIX", value: 106, isUnsigned: true)
!487 = !DIEnumerator(name: "FRACT_CONVERT", value: 107, isUnsigned: true)
!488 = !DIEnumerator(name: "UNSIGNED_FRACT_CONVERT", value: 108, isUnsigned: true)
!489 = !DIEnumerator(name: "SAT_FRACT", value: 109, isUnsigned: true)
!490 = !DIEnumerator(name: "UNSIGNED_SAT_FRACT", value: 110, isUnsigned: true)
!491 = !DIEnumerator(name: "ABS", value: 111, isUnsigned: true)
!492 = !DIEnumerator(name: "SQRT", value: 112, isUnsigned: true)
!493 = !DIEnumerator(name: "BSWAP", value: 113, isUnsigned: true)
!494 = !DIEnumerator(name: "FFS", value: 114, isUnsigned: true)
!495 = !DIEnumerator(name: "CLZ", value: 115, isUnsigned: true)
!496 = !DIEnumerator(name: "CTZ", value: 116, isUnsigned: true)
!497 = !DIEnumerator(name: "POPCOUNT", value: 117, isUnsigned: true)
!498 = !DIEnumerator(name: "PARITY", value: 118, isUnsigned: true)
!499 = !DIEnumerator(name: "SIGN_EXTRACT", value: 119, isUnsigned: true)
!500 = !DIEnumerator(name: "ZERO_EXTRACT", value: 120, isUnsigned: true)
!501 = !DIEnumerator(name: "HIGH", value: 121, isUnsigned: true)
!502 = !DIEnumerator(name: "LO_SUM", value: 122, isUnsigned: true)
!503 = !DIEnumerator(name: "VEC_MERGE", value: 123, isUnsigned: true)
!504 = !DIEnumerator(name: "VEC_SELECT", value: 124, isUnsigned: true)
!505 = !DIEnumerator(name: "VEC_CONCAT", value: 125, isUnsigned: true)
!506 = !DIEnumerator(name: "VEC_DUPLICATE", value: 126, isUnsigned: true)
!507 = !DIEnumerator(name: "SS_PLUS", value: 127, isUnsigned: true)
!508 = !DIEnumerator(name: "US_PLUS", value: 128, isUnsigned: true)
!509 = !DIEnumerator(name: "SS_MINUS", value: 129, isUnsigned: true)
!510 = !DIEnumerator(name: "SS_NEG", value: 130, isUnsigned: true)
!511 = !DIEnumerator(name: "US_NEG", value: 131, isUnsigned: true)
!512 = !DIEnumerator(name: "SS_ABS", value: 132, isUnsigned: true)
!513 = !DIEnumerator(name: "SS_ASHIFT", value: 133, isUnsigned: true)
!514 = !DIEnumerator(name: "US_ASHIFT", value: 134, isUnsigned: true)
!515 = !DIEnumerator(name: "US_MINUS", value: 135, isUnsigned: true)
!516 = !DIEnumerator(name: "SS_TRUNCATE", value: 136, isUnsigned: true)
!517 = !DIEnumerator(name: "US_TRUNCATE", value: 137, isUnsigned: true)
!518 = !DIEnumerator(name: "VAR_LOCATION", value: 138, isUnsigned: true)
!519 = !DIEnumerator(name: "LAST_AND_UNUSED_RTX_CODE", value: 139, isUnsigned: true)
!520 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "expand_modifier", file: !521, line: 52, baseType: !7, size: 32, elements: !522)
!521 = !DIFile(filename: "./expr.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!522 = !{!523, !524, !525, !526, !527, !528, !529}
!523 = !DIEnumerator(name: "EXPAND_NORMAL", value: 0, isUnsigned: true)
!524 = !DIEnumerator(name: "EXPAND_STACK_PARM", value: 1, isUnsigned: true)
!525 = !DIEnumerator(name: "EXPAND_SUM", value: 2, isUnsigned: true)
!526 = !DIEnumerator(name: "EXPAND_CONST_ADDRESS", value: 3, isUnsigned: true)
!527 = !DIEnumerator(name: "EXPAND_INITIALIZER", value: 4, isUnsigned: true)
!528 = !DIEnumerator(name: "EXPAND_WRITE", value: 5, isUnsigned: true)
!529 = !DIEnumerator(name: "EXPAND_MEMORY", value: 6, isUnsigned: true)
!530 = !{!531, !532, !533, !534, !537, !538, !540, !656, !778, !134, !1867, !1106, !7, !1885, !377, !610}
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!533 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !536)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !541, line: 50, baseType: !542)
!541 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !378, line: 240, size: 384, elements: !544)
!544 = !{!545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !543, file: !378, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !543, file: !378, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !543, file: !378, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !543, file: !378, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !543, file: !378, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !543, file: !378, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !543, file: !378, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !543, file: !378, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !543, file: !378, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !543, file: !378, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !543, file: !378, line: 321, baseType: !556, size: 320, offset: 64)
!556 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !378, line: 315, size: 320, elements: !557)
!557 = !{!558, !1802, !1804, !1865, !1866}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !556, file: !378, line: 316, baseType: !559, size: 64)
!559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !560, size: 64, elements: !575)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !378, line: 183, baseType: !561)
!561 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !378, line: 166, size: 64, elements: !562)
!562 = !{!563, !564, !565, !566, !567, !577, !578, !590, !593, !655, !1780, !1781, !1792, !1799}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !561, file: !378, line: 168, baseType: !533, size: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !561, file: !378, line: 169, baseType: !7, size: 32)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !561, file: !378, line: 170, baseType: !538, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !561, file: !378, line: 171, baseType: !540, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !561, file: !378, line: 172, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !541, line: 53, baseType: !569)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !378, line: 359, size: 128, elements: !571)
!571 = !{!572, !573}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !570, file: !378, line: 360, baseType: !533, size: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !570, file: !378, line: 361, baseType: !574, size: 64, offset: 64)
!574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !540, size: 64, elements: !575)
!575 = !{!576}
!576 = !DISubrange(count: 1)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !561, file: !378, line: 173, baseType: !5, size: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !561, file: !378, line: 174, baseType: !579, size: 32)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !378, line: 133, baseType: !580)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !378, line: 115, size: 32, elements: !581)
!581 = !{!582, !583, !584, !585, !586, !587, !588, !589}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !580, file: !378, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !580, file: !378, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !580, file: !378, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !580, file: !378, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !580, file: !378, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !580, file: !378, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !580, file: !378, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !580, file: !378, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !561, file: !378, line: 175, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !378, line: 175, flags: DIFlagFwdDecl)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !561, file: !378, line: 176, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !596, line: 75, size: 256, elements: !597)
!596 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!597 = !{!598, !613, !614, !615}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !595, file: !596, line: 76, baseType: !599, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !596, line: 68, baseType: !601)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !596, line: 63, size: 320, elements: !602)
!602 = !{!603, !605, !606, !607}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !601, file: !596, line: 64, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !601, file: !596, line: 65, baseType: !604, size: 64, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !601, file: !596, line: 66, baseType: !7, size: 32, offset: 128)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !601, file: !596, line: 67, baseType: !608, size: 128, offset: 192)
!608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !609, size: 128, elements: !611)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !596, line: 29, baseType: !610)
!610 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!611 = !{!612}
!612 = !DISubrange(count: 2)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !595, file: !596, line: 77, baseType: !599, size: 64, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !595, file: !596, line: 78, baseType: !7, size: 32, offset: 128)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !595, file: !596, line: 79, baseType: !616, size: 64, offset: 192)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !596, line: 49, baseType: !618)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !596, line: 45, size: 832, elements: !619)
!619 = !{!620, !621, !622}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !618, file: !596, line: 46, baseType: !604, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !618, file: !596, line: 47, baseType: !594, size: 64, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !618, file: !596, line: 48, baseType: !623, size: 704, offset: 128)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !624, line: 164, size: 704, elements: !625)
!624 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!625 = !{!626, !628, !638, !639, !640, !641, !642, !643, !647, !651, !652, !653, !654}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !623, file: !624, line: 166, baseType: !627, size: 64)
!627 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !623, file: !624, line: 167, baseType: !629, size: 64, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !624, line: 157, size: 192, elements: !631)
!631 = !{!632, !633, !634}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !630, file: !624, line: 159, baseType: !535, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !630, file: !624, line: 160, baseType: !629, size: 64, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !630, file: !624, line: 161, baseType: !635, size: 32, offset: 128)
!635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !536, size: 32, elements: !636)
!636 = !{!637}
!637 = !DISubrange(count: 4)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !623, file: !624, line: 168, baseType: !535, size: 64, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !623, file: !624, line: 169, baseType: !535, size: 64, offset: 192)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !623, file: !624, line: 170, baseType: !535, size: 64, offset: 256)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !623, file: !624, line: 171, baseType: !627, size: 64, offset: 320)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !623, file: !624, line: 172, baseType: !533, size: 32, offset: 384)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !623, file: !624, line: 176, baseType: !644, size: 64, offset: 448)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!629, !537, !627}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !623, file: !624, line: 177, baseType: !648, size: 64, offset: 512)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{null, !537, !629}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !623, file: !624, line: 178, baseType: !537, size: 64, offset: 576)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !623, file: !624, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !623, file: !624, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !623, file: !624, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !561, file: !378, line: 177, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !541, line: 56, baseType: !657)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !135, line: 3371, size: 1792, elements: !659)
!659 = !{!660, !693, !699, !710, !729, !740, !745, !752, !758, !771, !783, !821, !826, !854, !871, !872, !877, !886, !892, !897, !901, !905, !1429, !1478, !1484, !1490, !1497, !1510, !1524, !1541, !1553, !1575, !1590, !1762}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !658, file: !135, line: 3372, baseType: !661, size: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !135, line: 360, size: 64, elements: !662)
!662 = !{!663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !661, file: !135, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !661, file: !135, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !661, file: !135, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !661, file: !135, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !661, file: !135, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !661, file: !135, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !661, file: !135, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !661, file: !135, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !661, file: !135, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !661, file: !135, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !661, file: !135, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !661, file: !135, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !661, file: !135, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !661, file: !135, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !661, file: !135, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !661, file: !135, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !661, file: !135, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !661, file: !135, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !661, file: !135, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !661, file: !135, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !661, file: !135, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !661, file: !135, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !661, file: !135, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !661, file: !135, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !661, file: !135, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !661, file: !135, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !661, file: !135, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !661, file: !135, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !661, file: !135, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !661, file: !135, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !658, file: !135, line: 3373, baseType: !694, size: 192)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !135, line: 402, size: 192, elements: !695)
!695 = !{!696, !697, !698}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !694, file: !135, line: 403, baseType: !661, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !694, file: !135, line: 404, baseType: !656, size: 64, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !694, file: !135, line: 405, baseType: !656, size: 64, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !658, file: !135, line: 3374, baseType: !700, size: 320)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !135, line: 1384, size: 320, elements: !701)
!701 = !{!702, !703}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !700, file: !135, line: 1385, baseType: !694, size: 192)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !700, file: !135, line: 1386, baseType: !704, size: 128, offset: 192)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !705, line: 58, baseType: !706)
!705 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !705, line: 54, size: 128, elements: !707)
!707 = !{!708, !709}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !706, file: !705, line: 56, baseType: !610, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !706, file: !705, line: 57, baseType: !627, size: 64, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !658, file: !135, line: 3375, baseType: !711, size: 256)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !135, line: 1397, size: 256, elements: !712)
!712 = !{!713, !714}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !711, file: !135, line: 1398, baseType: !694, size: 192)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !711, file: !135, line: 1399, baseType: !715, size: 64, offset: 192)
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
!726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 192, elements: !727)
!727 = !{!728}
!728 = !DISubrange(count: 3)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !658, file: !135, line: 3376, baseType: !730, size: 256)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !135, line: 1408, size: 256, elements: !731)
!731 = !{!732, !733}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !730, file: !135, line: 1409, baseType: !694, size: 192)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !730, file: !135, line: 1410, baseType: !734, size: 64, offset: 192)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !736, line: 27, size: 192, elements: !737)
!736 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!737 = !{!738, !739}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !735, file: !736, line: 29, baseType: !704, size: 128)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !735, file: !736, line: 30, baseType: !5, size: 32, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !658, file: !135, line: 3377, baseType: !741, size: 256)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !135, line: 1437, size: 256, elements: !742)
!742 = !{!743, !744}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !741, file: !135, line: 1438, baseType: !694, size: 192)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !741, file: !135, line: 1439, baseType: !656, size: 64, offset: 192)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !658, file: !135, line: 3378, baseType: !746, size: 256)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !135, line: 1418, size: 256, elements: !747)
!747 = !{!748, !749, !750}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !746, file: !135, line: 1419, baseType: !694, size: 192)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !746, file: !135, line: 1420, baseType: !533, size: 32, offset: 192)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !746, file: !135, line: 1421, baseType: !751, size: 8, offset: 224)
!751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !536, size: 8, elements: !575)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !658, file: !135, line: 3379, baseType: !753, size: 320)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !135, line: 1428, size: 320, elements: !754)
!754 = !{!755, !756, !757}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !753, file: !135, line: 1429, baseType: !694, size: 192)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !753, file: !135, line: 1430, baseType: !656, size: 64, offset: 192)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !753, file: !135, line: 1431, baseType: !656, size: 64, offset: 256)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !658, file: !135, line: 3380, baseType: !759, size: 320)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !135, line: 1460, size: 320, elements: !760)
!760 = !{!761, !762}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !759, file: !135, line: 1461, baseType: !694, size: 192)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !759, file: !135, line: 1462, baseType: !763, size: 128, offset: 192)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !764, line: 31, size: 128, elements: !765)
!764 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!765 = !{!766, !769, !770}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !763, file: !764, line: 32, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !532)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !763, file: !764, line: 33, baseType: !7, size: 32, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !763, file: !764, line: 34, baseType: !7, size: 32, offset: 96)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !658, file: !135, line: 3381, baseType: !772, size: 384)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !135, line: 2507, size: 384, elements: !773)
!773 = !{!774, !775, !780, !781, !782}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !772, file: !135, line: 2508, baseType: !694, size: 192)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !772, file: !135, line: 2509, baseType: !776, size: 32, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !777, line: 58, baseType: !778)
!777 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !779, line: 44, baseType: !7)
!779 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!780 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !772, file: !135, line: 2510, baseType: !7, size: 32, offset: 224)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !772, file: !135, line: 2511, baseType: !656, size: 64, offset: 256)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !772, file: !135, line: 2512, baseType: !656, size: 64, offset: 320)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !658, file: !135, line: 3382, baseType: !784, size: 896)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !135, line: 2652, size: 896, elements: !785)
!785 = !{!786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !784, file: !135, line: 2653, baseType: !772, size: 384)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !784, file: !135, line: 2654, baseType: !656, size: 64, offset: 384)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !784, file: !135, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !784, file: !135, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !784, file: !135, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !784, file: !135, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !784, file: !135, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !784, file: !135, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !784, file: !135, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !784, file: !135, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !784, file: !135, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !784, file: !135, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !784, file: !135, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !784, file: !135, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !784, file: !135, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !784, file: !135, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !784, file: !135, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !784, file: !135, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !784, file: !135, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !784, file: !135, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !784, file: !135, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !784, file: !135, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !784, file: !135, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !784, file: !135, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !784, file: !135, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !784, file: !135, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !784, file: !135, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !784, file: !135, line: 2703, baseType: !7, size: 32, offset: 512)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !784, file: !135, line: 2705, baseType: !656, size: 64, offset: 576)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !784, file: !135, line: 2706, baseType: !656, size: 64, offset: 640)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !784, file: !135, line: 2707, baseType: !656, size: 64, offset: 704)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !784, file: !135, line: 2708, baseType: !656, size: 64, offset: 768)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !784, file: !135, line: 2711, baseType: !819, size: 64, offset: 832)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !135, line: 2711, flags: DIFlagFwdDecl)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !658, file: !135, line: 3383, baseType: !822, size: 960)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !135, line: 2756, size: 960, elements: !823)
!823 = !{!824, !825}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !822, file: !135, line: 2757, baseType: !784, size: 896)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !822, file: !135, line: 2758, baseType: !540, size: 64, offset: 896)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !658, file: !135, line: 3384, baseType: !827, size: 1472)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !135, line: 3114, size: 1472, elements: !828)
!828 = !{!829, !850, !851, !852, !853}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !827, file: !135, line: 3115, baseType: !830, size: 1216)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !135, line: 2984, size: 1216, elements: !831)
!831 = !{!832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !830, file: !135, line: 2985, baseType: !822, size: 960)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !830, file: !135, line: 2986, baseType: !656, size: 64, offset: 960)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !830, file: !135, line: 2987, baseType: !656, size: 64, offset: 1024)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !830, file: !135, line: 2988, baseType: !656, size: 64, offset: 1088)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !830, file: !135, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !830, file: !135, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !830, file: !135, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !830, file: !135, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !830, file: !135, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !830, file: !135, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !830, file: !135, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !830, file: !135, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !830, file: !135, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !830, file: !135, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !830, file: !135, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !830, file: !135, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !830, file: !135, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !830, file: !135, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !827, file: !135, line: 3117, baseType: !656, size: 64, offset: 1216)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !827, file: !135, line: 3119, baseType: !656, size: 64, offset: 1280)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !827, file: !135, line: 3121, baseType: !656, size: 64, offset: 1344)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !827, file: !135, line: 3123, baseType: !656, size: 64, offset: 1408)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !658, file: !135, line: 3385, baseType: !855, size: 1088)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !135, line: 2874, size: 1088, elements: !856)
!856 = !{!857, !858, !859}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !855, file: !135, line: 2875, baseType: !822, size: 960)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !855, file: !135, line: 2876, baseType: !540, size: 64, offset: 960)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !855, file: !135, line: 2877, baseType: !860, size: 64, offset: 1024)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !862, line: 172, size: 128, elements: !863)
!862 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!863 = !{!864, !865, !866, !867, !868, !869, !870}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !861, file: !862, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !861, file: !862, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !861, file: !862, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !861, file: !862, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !861, file: !862, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !861, file: !862, line: 195, baseType: !7, size: 32, offset: 32)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !861, file: !862, line: 199, baseType: !656, size: 64, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !658, file: !135, line: 3386, baseType: !830, size: 1216)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !658, file: !135, line: 3387, baseType: !873, size: 1280)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !135, line: 3093, size: 1280, elements: !874)
!874 = !{!875, !876}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !873, file: !135, line: 3094, baseType: !830, size: 1216)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !873, file: !135, line: 3095, baseType: !860, size: 64, offset: 1216)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !658, file: !135, line: 3388, baseType: !878, size: 1216)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !135, line: 2824, size: 1216, elements: !879)
!879 = !{!880, !881, !882, !883, !884, !885}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !878, file: !135, line: 2825, baseType: !784, size: 896)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !878, file: !135, line: 2827, baseType: !656, size: 64, offset: 896)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !878, file: !135, line: 2828, baseType: !656, size: 64, offset: 960)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !878, file: !135, line: 2829, baseType: !656, size: 64, offset: 1024)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !878, file: !135, line: 2830, baseType: !656, size: 64, offset: 1088)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !878, file: !135, line: 2831, baseType: !656, size: 64, offset: 1152)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !658, file: !135, line: 3389, baseType: !887, size: 1024)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !135, line: 2850, size: 1024, elements: !888)
!888 = !{!889, !890, !891}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !887, file: !135, line: 2851, baseType: !822, size: 960)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !887, file: !135, line: 2852, baseType: !533, size: 32, offset: 960)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !887, file: !135, line: 2853, baseType: !533, size: 32, offset: 992)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !658, file: !135, line: 3390, baseType: !893, size: 1024)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !135, line: 2857, size: 1024, elements: !894)
!894 = !{!895, !896}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !893, file: !135, line: 2858, baseType: !822, size: 960)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !893, file: !135, line: 2859, baseType: !860, size: 64, offset: 960)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !658, file: !135, line: 3391, baseType: !898, size: 960)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !135, line: 2862, size: 960, elements: !899)
!899 = !{!900}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !898, file: !135, line: 2863, baseType: !822, size: 960)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !658, file: !135, line: 3392, baseType: !902, size: 1472)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !135, line: 3304, size: 1472, elements: !903)
!903 = !{!904}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !902, file: !135, line: 3305, baseType: !827, size: 1472)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !658, file: !135, line: 3393, baseType: !906, size: 1792)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !135, line: 3248, size: 1792, elements: !907)
!907 = !{!908, !909, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !906, file: !135, line: 3249, baseType: !827, size: 1472)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !906, file: !135, line: 3251, baseType: !910, size: 64, offset: 1472)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !912, line: 463, size: 1152, elements: !913)
!912 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!913 = !{!914, !917, !1233, !1234, !1349, !1352, !1353, !1354, !1355, !1356, !1357, !1381, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !911, file: !912, line: 464, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !912, line: 464, flags: DIFlagFwdDecl)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !911, file: !912, line: 467, baseType: !918, size: 64, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !330, line: 374, size: 640, elements: !920)
!920 = !{!921, !1208, !1209, !1222, !1223, !1224, !1225, !1226, !1227, !1229, !1231, !1232}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !919, file: !330, line: 377, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !541, line: 111, baseType: !923)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !330, line: 217, size: 832, elements: !925)
!925 = !{!926, !1173, !1174, !1175, !1178, !1182, !1183, !1184, !1202, !1203, !1204, !1205, !1206, !1207}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !924, file: !330, line: 219, baseType: !927, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !330, line: 151, baseType: !929)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !330, line: 151, size: 128, elements: !930)
!930 = !{!931}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !929, file: !330, line: 151, baseType: !932, size: 128)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !330, line: 150, baseType: !933)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !330, line: 150, size: 128, elements: !934)
!934 = !{!935, !936, !937}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !933, file: !330, line: 150, baseType: !7, size: 32)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !933, file: !330, line: 150, baseType: !7, size: 32, offset: 32)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !933, file: !330, line: 150, baseType: !938, size: 64, offset: 64)
!938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !939, size: 64, elements: !575)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !541, line: 108, baseType: !940)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !330, line: 122, size: 512, elements: !942)
!942 = !{!943, !944, !945, !1165, !1166, !1167, !1168, !1169, !1170, !1171}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !941, file: !330, line: 124, baseType: !923, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !941, file: !330, line: 125, baseType: !923, size: 64, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !941, file: !330, line: 131, baseType: !946, size: 64, offset: 128)
!946 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !330, line: 128, size: 64, elements: !947)
!947 = !{!948, !1164}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !946, file: !330, line: 129, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !541, line: 66, baseType: !950)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !952, line: 143, size: 192, elements: !953)
!952 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!953 = !{!954, !1162, !1163}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !951, file: !952, line: 145, baseType: !955, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !541, line: 69, baseType: !956)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !952, line: 136, size: 192, elements: !958)
!958 = !{!959, !1160, !1161}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !957, file: !952, line: 137, baseType: !960, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !541, line: 58, baseType: !961)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !952, line: 737, size: 768, elements: !963)
!963 = !{!964, !981, !1015, !1021, !1026, !1031, !1038, !1044, !1050, !1055, !1069, !1074, !1080, !1085, !1095, !1100, !1118, !1125, !1132, !1138, !1143, !1149, !1155}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !962, file: !952, line: 738, baseType: !965, size: 256)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !952, line: 271, size: 256, elements: !966)
!966 = !{!967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !965, file: !952, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !965, file: !952, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !965, file: !952, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !965, file: !952, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !965, file: !952, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !965, file: !952, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !965, file: !952, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !965, file: !952, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !965, file: !952, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !965, file: !952, line: 312, baseType: !7, size: 32, offset: 32)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !965, file: !952, line: 316, baseType: !776, size: 32, offset: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !965, file: !952, line: 319, baseType: !7, size: 32, offset: 96)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !965, file: !952, line: 323, baseType: !923, size: 64, offset: 128)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !965, file: !952, line: 327, baseType: !656, size: 64, offset: 192)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !962, file: !952, line: 739, baseType: !982, size: 448)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !952, line: 350, size: 448, elements: !983)
!983 = !{!984, !1013}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !982, file: !952, line: 353, baseType: !985, size: 384)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !952, line: 333, size: 384, elements: !986)
!986 = !{!987, !988, !996}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !985, file: !952, line: 336, baseType: !965, size: 256)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !985, file: !952, line: 343, baseType: !989, size: 64, offset: 256)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !991, line: 37, size: 128, elements: !992)
!991 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!992 = !{!993, !994}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !990, file: !991, line: 39, baseType: !989, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !990, file: !991, line: 40, baseType: !995, size: 64, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !985, file: !952, line: 344, baseType: !997, size: 64, offset: 320)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !991, line: 45, size: 320, elements: !999)
!999 = !{!1000, !1001}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !998, file: !991, line: 47, baseType: !997, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !998, file: !991, line: 48, baseType: !1002, size: 256, offset: 64)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !135, line: 1883, size: 256, elements: !1003)
!1003 = !{!1004, !1006, !1007, !1012}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1002, file: !135, line: 1884, baseType: !1005, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1002, file: !135, line: 1885, baseType: !1005, size: 64, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1002, file: !135, line: 1891, baseType: !1008, size: 64, offset: 128)
!1008 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1002, file: !135, line: 1891, size: 64, elements: !1009)
!1009 = !{!1010, !1011}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1008, file: !135, line: 1891, baseType: !960, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1008, file: !135, line: 1891, baseType: !656, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1002, file: !135, line: 1892, baseType: !995, size: 64, offset: 192)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !982, file: !952, line: 359, baseType: !1014, size: 64, offset: 384)
!1014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !656, size: 64, elements: !575)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !962, file: !952, line: 740, baseType: !1016, size: 512)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !952, line: 365, size: 512, elements: !1017)
!1017 = !{!1018, !1019, !1020}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1016, file: !952, line: 368, baseType: !985, size: 384)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !1016, file: !952, line: 373, baseType: !656, size: 64, offset: 384)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !1016, file: !952, line: 374, baseType: !656, size: 64, offset: 448)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !962, file: !952, line: 741, baseType: !1022, size: 576)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !952, line: 380, size: 576, elements: !1023)
!1023 = !{!1024, !1025}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1022, file: !952, line: 383, baseType: !1016, size: 512)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1022, file: !952, line: 389, baseType: !1014, size: 64, offset: 512)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !962, file: !952, line: 742, baseType: !1027, size: 320)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !952, line: 395, size: 320, elements: !1028)
!1028 = !{!1029, !1030}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1027, file: !952, line: 397, baseType: !965, size: 256)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1027, file: !952, line: 400, baseType: !949, size: 64, offset: 256)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !962, file: !952, line: 743, baseType: !1032, size: 448)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !952, line: 406, size: 448, elements: !1033)
!1033 = !{!1034, !1035, !1036, !1037}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1032, file: !952, line: 408, baseType: !965, size: 256)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1032, file: !952, line: 412, baseType: !656, size: 64, offset: 256)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1032, file: !952, line: 420, baseType: !656, size: 64, offset: 320)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1032, file: !952, line: 423, baseType: !949, size: 64, offset: 384)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !962, file: !952, line: 744, baseType: !1039, size: 384)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !952, line: 429, size: 384, elements: !1040)
!1040 = !{!1041, !1042, !1043}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1039, file: !952, line: 431, baseType: !965, size: 256)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1039, file: !952, line: 434, baseType: !656, size: 64, offset: 256)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1039, file: !952, line: 437, baseType: !949, size: 64, offset: 320)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !962, file: !952, line: 745, baseType: !1045, size: 384)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !952, line: 443, size: 384, elements: !1046)
!1046 = !{!1047, !1048, !1049}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1045, file: !952, line: 445, baseType: !965, size: 256)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1045, file: !952, line: 449, baseType: !656, size: 64, offset: 256)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1045, file: !952, line: 453, baseType: !949, size: 64, offset: 320)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !962, file: !952, line: 746, baseType: !1051, size: 320)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !952, line: 459, size: 320, elements: !1052)
!1052 = !{!1053, !1054}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1051, file: !952, line: 461, baseType: !965, size: 256)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1051, file: !952, line: 464, baseType: !656, size: 64, offset: 256)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !962, file: !952, line: 747, baseType: !1056, size: 768)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !952, line: 469, size: 768, elements: !1057)
!1057 = !{!1058, !1059, !1060, !1061, !1062}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1056, file: !952, line: 471, baseType: !965, size: 256)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1056, file: !952, line: 474, baseType: !7, size: 32, offset: 256)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1056, file: !952, line: 475, baseType: !7, size: 32, offset: 288)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1056, file: !952, line: 478, baseType: !656, size: 64, offset: 320)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1056, file: !952, line: 481, baseType: !1063, size: 384, offset: 384)
!1063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1064, size: 384, elements: !575)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !135, line: 1917, size: 384, elements: !1065)
!1065 = !{!1066, !1067, !1068}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1064, file: !135, line: 1920, baseType: !1002, size: 256)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1064, file: !135, line: 1921, baseType: !656, size: 64, offset: 256)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1064, file: !135, line: 1922, baseType: !776, size: 32, offset: 320)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !962, file: !952, line: 748, baseType: !1070, size: 320)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !952, line: 487, size: 320, elements: !1071)
!1071 = !{!1072, !1073}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1070, file: !952, line: 490, baseType: !965, size: 256)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1070, file: !952, line: 494, baseType: !533, size: 32, offset: 256)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !962, file: !952, line: 749, baseType: !1075, size: 384)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !952, line: 500, size: 384, elements: !1076)
!1076 = !{!1077, !1078, !1079}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1075, file: !952, line: 502, baseType: !965, size: 256)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1075, file: !952, line: 506, baseType: !949, size: 64, offset: 256)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1075, file: !952, line: 510, baseType: !949, size: 64, offset: 320)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !962, file: !952, line: 750, baseType: !1081, size: 320)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !952, line: 529, size: 320, elements: !1082)
!1082 = !{!1083, !1084}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1081, file: !952, line: 531, baseType: !965, size: 256)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1081, file: !952, line: 540, baseType: !949, size: 64, offset: 256)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !962, file: !952, line: 751, baseType: !1086, size: 704)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !952, line: 546, size: 704, elements: !1087)
!1087 = !{!1088, !1089, !1090, !1091, !1092, !1093, !1094}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1086, file: !952, line: 549, baseType: !1016, size: 512)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1086, file: !952, line: 553, baseType: !538, size: 64, offset: 512)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1086, file: !952, line: 557, baseType: !532, size: 8, offset: 576)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1086, file: !952, line: 558, baseType: !532, size: 8, offset: 584)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1086, file: !952, line: 559, baseType: !532, size: 8, offset: 592)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1086, file: !952, line: 560, baseType: !532, size: 8, offset: 600)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1086, file: !952, line: 566, baseType: !1014, size: 64, offset: 640)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !962, file: !952, line: 752, baseType: !1096, size: 384)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !952, line: 571, size: 384, elements: !1097)
!1097 = !{!1098, !1099}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1096, file: !952, line: 573, baseType: !1027, size: 320)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1096, file: !952, line: 577, baseType: !656, size: 64, offset: 320)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !962, file: !952, line: 753, baseType: !1101, size: 576)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !952, line: 600, size: 576, elements: !1102)
!1102 = !{!1103, !1104, !1105, !1108, !1117}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1101, file: !952, line: 602, baseType: !1027, size: 320)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1101, file: !952, line: 605, baseType: !656, size: 64, offset: 320)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1101, file: !952, line: 609, baseType: !1106, size: 64, offset: 384)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1107, line: 46, baseType: !610)
!1107 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1101, file: !952, line: 612, baseType: !1109, size: 64, offset: 448)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !952, line: 581, size: 320, elements: !1111)
!1111 = !{!1112, !1113, !1114, !1115, !1116}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1110, file: !952, line: 583, baseType: !134, size: 32)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1110, file: !952, line: 586, baseType: !656, size: 64, offset: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1110, file: !952, line: 589, baseType: !656, size: 64, offset: 128)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1110, file: !952, line: 592, baseType: !656, size: 64, offset: 192)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1110, file: !952, line: 595, baseType: !656, size: 64, offset: 256)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1101, file: !952, line: 616, baseType: !949, size: 64, offset: 512)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !962, file: !952, line: 754, baseType: !1119, size: 512)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !952, line: 622, size: 512, elements: !1120)
!1120 = !{!1121, !1122, !1123, !1124}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1119, file: !952, line: 624, baseType: !1027, size: 320)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1119, file: !952, line: 628, baseType: !656, size: 64, offset: 320)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1119, file: !952, line: 632, baseType: !656, size: 64, offset: 384)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1119, file: !952, line: 636, baseType: !656, size: 64, offset: 448)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !962, file: !952, line: 755, baseType: !1126, size: 704)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !952, line: 642, size: 704, elements: !1127)
!1127 = !{!1128, !1129, !1130, !1131}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1126, file: !952, line: 644, baseType: !1119, size: 512)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1126, file: !952, line: 648, baseType: !656, size: 64, offset: 512)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1126, file: !952, line: 652, baseType: !656, size: 64, offset: 576)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1126, file: !952, line: 653, baseType: !656, size: 64, offset: 640)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !962, file: !952, line: 756, baseType: !1133, size: 448)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !952, line: 663, size: 448, elements: !1134)
!1134 = !{!1135, !1136, !1137}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1133, file: !952, line: 665, baseType: !1027, size: 320)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1133, file: !952, line: 668, baseType: !656, size: 64, offset: 320)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1133, file: !952, line: 673, baseType: !656, size: 64, offset: 384)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !962, file: !952, line: 757, baseType: !1139, size: 384)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !952, line: 694, size: 384, elements: !1140)
!1140 = !{!1141, !1142}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1139, file: !952, line: 696, baseType: !1027, size: 320)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1139, file: !952, line: 699, baseType: !656, size: 64, offset: 320)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !962, file: !952, line: 758, baseType: !1144, size: 384)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !952, line: 681, size: 384, elements: !1145)
!1145 = !{!1146, !1147, !1148}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1144, file: !952, line: 683, baseType: !965, size: 256)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1144, file: !952, line: 686, baseType: !656, size: 64, offset: 256)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1144, file: !952, line: 689, baseType: !656, size: 64, offset: 320)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !962, file: !952, line: 759, baseType: !1150, size: 384)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !952, line: 707, size: 384, elements: !1151)
!1151 = !{!1152, !1153, !1154}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1150, file: !952, line: 709, baseType: !965, size: 256)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1150, file: !952, line: 712, baseType: !656, size: 64, offset: 256)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1150, file: !952, line: 712, baseType: !656, size: 64, offset: 320)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !962, file: !952, line: 760, baseType: !1156, size: 320)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !952, line: 718, size: 320, elements: !1157)
!1157 = !{!1158, !1159}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1156, file: !952, line: 720, baseType: !965, size: 256)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1156, file: !952, line: 723, baseType: !656, size: 64, offset: 256)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !957, file: !952, line: 138, baseType: !956, size: 64, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !957, file: !952, line: 139, baseType: !956, size: 64, offset: 128)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !951, file: !952, line: 146, baseType: !955, size: 64, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !951, file: !952, line: 152, baseType: !949, size: 64, offset: 128)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !946, file: !330, line: 130, baseType: !540, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !941, file: !330, line: 134, baseType: !537, size: 64, offset: 192)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !941, file: !330, line: 137, baseType: !656, size: 64, offset: 256)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !941, file: !330, line: 138, baseType: !776, size: 32, offset: 320)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !941, file: !330, line: 142, baseType: !7, size: 32, offset: 352)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !941, file: !330, line: 144, baseType: !533, size: 32, offset: 384)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !941, file: !330, line: 145, baseType: !533, size: 32, offset: 416)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !941, file: !330, line: 146, baseType: !1172, size: 64, offset: 448)
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !330, line: 119, baseType: !627)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !924, file: !330, line: 220, baseType: !927, size: 64, offset: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !924, file: !330, line: 223, baseType: !537, size: 64, offset: 128)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !924, file: !330, line: 226, baseType: !1176, size: 64, offset: 192)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !330, line: 185, flags: DIFlagFwdDecl)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !924, file: !330, line: 229, baseType: !1179, size: 128, offset: 256)
!1179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1180, size: 128, elements: !611)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !330, line: 229, flags: DIFlagFwdDecl)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !924, file: !330, line: 232, baseType: !923, size: 64, offset: 384)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !924, file: !330, line: 233, baseType: !923, size: 64, offset: 448)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !924, file: !330, line: 238, baseType: !1185, size: 64, offset: 512)
!1185 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !330, line: 235, size: 64, elements: !1186)
!1186 = !{!1187, !1193}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1185, file: !330, line: 236, baseType: !1188, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !330, line: 273, size: 128, elements: !1190)
!1190 = !{!1191, !1192}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1189, file: !330, line: 275, baseType: !949, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1189, file: !330, line: 278, baseType: !949, size: 64, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1185, file: !330, line: 237, baseType: !1194, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !330, line: 259, size: 320, elements: !1196)
!1196 = !{!1197, !1198, !1199, !1200, !1201}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1195, file: !330, line: 261, baseType: !540, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1195, file: !330, line: 262, baseType: !540, size: 64, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1195, file: !330, line: 266, baseType: !540, size: 64, offset: 128)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1195, file: !330, line: 267, baseType: !540, size: 64, offset: 192)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1195, file: !330, line: 270, baseType: !533, size: 32, offset: 256)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !924, file: !330, line: 241, baseType: !1172, size: 64, offset: 576)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !924, file: !330, line: 244, baseType: !533, size: 32, offset: 640)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !924, file: !330, line: 247, baseType: !533, size: 32, offset: 672)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !924, file: !330, line: 250, baseType: !533, size: 32, offset: 704)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !924, file: !330, line: 253, baseType: !533, size: 32, offset: 736)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !924, file: !330, line: 256, baseType: !533, size: 32, offset: 768)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !919, file: !330, line: 378, baseType: !922, size: 64, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !919, file: !330, line: 381, baseType: !1210, size: 64, offset: 128)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !330, line: 282, baseType: !1212)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !330, line: 282, size: 128, elements: !1213)
!1213 = !{!1214}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1212, file: !330, line: 282, baseType: !1215, size: 128)
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !330, line: 281, baseType: !1216)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !330, line: 281, size: 128, elements: !1217)
!1217 = !{!1218, !1219, !1220}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1216, file: !330, line: 281, baseType: !7, size: 32)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1216, file: !330, line: 281, baseType: !7, size: 32, offset: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1216, file: !330, line: 281, baseType: !1221, size: 64, offset: 64)
!1221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !922, size: 64, elements: !575)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !919, file: !330, line: 384, baseType: !533, size: 32, offset: 192)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !919, file: !330, line: 387, baseType: !533, size: 32, offset: 224)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !919, file: !330, line: 390, baseType: !533, size: 32, offset: 256)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !919, file: !330, line: 394, baseType: !1210, size: 64, offset: 320)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !919, file: !330, line: 396, baseType: !329, size: 32, offset: 384)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !919, file: !330, line: 399, baseType: !1228, size: 64, offset: 416)
!1228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 64, elements: !611)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !919, file: !330, line: 402, baseType: !1230, size: 64, offset: 480)
!1230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !611)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !919, file: !330, line: 406, baseType: !533, size: 32, offset: 544)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !919, file: !330, line: 409, baseType: !533, size: 32, offset: 576)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !911, file: !912, line: 470, baseType: !950, size: 64, offset: 128)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !911, file: !912, line: 473, baseType: !1235, size: 64, offset: 192)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !862, line: 39, size: 1152, elements: !1237)
!1237 = !{!1238, !1288, !1301, !1313, !1314, !1326, !1327, !1331, !1332, !1333, !1334, !1335}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1236, file: !862, line: 41, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1240, line: 144, baseType: !1241)
!1240 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1240, line: 100, size: 896, elements: !1243)
!1243 = !{!1244, !1252, !1257, !1262, !1264, !1265, !1266, !1267, !1268, !1269, !1274, !1276, !1277, !1282, !1287}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1242, file: !1240, line: 102, baseType: !1245, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1240, line: 52, baseType: !1246)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!1249, !1250}
!1249 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1240, line: 47, baseType: !7)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1242, file: !1240, line: 105, baseType: !1253, size: 64, offset: 64)
!1253 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1240, line: 59, baseType: !1254)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!533, !1250, !1250}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1242, file: !1240, line: 108, baseType: !1258, size: 64, offset: 128)
!1258 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1240, line: 63, baseType: !1259)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{null, !537}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1242, file: !1240, line: 111, baseType: !1263, size: 64, offset: 192)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1242, file: !1240, line: 114, baseType: !1106, size: 64, offset: 256)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1242, file: !1240, line: 117, baseType: !1106, size: 64, offset: 320)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1242, file: !1240, line: 120, baseType: !1106, size: 64, offset: 384)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1242, file: !1240, line: 124, baseType: !7, size: 32, offset: 448)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1242, file: !1240, line: 128, baseType: !7, size: 32, offset: 480)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1242, file: !1240, line: 131, baseType: !1270, size: 64, offset: 512)
!1270 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1240, line: 75, baseType: !1271)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!537, !1106, !1106}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1242, file: !1240, line: 132, baseType: !1275, size: 64, offset: 576)
!1275 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1240, line: 78, baseType: !1259)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1242, file: !1240, line: 135, baseType: !537, size: 64, offset: 640)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1242, file: !1240, line: 136, baseType: !1278, size: 64, offset: 704)
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1240, line: 82, baseType: !1279)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!537, !537, !1106, !1106}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1242, file: !1240, line: 137, baseType: !1283, size: 64, offset: 768)
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1240, line: 83, baseType: !1284)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{null, !537, !537}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1242, file: !1240, line: 141, baseType: !7, size: 32, offset: 832)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1236, file: !862, line: 48, baseType: !1289, size: 64, offset: 64)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !952, line: 35, baseType: !1291)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !952, line: 35, size: 128, elements: !1292)
!1292 = !{!1293}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1291, file: !952, line: 35, baseType: !1294, size: 128)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !952, line: 33, baseType: !1295)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !952, line: 33, size: 128, elements: !1296)
!1296 = !{!1297, !1298, !1299}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1295, file: !952, line: 33, baseType: !7, size: 32)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1295, file: !952, line: 33, baseType: !7, size: 32, offset: 32)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1295, file: !952, line: 33, baseType: !1300, size: 64, offset: 64)
!1300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !960, size: 64, elements: !575)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1236, file: !862, line: 51, baseType: !1302, size: 64, offset: 128)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !135, line: 183, baseType: !1304)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !135, line: 183, size: 128, elements: !1305)
!1305 = !{!1306}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1304, file: !135, line: 183, baseType: !1307, size: 128)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !135, line: 182, baseType: !1308)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !135, line: 182, size: 128, elements: !1309)
!1309 = !{!1310, !1311, !1312}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1308, file: !135, line: 182, baseType: !7, size: 32)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1308, file: !135, line: 182, baseType: !7, size: 32, offset: 32)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1308, file: !135, line: 182, baseType: !1014, size: 64, offset: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1236, file: !862, line: 54, baseType: !656, size: 64, offset: 192)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1236, file: !862, line: 57, baseType: !1315, size: 128, offset: 256)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1316, line: 31, size: 128, elements: !1317)
!1316 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1317 = !{!1318, !1319, !1320, !1321, !1322, !1323, !1324}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1315, file: !1316, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1315, file: !1316, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1315, file: !1316, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1315, file: !1316, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1315, file: !1316, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1315, file: !1316, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1315, file: !1316, line: 56, baseType: !1325, size: 64, offset: 64)
!1325 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !541, line: 47, baseType: !594)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1236, file: !862, line: 60, baseType: !1315, size: 128, offset: 384)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1236, file: !862, line: 64, baseType: !1328, size: 64, offset: 512)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1330, line: 33, flags: DIFlagFwdDecl)
!1330 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1236, file: !862, line: 67, baseType: !656, size: 64, offset: 576)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1236, file: !862, line: 73, baseType: !1239, size: 64, offset: 640)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1236, file: !862, line: 77, baseType: !1325, size: 64, offset: 704)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1236, file: !862, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1236, file: !862, line: 82, baseType: !1336, size: 320, offset: 832)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !991, line: 62, size: 320, elements: !1337)
!1337 = !{!1338, !1344, !1345, !1346, !1347, !1348}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1336, file: !991, line: 63, baseType: !1339, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !991, line: 56, size: 128, elements: !1341)
!1341 = !{!1342, !1343}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1340, file: !991, line: 57, baseType: !1339, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1340, file: !991, line: 58, baseType: !751, size: 8, offset: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1336, file: !991, line: 64, baseType: !7, size: 32, offset: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1336, file: !991, line: 66, baseType: !7, size: 32, offset: 96)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1336, file: !991, line: 68, baseType: !532, size: 8, offset: 128)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1336, file: !991, line: 70, baseType: !989, size: 64, offset: 192)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1336, file: !991, line: 71, baseType: !997, size: 64, offset: 256)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !911, file: !912, line: 476, baseType: !1350, size: 64, offset: 256)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !912, line: 476, flags: DIFlagFwdDecl)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !911, file: !912, line: 479, baseType: !1239, size: 64, offset: 320)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !911, file: !912, line: 484, baseType: !656, size: 64, offset: 384)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !911, file: !912, line: 488, baseType: !656, size: 64, offset: 448)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !911, file: !912, line: 493, baseType: !656, size: 64, offset: 512)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !911, file: !912, line: 496, baseType: !656, size: 64, offset: 576)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !911, file: !912, line: 501, baseType: !1358, size: 64, offset: 640)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !341, line: 2355, size: 576, elements: !1360)
!1360 = !{!1361, !1364, !1365, !1366, !1367, !1369, !1370, !1375, !1376, !1377, !1378, !1379, !1380}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1359, file: !341, line: 2356, baseType: !1362, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !341, line: 2356, flags: DIFlagFwdDecl)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1359, file: !341, line: 2357, baseType: !538, size: 64, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1359, file: !341, line: 2358, baseType: !533, size: 32, offset: 128)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1359, file: !341, line: 2359, baseType: !533, size: 32, offset: 160)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1359, file: !341, line: 2360, baseType: !1368, size: 128, offset: 192)
!1368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !533, size: 128, elements: !636)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1359, file: !341, line: 2364, baseType: !533, size: 32, offset: 320)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1359, file: !341, line: 2367, baseType: !1371, size: 128, offset: 384)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !341, line: 2349, size: 128, elements: !1372)
!1372 = !{!1373, !1374}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1371, file: !341, line: 2351, baseType: !540, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1371, file: !341, line: 2352, baseType: !627, size: 64, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1359, file: !341, line: 2371, baseType: !340, size: 32, offset: 512)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1359, file: !341, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1359, file: !341, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1359, file: !341, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1359, file: !341, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1359, file: !341, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !911, file: !912, line: 504, baseType: !1382, size: 64, offset: 704)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !912, line: 504, flags: DIFlagFwdDecl)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !911, file: !912, line: 507, baseType: !1239, size: 64, offset: 768)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !911, file: !912, line: 510, baseType: !533, size: 32, offset: 832)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !911, file: !912, line: 513, baseType: !533, size: 32, offset: 864)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !911, file: !912, line: 516, baseType: !776, size: 32, offset: 896)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !911, file: !912, line: 519, baseType: !776, size: 32, offset: 928)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !911, file: !912, line: 522, baseType: !7, size: 32, offset: 960)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !911, file: !912, line: 523, baseType: !7, size: 32, offset: 992)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !911, file: !912, line: 528, baseType: !538, size: 64, offset: 1024)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !911, file: !912, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !911, file: !912, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !911, file: !912, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !911, file: !912, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !911, file: !912, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !911, file: !912, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !911, file: !912, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !911, file: !912, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !911, file: !912, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !911, file: !912, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !911, file: !912, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !911, file: !912, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !911, file: !912, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !911, file: !912, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !911, file: !912, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !911, file: !912, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !906, file: !135, line: 3254, baseType: !656, size: 64, offset: 1536)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !906, file: !135, line: 3257, baseType: !656, size: 64, offset: 1600)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !906, file: !135, line: 3258, baseType: !656, size: 64, offset: 1664)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !906, file: !135, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !906, file: !135, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !906, file: !135, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !906, file: !135, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !906, file: !135, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !906, file: !135, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !906, file: !135, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !906, file: !135, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !906, file: !135, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !906, file: !135, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !906, file: !135, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !906, file: !135, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !906, file: !135, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !906, file: !135, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !906, file: !135, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !906, file: !135, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !906, file: !135, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !906, file: !135, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !658, file: !135, line: 3394, baseType: !1430, size: 1344)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !135, line: 2279, size: 1344, elements: !1431)
!1431 = !{!1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1457, !1458, !1459, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1430, file: !135, line: 2280, baseType: !694, size: 192)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1430, file: !135, line: 2281, baseType: !656, size: 64, offset: 192)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1430, file: !135, line: 2282, baseType: !656, size: 64, offset: 256)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1430, file: !135, line: 2283, baseType: !656, size: 64, offset: 320)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1430, file: !135, line: 2284, baseType: !656, size: 64, offset: 384)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1430, file: !135, line: 2285, baseType: !7, size: 32, offset: 448)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1430, file: !135, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1430, file: !135, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1430, file: !135, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1430, file: !135, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1430, file: !135, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1430, file: !135, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1430, file: !135, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1430, file: !135, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1430, file: !135, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1430, file: !135, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1430, file: !135, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1430, file: !135, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1430, file: !135, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1430, file: !135, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1430, file: !135, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1430, file: !135, line: 2305, baseType: !7, size: 32, offset: 512)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1430, file: !135, line: 2306, baseType: !1455, size: 32, offset: 544)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1456, line: 31, baseType: !533)
!1456 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1430, file: !135, line: 2307, baseType: !656, size: 64, offset: 576)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1430, file: !135, line: 2308, baseType: !656, size: 64, offset: 640)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1430, file: !135, line: 2314, baseType: !1460, size: 64, offset: 704)
!1460 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !135, line: 2309, size: 64, elements: !1461)
!1461 = !{!1462, !1463, !1464}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1460, file: !135, line: 2310, baseType: !533, size: 32)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1460, file: !135, line: 2311, baseType: !538, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1460, file: !135, line: 2312, baseType: !1465, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !135, line: 2277, flags: DIFlagFwdDecl)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1430, file: !135, line: 2315, baseType: !656, size: 64, offset: 768)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1430, file: !135, line: 2316, baseType: !656, size: 64, offset: 832)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1430, file: !135, line: 2317, baseType: !656, size: 64, offset: 896)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1430, file: !135, line: 2318, baseType: !656, size: 64, offset: 960)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1430, file: !135, line: 2319, baseType: !656, size: 64, offset: 1024)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1430, file: !135, line: 2320, baseType: !656, size: 64, offset: 1088)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1430, file: !135, line: 2321, baseType: !656, size: 64, offset: 1152)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1430, file: !135, line: 2322, baseType: !656, size: 64, offset: 1216)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1430, file: !135, line: 2324, baseType: !1476, size: 64, offset: 1280)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !135, line: 2324, flags: DIFlagFwdDecl)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !658, file: !135, line: 3395, baseType: !1479, size: 320)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !135, line: 1469, size: 320, elements: !1480)
!1480 = !{!1481, !1482, !1483}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1479, file: !135, line: 1470, baseType: !694, size: 192)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1479, file: !135, line: 1471, baseType: !656, size: 64, offset: 192)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1479, file: !135, line: 1472, baseType: !656, size: 64, offset: 256)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !658, file: !135, line: 3396, baseType: !1485, size: 320)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !135, line: 1482, size: 320, elements: !1486)
!1486 = !{!1487, !1488, !1489}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1485, file: !135, line: 1483, baseType: !694, size: 192)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1485, file: !135, line: 1484, baseType: !533, size: 32, offset: 192)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1485, file: !135, line: 1485, baseType: !1014, size: 64, offset: 256)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !658, file: !135, line: 3397, baseType: !1491, size: 384)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !135, line: 1829, size: 384, elements: !1492)
!1492 = !{!1493, !1494, !1495, !1496}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1491, file: !135, line: 1830, baseType: !694, size: 192)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1491, file: !135, line: 1831, baseType: !776, size: 32, offset: 192)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1491, file: !135, line: 1832, baseType: !656, size: 64, offset: 256)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1491, file: !135, line: 1835, baseType: !1014, size: 64, offset: 320)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !658, file: !135, line: 3398, baseType: !1498, size: 704)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !135, line: 1898, size: 704, elements: !1499)
!1499 = !{!1500, !1501, !1502, !1503, !1504, !1509}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1498, file: !135, line: 1899, baseType: !694, size: 192)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1498, file: !135, line: 1902, baseType: !656, size: 64, offset: 192)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1498, file: !135, line: 1905, baseType: !960, size: 64, offset: 256)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1498, file: !135, line: 1908, baseType: !7, size: 32, offset: 320)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1498, file: !135, line: 1911, baseType: !1505, size: 64, offset: 384)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !862, line: 117, size: 128, elements: !1507)
!1507 = !{!1508}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1506, file: !862, line: 120, baseType: !1315, size: 128)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1498, file: !135, line: 1914, baseType: !1002, size: 256, offset: 448)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !658, file: !135, line: 3399, baseType: !1511, size: 704)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !135, line: 2008, size: 704, elements: !1512)
!1512 = !{!1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1511, file: !135, line: 2009, baseType: !694, size: 192)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1511, file: !135, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1511, file: !135, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1511, file: !135, line: 2014, baseType: !776, size: 32, offset: 224)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1511, file: !135, line: 2016, baseType: !656, size: 64, offset: 256)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1511, file: !135, line: 2017, baseType: !1302, size: 64, offset: 320)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1511, file: !135, line: 2019, baseType: !656, size: 64, offset: 384)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1511, file: !135, line: 2020, baseType: !656, size: 64, offset: 448)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1511, file: !135, line: 2021, baseType: !656, size: 64, offset: 512)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1511, file: !135, line: 2022, baseType: !656, size: 64, offset: 576)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1511, file: !135, line: 2023, baseType: !656, size: 64, offset: 640)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !658, file: !135, line: 3400, baseType: !1525, size: 832)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !135, line: 2430, size: 832, elements: !1526)
!1526 = !{!1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1525, file: !135, line: 2431, baseType: !694, size: 192)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1525, file: !135, line: 2433, baseType: !656, size: 64, offset: 192)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1525, file: !135, line: 2434, baseType: !656, size: 64, offset: 256)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1525, file: !135, line: 2435, baseType: !656, size: 64, offset: 320)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1525, file: !135, line: 2436, baseType: !656, size: 64, offset: 384)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1525, file: !135, line: 2437, baseType: !1302, size: 64, offset: 448)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1525, file: !135, line: 2438, baseType: !656, size: 64, offset: 512)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1525, file: !135, line: 2440, baseType: !656, size: 64, offset: 576)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1525, file: !135, line: 2441, baseType: !656, size: 64, offset: 640)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1525, file: !135, line: 2443, baseType: !1537, size: 128, offset: 704)
!1537 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !135, line: 182, baseType: !1538)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !135, line: 182, size: 128, elements: !1539)
!1539 = !{!1540}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1538, file: !135, line: 182, baseType: !1307, size: 128)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !658, file: !135, line: 3401, baseType: !1542, size: 320)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !135, line: 3327, size: 320, elements: !1543)
!1543 = !{!1544, !1545, !1552}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1542, file: !135, line: 3329, baseType: !694, size: 192)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1542, file: !135, line: 3330, baseType: !1546, size: 64, offset: 192)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !135, line: 3320, size: 192, elements: !1548)
!1548 = !{!1549, !1550, !1551}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1547, file: !135, line: 3322, baseType: !1546, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1547, file: !135, line: 3323, baseType: !1546, size: 64, offset: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1547, file: !135, line: 3324, baseType: !656, size: 64, offset: 128)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1542, file: !135, line: 3331, baseType: !1546, size: 64, offset: 256)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !658, file: !135, line: 3402, baseType: !1554, size: 256)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !135, line: 1540, size: 256, elements: !1555)
!1555 = !{!1556, !1557}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1554, file: !135, line: 1541, baseType: !694, size: 192)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1554, file: !135, line: 1542, baseType: !1558, size: 64, offset: 192)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !135, line: 1538, baseType: !1560)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !135, line: 1538, size: 192, elements: !1561)
!1561 = !{!1562}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1560, file: !135, line: 1538, baseType: !1563, size: 192)
!1563 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !135, line: 1537, baseType: !1564)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !135, line: 1537, size: 192, elements: !1565)
!1565 = !{!1566, !1567, !1568}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1564, file: !135, line: 1537, baseType: !7, size: 32)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1564, file: !135, line: 1537, baseType: !7, size: 32, offset: 32)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1564, file: !135, line: 1537, baseType: !1569, size: 128, offset: 64)
!1569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1570, size: 128, elements: !575)
!1570 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !135, line: 1535, baseType: !1571)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !135, line: 1532, size: 128, elements: !1572)
!1572 = !{!1573, !1574}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1571, file: !135, line: 1533, baseType: !656, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1571, file: !135, line: 1534, baseType: !656, size: 64, offset: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !658, file: !135, line: 3403, baseType: !1576, size: 512)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !135, line: 1938, size: 512, elements: !1577)
!1577 = !{!1578, !1579, !1580, !1581, !1587, !1588, !1589}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1576, file: !135, line: 1939, baseType: !694, size: 192)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1576, file: !135, line: 1940, baseType: !776, size: 32, offset: 192)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1576, file: !135, line: 1941, baseType: !345, size: 32, offset: 224)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1576, file: !135, line: 1946, baseType: !1582, size: 32, offset: 256)
!1582 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !135, line: 1942, size: 32, elements: !1583)
!1583 = !{!1584, !1585, !1586}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1582, file: !135, line: 1943, baseType: !363, size: 32)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1582, file: !135, line: 1944, baseType: !370, size: 32)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1582, file: !135, line: 1945, baseType: !134, size: 32)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1576, file: !135, line: 1950, baseType: !949, size: 64, offset: 320)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1576, file: !135, line: 1951, baseType: !949, size: 64, offset: 384)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1576, file: !135, line: 1953, baseType: !1014, size: 64, offset: 448)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !658, file: !135, line: 3404, baseType: !1591, size: 1664)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !135, line: 3337, size: 1664, elements: !1592)
!1592 = !{!1593, !1594}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1591, file: !135, line: 3338, baseType: !694, size: 192)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1591, file: !135, line: 3341, baseType: !1595, size: 1472, offset: 192)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1596, line: 410, size: 1472, elements: !1597)
!1596 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1597 = !{!1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1595, file: !1596, line: 412, baseType: !533, size: 32)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1595, file: !1596, line: 413, baseType: !533, size: 32, offset: 32)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1595, file: !1596, line: 414, baseType: !533, size: 32, offset: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1595, file: !1596, line: 415, baseType: !533, size: 32, offset: 96)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1595, file: !1596, line: 416, baseType: !533, size: 32, offset: 128)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1595, file: !1596, line: 417, baseType: !533, size: 32, offset: 160)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1595, file: !1596, line: 418, baseType: !532, size: 8, offset: 192)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1595, file: !1596, line: 419, baseType: !532, size: 8, offset: 200)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1595, file: !1596, line: 420, baseType: !1607, size: 8, offset: 208)
!1607 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1595, file: !1596, line: 421, baseType: !1607, size: 8, offset: 216)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1595, file: !1596, line: 422, baseType: !1607, size: 8, offset: 224)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1595, file: !1596, line: 423, baseType: !1607, size: 8, offset: 232)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1595, file: !1596, line: 424, baseType: !1607, size: 8, offset: 240)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1595, file: !1596, line: 425, baseType: !1607, size: 8, offset: 248)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1595, file: !1596, line: 426, baseType: !1607, size: 8, offset: 256)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1595, file: !1596, line: 427, baseType: !1607, size: 8, offset: 264)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1595, file: !1596, line: 428, baseType: !1607, size: 8, offset: 272)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1595, file: !1596, line: 429, baseType: !1607, size: 8, offset: 280)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1595, file: !1596, line: 430, baseType: !1607, size: 8, offset: 288)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1595, file: !1596, line: 431, baseType: !1607, size: 8, offset: 296)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1595, file: !1596, line: 432, baseType: !1607, size: 8, offset: 304)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1595, file: !1596, line: 433, baseType: !1607, size: 8, offset: 312)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1595, file: !1596, line: 434, baseType: !1607, size: 8, offset: 320)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1595, file: !1596, line: 435, baseType: !1607, size: 8, offset: 328)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1595, file: !1596, line: 436, baseType: !1607, size: 8, offset: 336)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1595, file: !1596, line: 437, baseType: !1607, size: 8, offset: 344)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1595, file: !1596, line: 438, baseType: !1607, size: 8, offset: 352)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1595, file: !1596, line: 439, baseType: !1607, size: 8, offset: 360)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1595, file: !1596, line: 440, baseType: !1607, size: 8, offset: 368)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1595, file: !1596, line: 441, baseType: !1607, size: 8, offset: 376)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1595, file: !1596, line: 442, baseType: !1607, size: 8, offset: 384)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1595, file: !1596, line: 443, baseType: !1607, size: 8, offset: 392)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1595, file: !1596, line: 444, baseType: !1607, size: 8, offset: 400)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1595, file: !1596, line: 445, baseType: !1607, size: 8, offset: 408)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1595, file: !1596, line: 446, baseType: !1607, size: 8, offset: 416)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1595, file: !1596, line: 447, baseType: !1607, size: 8, offset: 424)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1595, file: !1596, line: 448, baseType: !1607, size: 8, offset: 432)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1595, file: !1596, line: 449, baseType: !1607, size: 8, offset: 440)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1595, file: !1596, line: 450, baseType: !1607, size: 8, offset: 448)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1595, file: !1596, line: 451, baseType: !1607, size: 8, offset: 456)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1595, file: !1596, line: 452, baseType: !1607, size: 8, offset: 464)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1595, file: !1596, line: 453, baseType: !1607, size: 8, offset: 472)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1595, file: !1596, line: 454, baseType: !1607, size: 8, offset: 480)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1595, file: !1596, line: 455, baseType: !1607, size: 8, offset: 488)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1595, file: !1596, line: 456, baseType: !1607, size: 8, offset: 496)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1595, file: !1596, line: 457, baseType: !1607, size: 8, offset: 504)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1595, file: !1596, line: 458, baseType: !1607, size: 8, offset: 512)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1595, file: !1596, line: 459, baseType: !1607, size: 8, offset: 520)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1595, file: !1596, line: 460, baseType: !1607, size: 8, offset: 528)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1595, file: !1596, line: 461, baseType: !1607, size: 8, offset: 536)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1595, file: !1596, line: 462, baseType: !1607, size: 8, offset: 544)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1595, file: !1596, line: 463, baseType: !1607, size: 8, offset: 552)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1595, file: !1596, line: 464, baseType: !1607, size: 8, offset: 560)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1595, file: !1596, line: 465, baseType: !1607, size: 8, offset: 568)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1595, file: !1596, line: 466, baseType: !1607, size: 8, offset: 576)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1595, file: !1596, line: 467, baseType: !1607, size: 8, offset: 584)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1595, file: !1596, line: 468, baseType: !1607, size: 8, offset: 592)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1595, file: !1596, line: 469, baseType: !1607, size: 8, offset: 600)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1595, file: !1596, line: 470, baseType: !1607, size: 8, offset: 608)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1595, file: !1596, line: 471, baseType: !1607, size: 8, offset: 616)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1595, file: !1596, line: 472, baseType: !1607, size: 8, offset: 624)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1595, file: !1596, line: 473, baseType: !1607, size: 8, offset: 632)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1595, file: !1596, line: 474, baseType: !1607, size: 8, offset: 640)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1595, file: !1596, line: 475, baseType: !1607, size: 8, offset: 648)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1595, file: !1596, line: 476, baseType: !1607, size: 8, offset: 656)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1595, file: !1596, line: 477, baseType: !1607, size: 8, offset: 664)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1595, file: !1596, line: 478, baseType: !1607, size: 8, offset: 672)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1595, file: !1596, line: 479, baseType: !1607, size: 8, offset: 680)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1595, file: !1596, line: 480, baseType: !1607, size: 8, offset: 688)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1595, file: !1596, line: 481, baseType: !1607, size: 8, offset: 696)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1595, file: !1596, line: 482, baseType: !1607, size: 8, offset: 704)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1595, file: !1596, line: 483, baseType: !1607, size: 8, offset: 712)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1595, file: !1596, line: 484, baseType: !1607, size: 8, offset: 720)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1595, file: !1596, line: 485, baseType: !1607, size: 8, offset: 728)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1595, file: !1596, line: 486, baseType: !1607, size: 8, offset: 736)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1595, file: !1596, line: 487, baseType: !1607, size: 8, offset: 744)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1595, file: !1596, line: 488, baseType: !1607, size: 8, offset: 752)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1595, file: !1596, line: 489, baseType: !1607, size: 8, offset: 760)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1595, file: !1596, line: 490, baseType: !1607, size: 8, offset: 768)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1595, file: !1596, line: 491, baseType: !1607, size: 8, offset: 776)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1595, file: !1596, line: 492, baseType: !1607, size: 8, offset: 784)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1595, file: !1596, line: 493, baseType: !1607, size: 8, offset: 792)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1595, file: !1596, line: 494, baseType: !1607, size: 8, offset: 800)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1595, file: !1596, line: 495, baseType: !1607, size: 8, offset: 808)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1595, file: !1596, line: 496, baseType: !1607, size: 8, offset: 816)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1595, file: !1596, line: 497, baseType: !1607, size: 8, offset: 824)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1595, file: !1596, line: 498, baseType: !1607, size: 8, offset: 832)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1595, file: !1596, line: 499, baseType: !1607, size: 8, offset: 840)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1595, file: !1596, line: 500, baseType: !1607, size: 8, offset: 848)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1595, file: !1596, line: 501, baseType: !1607, size: 8, offset: 856)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1595, file: !1596, line: 502, baseType: !1607, size: 8, offset: 864)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1595, file: !1596, line: 503, baseType: !1607, size: 8, offset: 872)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1595, file: !1596, line: 504, baseType: !1607, size: 8, offset: 880)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1595, file: !1596, line: 505, baseType: !1607, size: 8, offset: 888)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1595, file: !1596, line: 506, baseType: !1607, size: 8, offset: 896)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1595, file: !1596, line: 507, baseType: !1607, size: 8, offset: 904)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1595, file: !1596, line: 508, baseType: !1607, size: 8, offset: 912)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1595, file: !1596, line: 509, baseType: !1607, size: 8, offset: 920)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1595, file: !1596, line: 510, baseType: !1607, size: 8, offset: 928)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1595, file: !1596, line: 511, baseType: !1607, size: 8, offset: 936)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1595, file: !1596, line: 512, baseType: !1607, size: 8, offset: 944)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1595, file: !1596, line: 513, baseType: !1607, size: 8, offset: 952)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1595, file: !1596, line: 514, baseType: !1607, size: 8, offset: 960)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1595, file: !1596, line: 515, baseType: !1607, size: 8, offset: 968)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1595, file: !1596, line: 516, baseType: !1607, size: 8, offset: 976)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1595, file: !1596, line: 517, baseType: !1607, size: 8, offset: 984)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1595, file: !1596, line: 518, baseType: !1607, size: 8, offset: 992)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1595, file: !1596, line: 519, baseType: !1607, size: 8, offset: 1000)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1595, file: !1596, line: 520, baseType: !1607, size: 8, offset: 1008)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1595, file: !1596, line: 521, baseType: !1607, size: 8, offset: 1016)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1595, file: !1596, line: 522, baseType: !1607, size: 8, offset: 1024)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1595, file: !1596, line: 523, baseType: !1607, size: 8, offset: 1032)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1595, file: !1596, line: 524, baseType: !1607, size: 8, offset: 1040)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1595, file: !1596, line: 525, baseType: !1607, size: 8, offset: 1048)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1595, file: !1596, line: 526, baseType: !1607, size: 8, offset: 1056)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1595, file: !1596, line: 527, baseType: !1607, size: 8, offset: 1064)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1595, file: !1596, line: 528, baseType: !1607, size: 8, offset: 1072)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1595, file: !1596, line: 529, baseType: !1607, size: 8, offset: 1080)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1595, file: !1596, line: 530, baseType: !1607, size: 8, offset: 1088)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1595, file: !1596, line: 531, baseType: !1607, size: 8, offset: 1096)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1595, file: !1596, line: 532, baseType: !1607, size: 8, offset: 1104)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1595, file: !1596, line: 533, baseType: !1607, size: 8, offset: 1112)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1595, file: !1596, line: 534, baseType: !1607, size: 8, offset: 1120)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1595, file: !1596, line: 535, baseType: !1607, size: 8, offset: 1128)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1595, file: !1596, line: 536, baseType: !1607, size: 8, offset: 1136)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1595, file: !1596, line: 537, baseType: !1607, size: 8, offset: 1144)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1595, file: !1596, line: 538, baseType: !1607, size: 8, offset: 1152)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1595, file: !1596, line: 539, baseType: !1607, size: 8, offset: 1160)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1595, file: !1596, line: 540, baseType: !1607, size: 8, offset: 1168)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1595, file: !1596, line: 541, baseType: !1607, size: 8, offset: 1176)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1595, file: !1596, line: 542, baseType: !1607, size: 8, offset: 1184)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1595, file: !1596, line: 543, baseType: !1607, size: 8, offset: 1192)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1595, file: !1596, line: 544, baseType: !1607, size: 8, offset: 1200)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1595, file: !1596, line: 545, baseType: !1607, size: 8, offset: 1208)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1595, file: !1596, line: 546, baseType: !1607, size: 8, offset: 1216)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1595, file: !1596, line: 547, baseType: !1607, size: 8, offset: 1224)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1595, file: !1596, line: 548, baseType: !1607, size: 8, offset: 1232)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1595, file: !1596, line: 549, baseType: !1607, size: 8, offset: 1240)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1595, file: !1596, line: 550, baseType: !1607, size: 8, offset: 1248)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1595, file: !1596, line: 551, baseType: !1607, size: 8, offset: 1256)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1595, file: !1596, line: 552, baseType: !1607, size: 8, offset: 1264)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1595, file: !1596, line: 553, baseType: !1607, size: 8, offset: 1272)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1595, file: !1596, line: 554, baseType: !1607, size: 8, offset: 1280)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1595, file: !1596, line: 555, baseType: !1607, size: 8, offset: 1288)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1595, file: !1596, line: 556, baseType: !1607, size: 8, offset: 1296)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1595, file: !1596, line: 557, baseType: !1607, size: 8, offset: 1304)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1595, file: !1596, line: 558, baseType: !1607, size: 8, offset: 1312)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1595, file: !1596, line: 559, baseType: !1607, size: 8, offset: 1320)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1595, file: !1596, line: 560, baseType: !1607, size: 8, offset: 1328)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1595, file: !1596, line: 561, baseType: !1607, size: 8, offset: 1336)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1595, file: !1596, line: 562, baseType: !1607, size: 8, offset: 1344)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1595, file: !1596, line: 563, baseType: !1607, size: 8, offset: 1352)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1595, file: !1596, line: 564, baseType: !1607, size: 8, offset: 1360)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1595, file: !1596, line: 565, baseType: !1607, size: 8, offset: 1368)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1595, file: !1596, line: 566, baseType: !1607, size: 8, offset: 1376)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1595, file: !1596, line: 567, baseType: !1607, size: 8, offset: 1384)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1595, file: !1596, line: 568, baseType: !1607, size: 8, offset: 1392)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1595, file: !1596, line: 569, baseType: !1607, size: 8, offset: 1400)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1595, file: !1596, line: 570, baseType: !1607, size: 8, offset: 1408)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1595, file: !1596, line: 571, baseType: !1607, size: 8, offset: 1416)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1595, file: !1596, line: 572, baseType: !1607, size: 8, offset: 1424)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1595, file: !1596, line: 573, baseType: !1607, size: 8, offset: 1432)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1595, file: !1596, line: 574, baseType: !1607, size: 8, offset: 1440)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !658, file: !135, line: 3405, baseType: !1763, size: 384)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !135, line: 3352, size: 384, elements: !1764)
!1764 = !{!1765, !1766}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1763, file: !135, line: 3353, baseType: !694, size: 192)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1763, file: !135, line: 3356, baseType: !1767, size: 192, offset: 192)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1596, line: 578, size: 192, elements: !1768)
!1768 = !{!1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1767, file: !1596, line: 580, baseType: !533, size: 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1767, file: !1596, line: 581, baseType: !533, size: 32, offset: 32)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1767, file: !1596, line: 582, baseType: !533, size: 32, offset: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1767, file: !1596, line: 583, baseType: !533, size: 32, offset: 96)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1767, file: !1596, line: 584, baseType: !532, size: 8, offset: 128)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1767, file: !1596, line: 585, baseType: !532, size: 8, offset: 136)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1767, file: !1596, line: 586, baseType: !532, size: 8, offset: 144)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1767, file: !1596, line: 587, baseType: !532, size: 8, offset: 152)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1767, file: !1596, line: 588, baseType: !532, size: 8, offset: 160)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1767, file: !1596, line: 589, baseType: !532, size: 8, offset: 168)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1767, file: !1596, line: 590, baseType: !532, size: 8, offset: 176)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !561, file: !378, line: 178, baseType: !923, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !561, file: !378, line: 179, baseType: !1782, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !378, line: 150, baseType: !1784)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !378, line: 142, size: 320, elements: !1785)
!1785 = !{!1786, !1787, !1788, !1789, !1790, !1791}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1784, file: !378, line: 144, baseType: !656, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1784, file: !378, line: 145, baseType: !540, size: 64, offset: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1784, file: !378, line: 146, baseType: !540, size: 64, offset: 128)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1784, file: !378, line: 147, baseType: !1455, size: 32, offset: 192)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1784, file: !378, line: 148, baseType: !7, size: 32, offset: 224)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1784, file: !378, line: 149, baseType: !532, size: 8, offset: 256)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !561, file: !378, line: 180, baseType: !1793, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !378, line: 162, baseType: !1795)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !378, line: 159, size: 128, elements: !1796)
!1796 = !{!1797, !1798}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1795, file: !378, line: 160, baseType: !656, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1795, file: !378, line: 161, baseType: !627, size: 64, offset: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !561, file: !378, line: 181, baseType: !1800, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !378, line: 181, flags: DIFlagFwdDecl)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !556, file: !378, line: 317, baseType: !1803, size: 64)
!1803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !627, size: 64, elements: !575)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !556, file: !378, line: 318, baseType: !1805, size: 320)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !378, line: 188, size: 320, elements: !1806)
!1806 = !{!1807, !1809, !1864}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1805, file: !378, line: 190, baseType: !1808, size: 192)
!1808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !560, size: 192, elements: !727)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1805, file: !378, line: 193, baseType: !1810, size: 64, offset: 192)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !378, line: 206, size: 320, elements: !1812)
!1812 = !{!1813, !1849, !1850, !1851, !1863}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1811, file: !378, line: 208, baseType: !1814, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !541, line: 62, baseType: !1816)
!1816 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1817, line: 538, size: 256, elements: !1818)
!1817 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1818 = !{!1819, !1823, !1829, !1840}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1816, file: !1817, line: 539, baseType: !1820, size: 32)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1817, line: 482, size: 32, elements: !1821)
!1821 = !{!1822}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1820, file: !1817, line: 484, baseType: !7, size: 32)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1816, file: !1817, line: 540, baseType: !1824, size: 192)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1817, line: 488, size: 192, elements: !1825)
!1825 = !{!1826, !1827, !1828}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1824, file: !1817, line: 489, baseType: !1820, size: 32)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1824, file: !1817, line: 492, baseType: !538, size: 64, offset: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1824, file: !1817, line: 496, baseType: !656, size: 64, offset: 128)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1816, file: !1817, line: 541, baseType: !1830, size: 256)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1817, line: 504, size: 256, elements: !1831)
!1831 = !{!1832, !1833, !1838, !1839}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1830, file: !1817, line: 505, baseType: !1820, size: 32)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1830, file: !1817, line: 509, baseType: !1834, size: 64, offset: 64)
!1834 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1817, line: 501, baseType: !1835)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{null, !1250}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1830, file: !1817, line: 510, baseType: !1250, size: 64, offset: 128)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1830, file: !1817, line: 513, baseType: !1814, size: 64, offset: 192)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1816, file: !1817, line: 542, baseType: !1841, size: 128)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1817, line: 530, size: 128, elements: !1842)
!1842 = !{!1843, !1844}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1841, file: !1817, line: 531, baseType: !1820, size: 32)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1841, file: !1817, line: 534, baseType: !1845, size: 64, offset: 64)
!1845 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1817, line: 525, baseType: !1846)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!532, !656, !538, !610, !610}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1811, file: !378, line: 211, baseType: !7, size: 32, offset: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1811, file: !378, line: 214, baseType: !627, size: 64, offset: 128)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1811, file: !378, line: 224, baseType: !1852, size: 64, offset: 192)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !378, line: 202, baseType: !1854)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !378, line: 202, size: 128, elements: !1855)
!1855 = !{!1856}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1854, file: !378, line: 202, baseType: !1857, size: 128)
!1857 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !378, line: 200, baseType: !1858)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !378, line: 200, size: 128, elements: !1859)
!1859 = !{!1860, !1861, !1862}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1858, file: !378, line: 200, baseType: !7, size: 32)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1858, file: !378, line: 200, baseType: !7, size: 32, offset: 32)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1858, file: !378, line: 200, baseType: !574, size: 64, offset: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1811, file: !378, line: 234, baseType: !1852, size: 64, offset: 256)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1805, file: !378, line: 197, baseType: !627, size: 64, offset: 256)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !556, file: !378, line: 319, baseType: !716, size: 256)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !556, file: !378, line: 320, baseType: !735, size: 192)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_mem_addr_template_gc", file: !3, line: 84, size: 256, elements: !1869)
!1869 = !{!1870}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1868, file: !3, line: 84, baseType: !1871, size: 256)
!1871 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_mem_addr_template_base", file: !3, line: 83, baseType: !1872)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_mem_addr_template_base", file: !3, line: 83, size: 256, elements: !1873)
!1873 = !{!1874, !1875, !1876}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1872, file: !3, line: 83, baseType: !7, size: 32)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1872, file: !3, line: 83, baseType: !7, size: 32, offset: 32)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1872, file: !3, line: 83, baseType: !1877, size: 192, offset: 64)
!1877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1878, size: 192, elements: !575)
!1878 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_addr_template", file: !3, line: 81, baseType: !1879)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_addr_template", file: !3, line: 75, size: 192, elements: !1880)
!1880 = !{!1881, !1882, !1884}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1879, file: !3, line: 76, baseType: !540, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "step_p", scope: !1879, file: !3, line: 77, baseType: !1883, size: 64, offset: 64)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "off_p", scope: !1879, file: !3, line: 79, baseType: !1883, size: 64, offset: 128)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_mem_addr_template_gc", file: !3, line: 84, baseType: !1868)
!1887 = !{!1888, !0}
!1888 = !DIGlobalVariableExpression(var: !1889, expr: !DIExpression())
!1889 = distinct !DIGlobalVariable(name: "gt_ggc_r_gt_tree_ssa_address_h", scope: !2, file: !1890, line: 73, type: !1891, isLocal: false, isDefinition: true)
!1890 = !DIFile(filename: "./gt-tree-ssa-address.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1892, size: 640, elements: !611)
!1892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1893)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ggc_root_tab", file: !1894, line: 69, size: 320, elements: !1895)
!1894 = !DIFile(filename: "./ggc.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1895 = !{!1896, !1897, !1898, !1899, !1901}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1893, file: !1894, line: 70, baseType: !537, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "nelt", scope: !1893, file: !1894, line: 71, baseType: !1106, size: 64, offset: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !1893, file: !1894, line: 72, baseType: !1106, size: 64, offset: 128)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !1893, file: !1894, line: 73, baseType: !1900, size: 64, offset: 192)
!1900 = !DIDerivedType(tag: DW_TAG_typedef, name: "gt_pointer_walker", file: !1894, line: 65, baseType: !1259)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "pchw", scope: !1893, file: !1894, line: 74, baseType: !1900, size: 64, offset: 256)
!1902 = !{i32 2, !"Dwarf Version", i32 4}
!1903 = !{i32 2, !"Debug Info Version", i32 3}
!1904 = !{i32 1, !"wchar_size", i32 4}
!1905 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1906 = distinct !DISubprogram(name: "vprintf", scope: !1907, file: !1907, line: 39, type: !1908, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1918)
!1907 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!533, !1910, !1911}
!1910 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !538)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1913)
!1913 = !{!1914, !1915, !1916, !1917}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1912, file: !3, baseType: !7, size: 32)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1912, file: !3, baseType: !7, size: 32, offset: 32)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1912, file: !3, baseType: !537, size: 64, offset: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1912, file: !3, baseType: !537, size: 64, offset: 128)
!1918 = !{!1919, !1920}
!1919 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1906, file: !1907, line: 39, type: !1910)
!1920 = !DILocalVariable(name: "__arg", arg: 2, scope: !1906, file: !1907, line: 39, type: !1911)
!1921 = !DILocation(line: 0, scope: !1906)
!1922 = !DILocation(line: 41, column: 20, scope: !1906)
!1923 = !DILocation(line: 41, column: 10, scope: !1906)
!1924 = !DILocation(line: 41, column: 3, scope: !1906)
!1925 = distinct !DISubprogram(name: "getchar", scope: !1907, file: !1907, line: 47, type: !1926, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1928)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!533}
!1928 = !{}
!1929 = !DILocation(line: 49, column: 16, scope: !1925)
!1930 = !DILocation(line: 49, column: 10, scope: !1925)
!1931 = !DILocation(line: 49, column: 3, scope: !1925)
!1932 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1907, file: !1907, line: 56, type: !1933, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1986)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!533, !1935}
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1937, line: 7, baseType: !1938)
!1937 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1939, line: 49, size: 1728, elements: !1940)
!1939 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1940 = !{!1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1956, !1958, !1959, !1960, !1963, !1965, !1966, !1967, !1970, !1972, !1975, !1978, !1979, !1980, !1981, !1982}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1938, file: !1939, line: 51, baseType: !533, size: 32)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1938, file: !1939, line: 54, baseType: !535, size: 64, offset: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1938, file: !1939, line: 55, baseType: !535, size: 64, offset: 128)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1938, file: !1939, line: 56, baseType: !535, size: 64, offset: 192)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1938, file: !1939, line: 57, baseType: !535, size: 64, offset: 256)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1938, file: !1939, line: 58, baseType: !535, size: 64, offset: 320)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1938, file: !1939, line: 59, baseType: !535, size: 64, offset: 384)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1938, file: !1939, line: 60, baseType: !535, size: 64, offset: 448)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1938, file: !1939, line: 61, baseType: !535, size: 64, offset: 512)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1938, file: !1939, line: 64, baseType: !535, size: 64, offset: 576)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1938, file: !1939, line: 65, baseType: !535, size: 64, offset: 640)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1938, file: !1939, line: 66, baseType: !535, size: 64, offset: 704)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1938, file: !1939, line: 68, baseType: !1954, size: 64, offset: 768)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1939, line: 36, flags: DIFlagFwdDecl)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1938, file: !1939, line: 70, baseType: !1957, size: 64, offset: 832)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1938, file: !1939, line: 72, baseType: !533, size: 32, offset: 896)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1938, file: !1939, line: 73, baseType: !533, size: 32, offset: 928)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1938, file: !1939, line: 74, baseType: !1961, size: 64, offset: 960)
!1961 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1962, line: 152, baseType: !627)
!1962 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1938, file: !1939, line: 77, baseType: !1964, size: 16, offset: 1024)
!1964 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1938, file: !1939, line: 78, baseType: !1607, size: 8, offset: 1040)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1938, file: !1939, line: 79, baseType: !751, size: 8, offset: 1048)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1938, file: !1939, line: 81, baseType: !1968, size: 64, offset: 1088)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1939, line: 43, baseType: null)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1938, file: !1939, line: 89, baseType: !1971, size: 64, offset: 1152)
!1971 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1962, line: 153, baseType: !627)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1938, file: !1939, line: 91, baseType: !1973, size: 64, offset: 1216)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1939, line: 37, flags: DIFlagFwdDecl)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1938, file: !1939, line: 92, baseType: !1976, size: 64, offset: 1280)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1939, line: 38, flags: DIFlagFwdDecl)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1938, file: !1939, line: 93, baseType: !1957, size: 64, offset: 1344)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1938, file: !1939, line: 94, baseType: !537, size: 64, offset: 1408)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1938, file: !1939, line: 95, baseType: !1106, size: 64, offset: 1472)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1938, file: !1939, line: 96, baseType: !533, size: 32, offset: 1536)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1938, file: !1939, line: 98, baseType: !1983, size: 160, offset: 1568)
!1983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !536, size: 160, elements: !1984)
!1984 = !{!1985}
!1985 = !DISubrange(count: 20)
!1986 = !{!1987}
!1987 = !DILocalVariable(name: "__fp", arg: 1, scope: !1932, file: !1907, line: 56, type: !1935)
!1988 = !DILocation(line: 0, scope: !1932)
!1989 = !DILocation(line: 58, column: 10, scope: !1932)
!1990 = !DILocation(line: 58, column: 3, scope: !1932)
!1991 = distinct !DISubprogram(name: "getc_unlocked", scope: !1907, file: !1907, line: 66, type: !1933, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1992)
!1992 = !{!1993}
!1993 = !DILocalVariable(name: "__fp", arg: 1, scope: !1991, file: !1907, line: 66, type: !1935)
!1994 = !DILocation(line: 0, scope: !1991)
!1995 = !DILocation(line: 68, column: 10, scope: !1991)
!1996 = !DILocation(line: 68, column: 3, scope: !1991)
!1997 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1907, file: !1907, line: 73, type: !1926, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1928)
!1998 = !DILocation(line: 75, column: 10, scope: !1997)
!1999 = !DILocation(line: 75, column: 3, scope: !1997)
!2000 = distinct !DISubprogram(name: "putchar", scope: !1907, file: !1907, line: 82, type: !2001, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2003)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!533, !533}
!2003 = !{!2004}
!2004 = !DILocalVariable(name: "__c", arg: 1, scope: !2000, file: !1907, line: 82, type: !533)
!2005 = !DILocation(line: 0, scope: !2000)
!2006 = !DILocation(line: 84, column: 21, scope: !2000)
!2007 = !DILocation(line: 84, column: 10, scope: !2000)
!2008 = !DILocation(line: 84, column: 3, scope: !2000)
!2009 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1907, file: !1907, line: 91, type: !2010, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2012)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!533, !533, !1935}
!2012 = !{!2013, !2014}
!2013 = !DILocalVariable(name: "__c", arg: 1, scope: !2009, file: !1907, line: 91, type: !533)
!2014 = !DILocalVariable(name: "__stream", arg: 2, scope: !2009, file: !1907, line: 91, type: !1935)
!2015 = !DILocation(line: 0, scope: !2009)
!2016 = !DILocation(line: 93, column: 10, scope: !2009)
!2017 = !DILocation(line: 93, column: 3, scope: !2009)
!2018 = distinct !DISubprogram(name: "putc_unlocked", scope: !1907, file: !1907, line: 101, type: !2010, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2019)
!2019 = !{!2020, !2021}
!2020 = !DILocalVariable(name: "__c", arg: 1, scope: !2018, file: !1907, line: 101, type: !533)
!2021 = !DILocalVariable(name: "__stream", arg: 2, scope: !2018, file: !1907, line: 101, type: !1935)
!2022 = !DILocation(line: 0, scope: !2018)
!2023 = !DILocation(line: 103, column: 10, scope: !2018)
!2024 = !DILocation(line: 103, column: 3, scope: !2018)
!2025 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1907, file: !1907, line: 108, type: !2001, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2026)
!2026 = !{!2027}
!2027 = !DILocalVariable(name: "__c", arg: 1, scope: !2025, file: !1907, line: 108, type: !533)
!2028 = !DILocation(line: 0, scope: !2025)
!2029 = !DILocation(line: 110, column: 10, scope: !2025)
!2030 = !DILocation(line: 110, column: 3, scope: !2025)
!2031 = distinct !DISubprogram(name: "getline", scope: !1907, file: !1907, line: 118, type: !2032, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2036)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!2034, !534, !2035, !1935}
!2034 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1962, line: 193, baseType: !627)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!2036 = !{!2037, !2038, !2039}
!2037 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2031, file: !1907, line: 118, type: !534)
!2038 = !DILocalVariable(name: "__n", arg: 2, scope: !2031, file: !1907, line: 118, type: !2035)
!2039 = !DILocalVariable(name: "__stream", arg: 3, scope: !2031, file: !1907, line: 118, type: !1935)
!2040 = !DILocation(line: 0, scope: !2031)
!2041 = !DILocation(line: 120, column: 10, scope: !2031)
!2042 = !DILocation(line: 120, column: 3, scope: !2031)
!2043 = distinct !DISubprogram(name: "feof_unlocked", scope: !1907, file: !1907, line: 128, type: !1933, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2044)
!2044 = !{!2045}
!2045 = !DILocalVariable(name: "__stream", arg: 1, scope: !2043, file: !1907, line: 128, type: !1935)
!2046 = !DILocation(line: 0, scope: !2043)
!2047 = !DILocation(line: 130, column: 10, scope: !2043)
!2048 = !DILocation(line: 130, column: 3, scope: !2043)
!2049 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1907, file: !1907, line: 135, type: !1933, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2050)
!2050 = !{!2051}
!2051 = !DILocalVariable(name: "__stream", arg: 1, scope: !2049, file: !1907, line: 135, type: !1935)
!2052 = !DILocation(line: 0, scope: !2049)
!2053 = !DILocation(line: 137, column: 10, scope: !2049)
!2054 = !DILocation(line: 137, column: 3, scope: !2049)
!2055 = distinct !DISubprogram(name: "tolower", scope: !2056, file: !2056, line: 207, type: !2001, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2057)
!2056 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2057 = !{!2058}
!2058 = !DILocalVariable(name: "__c", arg: 1, scope: !2055, file: !2056, line: 207, type: !533)
!2059 = !DILocation(line: 0, scope: !2055)
!2060 = !DILocation(line: 209, column: 22, scope: !2055)
!2061 = !DILocation(line: 209, column: 39, scope: !2055)
!2062 = !DILocation(line: 209, column: 38, scope: !2055)
!2063 = !DILocation(line: 209, column: 37, scope: !2055)
!2064 = !DILocation(line: 209, column: 10, scope: !2055)
!2065 = !DILocation(line: 209, column: 3, scope: !2055)
!2066 = distinct !DISubprogram(name: "toupper", scope: !2056, file: !2056, line: 213, type: !2001, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2067)
!2067 = !{!2068}
!2068 = !DILocalVariable(name: "__c", arg: 1, scope: !2066, file: !2056, line: 213, type: !533)
!2069 = !DILocation(line: 0, scope: !2066)
!2070 = !DILocation(line: 215, column: 22, scope: !2066)
!2071 = !DILocation(line: 215, column: 39, scope: !2066)
!2072 = !DILocation(line: 215, column: 38, scope: !2066)
!2073 = !DILocation(line: 215, column: 37, scope: !2066)
!2074 = !DILocation(line: 215, column: 10, scope: !2066)
!2075 = !DILocation(line: 215, column: 3, scope: !2066)
!2076 = distinct !DISubprogram(name: "atoi", scope: !2077, file: !2077, line: 361, type: !2078, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2080)
!2077 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!533, !538}
!2080 = !{!2081}
!2081 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2076, file: !2077, line: 361, type: !538)
!2082 = !DILocation(line: 0, scope: !2076)
!2083 = !DILocation(line: 363, column: 16, scope: !2076)
!2084 = !DILocation(line: 363, column: 10, scope: !2076)
!2085 = !DILocation(line: 363, column: 3, scope: !2076)
!2086 = distinct !DISubprogram(name: "atol", scope: !2077, file: !2077, line: 366, type: !2087, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2089)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!627, !538}
!2089 = !{!2090}
!2090 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2086, file: !2077, line: 366, type: !538)
!2091 = !DILocation(line: 0, scope: !2086)
!2092 = !DILocation(line: 368, column: 10, scope: !2086)
!2093 = !DILocation(line: 368, column: 3, scope: !2086)
!2094 = distinct !DISubprogram(name: "atoll", scope: !2077, file: !2077, line: 373, type: !2095, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2098)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!2097, !538}
!2097 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2098 = !{!2099}
!2099 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2094, file: !2077, line: 373, type: !538)
!2100 = !DILocation(line: 0, scope: !2094)
!2101 = !DILocation(line: 375, column: 10, scope: !2094)
!2102 = !DILocation(line: 375, column: 3, scope: !2094)
!2103 = distinct !DISubprogram(name: "bsearch", scope: !2104, file: !2104, line: 20, type: !2105, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2108)
!2104 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!537, !1250, !1250, !1106, !1106, !2107}
!2107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2077, line: 808, baseType: !1254)
!2108 = !{!2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118}
!2109 = !DILocalVariable(name: "__key", arg: 1, scope: !2103, file: !2104, line: 20, type: !1250)
!2110 = !DILocalVariable(name: "__base", arg: 2, scope: !2103, file: !2104, line: 20, type: !1250)
!2111 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2103, file: !2104, line: 20, type: !1106)
!2112 = !DILocalVariable(name: "__size", arg: 4, scope: !2103, file: !2104, line: 20, type: !1106)
!2113 = !DILocalVariable(name: "__compar", arg: 5, scope: !2103, file: !2104, line: 21, type: !2107)
!2114 = !DILocalVariable(name: "__l", scope: !2103, file: !2104, line: 23, type: !1106)
!2115 = !DILocalVariable(name: "__u", scope: !2103, file: !2104, line: 23, type: !1106)
!2116 = !DILocalVariable(name: "__idx", scope: !2103, file: !2104, line: 23, type: !1106)
!2117 = !DILocalVariable(name: "__p", scope: !2103, file: !2104, line: 24, type: !1250)
!2118 = !DILocalVariable(name: "__comparison", scope: !2103, file: !2104, line: 25, type: !533)
!2119 = !DILocation(line: 0, scope: !2103)
!2120 = !DILocation(line: 29, column: 3, scope: !2103)
!2121 = !DILocation(line: 27, column: 7, scope: !2103)
!2122 = !DILocation(line: 29, column: 14, scope: !2103)
!2123 = !DILocation(line: 31, column: 20, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2103, file: !2104, line: 30, column: 5)
!2125 = !DILocation(line: 31, column: 27, scope: !2124)
!2126 = !DILocation(line: 32, column: 56, scope: !2124)
!2127 = !DILocation(line: 32, column: 47, scope: !2124)
!2128 = !DILocation(line: 33, column: 22, scope: !2124)
!2129 = !DILocation(line: 34, column: 24, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2124, file: !2104, line: 34, column: 11)
!2131 = !DILocation(line: 34, column: 11, scope: !2124)
!2132 = !DILocation(line: 36, column: 29, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2130, file: !2104, line: 36, column: 16)
!2134 = !DILocation(line: 36, column: 16, scope: !2130)
!2135 = !DILocation(line: 37, column: 14, scope: !2133)
!2136 = distinct !{!2136, !2120, !2137}
!2137 = !DILocation(line: 40, column: 5, scope: !2103)
!2138 = !DILocation(line: 43, column: 1, scope: !2103)
!2139 = distinct !DISubprogram(name: "atof", scope: !2140, file: !2140, line: 25, type: !2141, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2144)
!2140 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!2143, !538}
!2143 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2144 = !{!2145}
!2145 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2139, file: !2140, line: 25, type: !538)
!2146 = !DILocation(line: 0, scope: !2139)
!2147 = !DILocation(line: 27, column: 10, scope: !2139)
!2148 = !DILocation(line: 27, column: 3, scope: !2139)
!2149 = distinct !DISubprogram(name: "strtoimax", scope: !2150, file: !2150, line: 324, type: !2151, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2157)
!2150 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!2153, !1910, !2156, !533}
!2153 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2154, line: 101, baseType: !2155)
!2154 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1962, line: 72, baseType: !627)
!2156 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !534)
!2157 = !{!2158, !2159, !2160}
!2158 = !DILocalVariable(name: "nptr", arg: 1, scope: !2149, file: !2150, line: 324, type: !1910)
!2159 = !DILocalVariable(name: "endptr", arg: 2, scope: !2149, file: !2150, line: 324, type: !2156)
!2160 = !DILocalVariable(name: "base", arg: 3, scope: !2149, file: !2150, line: 324, type: !533)
!2161 = !DILocation(line: 0, scope: !2149)
!2162 = !DILocation(line: 327, column: 10, scope: !2149)
!2163 = !DILocation(line: 327, column: 3, scope: !2149)
!2164 = distinct !DISubprogram(name: "strtoumax", scope: !2150, file: !2150, line: 336, type: !2165, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2169)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!2167, !1910, !2156, !533}
!2167 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2154, line: 102, baseType: !2168)
!2168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1962, line: 73, baseType: !610)
!2169 = !{!2170, !2171, !2172}
!2170 = !DILocalVariable(name: "nptr", arg: 1, scope: !2164, file: !2150, line: 336, type: !1910)
!2171 = !DILocalVariable(name: "endptr", arg: 2, scope: !2164, file: !2150, line: 336, type: !2156)
!2172 = !DILocalVariable(name: "base", arg: 3, scope: !2164, file: !2150, line: 336, type: !533)
!2173 = !DILocation(line: 0, scope: !2164)
!2174 = !DILocation(line: 339, column: 10, scope: !2164)
!2175 = !DILocation(line: 339, column: 3, scope: !2164)
!2176 = distinct !DISubprogram(name: "wcstoimax", scope: !2150, file: !2150, line: 348, type: !2177, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2186)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!2153, !2179, !2183, !533}
!2179 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2180)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2182)
!2182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2150, line: 34, baseType: !533)
!2183 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2184)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2186 = !{!2187, !2188, !2189}
!2187 = !DILocalVariable(name: "nptr", arg: 1, scope: !2176, file: !2150, line: 348, type: !2179)
!2188 = !DILocalVariable(name: "endptr", arg: 2, scope: !2176, file: !2150, line: 348, type: !2183)
!2189 = !DILocalVariable(name: "base", arg: 3, scope: !2176, file: !2150, line: 348, type: !533)
!2190 = !DILocation(line: 0, scope: !2176)
!2191 = !DILocation(line: 351, column: 10, scope: !2176)
!2192 = !DILocation(line: 351, column: 3, scope: !2176)
!2193 = distinct !DISubprogram(name: "wcstoumax", scope: !2150, file: !2150, line: 362, type: !2194, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2196)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{!2167, !2179, !2183, !533}
!2196 = !{!2197, !2198, !2199}
!2197 = !DILocalVariable(name: "nptr", arg: 1, scope: !2193, file: !2150, line: 362, type: !2179)
!2198 = !DILocalVariable(name: "endptr", arg: 2, scope: !2193, file: !2150, line: 362, type: !2183)
!2199 = !DILocalVariable(name: "base", arg: 3, scope: !2193, file: !2150, line: 362, type: !533)
!2200 = !DILocation(line: 0, scope: !2193)
!2201 = !DILocation(line: 365, column: 10, scope: !2193)
!2202 = !DILocation(line: 365, column: 3, scope: !2193)
!2203 = distinct !DISubprogram(name: "stat", scope: !2204, file: !2204, line: 453, type: !2205, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2242)
!2204 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!533, !538, !2207}
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2209, line: 46, size: 1152, elements: !2210)
!2209 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2210 = !{!2211, !2213, !2215, !2217, !2219, !2221, !2223, !2224, !2225, !2226, !2228, !2230, !2238, !2239, !2240}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2208, file: !2209, line: 48, baseType: !2212, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1962, line: 145, baseType: !610)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2208, file: !2209, line: 53, baseType: !2214, size: 64, offset: 64)
!2214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1962, line: 148, baseType: !610)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2208, file: !2209, line: 61, baseType: !2216, size: 64, offset: 128)
!2216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1962, line: 151, baseType: !610)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2208, file: !2209, line: 62, baseType: !2218, size: 32, offset: 192)
!2218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1962, line: 150, baseType: !7)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2208, file: !2209, line: 64, baseType: !2220, size: 32, offset: 224)
!2220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1962, line: 146, baseType: !7)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2208, file: !2209, line: 65, baseType: !2222, size: 32, offset: 256)
!2222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1962, line: 147, baseType: !7)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2208, file: !2209, line: 67, baseType: !533, size: 32, offset: 288)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2208, file: !2209, line: 69, baseType: !2212, size: 64, offset: 320)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2208, file: !2209, line: 74, baseType: !1961, size: 64, offset: 384)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2208, file: !2209, line: 78, baseType: !2227, size: 64, offset: 448)
!2227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1962, line: 174, baseType: !627)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2208, file: !2209, line: 80, baseType: !2229, size: 64, offset: 512)
!2229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1962, line: 179, baseType: !627)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2208, file: !2209, line: 91, baseType: !2231, size: 128, offset: 576)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2232, line: 10, size: 128, elements: !2233)
!2232 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2233 = !{!2234, !2236}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2231, file: !2232, line: 12, baseType: !2235, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1962, line: 160, baseType: !627)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2231, file: !2232, line: 16, baseType: !2237, size: 64, offset: 64)
!2237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1962, line: 196, baseType: !627)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2208, file: !2209, line: 92, baseType: !2231, size: 128, offset: 704)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2208, file: !2209, line: 93, baseType: !2231, size: 128, offset: 832)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2208, file: !2209, line: 106, baseType: !2241, size: 192, offset: 960)
!2241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2237, size: 192, elements: !727)
!2242 = !{!2243, !2244}
!2243 = !DILocalVariable(name: "__path", arg: 1, scope: !2203, file: !2204, line: 453, type: !538)
!2244 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2203, file: !2204, line: 453, type: !2207)
!2245 = !DILocation(line: 0, scope: !2203)
!2246 = !DILocation(line: 455, column: 10, scope: !2203)
!2247 = !DILocation(line: 455, column: 3, scope: !2203)
!2248 = distinct !DISubprogram(name: "lstat", scope: !2204, file: !2204, line: 460, type: !2205, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2249)
!2249 = !{!2250, !2251}
!2250 = !DILocalVariable(name: "__path", arg: 1, scope: !2248, file: !2204, line: 460, type: !538)
!2251 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2248, file: !2204, line: 460, type: !2207)
!2252 = !DILocation(line: 0, scope: !2248)
!2253 = !DILocation(line: 462, column: 10, scope: !2248)
!2254 = !DILocation(line: 462, column: 3, scope: !2248)
!2255 = distinct !DISubprogram(name: "fstat", scope: !2204, file: !2204, line: 467, type: !2256, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2258)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!533, !533, !2207}
!2258 = !{!2259, !2260}
!2259 = !DILocalVariable(name: "__fd", arg: 1, scope: !2255, file: !2204, line: 467, type: !533)
!2260 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2255, file: !2204, line: 467, type: !2207)
!2261 = !DILocation(line: 0, scope: !2255)
!2262 = !DILocation(line: 469, column: 10, scope: !2255)
!2263 = !DILocation(line: 469, column: 3, scope: !2255)
!2264 = distinct !DISubprogram(name: "fstatat", scope: !2204, file: !2204, line: 474, type: !2265, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2267)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!533, !533, !538, !2207, !533}
!2267 = !{!2268, !2269, !2270, !2271}
!2268 = !DILocalVariable(name: "__fd", arg: 1, scope: !2264, file: !2204, line: 474, type: !533)
!2269 = !DILocalVariable(name: "__filename", arg: 2, scope: !2264, file: !2204, line: 474, type: !538)
!2270 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2264, file: !2204, line: 474, type: !2207)
!2271 = !DILocalVariable(name: "__flag", arg: 4, scope: !2264, file: !2204, line: 474, type: !533)
!2272 = !DILocation(line: 0, scope: !2264)
!2273 = !DILocation(line: 477, column: 10, scope: !2264)
!2274 = !DILocation(line: 477, column: 3, scope: !2264)
!2275 = distinct !DISubprogram(name: "mknod", scope: !2204, file: !2204, line: 483, type: !2276, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2278)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!533, !538, !2218, !2212}
!2278 = !{!2279, !2280, !2281}
!2279 = !DILocalVariable(name: "__path", arg: 1, scope: !2275, file: !2204, line: 483, type: !538)
!2280 = !DILocalVariable(name: "__mode", arg: 2, scope: !2275, file: !2204, line: 483, type: !2218)
!2281 = !DILocalVariable(name: "__dev", arg: 3, scope: !2275, file: !2204, line: 483, type: !2212)
!2282 = !DILocation(line: 0, scope: !2275)
!2283 = !DILocation(line: 485, column: 10, scope: !2275)
!2284 = !DILocation(line: 485, column: 3, scope: !2275)
!2285 = distinct !DISubprogram(name: "mknodat", scope: !2204, file: !2204, line: 491, type: !2286, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2288)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{!533, !533, !538, !2218, !2212}
!2288 = !{!2289, !2290, !2291, !2292}
!2289 = !DILocalVariable(name: "__fd", arg: 1, scope: !2285, file: !2204, line: 491, type: !533)
!2290 = !DILocalVariable(name: "__path", arg: 2, scope: !2285, file: !2204, line: 491, type: !538)
!2291 = !DILocalVariable(name: "__mode", arg: 3, scope: !2285, file: !2204, line: 491, type: !2218)
!2292 = !DILocalVariable(name: "__dev", arg: 4, scope: !2285, file: !2204, line: 491, type: !2212)
!2293 = !DILocation(line: 0, scope: !2285)
!2294 = !DILocation(line: 494, column: 10, scope: !2285)
!2295 = !DILocation(line: 494, column: 3, scope: !2285)
!2296 = distinct !DISubprogram(name: "stat64", scope: !2204, file: !2204, line: 502, type: !2297, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2319)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{!533, !538, !2299}
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2209, line: 119, size: 1152, elements: !2301)
!2301 = !{!2302, !2303, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2315, !2316, !2317, !2318}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2300, file: !2209, line: 121, baseType: !2212, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2300, file: !2209, line: 123, baseType: !2304, size: 64, offset: 64)
!2304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1962, line: 149, baseType: !610)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2300, file: !2209, line: 124, baseType: !2216, size: 64, offset: 128)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2300, file: !2209, line: 125, baseType: !2218, size: 32, offset: 192)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2300, file: !2209, line: 132, baseType: !2220, size: 32, offset: 224)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2300, file: !2209, line: 133, baseType: !2222, size: 32, offset: 256)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2300, file: !2209, line: 135, baseType: !533, size: 32, offset: 288)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2300, file: !2209, line: 136, baseType: !2212, size: 64, offset: 320)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2300, file: !2209, line: 137, baseType: !1961, size: 64, offset: 384)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2300, file: !2209, line: 143, baseType: !2227, size: 64, offset: 448)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2300, file: !2209, line: 144, baseType: !2314, size: 64, offset: 512)
!2314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1962, line: 180, baseType: !627)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2300, file: !2209, line: 152, baseType: !2231, size: 128, offset: 576)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2300, file: !2209, line: 153, baseType: !2231, size: 128, offset: 704)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2300, file: !2209, line: 154, baseType: !2231, size: 128, offset: 832)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2300, file: !2209, line: 164, baseType: !2241, size: 192, offset: 960)
!2319 = !{!2320, !2321}
!2320 = !DILocalVariable(name: "__path", arg: 1, scope: !2296, file: !2204, line: 502, type: !538)
!2321 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2296, file: !2204, line: 502, type: !2299)
!2322 = !DILocation(line: 0, scope: !2296)
!2323 = !DILocation(line: 504, column: 10, scope: !2296)
!2324 = !DILocation(line: 504, column: 3, scope: !2296)
!2325 = distinct !DISubprogram(name: "lstat64", scope: !2204, file: !2204, line: 509, type: !2297, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2326)
!2326 = !{!2327, !2328}
!2327 = !DILocalVariable(name: "__path", arg: 1, scope: !2325, file: !2204, line: 509, type: !538)
!2328 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2325, file: !2204, line: 509, type: !2299)
!2329 = !DILocation(line: 0, scope: !2325)
!2330 = !DILocation(line: 511, column: 10, scope: !2325)
!2331 = !DILocation(line: 511, column: 3, scope: !2325)
!2332 = distinct !DISubprogram(name: "fstat64", scope: !2204, file: !2204, line: 516, type: !2333, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2335)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!533, !533, !2299}
!2335 = !{!2336, !2337}
!2336 = !DILocalVariable(name: "__fd", arg: 1, scope: !2332, file: !2204, line: 516, type: !533)
!2337 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2332, file: !2204, line: 516, type: !2299)
!2338 = !DILocation(line: 0, scope: !2332)
!2339 = !DILocation(line: 518, column: 10, scope: !2332)
!2340 = !DILocation(line: 518, column: 3, scope: !2332)
!2341 = distinct !DISubprogram(name: "fstatat64", scope: !2204, file: !2204, line: 523, type: !2342, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2344)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!533, !533, !538, !2299, !533}
!2344 = !{!2345, !2346, !2347, !2348}
!2345 = !DILocalVariable(name: "__fd", arg: 1, scope: !2341, file: !2204, line: 523, type: !533)
!2346 = !DILocalVariable(name: "__filename", arg: 2, scope: !2341, file: !2204, line: 523, type: !538)
!2347 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2341, file: !2204, line: 523, type: !2299)
!2348 = !DILocalVariable(name: "__flag", arg: 4, scope: !2341, file: !2204, line: 523, type: !533)
!2349 = !DILocation(line: 0, scope: !2341)
!2350 = !DILocation(line: 526, column: 10, scope: !2341)
!2351 = !DILocation(line: 526, column: 3, scope: !2341)
!2352 = distinct !DISubprogram(name: "addr_for_mem_ref", scope: !3, file: !3, line: 187, type: !2353, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2364)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!540, !2355, !2363, !532}
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_address", file: !862, line: 862, size: 320, elements: !2357)
!2357 = !{!2358, !2359, !2360, !2361, !2362}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "symbol", scope: !2356, file: !862, line: 864, baseType: !656, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2356, file: !862, line: 864, baseType: !656, size: 64, offset: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2356, file: !862, line: 864, baseType: !656, size: 64, offset: 128)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !2356, file: !862, line: 864, baseType: !656, size: 64, offset: 192)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2356, file: !862, line: 864, baseType: !656, size: 64, offset: 256)
!2363 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_space_t", file: !541, line: 73, baseType: !532)
!2364 = !{!2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2377}
!2365 = !DILocalVariable(name: "addr", arg: 1, scope: !2352, file: !3, line: 187, type: !2355)
!2366 = !DILocalVariable(name: "as", arg: 2, scope: !2352, file: !3, line: 187, type: !2363)
!2367 = !DILocalVariable(name: "really_expand", arg: 3, scope: !2352, file: !3, line: 188, type: !532)
!2368 = !DILocalVariable(name: "address_mode", scope: !2352, file: !3, line: 190, type: !5)
!2369 = !DILocalVariable(name: "address", scope: !2352, file: !3, line: 191, type: !540)
!2370 = !DILocalVariable(name: "sym", scope: !2352, file: !3, line: 191, type: !540)
!2371 = !DILocalVariable(name: "bse", scope: !2352, file: !3, line: 191, type: !540)
!2372 = !DILocalVariable(name: "idx", scope: !2352, file: !3, line: 191, type: !540)
!2373 = !DILocalVariable(name: "st", scope: !2352, file: !3, line: 191, type: !540)
!2374 = !DILocalVariable(name: "off", scope: !2352, file: !3, line: 191, type: !540)
!2375 = !DILocalVariable(name: "templ", scope: !2352, file: !3, line: 192, type: !2376)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!2377 = !DILocalVariable(name: "templ_index", scope: !2378, file: !3, line: 208, type: !7)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !3, line: 207, column: 5)
!2379 = distinct !DILexicalBlock(scope: !2352, file: !3, line: 206, column: 7)
!2380 = !DILocation(line: 0, scope: !2352)
!2381 = !DILocation(line: 190, column: 55, scope: !2352)
!2382 = !DILocation(line: 190, column: 36, scope: !2352)
!2383 = !DILocation(line: 191, column: 3, scope: !2352)
!2384 = !DILocation(line: 194, column: 13, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2352, file: !3, line: 194, column: 7)
!2386 = !DILocation(line: 194, column: 7, scope: !2385)
!2387 = !DILocation(line: 194, column: 18, scope: !2385)
!2388 = !DILocation(line: 194, column: 22, scope: !2385)
!2389 = !DILocation(line: 194, column: 7, scope: !2352)
!2390 = !DILocation(line: 195, column: 30, scope: !2385)
!2391 = !DILocation(line: 196, column: 9, scope: !2385)
!2392 = !DILocation(line: 195, column: 10, scope: !2385)
!2393 = !DILocation(line: 195, column: 5, scope: !2385)
!2394 = !DILocation(line: 0, scope: !2385)
!2395 = !DILocation(line: 200, column: 13, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2352, file: !3, line: 200, column: 7)
!2397 = !DILocation(line: 200, column: 7, scope: !2396)
!2398 = !DILocation(line: 200, column: 20, scope: !2396)
!2399 = !DILocation(line: 200, column: 24, scope: !2396)
!2400 = !DILocation(line: 200, column: 7, scope: !2352)
!2401 = !DILocation(line: 201, column: 31, scope: !2396)
!2402 = !DILocation(line: 202, column: 10, scope: !2396)
!2403 = !DILocation(line: 201, column: 11, scope: !2396)
!2404 = !DILocation(line: 201, column: 5, scope: !2396)
!2405 = !DILocation(line: 0, scope: !2396)
!2406 = !DILocation(line: 206, column: 8, scope: !2379)
!2407 = !DILocation(line: 206, column: 7, scope: !2352)
!2408 = !DILocation(line: 209, column: 4, scope: !2378)
!2409 = !DILocation(line: 0, scope: !2378)
!2410 = !DILocation(line: 212, column: 7, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 211, column: 11)
!2412 = !DILocation(line: 212, column: 4, scope: !2411)
!2413 = !DILocation(line: 211, column: 11, scope: !2378)
!2414 = !DILocation(line: 213, column: 2, scope: !2411)
!2415 = !DILocation(line: 217, column: 15, scope: !2378)
!2416 = !DILocation(line: 218, column: 19, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 218, column: 11)
!2418 = !DILocation(line: 218, column: 12, scope: !2417)
!2419 = !DILocation(line: 218, column: 11, scope: !2378)
!2420 = !DILocation(line: 220, column: 17, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2417, file: !3, line: 219, column: 2)
!2422 = !DILocation(line: 220, column: 11, scope: !2421)
!2423 = !DILocation(line: 221, column: 4, scope: !2421)
!2424 = !DILocation(line: 223, column: 17, scope: !2421)
!2425 = !DILocation(line: 223, column: 11, scope: !2421)
!2426 = !DILocation(line: 224, column: 4, scope: !2421)
!2427 = !DILocation(line: 226, column: 17, scope: !2421)
!2428 = !DILocation(line: 226, column: 11, scope: !2421)
!2429 = !DILocation(line: 227, column: 4, scope: !2421)
!2430 = !DILocation(line: 231, column: 4, scope: !2421)
!2431 = !DILocation(line: 232, column: 4, scope: !2421)
!2432 = !DILocation(line: 234, column: 12, scope: !2421)
!2433 = !DILocation(line: 235, column: 12, scope: !2421)
!2434 = !DILocation(line: 230, column: 4, scope: !2421)
!2435 = !DILocation(line: 236, column: 2, scope: !2421)
!2436 = !DILocation(line: 238, column: 11, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 238, column: 11)
!2438 = !DILocation(line: 238, column: 11, scope: !2378)
!2439 = !DILocation(line: 239, column: 10, scope: !2437)
!2440 = !DILocation(line: 239, column: 17, scope: !2437)
!2441 = !DILocation(line: 239, column: 2, scope: !2437)
!2442 = !DILocation(line: 240, column: 11, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 240, column: 11)
!2444 = !DILocation(line: 240, column: 11, scope: !2378)
!2445 = !DILocation(line: 241, column: 10, scope: !2443)
!2446 = !DILocation(line: 241, column: 16, scope: !2443)
!2447 = !DILocation(line: 241, column: 2, scope: !2443)
!2448 = !DILocation(line: 247, column: 16, scope: !2352)
!2449 = !DILocation(line: 247, column: 10, scope: !2352)
!2450 = !DILocation(line: 248, column: 44, scope: !2352)
!2451 = !DILocation(line: 248, column: 18, scope: !2352)
!2452 = !DILocation(line: 248, column: 5, scope: !2352)
!2453 = !DILocation(line: 251, column: 16, scope: !2352)
!2454 = !DILocation(line: 251, column: 10, scope: !2352)
!2455 = !DILocation(line: 252, column: 5, scope: !2352)
!2456 = !DILocation(line: 254, column: 16, scope: !2352)
!2457 = !DILocation(line: 254, column: 10, scope: !2352)
!2458 = !DILocation(line: 255, column: 5, scope: !2352)
!2459 = !DILocation(line: 258, column: 3, scope: !2352)
!2460 = !DILocation(line: 259, column: 3, scope: !2352)
!2461 = !DILocation(line: 260, column: 1, scope: !2352)
!2462 = distinct !DISubprogram(name: "VEC_mem_addr_template_base_length", scope: !3, file: !3, line: 83, type: !2463, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2467)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!7, !2465}
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1871)
!2467 = !{!2468}
!2468 = !DILocalVariable(name: "vec_", arg: 1, scope: !2462, file: !3, line: 83, type: !2465)
!2469 = !DILocation(line: 0, scope: !2462)
!2470 = !DILocation(line: 83, column: 1, scope: !2462)
!2471 = distinct !DISubprogram(name: "VEC_mem_addr_template_gc_safe_grow_cleared", scope: !3, file: !3, line: 84, type: !2472, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2475)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{null, !2474, !533}
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!2475 = !{!2476, !2477, !2478}
!2476 = !DILocalVariable(name: "vec_", arg: 1, scope: !2471, file: !3, line: 84, type: !2474)
!2477 = !DILocalVariable(name: "size_", arg: 2, scope: !2471, file: !3, line: 84, type: !533)
!2478 = !DILocalVariable(name: "oldsize", scope: !2471, file: !3, line: 84, type: !533)
!2479 = !DILocation(line: 0, scope: !2471)
!2480 = !DILocation(line: 84, column: 1, scope: !2471)
!2481 = distinct !DISubprogram(name: "VEC_mem_addr_template_base_index", scope: !3, file: !3, line: 83, type: !2482, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2486)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{!2484, !2485, !7}
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!2486 = !{!2487, !2488}
!2487 = !DILocalVariable(name: "vec_", arg: 1, scope: !2481, file: !3, line: 83, type: !2485)
!2488 = !DILocalVariable(name: "ix_", arg: 2, scope: !2481, file: !3, line: 83, type: !7)
!2489 = !DILocation(line: 0, scope: !2481)
!2490 = !DILocation(line: 83, column: 1, scope: !2481)
!2491 = distinct !DISubprogram(name: "gen_addr_rtx", scope: !3, file: !3, line: 105, type: !2492, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2495)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{null, !5, !540, !540, !540, !540, !540, !1883, !2494, !2494}
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!2495 = !{!2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505}
!2496 = !DILocalVariable(name: "address_mode", arg: 1, scope: !2491, file: !3, line: 105, type: !5)
!2497 = !DILocalVariable(name: "symbol", arg: 2, scope: !2491, file: !3, line: 106, type: !540)
!2498 = !DILocalVariable(name: "base", arg: 3, scope: !2491, file: !3, line: 106, type: !540)
!2499 = !DILocalVariable(name: "index", arg: 4, scope: !2491, file: !3, line: 106, type: !540)
!2500 = !DILocalVariable(name: "step", arg: 5, scope: !2491, file: !3, line: 106, type: !540)
!2501 = !DILocalVariable(name: "offset", arg: 6, scope: !2491, file: !3, line: 106, type: !540)
!2502 = !DILocalVariable(name: "addr", arg: 7, scope: !2491, file: !3, line: 107, type: !1883)
!2503 = !DILocalVariable(name: "step_p", arg: 8, scope: !2491, file: !3, line: 107, type: !2494)
!2504 = !DILocalVariable(name: "offset_p", arg: 9, scope: !2491, file: !3, line: 107, type: !2494)
!2505 = !DILocalVariable(name: "act_elem", scope: !2491, file: !3, line: 109, type: !540)
!2506 = !DILocation(line: 0, scope: !2491)
!2507 = !DILocation(line: 111, column: 9, scope: !2491)
!2508 = !DILocation(line: 112, column: 7, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2491, file: !3, line: 112, column: 7)
!2510 = !DILocation(line: 112, column: 7, scope: !2491)
!2511 = !DILocation(line: 113, column: 13, scope: !2509)
!2512 = !DILocation(line: 113, column: 5, scope: !2509)
!2513 = !DILocation(line: 114, column: 7, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2491, file: !3, line: 114, column: 7)
!2515 = !DILocation(line: 114, column: 7, scope: !2491)
!2516 = !DILocation(line: 115, column: 15, scope: !2514)
!2517 = !DILocation(line: 115, column: 5, scope: !2514)
!2518 = !DILocation(line: 117, column: 7, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2491, file: !3, line: 117, column: 7)
!2520 = !DILocation(line: 117, column: 7, scope: !2491)
!2521 = !DILocation(line: 120, column: 11, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2523, file: !3, line: 120, column: 11)
!2523 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 118, column: 5)
!2524 = !DILocation(line: 120, column: 11, scope: !2523)
!2525 = !DILocation(line: 122, column: 15, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2522, file: !3, line: 121, column: 2)
!2527 = !DILocation(line: 124, column: 8, scope: !2526)
!2528 = !DILocation(line: 125, column: 17, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2526, file: !3, line: 124, column: 8)
!2530 = !DILocation(line: 125, column: 14, scope: !2529)
!2531 = !DILocation(line: 125, column: 6, scope: !2529)
!2532 = !DILocation(line: 0, scope: !2523)
!2533 = !DILocation(line: 128, column: 13, scope: !2523)
!2534 = !DILocation(line: 129, column: 5, scope: !2523)
!2535 = !DILocation(line: 131, column: 7, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2491, file: !3, line: 131, column: 7)
!2537 = !DILocation(line: 131, column: 7, scope: !2491)
!2538 = !DILocation(line: 133, column: 11, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2540, file: !3, line: 133, column: 11)
!2540 = distinct !DILexicalBlock(scope: !2536, file: !3, line: 132, column: 5)
!2541 = !DILocation(line: 133, column: 11, scope: !2540)
!2542 = !DILocation(line: 134, column: 10, scope: !2539)
!2543 = !DILocation(line: 134, column: 8, scope: !2539)
!2544 = !DILocation(line: 134, column: 2, scope: !2539)
!2545 = !DILocation(line: 136, column: 8, scope: !2539)
!2546 = !DILocation(line: 139, column: 7, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2491, file: !3, line: 139, column: 7)
!2548 = !DILocation(line: 0, scope: !2547)
!2549 = !DILocation(line: 139, column: 7, scope: !2491)
!2550 = !DILocation(line: 142, column: 11, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 140, column: 5)
!2552 = !DILocation(line: 144, column: 15, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2554, file: !3, line: 143, column: 2)
!2554 = distinct !DILexicalBlock(scope: !2551, file: !3, line: 142, column: 11)
!2555 = !DILocation(line: 146, column: 8, scope: !2553)
!2556 = !DILocation(line: 147, column: 19, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2553, file: !3, line: 146, column: 8)
!2558 = !DILocation(line: 147, column: 16, scope: !2557)
!2559 = !DILocation(line: 147, column: 6, scope: !2557)
!2560 = !DILocation(line: 149, column: 8, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2553, file: !3, line: 149, column: 8)
!2562 = !DILocation(line: 149, column: 26, scope: !2561)
!2563 = !DILocation(line: 150, column: 8, scope: !2561)
!2564 = !DILocation(line: 150, column: 29, scope: !2561)
!2565 = !DILocation(line: 151, column: 8, scope: !2561)
!2566 = !DILocation(line: 151, column: 29, scope: !2561)
!2567 = !DILocation(line: 149, column: 8, scope: !2553)
!2568 = !DILocation(line: 152, column: 17, scope: !2561)
!2569 = !DILocation(line: 152, column: 6, scope: !2561)
!2570 = !DILocation(line: 0, scope: !2551)
!2571 = !DILocation(line: 155, column: 11, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2551, file: !3, line: 155, column: 11)
!2573 = !DILocation(line: 155, column: 11, scope: !2551)
!2574 = !DILocation(line: 156, column: 10, scope: !2572)
!2575 = !DILocation(line: 156, column: 8, scope: !2572)
!2576 = !DILocation(line: 156, column: 2, scope: !2572)
!2577 = !DILocation(line: 158, column: 8, scope: !2572)
!2578 = !DILocation(line: 160, column: 12, scope: !2547)
!2579 = !DILocation(line: 162, column: 11, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 162, column: 11)
!2581 = distinct !DILexicalBlock(scope: !2582, file: !3, line: 161, column: 5)
!2582 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 160, column: 12)
!2583 = !DILocation(line: 162, column: 11, scope: !2581)
!2584 = !DILocation(line: 164, column: 12, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2580, file: !3, line: 163, column: 2)
!2586 = !DILocation(line: 164, column: 10, scope: !2585)
!2587 = !DILocation(line: 165, column: 8, scope: !2585)
!2588 = !DILocation(line: 166, column: 19, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 165, column: 8)
!2590 = !DILocation(line: 166, column: 16, scope: !2589)
!2591 = !DILocation(line: 166, column: 6, scope: !2589)
!2592 = !DILocation(line: 170, column: 10, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2580, file: !3, line: 169, column: 2)
!2594 = !DILocation(line: 171, column: 8, scope: !2593)
!2595 = !DILocation(line: 172, column: 16, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2593, file: !3, line: 171, column: 8)
!2597 = !DILocation(line: 172, column: 6, scope: !2596)
!2598 = !DILocation(line: 176, column: 8, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2491, file: !3, line: 176, column: 7)
!2600 = !DILocation(line: 176, column: 7, scope: !2491)
!2601 = !DILocation(line: 177, column: 13, scope: !2599)
!2602 = !DILocation(line: 177, column: 11, scope: !2599)
!2603 = !DILocation(line: 177, column: 5, scope: !2599)
!2604 = !DILocation(line: 178, column: 1, scope: !2491)
!2605 = distinct !DISubprogram(name: "expand_expr", scope: !521, file: !521, line: 555, type: !2606, scopeLine: 557, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2608)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!540, !656, !540, !5, !520}
!2608 = !{!2609, !2610, !2611, !2612}
!2609 = !DILocalVariable(name: "exp", arg: 1, scope: !2605, file: !521, line: 555, type: !656)
!2610 = !DILocalVariable(name: "target", arg: 2, scope: !2605, file: !521, line: 555, type: !540)
!2611 = !DILocalVariable(name: "mode", arg: 3, scope: !2605, file: !521, line: 555, type: !5)
!2612 = !DILocalVariable(name: "modifier", arg: 4, scope: !2605, file: !521, line: 556, type: !520)
!2613 = !DILocation(line: 0, scope: !2605)
!2614 = !DILocation(line: 558, column: 10, scope: !2605)
!2615 = !DILocation(line: 558, column: 3, scope: !2605)
!2616 = distinct !DISubprogram(name: "tree_mem_ref_addr", scope: !3, file: !3, line: 265, type: !2617, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2619)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{!656, !656, !656}
!2619 = !{!2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629}
!2620 = !DILocalVariable(name: "type", arg: 1, scope: !2616, file: !3, line: 265, type: !656)
!2621 = !DILocalVariable(name: "mem_ref", arg: 2, scope: !2616, file: !3, line: 265, type: !656)
!2622 = !DILocalVariable(name: "addr", scope: !2616, file: !3, line: 267, type: !656)
!2623 = !DILocalVariable(name: "act_elem", scope: !2616, file: !3, line: 268, type: !656)
!2624 = !DILocalVariable(name: "step", scope: !2616, file: !3, line: 269, type: !656)
!2625 = !DILocalVariable(name: "offset", scope: !2616, file: !3, line: 269, type: !656)
!2626 = !DILocalVariable(name: "sym", scope: !2616, file: !3, line: 270, type: !656)
!2627 = !DILocalVariable(name: "base", scope: !2616, file: !3, line: 270, type: !656)
!2628 = !DILocalVariable(name: "addr_base", scope: !2616, file: !3, line: 271, type: !656)
!2629 = !DILocalVariable(name: "addr_off", scope: !2616, file: !3, line: 271, type: !656)
!2630 = !DILocation(line: 0, scope: !2616)
!2631 = !DILocation(line: 269, column: 15, scope: !2616)
!2632 = !DILocation(line: 269, column: 44, scope: !2616)
!2633 = !DILocation(line: 270, column: 14, scope: !2616)
!2634 = !DILocation(line: 270, column: 43, scope: !2616)
!2635 = !DILocation(line: 273, column: 7, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 273, column: 7)
!2637 = !DILocation(line: 273, column: 7, scope: !2616)
!2638 = !DILocation(line: 274, column: 17, scope: !2636)
!2639 = !DILocation(line: 274, column: 5, scope: !2636)
!2640 = !DILocation(line: 275, column: 12, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 275, column: 12)
!2642 = !DILocation(line: 275, column: 17, scope: !2641)
!2643 = !DILocation(line: 275, column: 20, scope: !2641)
!2644 = !DILocation(line: 275, column: 12, scope: !2636)
!2645 = !DILocation(line: 277, column: 19, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2641, file: !3, line: 276, column: 5)
!2647 = !DILocation(line: 279, column: 5, scope: !2646)
!2648 = !DILocation(line: 0, scope: !2636)
!2649 = !DILocation(line: 281, column: 14, scope: !2616)
!2650 = !DILocation(line: 282, column: 7, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 282, column: 7)
!2652 = !DILocation(line: 282, column: 7, scope: !2616)
!2653 = !DILocation(line: 284, column: 11, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2655, file: !3, line: 284, column: 11)
!2655 = distinct !DILexicalBlock(scope: !2651, file: !3, line: 283, column: 5)
!2656 = !DILocation(line: 284, column: 11, scope: !2655)
!2657 = !DILocation(line: 285, column: 13, scope: !2654)
!2658 = !DILocation(line: 285, column: 2, scope: !2654)
!2659 = !DILocation(line: 290, column: 7, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 290, column: 7)
!2661 = !DILocation(line: 290, column: 7, scope: !2616)
!2662 = !DILocation(line: 292, column: 11, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 292, column: 11)
!2664 = distinct !DILexicalBlock(scope: !2660, file: !3, line: 291, column: 5)
!2665 = !DILocation(line: 292, column: 11, scope: !2664)
!2666 = !DILocation(line: 293, column: 13, scope: !2663)
!2667 = !DILocation(line: 293, column: 2, scope: !2663)
!2668 = !DILocation(line: 298, column: 7, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 298, column: 7)
!2670 = !DILocation(line: 298, column: 14, scope: !2669)
!2671 = !DILocation(line: 298, column: 18, scope: !2669)
!2672 = !DILocation(line: 298, column: 7, scope: !2616)
!2673 = !DILocation(line: 300, column: 11, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2675, file: !3, line: 300, column: 11)
!2675 = distinct !DILexicalBlock(scope: !2669, file: !3, line: 299, column: 5)
!2676 = !DILocation(line: 300, column: 11, scope: !2675)
!2677 = !DILocation(line: 301, column: 13, scope: !2674)
!2678 = !DILocation(line: 301, column: 2, scope: !2674)
!2679 = !DILocation(line: 306, column: 7, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 306, column: 7)
!2681 = !DILocation(line: 0, scope: !2680)
!2682 = !DILocation(line: 306, column: 7, scope: !2616)
!2683 = !DILocation(line: 308, column: 11, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2680, file: !3, line: 307, column: 5)
!2685 = !DILocation(line: 309, column: 9, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2684, file: !3, line: 308, column: 11)
!2687 = !DILocation(line: 309, column: 2, scope: !2686)
!2688 = !DILocation(line: 311, column: 9, scope: !2686)
!2689 = !DILocation(line: 313, column: 12, scope: !2680)
!2690 = !DILocation(line: 316, column: 12, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2680, file: !3, line: 313, column: 12)
!2692 = !DILocation(line: 318, column: 3, scope: !2616)
!2693 = distinct !DISubprogram(name: "create_mem_ref", scope: !3, file: !3, line: 632, type: !2694, scopeLine: 634, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2720)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!656, !2696, !656, !2703, !656, !532}
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !952, line: 265, baseType: !2698)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !952, line: 254, size: 192, elements: !2699)
!2699 = !{!2700, !2701, !2702}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2698, file: !952, line: 257, baseType: !955, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2698, file: !952, line: 263, baseType: !949, size: 64, offset: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2698, file: !952, line: 264, baseType: !922, size: 64, offset: 128)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_typedef, name: "aff_tree", file: !2705, line: 59, baseType: !2706)
!2705 = !DIFile(filename: "./tree-affine.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "affine_tree_combination", file: !2705, line: 36, size: 1856, elements: !2707)
!2707 = !{!2708, !2709, !2710, !2711, !2719}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2706, file: !2705, line: 39, baseType: !656, size: 64)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2706, file: !2705, line: 42, baseType: !704, size: 128, offset: 64)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !2706, file: !2705, line: 45, baseType: !7, size: 32, offset: 192)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !2706, file: !2705, line: 53, baseType: !2712, size: 1536, offset: 256)
!2712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2713, size: 1536, elements: !2717)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aff_comb_elt", file: !2705, line: 27, size: 192, elements: !2714)
!2714 = !{!2715, !2716}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2713, file: !2705, line: 30, baseType: !656, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "coef", scope: !2713, file: !2705, line: 33, baseType: !704, size: 128, offset: 64)
!2717 = !{!2718}
!2718 = !DISubrange(count: 8)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "rest", scope: !2706, file: !2705, line: 58, baseType: !656, size: 64, offset: 1792)
!2720 = !{!2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729}
!2721 = !DILocalVariable(name: "gsi", arg: 1, scope: !2693, file: !3, line: 632, type: !2696)
!2722 = !DILocalVariable(name: "type", arg: 2, scope: !2693, file: !3, line: 632, type: !656)
!2723 = !DILocalVariable(name: "addr", arg: 3, scope: !2693, file: !3, line: 632, type: !2703)
!2724 = !DILocalVariable(name: "base_hint", arg: 4, scope: !2693, file: !3, line: 633, type: !656)
!2725 = !DILocalVariable(name: "speed", arg: 5, scope: !2693, file: !3, line: 633, type: !532)
!2726 = !DILocalVariable(name: "mem_ref", scope: !2693, file: !3, line: 635, type: !656)
!2727 = !DILocalVariable(name: "tmp", scope: !2693, file: !3, line: 635, type: !656)
!2728 = !DILocalVariable(name: "atype", scope: !2693, file: !3, line: 636, type: !656)
!2729 = !DILocalVariable(name: "parts", scope: !2693, file: !3, line: 637, type: !2356)
!2730 = !DILocation(line: 0, scope: !2693)
!2731 = !DILocation(line: 637, column: 3, scope: !2693)
!2732 = !DILocation(line: 639, column: 3, scope: !2693)
!2733 = !DILocation(line: 640, column: 3, scope: !2693)
!2734 = !DILocation(line: 641, column: 13, scope: !2693)
!2735 = !DILocation(line: 642, column: 7, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2693, file: !3, line: 642, column: 7)
!2737 = !DILocation(line: 642, column: 7, scope: !2693)
!2738 = !DILocation(line: 647, column: 13, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2693, file: !3, line: 647, column: 7)
!2740 = !DILocation(line: 647, column: 7, scope: !2739)
!2741 = !DILocation(line: 647, column: 18, scope: !2739)
!2742 = !DILocation(line: 647, column: 22, scope: !2739)
!2743 = !DILocation(line: 647, column: 7, scope: !2693)
!2744 = !DILocation(line: 650, column: 7, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 648, column: 5)
!2746 = !DILocation(line: 652, column: 5, scope: !2745)
!2747 = !DILocation(line: 651, column: 21, scope: !2745)
!2748 = !DILocation(line: 651, column: 19, scope: !2745)
!2749 = !DILocation(line: 655, column: 18, scope: !2745)
!2750 = !DILocation(line: 657, column: 17, scope: !2745)
!2751 = !DILocation(line: 658, column: 11, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2745, file: !3, line: 658, column: 11)
!2753 = !DILocation(line: 658, column: 11, scope: !2745)
!2754 = !DILocation(line: 662, column: 13, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2693, file: !3, line: 662, column: 7)
!2756 = !DILocation(line: 662, column: 7, scope: !2755)
!2757 = !DILocation(line: 662, column: 7, scope: !2693)
!2758 = !DILocation(line: 664, column: 39, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2755, file: !3, line: 663, column: 5)
!2760 = !DILocation(line: 664, column: 13, scope: !2759)
!2761 = !DILocation(line: 665, column: 7, scope: !2759)
!2762 = !DILocation(line: 668, column: 17, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2759, file: !3, line: 668, column: 11)
!2764 = !DILocation(line: 668, column: 11, scope: !2763)
!2765 = !DILocation(line: 668, column: 11, scope: !2759)
!2766 = !DILocation(line: 670, column: 4, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2763, file: !3, line: 669, column: 2)
!2768 = !DILocation(line: 673, column: 14, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2767, file: !3, line: 673, column: 8)
!2770 = !DILocation(line: 673, column: 8, scope: !2769)
!2771 = !DILocation(line: 673, column: 8, scope: !2767)
!2772 = !DILocation(line: 675, column: 16, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2769, file: !3, line: 674, column: 6)
!2774 = !DILocation(line: 677, column: 4, scope: !2773)
!2775 = !DILocation(line: 676, column: 21, scope: !2773)
!2776 = !DILocation(line: 676, column: 19, scope: !2773)
!2777 = !DILocation(line: 681, column: 6, scope: !2773)
!2778 = !DILocation(line: 684, column: 28, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2769, file: !3, line: 683, column: 6)
!2780 = !DILocation(line: 684, column: 20, scope: !2779)
!2781 = !DILocation(line: 685, column: 19, scope: !2779)
!2782 = !DILocation(line: 689, column: 13, scope: !2763)
!2783 = !DILocation(line: 690, column: 20, scope: !2759)
!2784 = !DILocation(line: 692, column: 17, scope: !2759)
!2785 = !DILocation(line: 693, column: 11, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2759, file: !3, line: 693, column: 11)
!2787 = !DILocation(line: 693, column: 11, scope: !2759)
!2788 = !DILocation(line: 697, column: 13, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2693, file: !3, line: 697, column: 7)
!2790 = !DILocation(line: 697, column: 7, scope: !2789)
!2791 = !DILocation(line: 697, column: 7, scope: !2693)
!2792 = !DILocation(line: 700, column: 17, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2794, file: !3, line: 700, column: 11)
!2794 = distinct !DILexicalBlock(scope: !2789, file: !3, line: 698, column: 5)
!2795 = !DILocation(line: 700, column: 11, scope: !2793)
!2796 = !DILocation(line: 700, column: 11, scope: !2794)
!2797 = !DILocation(line: 702, column: 12, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2793, file: !3, line: 701, column: 2)
!2799 = !DILocation(line: 704, column: 4, scope: !2798)
!2800 = !DILocation(line: 703, column: 17, scope: !2798)
!2801 = !DILocation(line: 703, column: 15, scope: !2798)
!2802 = !DILocation(line: 708, column: 2, scope: !2798)
!2803 = !DILocation(line: 710, column: 13, scope: !2793)
!2804 = !DILocation(line: 711, column: 19, scope: !2794)
!2805 = !DILocation(line: 713, column: 17, scope: !2794)
!2806 = !DILocation(line: 714, column: 11, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2794, file: !3, line: 714, column: 11)
!2808 = !DILocation(line: 714, column: 11, scope: !2794)
!2809 = !DILocation(line: 718, column: 13, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2693, file: !3, line: 718, column: 7)
!2811 = !DILocation(line: 718, column: 7, scope: !2810)
!2812 = !DILocation(line: 718, column: 20, scope: !2810)
!2813 = !DILocation(line: 718, column: 24, scope: !2810)
!2814 = !DILocation(line: 718, column: 7, scope: !2693)
!2815 = !DILocation(line: 721, column: 17, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2817, file: !3, line: 721, column: 11)
!2817 = distinct !DILexicalBlock(scope: !2810, file: !3, line: 719, column: 5)
!2818 = !DILocation(line: 721, column: 11, scope: !2816)
!2819 = !DILocation(line: 721, column: 11, scope: !2817)
!2820 = !DILocation(line: 723, column: 12, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2816, file: !3, line: 722, column: 2)
!2822 = !DILocation(line: 725, column: 4, scope: !2821)
!2823 = !DILocation(line: 724, column: 17, scope: !2821)
!2824 = !DILocation(line: 724, column: 15, scope: !2821)
!2825 = !DILocation(line: 729, column: 2, scope: !2821)
!2826 = !DILocation(line: 731, column: 21, scope: !2816)
!2827 = !DILocation(line: 731, column: 13, scope: !2816)
!2828 = !DILocation(line: 733, column: 20, scope: !2817)
!2829 = !DILocation(line: 735, column: 17, scope: !2817)
!2830 = !DILocation(line: 736, column: 11, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2817, file: !3, line: 736, column: 11)
!2832 = !DILocation(line: 736, column: 11, scope: !2817)
!2833 = !DILocation(line: 743, column: 3, scope: !2693)
!2834 = !DILocation(line: 744, column: 3, scope: !2693)
!2835 = !DILocation(line: 745, column: 3, scope: !2693)
!2836 = !DILocation(line: 746, column: 3, scope: !2693)
!2837 = !DILocation(line: 747, column: 3, scope: !2693)
!2838 = !DILocation(line: 749, column: 5, scope: !2693)
!2839 = !DILocation(line: 751, column: 1, scope: !2693)
!2840 = distinct !DISubprogram(name: "addr_to_parts", scope: !3, file: !3, line: 568, type: !2841, scopeLine: 570, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2843)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{null, !656, !2703, !656, !2355, !532}
!2843 = !{!2844, !2845, !2846, !2847, !2848, !2849, !2850}
!2844 = !DILocalVariable(name: "type", arg: 1, scope: !2840, file: !3, line: 568, type: !656)
!2845 = !DILocalVariable(name: "addr", arg: 2, scope: !2840, file: !3, line: 568, type: !2703)
!2846 = !DILocalVariable(name: "base_hint", arg: 3, scope: !2840, file: !3, line: 568, type: !656)
!2847 = !DILocalVariable(name: "parts", arg: 4, scope: !2840, file: !3, line: 569, type: !2355)
!2848 = !DILocalVariable(name: "speed", arg: 5, scope: !2840, file: !3, line: 569, type: !532)
!2849 = !DILocalVariable(name: "part", scope: !2840, file: !3, line: 571, type: !656)
!2850 = !DILocalVariable(name: "i", scope: !2840, file: !3, line: 572, type: !7)
!2851 = !DILocation(line: 0, scope: !2840)
!2852 = !DILocation(line: 574, column: 10, scope: !2840)
!2853 = !DILocation(line: 574, column: 17, scope: !2840)
!2854 = !DILocation(line: 575, column: 10, scope: !2840)
!2855 = !DILocation(line: 575, column: 15, scope: !2840)
!2856 = !DILocation(line: 576, column: 10, scope: !2840)
!2857 = !DILocation(line: 576, column: 16, scope: !2840)
!2858 = !DILocation(line: 577, column: 10, scope: !2840)
!2859 = !DILocation(line: 577, column: 15, scope: !2840)
!2860 = !DILocation(line: 579, column: 8, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2840, file: !3, line: 579, column: 7)
!2862 = !DILocation(line: 579, column: 7, scope: !2840)
!2863 = !DILocation(line: 580, column: 41, scope: !2861)
!2864 = !DILocation(line: 580, column: 21, scope: !2861)
!2865 = !DILocation(line: 580, column: 12, scope: !2861)
!2866 = !DILocation(line: 580, column: 19, scope: !2861)
!2867 = !DILocation(line: 580, column: 5, scope: !2861)
!2868 = !DILocation(line: 582, column: 12, scope: !2861)
!2869 = !DILocation(line: 582, column: 19, scope: !2861)
!2870 = !DILocation(line: 585, column: 3, scope: !2840)
!2871 = !DILocation(line: 589, column: 3, scope: !2840)
!2872 = !DILocation(line: 594, column: 15, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2840, file: !3, line: 594, column: 7)
!2874 = !DILocation(line: 594, column: 8, scope: !2873)
!2875 = !DILocation(line: 594, column: 25, scope: !2873)
!2876 = !DILocation(line: 594, column: 22, scope: !2873)
!2877 = !DILocation(line: 595, column: 5, scope: !2873)
!2878 = !DILocation(line: 596, column: 15, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2840, file: !3, line: 596, column: 7)
!2880 = !DILocation(line: 596, column: 8, scope: !2879)
!2881 = !DILocation(line: 596, column: 22, scope: !2879)
!2882 = !DILocation(line: 596, column: 33, scope: !2879)
!2883 = !DILocation(line: 596, column: 26, scope: !2879)
!2884 = !DILocation(line: 596, column: 7, scope: !2840)
!2885 = !DILocation(line: 597, column: 5, scope: !2879)
!2886 = !DILocation(line: 0, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2888, file: !3, line: 600, column: 3)
!2888 = distinct !DILexicalBlock(scope: !2840, file: !3, line: 600, column: 3)
!2889 = !DILocation(line: 600, column: 8, scope: !2888)
!2890 = !DILocation(line: 0, scope: !2888)
!2891 = !DILocation(line: 600, column: 25, scope: !2887)
!2892 = !DILocation(line: 600, column: 17, scope: !2887)
!2893 = !DILocation(line: 600, column: 3, scope: !2888)
!2894 = !DILocation(line: 602, column: 14, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2887, file: !3, line: 601, column: 5)
!2896 = !DILocation(line: 603, column: 12, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2895, file: !3, line: 603, column: 11)
!2898 = !DILocation(line: 603, column: 11, scope: !2895)
!2899 = !DILocation(line: 604, column: 9, scope: !2897)
!2900 = !DILocation(line: 604, column: 2, scope: !2897)
!2901 = !DILocation(line: 0, scope: !2895)
!2902 = !DILocation(line: 606, column: 7, scope: !2895)
!2903 = !DILocation(line: 600, column: 29, scope: !2887)
!2904 = !DILocation(line: 600, column: 3, scope: !2887)
!2905 = distinct !{!2905, !2893, !2906}
!2906 = !DILocation(line: 607, column: 5, scope: !2888)
!2907 = !DILocation(line: 608, column: 13, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2840, file: !3, line: 608, column: 7)
!2909 = !DILocation(line: 608, column: 7, scope: !2908)
!2910 = !DILocation(line: 608, column: 7, scope: !2840)
!2911 = !DILocation(line: 609, column: 26, scope: !2908)
!2912 = !DILocation(line: 609, column: 5, scope: !2908)
!2913 = !DILocation(line: 610, column: 1, scope: !2840)
!2914 = distinct !DISubprogram(name: "gimplify_mem_ref_parts", scope: !3, file: !3, line: 615, type: !2915, scopeLine: 616, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2917)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{null, !2696, !2355}
!2917 = !{!2918, !2919}
!2918 = !DILocalVariable(name: "gsi", arg: 1, scope: !2914, file: !3, line: 615, type: !2696)
!2919 = !DILocalVariable(name: "parts", arg: 2, scope: !2914, file: !3, line: 615, type: !2355)
!2920 = !DILocation(line: 0, scope: !2914)
!2921 = !DILocation(line: 617, column: 14, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2914, file: !3, line: 617, column: 7)
!2923 = !DILocation(line: 617, column: 7, scope: !2922)
!2924 = !DILocation(line: 617, column: 7, scope: !2914)
!2925 = !DILocation(line: 618, column: 19, scope: !2922)
!2926 = !DILocation(line: 618, column: 17, scope: !2922)
!2927 = !DILocation(line: 618, column: 5, scope: !2922)
!2928 = !DILocation(line: 621, column: 14, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2914, file: !3, line: 621, column: 7)
!2930 = !DILocation(line: 621, column: 7, scope: !2929)
!2931 = !DILocation(line: 621, column: 7, scope: !2914)
!2932 = !DILocation(line: 622, column: 20, scope: !2929)
!2933 = !DILocation(line: 622, column: 18, scope: !2929)
!2934 = !DILocation(line: 622, column: 5, scope: !2929)
!2935 = !DILocation(line: 625, column: 1, scope: !2914)
!2936 = distinct !DISubprogram(name: "create_mem_ref_raw", scope: !3, file: !3, line: 342, type: !2937, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2939)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!656, !656, !2355}
!2939 = !{!2940, !2941}
!2940 = !DILocalVariable(name: "type", arg: 1, scope: !2936, file: !3, line: 342, type: !656)
!2941 = !DILocalVariable(name: "addr", arg: 2, scope: !2936, file: !3, line: 342, type: !2355)
!2942 = !DILocation(line: 0, scope: !2936)
!2943 = !DILocation(line: 344, column: 25, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2936, file: !3, line: 344, column: 7)
!2945 = !DILocation(line: 344, column: 43, scope: !2944)
!2946 = !DILocation(line: 344, column: 8, scope: !2944)
!2947 = !DILocation(line: 344, column: 7, scope: !2936)
!2948 = !DILocation(line: 347, column: 13, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2936, file: !3, line: 347, column: 7)
!2950 = !DILocation(line: 347, column: 7, scope: !2949)
!2951 = !DILocation(line: 347, column: 18, scope: !2949)
!2952 = !DILocation(line: 347, column: 21, scope: !2949)
!2953 = !DILocation(line: 347, column: 7, scope: !2936)
!2954 = !DILocation(line: 348, column: 16, scope: !2949)
!2955 = !DILocation(line: 348, column: 5, scope: !2949)
!2956 = !DILocation(line: 350, column: 13, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2936, file: !3, line: 350, column: 7)
!2958 = !DILocation(line: 350, column: 7, scope: !2957)
!2959 = !DILocation(line: 350, column: 20, scope: !2957)
!2960 = !DILocation(line: 350, column: 23, scope: !2957)
!2961 = !DILocation(line: 350, column: 7, scope: !2936)
!2962 = !DILocation(line: 353, column: 10, scope: !2936)
!2963 = !DILocation(line: 351, column: 18, scope: !2957)
!2964 = !DILocation(line: 351, column: 5, scope: !2957)
!2965 = !DILocation(line: 353, column: 3, scope: !2936)
!2966 = !DILocation(line: 356, column: 1, scope: !2936)
!2967 = distinct !DISubprogram(name: "get_address_description", scope: !3, file: !3, line: 756, type: !2968, scopeLine: 757, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2970)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{null, !656, !2355}
!2970 = !{!2971, !2972}
!2971 = !DILocalVariable(name: "op", arg: 1, scope: !2967, file: !3, line: 756, type: !656)
!2972 = !DILocalVariable(name: "addr", arg: 2, scope: !2967, file: !3, line: 756, type: !2355)
!2973 = !DILocation(line: 0, scope: !2967)
!2974 = !DILocation(line: 758, column: 18, scope: !2967)
!2975 = !DILocation(line: 758, column: 16, scope: !2967)
!2976 = !DILocation(line: 759, column: 16, scope: !2967)
!2977 = !DILocation(line: 759, column: 9, scope: !2967)
!2978 = !DILocation(line: 759, column: 14, scope: !2967)
!2979 = !DILocation(line: 760, column: 17, scope: !2967)
!2980 = !DILocation(line: 760, column: 9, scope: !2967)
!2981 = !DILocation(line: 760, column: 15, scope: !2967)
!2982 = !DILocation(line: 761, column: 16, scope: !2967)
!2983 = !DILocation(line: 761, column: 9, scope: !2967)
!2984 = !DILocation(line: 761, column: 14, scope: !2967)
!2985 = !DILocation(line: 762, column: 18, scope: !2967)
!2986 = !DILocation(line: 762, column: 9, scope: !2967)
!2987 = !DILocation(line: 762, column: 16, scope: !2967)
!2988 = !DILocation(line: 763, column: 1, scope: !2967)
!2989 = distinct !DISubprogram(name: "copy_mem_ref_info", scope: !3, file: !3, line: 768, type: !2990, scopeLine: 769, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2992)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{null, !656, !656}
!2992 = !{!2993, !2994}
!2993 = !DILocalVariable(name: "to", arg: 1, scope: !2989, file: !3, line: 768, type: !656)
!2994 = !DILocalVariable(name: "from", arg: 2, scope: !2989, file: !3, line: 768, type: !656)
!2995 = !DILocation(line: 0, scope: !2989)
!2996 = !DILocation(line: 771, column: 23, scope: !2989)
!2997 = !DILocation(line: 771, column: 3, scope: !2989)
!2998 = !DILocation(line: 771, column: 21, scope: !2989)
!2999 = !DILocation(line: 772, column: 28, scope: !2989)
!3000 = !DILocation(line: 772, column: 3, scope: !2989)
!3001 = !DILocation(line: 772, column: 26, scope: !2989)
!3002 = !DILocation(line: 773, column: 29, scope: !2989)
!3003 = !DILocation(line: 773, column: 27, scope: !2989)
!3004 = !DILocation(line: 774, column: 1, scope: !2989)
!3005 = distinct !DISubprogram(name: "maybe_fold_tmr", scope: !3, file: !3, line: 780, type: !3006, scopeLine: 781, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3008)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!656, !656}
!3008 = !{!3009, !3010, !3011, !3012, !3013}
!3009 = !DILocalVariable(name: "ref", arg: 1, scope: !3005, file: !3, line: 780, type: !656)
!3010 = !DILocalVariable(name: "addr", scope: !3005, file: !3, line: 782, type: !2356)
!3011 = !DILocalVariable(name: "changed", scope: !3005, file: !3, line: 783, type: !532)
!3012 = !DILocalVariable(name: "ret", scope: !3005, file: !3, line: 784, type: !656)
!3013 = !DILocalVariable(name: "off", scope: !3005, file: !3, line: 784, type: !656)
!3014 = !DILocation(line: 0, scope: !3005)
!3015 = !DILocation(line: 782, column: 3, scope: !3005)
!3016 = !DILocation(line: 786, column: 3, scope: !3005)
!3017 = !DILocation(line: 788, column: 12, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3005, file: !3, line: 788, column: 7)
!3019 = !DILocation(line: 788, column: 7, scope: !3018)
!3020 = !DILocation(line: 788, column: 17, scope: !3018)
!3021 = !DILocation(line: 788, column: 20, scope: !3018)
!3022 = !DILocation(line: 788, column: 42, scope: !3018)
!3023 = !DILocation(line: 788, column: 7, scope: !3005)
!3024 = !DILocation(line: 790, column: 16, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3026, file: !3, line: 790, column: 11)
!3026 = distinct !DILexicalBlock(scope: !3018, file: !3, line: 789, column: 5)
!3027 = !DILocation(line: 790, column: 11, scope: !3025)
!3028 = !DILocation(line: 790, column: 11, scope: !3026)
!3029 = !DILocation(line: 791, column: 52, scope: !3025)
!3030 = !DILocation(line: 793, column: 4, scope: !3025)
!3031 = !DILocation(line: 791, column: 16, scope: !3025)
!3032 = !DILocation(line: 791, column: 14, scope: !3025)
!3033 = !DILocation(line: 791, column: 2, scope: !3025)
!3034 = !DILocation(line: 795, column: 14, scope: !3025)
!3035 = !DILocation(line: 797, column: 17, scope: !3026)
!3036 = !DILocation(line: 799, column: 5, scope: !3026)
!3037 = !DILocation(line: 801, column: 12, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3005, file: !3, line: 801, column: 7)
!3039 = !DILocation(line: 801, column: 7, scope: !3038)
!3040 = !DILocation(line: 801, column: 18, scope: !3038)
!3041 = !DILocation(line: 801, column: 21, scope: !3038)
!3042 = !DILocation(line: 801, column: 44, scope: !3038)
!3043 = !DILocation(line: 801, column: 7, scope: !3005)
!3044 = !DILocation(line: 804, column: 16, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3046, file: !3, line: 804, column: 11)
!3046 = distinct !DILexicalBlock(scope: !3038, file: !3, line: 802, column: 5)
!3047 = !DILocation(line: 804, column: 11, scope: !3045)
!3048 = !DILocation(line: 804, column: 11, scope: !3046)
!3049 = !DILocation(line: 806, column: 46, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3045, file: !3, line: 805, column: 2)
!3051 = !DILocation(line: 806, column: 10, scope: !3050)
!3052 = !DILocation(line: 808, column: 14, scope: !3050)
!3053 = !DILocation(line: 809, column: 2, scope: !3050)
!3054 = !DILocation(line: 0, scope: !3046)
!3055 = !DILocation(line: 811, column: 16, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3046, file: !3, line: 811, column: 11)
!3057 = !DILocation(line: 811, column: 11, scope: !3056)
!3058 = !DILocation(line: 811, column: 11, scope: !3046)
!3059 = !DILocation(line: 813, column: 54, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3056, file: !3, line: 812, column: 2)
!3061 = !DILocation(line: 813, column: 18, scope: !3060)
!3062 = !DILocation(line: 815, column: 2, scope: !3060)
!3063 = !DILocation(line: 0, scope: !3056)
!3064 = !DILocation(line: 819, column: 18, scope: !3046)
!3065 = !DILocation(line: 821, column: 5, scope: !3046)
!3066 = !DILocation(line: 823, column: 8, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3005, file: !3, line: 823, column: 7)
!3068 = !DILocation(line: 823, column: 7, scope: !3005)
!3069 = !DILocation(line: 826, column: 29, scope: !3005)
!3070 = !DILocation(line: 826, column: 9, scope: !3005)
!3071 = !DILocation(line: 827, column: 8, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3005, file: !3, line: 827, column: 7)
!3073 = !DILocation(line: 827, column: 7, scope: !3005)
!3074 = !DILocation(line: 830, column: 3, scope: !3005)
!3075 = !DILocation(line: 831, column: 3, scope: !3005)
!3076 = !DILocation(line: 832, column: 1, scope: !3005)
!3077 = distinct !DISubprogram(name: "dump_mem_address", scope: !3, file: !3, line: 838, type: !3078, scopeLine: 839, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3080)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{null, !1935, !2355}
!3080 = !{!3081, !3082}
!3081 = !DILocalVariable(name: "file", arg: 1, scope: !3077, file: !3, line: 838, type: !1935)
!3082 = !DILocalVariable(name: "parts", arg: 2, scope: !3077, file: !3, line: 838, type: !2355)
!3083 = !DILocation(line: 0, scope: !3077)
!3084 = !DILocation(line: 840, column: 14, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3077, file: !3, line: 840, column: 7)
!3086 = !DILocation(line: 840, column: 7, scope: !3085)
!3087 = !DILocation(line: 840, column: 7, scope: !3077)
!3088 = !DILocation(line: 842, column: 7, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3085, file: !3, line: 841, column: 5)
!3090 = !DILocation(line: 843, column: 40, scope: !3089)
!3091 = !DILocation(line: 843, column: 7, scope: !3089)
!3092 = !DILocation(line: 844, column: 7, scope: !3089)
!3093 = !DILocation(line: 845, column: 5, scope: !3089)
!3094 = !DILocation(line: 846, column: 14, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3077, file: !3, line: 846, column: 7)
!3096 = !DILocation(line: 846, column: 7, scope: !3095)
!3097 = !DILocation(line: 846, column: 7, scope: !3077)
!3098 = !DILocation(line: 848, column: 7, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3095, file: !3, line: 847, column: 5)
!3100 = !DILocation(line: 849, column: 40, scope: !3099)
!3101 = !DILocation(line: 849, column: 7, scope: !3099)
!3102 = !DILocation(line: 850, column: 7, scope: !3099)
!3103 = !DILocation(line: 851, column: 5, scope: !3099)
!3104 = !DILocation(line: 852, column: 14, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3077, file: !3, line: 852, column: 7)
!3106 = !DILocation(line: 852, column: 7, scope: !3105)
!3107 = !DILocation(line: 852, column: 7, scope: !3077)
!3108 = !DILocation(line: 854, column: 7, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3105, file: !3, line: 853, column: 5)
!3110 = !DILocation(line: 855, column: 40, scope: !3109)
!3111 = !DILocation(line: 855, column: 7, scope: !3109)
!3112 = !DILocation(line: 856, column: 7, scope: !3109)
!3113 = !DILocation(line: 857, column: 5, scope: !3109)
!3114 = !DILocation(line: 858, column: 14, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3077, file: !3, line: 858, column: 7)
!3116 = !DILocation(line: 858, column: 7, scope: !3115)
!3117 = !DILocation(line: 858, column: 7, scope: !3077)
!3118 = !DILocation(line: 860, column: 7, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3115, file: !3, line: 859, column: 5)
!3120 = !DILocation(line: 861, column: 40, scope: !3119)
!3121 = !DILocation(line: 861, column: 7, scope: !3119)
!3122 = !DILocation(line: 862, column: 7, scope: !3119)
!3123 = !DILocation(line: 863, column: 5, scope: !3119)
!3124 = !DILocation(line: 864, column: 14, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3077, file: !3, line: 864, column: 7)
!3126 = !DILocation(line: 864, column: 7, scope: !3125)
!3127 = !DILocation(line: 864, column: 7, scope: !3077)
!3128 = !DILocation(line: 866, column: 7, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3125, file: !3, line: 865, column: 5)
!3130 = !DILocation(line: 867, column: 40, scope: !3129)
!3131 = !DILocation(line: 867, column: 7, scope: !3129)
!3132 = !DILocation(line: 868, column: 7, scope: !3129)
!3133 = !DILocation(line: 869, column: 5, scope: !3129)
!3134 = !DILocation(line: 870, column: 1, scope: !3077)
!3135 = distinct !DISubprogram(name: "gt_ggc_mx_VEC_mem_addr_template_gc", scope: !1890, file: !1890, line: 23, type: !1260, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3136)
!3136 = !{!3137, !3138, !3140, !3144}
!3137 = !DILocalVariable(name: "x_p", arg: 1, scope: !3135, file: !1890, line: 23, type: !537)
!3138 = !DILocalVariable(name: "x", scope: !3135, file: !1890, line: 25, type: !3139)
!3139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1867)
!3140 = !DILocalVariable(name: "i0", scope: !3141, file: !1890, line: 29, type: !1106)
!3141 = distinct !DILexicalBlock(scope: !3142, file: !1890, line: 28, column: 7)
!3142 = distinct !DILexicalBlock(scope: !3143, file: !1890, line: 27, column: 5)
!3143 = distinct !DILexicalBlock(scope: !3135, file: !1890, line: 26, column: 7)
!3144 = !DILocalVariable(name: "l0", scope: !3141, file: !1890, line: 30, type: !1106)
!3145 = !DILocation(line: 0, scope: !3135)
!3146 = !DILocation(line: 26, column: 7, scope: !3143)
!3147 = !DILocation(line: 26, column: 7, scope: !3135)
!3148 = !DILocation(line: 30, column: 42, scope: !3141)
!3149 = !DILocation(line: 30, column: 21, scope: !3141)
!3150 = !DILocation(line: 0, scope: !3141)
!3151 = !DILocation(line: 0, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3153, file: !1890, line: 32, column: 11)
!3153 = distinct !DILexicalBlock(scope: !3154, file: !1890, line: 32, column: 11)
!3154 = distinct !DILexicalBlock(scope: !3155, file: !1890, line: 31, column: 38)
!3155 = distinct !DILexicalBlock(scope: !3156, file: !1890, line: 31, column: 9)
!3156 = distinct !DILexicalBlock(scope: !3141, file: !1890, line: 31, column: 9)
!3157 = !DILocation(line: 31, column: 14, scope: !3156)
!3158 = !DILocation(line: 0, scope: !3156)
!3159 = !DILocation(line: 31, column: 25, scope: !3155)
!3160 = !DILocation(line: 31, column: 9, scope: !3156)
!3161 = !DILocation(line: 32, column: 11, scope: !3152)
!3162 = !DILocation(line: 32, column: 11, scope: !3153)
!3163 = !DILocation(line: 31, column: 34, scope: !3155)
!3164 = !DILocation(line: 31, column: 9, scope: !3155)
!3165 = distinct !{!3165, !3160, !3166}
!3166 = !DILocation(line: 33, column: 9, scope: !3156)
!3167 = !DILocation(line: 36, column: 1, scope: !3135)
!3168 = distinct !DISubprogram(name: "gt_pch_nx_VEC_mem_addr_template_gc", scope: !1890, file: !1890, line: 39, type: !1260, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3169)
!3169 = !{!3170, !3171, !3172, !3176}
!3170 = !DILocalVariable(name: "x_p", arg: 1, scope: !3168, file: !1890, line: 39, type: !537)
!3171 = !DILocalVariable(name: "x", scope: !3168, file: !1890, line: 41, type: !3139)
!3172 = !DILocalVariable(name: "i0", scope: !3173, file: !1890, line: 45, type: !1106)
!3173 = distinct !DILexicalBlock(scope: !3174, file: !1890, line: 44, column: 7)
!3174 = distinct !DILexicalBlock(scope: !3175, file: !1890, line: 43, column: 5)
!3175 = distinct !DILexicalBlock(scope: !3168, file: !1890, line: 42, column: 7)
!3176 = !DILocalVariable(name: "l0", scope: !3173, file: !1890, line: 46, type: !1106)
!3177 = !DILocation(line: 0, scope: !3168)
!3178 = !DILocation(line: 42, column: 7, scope: !3175)
!3179 = !DILocation(line: 42, column: 7, scope: !3168)
!3180 = !DILocation(line: 46, column: 42, scope: !3173)
!3181 = !DILocation(line: 46, column: 21, scope: !3173)
!3182 = !DILocation(line: 0, scope: !3173)
!3183 = !DILocation(line: 0, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3185, file: !1890, line: 48, column: 11)
!3185 = distinct !DILexicalBlock(scope: !3186, file: !1890, line: 48, column: 11)
!3186 = distinct !DILexicalBlock(scope: !3187, file: !1890, line: 47, column: 38)
!3187 = distinct !DILexicalBlock(scope: !3188, file: !1890, line: 47, column: 9)
!3188 = distinct !DILexicalBlock(scope: !3173, file: !1890, line: 47, column: 9)
!3189 = !DILocation(line: 47, column: 14, scope: !3188)
!3190 = !DILocation(line: 0, scope: !3188)
!3191 = !DILocation(line: 47, column: 25, scope: !3187)
!3192 = !DILocation(line: 47, column: 9, scope: !3188)
!3193 = !DILocation(line: 48, column: 11, scope: !3184)
!3194 = !DILocation(line: 48, column: 11, scope: !3185)
!3195 = !DILocation(line: 47, column: 34, scope: !3187)
!3196 = !DILocation(line: 47, column: 9, scope: !3187)
!3197 = distinct !{!3197, !3192, !3198}
!3198 = !DILocation(line: 49, column: 9, scope: !3188)
!3199 = !DILocation(line: 52, column: 1, scope: !3168)
!3200 = distinct !DISubprogram(name: "gt_pch_p_24VEC_mem_addr_template_gc", scope: !1890, file: !1890, line: 55, type: !3201, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3204)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{null, !537, !537, !3203, !537}
!3203 = !DIDerivedType(tag: DW_TAG_typedef, name: "gt_pointer_operator", file: !1894, line: 38, baseType: !1284)
!3204 = !{!3205, !3206, !3207, !3208, !3209, !3210, !3212}
!3205 = !DILocalVariable(name: "this_obj", arg: 1, scope: !3200, file: !1890, line: 55, type: !537)
!3206 = !DILocalVariable(name: "x_p", arg: 2, scope: !3200, file: !1890, line: 56, type: !537)
!3207 = !DILocalVariable(name: "op", arg: 3, scope: !3200, file: !1890, line: 57, type: !3203)
!3208 = !DILocalVariable(name: "cookie", arg: 4, scope: !3200, file: !1890, line: 58, type: !537)
!3209 = !DILocalVariable(name: "x", scope: !3200, file: !1890, line: 60, type: !3139)
!3210 = !DILocalVariable(name: "i0", scope: !3211, file: !1890, line: 62, type: !1106)
!3211 = distinct !DILexicalBlock(scope: !3200, file: !1890, line: 61, column: 3)
!3212 = !DILocalVariable(name: "l0", scope: !3211, file: !1890, line: 63, type: !1106)
!3213 = !DILocation(line: 0, scope: !3200)
!3214 = !DILocation(line: 63, column: 38, scope: !3211)
!3215 = !DILocation(line: 63, column: 17, scope: !3211)
!3216 = !DILocation(line: 0, scope: !3211)
!3217 = !DILocation(line: 0, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3219, file: !1890, line: 65, column: 11)
!3219 = distinct !DILexicalBlock(scope: !3220, file: !1890, line: 64, column: 34)
!3220 = distinct !DILexicalBlock(scope: !3221, file: !1890, line: 64, column: 5)
!3221 = distinct !DILexicalBlock(scope: !3211, file: !1890, line: 64, column: 5)
!3222 = !DILocation(line: 64, column: 10, scope: !3221)
!3223 = !DILocation(line: 0, scope: !3221)
!3224 = !DILocation(line: 64, column: 21, scope: !3220)
!3225 = !DILocation(line: 64, column: 5, scope: !3221)
!3226 = !DILocation(line: 66, column: 33, scope: !3218)
!3227 = !DILocation(line: 66, column: 13, scope: !3218)
!3228 = !DILocation(line: 66, column: 9, scope: !3218)
!3229 = !DILocation(line: 64, column: 30, scope: !3220)
!3230 = !DILocation(line: 64, column: 5, scope: !3220)
!3231 = distinct !{!3231, !3225, !3232}
!3232 = !DILocation(line: 67, column: 5, scope: !3221)
!3233 = !DILocation(line: 69, column: 1, scope: !3200)
!3234 = distinct !DISubprogram(name: "VEC_mem_addr_template_gc_safe_grow", scope: !3, file: !3, line: 84, type: !2472, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3235)
!3235 = !{!3236, !3237}
!3236 = !DILocalVariable(name: "vec_", arg: 1, scope: !3234, file: !3, line: 84, type: !2474)
!3237 = !DILocalVariable(name: "size_", arg: 2, scope: !3234, file: !3, line: 84, type: !533)
!3238 = !DILocation(line: 0, scope: !3234)
!3239 = !DILocation(line: 84, column: 1, scope: !3234)
!3240 = distinct !DISubprogram(name: "VEC_mem_addr_template_base_address", scope: !3, file: !3, line: 83, type: !3241, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3243)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{!2484, !2485}
!3243 = !{!3244}
!3244 = !DILocalVariable(name: "vec_", arg: 1, scope: !3240, file: !3, line: 83, type: !2485)
!3245 = !DILocation(line: 0, scope: !3240)
!3246 = !DILocation(line: 83, column: 1, scope: !3240)
!3247 = distinct !DISubprogram(name: "VEC_mem_addr_template_gc_reserve_exact", scope: !3, file: !3, line: 84, type: !3248, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3250)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!533, !2474, !533}
!3250 = !{!3251, !3252, !3253}
!3251 = !DILocalVariable(name: "vec_", arg: 1, scope: !3247, file: !3, line: 84, type: !2474)
!3252 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3247, file: !3, line: 84, type: !533)
!3253 = !DILocalVariable(name: "extend", scope: !3247, file: !3, line: 84, type: !533)
!3254 = !DILocation(line: 0, scope: !3247)
!3255 = !DILocation(line: 84, column: 1, scope: !3247)
!3256 = !DILocation(line: 84, column: 1, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3247, file: !3, line: 84, column: 1)
!3258 = distinct !DISubprogram(name: "VEC_mem_addr_template_base_space", scope: !3, file: !3, line: 83, type: !3259, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3261)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!533, !2485, !533}
!3261 = !{!3262, !3263}
!3262 = !DILocalVariable(name: "vec_", arg: 1, scope: !3258, file: !3, line: 83, type: !2485)
!3263 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3258, file: !3, line: 83, type: !533)
!3264 = !DILocation(line: 0, scope: !3258)
!3265 = !DILocation(line: 83, column: 1, scope: !3258)
!3266 = distinct !DISubprogram(name: "double_int_zero_p", scope: !705, file: !705, line: 152, type: !3267, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3269)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{!532, !704}
!3269 = !{!3270}
!3270 = !DILocalVariable(name: "cst", arg: 1, scope: !3266, file: !705, line: 152, type: !704)
!3271 = !DILocation(line: 154, column: 23, scope: !3266)
!3272 = !DILocation(line: 154, column: 10, scope: !3266)
!3273 = !DILocation(line: 154, column: 3, scope: !3266)
!3274 = distinct !DISubprogram(name: "move_fixed_address_to_symbol", scope: !3, file: !3, line: 373, type: !3275, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3277)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{null, !2355, !2703}
!3277 = !{!3278, !3279, !3280, !3281}
!3278 = !DILocalVariable(name: "parts", arg: 1, scope: !3274, file: !3, line: 373, type: !2355)
!3279 = !DILocalVariable(name: "addr", arg: 2, scope: !3274, file: !3, line: 373, type: !2703)
!3280 = !DILocalVariable(name: "i", scope: !3274, file: !3, line: 375, type: !7)
!3281 = !DILocalVariable(name: "val", scope: !3274, file: !3, line: 376, type: !656)
!3282 = !DILocation(line: 0, scope: !3274)
!3283 = !DILocation(line: 0, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3285, file: !3, line: 378, column: 3)
!3285 = distinct !DILexicalBlock(scope: !3274, file: !3, line: 378, column: 3)
!3286 = !DILocation(line: 378, column: 8, scope: !3285)
!3287 = !DILocation(line: 0, scope: !3285)
!3288 = !DILocation(line: 378, column: 25, scope: !3284)
!3289 = !DILocation(line: 378, column: 17, scope: !3284)
!3290 = !DILocation(line: 378, column: 3, scope: !3285)
!3291 = !DILocation(line: 380, column: 12, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3293, file: !3, line: 380, column: 11)
!3293 = distinct !DILexicalBlock(scope: !3284, file: !3, line: 379, column: 5)
!3294 = !DILocation(line: 380, column: 11, scope: !3293)
!3295 = !DILocation(line: 383, column: 27, scope: !3293)
!3296 = !DILocation(line: 384, column: 11, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3293, file: !3, line: 384, column: 11)
!3298 = !DILocation(line: 384, column: 27, scope: !3297)
!3299 = !DILocation(line: 385, column: 4, scope: !3297)
!3300 = !DILocation(line: 385, column: 31, scope: !3297)
!3301 = !DILocation(line: 385, column: 7, scope: !3297)
!3302 = !DILocation(line: 384, column: 11, scope: !3293)
!3303 = !DILocation(line: 389, column: 18, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3274, file: !3, line: 389, column: 7)
!3305 = !DILocation(line: 378, column: 29, scope: !3284)
!3306 = !DILocation(line: 378, column: 3, scope: !3284)
!3307 = distinct !{!3307, !3290, !3308}
!3308 = !DILocation(line: 387, column: 5, scope: !3285)
!3309 = !DILocation(line: 389, column: 9, scope: !3304)
!3310 = !DILocation(line: 389, column: 7, scope: !3274)
!3311 = !DILocation(line: 392, column: 19, scope: !3274)
!3312 = !DILocation(line: 392, column: 17, scope: !3274)
!3313 = !DILocation(line: 393, column: 3, scope: !3274)
!3314 = !DILocation(line: 394, column: 1, scope: !3274)
!3315 = distinct !DISubprogram(name: "most_expensive_mult_to_index", scope: !3, file: !3, line: 490, type: !3316, scopeLine: 492, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3318)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{null, !656, !2355, !2703, !532}
!3318 = !{!3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335}
!3319 = !DILocalVariable(name: "type", arg: 1, scope: !3315, file: !3, line: 490, type: !656)
!3320 = !DILocalVariable(name: "parts", arg: 2, scope: !3315, file: !3, line: 490, type: !2355)
!3321 = !DILocalVariable(name: "addr", arg: 3, scope: !3315, file: !3, line: 491, type: !2703)
!3322 = !DILocalVariable(name: "speed", arg: 4, scope: !3315, file: !3, line: 491, type: !532)
!3323 = !DILocalVariable(name: "as", scope: !3315, file: !3, line: 493, type: !2363)
!3324 = !DILocalVariable(name: "address_mode", scope: !3315, file: !3, line: 494, type: !5)
!3325 = !DILocalVariable(name: "coef", scope: !3315, file: !3, line: 495, type: !627)
!3326 = !DILocalVariable(name: "best_mult", scope: !3315, file: !3, line: 496, type: !704)
!3327 = !DILocalVariable(name: "amult", scope: !3315, file: !3, line: 496, type: !704)
!3328 = !DILocalVariable(name: "amult_neg", scope: !3315, file: !3, line: 496, type: !704)
!3329 = !DILocalVariable(name: "best_mult_cost", scope: !3315, file: !3, line: 497, type: !7)
!3330 = !DILocalVariable(name: "acost", scope: !3315, file: !3, line: 497, type: !7)
!3331 = !DILocalVariable(name: "mult_elt", scope: !3315, file: !3, line: 498, type: !656)
!3332 = !DILocalVariable(name: "elt", scope: !3315, file: !3, line: 498, type: !656)
!3333 = !DILocalVariable(name: "i", scope: !3315, file: !3, line: 499, type: !7)
!3334 = !DILocalVariable(name: "j", scope: !3315, file: !3, line: 499, type: !7)
!3335 = !DILocalVariable(name: "op_code", scope: !3315, file: !3, line: 500, type: !134)
!3336 = !DILocation(line: 0, scope: !3315)
!3337 = !DILocation(line: 493, column: 21, scope: !3315)
!3338 = !DILocation(line: 494, column: 55, scope: !3315)
!3339 = !DILocation(line: 494, column: 36, scope: !3315)
!3340 = !DILocation(line: 496, column: 3, scope: !3315)
!3341 = !DILocation(line: 502, column: 15, scope: !3315)
!3342 = !DILocation(line: 0, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3344, file: !3, line: 503, column: 3)
!3344 = distinct !DILexicalBlock(scope: !3315, file: !3, line: 503, column: 3)
!3345 = !DILocation(line: 0, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 509, column: 11)
!3347 = distinct !DILexicalBlock(scope: !3343, file: !3, line: 504, column: 5)
!3348 = !DILocation(line: 503, column: 8, scope: !3344)
!3349 = !DILocation(line: 497, column: 12, scope: !3315)
!3350 = !DILocation(line: 503, column: 25, scope: !3343)
!3351 = !DILocation(line: 503, column: 17, scope: !3343)
!3352 = !DILocation(line: 503, column: 3, scope: !3344)
!3353 = !DILocation(line: 505, column: 12, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 505, column: 11)
!3355 = !DILocation(line: 505, column: 11, scope: !3347)
!3356 = !DILocation(line: 508, column: 14, scope: !3347)
!3357 = !DILocation(line: 509, column: 16, scope: !3346)
!3358 = !DILocation(line: 510, column: 4, scope: !3346)
!3359 = !DILocation(line: 510, column: 47, scope: !3346)
!3360 = !DILocation(line: 510, column: 8, scope: !3346)
!3361 = !DILocation(line: 509, column: 11, scope: !3347)
!3362 = !DILocation(line: 513, column: 15, scope: !3347)
!3363 = !DILocation(line: 515, column: 17, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 515, column: 11)
!3365 = !DILocation(line: 515, column: 11, scope: !3347)
!3366 = !DILocation(line: 518, column: 30, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3364, file: !3, line: 516, column: 2)
!3368 = !DILocation(line: 519, column: 2, scope: !3367)
!3369 = !DILocation(line: 503, column: 29, scope: !3343)
!3370 = !DILocation(line: 503, column: 3, scope: !3343)
!3371 = distinct !{!3371, !3352, !3372}
!3372 = !DILocation(line: 520, column: 5, scope: !3344)
!3373 = !DILocation(line: 522, column: 8, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3315, file: !3, line: 522, column: 7)
!3375 = !DILocation(line: 522, column: 7, scope: !3315)
!3376 = !DILocation(line: 0, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3378, file: !3, line: 527, column: 5)
!3378 = distinct !DILexicalBlock(scope: !3379, file: !3, line: 526, column: 3)
!3379 = distinct !DILexicalBlock(scope: !3315, file: !3, line: 526, column: 3)
!3380 = !DILocation(line: 0, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3377, file: !3, line: 531, column: 11)
!3382 = !DILocation(line: 0, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3381, file: !3, line: 533, column: 16)
!3384 = !DILocation(line: 526, column: 3, scope: !3379)
!3385 = !DILocation(line: 526, column: 29, scope: !3378)
!3386 = !DILocation(line: 526, column: 14, scope: !3379)
!3387 = !DILocation(line: 526, column: 21, scope: !3378)
!3388 = !DILocation(line: 528, column: 29, scope: !3377)
!3389 = !DILocation(line: 529, column: 19, scope: !3377)
!3390 = !DILocation(line: 529, column: 44, scope: !3377)
!3391 = !DILocation(line: 531, column: 11, scope: !3381)
!3392 = !DILocation(line: 531, column: 11, scope: !3377)
!3393 = !DILocation(line: 533, column: 16, scope: !3383)
!3394 = !DILocation(line: 533, column: 16, scope: !3381)
!3395 = !DILocation(line: 537, column: 4, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3383, file: !3, line: 536, column: 2)
!3397 = !DILocation(line: 537, column: 20, scope: !3396)
!3398 = !DILocation(line: 538, column: 5, scope: !3396)
!3399 = !DILocation(line: 539, column: 4, scope: !3396)
!3400 = !DILocation(line: 542, column: 13, scope: !3377)
!3401 = !DILocation(line: 543, column: 11, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3377, file: !3, line: 543, column: 11)
!3403 = !DILocation(line: 543, column: 11, scope: !3377)
!3404 = !DILocation(line: 544, column: 13, scope: !3402)
!3405 = !DILocation(line: 544, column: 2, scope: !3402)
!3406 = !DILocation(line: 545, column: 24, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3402, file: !3, line: 545, column: 16)
!3408 = !DILocation(line: 545, column: 16, scope: !3402)
!3409 = !DILocation(line: 548, column: 13, scope: !3407)
!3410 = !DILocation(line: 0, scope: !3379)
!3411 = !DILocation(line: 526, column: 33, scope: !3378)
!3412 = !DILocation(line: 526, column: 3, scope: !3378)
!3413 = distinct !{!3413, !3384, !3414}
!3414 = !DILocation(line: 549, column: 5, scope: !3379)
!3415 = !DILocation(line: 550, column: 11, scope: !3315)
!3416 = !DILocation(line: 552, column: 10, scope: !3315)
!3417 = !DILocation(line: 552, column: 16, scope: !3315)
!3418 = !DILocation(line: 553, column: 37, scope: !3315)
!3419 = !DILocation(line: 553, column: 17, scope: !3315)
!3420 = !DILocation(line: 553, column: 10, scope: !3315)
!3421 = !DILocation(line: 553, column: 15, scope: !3315)
!3422 = !DILocation(line: 554, column: 1, scope: !3315)
!3423 = distinct !DISubprogram(name: "move_hint_to_base", scope: !3, file: !3, line: 399, type: !3424, scopeLine: 401, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3426)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{null, !656, !2355, !656, !2703}
!3426 = !{!3427, !3428, !3429, !3430, !3431, !3432, !3433}
!3427 = !DILocalVariable(name: "type", arg: 1, scope: !3423, file: !3, line: 399, type: !656)
!3428 = !DILocalVariable(name: "parts", arg: 2, scope: !3423, file: !3, line: 399, type: !2355)
!3429 = !DILocalVariable(name: "base_hint", arg: 3, scope: !3423, file: !3, line: 399, type: !656)
!3430 = !DILocalVariable(name: "addr", arg: 4, scope: !3423, file: !3, line: 400, type: !2703)
!3431 = !DILocalVariable(name: "i", scope: !3423, file: !3, line: 402, type: !7)
!3432 = !DILocalVariable(name: "val", scope: !3423, file: !3, line: 403, type: !656)
!3433 = !DILocalVariable(name: "qual", scope: !3423, file: !3, line: 404, type: !533)
!3434 = !DILocation(line: 0, scope: !3423)
!3435 = !DILocation(line: 0, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3437, file: !3, line: 406, column: 3)
!3437 = distinct !DILexicalBlock(scope: !3423, file: !3, line: 406, column: 3)
!3438 = !DILocation(line: 406, column: 8, scope: !3437)
!3439 = !DILocation(line: 0, scope: !3437)
!3440 = !DILocation(line: 406, column: 25, scope: !3436)
!3441 = !DILocation(line: 406, column: 17, scope: !3436)
!3442 = !DILocation(line: 406, column: 3, scope: !3437)
!3443 = !DILocation(line: 408, column: 12, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3445, file: !3, line: 408, column: 11)
!3445 = distinct !DILexicalBlock(scope: !3436, file: !3, line: 407, column: 5)
!3446 = !DILocation(line: 408, column: 11, scope: !3445)
!3447 = !DILocation(line: 411, column: 27, scope: !3445)
!3448 = !DILocation(line: 412, column: 11, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3445, file: !3, line: 412, column: 11)
!3450 = !DILocation(line: 412, column: 11, scope: !3445)
!3451 = !DILocation(line: 416, column: 18, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3423, file: !3, line: 416, column: 7)
!3453 = !DILocation(line: 406, column: 29, scope: !3436)
!3454 = !DILocation(line: 406, column: 3, scope: !3436)
!3455 = distinct !{!3455, !3442, !3456}
!3456 = !DILocation(line: 414, column: 5, scope: !3437)
!3457 = !DILocation(line: 416, column: 9, scope: !3452)
!3458 = !DILocation(line: 416, column: 7, scope: !3423)
!3459 = !DILocation(line: 423, column: 10, scope: !3423)
!3460 = !DILocation(line: 424, column: 32, scope: !3423)
!3461 = !DILocation(line: 424, column: 10, scope: !3423)
!3462 = !DILocation(line: 425, column: 17, scope: !3423)
!3463 = !DILocation(line: 425, column: 10, scope: !3423)
!3464 = !DILocation(line: 425, column: 15, scope: !3423)
!3465 = !DILocation(line: 426, column: 3, scope: !3423)
!3466 = !DILocation(line: 427, column: 1, scope: !3423)
!3467 = distinct !DISubprogram(name: "move_pointer_to_base", scope: !3, file: !3, line: 433, type: !3275, scopeLine: 434, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3468)
!3468 = !{!3469, !3470, !3471, !3472}
!3469 = !DILocalVariable(name: "parts", arg: 1, scope: !3467, file: !3, line: 433, type: !2355)
!3470 = !DILocalVariable(name: "addr", arg: 2, scope: !3467, file: !3, line: 433, type: !2703)
!3471 = !DILocalVariable(name: "i", scope: !3467, file: !3, line: 435, type: !7)
!3472 = !DILocalVariable(name: "val", scope: !3467, file: !3, line: 436, type: !656)
!3473 = !DILocation(line: 0, scope: !3467)
!3474 = !DILocation(line: 0, scope: !3475)
!3475 = distinct !DILexicalBlock(scope: !3476, file: !3, line: 438, column: 3)
!3476 = distinct !DILexicalBlock(scope: !3467, file: !3, line: 438, column: 3)
!3477 = !DILocation(line: 438, column: 8, scope: !3476)
!3478 = !DILocation(line: 0, scope: !3476)
!3479 = !DILocation(line: 438, column: 25, scope: !3475)
!3480 = !DILocation(line: 438, column: 17, scope: !3475)
!3481 = !DILocation(line: 438, column: 3, scope: !3476)
!3482 = !DILocation(line: 440, column: 12, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3484, file: !3, line: 440, column: 11)
!3484 = distinct !DILexicalBlock(scope: !3475, file: !3, line: 439, column: 5)
!3485 = !DILocation(line: 440, column: 11, scope: !3484)
!3486 = !DILocation(line: 443, column: 27, scope: !3484)
!3487 = !DILocation(line: 444, column: 11, scope: !3488)
!3488 = distinct !DILexicalBlock(scope: !3484, file: !3, line: 444, column: 11)
!3489 = !DILocation(line: 438, column: 29, scope: !3475)
!3490 = !DILocation(line: 438, column: 3, scope: !3475)
!3491 = distinct !{!3491, !3481, !3492}
!3492 = !DILocation(line: 446, column: 5, scope: !3476)
!3493 = !DILocation(line: 448, column: 18, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3467, file: !3, line: 448, column: 7)
!3495 = !DILocation(line: 448, column: 9, scope: !3494)
!3496 = !DILocation(line: 448, column: 7, scope: !3467)
!3497 = !DILocation(line: 451, column: 10, scope: !3467)
!3498 = !DILocation(line: 451, column: 15, scope: !3467)
!3499 = !DILocation(line: 452, column: 3, scope: !3467)
!3500 = !DILocation(line: 453, column: 1, scope: !3467)
!3501 = distinct !DISubprogram(name: "double_int_one_p", scope: !705, file: !705, line: 160, type: !3267, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3502)
!3502 = !{!3503}
!3503 = !DILocalVariable(name: "cst", arg: 1, scope: !3501, file: !705, line: 160, type: !704)
!3504 = !DILocation(line: 162, column: 18, scope: !3501)
!3505 = !DILocation(line: 162, column: 23, scope: !3501)
!3506 = !DILocation(line: 162, column: 10, scope: !3501)
!3507 = !DILocation(line: 162, column: 3, scope: !3501)
!3508 = distinct !DISubprogram(name: "add_to_parts", scope: !3, file: !3, line: 458, type: !3509, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3511)
!3509 = !DISubroutineType(types: !3510)
!3510 = !{null, !2355, !656}
!3511 = !{!3512, !3513, !3514}
!3512 = !DILocalVariable(name: "parts", arg: 1, scope: !3508, file: !3, line: 458, type: !2355)
!3513 = !DILocalVariable(name: "elt", arg: 2, scope: !3508, file: !3, line: 458, type: !656)
!3514 = !DILocalVariable(name: "type", scope: !3508, file: !3, line: 460, type: !656)
!3515 = !DILocation(line: 0, scope: !3508)
!3516 = !DILocation(line: 462, column: 15, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3508, file: !3, line: 462, column: 7)
!3518 = !DILocation(line: 462, column: 8, scope: !3517)
!3519 = !DILocation(line: 462, column: 7, scope: !3508)
!3520 = !DILocation(line: 464, column: 22, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 463, column: 5)
!3522 = !DILocation(line: 464, column: 20, scope: !3521)
!3523 = !DILocation(line: 465, column: 7, scope: !3521)
!3524 = !DILocation(line: 468, column: 15, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3508, file: !3, line: 468, column: 7)
!3526 = !DILocation(line: 468, column: 8, scope: !3525)
!3527 = !DILocation(line: 468, column: 7, scope: !3508)
!3528 = !DILocation(line: 470, column: 19, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !3525, file: !3, line: 469, column: 5)
!3530 = !DILocation(line: 471, column: 7, scope: !3529)
!3531 = !DILocation(line: 475, column: 10, scope: !3508)
!3532 = !DILocation(line: 476, column: 7, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3508, file: !3, line: 476, column: 7)
!3534 = !DILocation(line: 476, column: 7, scope: !3508)
!3535 = !DILocation(line: 477, column: 19, scope: !3533)
!3536 = !DILocation(line: 477, column: 17, scope: !3533)
!3537 = !DILocation(line: 477, column: 5, scope: !3533)
!3538 = !DILocation(line: 481, column: 19, scope: !3533)
!3539 = !DILocation(line: 481, column: 17, scope: !3533)
!3540 = !DILocation(line: 483, column: 1, scope: !3508)
!3541 = distinct !DISubprogram(name: "fixed_address_object_p", scope: !3, file: !3, line: 361, type: !3542, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3544)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{!532, !656}
!3544 = !{!3545}
!3545 = !DILocalVariable(name: "obj", arg: 1, scope: !3541, file: !3, line: 361, type: !656)
!3546 = !DILocation(line: 0, scope: !3541)
!3547 = !DILocation(line: 363, column: 11, scope: !3541)
!3548 = !DILocation(line: 363, column: 27, scope: !3541)
!3549 = !DILocation(line: 364, column: 4, scope: !3541)
!3550 = !DILocation(line: 364, column: 8, scope: !3541)
!3551 = !DILocation(line: 365, column: 8, scope: !3541)
!3552 = !DILocation(line: 365, column: 11, scope: !3541)
!3553 = !DILocation(line: 366, column: 4, scope: !3541)
!3554 = !DILocation(line: 366, column: 9, scope: !3541)
!3555 = !DILocation(line: 363, column: 3, scope: !3541)
!3556 = distinct !DISubprogram(name: "shwi_to_double_int", scope: !705, file: !705, line: 72, type: !3557, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3559)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{!704, !627}
!3559 = !{!3560, !3561}
!3560 = !DILocalVariable(name: "cst", arg: 1, scope: !3556, file: !705, line: 72, type: !627)
!3561 = !DILocalVariable(name: "r", scope: !3556, file: !705, line: 74, type: !704)
!3562 = !DILocation(line: 0, scope: !3556)
!3563 = !DILocation(line: 79, column: 3, scope: !3556)
!3564 = distinct !DISubprogram(name: "double_int_equal_p", scope: !705, file: !705, line: 176, type: !3565, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3567)
!3565 = !DISubroutineType(types: !3566)
!3566 = !{!532, !704, !704}
!3567 = !{!3568, !3569}
!3568 = !DILocalVariable(name: "cst1", arg: 1, scope: !3564, file: !705, line: 176, type: !704)
!3569 = !DILocalVariable(name: "cst2", arg: 2, scope: !3564, file: !705, line: 176, type: !704)
!3570 = !DILocation(line: 178, column: 19, scope: !3564)
!3571 = !DILocation(line: 178, column: 31, scope: !3564)
!3572 = !DILocation(line: 178, column: 44, scope: !3564)
!3573 = !DILocation(line: 178, column: 3, scope: !3564)
!3574 = distinct !DISubprogram(name: "valid_mem_ref_p", scope: !3, file: !3, line: 325, type: !3575, scopeLine: 327, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3577)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!532, !5, !2363, !2355}
!3577 = !{!3578, !3579, !3580, !3581}
!3578 = !DILocalVariable(name: "mode", arg: 1, scope: !3574, file: !3, line: 325, type: !5)
!3579 = !DILocalVariable(name: "as", arg: 2, scope: !3574, file: !3, line: 325, type: !2363)
!3580 = !DILocalVariable(name: "addr", arg: 3, scope: !3574, file: !3, line: 326, type: !2355)
!3581 = !DILocalVariable(name: "address", scope: !3574, file: !3, line: 328, type: !540)
!3582 = !DILocation(line: 0, scope: !3574)
!3583 = !DILocation(line: 330, column: 13, scope: !3574)
!3584 = !DILocation(line: 331, column: 8, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3574, file: !3, line: 331, column: 7)
!3586 = !DILocation(line: 331, column: 7, scope: !3574)
!3587 = !DILocation(line: 334, column: 10, scope: !3574)
!3588 = !DILocation(line: 334, column: 3, scope: !3574)
!3589 = !DILocation(line: 335, column: 1, scope: !3574)
