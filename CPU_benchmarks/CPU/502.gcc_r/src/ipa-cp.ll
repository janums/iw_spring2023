; ModuleID = 'ipa-cp.bc'
source_filename = "ipa-cp.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
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
%struct.ipa_opt_pass_d = type { %struct.opt_pass, void ()*, {}*, void ()*, void (%struct.cgraph_node*)*, void (%struct.cgraph_node*, %union.gimple_statement_d**)*, i32, i32 (%struct.cgraph_node*)*, void (%struct.varpool_node*)* }
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
%struct.varpool_node = type { %union.tree_node*, %struct.varpool_node*, %struct.varpool_node*, %struct.varpool_node*, i32, i8 }
%struct.VEC_ipa_node_params_t_heap = type { %struct.VEC_ipa_node_params_t_base }
%struct.VEC_ipa_node_params_t_base = type { i32, i32, [1 x %struct.ipa_node_params] }
%struct.ipa_node_params = type { i32, %struct.ipa_param_descriptor*, %struct.ipa_param_call_note*, %struct.cgraph_node*, i64, i8 }
%struct.ipa_param_descriptor = type { %struct.ipcp_lattice, %union.tree_node*, i8 }
%struct.ipcp_lattice = type { i32, %union.tree_node* }
%struct.ipa_param_call_note = type { i64, %struct.ipa_param_call_note*, %union.gimple_statement_d*, i32, i32, i32, i16, i8 }
%struct.VEC_ipa_edge_args_t_gc = type { %struct.VEC_ipa_edge_args_t_base }
%struct.VEC_ipa_edge_args_t_base = type { i32, i32, [1 x %struct.ipa_edge_args] }
%struct.ipa_edge_args = type { i32, %struct.ipa_jump_func* }
%struct.ipa_jump_func = type { i32, %union.jump_func_value }
%union.jump_func_value = type { %struct.ipa_ancestor_jf_data }
%struct.ipa_ancestor_jf_data = type { i64, %union.tree_node*, i32 }
%struct.param_info = type { i8*, i32, i8, i32, i32, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.VEC_cgraph_edge_p_heap = type { %struct.VEC_cgraph_edge_p_base }
%struct.VEC_cgraph_edge_p_base = type { i32, i32, [1 x %struct.cgraph_edge*] }
%struct.fibheap = type { i64, %struct.fibnode*, %struct.fibnode* }
%struct.fibnode = type { %struct.fibnode*, %struct.fibnode*, %struct.fibnode*, %struct.fibnode*, i64, i8*, i32 }
%struct.ipa_func_list = type { %struct.cgraph_node*, %struct.ipa_func_list* }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.ipa_pass_through_data = type { %union.tree_node*, i32, i32 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [3 x i8] c"cp\00", align 1
@pass_ipa_cp = dso_local local_unnamed_addr global { %struct.opt_pass, void ()*, void (%struct.cgraph_node_set_def*)*, void ()*, void (%struct.cgraph_node*)*, void (%struct.cgraph_node*, %union.gimple_statement_d**)*, i32, i32 (%struct.cgraph_node*)*, void (%struct.varpool_node*)* } { %struct.opt_pass { i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8 ()* @cgraph_gate_cp, i32 ()* @ipcp_driver, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 6, i32 0, i32 0, i32 0, i32 0, i32 385 }, void ()* @ipcp_generate_summary, void (%struct.cgraph_node_set_def*)* @ipcp_write_summary, void ()* @ipcp_read_summary, void (%struct.cgraph_node*)* null, void (%struct.cgraph_node*, %union.gimple_statement_d**)* @lto_ipa_fixup_call_notes, i32 0, i32 (%struct.cgraph_node*)* null, void (%struct.varpool_node*)* null }, align 8, !dbg !0
@flag_ipa_cp = external dso_local local_unnamed_addr global i32, align 4
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"\0AIPA structures before propagation:\0A\00", align 1
@dump_flags = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"\0AProfiling info after insert stage:\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"\0AIPA constant propagation end\0A\00", align 1
@n_cloning_candidates = internal unnamed_addr global i32 0, align 4, !dbg !2063
@.str.4 = private unnamed_addr constant [22 x i8] c"\0AIPA iterate stage:\0A\0A\00", align 1
@in_lto_p = external dso_local local_unnamed_addr global i8, align 1
@cgraph_nodes = external dso_local local_unnamed_addr global %struct.cgraph_node*, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"ipa-cp.c\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"\0AIPA lattices after propagation:\0A\00", align 1
@ipa_node_params_vector = external dso_local global %struct.VEC_ipa_node_params_t_heap*, align 8
@.str.8 = private unnamed_addr constant [56 x i8] c"Not considering %s for cloning; body is overwrittable.\0A\00", align 1
@.str.9 = private unnamed_addr constant [58 x i8] c"Not considering %s for cloning; body is not versionable.\0A\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"Not considering %s for cloning; no direct calls.\0A\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"Considering %s for cloning; code would shrink.\0A\00", align 1
@flag_ipa_cp_clone = external dso_local local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [58 x i8] c"Not considering %s for cloning; -fipa-cp-clone disabled.\0A\00", align 1
@.str.13 = private unnamed_addr constant [57 x i8] c"Not considering %s for cloning; optimizing it for size.\0A\00", align 1
@max_count = internal unnamed_addr global i64 0, align 8, !dbg !2065
@.str.14 = private unnamed_addr constant [54 x i8] c"Considering %s for cloning; usually called directly.\0A\00", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"Not considering %s for cloning; no hot calls.\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"Considering %s for cloning.\0A\00", align 1
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@.str.17 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@.str.18 = private unnamed_addr constant [11 x i8] c"\0ALattice:\0A\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"  Node: %s:\0A\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"    param [%d]: \00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"type is CONST \00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"type is TOP\0A\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"type is BOTTOM\0A\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"printing scale for %s: \00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"value is  %ld  \0A\00", align 1
@ipa_edge_args_vector = external dso_local global %struct.VEC_ipa_edge_args_t_gc*, align 8
@cgraph_max_uid = external dso_local local_unnamed_addr global i32, align 4
@cgraph_edge_max_uid = external dso_local local_unnamed_addr global i32, align 4
@tree_code_type = external dso_local local_unnamed_addr constant [0 x i32], align 4
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@.str.27 = private unnamed_addr constant [15 x i8] c"Forcing param \00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c" of node %s to bottom.\0A\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"\0AIPA insert stage:\0A\0A\00", align 1
@dead_nodes = internal unnamed_addr global %struct.bitmap_head_def* null, align 8, !dbg !2067
@compiler_params = external dso_local local_unnamed_addr global %struct.param_info*, align 8
@.str.30 = private unnamed_addr constant [25 x i8] c"considering function %s\0A\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"Not versioning, cold code would grow\00", align 1
@.str.32 = private unnamed_addr constant [50 x i8] c"versioned function %s with growth %i, overall %i\0A\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"skipping function %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [38 x i8] c"Versioning of %s will save code size\0A\00", align 1
@.str.35 = private unnamed_addr constant [51 x i8] c"Cost of versioning %s is %i, (size: %i, freq: %i)\0A\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"  replacing param \00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c" with const \00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"\0ANODE COUNTS :\0A\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"\0ACS COUNTS stage:\0A\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"function %s: \00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"count is  %ld  \0A\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"%s -> %s \00", align 1
@.str.43 = private unnamed_addr constant [34 x i8] c"\0AIPA constant propagation start:\0A\00", align 1
@flag_lto = external dso_local local_unnamed_addr global i32, align 4
@flag_whopr = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !2073 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !2086, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !2087, metadata !DIExpression()), !dbg !2088
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2089
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2090
  ret i32 %call, !dbg !2091
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2092 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2096
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2097
  ret i32 %call, !dbg !2098
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2099 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2153, metadata !DIExpression()), !dbg !2154
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2155
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2155
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2155
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2155
  %cmp = icmp uge i8* %0, %1, !dbg !2155
  %conv1 = zext i1 %cmp to i64, !dbg !2155
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2155
  %tobool = icmp eq i64 %expval, 0, !dbg !2155
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2155

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2155
  br label %cond.end, !dbg !2155

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2155
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2155
  %2 = load i8, i8* %0, align 1, !dbg !2155
  %conv3 = zext i8 %2 to i32, !dbg !2155
  br label %cond.end, !dbg !2155

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2155
  ret i32 %cond, !dbg !2156
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2157 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2159, metadata !DIExpression()), !dbg !2160
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2161
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2161
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2161
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2161
  %cmp = icmp uge i8* %0, %1, !dbg !2161
  %conv1 = zext i1 %cmp to i64, !dbg !2161
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2161
  %tobool = icmp eq i64 %expval, 0, !dbg !2161
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2161

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2161
  br label %cond.end, !dbg !2161

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2161
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2161
  %2 = load i8, i8* %0, align 1, !dbg !2161
  %conv3 = zext i8 %2 to i32, !dbg !2161
  br label %cond.end, !dbg !2161

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2161
  ret i32 %cond, !dbg !2162
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2163 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2164
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2164
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2164
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2164
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2164
  %cmp = icmp uge i8* %1, %2, !dbg !2164
  %conv1 = zext i1 %cmp to i64, !dbg !2164
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2164
  %tobool = icmp eq i64 %expval, 0, !dbg !2164
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2164

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2164
  br label %cond.end, !dbg !2164

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2164
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2164
  %3 = load i8, i8* %1, align 1, !dbg !2164
  %conv3 = zext i8 %3 to i32, !dbg !2164
  br label %cond.end, !dbg !2164

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2164
  ret i32 %cond, !dbg !2165
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2166 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2170, metadata !DIExpression()), !dbg !2171
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2172
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2173
  ret i32 %call, !dbg !2174
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2175 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2179, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2180, metadata !DIExpression()), !dbg !2181
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2182
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2182
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2182
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2182
  %cmp = icmp uge i8* %0, %1, !dbg !2182
  %conv1 = zext i1 %cmp to i64, !dbg !2182
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2182
  %tobool = icmp eq i64 %expval, 0, !dbg !2182
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2182

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2182
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2182
  br label %cond.end, !dbg !2182

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2182
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2182
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2182
  store i8 %conv2, i8* %0, align 1, !dbg !2182
  %conv6 = and i32 %__c, 255, !dbg !2182
  br label %cond.end, !dbg !2182

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2182
  ret i32 %cond, !dbg !2183
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2184 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2186, metadata !DIExpression()), !dbg !2188
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2187, metadata !DIExpression()), !dbg !2188
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2189
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2189
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2189
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2189
  %cmp = icmp uge i8* %0, %1, !dbg !2189
  %conv1 = zext i1 %cmp to i64, !dbg !2189
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2189
  %tobool = icmp eq i64 %expval, 0, !dbg !2189
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2189

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2189
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2189
  br label %cond.end, !dbg !2189

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2189
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2189
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2189
  store i8 %conv2, i8* %0, align 1, !dbg !2189
  %conv6 = and i32 %__c, 255, !dbg !2189
  br label %cond.end, !dbg !2189

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2189
  ret i32 %cond, !dbg !2190
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2191 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2193, metadata !DIExpression()), !dbg !2194
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2195
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2195
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2195
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2195
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2195
  %cmp = icmp uge i8* %1, %2, !dbg !2195
  %conv1 = zext i1 %cmp to i64, !dbg !2195
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2195
  %tobool = icmp eq i64 %expval, 0, !dbg !2195
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2195

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2195
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2195
  br label %cond.end, !dbg !2195

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2195
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2195
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2195
  store i8 %conv4, i8* %1, align 1, !dbg !2195
  %conv6 = and i32 %__c, 255, !dbg !2195
  br label %cond.end, !dbg !2195

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2195
  ret i32 %cond, !dbg !2196
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2197 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2203, metadata !DIExpression()), !dbg !2206
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2204, metadata !DIExpression()), !dbg !2206
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2205, metadata !DIExpression()), !dbg !2206
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2207
  ret i64 %call, !dbg !2208
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2209 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2211, metadata !DIExpression()), !dbg !2212
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2213
  %0 = load i32, i32* %_flags, align 8, !dbg !2213
  %and = lshr i32 %0, 4, !dbg !2213
  %and.lobit = and i32 %and, 1, !dbg !2213
  ret i32 %and.lobit, !dbg !2214
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2215 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2217, metadata !DIExpression()), !dbg !2218
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2219
  %0 = load i32, i32* %_flags, align 8, !dbg !2219
  %and = lshr i32 %0, 5, !dbg !2219
  %and.lobit = and i32 %and, 1, !dbg !2219
  ret i32 %and.lobit, !dbg !2220
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2221 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2224, metadata !DIExpression()), !dbg !2225
  %__c.off = add i32 %__c, 128, !dbg !2226
  %0 = icmp ult i32 %__c.off, 384, !dbg !2226
  br i1 %0, label %cond.true, label %cond.end, !dbg !2226

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2227
  %1 = load i32*, i32** %call, align 8, !dbg !2228
  %idxprom = sext i32 %__c to i64, !dbg !2229
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2229
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2229
  br label %cond.end, !dbg !2230

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2230
  ret i32 %cond, !dbg !2231
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2232 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2234, metadata !DIExpression()), !dbg !2235
  %__c.off = add i32 %__c, 128, !dbg !2236
  %0 = icmp ult i32 %__c.off, 384, !dbg !2236
  br i1 %0, label %cond.true, label %cond.end, !dbg !2236

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2237
  %1 = load i32*, i32** %call, align 8, !dbg !2238
  %idxprom = sext i32 %__c to i64, !dbg !2239
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2239
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2239
  br label %cond.end, !dbg !2240

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2240
  ret i32 %cond, !dbg !2241
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2242 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2247, metadata !DIExpression()), !dbg !2248
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2249
  %conv = trunc i64 %call to i32, !dbg !2250
  ret i32 %conv, !dbg !2251
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2252 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2256, metadata !DIExpression()), !dbg !2257
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2258
  ret i64 %call, !dbg !2259
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2260 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2265, metadata !DIExpression()), !dbg !2266
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2267
  ret i64 %call, !dbg !2268
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2269 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2275, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2276, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2277, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2278, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2279, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 0, metadata !2280, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2281, metadata !DIExpression()), !dbg !2285
  br label %while.cond, !dbg !2286

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2287
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2285
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2281, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2280, metadata !DIExpression()), !dbg !2285
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2288
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2286

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2289
  %div = lshr i64 %add, 1, !dbg !2291
  call void @llvm.dbg.value(metadata i64 %div, metadata !2282, metadata !DIExpression()), !dbg !2285
  %mul = mul i64 %div, %__size, !dbg !2292
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2293
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2283, metadata !DIExpression()), !dbg !2285
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2294
  call void @llvm.dbg.value(metadata i32 %call, metadata !2284, metadata !DIExpression()), !dbg !2285
  %cmp1 = icmp slt i32 %call, 0, !dbg !2295
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2297

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2298
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2300

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2301
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2280, metadata !DIExpression()), !dbg !2285
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2285
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2285
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2281, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2280, metadata !DIExpression()), !dbg !2285
  br label %while.cond, !dbg !2286, !llvm.loop !2302

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2285
  ret i8* %retval.0, !dbg !2304
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2305 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2311, metadata !DIExpression()), !dbg !2312
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2313
  ret double %call, !dbg !2314
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2315 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2324, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2325, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i32 %base, metadata !2326, metadata !DIExpression()), !dbg !2327
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2328
  ret i64 %call, !dbg !2329
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2330 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2336, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2337, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata i32 %base, metadata !2338, metadata !DIExpression()), !dbg !2339
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2340
  ret i64 %call, !dbg !2341
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2342 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2353, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2354, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i32 %base, metadata !2355, metadata !DIExpression()), !dbg !2356
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2357
  ret i64 %call, !dbg !2358
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2359 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2363, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2364, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata i32 %base, metadata !2365, metadata !DIExpression()), !dbg !2366
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2367
  ret i64 %call, !dbg !2368
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2369 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2411, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2412, metadata !DIExpression()), !dbg !2413
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2414
  ret i32 %call, !dbg !2415
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2416 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2418, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2419, metadata !DIExpression()), !dbg !2420
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2421
  ret i32 %call, !dbg !2422
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2423 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2427, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2428, metadata !DIExpression()), !dbg !2429
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2430
  ret i32 %call, !dbg !2431
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2432 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2436, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2437, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2438, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2439, metadata !DIExpression()), !dbg !2440
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2441
  ret i32 %call, !dbg !2442
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2443 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2447, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2448, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2449, metadata !DIExpression()), !dbg !2450
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2449, metadata !DIExpression(DW_OP_deref)), !dbg !2450
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2451
  ret i32 %call, !dbg !2452
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2453 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2457, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2458, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2459, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2460, metadata !DIExpression()), !dbg !2461
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2460, metadata !DIExpression(DW_OP_deref)), !dbg !2461
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2462
  ret i32 %call, !dbg !2463
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2464 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2488, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2489, metadata !DIExpression()), !dbg !2490
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2491
  ret i32 %call, !dbg !2492
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2493 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2495, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2496, metadata !DIExpression()), !dbg !2497
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2498
  ret i32 %call, !dbg !2499
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2500 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2504, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2505, metadata !DIExpression()), !dbg !2506
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2507
  ret i32 %call, !dbg !2508
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2509 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2513, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2514, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2515, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2516, metadata !DIExpression()), !dbg !2517
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2518
  ret i32 %call, !dbg !2519
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @cgraph_gate_cp() #5 !dbg !2520 {
entry:
  %0 = load i32, i32* @flag_ipa_cp, align 4, !dbg !2521
  %conv = trunc i32 %0 to i8, !dbg !2521
  ret i8 %conv, !dbg !2522
}

; Function Attrs: nounwind uwtable
define internal i32 @ipcp_driver() #5 !dbg !2523 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2524
  %call = tail call zeroext i8 @cgraph_remove_unreachable_nodes(i8 zeroext 1, %struct._IO_FILE* %0) #6, !dbg !2525
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2526
  %tobool = icmp eq %struct._IO_FILE* %1, null, !dbg !2526
  br i1 %tobool, label %if.end4, label %if.then, !dbg !2528

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2529
  %2 = load i32, i32* @dump_flags, align 4, !dbg !2531
  %and = and i32 %2, 8, !dbg !2533
  %tobool2 = icmp eq i32 %and, 0, !dbg !2533
  br i1 %tobool2, label %if.end, label %if.then3, !dbg !2534

if.then3:                                         ; preds = %if.then
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2535
  tail call void @ipa_print_all_params(%struct._IO_FILE* %3) #6, !dbg !2536
  br label %if.end, !dbg !2536

if.end:                                           ; preds = %if.then, %if.then3
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2537
  tail call void @ipa_print_all_jump_functions(%struct._IO_FILE* %4) #6, !dbg !2538
  br label %if.end4, !dbg !2539

if.end4:                                          ; preds = %entry, %if.end
  tail call fastcc void @ipcp_iterate_stage() #7, !dbg !2540
  tail call fastcc void @ipcp_insert_stage() #7, !dbg !2541
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2542
  %tobool5 = icmp eq %struct._IO_FILE* %5, null, !dbg !2542
  br i1 %tobool5, label %if.end10, label %land.lhs.true, !dbg !2544

land.lhs.true:                                    ; preds = %if.end4
  %6 = load i32, i32* @dump_flags, align 4, !dbg !2545
  %and6 = and i32 %6, 8, !dbg !2546
  %tobool7 = icmp eq i32 %and6, 0, !dbg !2546
  br i1 %tobool7, label %if.end10, label %if.then8, !dbg !2547

if.then8:                                         ; preds = %land.lhs.true
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %5, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2548
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2550
  tail call fastcc void @ipcp_print_profile_data(%struct._IO_FILE* %7) #7, !dbg !2551
  br label %if.end10, !dbg !2552

if.end10:                                         ; preds = %land.lhs.true, %if.end4, %if.then8
  tail call void @free_all_ipa_structures_after_ipa_cp() #6, !dbg !2553
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2554
  %tobool11 = icmp eq %struct._IO_FILE* %8, null, !dbg !2554
  br i1 %tobool11, label %if.end14, label %if.then12, !dbg !2556

if.then12:                                        ; preds = %if.end10
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !2557
  br label %if.end14, !dbg !2557

if.end14:                                         ; preds = %if.end10, %if.then12
  ret i32 0, !dbg !2558
}

; Function Attrs: nounwind uwtable
define internal void @ipcp_generate_summary() #5 !dbg !2559 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2560
  %tobool = icmp eq %struct._IO_FILE* %0, null, !dbg !2560
  br i1 %tobool, label %if.end, label %if.then, !dbg !2562

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.43, i64 0, i64 0)) #6, !dbg !2563
  br label %if.end, !dbg !2563

if.end:                                           ; preds = %entry, %if.then
  tail call fastcc void @ipa_check_create_node_params() #7, !dbg !2564
  tail call fastcc void @ipa_check_create_edge_args() #7, !dbg !2565
  tail call void @ipa_register_cgraph_hooks() #6, !dbg !2566
  tail call fastcc void @ipcp_init_stage() #7, !dbg !2567
  ret void, !dbg !2568
}

; Function Attrs: nounwind uwtable
define internal void @ipcp_write_summary(%struct.cgraph_node_set_def* %set) #5 !dbg !2569 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node_set_def* %set, metadata !2574, metadata !DIExpression()), !dbg !2575
  tail call void @ipa_prop_write_jump_functions(%struct.cgraph_node_set_def* %set) #6, !dbg !2576
  ret void, !dbg !2577
}

; Function Attrs: nounwind uwtable
define internal void @ipcp_read_summary() #5 !dbg !2578 {
entry:
  tail call void @ipa_prop_read_jump_functions() #6, !dbg !2579
  ret void, !dbg !2580
}

declare dso_local void @lto_ipa_fixup_call_notes(%struct.cgraph_node*, %union.gimple_statement_d**) #2

declare dso_local zeroext i8 @cgraph_remove_unreachable_nodes(i8 zeroext, %struct._IO_FILE*) local_unnamed_addr #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

declare dso_local void @ipa_print_all_params(%struct._IO_FILE*) local_unnamed_addr #2

declare dso_local void @ipa_print_all_jump_functions(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ipcp_iterate_stage() unnamed_addr #5 !dbg !2581 {
entry:
  store i32 0, i32* @n_cloning_candidates, align 4, !dbg !2584
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2585
  %tobool = icmp eq %struct._IO_FILE* %0, null, !dbg !2585
  br i1 %tobool, label %if.end, label %if.then, !dbg !2587

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !2588
  br label %if.end, !dbg !2588

if.end:                                           ; preds = %entry, %if.then
  %1 = load i8, i8* @in_lto_p, align 1, !dbg !2589
  %tobool1 = icmp eq i8 %1, 0, !dbg !2589
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !2591

if.then2:                                         ; preds = %if.end
  tail call void @ipa_update_after_lto_read() #6, !dbg !2592
  br label %if.end3, !dbg !2592

if.end3:                                          ; preds = %if.end, %if.then2
  br label %for.cond, !dbg !2593

for.cond:                                         ; preds = %for.body, %if.end3
  %node.0.in = phi %struct.cgraph_node** [ @cgraph_nodes, %if.end3 ], [ %next, %for.body ]
  %node.0 = load %struct.cgraph_node*, %struct.cgraph_node** %node.0.in, align 8, !dbg !2595
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.0, metadata !2583, metadata !DIExpression()), !dbg !2596
  %tobool4 = icmp eq %struct.cgraph_node* %node.0, null, !dbg !2597
  br i1 %tobool4, label %for.end, label %for.body, !dbg !2597

for.body:                                         ; preds = %for.cond
  tail call fastcc void @ipcp_initialize_node_lattices(%struct.cgraph_node* nonnull %node.0) #7, !dbg !2598
  tail call fastcc void @ipcp_compute_node_scale(%struct.cgraph_node* nonnull %node.0) #7, !dbg !2601
  %next = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 3, !dbg !2602
  br label %for.cond, !dbg !2603, !llvm.loop !2604

for.end:                                          ; preds = %for.cond
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2606
  %tobool5 = icmp eq %struct._IO_FILE* %2, null, !dbg !2606
  br i1 %tobool5, label %if.end8, label %land.lhs.true, !dbg !2608

land.lhs.true:                                    ; preds = %for.end
  %3 = load i32, i32* @dump_flags, align 4, !dbg !2609
  %and = and i32 %3, 8, !dbg !2610
  %tobool6 = icmp eq i32 %and, 0, !dbg !2610
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !2611

if.then7:                                         ; preds = %land.lhs.true
  tail call fastcc void @ipcp_print_all_lattices(%struct._IO_FILE* nonnull %2) #7, !dbg !2612
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2614
  tail call fastcc void @ipcp_function_scale_print(%struct._IO_FILE* %4) #7, !dbg !2615
  br label %if.end8, !dbg !2616

if.end8:                                          ; preds = %land.lhs.true, %for.end, %if.then7
  tail call fastcc void @ipcp_propagate_stage() #7, !dbg !2617
  %call9 = tail call fastcc zeroext i8 @ipcp_change_tops_to_bottom() #7, !dbg !2618
  %tobool10 = icmp eq i8 %call9, 0, !dbg !2618
  br i1 %tobool10, label %if.end13, label %if.then11, !dbg !2620

if.then11:                                        ; preds = %if.end8
  %5 = load i32, i32* @n_cloning_candidates, align 4, !dbg !2621
  %tobool12 = icmp eq i32 %5, 0, !dbg !2621
  br i1 %tobool12, label %cond.true, label %cond.end, !dbg !2621

cond.true:                                        ; preds = %if.then11
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 760, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !2621
  br label %cond.end, !dbg !2621

cond.end:                                         ; preds = %if.then11, %cond.true
  tail call fastcc void @ipcp_propagate_stage() #7, !dbg !2623
  br label %if.end13, !dbg !2624

if.end13:                                         ; preds = %if.end8, %cond.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2625
  %tobool14 = icmp eq %struct._IO_FILE* %6, null, !dbg !2625
  br i1 %tobool14, label %if.end21, label %if.then15, !dbg !2627

if.then15:                                        ; preds = %if.end13
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %6, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !2628
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2630
  tail call fastcc void @ipcp_print_all_lattices(%struct._IO_FILE* %7) #7, !dbg !2631
  %8 = load i32, i32* @dump_flags, align 4, !dbg !2632
  %and17 = and i32 %8, 8, !dbg !2634
  %tobool18 = icmp eq i32 %and17, 0, !dbg !2634
  br i1 %tobool18, label %if.end21, label %if.then19, !dbg !2635

if.then19:                                        ; preds = %if.then15
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2636
  tail call fastcc void @ipcp_print_profile_data(%struct._IO_FILE* %9) #7, !dbg !2637
  br label %if.end21, !dbg !2637

if.end21:                                         ; preds = %if.then15, %if.end13, %if.then19
  ret void, !dbg !2638
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ipcp_insert_stage() unnamed_addr #5 !dbg !2639 {
entry:
  %redirect_callers = alloca %struct.VEC_cgraph_edge_p_heap*, align 8
  %replace_trees = alloca %struct.VEC_ipa_replace_map_p_gc*, align 8
  call void @llvm.dbg.value(metadata %struct.cgraph_node* null, metadata !2642, metadata !DIExpression()), !dbg !2676
  %0 = bitcast %struct.VEC_cgraph_edge_p_heap** %redirect_callers to i8*, !dbg !2677
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2677
  %1 = bitcast %struct.VEC_ipa_replace_map_p_gc** %replace_trees to i8*, !dbg !2678
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2678
  call void @llvm.dbg.value(metadata i64 0, metadata !2658, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i64 0, metadata !2659, metadata !DIExpression()), !dbg !2676
  tail call fastcc void @ipa_check_create_node_params() #7, !dbg !2679
  tail call fastcc void @ipa_check_create_edge_args() #7, !dbg !2680
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2681
  %tobool = icmp eq %struct._IO_FILE* %2, null, !dbg !2681
  br i1 %tobool, label %if.end, label %if.then, !dbg !2683

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0)) #6, !dbg !2684
  br label %if.end, !dbg !2684

if.end:                                           ; preds = %entry, %if.then
  %call1 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !2685
  store %struct.bitmap_head_def* %call1, %struct.bitmap_head_def** @dead_nodes, align 8, !dbg !2686
  br label %for.cond, !dbg !2687

for.cond:                                         ; preds = %for.inc, %if.end
  %overall_size.0 = phi i64 [ 0, %if.end ], [ %overall_size.1, %for.inc ], !dbg !2676
  %node.0.in = phi %struct.cgraph_node** [ @cgraph_nodes, %if.end ], [ %next, %for.inc ]
  %node.0 = load %struct.cgraph_node*, %struct.cgraph_node** %node.0.in, align 8, !dbg !2689
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.0, metadata !2641, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i64 %overall_size.0, metadata !2658, metadata !DIExpression()), !dbg !2676
  %tobool2 = icmp eq %struct.cgraph_node* %node.0, null, !dbg !2690
  br i1 %tobool2, label %for.end, label %for.body, !dbg !2690

for.body:                                         ; preds = %for.cond
  %analyzed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 27, !dbg !2691
  %bf.load = load i16, i16* %analyzed, align 4, !dbg !2691
  %bf.clear = and i16 %bf.load, 32, !dbg !2691
  %tobool3 = icmp eq i16 %bf.clear, 0, !dbg !2694
  br i1 %tobool3, label %for.inc, label %if.then4, !dbg !2695

if.then4:                                         ; preds = %for.body
  %count5 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 23, !dbg !2696
  %3 = load i64, i64* %count5, align 8, !dbg !2696
  %4 = load i64, i64* @max_count, align 8, !dbg !2699
  %cmp = icmp sgt i64 %3, %4, !dbg !2700
  br i1 %cmp, label %if.then6, label %if.end8, !dbg !2701

if.then6:                                         ; preds = %if.then4
  store i64 %3, i64* @max_count, align 8, !dbg !2702
  br label %if.end8, !dbg !2703

if.end8:                                          ; preds = %if.then6, %if.then4
  %self_size = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 18, i32 1, i32 1, !dbg !2704
  %5 = load i32, i32* %self_size, align 8, !dbg !2704
  %conv = sext i32 %5 to i64, !dbg !2705
  %add = add nsw i64 %overall_size.0, %conv, !dbg !2706
  call void @llvm.dbg.value(metadata i64 %add, metadata !2658, metadata !DIExpression()), !dbg !2676
  br label %for.inc, !dbg !2707

for.inc:                                          ; preds = %for.body, %if.end8
  %overall_size.1 = phi i64 [ %add, %if.end8 ], [ %overall_size.0, %for.body ], !dbg !2676
  call void @llvm.dbg.value(metadata i64 %overall_size.1, metadata !2658, metadata !DIExpression()), !dbg !2676
  %next = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 3, !dbg !2708
  br label %for.cond, !dbg !2709, !llvm.loop !2710

for.end:                                          ; preds = %for.cond
  %overall_size.0.lcssa = phi i64 [ %overall_size.0, %for.cond ], !dbg !2676
  call void @llvm.dbg.value(metadata i64 %overall_size.0.lcssa, metadata !2658, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i64 %overall_size.0.lcssa, metadata !2658, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i64 %overall_size.0.lcssa, metadata !2658, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i64 %overall_size.0.lcssa, metadata !2660, metadata !DIExpression()), !dbg !2676
  %6 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !2712
  %value = getelementptr inbounds %struct.param_info, %struct.param_info* %6, i64 17, i32 1, !dbg !2712
  %7 = load i32, i32* %value, align 8, !dbg !2712
  %conv10 = sext i32 %7 to i64, !dbg !2712
  %cmp11 = icmp slt i64 %overall_size.0.lcssa, %conv10, !dbg !2714
  br i1 %cmp11, label %if.then13, label %if.end17, !dbg !2715

if.then13:                                        ; preds = %for.end
  call void @llvm.dbg.value(metadata i64 %conv10, metadata !2660, metadata !DIExpression()), !dbg !2676
  br label %if.end17, !dbg !2716

if.end17:                                         ; preds = %if.then13, %for.end
  %max_new_size.0 = phi i64 [ %conv10, %if.then13 ], [ %overall_size.0.lcssa, %for.end ], !dbg !2676
  call void @llvm.dbg.value(metadata i64 %max_new_size.0, metadata !2660, metadata !DIExpression()), !dbg !2676
  %value19 = getelementptr inbounds %struct.param_info, %struct.param_info* %6, i64 19, i32 1, !dbg !2717
  %8 = load i32, i32* %value19, align 8, !dbg !2717
  %conv20 = sext i32 %8 to i64, !dbg !2717
  %mul = mul nsw i64 %max_new_size.0, %conv20, !dbg !2718
  call void @llvm.dbg.value(metadata i64 %add21, metadata !2660, metadata !DIExpression()), !dbg !2676
  %call22 = tail call %struct.fibheap* @fibheap_new() #6, !dbg !2719
  call void @llvm.dbg.value(metadata %struct.fibheap* %call22, metadata !2650, metadata !DIExpression()), !dbg !2676
  br label %for.cond23, !dbg !2720

for.cond23:                                       ; preds = %cleanup, %if.end17
  %node.1.in = phi %struct.cgraph_node** [ @cgraph_nodes, %if.end17 ], [ %next49, %cleanup ]
  %node.1 = load %struct.cgraph_node*, %struct.cgraph_node** %node.1.in, align 8, !dbg !2721
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.1, metadata !2641, metadata !DIExpression()), !dbg !2676
  %tobool24 = icmp eq %struct.cgraph_node* %node.1, null, !dbg !2722
  br i1 %tobool24, label %while.cond.preheader, label %for.body25, !dbg !2722

while.cond.preheader:                             ; preds = %for.cond23
  %div = sdiv i64 %mul, 100, !dbg !2723
  %add21 = add nsw i64 %div, 1, !dbg !2724
  br label %while.cond, !dbg !2725

for.body25:                                       ; preds = %for.cond23
  %analyzed26 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.1, i64 0, i32 27, !dbg !2726
  %bf.load27 = load i16, i16* %analyzed26, align 4, !dbg !2726
  %bf.clear29 = and i16 %bf.load27, 32, !dbg !2726
  %tobool31 = icmp eq i16 %bf.clear29, 0, !dbg !2728
  br i1 %tobool31, label %cleanup, label %lor.lhs.false, !dbg !2729

lor.lhs.false:                                    ; preds = %for.body25
  %call32 = tail call fastcc zeroext i8 @ipcp_node_modifiable_p(%struct.cgraph_node* nonnull %node.1) #7, !dbg !2730
  %tobool33 = icmp eq i8 %call32, 0, !dbg !2730
  br i1 %tobool33, label %cleanup, label %if.end35, !dbg !2731

if.end35:                                         ; preds = %lor.lhs.false
  %9 = load %struct.VEC_ipa_node_params_t_heap*, %struct.VEC_ipa_node_params_t_heap** @ipa_node_params_vector, align 8, !dbg !2732
  %base = getelementptr inbounds %struct.VEC_ipa_node_params_t_heap, %struct.VEC_ipa_node_params_t_heap* %9, i64 0, i32 0, !dbg !2732
  %uid = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.1, i64 0, i32 24, !dbg !2732
  %10 = load i32, i32* %uid, align 8, !dbg !2732
  %call37 = tail call fastcc %struct.ipa_node_params* @VEC_ipa_node_params_t_base_index(%struct.VEC_ipa_node_params_t_base* %base, i32 %10) #7, !dbg !2732
  call void @llvm.dbg.value(metadata %struct.ipa_node_params* %call37, metadata !2661, metadata !DIExpression()), !dbg !2733
  %call38 = tail call fastcc zeroext i8 @ipa_is_called_with_var_arguments(%struct.ipa_node_params* %call37) #7, !dbg !2734
  %tobool39 = icmp eq i8 %call38, 0, !dbg !2734
  br i1 %tobool39, label %if.end41, label %cleanup, !dbg !2736

if.end41:                                         ; preds = %if.end35
  %call42 = tail call fastcc i32 @ipcp_const_param_count(%struct.cgraph_node* nonnull %node.1) #7, !dbg !2737
  %tobool43 = icmp eq i32 %call42, 0, !dbg !2737
  br i1 %tobool43, label %cleanup, label %if.then44, !dbg !2739

if.then44:                                        ; preds = %if.end41
  %call45 = tail call fastcc i64 @ipcp_estimate_cloning_cost(%struct.cgraph_node* nonnull %node.1) #7, !dbg !2740
  %11 = bitcast %struct.cgraph_node* %node.1 to i8*, !dbg !2741
  %call46 = tail call %struct.fibnode* @fibheap_insert(%struct.fibheap* %call22, i64 %call45, i8* nonnull %11) #6, !dbg !2742
  %aux = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.1, i64 0, i32 16, !dbg !2743
  %12 = bitcast i8** %aux to %struct.fibnode**, !dbg !2744
  store %struct.fibnode* %call46, %struct.fibnode** %12, align 8, !dbg !2744
  br label %cleanup, !dbg !2745

cleanup:                                          ; preds = %if.end41, %if.end35, %lor.lhs.false, %for.body25, %if.then44
  %next49 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.1, i64 0, i32 3, !dbg !2746
  br label %for.cond23, !dbg !2747, !llvm.loop !2748

while.cond:                                       ; preds = %while.cond.preheader, %cleanup203
  %new_size.0 = phi i64 [ %new_size.1, %cleanup203 ], [ 0, %while.cond.preheader ], !dbg !2750
  %node.2 = phi %struct.cgraph_node* [ %13, %cleanup203 ], [ null, %while.cond.preheader ], !dbg !2676
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.2, metadata !2641, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i64 %new_size.0, metadata !2659, metadata !DIExpression()), !dbg !2676
  %call51 = call i32 @fibheap_empty(%struct.fibheap* %call22) #6, !dbg !2751
  %tobool52 = icmp eq i32 %call51, 0, !dbg !2752
  br i1 %tobool52, label %while.body, label %while.end.split.loop.exit5, !dbg !2725

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata i32 0, metadata !2668, metadata !DIExpression()), !dbg !2753
  %call54 = call i8* @fibheap_extract_min(%struct.fibheap* %call22) #6, !dbg !2754
  %13 = bitcast i8* %call54 to %struct.cgraph_node*, !dbg !2755
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %13, metadata !2641, metadata !DIExpression()), !dbg !2676
  %aux55 = getelementptr inbounds i8, i8* %call54, i64 128, !dbg !2756
  %14 = bitcast i8* %aux55 to i8**, !dbg !2756
  store i8* null, i8** %14, align 8, !dbg !2757
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2758
  %tobool56 = icmp eq %struct._IO_FILE* %15, null, !dbg !2758
  br i1 %tobool56, label %if.end60, label %if.then57, !dbg !2760

if.then57:                                        ; preds = %while.body
  %call58 = call i8* @cgraph_node_name(%struct.cgraph_node* %13) #6, !dbg !2761
  %call59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i64 0, i64 0), i8* %call58) #6, !dbg !2762
  br label %if.end60, !dbg !2762

if.end60:                                         ; preds = %while.body, %if.then57
  %call61 = call fastcc i64 @ipcp_estimate_growth(%struct.cgraph_node* %13) #7, !dbg !2763
  %conv62 = trunc i64 %call61 to i32, !dbg !2763
  call void @llvm.dbg.value(metadata i32 %conv62, metadata !2668, metadata !DIExpression()), !dbg !2753
  %sext = shl i64 %call61, 32, !dbg !2764
  %conv63 = ashr exact i64 %sext, 32, !dbg !2764
  %add64 = add nsw i64 %new_size.0, %conv63, !dbg !2766
  %cmp65 = icmp sgt i64 %add64, %add21, !dbg !2767
  br i1 %cmp65, label %cleanup203, label %if.end68, !dbg !2768

if.end68:                                         ; preds = %if.end60
  %tobool69 = icmp eq i32 %conv62, 0, !dbg !2769
  br i1 %tobool69, label %if.end78, label %land.lhs.true, !dbg !2771

land.lhs.true:                                    ; preds = %if.end68
  %16 = bitcast i8* %call54 to %struct.tree_function_decl**, !dbg !2772
  %17 = load %struct.tree_function_decl*, %struct.tree_function_decl** %16, align 8, !dbg !2772
  %f = getelementptr inbounds %struct.tree_function_decl, %struct.tree_function_decl* %17, i64 0, i32 1, !dbg !2772
  %18 = load %struct.function*, %struct.function** %f, align 8, !dbg !2772
  %call70 = call zeroext i8 @optimize_function_for_size_p(%struct.function* %18) #6, !dbg !2773
  %tobool72 = icmp eq i8 %call70, 0, !dbg !2773
  br i1 %tobool72, label %if.end78, label %if.then73, !dbg !2774

if.then73:                                        ; preds = %land.lhs.true
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2775
  %tobool74 = icmp eq %struct._IO_FILE* %19, null, !dbg !2775
  br i1 %tobool74, label %cleanup203, label %if.then75, !dbg !2778, !llvm.loop !2779

if.then75:                                        ; preds = %if.then73
  %call76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.31, i64 0, i64 0)) #6, !dbg !2781
  br label %cleanup203, !dbg !2781, !llvm.loop !2779

if.end78:                                         ; preds = %land.lhs.true, %if.end68
  call void @llvm.dbg.value(metadata i64 %add64, metadata !2659, metadata !DIExpression()), !dbg !2676
  %callers = getelementptr inbounds i8, i8* %call54, i64 16, !dbg !2782
  %20 = bitcast i8* %callers to %struct.cgraph_edge**, !dbg !2782
  br label %for.cond81, !dbg !2784

for.cond81:                                       ; preds = %for.inc93, %if.end78
  %cs.0.in = phi %struct.cgraph_edge** [ %20, %if.end78 ], [ %next_caller, %for.inc93 ]
  %cs.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %cs.0.in, align 8, !dbg !2785
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %cs.0, metadata !2670, metadata !DIExpression()), !dbg !2753
  %cond2 = icmp eq %struct.cgraph_edge* %cs.0, null, !dbg !2786
  br i1 %cond2, label %land.lhs.true96.loopexit, label %for.body84, !dbg !2786

for.body84:                                       ; preds = %for.cond81
  %caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %cs.0, i64 0, i32 1, !dbg !2787
  %21 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !2787
  %cmp85 = icmp eq %struct.cgraph_node* %21, %13, !dbg !2790
  br i1 %cmp85, label %for.end94, label %lor.lhs.false87, !dbg !2791

lor.lhs.false87:                                  ; preds = %for.body84
  %call88 = call fastcc zeroext i8 @ipcp_need_redirect_p(%struct.cgraph_edge* nonnull %cs.0) #7, !dbg !2792
  %tobool90 = icmp eq i8 %call88, 0, !dbg !2792
  br i1 %tobool90, label %for.inc93, label %for.end94, !dbg !2793

for.inc93:                                        ; preds = %lor.lhs.false87
  %next_caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %cs.0, i64 0, i32 4, !dbg !2794
  br label %for.cond81, !dbg !2795, !llvm.loop !2796

for.end94:                                        ; preds = %lor.lhs.false87, %for.body84
  br label %if.end103, !dbg !2798

land.lhs.true96.loopexit:                         ; preds = %for.cond81
  %call97 = call fastcc zeroext i8 @cgraph_only_called_directly_p(%struct.cgraph_node* %13) #7, !dbg !2800
  %tobool99 = icmp eq i8 %call97, 0, !dbg !2800
  br i1 %tobool99, label %if.end103, label %if.then100, !dbg !2801

if.then100:                                       ; preds = %land.lhs.true96.loopexit
  %22 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @dead_nodes, align 8, !dbg !2802
  %uid101 = getelementptr inbounds i8, i8* %call54, i64 296, !dbg !2803
  %23 = bitcast i8* %uid101 to i32*, !dbg !2803
  %24 = load i32, i32* %23, align 8, !dbg !2803
  %call102 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %22, i32 %24) #6, !dbg !2804
  br label %if.end103, !dbg !2804

if.end103:                                        ; preds = %for.end94, %land.lhs.true96.loopexit, %if.then100
  %25 = load %struct.VEC_ipa_node_params_t_heap*, %struct.VEC_ipa_node_params_t_heap** @ipa_node_params_vector, align 8, !dbg !2805
  %base106 = getelementptr inbounds %struct.VEC_ipa_node_params_t_heap, %struct.VEC_ipa_node_params_t_heap* %25, i64 0, i32 0, !dbg !2805
  %uid110 = getelementptr inbounds i8, i8* %call54, i64 296, !dbg !2805
  %26 = bitcast i8* %uid110 to i32*, !dbg !2805
  %27 = load i32, i32* %26, align 8, !dbg !2805
  %call111 = call fastcc %struct.ipa_node_params* @VEC_ipa_node_params_t_base_index(%struct.VEC_ipa_node_params_t_base* %base106, i32 %27) #7, !dbg !2805
  call void @llvm.dbg.value(metadata %struct.ipa_node_params* %call111, metadata !2666, metadata !DIExpression()), !dbg !2753
  %call112 = call fastcc i32 @ipa_get_param_count(%struct.ipa_node_params* %call111) #7, !dbg !2806
  call void @llvm.dbg.value(metadata i32 %call112, metadata !2647, metadata !DIExpression()), !dbg !2676
  %call113 = call fastcc %struct.VEC_ipa_replace_map_p_gc* @VEC_ipa_replace_map_p_gc_alloc(i32 1) #7, !dbg !2807
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_replace_map_p_gc* %call113, metadata !2645, metadata !DIExpression()), !dbg !2676
  store %struct.VEC_ipa_replace_map_p_gc* %call113, %struct.VEC_ipa_replace_map_p_gc** %replace_trees, align 8, !dbg !2808
  %call114 = call %struct.bitmap_head_def* @bitmap_gc_alloc_stat() #6, !dbg !2809
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call114, metadata !2669, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i32 0, metadata !2643, metadata !DIExpression()), !dbg !2676
  %28 = bitcast i8* %call54 to %struct.tree_function_decl**, !dbg !2810
  br label %for.cond115, !dbg !2812

for.cond115:                                      ; preds = %cleanup140, %if.end103
  %i.0 = phi i32 [ 0, %if.end103 ], [ %inc, %cleanup140 ], !dbg !2813
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2643, metadata !DIExpression()), !dbg !2676
  %cmp116 = icmp slt i32 %i.0, %call112, !dbg !2814
  br i1 %cmp116, label %for.body118, label %for.end144, !dbg !2815

for.body118:                                      ; preds = %for.cond115
  %call119 = call fastcc %struct.ipcp_lattice* @ipcp_get_lattice(%struct.ipa_node_params* %call111, i32 %i.0) #7, !dbg !2816
  call void @llvm.dbg.value(metadata %struct.ipcp_lattice* %call119, metadata !2671, metadata !DIExpression()), !dbg !2817
  %call120 = call fastcc %union.tree_node* @ipa_get_param(%struct.ipa_node_params* %call111, i32 %i.0) #7, !dbg !2818
  call void @llvm.dbg.value(metadata %union.tree_node* %call120, metadata !2648, metadata !DIExpression()), !dbg !2676
  %call121 = call zeroext i8 @is_gimple_reg(%union.tree_node* %call120) #6, !dbg !2819
  %tobool123 = icmp eq i8 %call121, 0, !dbg !2819
  br i1 %tobool123, label %if.end132, label %land.lhs.true124, !dbg !2820

land.lhs.true124:                                 ; preds = %for.body118
  %29 = load %struct.tree_function_decl*, %struct.tree_function_decl** %28, align 8, !dbg !2821
  %f127 = getelementptr inbounds %struct.tree_function_decl, %struct.tree_function_decl* %29, i64 0, i32 1, !dbg !2821
  %30 = load %struct.function*, %struct.function** %f127, align 8, !dbg !2821
  %call128 = call %union.tree_node* @gimple_default_def(%struct.function* %30, %union.tree_node* %call120) #6, !dbg !2822
  %tobool129 = icmp eq %union.tree_node* %call128, null, !dbg !2822
  br i1 %tobool129, label %if.then130, label %if.end132, !dbg !2823

if.then130:                                       ; preds = %land.lhs.true124
  %call131 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call114, i32 %i.0) #6, !dbg !2824
  br label %cleanup140, !dbg !2826

if.end132:                                        ; preds = %land.lhs.true124, %for.body118
  %type = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %call119, i64 0, i32 0, !dbg !2827
  %31 = load i32, i32* %type, align 8, !dbg !2827
  %cmp133 = icmp eq i32 %31, 1, !dbg !2829
  br i1 %cmp133, label %if.then135, label %cleanup140, !dbg !2830

if.then135:                                       ; preds = %if.end132
  %call136 = call fastcc %struct.ipa_replace_map* @ipcp_create_replace_map(%union.tree_node* %call120, %struct.ipcp_lattice* %call119) #7, !dbg !2831
  call void @llvm.dbg.value(metadata %struct.ipa_replace_map* %call136, metadata !2649, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_replace_map_p_gc** %replace_trees, metadata !2645, metadata !DIExpression(DW_OP_deref)), !dbg !2676
  %call137 = call fastcc %struct.ipa_replace_map** @VEC_ipa_replace_map_p_gc_safe_push(%struct.VEC_ipa_replace_map_p_gc** nonnull %replace_trees, %struct.ipa_replace_map* %call136) #7, !dbg !2833
  %call138 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call114, i32 %i.0) #6, !dbg !2834
  br label %cleanup140, !dbg !2835

cleanup140:                                       ; preds = %if.end132, %if.then135, %if.then130
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2836
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2643, metadata !DIExpression()), !dbg !2676
  br label %for.cond115, !dbg !2837, !llvm.loop !2838

for.end144:                                       ; preds = %for.cond115
  call void @llvm.dbg.value(metadata i32 0, metadata !2646, metadata !DIExpression()), !dbg !2676
  br label %for.cond146, !dbg !2840

for.cond146:                                      ; preds = %for.body149, %for.end144
  %cs.1.in = phi %struct.cgraph_edge** [ %20, %for.end144 ], [ %next_caller152, %for.body149 ]
  %node_callers.0 = phi i32 [ 0, %for.end144 ], [ %inc150, %for.body149 ], !dbg !2753
  %cs.1 = load %struct.cgraph_edge*, %struct.cgraph_edge** %cs.1.in, align 8, !dbg !2842
  call void @llvm.dbg.value(metadata i32 %node_callers.0, metadata !2646, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %cs.1, metadata !2670, metadata !DIExpression()), !dbg !2753
  %cmp147 = icmp eq %struct.cgraph_edge* %cs.1, null, !dbg !2843
  br i1 %cmp147, label %for.end153, label %for.body149, !dbg !2845

for.body149:                                      ; preds = %for.cond146
  %inc150 = add nuw nsw i32 %node_callers.0, 1, !dbg !2846
  call void @llvm.dbg.value(metadata i32 %inc150, metadata !2646, metadata !DIExpression()), !dbg !2676
  %next_caller152 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %cs.1, i64 0, i32 4, !dbg !2847
  br label %for.cond146, !dbg !2848, !llvm.loop !2849

for.end153:                                       ; preds = %for.cond146
  %node_callers.0.lcssa = phi i32 [ %node_callers.0, %for.cond146 ], !dbg !2753
  call void @llvm.dbg.value(metadata i32 %node_callers.0.lcssa, metadata !2646, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i32 %node_callers.0.lcssa, metadata !2646, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i32 %node_callers.0.lcssa, metadata !2646, metadata !DIExpression()), !dbg !2676
  %call154 = call fastcc %struct.VEC_cgraph_edge_p_heap* @VEC_cgraph_edge_p_heap_alloc(i32 %node_callers.0.lcssa) #7, !dbg !2851
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_edge_p_heap* %call154, metadata !2644, metadata !DIExpression()), !dbg !2676
  store %struct.VEC_cgraph_edge_p_heap* %call154, %struct.VEC_cgraph_edge_p_heap** %redirect_callers, align 8, !dbg !2852
  br label %for.cond156, !dbg !2853

for.cond156:                                      ; preds = %for.body159, %for.end153
  %32 = phi %struct.VEC_cgraph_edge_p_heap* [ %call154, %for.end153 ], [ %.pre, %for.body159 ], !dbg !2753
  %cs.2.in = phi %struct.cgraph_edge** [ %20, %for.end153 ], [ %next_caller168, %for.body159 ]
  %cs.2 = load %struct.cgraph_edge*, %struct.cgraph_edge** %cs.2.in, align 8, !dbg !2855
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %cs.2, metadata !2670, metadata !DIExpression()), !dbg !2753
  %cmp157 = icmp eq %struct.cgraph_edge* %cs.2, null, !dbg !2856
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_edge_p_heap* %32, metadata !2644, metadata !DIExpression()), !dbg !2676
  br i1 %cmp157, label %for.end169, label %for.body159, !dbg !2858

for.body159:                                      ; preds = %for.cond156
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_edge_p_heap* %32, metadata !2644, metadata !DIExpression()), !dbg !2676
  %base162 = getelementptr inbounds %struct.VEC_cgraph_edge_p_heap, %struct.VEC_cgraph_edge_p_heap* %32, i64 0, i32 0, !dbg !2859
  %call166 = call fastcc %struct.cgraph_edge** @VEC_cgraph_edge_p_base_quick_push(%struct.VEC_cgraph_edge_p_base* %base162, %struct.cgraph_edge* nonnull %cs.2) #7, !dbg !2859
  %next_caller168 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %cs.2, i64 0, i32 4, !dbg !2860
  %.pre = load %struct.VEC_cgraph_edge_p_heap*, %struct.VEC_cgraph_edge_p_heap** %redirect_callers, align 8, !dbg !2753
  br label %for.cond156, !dbg !2861, !llvm.loop !2862

for.end169:                                       ; preds = %for.cond156
  %.lcssa = phi %struct.VEC_cgraph_edge_p_heap* [ %32, %for.cond156 ], !dbg !2753
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_edge_p_heap* %.lcssa, metadata !2644, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_edge_p_heap* %.lcssa, metadata !2644, metadata !DIExpression()), !dbg !2676
  %33 = load %struct.VEC_ipa_replace_map_p_gc*, %struct.VEC_ipa_replace_map_p_gc** %replace_trees, align 8, !dbg !2864
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_replace_map_p_gc* %33, metadata !2645, metadata !DIExpression()), !dbg !2676
  %call170 = call %struct.cgraph_node* @cgraph_create_virtual_clone(%struct.cgraph_node* %13, %struct.VEC_cgraph_edge_p_heap* %.lcssa, %struct.VEC_ipa_replace_map_p_gc* %33, %struct.bitmap_head_def* %call114) #6, !dbg !2865
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call170, metadata !2642, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !2669, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_edge_p_heap** %redirect_callers, metadata !2644, metadata !DIExpression(DW_OP_deref)), !dbg !2676
  call fastcc void @VEC_cgraph_edge_p_heap_free(%struct.VEC_cgraph_edge_p_heap** nonnull %redirect_callers) #7, !dbg !2866
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_replace_map_p_gc* null, metadata !2645, metadata !DIExpression()), !dbg !2676
  store %struct.VEC_ipa_replace_map_p_gc* null, %struct.VEC_ipa_replace_map_p_gc** %replace_trees, align 8, !dbg !2867
  %cmp171 = icmp eq %struct.cgraph_node* %call170, null, !dbg !2868
  br i1 %cmp171, label %cleanup203, label %if.end174, !dbg !2870, !llvm.loop !2779

if.end174:                                        ; preds = %for.end169
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2871
  %tobool175 = icmp eq %struct._IO_FILE* %34, null, !dbg !2871
  br i1 %tobool175, label %if.end180, label %if.then176, !dbg !2873

if.then176:                                       ; preds = %if.end174
  %call177 = call i8* @cgraph_node_name(%struct.cgraph_node* %13) #6, !dbg !2874
  %conv178 = trunc i64 %add64 to i32, !dbg !2875
  %call179 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %34, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.32, i64 0, i64 0), i8* %call177, i32 %conv62, i32 %conv178) #6, !dbg !2876
  br label %if.end180, !dbg !2876

if.end180:                                        ; preds = %if.end174, %if.then176
  call fastcc void @ipcp_init_cloned_node(%struct.cgraph_node* %13, %struct.cgraph_node* nonnull %call170) #7, !dbg !2877
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2878
  %tobool181 = icmp eq %struct._IO_FILE* %35, null, !dbg !2878
  br i1 %tobool181, label %if.end184, label %if.then182, !dbg !2880

if.then182:                                       ; preds = %if.end180
  %decl183 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call170, i64 0, i32 0, !dbg !2881
  %36 = load %union.tree_node*, %union.tree_node** %decl183, align 8, !dbg !2881
  %37 = load i32, i32* @dump_flags, align 4, !dbg !2882
  call void @dump_function_to_file(%union.tree_node* %36, %struct._IO_FILE* nonnull %35, i32 %37) #6, !dbg !2883
  br label %if.end184, !dbg !2883

if.end184:                                        ; preds = %if.end180, %if.then182
  %callees = getelementptr inbounds i8, i8* %call54, i64 8, !dbg !2884
  %38 = bitcast i8* %callees to %struct.cgraph_edge**, !dbg !2884
  br label %for.cond185, !dbg !2886

for.cond185:                                      ; preds = %for.inc201, %if.end184
  %cs.3.in = phi %struct.cgraph_edge** [ %38, %if.end184 ], [ %next_callee, %for.inc201 ]
  %cs.3 = load %struct.cgraph_edge*, %struct.cgraph_edge** %cs.3.in, align 8, !dbg !2887
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %cs.3, metadata !2670, metadata !DIExpression()), !dbg !2753
  %tobool186 = icmp eq %struct.cgraph_edge* %cs.3, null, !dbg !2888
  br i1 %tobool186, label %cleanup203.loopexit, label %for.body187, !dbg !2888

for.body187:                                      ; preds = %for.cond185
  %callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %cs.3, i64 0, i32 2, !dbg !2889
  %39 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !2889
  %aux188 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %39, i64 0, i32 16, !dbg !2892
  %40 = load i8*, i8** %aux188, align 8, !dbg !2892
  %tobool189 = icmp eq i8* %40, null, !dbg !2893
  br i1 %tobool189, label %for.inc201, label %if.then190, !dbg !2894

if.then190:                                       ; preds = %for.body187
  %41 = bitcast i8* %40 to %struct.fibnode*, !dbg !2894
  %call193 = call i8* @fibheap_delete_node(%struct.fibheap* %call22, %struct.fibnode* nonnull %41) #6, !dbg !2895
  %42 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !2897
  %call195 = call fastcc i64 @ipcp_estimate_cloning_cost(%struct.cgraph_node* %42) #7, !dbg !2898
  %43 = bitcast %struct.cgraph_node** %callee to i8**, !dbg !2899
  %44 = load i8*, i8** %43, align 8, !dbg !2899
  %call197 = call %struct.fibnode* @fibheap_insert(%struct.fibheap* %call22, i64 %call195, i8* %44) #6, !dbg !2900
  %45 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !2901
  %aux199 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %45, i64 0, i32 16, !dbg !2902
  %46 = bitcast i8** %aux199 to %struct.fibnode**, !dbg !2903
  store %struct.fibnode* %call197, %struct.fibnode** %46, align 8, !dbg !2903
  br label %for.inc201, !dbg !2904

for.inc201:                                       ; preds = %for.body187, %if.then190
  %next_callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %cs.3, i64 0, i32 6, !dbg !2905
  br label %for.cond185, !dbg !2906, !llvm.loop !2907

cleanup203.loopexit:                              ; preds = %for.cond185
  br label %cleanup203

cleanup203:                                       ; preds = %cleanup203.loopexit, %if.then73, %for.end169, %if.then75, %if.end60
  %new_size.1 = phi i64 [ %new_size.0, %if.end60 ], [ %new_size.0, %if.then75 ], [ %new_size.0, %if.then73 ], [ %add64, %for.end169 ], [ %add64, %cleanup203.loopexit ], !dbg !2676
  %cleanup.dest.slot.2 = phi i1 [ true, %if.end60 ], [ false, %if.then75 ], [ false, %if.then73 ], [ false, %for.end169 ], [ false, %cleanup203.loopexit ]
  call void @llvm.dbg.value(metadata i64 %new_size.1, metadata !2659, metadata !DIExpression()), !dbg !2676
  br i1 %cleanup.dest.slot.2, label %while.end.split.loop.exit, label %while.cond

while.end.split.loop.exit:                        ; preds = %cleanup203
  %.lcssa10 = phi %struct.cgraph_node* [ %13, %cleanup203 ], !dbg !2755
  br label %while.end, !dbg !2909

while.end.split.loop.exit5:                       ; preds = %while.cond
  %node.2.lcssa = phi %struct.cgraph_node* [ %node.2, %while.cond ], !dbg !2676
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.2.lcssa, metadata !2641, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.2.lcssa, metadata !2641, metadata !DIExpression()), !dbg !2676
  br label %while.end, !dbg !2909

while.end:                                        ; preds = %while.end.split.loop.exit5, %while.end.split.loop.exit
  %node.3 = phi %struct.cgraph_node* [ %.lcssa10, %while.end.split.loop.exit ], [ %node.2.lcssa, %while.end.split.loop.exit5 ], !dbg !2676
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.3, metadata !2641, metadata !DIExpression()), !dbg !2676
  br label %while.cond209, !dbg !2909

while.cond209:                                    ; preds = %if.end218, %while.end
  %node.4 = phi %struct.cgraph_node* [ %node.3, %while.end ], [ %48, %if.end218 ], !dbg !2676
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.4, metadata !2641, metadata !DIExpression()), !dbg !2676
  %call210 = call i32 @fibheap_empty(%struct.fibheap* %call22) #6, !dbg !2910
  %tobool211 = icmp eq i32 %call210, 0, !dbg !2911
  br i1 %tobool211, label %while.body213, label %while.end221, !dbg !2909

while.body213:                                    ; preds = %while.cond209
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2912
  %tobool214 = icmp eq %struct._IO_FILE* %47, null, !dbg !2912
  br i1 %tobool214, label %if.end218, label %if.then215, !dbg !2915

if.then215:                                       ; preds = %while.body213
  %call216 = call i8* @cgraph_node_name(%struct.cgraph_node* %node.4) #6, !dbg !2916
  %call217 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i64 0, i64 0), i8* %call216) #6, !dbg !2917
  br label %if.end218, !dbg !2917

if.end218:                                        ; preds = %while.body213, %if.then215
  %call219 = call i8* @fibheap_extract_min(%struct.fibheap* %call22) #6, !dbg !2918
  %48 = bitcast i8* %call219 to %struct.cgraph_node*, !dbg !2919
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %48, metadata !2641, metadata !DIExpression()), !dbg !2676
  %aux220 = getelementptr inbounds i8, i8* %call219, i64 128, !dbg !2920
  %49 = bitcast i8* %aux220 to i8**, !dbg !2920
  store i8* null, i8** %49, align 8, !dbg !2921
  br label %while.cond209, !dbg !2909, !llvm.loop !2922

while.end221:                                     ; preds = %while.cond209
  call void @fibheap_delete(%struct.fibheap* %call22) #6, !dbg !2924
  %50 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @dead_nodes, align 8, !dbg !2925
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %50) #6, !dbg !2925
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** @dead_nodes, align 8, !dbg !2925
  call fastcc void @ipcp_update_callgraph() #7, !dbg !2926
  call fastcc void @ipcp_update_profiling() #7, !dbg !2927
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2928
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2928
  ret void, !dbg !2928
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ipcp_print_profile_data(%struct._IO_FILE* %f) unnamed_addr #5 !dbg !2929 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %f, metadata !2933, metadata !DIExpression()), !dbg !2934
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i64 0, i64 0)) #6, !dbg !2935
  tail call fastcc void @ipcp_print_func_profile_counts(%struct._IO_FILE* %f) #7, !dbg !2936
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.39, i64 0, i64 0)) #6, !dbg !2937
  tail call fastcc void @ipcp_print_call_profile_counts(%struct._IO_FILE* %f) #7, !dbg !2938
  ret void, !dbg !2939
}

declare dso_local void @free_all_ipa_structures_after_ipa_cp() local_unnamed_addr #2

declare dso_local void @ipa_update_after_lto_read() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ipcp_initialize_node_lattices(%struct.cgraph_node* %node) unnamed_addr #5 !dbg !2940 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !2942, metadata !DIExpression()), !dbg !2946
  %0 = load %struct.VEC_ipa_node_params_t_heap*, %struct.VEC_ipa_node_params_t_heap** @ipa_node_params_vector, align 8, !dbg !2947
  %base = getelementptr inbounds %struct.VEC_ipa_node_params_t_heap, %struct.VEC_ipa_node_params_t_heap* %0, i64 0, i32 0, !dbg !2947
  %uid = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 24, !dbg !2947
  %1 = load i32, i32* %uid, align 8, !dbg !2947
  %call = tail call fastcc %struct.ipa_node_params* @VEC_ipa_node_params_t_base_index(%struct.VEC_ipa_node_params_t_base* %base, i32 %1) #7, !dbg !2947
  call void @llvm.dbg.value(metadata %struct.ipa_node_params* %call, metadata !2944, metadata !DIExpression()), !dbg !2946
  %call1 = tail call fastcc zeroext i8 @ipa_is_called_with_var_arguments(%struct.ipa_node_params* %call) #7, !dbg !2948
  %tobool2 = icmp eq i8 %call1, 0, !dbg !2948
  br i1 %tobool2, label %if.else, label %if.end12, !dbg !2950

if.else:                                          ; preds = %entry
  %call3 = tail call fastcc zeroext i8 @cgraph_only_called_directly_p(%struct.cgraph_node* %node) #7, !dbg !2951
  %tobool4 = icmp eq i8 %call3, 0, !dbg !2951
  br i1 %tobool4, label %if.else6, label %if.end12, !dbg !2953

if.else6:                                         ; preds = %if.else
  %call7 = tail call fastcc zeroext i8 @ipcp_cloning_candidate_p(%struct.cgraph_node* %node) #7, !dbg !2954
  %tobool8 = icmp eq i8 %call7, 0, !dbg !2954
  br i1 %tobool8, label %if.end12, label %if.then9, !dbg !2956

if.then9:                                         ; preds = %if.else6
  call void @llvm.dbg.value(metadata i32 2, metadata !2945, metadata !DIExpression()), !dbg !2946
  %2 = load i32, i32* @n_cloning_candidates, align 4, !dbg !2957
  %inc = add nsw i32 %2, 1, !dbg !2957
  store i32 %inc, i32* @n_cloning_candidates, align 4, !dbg !2957
  br label %if.end12, !dbg !2958

if.end12:                                         ; preds = %if.else6, %if.else, %entry, %if.then9
  %type.2 = phi i32 [ 0, %entry ], [ 2, %if.else ], [ 2, %if.then9 ], [ 0, %if.else6 ], !dbg !2959
  call void @llvm.dbg.value(metadata i32 %type.2, metadata !2945, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i32 0, metadata !2943, metadata !DIExpression()), !dbg !2946
  br label %for.cond, !dbg !2960

for.cond:                                         ; preds = %for.body, %if.end12
  %i.0 = phi i32 [ 0, %if.end12 ], [ %inc16, %for.body ], !dbg !2962
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2943, metadata !DIExpression()), !dbg !2946
  %call13 = tail call fastcc i32 @ipa_get_param_count(%struct.ipa_node_params* %call) #7, !dbg !2963
  %cmp = icmp slt i32 %i.0, %call13, !dbg !2965
  br i1 %cmp, label %for.body, label %for.end, !dbg !2966

for.body:                                         ; preds = %for.cond
  %call14 = tail call fastcc %struct.ipcp_lattice* @ipcp_get_lattice(%struct.ipa_node_params* %call, i32 %i.0) #7, !dbg !2967
  %type15 = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %call14, i64 0, i32 0, !dbg !2968
  store i32 %type.2, i32* %type15, align 8, !dbg !2969
  %inc16 = add nuw nsw i32 %i.0, 1, !dbg !2970
  call void @llvm.dbg.value(metadata i32 %inc16, metadata !2943, metadata !DIExpression()), !dbg !2946
  br label %for.cond, !dbg !2971, !llvm.loop !2972

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2974
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ipcp_compute_node_scale(%struct.cgraph_node* %node) unnamed_addr #5 !dbg !2975 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !2977, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata i64 0, metadata !2978, metadata !DIExpression()), !dbg !2980
  %callers = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 2, !dbg !2981
  br label %for.cond, !dbg !2983

for.cond:                                         ; preds = %for.body, %entry
  %sum.0 = phi i64 [ 0, %entry ], [ %add, %for.body ], !dbg !2980
  %cs.0.in = phi %struct.cgraph_edge** [ %callers, %entry ], [ %next_caller, %for.body ]
  %cs.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %cs.0.in, align 8, !dbg !2984
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %cs.0, metadata !2979, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata i64 %sum.0, metadata !2978, metadata !DIExpression()), !dbg !2980
  %cmp = icmp eq %struct.cgraph_edge* %cs.0, null, !dbg !2985
  br i1 %cmp, label %for.end, label %for.body, !dbg !2987

for.body:                                         ; preds = %for.cond
  %count = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %cs.0, i64 0, i32 0, !dbg !2988
  %0 = load i64, i64* %count, align 8, !dbg !2988
  %add = add nsw i64 %sum.0, %0, !dbg !2989
  call void @llvm.dbg.value(metadata i64 %add, metadata !2978, metadata !DIExpression()), !dbg !2980
  %next_caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %cs.0, i64 0, i32 4, !dbg !2990
  br label %for.cond, !dbg !2991, !llvm.loop !2992

for.end:                                          ; preds = %for.cond
  %sum.0.lcssa = phi i64 [ %sum.0, %for.cond ], !dbg !2980
  call void @llvm.dbg.value(metadata i64 %sum.0.lcssa, metadata !2978, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata i64 %sum.0.lcssa, metadata !2978, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata i64 %sum.0.lcssa, metadata !2978, metadata !DIExpression()), !dbg !2980
  %count1 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 23, !dbg !2994
  %1 = load i64, i64* %count1, align 8, !dbg !2994
  %mul = mul nsw i64 %1, 9, !dbg !2996
  %div = sdiv i64 %mul, 10, !dbg !2997
  %cmp2 = icmp sgt i64 %sum.0.lcssa, %div, !dbg !2998
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2999

if.then:                                          ; preds = %for.end
  call void @llvm.dbg.value(metadata i64 %div, metadata !2978, metadata !DIExpression()), !dbg !2980
  br label %if.end, !dbg !3000

if.end:                                           ; preds = %if.then, %for.end
  %sum.1 = phi i64 [ %div, %if.then ], [ %sum.0.lcssa, %for.end ], !dbg !2980
  call void @llvm.dbg.value(metadata i64 %sum.1, metadata !2978, metadata !DIExpression()), !dbg !2980
  %cmp7 = icmp eq i64 %1, 0, !dbg !3001
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !3003

if.then8:                                         ; preds = %if.end
  tail call fastcc void @ipcp_set_node_scale(%struct.cgraph_node* %node, i64 0) #7, !dbg !3004
  br label %if.end12, !dbg !3004

if.else:                                          ; preds = %if.end
  %mul9 = mul nsw i64 %sum.1, 10000, !dbg !3005
  %div11 = sdiv i64 %mul9, %1, !dbg !3006
  tail call fastcc void @ipcp_set_node_scale(%struct.cgraph_node* %node, i64 %div11) #7, !dbg !3007
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then8
  ret void, !dbg !3008
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ipcp_print_all_lattices(%struct._IO_FILE* %f) unnamed_addr #5 !dbg !3009 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %f, metadata !3011, metadata !DIExpression()), !dbg !3023
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !3024
  br label %for.cond, !dbg !3025

for.cond:                                         ; preds = %cleanup, %entry
  %node.0.in = phi %struct.cgraph_node** [ @cgraph_nodes, %entry ], [ %next, %cleanup ]
  %node.0 = load %struct.cgraph_node*, %struct.cgraph_node** %node.0.in, align 8, !dbg !3026
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.0, metadata !3012, metadata !DIExpression()), !dbg !3023
  %tobool = icmp eq %struct.cgraph_node* %node.0, null, !dbg !3027
  br i1 %tobool, label %for.end24, label %for.body, !dbg !3027

for.body:                                         ; preds = %for.cond
  %analyzed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 27, !dbg !3028
  %bf.load = load i16, i16* %analyzed, align 4, !dbg !3028
  %bf.clear = and i16 %bf.load, 32, !dbg !3028
  %tobool1 = icmp eq i16 %bf.clear, 0, !dbg !3030
  br i1 %tobool1, label %cleanup, label %if.end, !dbg !3031

if.end:                                           ; preds = %for.body
  %0 = load %struct.VEC_ipa_node_params_t_heap*, %struct.VEC_ipa_node_params_t_heap** @ipa_node_params_vector, align 8, !dbg !3032
  %base = getelementptr inbounds %struct.VEC_ipa_node_params_t_heap, %struct.VEC_ipa_node_params_t_heap* %0, i64 0, i32 0, !dbg !3032
  %uid = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 24, !dbg !3032
  %1 = load i32, i32* %uid, align 8, !dbg !3032
  %call3 = tail call fastcc %struct.ipa_node_params* @VEC_ipa_node_params_t_base_index(%struct.VEC_ipa_node_params_t_base* %base, i32 %1) #7, !dbg !3032
  call void @llvm.dbg.value(metadata %struct.ipa_node_params* %call3, metadata !3015, metadata !DIExpression()), !dbg !3033
  %call4 = tail call i8* @cgraph_node_name(%struct.cgraph_node* nonnull %node.0) #6, !dbg !3034
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i8* %call4) #6, !dbg !3035
  %call6 = tail call fastcc i32 @ipa_get_param_count(%struct.ipa_node_params* %call3) #7, !dbg !3036
  call void @llvm.dbg.value(metadata i32 %call6, metadata !3014, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i32 0, metadata !3013, metadata !DIExpression()), !dbg !3023
  br label %for.cond7, !dbg !3037

for.cond7:                                        ; preds = %for.inc, %if.end
  %i.0 = phi i32 [ 0, %if.end ], [ %inc, %for.inc ], !dbg !3038
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3013, metadata !DIExpression()), !dbg !3023
  %cmp = icmp slt i32 %i.0, %call6, !dbg !3039
  br i1 %cmp, label %for.body8, label %cleanup.loopexit, !dbg !3040

for.body8:                                        ; preds = %for.cond7
  %call9 = tail call fastcc %struct.ipcp_lattice* @ipcp_get_lattice(%struct.ipa_node_params* %call3, i32 %i.0) #7, !dbg !3041
  call void @llvm.dbg.value(metadata %struct.ipcp_lattice* %call9, metadata !3019, metadata !DIExpression()), !dbg !3042
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0), i32 %i.0) #6, !dbg !3043
  %type = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %call9, i64 0, i32 0, !dbg !3044
  %2 = load i32, i32* %type, align 8, !dbg !3044
  %cmp11 = icmp eq i32 %2, 1, !dbg !3046
  br i1 %cmp11, label %if.then12, label %if.else, !dbg !3047

if.then12:                                        ; preds = %for.body8
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0)) #6, !dbg !3048
  %constant = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %call9, i64 0, i32 1, !dbg !3050
  %3 = load %union.tree_node*, %union.tree_node** %constant, align 8, !dbg !3050
  tail call void @print_generic_expr(%struct._IO_FILE* %f, %union.tree_node* %3, i32 0) #6, !dbg !3051
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !3052
  br label %for.inc, !dbg !3053

if.else:                                          ; preds = %for.body8
  %cmp16 = icmp eq i32 %2, 2, !dbg !3054
  br i1 %cmp16, label %if.then17, label %if.else19, !dbg !3056

if.then17:                                        ; preds = %if.else
  %call18 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0)) #6, !dbg !3057
  br label %for.inc, !dbg !3057

if.else19:                                        ; preds = %if.else
  %call20 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0)) #6, !dbg !3058
  br label %for.inc

for.inc:                                          ; preds = %if.then12, %if.else19, %if.then17
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3059
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3013, metadata !DIExpression()), !dbg !3023
  br label %for.cond7, !dbg !3060, !llvm.loop !3061

cleanup.loopexit:                                 ; preds = %for.cond7
  br label %cleanup, !dbg !3063

cleanup:                                          ; preds = %cleanup.loopexit, %for.body
  %next = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 3, !dbg !3063
  br label %for.cond, !dbg !3064, !llvm.loop !3065

for.end24:                                        ; preds = %for.cond
  ret void, !dbg !3067
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ipcp_function_scale_print(%struct._IO_FILE* %f) unnamed_addr #5 !dbg !3068 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %f, metadata !3070, metadata !DIExpression()), !dbg !3072
  br label %for.cond, !dbg !3073

for.cond:                                         ; preds = %for.inc, %entry
  %node.0.in = phi %struct.cgraph_node** [ @cgraph_nodes, %entry ], [ %next, %for.inc ]
  %node.0 = load %struct.cgraph_node*, %struct.cgraph_node** %node.0.in, align 8, !dbg !3075
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.0, metadata !3071, metadata !DIExpression()), !dbg !3072
  %tobool = icmp eq %struct.cgraph_node* %node.0, null, !dbg !3076
  br i1 %tobool, label %for.end, label %for.body, !dbg !3076

for.body:                                         ; preds = %for.cond
  %analyzed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 27, !dbg !3077
  %bf.load = load i16, i16* %analyzed, align 4, !dbg !3077
  %bf.clear = and i16 %bf.load, 32, !dbg !3077
  %tobool1 = icmp eq i16 %bf.clear, 0, !dbg !3081
  br i1 %tobool1, label %for.inc, label %if.end, !dbg !3082

if.end:                                           ; preds = %for.body
  %call = tail call i8* @cgraph_node_name(%struct.cgraph_node* nonnull %node.0) #6, !dbg !3083
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i64 0, i64 0), i8* %call) #6, !dbg !3084
  %call3 = tail call fastcc i64 @ipcp_get_node_scale(%struct.cgraph_node* nonnull %node.0) #7, !dbg !3085
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0), i64 %call3) #6, !dbg !3086
  br label %for.inc, !dbg !3087

for.inc:                                          ; preds = %for.body, %if.end
  %next = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 3, !dbg !3088
  br label %for.cond, !dbg !3089, !llvm.loop !3090

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3092
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ipcp_propagate_stage() unnamed_addr #5 !dbg !3093 {
entry:
  %inc_lat = alloca %struct.ipcp_lattice, align 8
  %new_lat = alloca %struct.ipcp_lattice, align 8
  %wl = alloca %struct.ipa_func_list*, align 8
  %0 = bitcast %struct.ipcp_lattice* %inc_lat to i8*, !dbg !3117
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !3117
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %0, i8 0, i64 16, i1 false), !dbg !3118
  %1 = bitcast %struct.ipcp_lattice* %new_lat to i8*, !dbg !3119
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3119
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %1, i8 0, i64 16, i1 false), !dbg !3120
  %2 = bitcast %struct.ipa_func_list** %wl to i8*, !dbg !3121
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8, !dbg !3121
  tail call fastcc void @ipa_check_create_node_params() #7, !dbg !3122
  tail call fastcc void @ipa_check_create_edge_args() #7, !dbg !3123
  %call = tail call %struct.ipa_func_list* @ipa_init_func_list() #6, !dbg !3124
  call void @llvm.dbg.value(metadata %struct.ipa_func_list* %call, metadata !3101, metadata !DIExpression()), !dbg !3125
  store %struct.ipa_func_list* %call, %struct.ipa_func_list** %wl, align 8, !dbg !3126
  %type = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %new_lat, i64 0, i32 0, !dbg !3127
  %constant = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %new_lat, i64 0, i32 1, !dbg !3127
  %3 = bitcast %union.tree_node** %constant to i64*, !dbg !3127
  br label %while.cond, !dbg !3133

while.cond.loopexit:                              ; preds = %for.cond
  %.pre = load %struct.ipa_func_list*, %struct.ipa_func_list** %wl, align 8, !dbg !3134
  br label %while.cond, !dbg !3133

while.cond:                                       ; preds = %while.cond.loopexit, %entry
  %4 = phi %struct.ipa_func_list* [ %.pre, %while.cond.loopexit ], [ %call, %entry ], !dbg !3134
  call void @llvm.dbg.value(metadata %struct.ipa_func_list* %4, metadata !3101, metadata !DIExpression()), !dbg !3125
  %tobool = icmp eq %struct.ipa_func_list* %4, null, !dbg !3133
  br i1 %tobool, label %while.end, label %while.body, !dbg !3133

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata %struct.ipa_func_list** %wl, metadata !3101, metadata !DIExpression(DW_OP_deref)), !dbg !3125
  %call1 = call %struct.cgraph_node* @ipa_pop_func_from_list(%struct.ipa_func_list** nonnull %wl) #6, !dbg !3135
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call1, metadata !3108, metadata !DIExpression()), !dbg !3136
  %5 = load %struct.VEC_ipa_node_params_t_heap*, %struct.VEC_ipa_node_params_t_heap** @ipa_node_params_vector, align 8, !dbg !3137
  %base = getelementptr inbounds %struct.VEC_ipa_node_params_t_heap, %struct.VEC_ipa_node_params_t_heap* %5, i64 0, i32 0, !dbg !3137
  %uid = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call1, i64 0, i32 24, !dbg !3137
  %6 = load i32, i32* %uid, align 8, !dbg !3137
  %call3 = call fastcc %struct.ipa_node_params* @VEC_ipa_node_params_t_base_index(%struct.VEC_ipa_node_params_t_base* %base, i32 %6) #7, !dbg !3137
  call void @llvm.dbg.value(metadata %struct.ipa_node_params* %call3, metadata !3110, metadata !DIExpression()), !dbg !3136
  %callees = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call1, i64 0, i32 1, !dbg !3138
  br label %for.cond, !dbg !3139

for.cond:                                         ; preds = %cleanup, %while.body
  %cs.0.in = phi %struct.cgraph_edge** [ %callees, %while.body ], [ %next_callee, %cleanup ]
  %cs.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %cs.0.in, align 8, !dbg !3140
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %cs.0, metadata !3099, metadata !DIExpression()), !dbg !3125
  %tobool4 = icmp eq %struct.cgraph_edge* %cs.0, null, !dbg !3141
  br i1 %tobool4, label %while.cond.loopexit, label %for.body, !dbg !3141, !llvm.loop !3142

for.body:                                         ; preds = %for.cond
  %7 = load %struct.VEC_ipa_node_params_t_heap*, %struct.VEC_ipa_node_params_t_heap** @ipa_node_params_vector, align 8, !dbg !3144
  %base7 = getelementptr inbounds %struct.VEC_ipa_node_params_t_heap, %struct.VEC_ipa_node_params_t_heap* %7, i64 0, i32 0, !dbg !3144
  %callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %cs.0, i64 0, i32 2, !dbg !3144
  %8 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !3144
  %uid11 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %8, i64 0, i32 24, !dbg !3144
  %9 = load i32, i32* %uid11, align 8, !dbg !3144
  %call12 = call fastcc %struct.ipa_node_params* @VEC_ipa_node_params_t_base_index(%struct.VEC_ipa_node_params_t_base* %base7, i32 %9) #7, !dbg !3144
  call void @llvm.dbg.value(metadata %struct.ipa_node_params* %call12, metadata !3111, metadata !DIExpression()), !dbg !3145
  %10 = load %struct.VEC_ipa_edge_args_t_gc*, %struct.VEC_ipa_edge_args_t_gc** @ipa_edge_args_vector, align 8, !dbg !3146
  %base15 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_gc, %struct.VEC_ipa_edge_args_t_gc* %10, i64 0, i32 0, !dbg !3146
  %uid19 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %cs.0, i64 0, i32 12, !dbg !3146
  %11 = load i32, i32* %uid19, align 4, !dbg !3146
  %call20 = call fastcc %struct.ipa_edge_args* @VEC_ipa_edge_args_t_base_index(%struct.VEC_ipa_edge_args_t_base* %base15, i32 %11) #7, !dbg !3146
  call void @llvm.dbg.value(metadata %struct.ipa_edge_args* %call20, metadata !3115, metadata !DIExpression()), !dbg !3145
  %call21 = call fastcc zeroext i8 @ipa_is_called_with_var_arguments(%struct.ipa_node_params* %call12) #7, !dbg !3147
  %tobool22 = icmp eq i8 %call21, 0, !dbg !3147
  br i1 %tobool22, label %lor.lhs.false, label %cleanup, !dbg !3149

lor.lhs.false:                                    ; preds = %for.body
  %12 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !3150
  %analyzed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %12, i64 0, i32 27, !dbg !3151
  %bf.load = load i16, i16* %analyzed, align 4, !dbg !3151
  %bf.clear = and i16 %bf.load, 32, !dbg !3151
  %tobool24 = icmp eq i16 %bf.clear, 0, !dbg !3152
  br i1 %tobool24, label %cleanup, label %lor.lhs.false25, !dbg !3153

lor.lhs.false25:                                  ; preds = %lor.lhs.false
  %call26 = call fastcc zeroext i8 @ipa_is_called_with_var_arguments(%struct.ipa_node_params* %call12) #7, !dbg !3154
  %tobool28 = icmp eq i8 %call26, 0, !dbg !3154
  br i1 %tobool28, label %if.end, label %cleanup, !dbg !3155

if.end:                                           ; preds = %lor.lhs.false25
  %call29 = call fastcc i32 @ipa_get_cs_argument_count(%struct.ipa_edge_args* %call20) #7, !dbg !3156
  call void @llvm.dbg.value(metadata i32 %call29, metadata !3107, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata i32 0, metadata !3095, metadata !DIExpression()), !dbg !3125
  br label %for.cond30, !dbg !3157

for.cond30:                                       ; preds = %for.inc, %if.end
  %i.0 = phi i32 [ 0, %if.end ], [ %inc, %for.inc ], !dbg !3158
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3095, metadata !DIExpression()), !dbg !3125
  %cmp = icmp slt i32 %i.0, %call29, !dbg !3159
  br i1 %cmp, label %for.body32, label %cleanup.loopexit, !dbg !3160

for.body32:                                       ; preds = %for.cond30
  %call33 = call fastcc %struct.ipa_jump_func* @ipa_get_ith_jump_func(%struct.ipa_edge_args* %call20, i32 %i.0) #7, !dbg !3161
  call void @llvm.dbg.value(metadata %struct.ipa_jump_func* %call33, metadata !3100, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata %struct.ipcp_lattice* %inc_lat, metadata !3096, metadata !DIExpression(DW_OP_deref)), !dbg !3125
  call fastcc void @ipcp_lattice_from_jfunc(%struct.ipa_node_params* %call3, %struct.ipcp_lattice* nonnull %inc_lat, %struct.ipa_jump_func* %call33) #7, !dbg !3162
  %call34 = call fastcc %struct.ipcp_lattice* @ipcp_get_lattice(%struct.ipa_node_params* %call12, i32 %i.0) #7, !dbg !3163
  call void @llvm.dbg.value(metadata %struct.ipcp_lattice* %call34, metadata !3098, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata %struct.ipcp_lattice* %inc_lat, metadata !3096, metadata !DIExpression(DW_OP_deref)), !dbg !3125
  call void @llvm.dbg.value(metadata %struct.ipcp_lattice* %new_lat, metadata !3097, metadata !DIExpression(DW_OP_deref)), !dbg !3125
  call fastcc void @ipa_lattice_meet(%struct.ipcp_lattice* nonnull %new_lat, %struct.ipcp_lattice* nonnull %inc_lat, %struct.ipcp_lattice* %call34) #7, !dbg !3164
  call void @llvm.dbg.value(metadata %struct.ipcp_lattice* %new_lat, metadata !3097, metadata !DIExpression(DW_OP_deref)), !dbg !3125
  %call35 = call fastcc zeroext i8 @ipcp_lattice_changed(%struct.ipcp_lattice* nonnull %new_lat, %struct.ipcp_lattice* %call34) #7, !dbg !3165
  %tobool36 = icmp eq i8 %call35, 0, !dbg !3165
  br i1 %tobool36, label %for.inc, label %if.then37, !dbg !3166

if.then37:                                        ; preds = %for.body32
  %13 = load i32, i32* %type, align 8, !dbg !3167
  %type38 = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %call34, i64 0, i32 0, !dbg !3168
  store i32 %13, i32* %type38, align 8, !dbg !3169
  %14 = load i64, i64* %3, align 8, !dbg !3170
  %constant39 = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %call34, i64 0, i32 1, !dbg !3171
  %15 = bitcast %union.tree_node** %constant39 to i64*, !dbg !3172
  store i64 %14, i64* %15, align 8, !dbg !3172
  %16 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !3173
  call void @llvm.dbg.value(metadata %struct.ipa_func_list** %wl, metadata !3101, metadata !DIExpression(DW_OP_deref)), !dbg !3125
  call fastcc void @ipa_push_func_to_list(%struct.ipa_func_list** nonnull %wl, %struct.cgraph_node* %16) #7, !dbg !3174
  br label %for.inc, !dbg !3175

for.inc:                                          ; preds = %for.body32, %if.then37
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3176
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3095, metadata !DIExpression()), !dbg !3125
  br label %for.cond30, !dbg !3177, !llvm.loop !3178

cleanup.loopexit:                                 ; preds = %for.cond30
  br label %cleanup, !dbg !3180

cleanup:                                          ; preds = %cleanup.loopexit, %lor.lhs.false25, %lor.lhs.false, %for.body
  %next_callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %cs.0, i64 0, i32 6, !dbg !3180
  br label %for.cond, !dbg !3181, !llvm.loop !3182

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8, !dbg !3184
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3184
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !3184
  ret void, !dbg !3184
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @ipcp_change_tops_to_bottom() unnamed_addr #5 !dbg !3185 {
entry:
  call void @llvm.dbg.value(metadata i8 0, metadata !3190, metadata !DIExpression()), !dbg !3199
  br label %for.cond, !dbg !3200

for.cond:                                         ; preds = %for.inc15, %entry
  %node.0.in = phi %struct.cgraph_node** [ @cgraph_nodes, %entry ], [ %next, %for.inc15 ]
  %prop_again.0 = phi i8 [ 0, %entry ], [ %prop_again.1.lcssa, %for.inc15 ], !dbg !3201
  %node.0 = load %struct.cgraph_node*, %struct.cgraph_node** %node.0.in, align 8, !dbg !3202
  call void @llvm.dbg.value(metadata i8 %prop_again.0, metadata !3190, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.0, metadata !3189, metadata !DIExpression()), !dbg !3199
  %tobool = icmp eq %struct.cgraph_node* %node.0, null, !dbg !3203
  br i1 %tobool, label %for.end16, label %for.body, !dbg !3203

for.body:                                         ; preds = %for.cond
  %0 = load %struct.VEC_ipa_node_params_t_heap*, %struct.VEC_ipa_node_params_t_heap** @ipa_node_params_vector, align 8, !dbg !3204
  %base = getelementptr inbounds %struct.VEC_ipa_node_params_t_heap, %struct.VEC_ipa_node_params_t_heap* %0, i64 0, i32 0, !dbg !3204
  %uid = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 24, !dbg !3204
  %1 = load i32, i32* %uid, align 8, !dbg !3204
  %call = tail call fastcc %struct.ipa_node_params* @VEC_ipa_node_params_t_base_index(%struct.VEC_ipa_node_params_t_base* %base, i32 %1) #7, !dbg !3204
  call void @llvm.dbg.value(metadata %struct.ipa_node_params* %call, metadata !3191, metadata !DIExpression()), !dbg !3205
  %call2 = tail call fastcc i32 @ipa_get_param_count(%struct.ipa_node_params* %call) #7, !dbg !3206
  call void @llvm.dbg.value(metadata i32 %call2, metadata !3188, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i32 0, metadata !3187, metadata !DIExpression()), !dbg !3199
  br label %for.cond3, !dbg !3207

for.cond3:                                        ; preds = %for.inc, %for.body
  %prop_again.1 = phi i8 [ %prop_again.0, %for.body ], [ %prop_again.2, %for.inc ], !dbg !3199
  %i.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !dbg !3208
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3187, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i8 %prop_again.1, metadata !3190, metadata !DIExpression()), !dbg !3199
  %cmp = icmp slt i32 %i.0, %call2, !dbg !3209
  br i1 %cmp, label %for.body4, label %for.inc15, !dbg !3210

for.body4:                                        ; preds = %for.cond3
  %call5 = tail call fastcc %struct.ipcp_lattice* @ipcp_get_lattice(%struct.ipa_node_params* %call, i32 %i.0) #7, !dbg !3211
  call void @llvm.dbg.value(metadata %struct.ipcp_lattice* %call5, metadata !3195, metadata !DIExpression()), !dbg !3212
  %type = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %call5, i64 0, i32 0, !dbg !3213
  %2 = load i32, i32* %type, align 8, !dbg !3213
  %cmp6 = icmp eq i32 %2, 2, !dbg !3215
  br i1 %cmp6, label %if.then, label %for.inc, !dbg !3216

if.then:                                          ; preds = %for.body4
  call void @llvm.dbg.value(metadata i8 1, metadata !3190, metadata !DIExpression()), !dbg !3199
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3217
  %tobool7 = icmp eq %struct._IO_FILE* %3, null, !dbg !3217
  br i1 %tobool7, label %if.end, label %if.then8, !dbg !3220

if.then8:                                         ; preds = %if.then
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0)) #6, !dbg !3221
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3223
  %call10 = tail call fastcc %union.tree_node* @ipa_get_param(%struct.ipa_node_params* %call, i32 %i.0) #7, !dbg !3224
  tail call void @print_generic_expr(%struct._IO_FILE* %4, %union.tree_node* %call10, i32 0) #6, !dbg !3225
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3226
  %call11 = tail call i8* @cgraph_node_name(%struct.cgraph_node* nonnull %node.0) #6, !dbg !3227
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i64 0, i64 0), i8* %call11) #6, !dbg !3228
  br label %if.end, !dbg !3229

if.end:                                           ; preds = %if.then, %if.then8
  store i32 0, i32* %type, align 8, !dbg !3230
  br label %for.inc, !dbg !3231

for.inc:                                          ; preds = %for.body4, %if.end
  %prop_again.2 = phi i8 [ 1, %if.end ], [ %prop_again.1, %for.body4 ], !dbg !3199
  call void @llvm.dbg.value(metadata i8 %prop_again.2, metadata !3190, metadata !DIExpression()), !dbg !3199
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3232
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3187, metadata !DIExpression()), !dbg !3199
  br label %for.cond3, !dbg !3233, !llvm.loop !3234

for.inc15:                                        ; preds = %for.cond3
  %prop_again.1.lcssa = phi i8 [ %prop_again.1, %for.cond3 ], !dbg !3199
  call void @llvm.dbg.value(metadata i8 %prop_again.1.lcssa, metadata !3190, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i8 %prop_again.1.lcssa, metadata !3190, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i8 %prop_again.1.lcssa, metadata !3190, metadata !DIExpression()), !dbg !3199
  %next = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 3, !dbg !3236
  br label %for.cond, !dbg !3237, !llvm.loop !3238

for.end16:                                        ; preds = %for.cond
  %prop_again.0.lcssa = phi i8 [ %prop_again.0, %for.cond ], !dbg !3201
  call void @llvm.dbg.value(metadata i8 %prop_again.0.lcssa, metadata !3190, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i8 %prop_again.0.lcssa, metadata !3190, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i8 %prop_again.0.lcssa, metadata !3190, metadata !DIExpression()), !dbg !3199
  ret i8 %prop_again.0.lcssa, !dbg !3240
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ipa_node_params* @VEC_ipa_node_params_t_base_index(%struct.VEC_ipa_node_params_t_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3241 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_node_params_t_base* %vec_, metadata !3247, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3248, metadata !DIExpression()), !dbg !3249
  br label %land.end, !dbg !3250

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3250
  %arrayidx = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, %struct.VEC_ipa_node_params_t_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3250
  ret %struct.ipa_node_params* %arrayidx, !dbg !3250
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ipa_is_called_with_var_arguments(%struct.ipa_node_params* %info) unnamed_addr #0 !dbg !3251 {
entry:
  call void @llvm.dbg.value(metadata %struct.ipa_node_params* %info, metadata !3255, metadata !DIExpression()), !dbg !3256
  %called_with_var_arguments = getelementptr inbounds %struct.ipa_node_params, %struct.ipa_node_params* %info, i64 0, i32 5, !dbg !3257
  %bf.load = load i8, i8* %called_with_var_arguments, align 8, !dbg !3257
  %bf.clear = and i8 %bf.load, 1, !dbg !3257
  ret i8 %bf.clear, !dbg !3258
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @cgraph_only_called_directly_p(%struct.cgraph_node* %node) unnamed_addr #0 !dbg !3259 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !3263, metadata !DIExpression()), !dbg !3264
  %needed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 27, !dbg !3265
  %bf.load = load i16, i16* %needed, align 4, !dbg !3265
  %bf.clear = and i16 %bf.load, 1, !dbg !3265
  %tobool = icmp eq i16 %bf.clear, 0, !dbg !3266
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !3267

land.rhs:                                         ; preds = %entry
  %externally_visible = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 18, i32 2, !dbg !3268
  %bf.load1 = load i8, i8* %externally_visible, align 8, !dbg !3268
  %bf.clear2 = lshr i8 %bf.load1, 1
  %bf.clear2.lobit = and i8 %bf.clear2, 1
  %0 = xor i8 %bf.clear2.lobit, 1
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %1 = phi i8 [ 0, %entry ], [ %0, %land.rhs ]
  ret i8 %1, !dbg !3269
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @ipcp_cloning_candidate_p(%struct.cgraph_node* %node) unnamed_addr #5 !dbg !3270 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !3272, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata i32 0, metadata !3273, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata i32 0, metadata !3274, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata i64 0, metadata !3275, metadata !DIExpression()), !dbg !3277
  %call = tail call fastcc zeroext i8 @cgraph_only_called_directly_p(%struct.cgraph_node* %node) #7, !dbg !3278
  %tobool = icmp eq i8 %call, 0, !dbg !3278
  br i1 %tobool, label %lor.lhs.false, label %cleanup, !dbg !3280

lor.lhs.false:                                    ; preds = %entry
  %analyzed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 27, !dbg !3281
  %bf.load = load i16, i16* %analyzed, align 4, !dbg !3281
  %bf.clear = and i16 %bf.load, 32, !dbg !3281
  %tobool1 = icmp eq i16 %bf.clear, 0, !dbg !3282
  br i1 %tobool1, label %cleanup, label %if.end, !dbg !3283

if.end:                                           ; preds = %lor.lhs.false
  %call2 = tail call i32 @cgraph_function_body_availability(%struct.cgraph_node* %node) #6, !dbg !3284
  %cmp = icmp ult i32 %call2, 3, !dbg !3286
  br i1 %cmp, label %if.then4, label %if.end10, !dbg !3287

if.then4:                                         ; preds = %if.end
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3288
  %tobool5 = icmp eq %struct._IO_FILE* %0, null, !dbg !3288
  br i1 %tobool5, label %cleanup, label %if.then6, !dbg !3291

if.then6:                                         ; preds = %if.then4
  %call7 = tail call i8* @cgraph_node_name(%struct.cgraph_node* %node) #6, !dbg !3292
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0), i8* %call7) #6, !dbg !3293
  br label %cleanup, !dbg !3293

if.end10:                                         ; preds = %if.end
  %call11 = tail call fastcc zeroext i8 @ipcp_versionable_function_p(%struct.cgraph_node* %node) #7, !dbg !3294
  %tobool12 = icmp eq i8 %call11, 0, !dbg !3294
  br i1 %tobool12, label %if.then13, label %if.end19, !dbg !3296

if.then13:                                        ; preds = %if.end10
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3297
  %tobool14 = icmp eq %struct._IO_FILE* %1, null, !dbg !3297
  br i1 %tobool14, label %cleanup, label %if.then15, !dbg !3300

if.then15:                                        ; preds = %if.then13
  %call16 = tail call i8* @cgraph_node_name(%struct.cgraph_node* %node) #6, !dbg !3301
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.9, i64 0, i64 0), i8* %call16) #6, !dbg !3302
  br label %cleanup, !dbg !3302

if.end19:                                         ; preds = %if.end10
  %callers = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 2, !dbg !3303
  br label %for.cond, !dbg !3305

for.cond:                                         ; preds = %for.body, %if.end19
  %e.0.in = phi %struct.cgraph_edge** [ %callers, %if.end19 ], [ %next_caller, %for.body ]
  %direct_call_sum.0 = phi i64 [ 0, %if.end19 ], [ %add, %for.body ], !dbg !3277
  %n_hot_calls.0 = phi i32 [ 0, %if.end19 ], [ %spec.select, %for.body ], !dbg !3277
  %n_calls.0 = phi i32 [ 0, %if.end19 ], [ %inc, %for.body ], !dbg !3277
  %e.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %e.0.in, align 8, !dbg !3306
  call void @llvm.dbg.value(metadata i32 %n_calls.0, metadata !3273, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata i32 %n_hot_calls.0, metadata !3274, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata i64 %direct_call_sum.0, metadata !3275, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e.0, metadata !3276, metadata !DIExpression()), !dbg !3277
  %tobool20 = icmp eq %struct.cgraph_edge* %e.0, null, !dbg !3307
  br i1 %tobool20, label %for.end, label %for.body, !dbg !3307

for.body:                                         ; preds = %for.cond
  %count = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 0, !dbg !3308
  %2 = load i64, i64* %count, align 8, !dbg !3308
  %add = add nsw i64 %direct_call_sum.0, %2, !dbg !3311
  call void @llvm.dbg.value(metadata i64 %add, metadata !3275, metadata !DIExpression()), !dbg !3277
  %inc = add nuw nsw i32 %n_calls.0, 1, !dbg !3312
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3273, metadata !DIExpression()), !dbg !3277
  %call21 = tail call zeroext i8 @cgraph_maybe_hot_edge_p(%struct.cgraph_edge* nonnull %e.0) #6, !dbg !3313
  %tobool22 = icmp ne i8 %call21, 0, !dbg !3313
  %inc24 = zext i1 %tobool22 to i32, !dbg !3315
  %spec.select = add nuw nsw i32 %n_hot_calls.0, %inc24, !dbg !3315
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !3274, metadata !DIExpression()), !dbg !3277
  %next_caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 4, !dbg !3316
  br label %for.cond, !dbg !3317, !llvm.loop !3318

for.end:                                          ; preds = %for.cond
  %direct_call_sum.0.lcssa = phi i64 [ %direct_call_sum.0, %for.cond ], !dbg !3277
  %n_hot_calls.0.lcssa = phi i32 [ %n_hot_calls.0, %for.cond ], !dbg !3277
  %n_calls.0.lcssa = phi i32 [ %n_calls.0, %for.cond ], !dbg !3277
  call void @llvm.dbg.value(metadata i64 %direct_call_sum.0.lcssa, metadata !3275, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata i32 %n_hot_calls.0.lcssa, metadata !3274, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata i32 %n_calls.0.lcssa, metadata !3273, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata i64 %direct_call_sum.0.lcssa, metadata !3275, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata i32 %n_hot_calls.0.lcssa, metadata !3274, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata i32 %n_calls.0.lcssa, metadata !3273, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata i64 %direct_call_sum.0.lcssa, metadata !3275, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata i32 %n_hot_calls.0.lcssa, metadata !3274, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata i32 %n_calls.0.lcssa, metadata !3273, metadata !DIExpression()), !dbg !3277
  %tobool26 = icmp eq i32 %n_calls.0.lcssa, 0, !dbg !3320
  br i1 %tobool26, label %if.then27, label %if.end33, !dbg !3322

if.then27:                                        ; preds = %for.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3323
  %tobool28 = icmp eq %struct._IO_FILE* %3, null, !dbg !3323
  br i1 %tobool28, label %cleanup, label %if.then29, !dbg !3326

if.then29:                                        ; preds = %if.then27
  %call30 = tail call i8* @cgraph_node_name(%struct.cgraph_node* %node) #6, !dbg !3327
  %call31 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %3, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0), i8* %call30) #6, !dbg !3328
  br label %cleanup, !dbg !3328

if.end33:                                         ; preds = %for.end
  %self_size = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 18, i32 1, i32 1, !dbg !3329
  %4 = load i32, i32* %self_size, align 8, !dbg !3329
  %cmp34 = icmp slt i32 %4, %n_calls.0.lcssa, !dbg !3331
  br i1 %cmp34, label %if.then36, label %if.end42, !dbg !3332

if.then36:                                        ; preds = %if.end33
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3333
  %tobool37 = icmp eq %struct._IO_FILE* %5, null, !dbg !3333
  br i1 %tobool37, label %cleanup, label %if.then38, !dbg !3336

if.then38:                                        ; preds = %if.then36
  %call39 = tail call i8* @cgraph_node_name(%struct.cgraph_node* %node) #6, !dbg !3337
  %call40 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %5, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i64 0, i64 0), i8* %call39) #6, !dbg !3338
  br label %cleanup, !dbg !3338

if.end42:                                         ; preds = %if.end33
  %6 = load i32, i32* @flag_ipa_cp_clone, align 4, !dbg !3339
  %tobool43 = icmp eq i32 %6, 0, !dbg !3339
  br i1 %tobool43, label %if.then44, label %if.end50, !dbg !3341

if.then44:                                        ; preds = %if.end42
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3342
  %tobool45 = icmp eq %struct._IO_FILE* %7, null, !dbg !3342
  br i1 %tobool45, label %cleanup, label %if.then46, !dbg !3345

if.then46:                                        ; preds = %if.then44
  %call47 = tail call i8* @cgraph_node_name(%struct.cgraph_node* %node) #6, !dbg !3346
  %call48 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %7, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.12, i64 0, i64 0), i8* %call47) #6, !dbg !3347
  br label %cleanup, !dbg !3347

if.end50:                                         ; preds = %if.end42
  %8 = bitcast %struct.cgraph_node* %node to %struct.tree_function_decl**, !dbg !3348
  %9 = load %struct.tree_function_decl*, %struct.tree_function_decl** %8, align 8, !dbg !3348
  %f = getelementptr inbounds %struct.tree_function_decl, %struct.tree_function_decl* %9, i64 0, i32 1, !dbg !3348
  %10 = load %struct.function*, %struct.function** %f, align 8, !dbg !3348
  %call51 = tail call zeroext i8 @optimize_function_for_speed_p(%struct.function* %10) #6, !dbg !3350
  %tobool52 = icmp eq i8 %call51, 0, !dbg !3350
  br i1 %tobool52, label %if.then53, label %if.end59, !dbg !3351

if.then53:                                        ; preds = %if.end50
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3352
  %tobool54 = icmp eq %struct._IO_FILE* %11, null, !dbg !3352
  br i1 %tobool54, label %cleanup, label %if.then55, !dbg !3355

if.then55:                                        ; preds = %if.then53
  %call56 = tail call i8* @cgraph_node_name(%struct.cgraph_node* %node) #6, !dbg !3356
  %call57 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %11, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.13, i64 0, i64 0), i8* %call56) #6, !dbg !3357
  br label %cleanup, !dbg !3357

if.end59:                                         ; preds = %if.end50
  %12 = load i64, i64* @max_count, align 8, !dbg !3358
  %tobool60 = icmp eq i64 %12, 0, !dbg !3358
  br i1 %tobool60, label %if.end72, label %if.then61, !dbg !3360

if.then61:                                        ; preds = %if.end59
  %count62 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 23, !dbg !3361
  %13 = load i64, i64* %count62, align 8, !dbg !3361
  %mul = mul nsw i64 %13, 90, !dbg !3364
  %div = sdiv i64 %mul, 100, !dbg !3365
  %cmp63 = icmp sgt i64 %direct_call_sum.0.lcssa, %div, !dbg !3366
  br i1 %cmp63, label %if.then65, label %if.end72, !dbg !3367

if.then65:                                        ; preds = %if.then61
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3368
  %tobool66 = icmp eq %struct._IO_FILE* %14, null, !dbg !3368
  br i1 %tobool66, label %cleanup, label %if.then67, !dbg !3371

if.then67:                                        ; preds = %if.then65
  %call68 = tail call i8* @cgraph_node_name(%struct.cgraph_node* %node) #6, !dbg !3372
  %call69 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %14, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i64 0, i64 0), i8* %call68) #6, !dbg !3373
  br label %cleanup, !dbg !3373

if.end72:                                         ; preds = %if.end59, %if.then61
  %tobool73 = icmp eq i32 %n_hot_calls.0.lcssa, 0, !dbg !3374
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3277
  %tobool81 = icmp ne %struct._IO_FILE* %15, null, !dbg !3277
  br i1 %tobool73, label %if.then74, label %if.end80, !dbg !3376

if.then74:                                        ; preds = %if.end72
  br i1 %tobool81, label %if.then76, label %cleanup, !dbg !3377

if.then76:                                        ; preds = %if.then74
  %call77 = tail call i8* @cgraph_node_name(%struct.cgraph_node* %node) #6, !dbg !3379
  %call78 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %15, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.15, i64 0, i64 0), i8* %call77) #6, !dbg !3381
  br label %cleanup, !dbg !3381

if.end80:                                         ; preds = %if.end72
  br i1 %tobool81, label %if.then82, label %cleanup, !dbg !3382

if.then82:                                        ; preds = %if.end80
  %call83 = tail call i8* @cgraph_node_name(%struct.cgraph_node* %node) #6, !dbg !3383
  %call84 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), i8* %call83) #6, !dbg !3385
  br label %cleanup, !dbg !3385

cleanup:                                          ; preds = %if.then4, %if.then36, %if.then65, %if.then53, %if.then44, %if.then27, %if.then13, %lor.lhs.false, %entry, %if.end80, %if.then82, %if.then74, %if.then76, %if.then67, %if.then55, %if.then46, %if.then38, %if.then29, %if.then15, %if.then6
  %retval.0 = phi i8 [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %if.then6 ], [ 0, %if.then4 ], [ 0, %if.then15 ], [ 0, %if.then13 ], [ 0, %if.then29 ], [ 0, %if.then27 ], [ 1, %if.then38 ], [ 1, %if.then36 ], [ 0, %if.then46 ], [ 0, %if.then44 ], [ 0, %if.then55 ], [ 0, %if.then53 ], [ 1, %if.then67 ], [ 1, %if.then65 ], [ 0, %if.then76 ], [ 0, %if.then74 ], [ 1, %if.then82 ], [ 1, %if.end80 ], !dbg !3277
  ret i8 %retval.0, !dbg !3386
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @ipa_get_param_count(%struct.ipa_node_params* %info) unnamed_addr #0 !dbg !3387 {
entry:
  call void @llvm.dbg.value(metadata %struct.ipa_node_params* %info, metadata !3391, metadata !DIExpression()), !dbg !3392
  %param_count = getelementptr inbounds %struct.ipa_node_params, %struct.ipa_node_params* %info, i64 0, i32 0, !dbg !3393
  %0 = load i32, i32* %param_count, align 8, !dbg !3393
  ret i32 %0, !dbg !3394
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ipcp_lattice* @ipcp_get_lattice(%struct.ipa_node_params* %info, i32 %i) unnamed_addr #0 !dbg !3395 {
entry:
  call void @llvm.dbg.value(metadata %struct.ipa_node_params* %info, metadata !3399, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i32 %i, metadata !3400, metadata !DIExpression()), !dbg !3401
  %params = getelementptr inbounds %struct.ipa_node_params, %struct.ipa_node_params* %info, i64 0, i32 1, !dbg !3402
  %0 = load %struct.ipa_param_descriptor*, %struct.ipa_param_descriptor** %params, align 8, !dbg !3402
  %idxprom = sext i32 %i to i64, !dbg !3403
  %ipcp_lattice = getelementptr inbounds %struct.ipa_param_descriptor, %struct.ipa_param_descriptor* %0, i64 %idxprom, i32 0, !dbg !3404
  ret %struct.ipcp_lattice* %ipcp_lattice, !dbg !3405
}

declare dso_local i32 @cgraph_function_body_availability(%struct.cgraph_node*) local_unnamed_addr #2

declare dso_local i8* @cgraph_node_name(%struct.cgraph_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @ipcp_versionable_function_p(%struct.cgraph_node* %node) unnamed_addr #5 !dbg !3406 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !3408, metadata !DIExpression()), !dbg !3427
  %decl1 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 0, !dbg !3428
  %0 = load %union.tree_node*, %union.tree_node** %decl1, align 8, !dbg !3428
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !3409, metadata !DIExpression()), !dbg !3427
  %call = tail call zeroext i8 @tree_versionable_function_p(%union.tree_node* %0) #6, !dbg !3429
  %tobool = icmp eq i8 %call, 0, !dbg !3429
  br i1 %tobool, label %cleanup41, label %if.end, !dbg !3431

if.end:                                           ; preds = %entry
  %f = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 1, !dbg !3432
  %1 = load %struct.function*, %struct.function** %f, align 8, !dbg !3432
  %stdarg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 20, !dbg !3434
  %bf.load = load i32, i32* %stdarg, align 8, !dbg !3434
  %bf.clear = and i32 %bf.load, 4194304, !dbg !3434
  %tobool2 = icmp eq i32 %bf.clear, 0, !dbg !3432
  br i1 %tobool2, label %if.end4, label %cleanup41, !dbg !3435

if.end4:                                          ; preds = %if.end
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !3436
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3436
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 0, !dbg !3436
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3436
  %4 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !3437
  %5 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !3438
  br label %for.cond, !dbg !3436

for.cond:                                         ; preds = %for.inc38, %if.end4
  %6 = phi %struct.control_flow_graph* [ %2, %if.end4 ], [ %.pre1, %for.inc38 ], !dbg !3439
  %.pn = phi %struct.basic_block_def* [ %3, %if.end4 ], [ %bb.0, %for.inc38 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !3440
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3440
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3410, metadata !DIExpression()), !dbg !3427
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %6, i64 0, i32 1, !dbg !3439
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3439
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %7, !dbg !3439
  br i1 %cmp, label %cleanup41.loopexit, label %for.body, !dbg !3436

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #8, !dbg !3441
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #8, !dbg !3442
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb.0) #7, !dbg !3442
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* nonnull align 8 %5, i64 24, i1 false), !dbg !3442
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #8, !dbg !3442
  br label %for.cond10, !dbg !3443

for.cond10:                                       ; preds = %for.inc, %for.body
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3411, metadata !DIExpression(DW_OP_deref)), !dbg !3437
  %call11 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3444
  %tobool12 = icmp eq i8 %call11, 0, !dbg !3445
  br i1 %tobool12, label %for.body13, label %cleanup35, !dbg !3446

for.body13:                                       ; preds = %for.cond10
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3411, metadata !DIExpression(DW_OP_deref)), !dbg !3437
  %call14 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3447
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call14, metadata !3421, metadata !DIExpression()), !dbg !3448
  %call15 = call fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %call14) #7, !dbg !3449
  %tobool16 = icmp eq i8 %call15, 0, !dbg !3449
  br i1 %tobool16, label %cleanup, label %if.end18, !dbg !3451

if.end18:                                         ; preds = %for.body13
  %call19 = call fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %call14) #7, !dbg !3452
  call void @llvm.dbg.value(metadata %union.tree_node* %call19, metadata !3426, metadata !DIExpression()), !dbg !3448
  %cmp20 = icmp eq %union.tree_node* %call19, null, !dbg !3453
  br i1 %cmp20, label %cleanup, label %if.end22, !dbg !3455

if.end22:                                         ; preds = %if.end18
  %built_in_class = getelementptr inbounds %union.tree_node, %union.tree_node* %call19, i64 0, i32 0, i32 5, !dbg !3456
  %bf.load24 = load i32, i32* %built_in_class, align 8, !dbg !3456
  %bf.clear26 = and i32 %bf.load24, 6144, !dbg !3456
  %cmp27 = icmp eq i32 %bf.clear26, 6144, !dbg !3458
  br i1 %cmp27, label %land.lhs.true, label %if.end33, !dbg !3459

land.lhs.true:                                    ; preds = %if.end22
  %bf.clear30 = and i32 %bf.load24, 2047, !dbg !3460
  %cmp31 = icmp eq i32 %bf.clear30, 417, !dbg !3461
  br i1 %cmp31, label %cleanup, label %if.end33, !dbg !3462

if.end33:                                         ; preds = %land.lhs.true, %if.end22
  br label %cleanup, !dbg !3463

cleanup:                                          ; preds = %for.body13, %land.lhs.true, %if.end18, %if.end33
  %cleanup.dest.slot.0 = phi i32 [ 0, %if.end33 ], [ 7, %for.body13 ], [ 7, %if.end18 ], [ 1, %land.lhs.true ]
  switch i32 %cleanup.dest.slot.0, label %cleanup35 [
    i32 0, label %for.inc
    i32 7, label %for.inc
  ]

for.inc:                                          ; preds = %cleanup, %cleanup
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3411, metadata !DIExpression(DW_OP_deref)), !dbg !3437
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !3464
  br label %for.cond10, !dbg !3465, !llvm.loop !3466

cleanup35:                                        ; preds = %for.cond10, %cleanup
  %cleanup.dest.slot.1 = phi i32 [ %cleanup.dest.slot.0, %cleanup ], [ 0, %for.cond10 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #8, !dbg !3468
  %cond = icmp eq i32 %cleanup.dest.slot.1, 0
  br i1 %cond, label %for.inc38, label %cleanup41.loopexit

for.inc38:                                        ; preds = %cleanup35
  %.pre = load %struct.function*, %struct.function** %f, align 8, !dbg !3439
  %cfg9.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !3469
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg9.phi.trans.insert, align 8, !dbg !3439
  br label %for.cond, !dbg !3439, !llvm.loop !3470

cleanup41.loopexit:                               ; preds = %cleanup35, %for.cond
  %retval.4.ph = phi i8 [ 1, %for.cond ], [ 0, %cleanup35 ]
  br label %cleanup41, !dbg !3472

cleanup41:                                        ; preds = %cleanup41.loopexit, %if.end, %entry
  %retval.4 = phi i8 [ 0, %entry ], [ 0, %if.end ], [ %retval.4.ph, %cleanup41.loopexit ]
  ret i8 %retval.4, !dbg !3472
}

declare dso_local zeroext i8 @cgraph_maybe_hot_edge_p(%struct.cgraph_edge*) local_unnamed_addr #2

declare dso_local zeroext i8 @optimize_function_for_speed_p(%struct.function*) local_unnamed_addr #2

declare dso_local zeroext i8 @tree_versionable_function_p(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3473 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3477, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !3478, metadata !DIExpression()), !dbg !3481
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #7, !dbg !3482
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !3479, metadata !DIExpression()), !dbg !3480
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %call) #7, !dbg !3483
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !3484
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3485
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !3486
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !3487
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !3488
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !3489
  ret void, !dbg !3490
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !3491 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !3495, metadata !DIExpression()), !dbg !3496
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3497
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3497
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !3498
  %conv1 = zext i1 %cmp to i8, !dbg !3499
  ret i8 %conv1, !dbg !3500
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !3501 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !3505, metadata !DIExpression()), !dbg !3506
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3507
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3507
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !3508
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !3508
  ret %union.gimple_statement_d* %1, !dbg !3509
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3510 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3514, metadata !DIExpression()), !dbg !3515
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !3516
  %cmp = icmp eq i32 %call, 8, !dbg !3517
  %conv1 = zext i1 %cmp to i8, !dbg !3516
  ret i8 %conv1, !dbg !3518
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3519 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3523, metadata !DIExpression()), !dbg !3525
  %call = tail call fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) #7, !dbg !3526
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3524, metadata !DIExpression()), !dbg !3525
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3527
  %bf.load = load i64, i64* %0, align 8, !dbg !3527
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3529
  %cmp = icmp eq i64 %bf.cast1, 121, !dbg !3529
  br i1 %cmp, label %if.then, label %cleanup, !dbg !3530

if.then:                                          ; preds = %entry
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3531
  %1 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !3531
  br label %cleanup, !dbg !3532

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %1, %if.then ], [ null, %entry ], !dbg !3525
  ret %union.tree_node* %retval.0, !dbg !3533
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !3534 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3539, metadata !DIExpression()), !dbg !3540
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3541
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3541
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !3542
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !3542
  %2 = load i64, i64* %1, align 8, !dbg !3542
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !3543
  store i64 %2, i64* %3, align 8, !dbg !3543
  ret void, !dbg !3544
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3545 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3552, metadata !DIExpression()), !dbg !3553
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !3554
  %0 = load i32, i32* %flags, align 8, !dbg !3554
  %and = and i32 %0, 512, !dbg !3555
  %tobool = icmp eq i32 %and, 0, !dbg !3555
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !3556

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !3557
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !3557
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !3558
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !3559

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !3560
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !3560
  br label %cond.end, !dbg !3559

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !3559
  ret %struct.gimple_seq_d* %cond, !dbg !3561
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !3562 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !3569, metadata !DIExpression()), !dbg !3570
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !3571
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3571

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !3572
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !3572
  br label %cond.end, !dbg !3571

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !3571
  ret %struct.gimple_seq_node_d* %cond, !dbg !3573
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3574 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3578, metadata !DIExpression()), !dbg !3579
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !3580
  %bf.load = load i32, i32* %0, align 8, !dbg !3580
  %bf.clear = and i32 %bf.load, 255, !dbg !3580
  ret i32 %bf.clear, !dbg !3581
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3582 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3584, metadata !DIExpression()), !dbg !3585
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #7, !dbg !3586
  ret %union.tree_node* %call, !dbg !3587
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3588 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3592, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata i32 1, metadata !3593, metadata !DIExpression()), !dbg !3594
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #7, !dbg !3595
  %tobool = icmp eq i8 %call, 0, !dbg !3595
  br i1 %tobool, label %return, label %if.then, !dbg !3597

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #7, !dbg !3598
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 1, !dbg !3598
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3598
  br label %return, !dbg !3600

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ null, %entry ], !dbg !3601
  ret %union.tree_node* %retval.0, !dbg !3602
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3603 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3605, metadata !DIExpression()), !dbg !3606
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !3607
  %cmp = icmp eq i32 %call, 0, !dbg !3608
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !3609

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !3610
  %cmp2 = icmp ult i32 %call1, 10, !dbg !3611
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !3612
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3613 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3617, metadata !DIExpression()), !dbg !3619
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #7, !dbg !3620
  %idxprom = zext i32 %call to i64, !dbg !3621
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !3621
  %0 = load i64, i64* %arrayidx, align 8, !dbg !3621
  call void @llvm.dbg.value(metadata i64 %0, metadata !3618, metadata !DIExpression()), !dbg !3619
  %cmp = icmp eq i64 %0, 0, !dbg !3622
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3622

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !3622
  br label %cond.end, !dbg !3622

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !3623
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !3624
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !3625
  ret %union.tree_node** %2, !dbg !3626
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3627 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3631, metadata !DIExpression()), !dbg !3632
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !3633
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #7, !dbg !3634
  ret i32 %call1, !dbg !3635
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !3636 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3640, metadata !DIExpression()), !dbg !3641
  %idxprom = zext i32 %code to i64, !dbg !3642
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !3642
  %0 = load i32, i32* %arrayidx, align 4, !dbg !3642
  ret i32 %0, !dbg !3643
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ipcp_set_node_scale(%struct.cgraph_node* %node, i64 %count) unnamed_addr #0 !dbg !3644 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !3648, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata i64 %count, metadata !3649, metadata !DIExpression()), !dbg !3650
  %0 = load %struct.VEC_ipa_node_params_t_heap*, %struct.VEC_ipa_node_params_t_heap** @ipa_node_params_vector, align 8, !dbg !3651
  %base = getelementptr inbounds %struct.VEC_ipa_node_params_t_heap, %struct.VEC_ipa_node_params_t_heap* %0, i64 0, i32 0, !dbg !3651
  %uid = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 24, !dbg !3651
  %1 = load i32, i32* %uid, align 8, !dbg !3651
  %call = tail call fastcc %struct.ipa_node_params* @VEC_ipa_node_params_t_base_index(%struct.VEC_ipa_node_params_t_base* %base, i32 %1) #7, !dbg !3651
  %count_scale = getelementptr inbounds %struct.ipa_node_params, %struct.ipa_node_params* %call, i64 0, i32 4, !dbg !3652
  store i64 %count, i64* %count_scale, align 8, !dbg !3653
  ret void, !dbg !3654
}

declare dso_local void @print_generic_expr(%struct._IO_FILE*, %union.tree_node*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @ipcp_get_node_scale(%struct.cgraph_node* %node) unnamed_addr #0 !dbg !3655 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !3659, metadata !DIExpression()), !dbg !3660
  %0 = load %struct.VEC_ipa_node_params_t_heap*, %struct.VEC_ipa_node_params_t_heap** @ipa_node_params_vector, align 8, !dbg !3661
  %base = getelementptr inbounds %struct.VEC_ipa_node_params_t_heap, %struct.VEC_ipa_node_params_t_heap* %0, i64 0, i32 0, !dbg !3661
  %uid = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 24, !dbg !3661
  %1 = load i32, i32* %uid, align 8, !dbg !3661
  %call = tail call fastcc %struct.ipa_node_params* @VEC_ipa_node_params_t_base_index(%struct.VEC_ipa_node_params_t_base* %base, i32 %1) #7, !dbg !3661
  %count_scale = getelementptr inbounds %struct.ipa_node_params, %struct.ipa_node_params* %call, i64 0, i32 4, !dbg !3662
  %2 = load i64, i64* %count_scale, align 8, !dbg !3662
  ret i64 %2, !dbg !3663
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ipa_check_create_node_params() unnamed_addr #0 !dbg !3664 {
entry:
  %0 = load %struct.VEC_ipa_node_params_t_heap*, %struct.VEC_ipa_node_params_t_heap** @ipa_node_params_vector, align 8, !dbg !3665
  %tobool = icmp eq %struct.VEC_ipa_node_params_t_heap* %0, null, !dbg !3665
  br i1 %tobool, label %if.then, label %if.end, !dbg !3667

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @cgraph_max_uid, align 4, !dbg !3668
  %call = tail call fastcc %struct.VEC_ipa_node_params_t_heap* @VEC_ipa_node_params_t_heap_alloc(i32 %1) #7, !dbg !3668
  store %struct.VEC_ipa_node_params_t_heap* %call, %struct.VEC_ipa_node_params_t_heap** @ipa_node_params_vector, align 8, !dbg !3669
  br label %if.end, !dbg !3670

if.end:                                           ; preds = %entry, %if.then
  %2 = phi %struct.VEC_ipa_node_params_t_heap* [ %0, %entry ], [ %call, %if.then ], !dbg !3671
  %base = getelementptr inbounds %struct.VEC_ipa_node_params_t_heap, %struct.VEC_ipa_node_params_t_heap* %2, i64 0, i32 0, !dbg !3671
  %call2 = tail call fastcc i32 @VEC_ipa_node_params_t_base_length(%struct.VEC_ipa_node_params_t_base* %base) #7, !dbg !3671
  %3 = load i32, i32* @cgraph_max_uid, align 4, !dbg !3673
  %cmp = icmp ugt i32 %call2, %3, !dbg !3674
  br i1 %cmp, label %if.end4, label %if.then3, !dbg !3675

if.then3:                                         ; preds = %if.end
  %add = add nsw i32 %3, 1, !dbg !3676
  tail call fastcc void @VEC_ipa_node_params_t_heap_safe_grow_cleared(%struct.VEC_ipa_node_params_t_heap** nonnull @ipa_node_params_vector, i32 %add) #7, !dbg !3676
  br label %if.end4, !dbg !3676

if.end4:                                          ; preds = %if.end, %if.then3
  ret void, !dbg !3677
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ipa_check_create_edge_args() unnamed_addr #0 !dbg !3678 {
entry:
  %0 = load %struct.VEC_ipa_edge_args_t_gc*, %struct.VEC_ipa_edge_args_t_gc** @ipa_edge_args_vector, align 8, !dbg !3679
  %tobool = icmp eq %struct.VEC_ipa_edge_args_t_gc* %0, null, !dbg !3679
  br i1 %tobool, label %if.then, label %if.end, !dbg !3681

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @cgraph_edge_max_uid, align 4, !dbg !3682
  %call = tail call fastcc %struct.VEC_ipa_edge_args_t_gc* @VEC_ipa_edge_args_t_gc_alloc(i32 %1) #7, !dbg !3682
  store %struct.VEC_ipa_edge_args_t_gc* %call, %struct.VEC_ipa_edge_args_t_gc** @ipa_edge_args_vector, align 8, !dbg !3683
  br label %if.end, !dbg !3684

if.end:                                           ; preds = %entry, %if.then
  %2 = phi %struct.VEC_ipa_edge_args_t_gc* [ %0, %entry ], [ %call, %if.then ], !dbg !3685
  %base = getelementptr inbounds %struct.VEC_ipa_edge_args_t_gc, %struct.VEC_ipa_edge_args_t_gc* %2, i64 0, i32 0, !dbg !3685
  %call2 = tail call fastcc i32 @VEC_ipa_edge_args_t_base_length(%struct.VEC_ipa_edge_args_t_base* %base) #7, !dbg !3685
  %3 = load i32, i32* @cgraph_edge_max_uid, align 4, !dbg !3687
  %cmp = icmp ugt i32 %call2, %3, !dbg !3688
  br i1 %cmp, label %if.end4, label %if.then3, !dbg !3689

if.then3:                                         ; preds = %if.end
  %add = add nsw i32 %3, 1, !dbg !3690
  tail call fastcc void @VEC_ipa_edge_args_t_gc_safe_grow_cleared(%struct.VEC_ipa_edge_args_t_gc** nonnull @ipa_edge_args_vector, i32 %add) #7, !dbg !3690
  br label %if.end4, !dbg !3690

if.end4:                                          ; preds = %if.end, %if.then3
  ret void, !dbg !3691
}

declare dso_local %struct.ipa_func_list* @ipa_init_func_list() local_unnamed_addr #2

declare dso_local %struct.cgraph_node* @ipa_pop_func_from_list(%struct.ipa_func_list**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ipa_edge_args* @VEC_ipa_edge_args_t_base_index(%struct.VEC_ipa_edge_args_t_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3692 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_edge_args_t_base* %vec_, metadata !3698, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3699, metadata !DIExpression()), !dbg !3700
  br label %land.end, !dbg !3701

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3701
  %arrayidx = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, %struct.VEC_ipa_edge_args_t_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3701
  ret %struct.ipa_edge_args* %arrayidx, !dbg !3701
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @ipa_get_cs_argument_count(%struct.ipa_edge_args* %args) unnamed_addr #0 !dbg !3702 {
entry:
  call void @llvm.dbg.value(metadata %struct.ipa_edge_args* %args, metadata !3706, metadata !DIExpression()), !dbg !3707
  %argument_count = getelementptr inbounds %struct.ipa_edge_args, %struct.ipa_edge_args* %args, i64 0, i32 0, !dbg !3708
  %0 = load i32, i32* %argument_count, align 8, !dbg !3708
  ret i32 %0, !dbg !3709
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ipa_jump_func* @ipa_get_ith_jump_func(%struct.ipa_edge_args* %args, i32 %i) unnamed_addr #0 !dbg !3710 {
entry:
  call void @llvm.dbg.value(metadata %struct.ipa_edge_args* %args, metadata !3714, metadata !DIExpression()), !dbg !3716
  call void @llvm.dbg.value(metadata i32 %i, metadata !3715, metadata !DIExpression()), !dbg !3716
  %jump_functions = getelementptr inbounds %struct.ipa_edge_args, %struct.ipa_edge_args* %args, i64 0, i32 1, !dbg !3717
  %0 = load %struct.ipa_jump_func*, %struct.ipa_jump_func** %jump_functions, align 8, !dbg !3717
  %idxprom = sext i32 %i to i64, !dbg !3718
  %arrayidx = getelementptr inbounds %struct.ipa_jump_func, %struct.ipa_jump_func* %0, i64 %idxprom, !dbg !3718
  ret %struct.ipa_jump_func* %arrayidx, !dbg !3719
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ipcp_lattice_from_jfunc(%struct.ipa_node_params* %info, %struct.ipcp_lattice* %lat, %struct.ipa_jump_func* %jfunc) unnamed_addr #5 !dbg !3720 {
entry:
  %t = alloca %union.tree_node*, align 8
  call void @llvm.dbg.value(metadata %struct.ipa_node_params* %info, metadata !3724, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata %struct.ipcp_lattice* %lat, metadata !3725, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata %struct.ipa_jump_func* %jfunc, metadata !3726, metadata !DIExpression()), !dbg !3740
  %type = getelementptr inbounds %struct.ipa_jump_func, %struct.ipa_jump_func* %jfunc, i64 0, i32 0, !dbg !3741
  %0 = load i32, i32* %type, align 8, !dbg !3741
  %cmp = icmp eq i32 %0, 1, !dbg !3742
  br i1 %cmp, label %if.then, label %if.else, !dbg !3743

if.then:                                          ; preds = %entry
  %type1 = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %lat, i64 0, i32 0, !dbg !3744
  store i32 1, i32* %type1, align 8, !dbg !3746
  %1 = getelementptr inbounds %struct.ipa_jump_func, %struct.ipa_jump_func* %jfunc, i64 0, i32 1, i32 0, i32 0, !dbg !3747
  %2 = load i64, i64* %1, align 8, !dbg !3747
  %constant2 = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %lat, i64 0, i32 1, !dbg !3748
  %3 = bitcast %union.tree_node** %constant2 to i64*, !dbg !3749
  store i64 %2, i64* %3, align 8, !dbg !3749
  br label %if.end85, !dbg !3750

if.else:                                          ; preds = %entry
  %cmp4 = icmp eq i32 %0, 3, !dbg !3751
  br i1 %cmp4, label %if.then5, label %if.else39, !dbg !3752

if.then5:                                         ; preds = %if.else
  %formal_id = getelementptr inbounds %struct.ipa_jump_func, %struct.ipa_jump_func* %jfunc, i64 0, i32 1, i32 0, i32 1, !dbg !3753
  %4 = bitcast %union.tree_node** %formal_id to i32*, !dbg !3753
  %5 = load i32, i32* %4, align 8, !dbg !3753
  %call = tail call fastcc %struct.ipcp_lattice* @ipcp_get_lattice(%struct.ipa_node_params* %info, i32 %5) #7, !dbg !3754
  call void @llvm.dbg.value(metadata %struct.ipcp_lattice* %call, metadata !3727, metadata !DIExpression()), !dbg !3755
  %type7 = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %call, i64 0, i32 0, !dbg !3756
  %6 = load i32, i32* %type7, align 8, !dbg !3756
  %type8 = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %lat, i64 0, i32 0, !dbg !3757
  store i32 %6, i32* %type8, align 8, !dbg !3758
  %7 = load i32, i32* %type7, align 8, !dbg !3759
  %cmp10 = icmp eq i32 %7, 1, !dbg !3761
  br i1 %cmp10, label %if.end, label %cleanup, !dbg !3762

if.end:                                           ; preds = %if.then5
  %constant12 = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %call, i64 0, i32 1, !dbg !3763
  %8 = load %union.tree_node*, %union.tree_node** %constant12, align 8, !dbg !3763
  call void @llvm.dbg.value(metadata %union.tree_node* %8, metadata !3731, metadata !DIExpression()), !dbg !3755
  %value13 = getelementptr inbounds %struct.ipa_jump_func, %struct.ipa_jump_func* %jfunc, i64 0, i32 1, !dbg !3764
  %pass_through14 = bitcast %union.jump_func_value* %value13 to %struct.ipa_pass_through_data*, !dbg !3765
  %operation = getelementptr inbounds %struct.ipa_pass_through_data, %struct.ipa_pass_through_data* %pass_through14, i64 0, i32 2, !dbg !3766
  %9 = load i32, i32* %operation, align 4, !dbg !3766
  %cmp15 = icmp eq i32 %9, 116, !dbg !3767
  br i1 %cmp15, label %if.end31, label %if.then16, !dbg !3768

if.then16:                                        ; preds = %if.end
  %idxprom = sext i32 %9 to i64, !dbg !3769
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %idxprom, !dbg !3769
  %10 = load i32, i32* %arrayidx, align 4, !dbg !3769
  %cmp20 = icmp eq i32 %10, 5, !dbg !3771
  br i1 %cmp20, label %if.then21, label %if.else22, !dbg !3772

if.then21:                                        ; preds = %if.then16
  br label %if.end24, !dbg !3773

if.else22:                                        ; preds = %if.then16
  %type23 = getelementptr inbounds %union.tree_node, %union.tree_node* %8, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3774
  br label %if.end24

if.end24:                                         ; preds = %if.else22, %if.then21
  %restype.0.in = phi %union.tree_node** [ getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), %if.then21 ], [ %type23, %if.else22 ]
  %restype.0 = load %union.tree_node*, %union.tree_node** %restype.0.in, align 8, !dbg !3775
  call void @llvm.dbg.value(metadata %union.tree_node* %restype.0, metadata !3732, metadata !DIExpression()), !dbg !3776
  %operand = bitcast %union.jump_func_value* %value13 to %union.tree_node**, !dbg !3777
  %11 = load %union.tree_node*, %union.tree_node** %operand, align 8, !dbg !3777
  %call30 = tail call %union.tree_node* @fold_binary_loc(i32 0, i32 %9, %union.tree_node* %restype.0, %union.tree_node* %8, %union.tree_node* %11) #6, !dbg !3777
  call void @llvm.dbg.value(metadata %union.tree_node* %call30, metadata !3731, metadata !DIExpression()), !dbg !3755
  br label %if.end31, !dbg !3778

if.end31:                                         ; preds = %if.end, %if.end24
  %cst.0 = phi %union.tree_node* [ %call30, %if.end24 ], [ %8, %if.end ], !dbg !3755
  call void @llvm.dbg.value(metadata %union.tree_node* %cst.0, metadata !3731, metadata !DIExpression()), !dbg !3755
  %tobool = icmp eq %union.tree_node* %cst.0, null, !dbg !3779
  br i1 %tobool, label %if.then34, label %lor.lhs.false, !dbg !3781

lor.lhs.false:                                    ; preds = %if.end31
  %call32 = tail call zeroext i8 @is_gimple_ip_invariant(%union.tree_node* nonnull %cst.0) #6, !dbg !3782
  %tobool33 = icmp eq i8 %call32, 0, !dbg !3782
  br i1 %tobool33, label %if.then34, label %if.end36, !dbg !3783

if.then34:                                        ; preds = %lor.lhs.false, %if.end31
  store i32 0, i32* %type8, align 8, !dbg !3784
  br label %if.end36, !dbg !3785

if.end36:                                         ; preds = %lor.lhs.false, %if.then34
  %constant37 = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %lat, i64 0, i32 1, !dbg !3786
  store %union.tree_node* %cst.0, %union.tree_node** %constant37, align 8, !dbg !3787
  br label %cleanup, !dbg !3788

cleanup:                                          ; preds = %if.then5, %if.end36
  ret void

if.else39:                                        ; preds = %if.else
  %cmp41 = icmp eq i32 %0, 4, !dbg !3789
  br i1 %cmp41, label %if.then42, label %if.else81, !dbg !3790

if.then42:                                        ; preds = %if.else39
  %12 = bitcast %union.tree_node** %t to i8*, !dbg !3791
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #8, !dbg !3791
  %formal_id45 = getelementptr inbounds %struct.ipa_jump_func, %struct.ipa_jump_func* %jfunc, i64 0, i32 1, i32 0, i32 2, !dbg !3792
  %13 = load i32, i32* %formal_id45, align 8, !dbg !3792
  %call46 = tail call fastcc %struct.ipcp_lattice* @ipcp_get_lattice(%struct.ipa_node_params* %info, i32 %13) #7, !dbg !3793
  call void @llvm.dbg.value(metadata %struct.ipcp_lattice* %call46, metadata !3735, metadata !DIExpression()), !dbg !3794
  %type47 = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %call46, i64 0, i32 0, !dbg !3795
  %14 = load i32, i32* %type47, align 8, !dbg !3795
  %type48 = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %lat, i64 0, i32 0, !dbg !3796
  store i32 %14, i32* %type48, align 8, !dbg !3797
  %15 = load i32, i32* %type47, align 8, !dbg !3798
  %cmp50 = icmp eq i32 %15, 1, !dbg !3800
  br i1 %cmp50, label %if.end52, label %cleanup76, !dbg !3801

if.end52:                                         ; preds = %if.then42
  %constant53 = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %call46, i64 0, i32 1, !dbg !3802
  %16 = bitcast %union.tree_node** %constant53 to i64**, !dbg !3802
  %17 = load i64*, i64** %16, align 8, !dbg !3802
  %bf.load = load i64, i64* %17, align 8, !dbg !3802
  %bf.cast2 = and i64 %bf.load, 65535, !dbg !3804
  %cmp54 = icmp eq i64 %bf.cast2, 121, !dbg !3804
  br i1 %cmp54, label %if.end57, label %if.then55, !dbg !3805

if.then55:                                        ; preds = %if.end52
  store i32 0, i32* %type48, align 8, !dbg !3806
  br label %cleanup76, !dbg !3808

if.end57:                                         ; preds = %if.end52
  %arrayidx59 = getelementptr inbounds i64, i64* %17, i64 5, !dbg !3809
  %18 = load i64, i64* %arrayidx59, align 8, !dbg !3809
  %19 = bitcast %union.tree_node** %t to i64*, !dbg !3810
  store i64 %18, i64* %19, align 8, !dbg !3810
  %.cast = inttoptr i64 %18 to %struct.tree_common*, !dbg !3811
  %type61 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %.cast, i64 0, i32 2, !dbg !3811
  %20 = load %union.tree_node*, %union.tree_node** %type61, align 8, !dbg !3811
  %offset = getelementptr inbounds %struct.ipa_jump_func, %struct.ipa_jump_func* %jfunc, i64 0, i32 1, i32 0, i32 0, !dbg !3812
  %21 = load i64, i64* %offset, align 8, !dbg !3812
  %type66 = getelementptr inbounds %struct.ipa_jump_func, %struct.ipa_jump_func* %jfunc, i64 0, i32 1, i32 0, i32 1, !dbg !3813
  %22 = load %union.tree_node*, %union.tree_node** %type66, align 8, !dbg !3813
  call void @llvm.dbg.value(metadata %union.tree_node** %t, metadata !3738, metadata !DIExpression(DW_OP_deref)), !dbg !3794
  %call67 = call zeroext i8 @build_ref_for_offset(%union.tree_node** nonnull %t, %union.tree_node* %20, i64 %21, %union.tree_node* %22, i8 zeroext 0) #6, !dbg !3814
  call void @llvm.dbg.value(metadata i8 %call67, metadata !3739, metadata !DIExpression()), !dbg !3794
  %tobool68 = icmp eq i8 %call67, 0, !dbg !3815
  br i1 %tobool68, label %if.then69, label %if.else72, !dbg !3817

if.then69:                                        ; preds = %if.end57
  store i32 0, i32* %type48, align 8, !dbg !3818
  %constant71 = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %lat, i64 0, i32 1, !dbg !3820
  store %union.tree_node* null, %union.tree_node** %constant71, align 8, !dbg !3821
  br label %cleanup76, !dbg !3822

if.else72:                                        ; preds = %if.end57
  %23 = load %union.tree_node*, %union.tree_node** %t, align 8, !dbg !3823
  call void @llvm.dbg.value(metadata %union.tree_node* %23, metadata !3738, metadata !DIExpression()), !dbg !3794
  %call73 = call %union.tree_node* @build_fold_addr_expr_loc(i32 0, %union.tree_node* %23) #6, !dbg !3823
  %constant74 = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %lat, i64 0, i32 1, !dbg !3824
  store %union.tree_node* %call73, %union.tree_node** %constant74, align 8, !dbg !3825
  br label %cleanup76

cleanup76:                                        ; preds = %if.then42, %if.then69, %if.else72, %if.then55
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #8, !dbg !3826
  br label %if.end85

if.else81:                                        ; preds = %if.else39
  %type82 = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %lat, i64 0, i32 0, !dbg !3827
  store i32 0, i32* %type82, align 8, !dbg !3828
  br label %if.end85

if.end85:                                         ; preds = %cleanup76, %if.else81, %if.then
  ret void, !dbg !3829
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ipa_lattice_meet(%struct.ipcp_lattice* %res, %struct.ipcp_lattice* %lat1, %struct.ipcp_lattice* %lat2) unnamed_addr #5 !dbg !3830 {
entry:
  call void @llvm.dbg.value(metadata %struct.ipcp_lattice* %res, metadata !3834, metadata !DIExpression()), !dbg !3837
  call void @llvm.dbg.value(metadata %struct.ipcp_lattice* %lat1, metadata !3835, metadata !DIExpression()), !dbg !3837
  call void @llvm.dbg.value(metadata %struct.ipcp_lattice* %lat2, metadata !3836, metadata !DIExpression()), !dbg !3837
  %type = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %lat1, i64 0, i32 0, !dbg !3838
  %0 = load i32, i32* %type, align 8, !dbg !3838
  %cmp = icmp eq i32 %0, 0, !dbg !3840
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3841

lor.lhs.false:                                    ; preds = %entry
  %type1 = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %lat2, i64 0, i32 0, !dbg !3842
  %1 = load i32, i32* %type1, align 8, !dbg !3842
  %cmp2 = icmp eq i32 %1, 0, !dbg !3843
  br i1 %cmp2, label %if.then, label %if.end, !dbg !3844

if.then:                                          ; preds = %lor.lhs.false, %entry
  %type3 = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %res, i64 0, i32 0, !dbg !3845
  store i32 0, i32* %type3, align 8, !dbg !3847
  br label %return, !dbg !3848

if.end:                                           ; preds = %lor.lhs.false
  %cmp5 = icmp eq i32 %0, 2, !dbg !3849
  br i1 %cmp5, label %if.then6, label %if.end10, !dbg !3851

if.then6:                                         ; preds = %if.end
  %type8 = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %res, i64 0, i32 0, !dbg !3852
  store i32 %1, i32* %type8, align 8, !dbg !3854
  %constant = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %lat2, i64 0, i32 1, !dbg !3855
  %2 = bitcast %union.tree_node** %constant to i64*, !dbg !3855
  %3 = load i64, i64* %2, align 8, !dbg !3855
  %constant9 = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %res, i64 0, i32 1, !dbg !3856
  %4 = bitcast %union.tree_node** %constant9 to i64*, !dbg !3857
  store i64 %3, i64* %4, align 8, !dbg !3857
  br label %return, !dbg !3858

if.end10:                                         ; preds = %if.end
  %cmp12 = icmp eq i32 %1, 2, !dbg !3859
  br i1 %cmp12, label %if.then13, label %if.end18, !dbg !3861

if.then13:                                        ; preds = %if.end10
  %type15 = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %res, i64 0, i32 0, !dbg !3862
  store i32 %0, i32* %type15, align 8, !dbg !3864
  %constant16 = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %lat1, i64 0, i32 1, !dbg !3865
  %5 = bitcast %union.tree_node** %constant16 to i64*, !dbg !3865
  %6 = load i64, i64* %5, align 8, !dbg !3865
  %constant17 = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %res, i64 0, i32 1, !dbg !3866
  %7 = bitcast %union.tree_node** %constant17 to i64*, !dbg !3867
  store i64 %6, i64* %7, align 8, !dbg !3867
  br label %return, !dbg !3868

if.end18:                                         ; preds = %if.end10
  %call = tail call fastcc zeroext i8 @ipcp_lats_are_equal(%struct.ipcp_lattice* %lat1, %struct.ipcp_lattice* %lat2) #7, !dbg !3869
  %tobool = icmp eq i8 %call, 0, !dbg !3869
  br i1 %tobool, label %if.then19, label %if.end21, !dbg !3871

if.then19:                                        ; preds = %if.end18
  %type20 = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %res, i64 0, i32 0, !dbg !3872
  store i32 0, i32* %type20, align 8, !dbg !3874
  br label %return, !dbg !3875

if.end21:                                         ; preds = %if.end18
  %8 = load i32, i32* %type, align 8, !dbg !3876
  %type23 = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %res, i64 0, i32 0, !dbg !3877
  store i32 %8, i32* %type23, align 8, !dbg !3878
  %constant24 = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %lat1, i64 0, i32 1, !dbg !3879
  %9 = bitcast %union.tree_node** %constant24 to i64*, !dbg !3879
  %10 = load i64, i64* %9, align 8, !dbg !3879
  %constant25 = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %res, i64 0, i32 1, !dbg !3880
  %11 = bitcast %union.tree_node** %constant25 to i64*, !dbg !3881
  store i64 %10, i64* %11, align 8, !dbg !3881
  br label %return, !dbg !3882

return:                                           ; preds = %if.end21, %if.then19, %if.then13, %if.then6, %if.then
  ret void, !dbg !3882
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @ipcp_lattice_changed(%struct.ipcp_lattice* %old_lat, %struct.ipcp_lattice* %new_lat) unnamed_addr #5 !dbg !3883 {
entry:
  call void @llvm.dbg.value(metadata %struct.ipcp_lattice* %old_lat, metadata !3887, metadata !DIExpression()), !dbg !3889
  call void @llvm.dbg.value(metadata %struct.ipcp_lattice* %new_lat, metadata !3888, metadata !DIExpression()), !dbg !3889
  %type = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %old_lat, i64 0, i32 0, !dbg !3890
  %0 = load i32, i32* %type, align 8, !dbg !3890
  %type1 = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %new_lat, i64 0, i32 0, !dbg !3892
  %1 = load i32, i32* %type1, align 8, !dbg !3892
  %cmp = icmp eq i32 %0, %1, !dbg !3893
  br i1 %cmp, label %if.then, label %if.end7, !dbg !3894

if.then:                                          ; preds = %entry
  %call = tail call fastcc zeroext i8 @ipcp_lat_is_const(%struct.ipcp_lattice* %old_lat) #7, !dbg !3895
  %tobool = icmp eq i8 %call, 0, !dbg !3895
  br i1 %tobool, label %return, label %if.end, !dbg !3898

if.end:                                           ; preds = %if.then
  %call3 = tail call fastcc zeroext i8 @ipcp_lats_are_equal(%struct.ipcp_lattice* %old_lat, %struct.ipcp_lattice* %new_lat) #7, !dbg !3899
  %tobool4 = icmp eq i8 %call3, 0, !dbg !3899
  br i1 %tobool4, label %if.end7, label %return, !dbg !3901

if.end7:                                          ; preds = %if.end, %entry
  br label %return, !dbg !3902

return:                                           ; preds = %if.end, %if.then, %if.end7
  %retval.0 = phi i8 [ 1, %if.end7 ], [ 0, %if.then ], [ 0, %if.end ], !dbg !3889
  ret i8 %retval.0, !dbg !3903
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ipa_push_func_to_list(%struct.ipa_func_list** %wl, %struct.cgraph_node* %node) unnamed_addr #0 !dbg !3904 {
entry:
  call void @llvm.dbg.value(metadata %struct.ipa_func_list** %wl, metadata !3909, metadata !DIExpression()), !dbg !3912
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !3910, metadata !DIExpression()), !dbg !3912
  %0 = load %struct.VEC_ipa_node_params_t_heap*, %struct.VEC_ipa_node_params_t_heap** @ipa_node_params_vector, align 8, !dbg !3913
  %base = getelementptr inbounds %struct.VEC_ipa_node_params_t_heap, %struct.VEC_ipa_node_params_t_heap* %0, i64 0, i32 0, !dbg !3913
  %uid = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 24, !dbg !3913
  %1 = load i32, i32* %uid, align 8, !dbg !3913
  %call = tail call fastcc %struct.ipa_node_params* @VEC_ipa_node_params_t_base_index(%struct.VEC_ipa_node_params_t_base* %base, i32 %1) #7, !dbg !3913
  call void @llvm.dbg.value(metadata %struct.ipa_node_params* %call, metadata !3911, metadata !DIExpression()), !dbg !3912
  %node_enqueued = getelementptr inbounds %struct.ipa_node_params, %struct.ipa_node_params* %call, i64 0, i32 5, !dbg !3914
  %bf.load = load i8, i8* %node_enqueued, align 8, !dbg !3914
  %bf.clear = and i8 %bf.load, 8, !dbg !3914
  %tobool1 = icmp eq i8 %bf.clear, 0, !dbg !3916
  br i1 %tobool1, label %if.then, label %if.end, !dbg !3917

if.then:                                          ; preds = %entry
  tail call void @ipa_push_func_to_list_1(%struct.ipa_func_list** %wl, %struct.cgraph_node* %node, %struct.ipa_node_params* %call) #6, !dbg !3918
  br label %if.end, !dbg !3918

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !3919
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_ipa_node_params_t_heap* @VEC_ipa_node_params_t_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !3920 {
entry:
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !3924, metadata !DIExpression()), !dbg !3925
  %call = tail call i8* @vec_heap_o_reserve_exact(i8* null, i32 %alloc_, i64 8, i64 48) #6, !dbg !3926
  %0 = bitcast i8* %call to %struct.VEC_ipa_node_params_t_heap*, !dbg !3926
  ret %struct.VEC_ipa_node_params_t_heap* %0, !dbg !3926
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_ipa_node_params_t_base_length(%struct.VEC_ipa_node_params_t_base* %vec_) unnamed_addr #0 !dbg !3927 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_node_params_t_base* %vec_, metadata !3933, metadata !DIExpression()), !dbg !3934
  %tobool = icmp eq %struct.VEC_ipa_node_params_t_base* %vec_, null, !dbg !3935
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3935

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, %struct.VEC_ipa_node_params_t_base* %vec_, i64 0, i32 0, !dbg !3935
  %0 = load i32, i32* %num, align 8, !dbg !3935
  br label %cond.end, !dbg !3935

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3935
  ret i32 %cond, !dbg !3935
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_ipa_node_params_t_heap_safe_grow_cleared(%struct.VEC_ipa_node_params_t_heap** %vec_, i32 %size_) unnamed_addr #0 !dbg !3936 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_node_params_t_heap** @ipa_node_params_vector, metadata !3941, metadata !DIExpression()), !dbg !3944
  call void @llvm.dbg.value(metadata i32 %size_, metadata !3942, metadata !DIExpression()), !dbg !3944
  %0 = load %struct.VEC_ipa_node_params_t_heap*, %struct.VEC_ipa_node_params_t_heap** @ipa_node_params_vector, align 8, !dbg !3945
  %tobool = icmp eq %struct.VEC_ipa_node_params_t_heap* %0, null, !dbg !3945
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3945

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_ipa_node_params_t_heap, %struct.VEC_ipa_node_params_t_heap* %0, i64 0, i32 0, !dbg !3945
  br label %cond.end, !dbg !3945

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_ipa_node_params_t_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3945
  %call = tail call fastcc i32 @VEC_ipa_node_params_t_base_length(%struct.VEC_ipa_node_params_t_base* %cond) #7, !dbg !3945
  call void @llvm.dbg.value(metadata i32 %call, metadata !3943, metadata !DIExpression()), !dbg !3944
  tail call fastcc void @VEC_ipa_node_params_t_heap_safe_grow(%struct.VEC_ipa_node_params_t_heap** nonnull @ipa_node_params_vector, i32 %size_) #7, !dbg !3945
  %1 = load %struct.VEC_ipa_node_params_t_heap*, %struct.VEC_ipa_node_params_t_heap** @ipa_node_params_vector, align 8, !dbg !3945
  %tobool1 = icmp eq %struct.VEC_ipa_node_params_t_heap* %1, null, !dbg !3945
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !3945

cond.true2:                                       ; preds = %cond.end
  %base3 = getelementptr inbounds %struct.VEC_ipa_node_params_t_heap, %struct.VEC_ipa_node_params_t_heap* %1, i64 0, i32 0, !dbg !3945
  br label %cond.end5, !dbg !3945

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_ipa_node_params_t_base* [ %base3, %cond.true2 ], [ null, %cond.end ], !dbg !3945
  %call7 = tail call fastcc %struct.ipa_node_params* @VEC_ipa_node_params_t_base_address(%struct.VEC_ipa_node_params_t_base* %cond6) #7, !dbg !3945
  %idxprom = sext i32 %call to i64, !dbg !3945
  %arrayidx = getelementptr inbounds %struct.ipa_node_params, %struct.ipa_node_params* %call7, i64 %idxprom, !dbg !3945
  %2 = bitcast %struct.ipa_node_params* %arrayidx to i8*, !dbg !3945
  %sub = sub nsw i32 %size_, %call, !dbg !3945
  %conv = sext i32 %sub to i64, !dbg !3945
  %mul = mul nsw i64 %conv, 48, !dbg !3945
  %call8 = tail call i8* @memset(i8* %2, i32 0, i64 %mul) #6, !dbg !3945
  ret void, !dbg !3945
}

declare dso_local i8* @vec_heap_o_reserve_exact(i8*, i32, i64, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_ipa_node_params_t_heap_safe_grow(%struct.VEC_ipa_node_params_t_heap** %vec_, i32 %size_) unnamed_addr #0 !dbg !3946 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_node_params_t_heap** @ipa_node_params_vector, metadata !3948, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata i32 %size_, metadata !3949, metadata !DIExpression()), !dbg !3950
  %cmp = icmp sgt i32 %size_, -1, !dbg !3951
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3951

land.rhs:                                         ; preds = %entry
  %0 = load %struct.VEC_ipa_node_params_t_heap*, %struct.VEC_ipa_node_params_t_heap** @ipa_node_params_vector, align 8, !dbg !3951
  %tobool = icmp eq %struct.VEC_ipa_node_params_t_heap* %0, null, !dbg !3951
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3951

cond.true:                                        ; preds = %land.rhs
  %base = getelementptr inbounds %struct.VEC_ipa_node_params_t_heap, %struct.VEC_ipa_node_params_t_heap* %0, i64 0, i32 0, !dbg !3951
  br label %cond.end, !dbg !3951

cond.end:                                         ; preds = %land.rhs, %cond.true
  %cond = phi %struct.VEC_ipa_node_params_t_base* [ %base, %cond.true ], [ null, %land.rhs ], !dbg !3951
  %call = tail call fastcc i32 @VEC_ipa_node_params_t_base_length(%struct.VEC_ipa_node_params_t_base* %cond) #7, !dbg !3951
  br label %land.end

land.end:                                         ; preds = %cond.end, %entry
  %1 = load %struct.VEC_ipa_node_params_t_heap*, %struct.VEC_ipa_node_params_t_heap** @ipa_node_params_vector, align 8, !dbg !3951
  %tobool2 = icmp eq %struct.VEC_ipa_node_params_t_heap* %1, null, !dbg !3951
  br i1 %tobool2, label %cond.end11, label %cond.true3, !dbg !3951

cond.true3:                                       ; preds = %land.end
  %num = getelementptr inbounds %struct.VEC_ipa_node_params_t_heap, %struct.VEC_ipa_node_params_t_heap* %1, i64 0, i32 0, i32 0, !dbg !3951
  %2 = load i32, i32* %num, align 8, !dbg !3951
  br label %cond.end11, !dbg !3951

cond.end11:                                       ; preds = %land.end, %cond.true3
  %cond12 = phi i32 [ %2, %cond.true3 ], [ 0, %land.end ], !dbg !3951
  %sub = sub nsw i32 %size_, %cond12, !dbg !3951
  %call13 = tail call fastcc i32 @VEC_ipa_node_params_t_heap_reserve_exact(%struct.VEC_ipa_node_params_t_heap** nonnull @ipa_node_params_vector, i32 %sub) #7, !dbg !3951
  %3 = load %struct.VEC_ipa_node_params_t_heap*, %struct.VEC_ipa_node_params_t_heap** @ipa_node_params_vector, align 8, !dbg !3951
  %num20 = getelementptr inbounds %struct.VEC_ipa_node_params_t_heap, %struct.VEC_ipa_node_params_t_heap* %3, i64 0, i32 0, i32 0, !dbg !3951
  store i32 %size_, i32* %num20, align 8, !dbg !3951
  ret void, !dbg !3951
}

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ipa_node_params* @VEC_ipa_node_params_t_base_address(%struct.VEC_ipa_node_params_t_base* %vec_) unnamed_addr #0 !dbg !3952 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_node_params_t_base* %vec_, metadata !3956, metadata !DIExpression()), !dbg !3957
  %tobool = icmp eq %struct.VEC_ipa_node_params_t_base* %vec_, null, !dbg !3958
  %arraydecay = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, %struct.VEC_ipa_node_params_t_base* %vec_, i64 0, i32 2, i64 0, !dbg !3958
  %cond = select i1 %tobool, %struct.ipa_node_params* null, %struct.ipa_node_params* %arraydecay, !dbg !3958
  ret %struct.ipa_node_params* %cond, !dbg !3958
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_ipa_node_params_t_heap_reserve_exact(%struct.VEC_ipa_node_params_t_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3959 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_node_params_t_heap** @ipa_node_params_vector, metadata !3963, metadata !DIExpression()), !dbg !3966
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !3964, metadata !DIExpression()), !dbg !3966
  %0 = load %struct.VEC_ipa_node_params_t_heap*, %struct.VEC_ipa_node_params_t_heap** @ipa_node_params_vector, align 8, !dbg !3967
  %tobool = icmp eq %struct.VEC_ipa_node_params_t_heap* %0, null, !dbg !3967
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3967

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_ipa_node_params_t_heap, %struct.VEC_ipa_node_params_t_heap* %0, i64 0, i32 0, !dbg !3967
  br label %cond.end, !dbg !3967

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_ipa_node_params_t_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3967
  %call = tail call fastcc i32 @VEC_ipa_node_params_t_base_space(%struct.VEC_ipa_node_params_t_base* %cond, i32 %alloc_) #7, !dbg !3967
  %tobool1 = icmp eq i32 %call, 0, !dbg !3967
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !3967
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !3965, metadata !DIExpression()), !dbg !3966
  br i1 %tobool1, label %if.then, label %if.end, !dbg !3967

if.then:                                          ; preds = %cond.end
  %1 = load i8*, i8** bitcast (%struct.VEC_ipa_node_params_t_heap** @ipa_node_params_vector to i8**), align 8, !dbg !3968
  %call3 = tail call i8* @vec_heap_o_reserve_exact(i8* %1, i32 %alloc_, i64 8, i64 48) #6, !dbg !3968
  store i8* %call3, i8** bitcast (%struct.VEC_ipa_node_params_t_heap** @ipa_node_params_vector to i8**), align 8, !dbg !3968
  br label %if.end, !dbg !3968

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !3967
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_ipa_node_params_t_base_space(%struct.VEC_ipa_node_params_t_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3970 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_node_params_t_base* %vec_, metadata !3974, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !3975, metadata !DIExpression()), !dbg !3976
  %tobool = icmp eq %struct.VEC_ipa_node_params_t_base* %vec_, null, !dbg !3977
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !3977

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, %struct.VEC_ipa_node_params_t_base* %vec_, i64 0, i32 1, !dbg !3977
  %0 = load i32, i32* %alloc, align 4, !dbg !3977
  %num = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, %struct.VEC_ipa_node_params_t_base* %vec_, i64 0, i32 0, !dbg !3977
  %1 = load i32, i32* %num, align 8, !dbg !3977
  %sub = sub i32 %0, %1, !dbg !3977
  %cmp1 = icmp uge i32 %sub, %alloc_, !dbg !3977
  br label %cond.end, !dbg !3977

cond.false:                                       ; preds = %entry
  %tobool3 = icmp eq i32 %alloc_, 0, !dbg !3977
  br label %cond.end, !dbg !3977

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i1 [ %cmp1, %cond.true ], [ %tobool3, %cond.false ]
  %cond = zext i1 %cond.in to i32, !dbg !3977
  ret i32 %cond, !dbg !3977
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_ipa_edge_args_t_gc* @VEC_ipa_edge_args_t_gc_alloc(i32 %alloc_) unnamed_addr #0 !dbg !3978 {
entry:
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !3982, metadata !DIExpression()), !dbg !3983
  %call = tail call i8* @vec_gc_o_reserve_exact(i8* null, i32 %alloc_, i64 8, i64 16) #6, !dbg !3984
  %0 = bitcast i8* %call to %struct.VEC_ipa_edge_args_t_gc*, !dbg !3984
  ret %struct.VEC_ipa_edge_args_t_gc* %0, !dbg !3984
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_ipa_edge_args_t_base_length(%struct.VEC_ipa_edge_args_t_base* %vec_) unnamed_addr #0 !dbg !3985 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_edge_args_t_base* %vec_, metadata !3991, metadata !DIExpression()), !dbg !3992
  %tobool = icmp eq %struct.VEC_ipa_edge_args_t_base* %vec_, null, !dbg !3993
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3993

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, %struct.VEC_ipa_edge_args_t_base* %vec_, i64 0, i32 0, !dbg !3993
  %0 = load i32, i32* %num, align 8, !dbg !3993
  br label %cond.end, !dbg !3993

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3993
  ret i32 %cond, !dbg !3993
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_ipa_edge_args_t_gc_safe_grow_cleared(%struct.VEC_ipa_edge_args_t_gc** %vec_, i32 %size_) unnamed_addr #0 !dbg !3994 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_edge_args_t_gc** @ipa_edge_args_vector, metadata !3999, metadata !DIExpression()), !dbg !4002
  call void @llvm.dbg.value(metadata i32 %size_, metadata !4000, metadata !DIExpression()), !dbg !4002
  %0 = load %struct.VEC_ipa_edge_args_t_gc*, %struct.VEC_ipa_edge_args_t_gc** @ipa_edge_args_vector, align 8, !dbg !4003
  %tobool = icmp eq %struct.VEC_ipa_edge_args_t_gc* %0, null, !dbg !4003
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4003

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_ipa_edge_args_t_gc, %struct.VEC_ipa_edge_args_t_gc* %0, i64 0, i32 0, !dbg !4003
  br label %cond.end, !dbg !4003

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_ipa_edge_args_t_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4003
  %call = tail call fastcc i32 @VEC_ipa_edge_args_t_base_length(%struct.VEC_ipa_edge_args_t_base* %cond) #7, !dbg !4003
  call void @llvm.dbg.value(metadata i32 %call, metadata !4001, metadata !DIExpression()), !dbg !4002
  tail call fastcc void @VEC_ipa_edge_args_t_gc_safe_grow(%struct.VEC_ipa_edge_args_t_gc** nonnull @ipa_edge_args_vector, i32 %size_) #7, !dbg !4003
  %1 = load %struct.VEC_ipa_edge_args_t_gc*, %struct.VEC_ipa_edge_args_t_gc** @ipa_edge_args_vector, align 8, !dbg !4003
  %tobool1 = icmp eq %struct.VEC_ipa_edge_args_t_gc* %1, null, !dbg !4003
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !4003

cond.true2:                                       ; preds = %cond.end
  %base3 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_gc, %struct.VEC_ipa_edge_args_t_gc* %1, i64 0, i32 0, !dbg !4003
  br label %cond.end5, !dbg !4003

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_ipa_edge_args_t_base* [ %base3, %cond.true2 ], [ null, %cond.end ], !dbg !4003
  %call7 = tail call fastcc %struct.ipa_edge_args* @VEC_ipa_edge_args_t_base_address(%struct.VEC_ipa_edge_args_t_base* %cond6) #7, !dbg !4003
  %idxprom = sext i32 %call to i64, !dbg !4003
  %arrayidx = getelementptr inbounds %struct.ipa_edge_args, %struct.ipa_edge_args* %call7, i64 %idxprom, !dbg !4003
  %2 = bitcast %struct.ipa_edge_args* %arrayidx to i8*, !dbg !4003
  %sub = sub nsw i32 %size_, %call, !dbg !4003
  %conv = sext i32 %sub to i64, !dbg !4003
  %mul = shl nsw i64 %conv, 4, !dbg !4003
  %call8 = tail call i8* @memset(i8* %2, i32 0, i64 %mul) #6, !dbg !4003
  ret void, !dbg !4003
}

declare dso_local i8* @vec_gc_o_reserve_exact(i8*, i32, i64, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_ipa_edge_args_t_gc_safe_grow(%struct.VEC_ipa_edge_args_t_gc** %vec_, i32 %size_) unnamed_addr #0 !dbg !4004 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_edge_args_t_gc** @ipa_edge_args_vector, metadata !4006, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.value(metadata i32 %size_, metadata !4007, metadata !DIExpression()), !dbg !4008
  %cmp = icmp sgt i32 %size_, -1, !dbg !4009
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4009

land.rhs:                                         ; preds = %entry
  %0 = load %struct.VEC_ipa_edge_args_t_gc*, %struct.VEC_ipa_edge_args_t_gc** @ipa_edge_args_vector, align 8, !dbg !4009
  %tobool = icmp eq %struct.VEC_ipa_edge_args_t_gc* %0, null, !dbg !4009
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4009

cond.true:                                        ; preds = %land.rhs
  %base = getelementptr inbounds %struct.VEC_ipa_edge_args_t_gc, %struct.VEC_ipa_edge_args_t_gc* %0, i64 0, i32 0, !dbg !4009
  br label %cond.end, !dbg !4009

cond.end:                                         ; preds = %land.rhs, %cond.true
  %cond = phi %struct.VEC_ipa_edge_args_t_base* [ %base, %cond.true ], [ null, %land.rhs ], !dbg !4009
  %call = tail call fastcc i32 @VEC_ipa_edge_args_t_base_length(%struct.VEC_ipa_edge_args_t_base* %cond) #7, !dbg !4009
  br label %land.end

land.end:                                         ; preds = %cond.end, %entry
  %1 = load %struct.VEC_ipa_edge_args_t_gc*, %struct.VEC_ipa_edge_args_t_gc** @ipa_edge_args_vector, align 8, !dbg !4009
  %tobool2 = icmp eq %struct.VEC_ipa_edge_args_t_gc* %1, null, !dbg !4009
  br i1 %tobool2, label %cond.end11, label %cond.true3, !dbg !4009

cond.true3:                                       ; preds = %land.end
  %num = getelementptr inbounds %struct.VEC_ipa_edge_args_t_gc, %struct.VEC_ipa_edge_args_t_gc* %1, i64 0, i32 0, i32 0, !dbg !4009
  %2 = load i32, i32* %num, align 8, !dbg !4009
  br label %cond.end11, !dbg !4009

cond.end11:                                       ; preds = %land.end, %cond.true3
  %cond12 = phi i32 [ %2, %cond.true3 ], [ 0, %land.end ], !dbg !4009
  %sub = sub nsw i32 %size_, %cond12, !dbg !4009
  %call13 = tail call fastcc i32 @VEC_ipa_edge_args_t_gc_reserve_exact(%struct.VEC_ipa_edge_args_t_gc** nonnull @ipa_edge_args_vector, i32 %sub) #7, !dbg !4009
  %3 = load %struct.VEC_ipa_edge_args_t_gc*, %struct.VEC_ipa_edge_args_t_gc** @ipa_edge_args_vector, align 8, !dbg !4009
  %num20 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_gc, %struct.VEC_ipa_edge_args_t_gc* %3, i64 0, i32 0, i32 0, !dbg !4009
  store i32 %size_, i32* %num20, align 8, !dbg !4009
  ret void, !dbg !4009
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ipa_edge_args* @VEC_ipa_edge_args_t_base_address(%struct.VEC_ipa_edge_args_t_base* %vec_) unnamed_addr #0 !dbg !4010 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_edge_args_t_base* %vec_, metadata !4014, metadata !DIExpression()), !dbg !4015
  %tobool = icmp eq %struct.VEC_ipa_edge_args_t_base* %vec_, null, !dbg !4016
  %arraydecay = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, %struct.VEC_ipa_edge_args_t_base* %vec_, i64 0, i32 2, i64 0, !dbg !4016
  %cond = select i1 %tobool, %struct.ipa_edge_args* null, %struct.ipa_edge_args* %arraydecay, !dbg !4016
  ret %struct.ipa_edge_args* %cond, !dbg !4016
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_ipa_edge_args_t_gc_reserve_exact(%struct.VEC_ipa_edge_args_t_gc** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4017 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_edge_args_t_gc** @ipa_edge_args_vector, metadata !4021, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !4022, metadata !DIExpression()), !dbg !4024
  %0 = load %struct.VEC_ipa_edge_args_t_gc*, %struct.VEC_ipa_edge_args_t_gc** @ipa_edge_args_vector, align 8, !dbg !4025
  %tobool = icmp eq %struct.VEC_ipa_edge_args_t_gc* %0, null, !dbg !4025
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4025

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_ipa_edge_args_t_gc, %struct.VEC_ipa_edge_args_t_gc* %0, i64 0, i32 0, !dbg !4025
  br label %cond.end, !dbg !4025

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_ipa_edge_args_t_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4025
  %call = tail call fastcc i32 @VEC_ipa_edge_args_t_base_space(%struct.VEC_ipa_edge_args_t_base* %cond, i32 %alloc_) #7, !dbg !4025
  %tobool1 = icmp eq i32 %call, 0, !dbg !4025
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !4025
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !4023, metadata !DIExpression()), !dbg !4024
  br i1 %tobool1, label %if.then, label %if.end, !dbg !4025

if.then:                                          ; preds = %cond.end
  %1 = load i8*, i8** bitcast (%struct.VEC_ipa_edge_args_t_gc** @ipa_edge_args_vector to i8**), align 8, !dbg !4026
  %call3 = tail call i8* @vec_gc_o_reserve_exact(i8* %1, i32 %alloc_, i64 8, i64 16) #6, !dbg !4026
  store i8* %call3, i8** bitcast (%struct.VEC_ipa_edge_args_t_gc** @ipa_edge_args_vector to i8**), align 8, !dbg !4026
  br label %if.end, !dbg !4026

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !4025
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_ipa_edge_args_t_base_space(%struct.VEC_ipa_edge_args_t_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4028 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_edge_args_t_base* %vec_, metadata !4032, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !4033, metadata !DIExpression()), !dbg !4034
  %tobool = icmp eq %struct.VEC_ipa_edge_args_t_base* %vec_, null, !dbg !4035
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !4035

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, %struct.VEC_ipa_edge_args_t_base* %vec_, i64 0, i32 1, !dbg !4035
  %0 = load i32, i32* %alloc, align 4, !dbg !4035
  %num = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, %struct.VEC_ipa_edge_args_t_base* %vec_, i64 0, i32 0, !dbg !4035
  %1 = load i32, i32* %num, align 8, !dbg !4035
  %sub = sub i32 %0, %1, !dbg !4035
  %cmp1 = icmp uge i32 %sub, %alloc_, !dbg !4035
  br label %cond.end, !dbg !4035

cond.false:                                       ; preds = %entry
  %tobool3 = icmp eq i32 %alloc_, 0, !dbg !4035
  br label %cond.end, !dbg !4035

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i1 [ %cmp1, %cond.true ], [ %tobool3, %cond.false ]
  %cond = zext i1 %cond.in to i32, !dbg !4035
  ret i32 %cond, !dbg !4035
}

declare dso_local %union.tree_node* @fold_binary_loc(i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local zeroext i8 @is_gimple_ip_invariant(%union.tree_node*) local_unnamed_addr #2

declare dso_local zeroext i8 @build_ref_for_offset(%union.tree_node**, %union.tree_node*, i64, %union.tree_node*, i8 zeroext) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_fold_addr_expr_loc(i32, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ipcp_lats_are_equal(%struct.ipcp_lattice* %lat1, %struct.ipcp_lattice* %lat2) unnamed_addr #0 !dbg !4036 {
entry:
  call void @llvm.dbg.value(metadata %struct.ipcp_lattice* %lat1, metadata !4038, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata %struct.ipcp_lattice* %lat2, metadata !4039, metadata !DIExpression()), !dbg !4040
  %call = tail call fastcc zeroext i8 @ipcp_lat_is_const(%struct.ipcp_lattice* %lat1) #7, !dbg !4041
  %tobool = icmp eq i8 %call, 0, !dbg !4041
  br i1 %tobool, label %cond.true, label %land.lhs.true, !dbg !4041

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call fastcc zeroext i8 @ipcp_lat_is_const(%struct.ipcp_lattice* %lat2) #7, !dbg !4041
  %tobool3 = icmp eq i8 %call1, 0, !dbg !4041
  br i1 %tobool3, label %cond.true, label %cond.end, !dbg !4041

cond.true:                                        ; preds = %land.lhs.true, %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 226, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !4041
  br label %cond.end, !dbg !4041

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %type = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %lat1, i64 0, i32 0, !dbg !4042
  %0 = load i32, i32* %type, align 8, !dbg !4042
  %type4 = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %lat2, i64 0, i32 0, !dbg !4044
  %1 = load i32, i32* %type4, align 8, !dbg !4044
  %cmp = icmp eq i32 %0, %1, !dbg !4045
  br i1 %cmp, label %if.end, label %return, !dbg !4046

if.end:                                           ; preds = %cond.end
  %constant = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %lat1, i64 0, i32 1, !dbg !4047
  %2 = load %union.tree_node*, %union.tree_node** %constant, align 8, !dbg !4047
  %constant6 = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %lat2, i64 0, i32 1, !dbg !4049
  %3 = load %union.tree_node*, %union.tree_node** %constant6, align 8, !dbg !4049
  %call7 = tail call i32 @operand_equal_p(%union.tree_node* %2, %union.tree_node* %3, i32 0) #6, !dbg !4050
  %tobool8 = icmp ne i32 %call7, 0, !dbg !4050
  %. = zext i1 %tobool8 to i8, !dbg !4040
  br label %return, !dbg !4040

return:                                           ; preds = %cond.end, %if.end
  %retval.0 = phi i8 [ 0, %cond.end ], [ %., %if.end ], !dbg !4040
  ret i8 %retval.0, !dbg !4051
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ipcp_lat_is_const(%struct.ipcp_lattice* %lat) unnamed_addr #0 !dbg !4052 {
entry:
  call void @llvm.dbg.value(metadata %struct.ipcp_lattice* %lat, metadata !4056, metadata !DIExpression()), !dbg !4057
  %type = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %lat, i64 0, i32 0, !dbg !4058
  %0 = load i32, i32* %type, align 8, !dbg !4058
  %cmp = icmp eq i32 %0, 1, !dbg !4060
  %. = zext i1 %cmp to i8, !dbg !4061
  ret i8 %., !dbg !4062
}

declare dso_local i32 @operand_equal_p(%union.tree_node*, %union.tree_node*, i32) local_unnamed_addr #2

declare dso_local void @ipa_push_func_to_list_1(%struct.ipa_func_list**, %struct.cgraph_node*, %struct.ipa_node_params*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @ipa_get_param(%struct.ipa_node_params* %info, i32 %i) unnamed_addr #0 !dbg !4063 {
entry:
  call void @llvm.dbg.value(metadata %struct.ipa_node_params* %info, metadata !4067, metadata !DIExpression()), !dbg !4069
  call void @llvm.dbg.value(metadata i32 %i, metadata !4068, metadata !DIExpression()), !dbg !4069
  %params = getelementptr inbounds %struct.ipa_node_params, %struct.ipa_node_params* %info, i64 0, i32 1, !dbg !4070
  %0 = load %struct.ipa_param_descriptor*, %struct.ipa_param_descriptor** %params, align 8, !dbg !4070
  %idxprom = sext i32 %i to i64, !dbg !4071
  %decl = getelementptr inbounds %struct.ipa_param_descriptor, %struct.ipa_param_descriptor* %0, i64 %idxprom, i32 1, !dbg !4072
  %1 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !4072
  ret %union.tree_node* %1, !dbg !4073
}

declare dso_local %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack*) local_unnamed_addr #2

declare dso_local %struct.fibheap* @fibheap_new() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ipcp_node_modifiable_p(%struct.cgraph_node* %node) unnamed_addr #0 !dbg !4074 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !4076, metadata !DIExpression()), !dbg !4077
  %call = tail call fastcc zeroext i8 @ipcp_versionable_function_p(%struct.cgraph_node* %node) #7, !dbg !4078
  ret i8 %call, !dbg !4079
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ipcp_const_param_count(%struct.cgraph_node* %node) unnamed_addr #5 !dbg !4080 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !4084, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i32 0, metadata !4085, metadata !DIExpression()), !dbg !4094
  %0 = load %struct.VEC_ipa_node_params_t_heap*, %struct.VEC_ipa_node_params_t_heap** @ipa_node_params_vector, align 8, !dbg !4095
  %base = getelementptr inbounds %struct.VEC_ipa_node_params_t_heap, %struct.VEC_ipa_node_params_t_heap* %0, i64 0, i32 0, !dbg !4095
  %uid = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 24, !dbg !4095
  %1 = load i32, i32* %uid, align 8, !dbg !4095
  %call = tail call fastcc %struct.ipa_node_params* @VEC_ipa_node_params_t_base_index(%struct.VEC_ipa_node_params_t_base* %base, i32 %1) #7, !dbg !4095
  call void @llvm.dbg.value(metadata %struct.ipa_node_params* %call, metadata !4086, metadata !DIExpression()), !dbg !4094
  %call1 = tail call fastcc i32 @ipa_get_param_count(%struct.ipa_node_params* %call) #7, !dbg !4096
  call void @llvm.dbg.value(metadata i32 %call1, metadata !4087, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i32 0, metadata !4088, metadata !DIExpression()), !dbg !4094
  %2 = bitcast %struct.cgraph_node* %node to %struct.tree_function_decl**, !dbg !4097
  br label %for.cond, !dbg !4099

for.cond:                                         ; preds = %for.inc, %entry
  %const_param.0 = phi i32 [ 0, %entry ], [ %const_param.1, %for.inc ], !dbg !4094
  %i.0 = phi i32 [ 0, %entry ], [ %inc10, %for.inc ], !dbg !4100
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !4088, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i32 %const_param.0, metadata !4085, metadata !DIExpression()), !dbg !4094
  %cmp = icmp slt i32 %i.0, %call1, !dbg !4101
  br i1 %cmp, label %for.body, label %for.end, !dbg !4102

for.body:                                         ; preds = %for.cond
  %call2 = tail call fastcc %struct.ipcp_lattice* @ipcp_get_lattice(%struct.ipa_node_params* %call, i32 %i.0) #7, !dbg !4103
  call void @llvm.dbg.value(metadata %struct.ipcp_lattice* %call2, metadata !4089, metadata !DIExpression()), !dbg !4104
  %call3 = tail call fastcc %union.tree_node* @ipa_get_param(%struct.ipa_node_params* %call, i32 %i.0) #7, !dbg !4105
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !4093, metadata !DIExpression()), !dbg !4104
  %call4 = tail call fastcc zeroext i8 @ipcp_lat_is_insertable(%struct.ipcp_lattice* %call2) #7, !dbg !4106
  %tobool5 = icmp eq i8 %call4, 0, !dbg !4106
  br i1 %tobool5, label %for.inc, label %land.lhs.true, !dbg !4107

land.lhs.true:                                    ; preds = %for.body
  %call6 = tail call zeroext i8 @is_gimple_reg(%union.tree_node* %call3) #6, !dbg !4108
  %tobool7 = icmp eq i8 %call6, 0, !dbg !4108
  br i1 %tobool7, label %if.then, label %lor.lhs.false, !dbg !4109

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load %struct.tree_function_decl*, %struct.tree_function_decl** %2, align 8, !dbg !4110
  %f = getelementptr inbounds %struct.tree_function_decl, %struct.tree_function_decl* %3, i64 0, i32 1, !dbg !4110
  %4 = load %struct.function*, %struct.function** %f, align 8, !dbg !4110
  %call8 = tail call %union.tree_node* @gimple_default_def(%struct.function* %4, %union.tree_node* %call3) #6, !dbg !4111
  %tobool9 = icmp eq %union.tree_node* %call8, null, !dbg !4111
  br i1 %tobool9, label %for.inc, label %if.then, !dbg !4112

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %inc = add nsw i32 %const_param.0, 1, !dbg !4113
  call void @llvm.dbg.value(metadata i32 %inc, metadata !4085, metadata !DIExpression()), !dbg !4094
  br label %for.inc, !dbg !4114

for.inc:                                          ; preds = %lor.lhs.false, %for.body, %if.then
  %const_param.1 = phi i32 [ %inc, %if.then ], [ %const_param.0, %lor.lhs.false ], [ %const_param.0, %for.body ], !dbg !4094
  call void @llvm.dbg.value(metadata i32 %const_param.1, metadata !4085, metadata !DIExpression()), !dbg !4094
  %inc10 = add nuw nsw i32 %i.0, 1, !dbg !4115
  call void @llvm.dbg.value(metadata i32 %inc10, metadata !4088, metadata !DIExpression()), !dbg !4094
  br label %for.cond, !dbg !4116, !llvm.loop !4117

for.end:                                          ; preds = %for.cond
  %const_param.0.lcssa = phi i32 [ %const_param.0, %for.cond ], !dbg !4094
  call void @llvm.dbg.value(metadata i32 %const_param.0.lcssa, metadata !4085, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i32 %const_param.0.lcssa, metadata !4085, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i32 %const_param.0.lcssa, metadata !4085, metadata !DIExpression()), !dbg !4094
  ret i32 %const_param.0.lcssa, !dbg !4119
}

declare dso_local %struct.fibnode* @fibheap_insert(%struct.fibheap*, i64, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ipcp_estimate_cloning_cost(%struct.cgraph_node* %node) unnamed_addr #5 !dbg !4120 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !4124, metadata !DIExpression()), !dbg !4129
  call void @llvm.dbg.value(metadata i32 1, metadata !4125, metadata !DIExpression()), !dbg !4129
  call void @llvm.dbg.value(metadata i64 1, metadata !4126, metadata !DIExpression()), !dbg !4129
  %call = tail call fastcc i64 @ipcp_estimate_growth(%struct.cgraph_node* %node) #7, !dbg !4130
  %0 = trunc i64 %call to i32, !dbg !4130
  %conv = mul i32 %0, 1000, !dbg !4130
  call void @llvm.dbg.value(metadata i32 %conv, metadata !4128, metadata !DIExpression()), !dbg !4129
  %tobool = icmp eq i32 %conv, 0, !dbg !4131
  br i1 %tobool, label %if.then, label %if.end5, !dbg !4133

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4134
  %tobool1 = icmp eq %struct._IO_FILE* %1, null, !dbg !4134
  br i1 %tobool1, label %cleanup, label %if.then2, !dbg !4137

if.then2:                                         ; preds = %if.then
  %call3 = tail call i8* @cgraph_node_name(%struct.cgraph_node* %node) #6, !dbg !4138
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.34, i64 0, i64 0), i8* %call3) #6, !dbg !4139
  br label %cleanup, !dbg !4139

if.end5:                                          ; preds = %entry
  %callers = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 2, !dbg !4140
  br label %for.cond, !dbg !4142

for.cond:                                         ; preds = %for.inc, %if.end5
  %e.0.in = phi %struct.cgraph_edge** [ %callers, %if.end5 ], [ %next_caller, %for.inc ]
  %count_sum.0 = phi i64 [ 1, %if.end5 ], [ %count_sum.1, %for.inc ], !dbg !4143
  %freq_sum.0 = phi i32 [ 1, %if.end5 ], [ %freq_sum.1, %for.inc ], !dbg !4144
  %e.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %e.0.in, align 8, !dbg !4145
  call void @llvm.dbg.value(metadata i32 %freq_sum.0, metadata !4125, metadata !DIExpression()), !dbg !4129
  call void @llvm.dbg.value(metadata i64 %count_sum.0, metadata !4126, metadata !DIExpression()), !dbg !4129
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e.0, metadata !4127, metadata !DIExpression()), !dbg !4129
  %tobool6 = icmp eq %struct.cgraph_edge* %e.0, null, !dbg !4146
  br i1 %tobool6, label %for.end, label %for.body, !dbg !4146

for.body:                                         ; preds = %for.cond
  %2 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @dead_nodes, align 8, !dbg !4147
  %caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 1, !dbg !4150
  %3 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !4150
  %uid = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %3, i64 0, i32 24, !dbg !4151
  %4 = load i32, i32* %uid, align 8, !dbg !4151
  %call7 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %2, i32 %4) #6, !dbg !4152
  %tobool8 = icmp eq i32 %call7, 0, !dbg !4152
  br i1 %tobool8, label %land.lhs.true, label %for.inc, !dbg !4153

land.lhs.true:                                    ; preds = %for.body
  %call9 = tail call fastcc zeroext i8 @ipcp_need_redirect_p(%struct.cgraph_edge* nonnull %e.0) #7, !dbg !4154
  %tobool10 = icmp eq i8 %call9, 0, !dbg !4154
  br i1 %tobool10, label %if.then11, label %for.inc, !dbg !4155

if.then11:                                        ; preds = %land.lhs.true
  %count = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 0, !dbg !4156
  %5 = load i64, i64* %count, align 8, !dbg !4156
  %add = add nsw i64 %count_sum.0, %5, !dbg !4158
  call void @llvm.dbg.value(metadata i64 %add, metadata !4126, metadata !DIExpression()), !dbg !4129
  %frequency = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 11, !dbg !4159
  %6 = load i32, i32* %frequency, align 8, !dbg !4159
  %add12 = add nsw i32 %6, 1, !dbg !4160
  %add13 = add nsw i32 %freq_sum.0, %add12, !dbg !4161
  call void @llvm.dbg.value(metadata i32 %add13, metadata !4125, metadata !DIExpression()), !dbg !4129
  br label %for.inc, !dbg !4162

for.inc:                                          ; preds = %land.lhs.true, %for.body, %if.then11
  %count_sum.1 = phi i64 [ %count_sum.0, %for.body ], [ %count_sum.0, %land.lhs.true ], [ %add, %if.then11 ], !dbg !4129
  %freq_sum.1 = phi i32 [ %freq_sum.0, %for.body ], [ %freq_sum.0, %land.lhs.true ], [ %add13, %if.then11 ], !dbg !4129
  call void @llvm.dbg.value(metadata i32 %freq_sum.1, metadata !4125, metadata !DIExpression()), !dbg !4129
  call void @llvm.dbg.value(metadata i64 %count_sum.1, metadata !4126, metadata !DIExpression()), !dbg !4129
  %next_caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 4, !dbg !4163
  br label %for.cond, !dbg !4164, !llvm.loop !4165

for.end:                                          ; preds = %for.cond
  %count_sum.0.lcssa = phi i64 [ %count_sum.0, %for.cond ], !dbg !4143
  %freq_sum.0.lcssa = phi i32 [ %freq_sum.0, %for.cond ], !dbg !4144
  call void @llvm.dbg.value(metadata i64 %count_sum.0.lcssa, metadata !4126, metadata !DIExpression()), !dbg !4129
  call void @llvm.dbg.value(metadata i32 %freq_sum.0.lcssa, metadata !4125, metadata !DIExpression()), !dbg !4129
  call void @llvm.dbg.value(metadata i64 %count_sum.0.lcssa, metadata !4126, metadata !DIExpression()), !dbg !4129
  call void @llvm.dbg.value(metadata i32 %freq_sum.0.lcssa, metadata !4125, metadata !DIExpression()), !dbg !4129
  call void @llvm.dbg.value(metadata i64 %count_sum.0.lcssa, metadata !4126, metadata !DIExpression()), !dbg !4129
  call void @llvm.dbg.value(metadata i32 %freq_sum.0.lcssa, metadata !4125, metadata !DIExpression()), !dbg !4129
  %7 = load i64, i64* @max_count, align 8, !dbg !4167
  %tobool15 = icmp eq i64 %7, 0, !dbg !4167
  br i1 %tobool15, label %if.else, label %if.then16, !dbg !4169

if.then16:                                        ; preds = %for.end
  %mul17 = mul nsw i64 %count_sum.0.lcssa, 1000, !dbg !4170
  %div = sdiv i64 %mul17, %7, !dbg !4171
  %add18 = add nsw i64 %div, 1, !dbg !4172
  %conv19 = sext i32 %conv to i64, !dbg !4173
  %div20 = sdiv i64 %conv19, %add18, !dbg !4173
  %conv21 = trunc i64 %div20 to i32, !dbg !4173
  call void @llvm.dbg.value(metadata i32 %conv21, metadata !4128, metadata !DIExpression()), !dbg !4129
  br label %if.end26, !dbg !4174

if.else:                                          ; preds = %for.end
  %div23 = sdiv i32 %freq_sum.0.lcssa, 10, !dbg !4175
  %add24 = add nsw i32 %div23, 1, !dbg !4176
  %div25 = sdiv i32 %conv, %add24, !dbg !4177
  call void @llvm.dbg.value(metadata i32 %div25, metadata !4128, metadata !DIExpression()), !dbg !4129
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then16
  %cost.0 = phi i32 [ %conv21, %if.then16 ], [ %div25, %if.else ], !dbg !4178
  call void @llvm.dbg.value(metadata i32 %cost.0, metadata !4128, metadata !DIExpression()), !dbg !4129
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4179
  %tobool27 = icmp eq %struct._IO_FILE* %8, null, !dbg !4179
  br i1 %tobool27, label %if.end31, label %if.then28, !dbg !4181

if.then28:                                        ; preds = %if.end26
  %call29 = tail call i8* @cgraph_node_name(%struct.cgraph_node* %node) #6, !dbg !4182
  %self_size = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 18, i32 1, i32 1, !dbg !4183
  %9 = load i32, i32* %self_size, align 8, !dbg !4183
  %call30 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %8, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.35, i64 0, i64 0), i8* %call29, i32 %cost.0, i32 %9, i32 %freq_sum.0.lcssa) #6, !dbg !4184
  br label %if.end31, !dbg !4184

if.end31:                                         ; preds = %if.end26, %if.then28
  %add32 = add nsw i32 %cost.0, 1, !dbg !4185
  %conv33 = sext i32 %add32 to i64, !dbg !4186
  br label %cleanup, !dbg !4187

cleanup:                                          ; preds = %if.then, %if.then2, %if.end31
  %retval.0 = phi i64 [ %conv33, %if.end31 ], [ 0, %if.then2 ], [ 0, %if.then ], !dbg !4129
  ret i64 %retval.0, !dbg !4188
}

declare dso_local i32 @fibheap_empty(%struct.fibheap*) local_unnamed_addr #2

declare dso_local i8* @fibheap_extract_min(%struct.fibheap*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ipcp_estimate_growth(%struct.cgraph_node* %node) unnamed_addr #5 !dbg !4189 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !4191, metadata !DIExpression()), !dbg !4205
  call void @llvm.dbg.value(metadata i32 0, metadata !4193, metadata !DIExpression()), !dbg !4205
  call void @llvm.dbg.value(metadata i32 0, metadata !4194, metadata !DIExpression()), !dbg !4205
  %call = tail call fastcc zeroext i8 @cgraph_only_called_directly_p(%struct.cgraph_node* %node) #7, !dbg !4206
  %tobool = icmp eq i8 %call, 0, !dbg !4207
  %conv = zext i1 %tobool to i8, !dbg !4207
  call void @llvm.dbg.value(metadata i8 %conv, metadata !4195, metadata !DIExpression()), !dbg !4205
  %callers = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 2, !dbg !4208
  br label %for.cond, !dbg !4210

for.cond:                                         ; preds = %for.inc, %entry
  %need_original.0 = phi i8 [ %conv, %entry ], [ %need_original.1, %for.inc ], !dbg !4211
  %redirectable_node_callers.0 = phi i32 [ 0, %entry ], [ %redirectable_node_callers.1, %for.inc ], !dbg !4205
  %cs.0.in = phi %struct.cgraph_edge** [ %callers, %entry ], [ %next_caller, %for.inc ]
  %cs.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %cs.0.in, align 8, !dbg !4212
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %cs.0, metadata !4192, metadata !DIExpression()), !dbg !4205
  call void @llvm.dbg.value(metadata i32 %redirectable_node_callers.0, metadata !4193, metadata !DIExpression()), !dbg !4205
  call void @llvm.dbg.value(metadata i8 %need_original.0, metadata !4195, metadata !DIExpression()), !dbg !4205
  %cmp = icmp eq %struct.cgraph_edge* %cs.0, null, !dbg !4213
  br i1 %cmp, label %for.end, label %for.body, !dbg !4215

for.body:                                         ; preds = %for.cond
  %caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %cs.0, i64 0, i32 1, !dbg !4216
  %0 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !4216
  %cmp2 = icmp eq %struct.cgraph_node* %0, %node, !dbg !4218
  br i1 %cmp2, label %if.then, label %lor.lhs.false, !dbg !4219

lor.lhs.false:                                    ; preds = %for.body
  %call4 = tail call fastcc zeroext i8 @ipcp_need_redirect_p(%struct.cgraph_edge* nonnull %cs.0) #7, !dbg !4220
  %tobool5 = icmp eq i8 %call4, 0, !dbg !4220
  br i1 %tobool5, label %if.then, label %for.inc, !dbg !4221

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %inc = add nsw i32 %redirectable_node_callers.0, 1, !dbg !4222
  call void @llvm.dbg.value(metadata i32 %inc, metadata !4193, metadata !DIExpression()), !dbg !4205
  br label %for.inc, !dbg !4223

for.inc:                                          ; preds = %lor.lhs.false, %if.then
  %need_original.1 = phi i8 [ %need_original.0, %if.then ], [ 1, %lor.lhs.false ], !dbg !4205
  %redirectable_node_callers.1 = phi i32 [ %inc, %if.then ], [ %redirectable_node_callers.0, %lor.lhs.false ], !dbg !4205
  call void @llvm.dbg.value(metadata i32 %redirectable_node_callers.1, metadata !4193, metadata !DIExpression()), !dbg !4205
  call void @llvm.dbg.value(metadata i8 %need_original.1, metadata !4195, metadata !DIExpression()), !dbg !4205
  %next_caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %cs.0, i64 0, i32 4, !dbg !4224
  br label %for.cond, !dbg !4225, !llvm.loop !4226

for.end:                                          ; preds = %for.cond
  %need_original.0.lcssa = phi i8 [ %need_original.0, %for.cond ], !dbg !4211
  %redirectable_node_callers.0.lcssa = phi i32 [ %redirectable_node_callers.0, %for.cond ], !dbg !4205
  call void @llvm.dbg.value(metadata i8 %need_original.0.lcssa, metadata !4195, metadata !DIExpression()), !dbg !4205
  call void @llvm.dbg.value(metadata i32 %redirectable_node_callers.0.lcssa, metadata !4193, metadata !DIExpression()), !dbg !4205
  call void @llvm.dbg.value(metadata i8 %need_original.0.lcssa, metadata !4195, metadata !DIExpression()), !dbg !4205
  call void @llvm.dbg.value(metadata i32 %redirectable_node_callers.0.lcssa, metadata !4193, metadata !DIExpression()), !dbg !4205
  call void @llvm.dbg.value(metadata i8 %need_original.0.lcssa, metadata !4195, metadata !DIExpression()), !dbg !4205
  call void @llvm.dbg.value(metadata i32 %redirectable_node_callers.0.lcssa, metadata !4193, metadata !DIExpression()), !dbg !4205
  %tobool6 = icmp eq i8 %need_original.0.lcssa, 0, !dbg !4228
  br i1 %tobool6, label %cleanup, label %if.end8, !dbg !4230

if.end8:                                          ; preds = %for.end
  %1 = load %struct.VEC_ipa_node_params_t_heap*, %struct.VEC_ipa_node_params_t_heap** @ipa_node_params_vector, align 8, !dbg !4231
  %base = getelementptr inbounds %struct.VEC_ipa_node_params_t_heap, %struct.VEC_ipa_node_params_t_heap* %1, i64 0, i32 0, !dbg !4231
  %uid = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 24, !dbg !4231
  %2 = load i32, i32* %uid, align 8, !dbg !4231
  %call10 = tail call fastcc %struct.ipa_node_params* @VEC_ipa_node_params_t_base_index(%struct.VEC_ipa_node_params_t_base* %base, i32 %2) #7, !dbg !4231
  call void @llvm.dbg.value(metadata %struct.ipa_node_params* %call10, metadata !4196, metadata !DIExpression()), !dbg !4205
  %call11 = tail call fastcc i32 @ipa_get_param_count(%struct.ipa_node_params* %call10) #7, !dbg !4232
  call void @llvm.dbg.value(metadata i32 %call11, metadata !4198, metadata !DIExpression()), !dbg !4205
  call void @llvm.dbg.value(metadata i32 0, metadata !4197, metadata !DIExpression()), !dbg !4205
  %3 = bitcast %struct.cgraph_node* %node to %struct.tree_function_decl**, !dbg !4233
  br label %for.cond12, !dbg !4235

for.cond12:                                       ; preds = %if.end25, %if.end8
  %i.0 = phi i32 [ 0, %if.end8 ], [ %inc32, %if.end25 ], !dbg !4236
  %removable_args.0 = phi i32 [ 0, %if.end8 ], [ %spec.select1, %if.end25 ], !dbg !4205
  call void @llvm.dbg.value(metadata i32 %removable_args.0, metadata !4194, metadata !DIExpression()), !dbg !4205
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !4197, metadata !DIExpression()), !dbg !4205
  %cmp13 = icmp slt i32 %i.0, %call11, !dbg !4237
  br i1 %cmp13, label %for.body15, label %for.end33, !dbg !4238

for.body15:                                       ; preds = %for.cond12
  %call16 = tail call fastcc %struct.ipcp_lattice* @ipcp_get_lattice(%struct.ipa_node_params* %call10, i32 %i.0) #7, !dbg !4239
  call void @llvm.dbg.value(metadata %struct.ipcp_lattice* %call16, metadata !4200, metadata !DIExpression()), !dbg !4240
  %call17 = tail call fastcc %union.tree_node* @ipa_get_param(%struct.ipa_node_params* %call10, i32 %i.0) #7, !dbg !4241
  call void @llvm.dbg.value(metadata %union.tree_node* %call17, metadata !4204, metadata !DIExpression()), !dbg !4240
  %call18 = tail call zeroext i8 @is_gimple_reg(%union.tree_node* %call17) #6, !dbg !4242
  %tobool20 = icmp eq i8 %call18, 0, !dbg !4242
  br i1 %tobool20, label %if.end25, label %land.lhs.true, !dbg !4243

land.lhs.true:                                    ; preds = %for.body15
  %4 = load %struct.tree_function_decl*, %struct.tree_function_decl** %3, align 8, !dbg !4244
  %f = getelementptr inbounds %struct.tree_function_decl, %struct.tree_function_decl* %4, i64 0, i32 1, !dbg !4244
  %5 = load %struct.function*, %struct.function** %f, align 8, !dbg !4244
  %call21 = tail call %union.tree_node* @gimple_default_def(%struct.function* %5, %union.tree_node* %call17) #6, !dbg !4245
  %tobool22 = icmp eq %union.tree_node* %call21, null, !dbg !4245
  %inc24 = zext i1 %tobool22 to i32, !dbg !4246
  %spec.select = add nsw i32 %removable_args.0, %inc24, !dbg !4246
  br label %if.end25, !dbg !4246

if.end25:                                         ; preds = %for.body15, %land.lhs.true
  %removable_args.1 = phi i32 [ %removable_args.0, %for.body15 ], [ %spec.select, %land.lhs.true ], !dbg !4205
  call void @llvm.dbg.value(metadata i32 %removable_args.1, metadata !4194, metadata !DIExpression()), !dbg !4205
  %type = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %call16, i64 0, i32 0, !dbg !4247
  %6 = load i32, i32* %type, align 8, !dbg !4247
  %cmp26 = icmp eq i32 %6, 1, !dbg !4249
  %inc29 = zext i1 %cmp26 to i32, !dbg !4250
  %spec.select1 = add nsw i32 %removable_args.1, %inc29, !dbg !4250
  call void @llvm.dbg.value(metadata i32 %spec.select1, metadata !4194, metadata !DIExpression()), !dbg !4205
  %inc32 = add nuw nsw i32 %i.0, 1, !dbg !4251
  call void @llvm.dbg.value(metadata i32 %inc32, metadata !4197, metadata !DIExpression()), !dbg !4205
  br label %for.cond12, !dbg !4252, !llvm.loop !4253

for.end33:                                        ; preds = %for.cond12
  %removable_args.0.lcssa = phi i32 [ %removable_args.0, %for.cond12 ], !dbg !4205
  call void @llvm.dbg.value(metadata i32 %removable_args.0.lcssa, metadata !4194, metadata !DIExpression()), !dbg !4205
  call void @llvm.dbg.value(metadata i32 %removable_args.0.lcssa, metadata !4194, metadata !DIExpression()), !dbg !4205
  call void @llvm.dbg.value(metadata i32 %removable_args.0.lcssa, metadata !4194, metadata !DIExpression()), !dbg !4205
  %self_size = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 18, i32 1, i32 1, !dbg !4255
  %7 = load i32, i32* %self_size, align 8, !dbg !4255
  %mul = mul nsw i32 %removable_args.0.lcssa, %redirectable_node_callers.0.lcssa, !dbg !4256
  %sub = sub nsw i32 %7, %mul, !dbg !4257
  call void @llvm.dbg.value(metadata i32 %sub, metadata !4199, metadata !DIExpression()), !dbg !4205
  %8 = icmp sgt i32 %sub, 0, !dbg !4258
  %narrow = select i1 %8, i32 %sub, i32 0, !dbg !4258
  %spec.select2 = zext i32 %narrow to i64, !dbg !4258
  ret i64 %spec.select2, !dbg !4258

cleanup:                                          ; preds = %for.end
  ret i64 0, !dbg !4259
}

declare dso_local zeroext i8 @optimize_function_for_size_p(%struct.function*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @ipcp_need_redirect_p(%struct.cgraph_edge* %cs) unnamed_addr #5 !dbg !4260 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %cs, metadata !4264, metadata !DIExpression()), !dbg !4275
  %callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %cs, i64 0, i32 2, !dbg !4276
  %0 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !4276
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %0, metadata !4269, metadata !DIExpression()), !dbg !4275
  %1 = load i32, i32* @n_cloning_candidates, align 4, !dbg !4277
  %tobool = icmp eq i32 %1, 0, !dbg !4277
  br i1 %tobool, label %cleanup28, label %if.end, !dbg !4279

if.end:                                           ; preds = %entry
  %call = tail call fastcc %struct.cgraph_node* @ipcp_get_orig_node(%struct.cgraph_node* %0) #7, !dbg !4280
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call, metadata !4270, metadata !DIExpression()), !dbg !4275
  call void @llvm.dbg.value(metadata %struct.cgraph_node* undef, metadata !4269, metadata !DIExpression()), !dbg !4275
  %caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %cs, i64 0, i32 1, !dbg !4282
  %2 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !4282
  %call3 = tail call fastcc %struct.cgraph_node* @ipcp_get_orig_node(%struct.cgraph_node* %2) #7, !dbg !4284
  %tobool4 = icmp eq %struct.cgraph_node* %call3, null, !dbg !4284
  br i1 %tobool4, label %if.end6, label %cleanup28, !dbg !4285

if.end6:                                          ; preds = %if.end
  %cmp = icmp eq %struct.cgraph_node* %call, null, !dbg !4286
  %spec.select = select i1 %cmp, %struct.cgraph_node* %0, %struct.cgraph_node* %call, !dbg !4287
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %spec.select, metadata !4269, metadata !DIExpression()), !dbg !4275
  %3 = load %struct.VEC_ipa_node_params_t_heap*, %struct.VEC_ipa_node_params_t_heap** @ipa_node_params_vector, align 8, !dbg !4288
  %base = getelementptr inbounds %struct.VEC_ipa_node_params_t_heap, %struct.VEC_ipa_node_params_t_heap* %3, i64 0, i32 0, !dbg !4288
  %uid = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %spec.select, i64 0, i32 24, !dbg !4288
  %4 = load i32, i32* %uid, align 8, !dbg !4288
  %call8 = tail call fastcc %struct.ipa_node_params* @VEC_ipa_node_params_t_base_index(%struct.VEC_ipa_node_params_t_base* %base, i32 %4) #7, !dbg !4288
  call void @llvm.dbg.value(metadata %struct.ipa_node_params* %call8, metadata !4265, metadata !DIExpression()), !dbg !4275
  %call9 = tail call fastcc i32 @ipa_get_param_count(%struct.ipa_node_params* %call8) #7, !dbg !4289
  call void @llvm.dbg.value(metadata i32 %call9, metadata !4267, metadata !DIExpression()), !dbg !4275
  call void @llvm.dbg.value(metadata i32 0, metadata !4266, metadata !DIExpression()), !dbg !4275
  %uid21 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %cs, i64 0, i32 12, !dbg !4290
  br label %for.cond, !dbg !4293

for.cond:                                         ; preds = %for.inc, %if.end6
  %i.0 = phi i32 [ 0, %if.end6 ], [ %inc, %for.inc ], !dbg !4294
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !4266, metadata !DIExpression()), !dbg !4275
  %cmp10 = icmp slt i32 %i.0, %call9, !dbg !4295
  br i1 %cmp10, label %for.body, label %cleanup28.loopexit, !dbg !4296

for.body:                                         ; preds = %for.cond
  %call11 = tail call fastcc %struct.ipcp_lattice* @ipcp_get_lattice(%struct.ipa_node_params* %call8, i32 %i.0) #7, !dbg !4297
  call void @llvm.dbg.value(metadata %struct.ipcp_lattice* %call11, metadata !4271, metadata !DIExpression()), !dbg !4298
  %call12 = tail call fastcc zeroext i8 @ipcp_lat_is_const(%struct.ipcp_lattice* %call11) #7, !dbg !4299
  %tobool13 = icmp eq i8 %call12, 0, !dbg !4299
  br i1 %tobool13, label %if.end27, label %if.then14, !dbg !4300

if.then14:                                        ; preds = %for.body
  %5 = load %struct.VEC_ipa_edge_args_t_gc*, %struct.VEC_ipa_edge_args_t_gc** @ipa_edge_args_vector, align 8, !dbg !4301
  %base17 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_gc, %struct.VEC_ipa_edge_args_t_gc* %5, i64 0, i32 0, !dbg !4301
  %6 = load i32, i32* %uid21, align 4, !dbg !4301
  %call22 = tail call fastcc %struct.ipa_edge_args* @VEC_ipa_edge_args_t_base_index(%struct.VEC_ipa_edge_args_t_base* %base17, i32 %6) #7, !dbg !4301
  %call23 = tail call fastcc %struct.ipa_jump_func* @ipa_get_ith_jump_func(%struct.ipa_edge_args* %call22, i32 %i.0) #7, !dbg !4302
  call void @llvm.dbg.value(metadata %struct.ipa_jump_func* %call23, metadata !4268, metadata !DIExpression()), !dbg !4275
  %type = getelementptr inbounds %struct.ipa_jump_func, %struct.ipa_jump_func* %call23, i64 0, i32 0, !dbg !4303
  %7 = load i32, i32* %type, align 8, !dbg !4303
  %cmp24 = icmp eq i32 %7, 1, !dbg !4305
  br i1 %cmp24, label %if.end27, label %cleanup, !dbg !4306

if.end27:                                         ; preds = %if.then14, %for.body
  br label %cleanup, !dbg !4307

cleanup:                                          ; preds = %if.then14, %if.end27
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end27 ], [ false, %if.then14 ]
  br i1 %cleanup.dest.slot.0, label %for.inc, label %cleanup28.loopexit

for.inc:                                          ; preds = %cleanup
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4308
  call void @llvm.dbg.value(metadata i32 %inc, metadata !4266, metadata !DIExpression()), !dbg !4275
  br label %for.cond, !dbg !4309, !llvm.loop !4310

cleanup28.loopexit:                               ; preds = %cleanup, %for.cond
  %retval.2.ph = phi i8 [ 0, %for.cond ], [ 1, %cleanup ]
  br label %cleanup28, !dbg !4312

cleanup28:                                        ; preds = %cleanup28.loopexit, %if.end, %entry
  %retval.2 = phi i8 [ 0, %entry ], [ 0, %if.end ], [ %retval.2.ph, %cleanup28.loopexit ], !dbg !4275
  ret i8 %retval.2, !dbg !4312
}

declare dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_ipa_replace_map_p_gc* @VEC_ipa_replace_map_p_gc_alloc(i32 %alloc_) unnamed_addr #0 !dbg !4313 {
entry:
  call void @llvm.dbg.value(metadata i32 1, metadata !4317, metadata !DIExpression()), !dbg !4318
  %call = tail call i8* @vec_gc_p_reserve_exact(i8* null, i32 1) #6, !dbg !4319
  %0 = bitcast i8* %call to %struct.VEC_ipa_replace_map_p_gc*, !dbg !4319
  ret %struct.VEC_ipa_replace_map_p_gc* %0, !dbg !4319
}

declare dso_local %struct.bitmap_head_def* @bitmap_gc_alloc_stat() local_unnamed_addr #2

declare dso_local zeroext i8 @is_gimple_reg(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @gimple_default_def(%struct.function*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.ipa_replace_map* @ipcp_create_replace_map(%union.tree_node* %parm_tree, %struct.ipcp_lattice* %lat) unnamed_addr #5 !dbg !4320 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %parm_tree, metadata !4324, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata %struct.ipcp_lattice* %lat, metadata !4325, metadata !DIExpression()), !dbg !4328
  %call = tail call i8* @ggc_alloc_stat(i64 24) #6, !dbg !4329
  %0 = bitcast i8* %call to %struct.ipa_replace_map*, !dbg !4329
  call void @llvm.dbg.value(metadata %struct.ipa_replace_map* %0, metadata !4326, metadata !DIExpression()), !dbg !4328
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %parm_tree, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4330
  %1 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !4330
  %call1 = tail call fastcc %union.tree_node* @build_const_val(%struct.ipcp_lattice* %lat, %union.tree_node* %1) #7, !dbg !4331
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !4327, metadata !DIExpression()), !dbg !4328
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4332
  %tobool = icmp eq %struct._IO_FILE* %2, null, !dbg !4332
  br i1 %tobool, label %if.end, label %if.then, !dbg !4334

if.then:                                          ; preds = %entry
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i64 0, i64 0)) #6, !dbg !4335
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4337
  tail call void @print_generic_expr(%struct._IO_FILE* %3, %union.tree_node* %parm_tree, i32 0) #6, !dbg !4338
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4339
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0)) #6, !dbg !4340
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4341
  tail call void @print_generic_expr(%struct._IO_FILE* %5, %union.tree_node* %call1, i32 0) #6, !dbg !4342
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4343
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !4344
  br label %if.end, !dbg !4345

if.end:                                           ; preds = %entry, %if.then
  %old_tree = bitcast i8* %call to %union.tree_node**, !dbg !4346
  store %union.tree_node* %parm_tree, %union.tree_node** %old_tree, align 8, !dbg !4347
  %new_tree = getelementptr inbounds i8, i8* %call, i64 8, !dbg !4348
  %7 = bitcast i8* %new_tree to %union.tree_node**, !dbg !4348
  store %union.tree_node* %call1, %union.tree_node** %7, align 8, !dbg !4349
  %8 = getelementptr inbounds i8, i8* %call, i64 16, !dbg !4350
  store i8 1, i8* %8, align 8, !dbg !4351
  %9 = getelementptr inbounds i8, i8* %call, i64 17, !dbg !4352
  store i8 0, i8* %9, align 1, !dbg !4353
  ret %struct.ipa_replace_map* %0, !dbg !4354
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ipa_replace_map** @VEC_ipa_replace_map_p_gc_safe_push(%struct.VEC_ipa_replace_map_p_gc** %vec_, %struct.ipa_replace_map* %obj_) unnamed_addr #0 !dbg !4355 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_replace_map_p_gc** %vec_, metadata !4361, metadata !DIExpression()), !dbg !4363
  call void @llvm.dbg.value(metadata %struct.ipa_replace_map* %obj_, metadata !4362, metadata !DIExpression()), !dbg !4363
  %call = tail call fastcc i32 @VEC_ipa_replace_map_p_gc_reserve(%struct.VEC_ipa_replace_map_p_gc** %vec_, i32 1) #7, !dbg !4364
  %0 = load %struct.VEC_ipa_replace_map_p_gc*, %struct.VEC_ipa_replace_map_p_gc** %vec_, align 8, !dbg !4364
  %tobool = icmp eq %struct.VEC_ipa_replace_map_p_gc* %0, null, !dbg !4364
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4364

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_ipa_replace_map_p_gc, %struct.VEC_ipa_replace_map_p_gc* %0, i64 0, i32 0, !dbg !4364
  br label %cond.end, !dbg !4364

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_ipa_replace_map_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4364
  %call1 = tail call fastcc %struct.ipa_replace_map** @VEC_ipa_replace_map_p_base_quick_push(%struct.VEC_ipa_replace_map_p_base* %cond, %struct.ipa_replace_map* %obj_) #7, !dbg !4364
  ret %struct.ipa_replace_map** %call1, !dbg !4364
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_cgraph_edge_p_heap* @VEC_cgraph_edge_p_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !4365 {
entry:
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !4369, metadata !DIExpression()), !dbg !4370
  %call = tail call i8* @vec_heap_p_reserve_exact(i8* null, i32 %alloc_) #6, !dbg !4371
  %0 = bitcast i8* %call to %struct.VEC_cgraph_edge_p_heap*, !dbg !4371
  ret %struct.VEC_cgraph_edge_p_heap* %0, !dbg !4371
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.cgraph_edge** @VEC_cgraph_edge_p_base_quick_push(%struct.VEC_cgraph_edge_p_base* %vec_, %struct.cgraph_edge* %obj_) unnamed_addr #0 !dbg !4372 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_edge_p_base* %vec_, metadata !4378, metadata !DIExpression()), !dbg !4381
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %obj_, metadata !4379, metadata !DIExpression()), !dbg !4381
  %num1 = getelementptr inbounds %struct.VEC_cgraph_edge_p_base, %struct.VEC_cgraph_edge_p_base* %vec_, i64 0, i32 0, !dbg !4382
  %0 = load i32, i32* %num1, align 8, !dbg !4382
  %inc = add i32 %0, 1, !dbg !4382
  store i32 %inc, i32* %num1, align 8, !dbg !4382
  %idxprom = zext i32 %0 to i64, !dbg !4382
  %arrayidx = getelementptr inbounds %struct.VEC_cgraph_edge_p_base, %struct.VEC_cgraph_edge_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4382
  call void @llvm.dbg.value(metadata %struct.cgraph_edge** %arrayidx, metadata !4380, metadata !DIExpression()), !dbg !4381
  store %struct.cgraph_edge* %obj_, %struct.cgraph_edge** %arrayidx, align 8, !dbg !4382
  ret %struct.cgraph_edge** %arrayidx, !dbg !4382
}

declare dso_local %struct.cgraph_node* @cgraph_create_virtual_clone(%struct.cgraph_node*, %struct.VEC_cgraph_edge_p_heap*, %struct.VEC_ipa_replace_map_p_gc*, %struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_cgraph_edge_p_heap_free(%struct.VEC_cgraph_edge_p_heap** %vec_) unnamed_addr #0 !dbg !4383 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_edge_p_heap** %vec_, metadata !4388, metadata !DIExpression()), !dbg !4389
  %0 = load %struct.VEC_cgraph_edge_p_heap*, %struct.VEC_cgraph_edge_p_heap** %vec_, align 8, !dbg !4390
  %tobool = icmp eq %struct.VEC_cgraph_edge_p_heap* %0, null, !dbg !4390
  br i1 %tobool, label %if.end, label %if.then, !dbg !4392

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_cgraph_edge_p_heap* %0 to i8*, !dbg !4392
  tail call void @free(i8* nonnull %1) #6, !dbg !4390
  br label %if.end, !dbg !4390

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_cgraph_edge_p_heap* null, %struct.VEC_cgraph_edge_p_heap** %vec_, align 8, !dbg !4392
  ret void, !dbg !4392
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ipcp_init_cloned_node(%struct.cgraph_node* %orig_node, %struct.cgraph_node* %new_node) unnamed_addr #5 !dbg !4393 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %orig_node, metadata !4397, metadata !DIExpression()), !dbg !4399
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %new_node, metadata !4398, metadata !DIExpression()), !dbg !4399
  tail call fastcc void @ipa_check_create_node_params() #7, !dbg !4400
  tail call void @ipa_initialize_node_params(%struct.cgraph_node* %new_node) #6, !dbg !4401
  %0 = load %struct.VEC_ipa_node_params_t_heap*, %struct.VEC_ipa_node_params_t_heap** @ipa_node_params_vector, align 8, !dbg !4402
  %base = getelementptr inbounds %struct.VEC_ipa_node_params_t_heap, %struct.VEC_ipa_node_params_t_heap* %0, i64 0, i32 0, !dbg !4402
  %uid = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %new_node, i64 0, i32 24, !dbg !4402
  %1 = load i32, i32* %uid, align 8, !dbg !4402
  %call = tail call fastcc %struct.ipa_node_params* @VEC_ipa_node_params_t_base_index(%struct.VEC_ipa_node_params_t_base* %base, i32 %1) #7, !dbg !4402
  %ipcp_orig_node = getelementptr inbounds %struct.ipa_node_params, %struct.ipa_node_params* %call, i64 0, i32 3, !dbg !4403
  store %struct.cgraph_node* %orig_node, %struct.cgraph_node** %ipcp_orig_node, align 8, !dbg !4404
  ret void, !dbg !4405
}

declare dso_local void @dump_function_to_file(%union.tree_node*, %struct._IO_FILE*, i32) local_unnamed_addr #2

declare dso_local i8* @fibheap_delete_node(%struct.fibheap*, %struct.fibnode*) local_unnamed_addr #2

declare dso_local void @fibheap_delete(%struct.fibheap*) local_unnamed_addr #2

declare dso_local void @bitmap_obstack_free(%struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ipcp_update_callgraph() unnamed_addr #5 !dbg !4406 {
entry:
  br label %for.cond, !dbg !4425

for.cond:                                         ; preds = %for.inc41, %entry
  %node.0.in = phi %struct.cgraph_node** [ @cgraph_nodes, %entry ], [ %next42, %for.inc41 ]
  %node.0 = load %struct.cgraph_node*, %struct.cgraph_node** %node.0.in, align 8, !dbg !4426
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.0, metadata !4408, metadata !DIExpression()), !dbg !4427
  %tobool = icmp eq %struct.cgraph_node* %node.0, null, !dbg !4428
  br i1 %tobool, label %for.end43, label %for.body, !dbg !4428

for.body:                                         ; preds = %for.cond
  %analyzed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 27, !dbg !4429
  %bf.load = load i16, i16* %analyzed, align 4, !dbg !4429
  %bf.clear = and i16 %bf.load, 32, !dbg !4429
  %tobool1 = icmp eq i16 %bf.clear, 0, !dbg !4430
  br i1 %tobool1, label %for.inc41, label %land.lhs.true, !dbg !4431

land.lhs.true:                                    ; preds = %for.body
  %call = tail call fastcc zeroext i8 @ipcp_node_is_clone(%struct.cgraph_node* nonnull %node.0) #7, !dbg !4432
  %tobool2 = icmp eq i8 %call, 0, !dbg !4432
  br i1 %tobool2, label %for.inc41, label %if.then, !dbg !4433

if.then:                                          ; preds = %land.lhs.true
  %call3 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !4434
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call3, metadata !4409, metadata !DIExpression()), !dbg !4435
  %call4 = tail call fastcc %struct.cgraph_node* @ipcp_get_orig_node(%struct.cgraph_node* nonnull %node.0) #7, !dbg !4436
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call4, metadata !4414, metadata !DIExpression()), !dbg !4435
  %0 = load %struct.VEC_ipa_node_params_t_heap*, %struct.VEC_ipa_node_params_t_heap** @ipa_node_params_vector, align 8, !dbg !4437
  %base = getelementptr inbounds %struct.VEC_ipa_node_params_t_heap, %struct.VEC_ipa_node_params_t_heap* %0, i64 0, i32 0, !dbg !4437
  %uid = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call4, i64 0, i32 24, !dbg !4437
  %1 = load i32, i32* %uid, align 8, !dbg !4437
  %call6 = tail call fastcc %struct.ipa_node_params* @VEC_ipa_node_params_t_base_index(%struct.VEC_ipa_node_params_t_base* %base, i32 %1) #7, !dbg !4437
  call void @llvm.dbg.value(metadata %struct.ipa_node_params* %call6, metadata !4415, metadata !DIExpression()), !dbg !4435
  %call7 = tail call fastcc i32 @ipa_get_param_count(%struct.ipa_node_params* %call6) #7, !dbg !4438
  call void @llvm.dbg.value(metadata i32 %call7, metadata !4417, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.value(metadata i32 0, metadata !4416, metadata !DIExpression()), !dbg !4435
  %2 = bitcast %struct.cgraph_node* %call4 to %struct.tree_function_decl**, !dbg !4439
  br label %for.cond8, !dbg !4441

for.cond8:                                        ; preds = %cleanup, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %cleanup ], !dbg !4442
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !4416, metadata !DIExpression()), !dbg !4435
  %cmp = icmp slt i32 %i.0, %call7, !dbg !4443
  br i1 %cmp, label %for.body10, label %for.end, !dbg !4444

for.body10:                                       ; preds = %for.cond8
  %call11 = tail call fastcc %struct.ipcp_lattice* @ipcp_get_lattice(%struct.ipa_node_params* %call6, i32 %i.0) #7, !dbg !4445
  call void @llvm.dbg.value(metadata %struct.ipcp_lattice* %call11, metadata !4420, metadata !DIExpression()), !dbg !4446
  %call12 = tail call fastcc %union.tree_node* @ipa_get_param(%struct.ipa_node_params* %call6, i32 %i.0) #7, !dbg !4447
  call void @llvm.dbg.value(metadata %union.tree_node* %call12, metadata !4424, metadata !DIExpression()), !dbg !4446
  %call13 = tail call zeroext i8 @is_gimple_reg(%union.tree_node* %call12) #6, !dbg !4448
  %tobool15 = icmp eq i8 %call13, 0, !dbg !4448
  br i1 %tobool15, label %if.end, label %land.lhs.true16, !dbg !4449

land.lhs.true16:                                  ; preds = %for.body10
  %3 = load %struct.tree_function_decl*, %struct.tree_function_decl** %2, align 8, !dbg !4450
  %f = getelementptr inbounds %struct.tree_function_decl, %struct.tree_function_decl* %3, i64 0, i32 1, !dbg !4450
  %4 = load %struct.function*, %struct.function** %f, align 8, !dbg !4450
  %call17 = tail call %union.tree_node* @gimple_default_def(%struct.function* %4, %union.tree_node* %call12) #6, !dbg !4451
  %tobool18 = icmp eq %union.tree_node* %call17, null, !dbg !4451
  br i1 %tobool18, label %if.then19, label %if.end, !dbg !4452

if.then19:                                        ; preds = %land.lhs.true16
  %call20 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call3, i32 %i.0) #6, !dbg !4453
  br label %cleanup, !dbg !4455

if.end:                                           ; preds = %land.lhs.true16, %for.body10
  %type = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %call11, i64 0, i32 0, !dbg !4456
  %5 = load i32, i32* %type, align 8, !dbg !4456
  %cmp21 = icmp eq i32 %5, 1, !dbg !4458
  br i1 %cmp21, label %if.then23, label %cleanup, !dbg !4459

if.then23:                                        ; preds = %if.end
  %call24 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call3, i32 %i.0) #6, !dbg !4460
  br label %cleanup, !dbg !4460

cleanup:                                          ; preds = %if.end, %if.then23, %if.then19
  %inc = add nuw nsw i32 %i.0, 1, !dbg !4461
  call void @llvm.dbg.value(metadata i32 %inc, metadata !4416, metadata !DIExpression()), !dbg !4435
  br label %for.cond8, !dbg !4462, !llvm.loop !4463

for.end:                                          ; preds = %for.cond8
  %callers = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 2, !dbg !4465
  %6 = load %struct.cgraph_edge*, %struct.cgraph_edge** %callers, align 8, !dbg !4465
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %6, metadata !4418, metadata !DIExpression()), !dbg !4435
  br label %for.cond27, !dbg !4467

for.cond27:                                       ; preds = %for.inc38, %for.end
  %cs.0 = phi %struct.cgraph_edge* [ %6, %for.end ], [ %7, %for.inc38 ], !dbg !4468
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %cs.0, metadata !4418, metadata !DIExpression()), !dbg !4435
  %tobool28 = icmp eq %struct.cgraph_edge* %cs.0, null, !dbg !4469
  br i1 %tobool28, label %for.inc41.loopexit, label %for.body29, !dbg !4469

for.body29:                                       ; preds = %for.cond27
  %next_caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %cs.0, i64 0, i32 4, !dbg !4470
  %7 = load %struct.cgraph_edge*, %struct.cgraph_edge** %next_caller, align 8, !dbg !4470
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %7, metadata !4419, metadata !DIExpression()), !dbg !4435
  %caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %cs.0, i64 0, i32 1, !dbg !4473
  %8 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !4473
  %call30 = tail call fastcc zeroext i8 @ipcp_node_is_clone(%struct.cgraph_node* %8) #7, !dbg !4475
  %tobool31 = icmp eq i8 %call30, 0, !dbg !4475
  br i1 %tobool31, label %land.lhs.true32, label %for.inc38, !dbg !4476

land.lhs.true32:                                  ; preds = %for.body29
  %call33 = tail call fastcc zeroext i8 @ipcp_need_redirect_p(%struct.cgraph_edge* nonnull %cs.0) #7, !dbg !4477
  %tobool35 = icmp eq i8 %call33, 0, !dbg !4477
  br i1 %tobool35, label %for.inc38, label %if.then36, !dbg !4478

if.then36:                                        ; preds = %land.lhs.true32
  tail call void @cgraph_redirect_edge_callee(%struct.cgraph_edge* nonnull %cs.0, %struct.cgraph_node* %call4) #6, !dbg !4479
  br label %for.inc38, !dbg !4479

for.inc38:                                        ; preds = %land.lhs.true32, %for.body29, %if.then36
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %7, metadata !4418, metadata !DIExpression()), !dbg !4435
  br label %for.cond27, !dbg !4480, !llvm.loop !4481

for.inc41.loopexit:                               ; preds = %for.cond27
  br label %for.inc41, !dbg !4483

for.inc41:                                        ; preds = %for.inc41.loopexit, %land.lhs.true, %for.body
  %next42 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 3, !dbg !4483
  br label %for.cond, !dbg !4484, !llvm.loop !4485

for.end43:                                        ; preds = %for.cond
  ret void, !dbg !4487
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ipcp_update_profiling() unnamed_addr #5 !dbg !4488 {
entry:
  br label %for.cond, !dbg !4495

for.cond:                                         ; preds = %for.inc27, %entry
  %node.0.in = phi %struct.cgraph_node** [ @cgraph_nodes, %entry ], [ %next, %for.inc27 ]
  %node.0 = load %struct.cgraph_node*, %struct.cgraph_node** %node.0.in, align 8, !dbg !4497
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.0, metadata !4490, metadata !DIExpression()), !dbg !4498
  %tobool = icmp eq %struct.cgraph_node* %node.0, null, !dbg !4499
  br i1 %tobool, label %for.end28, label %for.body, !dbg !4499

for.body:                                         ; preds = %for.cond
  %call = tail call fastcc zeroext i8 @ipcp_node_is_clone(%struct.cgraph_node* nonnull %node.0) #7, !dbg !4500
  %tobool1 = icmp eq i8 %call, 0, !dbg !4500
  br i1 %tobool1, label %for.inc27, label %if.then, !dbg !4504

if.then:                                          ; preds = %for.body
  %call2 = tail call fastcc %struct.cgraph_node* @ipcp_get_orig_node(%struct.cgraph_node* nonnull %node.0) #7, !dbg !4505
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call2, metadata !4491, metadata !DIExpression()), !dbg !4498
  %call3 = tail call fastcc i64 @ipcp_get_node_scale(%struct.cgraph_node* %call2) #7, !dbg !4507
  call void @llvm.dbg.value(metadata i64 %call3, metadata !4492, metadata !DIExpression()), !dbg !4498
  %count = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call2, i64 0, i32 23, !dbg !4508
  %0 = load i64, i64* %count, align 8, !dbg !4508
  %mul = mul nsw i64 %0, %call3, !dbg !4509
  %div = sdiv i64 %mul, 10000, !dbg !4510
  %count4 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 23, !dbg !4511
  store i64 %div, i64* %count4, align 8, !dbg !4512
  %sub = sub nsw i64 10000, %call3, !dbg !4513
  call void @llvm.dbg.value(metadata i64 %sub, metadata !4493, metadata !DIExpression()), !dbg !4498
  %1 = load i64, i64* %count, align 8, !dbg !4514
  %mul6 = mul nsw i64 %1, %sub, !dbg !4515
  %div7 = sdiv i64 %mul6, 10000, !dbg !4516
  store i64 %div7, i64* %count, align 8, !dbg !4517
  %callees = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 1, !dbg !4518
  br label %for.cond9, !dbg !4520

for.cond9:                                        ; preds = %for.body11, %if.then
  %cs.0.in = phi %struct.cgraph_edge** [ %callees, %if.then ], [ %next_callee, %for.body11 ]
  %cs.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %cs.0.in, align 8, !dbg !4521
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %cs.0, metadata !4494, metadata !DIExpression()), !dbg !4498
  %tobool10 = icmp eq %struct.cgraph_edge* %cs.0, null, !dbg !4522
  br i1 %tobool10, label %for.end, label %for.body11, !dbg !4522

for.body11:                                       ; preds = %for.cond9
  %count12 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %cs.0, i64 0, i32 0, !dbg !4523
  %2 = load i64, i64* %count12, align 8, !dbg !4523
  %mul13 = mul nsw i64 %2, %call3, !dbg !4525
  %div14 = sdiv i64 %mul13, 10000, !dbg !4526
  store i64 %div14, i64* %count12, align 8, !dbg !4527
  %next_callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %cs.0, i64 0, i32 6, !dbg !4528
  br label %for.cond9, !dbg !4529, !llvm.loop !4530

for.end:                                          ; preds = %for.cond9
  %callees16 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call2, i64 0, i32 1, !dbg !4532
  br label %for.cond17, !dbg !4534

for.cond17:                                       ; preds = %for.body19, %for.end
  %cs.1.in = phi %struct.cgraph_edge** [ %callees16, %for.end ], [ %next_callee25, %for.body19 ]
  %cs.1 = load %struct.cgraph_edge*, %struct.cgraph_edge** %cs.1.in, align 8, !dbg !4535
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %cs.1, metadata !4494, metadata !DIExpression()), !dbg !4498
  %tobool18 = icmp eq %struct.cgraph_edge* %cs.1, null, !dbg !4536
  br i1 %tobool18, label %for.inc27.loopexit, label %for.body19, !dbg !4536

for.body19:                                       ; preds = %for.cond17
  %count20 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %cs.1, i64 0, i32 0, !dbg !4537
  %3 = load i64, i64* %count20, align 8, !dbg !4537
  %mul21 = mul nsw i64 %3, %sub, !dbg !4539
  %div22 = sdiv i64 %mul21, 10000, !dbg !4540
  store i64 %div22, i64* %count20, align 8, !dbg !4541
  %next_callee25 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %cs.1, i64 0, i32 6, !dbg !4542
  br label %for.cond17, !dbg !4543, !llvm.loop !4544

for.inc27.loopexit:                               ; preds = %for.cond17
  br label %for.inc27, !dbg !4546

for.inc27:                                        ; preds = %for.inc27.loopexit, %for.body
  %next = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 3, !dbg !4546
  br label %for.cond, !dbg !4547, !llvm.loop !4548

for.end28:                                        ; preds = %for.cond
  ret void, !dbg !4550
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ipcp_lat_is_insertable(%struct.ipcp_lattice* %lat) unnamed_addr #0 !dbg !4551 {
entry:
  call void @llvm.dbg.value(metadata %struct.ipcp_lattice* %lat, metadata !4553, metadata !DIExpression()), !dbg !4554
  %type = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %lat, i64 0, i32 0, !dbg !4555
  %0 = load i32, i32* %type, align 8, !dbg !4555
  %cmp = icmp eq i32 %0, 1, !dbg !4556
  %conv1 = zext i1 %cmp to i8, !dbg !4557
  ret i8 %conv1, !dbg !4558
}

declare dso_local i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.cgraph_node* @ipcp_get_orig_node(%struct.cgraph_node* %node) unnamed_addr #0 !dbg !4559 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !4563, metadata !DIExpression()), !dbg !4564
  %0 = load %struct.VEC_ipa_node_params_t_heap*, %struct.VEC_ipa_node_params_t_heap** @ipa_node_params_vector, align 8, !dbg !4565
  %base = getelementptr inbounds %struct.VEC_ipa_node_params_t_heap, %struct.VEC_ipa_node_params_t_heap* %0, i64 0, i32 0, !dbg !4565
  %uid = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 24, !dbg !4565
  %1 = load i32, i32* %uid, align 8, !dbg !4565
  %call = tail call fastcc %struct.ipa_node_params* @VEC_ipa_node_params_t_base_index(%struct.VEC_ipa_node_params_t_base* %base, i32 %1) #7, !dbg !4565
  %ipcp_orig_node = getelementptr inbounds %struct.ipa_node_params, %struct.ipa_node_params* %call, i64 0, i32 3, !dbg !4566
  %2 = load %struct.cgraph_node*, %struct.cgraph_node** %ipcp_orig_node, align 8, !dbg !4566
  ret %struct.cgraph_node* %2, !dbg !4567
}

declare dso_local i8* @vec_gc_p_reserve_exact(i8*, i32) local_unnamed_addr #2

declare dso_local i8* @ggc_alloc_stat(i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @build_const_val(%struct.ipcp_lattice* %lat, %union.tree_node* %tree_type) unnamed_addr #5 !dbg !4568 {
entry:
  call void @llvm.dbg.value(metadata %struct.ipcp_lattice* %lat, metadata !4572, metadata !DIExpression()), !dbg !4575
  call void @llvm.dbg.value(metadata %union.tree_node* %tree_type, metadata !4573, metadata !DIExpression()), !dbg !4575
  %call = tail call fastcc zeroext i8 @ipcp_lat_is_const(%struct.ipcp_lattice* %lat) #7, !dbg !4576
  %tobool = icmp eq i8 %call, 0, !dbg !4576
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !4576

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 567, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !4576
  br label %cond.end, !dbg !4576

cond.end:                                         ; preds = %entry, %cond.true
  %constant = getelementptr inbounds %struct.ipcp_lattice, %struct.ipcp_lattice* %lat, i64 0, i32 1, !dbg !4577
  %0 = load %union.tree_node*, %union.tree_node** %constant, align 8, !dbg !4577
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !4574, metadata !DIExpression()), !dbg !4575
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4578
  %1 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !4578
  %call1 = tail call zeroext i8 @useless_type_conversion_p(%union.tree_node* %tree_type, %union.tree_node* %1) #6, !dbg !4580
  %tobool2 = icmp eq i8 %call1, 0, !dbg !4580
  br i1 %tobool2, label %if.then, label %cleanup, !dbg !4581

if.then:                                          ; preds = %cond.end
  %call3 = tail call zeroext i8 @fold_convertible_p(%union.tree_node* %tree_type, %union.tree_node* %0) #6, !dbg !4582
  %tobool4 = icmp eq i8 %call3, 0, !dbg !4582
  br i1 %tobool4, label %if.else, label %if.then5, !dbg !4585

if.then5:                                         ; preds = %if.then
  %call6 = tail call %union.tree_node* @fold_build1_stat_loc(i32 0, i32 116, %union.tree_node* %tree_type, %union.tree_node* %0) #6, !dbg !4586
  br label %cleanup, !dbg !4587

if.else:                                          ; preds = %if.then
  %call7 = tail call %union.tree_node* @fold_build1_stat_loc(i32 0, i32 118, %union.tree_node* %tree_type, %union.tree_node* %0) #6, !dbg !4588
  br label %cleanup, !dbg !4589

cleanup:                                          ; preds = %cond.end, %if.else, %if.then5
  %retval.0 = phi %union.tree_node* [ %call6, %if.then5 ], [ %call7, %if.else ], [ %0, %cond.end ], !dbg !4575
  ret %union.tree_node* %retval.0, !dbg !4590
}

declare dso_local zeroext i8 @useless_type_conversion_p(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local zeroext i8 @fold_convertible_p(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @fold_build1_stat_loc(i32, i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_ipa_replace_map_p_gc_reserve(%struct.VEC_ipa_replace_map_p_gc** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4591 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_replace_map_p_gc** %vec_, metadata !4595, metadata !DIExpression()), !dbg !4598
  call void @llvm.dbg.value(metadata i32 1, metadata !4596, metadata !DIExpression()), !dbg !4598
  %0 = load %struct.VEC_ipa_replace_map_p_gc*, %struct.VEC_ipa_replace_map_p_gc** %vec_, align 8, !dbg !4599
  %tobool = icmp eq %struct.VEC_ipa_replace_map_p_gc* %0, null, !dbg !4599
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4599

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_ipa_replace_map_p_gc, %struct.VEC_ipa_replace_map_p_gc* %0, i64 0, i32 0, !dbg !4599
  br label %cond.end, !dbg !4599

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_ipa_replace_map_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4599
  %call = tail call fastcc i32 @VEC_ipa_replace_map_p_base_space(%struct.VEC_ipa_replace_map_p_base* %cond, i32 1) #7, !dbg !4599
  %tobool1 = icmp eq i32 %call, 0, !dbg !4599
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !4599
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !4597, metadata !DIExpression()), !dbg !4598
  br i1 %tobool1, label %if.then, label %if.end, !dbg !4599

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_ipa_replace_map_p_gc** %vec_ to i8**, !dbg !4600
  %2 = load i8*, i8** %1, align 8, !dbg !4600
  %call3 = tail call i8* @vec_gc_p_reserve(i8* %2, i32 1) #6, !dbg !4600
  store i8* %call3, i8** %1, align 8, !dbg !4600
  br label %if.end, !dbg !4600

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !4599
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ipa_replace_map** @VEC_ipa_replace_map_p_base_quick_push(%struct.VEC_ipa_replace_map_p_base* %vec_, %struct.ipa_replace_map* %obj_) unnamed_addr #0 !dbg !4602 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_replace_map_p_base* %vec_, metadata !4607, metadata !DIExpression()), !dbg !4610
  call void @llvm.dbg.value(metadata %struct.ipa_replace_map* %obj_, metadata !4608, metadata !DIExpression()), !dbg !4610
  %num1 = getelementptr inbounds %struct.VEC_ipa_replace_map_p_base, %struct.VEC_ipa_replace_map_p_base* %vec_, i64 0, i32 0, !dbg !4611
  %0 = load i32, i32* %num1, align 8, !dbg !4611
  %inc = add i32 %0, 1, !dbg !4611
  store i32 %inc, i32* %num1, align 8, !dbg !4611
  %idxprom = zext i32 %0 to i64, !dbg !4611
  %arrayidx = getelementptr inbounds %struct.VEC_ipa_replace_map_p_base, %struct.VEC_ipa_replace_map_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4611
  call void @llvm.dbg.value(metadata %struct.ipa_replace_map** %arrayidx, metadata !4609, metadata !DIExpression()), !dbg !4610
  store %struct.ipa_replace_map* %obj_, %struct.ipa_replace_map** %arrayidx, align 8, !dbg !4611
  ret %struct.ipa_replace_map** %arrayidx, !dbg !4611
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_ipa_replace_map_p_base_space(%struct.VEC_ipa_replace_map_p_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4612 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_replace_map_p_base* %vec_, metadata !4616, metadata !DIExpression()), !dbg !4618
  call void @llvm.dbg.value(metadata i32 1, metadata !4617, metadata !DIExpression()), !dbg !4618
  %tobool = icmp eq %struct.VEC_ipa_replace_map_p_base* %vec_, null, !dbg !4619
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !4619

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_ipa_replace_map_p_base, %struct.VEC_ipa_replace_map_p_base* %vec_, i64 0, i32 1, !dbg !4619
  %0 = load i32, i32* %alloc, align 4, !dbg !4619
  %num = getelementptr inbounds %struct.VEC_ipa_replace_map_p_base, %struct.VEC_ipa_replace_map_p_base* %vec_, i64 0, i32 0, !dbg !4619
  %1 = load i32, i32* %num, align 8, !dbg !4619
  %cmp1 = icmp ne i32 %0, %1, !dbg !4619
  %phitmp = zext i1 %cmp1 to i32, !dbg !4619
  br label %cond.end, !dbg !4619

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4619

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !4619
}

declare dso_local i8* @vec_gc_p_reserve(i8*, i32) local_unnamed_addr #2

declare dso_local i8* @vec_heap_p_reserve_exact(i8*, i32) local_unnamed_addr #2

declare dso_local void @free(i8*) local_unnamed_addr #2

declare dso_local void @ipa_initialize_node_params(%struct.cgraph_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ipcp_node_is_clone(%struct.cgraph_node* %node) unnamed_addr #0 !dbg !4620 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !4622, metadata !DIExpression()), !dbg !4623
  %call = tail call fastcc %struct.cgraph_node* @ipcp_get_orig_node(%struct.cgraph_node* %node) #7, !dbg !4624
  %cmp = icmp ne %struct.cgraph_node* %call, null, !dbg !4625
  %conv1 = zext i1 %cmp to i8, !dbg !4626
  ret i8 %conv1, !dbg !4627
}

declare dso_local void @cgraph_redirect_edge_callee(%struct.cgraph_edge*, %struct.cgraph_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ipcp_print_func_profile_counts(%struct._IO_FILE* %f) unnamed_addr #5 !dbg !4628 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %f, metadata !4630, metadata !DIExpression()), !dbg !4632
  br label %for.cond, !dbg !4633

for.cond:                                         ; preds = %for.body, %entry
  %node.0.in = phi %struct.cgraph_node** [ @cgraph_nodes, %entry ], [ %next, %for.body ]
  %node.0 = load %struct.cgraph_node*, %struct.cgraph_node** %node.0.in, align 8, !dbg !4635
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.0, metadata !4631, metadata !DIExpression()), !dbg !4632
  %tobool = icmp eq %struct.cgraph_node* %node.0, null, !dbg !4636
  br i1 %tobool, label %for.end, label %for.body, !dbg !4636

for.body:                                         ; preds = %for.cond
  %call = tail call i8* @cgraph_node_name(%struct.cgraph_node* nonnull %node.0) #6, !dbg !4637
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i64 0, i64 0), i8* %call) #6, !dbg !4640
  %count = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 23, !dbg !4641
  %0 = load i64, i64* %count, align 8, !dbg !4641
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i64 0, i64 0), i64 %0) #6, !dbg !4642
  %next = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 3, !dbg !4643
  br label %for.cond, !dbg !4644, !llvm.loop !4645

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4647
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ipcp_print_call_profile_counts(%struct._IO_FILE* %f) unnamed_addr #5 !dbg !4648 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %f, metadata !4650, metadata !DIExpression()), !dbg !4653
  br label %for.cond, !dbg !4654

for.cond:                                         ; preds = %for.inc7, %entry
  %node.0.in = phi %struct.cgraph_node** [ @cgraph_nodes, %entry ], [ %next, %for.inc7 ]
  %node.0 = load %struct.cgraph_node*, %struct.cgraph_node** %node.0.in, align 8, !dbg !4656
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.0, metadata !4651, metadata !DIExpression()), !dbg !4653
  %tobool = icmp eq %struct.cgraph_node* %node.0, null, !dbg !4657
  br i1 %tobool, label %for.end8, label %for.body, !dbg !4657

for.body:                                         ; preds = %for.cond
  %callees = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 1, !dbg !4658
  br label %for.cond1, !dbg !4662

for.cond1:                                        ; preds = %for.body3, %for.body
  %cs.0.in = phi %struct.cgraph_edge** [ %callees, %for.body ], [ %next_callee, %for.body3 ]
  %cs.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %cs.0.in, align 8, !dbg !4663
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %cs.0, metadata !4652, metadata !DIExpression()), !dbg !4653
  %tobool2 = icmp eq %struct.cgraph_edge* %cs.0, null, !dbg !4664
  br i1 %tobool2, label %for.inc7, label %for.body3, !dbg !4664

for.body3:                                        ; preds = %for.cond1
  %caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %cs.0, i64 0, i32 1, !dbg !4665
  %0 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !4665
  %call = tail call i8* @cgraph_node_name(%struct.cgraph_node* %0) #6, !dbg !4668
  %callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %cs.0, i64 0, i32 2, !dbg !4669
  %1 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !4669
  %call4 = tail call i8* @cgraph_node_name(%struct.cgraph_node* %1) #6, !dbg !4670
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i64 0, i64 0), i8* %call, i8* %call4) #6, !dbg !4671
  %count = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %cs.0, i64 0, i32 0, !dbg !4672
  %2 = load i64, i64* %count, align 8, !dbg !4672
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i64 0, i64 0), i64 %2) #6, !dbg !4673
  %next_callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %cs.0, i64 0, i32 6, !dbg !4674
  br label %for.cond1, !dbg !4675, !llvm.loop !4676

for.inc7:                                         ; preds = %for.cond1
  %next = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 3, !dbg !4678
  br label %for.cond, !dbg !4679, !llvm.loop !4680

for.end8:                                         ; preds = %for.cond
  ret void, !dbg !4682
}

declare dso_local void @ipa_register_cgraph_hooks() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ipcp_init_stage() unnamed_addr #5 !dbg !4683 {
entry:
  br label %for.cond, !dbg !4687

for.cond:                                         ; preds = %for.inc, %entry
  %node.0.in = phi %struct.cgraph_node** [ @cgraph_nodes, %entry ], [ %next, %for.inc ]
  %node.0 = load %struct.cgraph_node*, %struct.cgraph_node** %node.0.in, align 8, !dbg !4689
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.0, metadata !4685, metadata !DIExpression()), !dbg !4690
  %tobool = icmp eq %struct.cgraph_node* %node.0, null, !dbg !4691
  br i1 %tobool, label %for.end, label %for.body, !dbg !4691

for.body:                                         ; preds = %for.cond
  %analyzed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 27, !dbg !4692
  %bf.load = load i16, i16* %analyzed, align 4, !dbg !4692
  %bf.clear = and i16 %bf.load, 32, !dbg !4692
  %tobool1 = icmp eq i16 %bf.clear, 0, !dbg !4695
  br i1 %tobool1, label %for.inc, label %if.then, !dbg !4696

if.then:                                          ; preds = %for.body
  tail call fastcc void @ipcp_analyze_node(%struct.cgraph_node* nonnull %node.0) #7, !dbg !4697
  br label %for.inc, !dbg !4697

for.inc:                                          ; preds = %for.body, %if.then
  %next = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 3, !dbg !4698
  br label %for.cond, !dbg !4699, !llvm.loop !4700

for.end:                                          ; preds = %for.cond
  br label %for.cond2, !dbg !4702

for.cond2:                                        ; preds = %for.inc52, %for.end
  %node.1.in = phi %struct.cgraph_node** [ @cgraph_nodes, %for.end ], [ %next53, %for.inc52 ]
  %node.1 = load %struct.cgraph_node*, %struct.cgraph_node** %node.1.in, align 8, !dbg !4704
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.1, metadata !4685, metadata !DIExpression()), !dbg !4690
  %tobool3 = icmp eq %struct.cgraph_node* %node.1, null, !dbg !4705
  br i1 %tobool3, label %for.end54, label %for.body4, !dbg !4705

for.body4:                                        ; preds = %for.cond2
  %analyzed5 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.1, i64 0, i32 27, !dbg !4706
  %bf.load6 = load i16, i16* %analyzed5, align 4, !dbg !4706
  %bf.clear8 = and i16 %bf.load6, 32, !dbg !4706
  %tobool10 = icmp eq i16 %bf.clear8, 0, !dbg !4710
  br i1 %tobool10, label %for.inc52, label %if.end12, !dbg !4711

if.end12:                                         ; preds = %for.body4
  %callees = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.1, i64 0, i32 1, !dbg !4712
  br label %for.cond13, !dbg !4714

for.cond13:                                       ; preds = %for.inc50, %if.end12
  %cs.0.in = phi %struct.cgraph_edge** [ %callees, %if.end12 ], [ %next_callee, %for.inc50 ]
  %cs.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %cs.0.in, align 8, !dbg !4715
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %cs.0, metadata !4686, metadata !DIExpression()), !dbg !4690
  %tobool14 = icmp eq %struct.cgraph_edge* %cs.0, null, !dbg !4716
  br i1 %tobool14, label %for.inc52.loopexit, label %for.body15, !dbg !4716

for.body15:                                       ; preds = %for.cond13
  %callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %cs.0, i64 0, i32 2, !dbg !4717
  %0 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !4717
  %analyzed16 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %0, i64 0, i32 27, !dbg !4721
  %bf.load17 = load i16, i16* %analyzed16, align 4, !dbg !4721
  %bf.clear19 = and i16 %bf.load17, 32, !dbg !4721
  %tobool21 = icmp ne i16 %bf.clear19, 0, !dbg !4722
  %1 = load i32, i32* @flag_lto, align 4, !dbg !4723
  %2 = load i32, i32* @flag_whopr, align 4, !dbg !4724
  %3 = or i32 %1, %2, !dbg !4725
  %4 = icmp ne i32 %3, 0, !dbg !4725
  %5 = or i1 %4, %tobool21, !dbg !4725
  br i1 %5, label %if.end26, label %for.inc50, !dbg !4725

if.end26:                                         ; preds = %for.body15
  tail call void @ipa_count_arguments(%struct.cgraph_edge* nonnull %cs.0) #6, !dbg !4726
  %6 = load %struct.VEC_ipa_edge_args_t_gc*, %struct.VEC_ipa_edge_args_t_gc** @ipa_edge_args_vector, align 8, !dbg !4727
  %base = getelementptr inbounds %struct.VEC_ipa_edge_args_t_gc, %struct.VEC_ipa_edge_args_t_gc* %6, i64 0, i32 0, !dbg !4727
  %uid = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %cs.0, i64 0, i32 12, !dbg !4727
  %7 = load i32, i32* %uid, align 4, !dbg !4727
  %call = tail call fastcc %struct.ipa_edge_args* @VEC_ipa_edge_args_t_base_index(%struct.VEC_ipa_edge_args_t_base* %base, i32 %7) #7, !dbg !4727
  %call28 = tail call fastcc i32 @ipa_get_cs_argument_count(%struct.ipa_edge_args* %call) #7, !dbg !4729
  %8 = load %struct.VEC_ipa_node_params_t_heap*, %struct.VEC_ipa_node_params_t_heap** @ipa_node_params_vector, align 8, !dbg !4730
  %base31 = getelementptr inbounds %struct.VEC_ipa_node_params_t_heap, %struct.VEC_ipa_node_params_t_heap* %8, i64 0, i32 0, !dbg !4730
  %9 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !4730
  %uid36 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %9, i64 0, i32 24, !dbg !4730
  %10 = load i32, i32* %uid36, align 8, !dbg !4730
  %call37 = tail call fastcc %struct.ipa_node_params* @VEC_ipa_node_params_t_base_index(%struct.VEC_ipa_node_params_t_base* %base31, i32 %10) #7, !dbg !4730
  %call38 = tail call fastcc i32 @ipa_get_param_count(%struct.ipa_node_params* %call37) #7, !dbg !4731
  %cmp = icmp eq i32 %call28, %call38, !dbg !4732
  br i1 %cmp, label %if.end49, label %if.then39, !dbg !4733

if.then39:                                        ; preds = %if.end26
  %11 = load %struct.VEC_ipa_node_params_t_heap*, %struct.VEC_ipa_node_params_t_heap** @ipa_node_params_vector, align 8, !dbg !4734
  %base42 = getelementptr inbounds %struct.VEC_ipa_node_params_t_heap, %struct.VEC_ipa_node_params_t_heap* %11, i64 0, i32 0, !dbg !4734
  %12 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !4734
  %uid47 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %12, i64 0, i32 24, !dbg !4734
  %13 = load i32, i32* %uid47, align 8, !dbg !4734
  %call48 = tail call fastcc %struct.ipa_node_params* @VEC_ipa_node_params_t_base_index(%struct.VEC_ipa_node_params_t_base* %base42, i32 %13) #7, !dbg !4734
  tail call fastcc void @ipa_set_called_with_variable_arg(%struct.ipa_node_params* %call48) #7, !dbg !4735
  br label %if.end49, !dbg !4735

if.end49:                                         ; preds = %if.end26, %if.then39
  tail call void @ipa_compute_jump_functions(%struct.cgraph_edge* nonnull %cs.0) #6, !dbg !4736
  br label %for.inc50, !dbg !4737

for.inc50:                                        ; preds = %for.body15, %if.end49
  %next_callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %cs.0, i64 0, i32 6, !dbg !4738
  br label %for.cond13, !dbg !4739, !llvm.loop !4740

for.inc52.loopexit:                               ; preds = %for.cond13
  br label %for.inc52, !dbg !4742

for.inc52:                                        ; preds = %for.inc52.loopexit, %for.body4
  %next53 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.1, i64 0, i32 3, !dbg !4742
  br label %for.cond2, !dbg !4743, !llvm.loop !4744

for.end54:                                        ; preds = %for.cond2
  ret void, !dbg !4746
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ipcp_analyze_node(%struct.cgraph_node* %node) unnamed_addr #5 !dbg !4747 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !4749, metadata !DIExpression()), !dbg !4750
  %needed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 27, !dbg !4751
  %bf.load = load i16, i16* %needed, align 4, !dbg !4751
  %bf.clear = and i16 %bf.load, 1, !dbg !4751
  %tobool = icmp eq i16 %bf.clear, 0, !dbg !4751
  br i1 %tobool, label %lor.lhs.false, label %cond.end, !dbg !4751

lor.lhs.false:                                    ; preds = %entry
  %bf.clear2 = and i16 %bf.load, 8, !dbg !4751
  %tobool4 = icmp eq i16 %bf.clear2, 0, !dbg !4751
  br i1 %tobool4, label %cond.true, label %cond.end, !dbg !4751

cond.true:                                        ; preds = %lor.lhs.false
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 184, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !4751
  br label %cond.end, !dbg !4751

cond.end:                                         ; preds = %lor.lhs.false, %entry, %cond.true
  tail call void @ipa_initialize_node_params(%struct.cgraph_node* %node) #6, !dbg !4752
  tail call void @ipa_detect_param_modifications(%struct.cgraph_node* %node) #6, !dbg !4753
  ret void, !dbg !4754
}

declare dso_local void @ipa_count_arguments(%struct.cgraph_edge*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ipa_set_called_with_variable_arg(%struct.ipa_node_params* %info) unnamed_addr #0 !dbg !4755 {
entry:
  call void @llvm.dbg.value(metadata %struct.ipa_node_params* %info, metadata !4759, metadata !DIExpression()), !dbg !4760
  %called_with_var_arguments = getelementptr inbounds %struct.ipa_node_params, %struct.ipa_node_params* %info, i64 0, i32 5, !dbg !4761
  %bf.load = load i8, i8* %called_with_var_arguments, align 8, !dbg !4762
  %bf.set = or i8 %bf.load, 1, !dbg !4762
  store i8 %bf.set, i8* %called_with_var_arguments, align 8, !dbg !4762
  ret void, !dbg !4763
}

declare dso_local void @ipa_compute_jump_functions(%struct.cgraph_edge*) local_unnamed_addr #2

declare dso_local void @ipa_detect_param_modifications(%struct.cgraph_node*) local_unnamed_addr #2

declare dso_local void @ipa_prop_write_jump_functions(%struct.cgraph_node_set_def*) local_unnamed_addr #2

declare dso_local void @ipa_prop_read_jump_functions() local_unnamed_addr #2

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
!llvm.module.flags = !{!2069, !2070, !2071}
!llvm.ident = !{!2072}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_ipa_cp", scope: !2, file: !3, line: 1314, type: !1816, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !533, globals: !2062, nameTableKind: None)
!3 = !DIFile(filename: "ipa-cp.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !13, !189, !384, !390, !395, !400, !418, !425, !432, !455, !461, !500, !526}
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
!189 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !190, line: 39, baseType: !7, size: 32, elements: !191)
!190 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!191 = !{!192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383}
!192 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!193 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!194 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!195 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!196 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!197 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!198 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!199 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!200 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!201 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!202 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!203 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!204 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!205 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!206 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!207 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!208 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!209 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!210 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!211 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!212 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!213 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!214 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!215 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!216 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!217 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!218 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!219 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!220 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!221 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!222 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!223 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!224 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!225 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!226 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!227 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!228 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!229 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!230 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!231 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!232 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!233 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!234 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!235 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!236 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!237 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!238 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!239 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!240 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!241 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!242 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!243 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!244 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!245 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!246 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!247 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!248 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!249 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!250 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!251 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!252 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!253 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!254 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!255 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!256 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!257 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!258 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!259 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!260 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!261 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!262 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!263 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!264 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!265 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!266 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!267 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!268 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!269 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!270 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!271 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!272 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!273 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!274 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!275 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!276 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!277 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!278 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!279 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!280 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!281 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!282 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!283 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!284 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!285 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!286 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!287 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!288 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!289 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!290 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!291 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!292 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!293 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!294 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!295 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!296 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!297 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!298 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!299 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!300 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!301 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!302 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!303 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!304 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!305 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!306 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!307 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!308 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!309 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!310 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!311 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!312 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!313 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!314 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!315 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!316 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!317 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!318 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!319 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!320 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!321 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!322 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!323 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!324 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!325 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!326 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!327 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!328 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!329 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!330 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!331 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!332 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!333 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!334 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!335 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!336 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!337 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!338 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!339 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!340 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!341 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!342 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!343 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!344 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!345 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!346 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!347 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!348 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!349 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!350 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!351 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!352 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!353 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!354 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!355 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!356 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!357 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!358 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!359 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!360 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!361 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!362 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!363 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!364 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!365 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!366 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!367 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!368 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!369 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!370 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!371 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!372 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!373 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!374 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!375 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!376 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!377 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!378 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!379 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!380 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!381 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!382 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!383 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!384 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !385, line: 363, baseType: !7, size: 32, elements: !386)
!385 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!386 = !{!387, !388, !389}
!387 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!388 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!389 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!390 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !385, line: 355, baseType: !7, size: 32, elements: !391)
!391 = !{!392, !393, !394}
!392 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!393 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!394 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!395 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !396, line: 474, baseType: !7, size: 32, elements: !397)
!396 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!397 = !{!398, !399}
!398 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!399 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!400 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !190, line: 280, baseType: !7, size: 32, elements: !401)
!401 = !{!402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417}
!402 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!403 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!404 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!405 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!406 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!407 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!408 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!409 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!410 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!411 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!412 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!413 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!414 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!415 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!416 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!417 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!418 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !190, line: 1817, baseType: !7, size: 32, elements: !419)
!419 = !{!420, !421, !422, !423, !424}
!420 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!421 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!422 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!423 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!424 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!425 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !190, line: 1805, baseType: !7, size: 32, elements: !426)
!426 = !{!427, !428, !429, !430, !431}
!427 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!428 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!429 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!430 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!431 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!432 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !433, line: 309, baseType: !7, size: 32, elements: !434)
!433 = !DIFile(filename: "./cgraph.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!434 = !{!435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454}
!435 = !DIEnumerator(name: "CIF_OK", value: 0, isUnsigned: true)
!436 = !DIEnumerator(name: "CIF_UNSPECIFIED", value: 1, isUnsigned: true)
!437 = !DIEnumerator(name: "CIF_FUNCTION_NOT_CONSIDERED", value: 2, isUnsigned: true)
!438 = !DIEnumerator(name: "CIF_BODY_NOT_AVAILABLE", value: 3, isUnsigned: true)
!439 = !DIEnumerator(name: "CIF_REDEFINED_EXTERN_INLINE", value: 4, isUnsigned: true)
!440 = !DIEnumerator(name: "CIF_FUNCTION_NOT_INLINABLE", value: 5, isUnsigned: true)
!441 = !DIEnumerator(name: "CIF_FUNCTION_NOT_INLINE_CANDIDATE", value: 6, isUnsigned: true)
!442 = !DIEnumerator(name: "CIF_LARGE_FUNCTION_GROWTH_LIMIT", value: 7, isUnsigned: true)
!443 = !DIEnumerator(name: "CIF_LARGE_STACK_FRAME_GROWTH_LIMIT", value: 8, isUnsigned: true)
!444 = !DIEnumerator(name: "CIF_MAX_INLINE_INSNS_SINGLE_LIMIT", value: 9, isUnsigned: true)
!445 = !DIEnumerator(name: "CIF_MAX_INLINE_INSNS_AUTO_LIMIT", value: 10, isUnsigned: true)
!446 = !DIEnumerator(name: "CIF_INLINE_UNIT_GROWTH_LIMIT", value: 11, isUnsigned: true)
!447 = !DIEnumerator(name: "CIF_RECURSIVE_INLINING", value: 12, isUnsigned: true)
!448 = !DIEnumerator(name: "CIF_UNLIKELY_CALL", value: 13, isUnsigned: true)
!449 = !DIEnumerator(name: "CIF_NOT_DECLARED_INLINED", value: 14, isUnsigned: true)
!450 = !DIEnumerator(name: "CIF_OPTIMIZING_FOR_SIZE", value: 15, isUnsigned: true)
!451 = !DIEnumerator(name: "CIF_TARGET_OPTION_MISMATCH", value: 16, isUnsigned: true)
!452 = !DIEnumerator(name: "CIF_MISMATCHED_ARGUMENTS", value: 17, isUnsigned: true)
!453 = !DIEnumerator(name: "CIF_ORIGINALLY_INDIRECT_CALL", value: 18, isUnsigned: true)
!454 = !DIEnumerator(name: "CIF_N_REASONS", value: 19, isUnsigned: true)
!455 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ipa_lattice_type", file: !456, line: 66, baseType: !7, size: 32, elements: !457)
!456 = !DIFile(filename: "./ipa-prop.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!457 = !{!458, !459, !460}
!458 = !DIEnumerator(name: "IPA_BOTTOM", value: 0, isUnsigned: true)
!459 = !DIEnumerator(name: "IPA_CONST_VALUE", value: 1, isUnsigned: true)
!460 = !DIEnumerator(name: "IPA_TOP", value: 2, isUnsigned: true)
!461 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_code", file: !462, line: 51, baseType: !7, size: 32, elements: !463)
!462 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!463 = !{!464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499}
!464 = !DIEnumerator(name: "GIMPLE_ERROR_MARK", value: 0, isUnsigned: true)
!465 = !DIEnumerator(name: "GIMPLE_COND", value: 1, isUnsigned: true)
!466 = !DIEnumerator(name: "GIMPLE_DEBUG", value: 2, isUnsigned: true)
!467 = !DIEnumerator(name: "GIMPLE_GOTO", value: 3, isUnsigned: true)
!468 = !DIEnumerator(name: "GIMPLE_LABEL", value: 4, isUnsigned: true)
!469 = !DIEnumerator(name: "GIMPLE_SWITCH", value: 5, isUnsigned: true)
!470 = !DIEnumerator(name: "GIMPLE_ASSIGN", value: 6, isUnsigned: true)
!471 = !DIEnumerator(name: "GIMPLE_ASM", value: 7, isUnsigned: true)
!472 = !DIEnumerator(name: "GIMPLE_CALL", value: 8, isUnsigned: true)
!473 = !DIEnumerator(name: "GIMPLE_RETURN", value: 9, isUnsigned: true)
!474 = !DIEnumerator(name: "GIMPLE_BIND", value: 10, isUnsigned: true)
!475 = !DIEnumerator(name: "GIMPLE_CATCH", value: 11, isUnsigned: true)
!476 = !DIEnumerator(name: "GIMPLE_EH_FILTER", value: 12, isUnsigned: true)
!477 = !DIEnumerator(name: "GIMPLE_EH_MUST_NOT_THROW", value: 13, isUnsigned: true)
!478 = !DIEnumerator(name: "GIMPLE_RESX", value: 14, isUnsigned: true)
!479 = !DIEnumerator(name: "GIMPLE_EH_DISPATCH", value: 15, isUnsigned: true)
!480 = !DIEnumerator(name: "GIMPLE_PHI", value: 16, isUnsigned: true)
!481 = !DIEnumerator(name: "GIMPLE_TRY", value: 17, isUnsigned: true)
!482 = !DIEnumerator(name: "GIMPLE_NOP", value: 18, isUnsigned: true)
!483 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_LOAD", value: 19, isUnsigned: true)
!484 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_STORE", value: 20, isUnsigned: true)
!485 = !DIEnumerator(name: "GIMPLE_OMP_CONTINUE", value: 21, isUnsigned: true)
!486 = !DIEnumerator(name: "GIMPLE_OMP_CRITICAL", value: 22, isUnsigned: true)
!487 = !DIEnumerator(name: "GIMPLE_OMP_FOR", value: 23, isUnsigned: true)
!488 = !DIEnumerator(name: "GIMPLE_OMP_MASTER", value: 24, isUnsigned: true)
!489 = !DIEnumerator(name: "GIMPLE_OMP_ORDERED", value: 25, isUnsigned: true)
!490 = !DIEnumerator(name: "GIMPLE_OMP_PARALLEL", value: 26, isUnsigned: true)
!491 = !DIEnumerator(name: "GIMPLE_OMP_TASK", value: 27, isUnsigned: true)
!492 = !DIEnumerator(name: "GIMPLE_OMP_RETURN", value: 28, isUnsigned: true)
!493 = !DIEnumerator(name: "GIMPLE_OMP_SECTION", value: 29, isUnsigned: true)
!494 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS", value: 30, isUnsigned: true)
!495 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS_SWITCH", value: 31, isUnsigned: true)
!496 = !DIEnumerator(name: "GIMPLE_OMP_SINGLE", value: 32, isUnsigned: true)
!497 = !DIEnumerator(name: "GIMPLE_PREDICT", value: 33, isUnsigned: true)
!498 = !DIEnumerator(name: "GIMPLE_WITH_CLEANUP_EXPR", value: 34, isUnsigned: true)
!499 = !DIEnumerator(name: "LAST_AND_UNUSED_GIMPLE_CODE", value: 35, isUnsigned: true)
!500 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_statement_structure_enum", file: !462, line: 727, baseType: !7, size: 32, elements: !501)
!501 = !{!502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525}
!502 = !DIEnumerator(name: "GSS_BASE", value: 0, isUnsigned: true)
!503 = !DIEnumerator(name: "GSS_WITH_OPS", value: 1, isUnsigned: true)
!504 = !DIEnumerator(name: "GSS_WITH_MEM_OPS_BASE", value: 2, isUnsigned: true)
!505 = !DIEnumerator(name: "GSS_WITH_MEM_OPS", value: 3, isUnsigned: true)
!506 = !DIEnumerator(name: "GSS_ASM", value: 4, isUnsigned: true)
!507 = !DIEnumerator(name: "GSS_BIND", value: 5, isUnsigned: true)
!508 = !DIEnumerator(name: "GSS_PHI", value: 6, isUnsigned: true)
!509 = !DIEnumerator(name: "GSS_TRY", value: 7, isUnsigned: true)
!510 = !DIEnumerator(name: "GSS_CATCH", value: 8, isUnsigned: true)
!511 = !DIEnumerator(name: "GSS_EH_FILTER", value: 9, isUnsigned: true)
!512 = !DIEnumerator(name: "GSS_EH_MNT", value: 10, isUnsigned: true)
!513 = !DIEnumerator(name: "GSS_EH_CTRL", value: 11, isUnsigned: true)
!514 = !DIEnumerator(name: "GSS_WCE", value: 12, isUnsigned: true)
!515 = !DIEnumerator(name: "GSS_OMP", value: 13, isUnsigned: true)
!516 = !DIEnumerator(name: "GSS_OMP_CRITICAL", value: 14, isUnsigned: true)
!517 = !DIEnumerator(name: "GSS_OMP_FOR", value: 15, isUnsigned: true)
!518 = !DIEnumerator(name: "GSS_OMP_PARALLEL", value: 16, isUnsigned: true)
!519 = !DIEnumerator(name: "GSS_OMP_TASK", value: 17, isUnsigned: true)
!520 = !DIEnumerator(name: "GSS_OMP_SECTIONS", value: 18, isUnsigned: true)
!521 = !DIEnumerator(name: "GSS_OMP_SINGLE", value: 19, isUnsigned: true)
!522 = !DIEnumerator(name: "GSS_OMP_CONTINUE", value: 20, isUnsigned: true)
!523 = !DIEnumerator(name: "GSS_OMP_ATOMIC_LOAD", value: 21, isUnsigned: true)
!524 = !DIEnumerator(name: "GSS_OMP_ATOMIC_STORE", value: 22, isUnsigned: true)
!525 = !DIEnumerator(name: "LAST_GSS_ENUM", value: 23, isUnsigned: true)
!526 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "jump_func_type", file: !456, line: 48, baseType: !7, size: 32, elements: !527)
!527 = !{!528, !529, !530, !531, !532}
!528 = !DIEnumerator(name: "IPA_JF_UNKNOWN", value: 0, isUnsigned: true)
!529 = !DIEnumerator(name: "IPA_JF_CONST", value: 1, isUnsigned: true)
!530 = !DIEnumerator(name: "IPA_JF_CONST_MEMBER_PTR", value: 2, isUnsigned: true)
!531 = !DIEnumerator(name: "IPA_JF_PASS_THROUGH", value: 3, isUnsigned: true)
!532 = !DIEnumerator(name: "IPA_JF_ANCESTOR", value: 4, isUnsigned: true)
!533 = !{!534, !535, !536, !537, !540, !541, !543, !189, !839, !1717, !873, !538, !599, !7, !1719, !1993, !654, !1760, !2035, !1205, !1943, !1956, !2049}
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!536 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !539)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !544, line: 56, baseType: !545)
!544 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !190, line: 3371, size: 1792, elements: !547)
!547 = !{!548, !581, !587, !600, !607, !614, !619, !628, !634, !647, !659, !697, !705, !733, !750, !751, !756, !765, !771, !776, !780, !784, !1366, !1415, !1421, !1427, !1434, !1447, !1461, !1478, !1490, !1512, !1527, !1699}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !546, file: !190, line: 3372, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !190, line: 360, size: 64, elements: !550)
!550 = !{!551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !549, file: !190, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !549, file: !190, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !549, file: !190, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !549, file: !190, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !549, file: !190, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !549, file: !190, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !549, file: !190, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !549, file: !190, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !549, file: !190, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !549, file: !190, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !549, file: !190, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !549, file: !190, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !549, file: !190, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !549, file: !190, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !549, file: !190, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !549, file: !190, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !549, file: !190, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !549, file: !190, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !549, file: !190, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !549, file: !190, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !549, file: !190, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !549, file: !190, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !549, file: !190, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !549, file: !190, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !549, file: !190, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !549, file: !190, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !549, file: !190, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !549, file: !190, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !549, file: !190, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !549, file: !190, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !546, file: !190, line: 3373, baseType: !582, size: 192)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !190, line: 402, size: 192, elements: !583)
!583 = !{!584, !585, !586}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !582, file: !190, line: 403, baseType: !549, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !582, file: !190, line: 404, baseType: !543, size: 64, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !582, file: !190, line: 405, baseType: !543, size: 64, offset: 128)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !546, file: !190, line: 3374, baseType: !588, size: 320)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !190, line: 1384, size: 320, elements: !589)
!589 = !{!590, !591}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !588, file: !190, line: 1385, baseType: !582, size: 192)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !588, file: !190, line: 1386, baseType: !592, size: 128, offset: 192)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !593, line: 58, baseType: !594)
!593 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !593, line: 54, size: 128, elements: !595)
!595 = !{!596, !598}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !594, file: !593, line: 56, baseType: !597, size: 64)
!597 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !594, file: !593, line: 57, baseType: !599, size: 64, offset: 64)
!599 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !546, file: !190, line: 3375, baseType: !601, size: 256)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !190, line: 1397, size: 256, elements: !602)
!602 = !{!603, !604}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !601, file: !190, line: 1398, baseType: !582, size: 192)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !601, file: !190, line: 1399, baseType: !605, size: 64, offset: 192)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !190, line: 1392, flags: DIFlagFwdDecl)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !546, file: !190, line: 3376, baseType: !608, size: 256)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !190, line: 1408, size: 256, elements: !609)
!609 = !{!610, !611}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !608, file: !190, line: 1409, baseType: !582, size: 192)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !608, file: !190, line: 1410, baseType: !612, size: 64, offset: 192)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !190, line: 1403, flags: DIFlagFwdDecl)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !546, file: !190, line: 3377, baseType: !615, size: 256)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !190, line: 1437, size: 256, elements: !616)
!616 = !{!617, !618}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !615, file: !190, line: 1438, baseType: !582, size: 192)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !615, file: !190, line: 1439, baseType: !543, size: 64, offset: 192)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !546, file: !190, line: 3378, baseType: !620, size: 256)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !190, line: 1418, size: 256, elements: !621)
!621 = !{!622, !623, !624}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !620, file: !190, line: 1419, baseType: !582, size: 192)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !620, file: !190, line: 1420, baseType: !536, size: 32, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !620, file: !190, line: 1421, baseType: !625, size: 8, offset: 224)
!625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !539, size: 8, elements: !626)
!626 = !{!627}
!627 = !DISubrange(count: 1)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !546, file: !190, line: 3379, baseType: !629, size: 320)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !190, line: 1428, size: 320, elements: !630)
!630 = !{!631, !632, !633}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !629, file: !190, line: 1429, baseType: !582, size: 192)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !629, file: !190, line: 1430, baseType: !543, size: 64, offset: 192)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !629, file: !190, line: 1431, baseType: !543, size: 64, offset: 256)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !546, file: !190, line: 3380, baseType: !635, size: 320)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !190, line: 1460, size: 320, elements: !636)
!636 = !{!637, !638}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !635, file: !190, line: 1461, baseType: !582, size: 192)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !635, file: !190, line: 1462, baseType: !639, size: 128, offset: 192)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !640, line: 31, size: 128, elements: !641)
!640 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!641 = !{!642, !645, !646}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !639, file: !640, line: 32, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !535)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !639, file: !640, line: 33, baseType: !7, size: 32, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !639, file: !640, line: 34, baseType: !7, size: 32, offset: 96)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !546, file: !190, line: 3381, baseType: !648, size: 384)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !190, line: 2507, size: 384, elements: !649)
!649 = !{!650, !651, !656, !657, !658}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !648, file: !190, line: 2508, baseType: !582, size: 192)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !648, file: !190, line: 2509, baseType: !652, size: 32, offset: 192)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !653, line: 58, baseType: !654)
!653 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !655, line: 44, baseType: !7)
!655 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!656 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !648, file: !190, line: 2510, baseType: !7, size: 32, offset: 224)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !648, file: !190, line: 2511, baseType: !543, size: 64, offset: 256)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !648, file: !190, line: 2512, baseType: !543, size: 64, offset: 320)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !546, file: !190, line: 3382, baseType: !660, size: 896)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !190, line: 2652, size: 896, elements: !661)
!661 = !{!662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !660, file: !190, line: 2653, baseType: !648, size: 384)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !660, file: !190, line: 2654, baseType: !543, size: 64, offset: 384)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !660, file: !190, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !660, file: !190, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !660, file: !190, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !660, file: !190, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !660, file: !190, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !660, file: !190, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !660, file: !190, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !660, file: !190, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !660, file: !190, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !660, file: !190, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !660, file: !190, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !660, file: !190, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !660, file: !190, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !660, file: !190, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !660, file: !190, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !660, file: !190, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !660, file: !190, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !660, file: !190, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !660, file: !190, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !660, file: !190, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !660, file: !190, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !660, file: !190, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !660, file: !190, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !660, file: !190, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !660, file: !190, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !660, file: !190, line: 2703, baseType: !7, size: 32, offset: 512)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !660, file: !190, line: 2705, baseType: !543, size: 64, offset: 576)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !660, file: !190, line: 2706, baseType: !543, size: 64, offset: 640)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !660, file: !190, line: 2707, baseType: !543, size: 64, offset: 704)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !660, file: !190, line: 2708, baseType: !543, size: 64, offset: 768)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !660, file: !190, line: 2711, baseType: !695, size: 64, offset: 832)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !190, line: 2711, flags: DIFlagFwdDecl)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !546, file: !190, line: 3383, baseType: !698, size: 960)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !190, line: 2756, size: 960, elements: !699)
!699 = !{!700, !701}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !698, file: !190, line: 2757, baseType: !660, size: 896)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !698, file: !190, line: 2758, baseType: !702, size: 64, offset: 896)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !544, line: 50, baseType: !703)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !544, line: 49, flags: DIFlagFwdDecl)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !546, file: !190, line: 3384, baseType: !706, size: 1472)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !190, line: 3114, size: 1472, elements: !707)
!707 = !{!708, !729, !730, !731, !732}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !706, file: !190, line: 3115, baseType: !709, size: 1216)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !190, line: 2984, size: 1216, elements: !710)
!710 = !{!711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !709, file: !190, line: 2985, baseType: !698, size: 960)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !709, file: !190, line: 2986, baseType: !543, size: 64, offset: 960)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !709, file: !190, line: 2987, baseType: !543, size: 64, offset: 1024)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !709, file: !190, line: 2988, baseType: !543, size: 64, offset: 1088)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !709, file: !190, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !709, file: !190, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !709, file: !190, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !709, file: !190, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !709, file: !190, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !709, file: !190, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !709, file: !190, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !709, file: !190, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !709, file: !190, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !709, file: !190, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !709, file: !190, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !709, file: !190, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !709, file: !190, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !709, file: !190, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !706, file: !190, line: 3117, baseType: !543, size: 64, offset: 1216)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !706, file: !190, line: 3119, baseType: !543, size: 64, offset: 1280)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !706, file: !190, line: 3121, baseType: !543, size: 64, offset: 1344)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !706, file: !190, line: 3123, baseType: !543, size: 64, offset: 1408)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !546, file: !190, line: 3385, baseType: !734, size: 1088)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !190, line: 2874, size: 1088, elements: !735)
!735 = !{!736, !737, !738}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !734, file: !190, line: 2875, baseType: !698, size: 960)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !734, file: !190, line: 2876, baseType: !702, size: 64, offset: 960)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !734, file: !190, line: 2877, baseType: !739, size: 64, offset: 1024)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !741, line: 172, size: 128, elements: !742)
!741 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!742 = !{!743, !744, !745, !746, !747, !748, !749}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !740, file: !741, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !740, file: !741, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !740, file: !741, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !740, file: !741, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !740, file: !741, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !740, file: !741, line: 195, baseType: !7, size: 32, offset: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !740, file: !741, line: 199, baseType: !543, size: 64, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !546, file: !190, line: 3386, baseType: !709, size: 1216)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !546, file: !190, line: 3387, baseType: !752, size: 1280)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !190, line: 3093, size: 1280, elements: !753)
!753 = !{!754, !755}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !752, file: !190, line: 3094, baseType: !709, size: 1216)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !752, file: !190, line: 3095, baseType: !739, size: 64, offset: 1216)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !546, file: !190, line: 3388, baseType: !757, size: 1216)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !190, line: 2824, size: 1216, elements: !758)
!758 = !{!759, !760, !761, !762, !763, !764}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !757, file: !190, line: 2825, baseType: !660, size: 896)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !757, file: !190, line: 2827, baseType: !543, size: 64, offset: 896)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !757, file: !190, line: 2828, baseType: !543, size: 64, offset: 960)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !757, file: !190, line: 2829, baseType: !543, size: 64, offset: 1024)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !757, file: !190, line: 2830, baseType: !543, size: 64, offset: 1088)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !757, file: !190, line: 2831, baseType: !543, size: 64, offset: 1152)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !546, file: !190, line: 3389, baseType: !766, size: 1024)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !190, line: 2850, size: 1024, elements: !767)
!767 = !{!768, !769, !770}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !766, file: !190, line: 2851, baseType: !698, size: 960)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !766, file: !190, line: 2852, baseType: !536, size: 32, offset: 960)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !766, file: !190, line: 2853, baseType: !536, size: 32, offset: 992)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !546, file: !190, line: 3390, baseType: !772, size: 1024)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !190, line: 2857, size: 1024, elements: !773)
!773 = !{!774, !775}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !772, file: !190, line: 2858, baseType: !698, size: 960)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !772, file: !190, line: 2859, baseType: !739, size: 64, offset: 960)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !546, file: !190, line: 3391, baseType: !777, size: 960)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !190, line: 2862, size: 960, elements: !778)
!778 = !{!779}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !777, file: !190, line: 2863, baseType: !698, size: 960)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !546, file: !190, line: 3392, baseType: !781, size: 1472)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !190, line: 3304, size: 1472, elements: !782)
!782 = !{!783}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !781, file: !190, line: 3305, baseType: !706, size: 1472)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !546, file: !190, line: 3393, baseType: !785, size: 1792)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !190, line: 3248, size: 1792, elements: !786)
!786 = !{!787, !788, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !785, file: !190, line: 3249, baseType: !706, size: 1472)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !785, file: !190, line: 3251, baseType: !789, size: 64, offset: 1472)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !791, line: 463, size: 1152, elements: !792)
!791 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!792 = !{!793, !796, !1113, !1114, !1286, !1289, !1290, !1291, !1292, !1293, !1294, !1318, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !790, file: !791, line: 464, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !791, line: 464, flags: DIFlagFwdDecl)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !790, file: !791, line: 467, baseType: !797, size: 64, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !385, line: 374, size: 640, elements: !799)
!799 = !{!800, !1088, !1089, !1102, !1103, !1104, !1105, !1106, !1107, !1109, !1111, !1112}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !798, file: !385, line: 377, baseType: !801, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !544, line: 111, baseType: !802)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !385, line: 217, size: 832, elements: !804)
!804 = !{!805, !1051, !1052, !1053, !1056, !1062, !1063, !1064, !1082, !1083, !1084, !1085, !1086, !1087}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !803, file: !385, line: 219, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !385, line: 151, baseType: !808)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !385, line: 151, size: 128, elements: !809)
!809 = !{!810}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !808, file: !385, line: 151, baseType: !811, size: 128)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !385, line: 150, baseType: !812)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !385, line: 150, size: 128, elements: !813)
!813 = !{!814, !815, !816}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !812, file: !385, line: 150, baseType: !7, size: 32)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !812, file: !385, line: 150, baseType: !7, size: 32, offset: 32)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !812, file: !385, line: 150, baseType: !817, size: 64, offset: 64)
!817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !818, size: 64, elements: !626)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !544, line: 108, baseType: !819)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !385, line: 122, size: 512, elements: !821)
!821 = !{!822, !823, !824, !1043, !1044, !1045, !1046, !1047, !1048, !1049}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !820, file: !385, line: 124, baseType: !802, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !820, file: !385, line: 125, baseType: !802, size: 64, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !820, file: !385, line: 131, baseType: !825, size: 64, offset: 128)
!825 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !385, line: 128, size: 64, elements: !826)
!826 = !{!827, !1042}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !825, file: !385, line: 129, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !544, line: 66, baseType: !829)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !462, line: 143, size: 192, elements: !831)
!831 = !{!832, !1040, !1041}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !830, file: !462, line: 145, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !544, line: 69, baseType: !834)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !462, line: 136, size: 192, elements: !836)
!836 = !{!837, !1038, !1039}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !835, file: !462, line: 137, baseType: !838, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !544, line: 58, baseType: !839)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !462, line: 737, size: 768, elements: !841)
!841 = !{!842, !859, !893, !899, !904, !909, !916, !922, !928, !933, !947, !952, !958, !963, !973, !978, !996, !1003, !1010, !1016, !1021, !1027, !1033}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !840, file: !462, line: 738, baseType: !843, size: 256)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !462, line: 271, size: 256, elements: !844)
!844 = !{!845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !843, file: !462, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !843, file: !462, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !843, file: !462, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !843, file: !462, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !843, file: !462, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !843, file: !462, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !843, file: !462, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !843, file: !462, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !843, file: !462, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !843, file: !462, line: 312, baseType: !7, size: 32, offset: 32)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !843, file: !462, line: 316, baseType: !652, size: 32, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !843, file: !462, line: 319, baseType: !7, size: 32, offset: 96)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !843, file: !462, line: 323, baseType: !802, size: 64, offset: 128)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !843, file: !462, line: 327, baseType: !543, size: 64, offset: 192)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !840, file: !462, line: 739, baseType: !860, size: 448)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !462, line: 350, size: 448, elements: !861)
!861 = !{!862, !891}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !860, file: !462, line: 353, baseType: !863, size: 384)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !462, line: 333, size: 384, elements: !864)
!864 = !{!865, !866, !874}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !863, file: !462, line: 336, baseType: !843, size: 256)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !863, file: !462, line: 343, baseType: !867, size: 64, offset: 256)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !869, line: 37, size: 128, elements: !870)
!869 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!870 = !{!871, !872}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !868, file: !869, line: 39, baseType: !867, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !868, file: !869, line: 40, baseType: !873, size: 64, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !863, file: !462, line: 344, baseType: !875, size: 64, offset: 320)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !869, line: 45, size: 320, elements: !877)
!877 = !{!878, !879}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !876, file: !869, line: 47, baseType: !875, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !876, file: !869, line: 48, baseType: !880, size: 256, offset: 64)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !190, line: 1883, size: 256, elements: !881)
!881 = !{!882, !884, !885, !890}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !880, file: !190, line: 1884, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !880, file: !190, line: 1885, baseType: !883, size: 64, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !880, file: !190, line: 1891, baseType: !886, size: 64, offset: 128)
!886 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !880, file: !190, line: 1891, size: 64, elements: !887)
!887 = !{!888, !889}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !886, file: !190, line: 1891, baseType: !838, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !886, file: !190, line: 1891, baseType: !543, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !880, file: !190, line: 1892, baseType: !873, size: 64, offset: 192)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !860, file: !462, line: 359, baseType: !892, size: 64, offset: 384)
!892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !543, size: 64, elements: !626)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !840, file: !462, line: 740, baseType: !894, size: 512)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !462, line: 365, size: 512, elements: !895)
!895 = !{!896, !897, !898}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !894, file: !462, line: 368, baseType: !863, size: 384)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !894, file: !462, line: 373, baseType: !543, size: 64, offset: 384)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !894, file: !462, line: 374, baseType: !543, size: 64, offset: 448)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !840, file: !462, line: 741, baseType: !900, size: 576)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !462, line: 380, size: 576, elements: !901)
!901 = !{!902, !903}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !900, file: !462, line: 383, baseType: !894, size: 512)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !900, file: !462, line: 389, baseType: !892, size: 64, offset: 512)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !840, file: !462, line: 742, baseType: !905, size: 320)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !462, line: 395, size: 320, elements: !906)
!906 = !{!907, !908}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !905, file: !462, line: 397, baseType: !843, size: 256)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !905, file: !462, line: 400, baseType: !828, size: 64, offset: 256)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !840, file: !462, line: 743, baseType: !910, size: 448)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !462, line: 406, size: 448, elements: !911)
!911 = !{!912, !913, !914, !915}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !910, file: !462, line: 408, baseType: !843, size: 256)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !910, file: !462, line: 412, baseType: !543, size: 64, offset: 256)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !910, file: !462, line: 420, baseType: !543, size: 64, offset: 320)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !910, file: !462, line: 423, baseType: !828, size: 64, offset: 384)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !840, file: !462, line: 744, baseType: !917, size: 384)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !462, line: 429, size: 384, elements: !918)
!918 = !{!919, !920, !921}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !917, file: !462, line: 431, baseType: !843, size: 256)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !917, file: !462, line: 434, baseType: !543, size: 64, offset: 256)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !917, file: !462, line: 437, baseType: !828, size: 64, offset: 320)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !840, file: !462, line: 745, baseType: !923, size: 384)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !462, line: 443, size: 384, elements: !924)
!924 = !{!925, !926, !927}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !923, file: !462, line: 445, baseType: !843, size: 256)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !923, file: !462, line: 449, baseType: !543, size: 64, offset: 256)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !923, file: !462, line: 453, baseType: !828, size: 64, offset: 320)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !840, file: !462, line: 746, baseType: !929, size: 320)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !462, line: 459, size: 320, elements: !930)
!930 = !{!931, !932}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !929, file: !462, line: 461, baseType: !843, size: 256)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !929, file: !462, line: 464, baseType: !543, size: 64, offset: 256)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !840, file: !462, line: 747, baseType: !934, size: 768)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !462, line: 469, size: 768, elements: !935)
!935 = !{!936, !937, !938, !939, !940}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !934, file: !462, line: 471, baseType: !843, size: 256)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !934, file: !462, line: 474, baseType: !7, size: 32, offset: 256)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !934, file: !462, line: 475, baseType: !7, size: 32, offset: 288)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !934, file: !462, line: 478, baseType: !543, size: 64, offset: 320)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !934, file: !462, line: 481, baseType: !941, size: 384, offset: 384)
!941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !942, size: 384, elements: !626)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !190, line: 1917, size: 384, elements: !943)
!943 = !{!944, !945, !946}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !942, file: !190, line: 1920, baseType: !880, size: 256)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !942, file: !190, line: 1921, baseType: !543, size: 64, offset: 256)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !942, file: !190, line: 1922, baseType: !652, size: 32, offset: 320)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !840, file: !462, line: 748, baseType: !948, size: 320)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !462, line: 487, size: 320, elements: !949)
!949 = !{!950, !951}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !948, file: !462, line: 490, baseType: !843, size: 256)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !948, file: !462, line: 494, baseType: !536, size: 32, offset: 256)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !840, file: !462, line: 749, baseType: !953, size: 384)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !462, line: 500, size: 384, elements: !954)
!954 = !{!955, !956, !957}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !953, file: !462, line: 502, baseType: !843, size: 256)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !953, file: !462, line: 506, baseType: !828, size: 64, offset: 256)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !953, file: !462, line: 510, baseType: !828, size: 64, offset: 320)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !840, file: !462, line: 750, baseType: !959, size: 320)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !462, line: 529, size: 320, elements: !960)
!960 = !{!961, !962}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !959, file: !462, line: 531, baseType: !843, size: 256)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !959, file: !462, line: 540, baseType: !828, size: 64, offset: 256)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !840, file: !462, line: 751, baseType: !964, size: 704)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !462, line: 546, size: 704, elements: !965)
!965 = !{!966, !967, !968, !969, !970, !971, !972}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !964, file: !462, line: 549, baseType: !894, size: 512)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !964, file: !462, line: 553, baseType: !541, size: 64, offset: 512)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !964, file: !462, line: 557, baseType: !535, size: 8, offset: 576)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !964, file: !462, line: 558, baseType: !535, size: 8, offset: 584)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !964, file: !462, line: 559, baseType: !535, size: 8, offset: 592)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !964, file: !462, line: 560, baseType: !535, size: 8, offset: 600)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !964, file: !462, line: 566, baseType: !892, size: 64, offset: 640)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !840, file: !462, line: 752, baseType: !974, size: 384)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !462, line: 571, size: 384, elements: !975)
!975 = !{!976, !977}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !974, file: !462, line: 573, baseType: !905, size: 320)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !974, file: !462, line: 577, baseType: !543, size: 64, offset: 320)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !840, file: !462, line: 753, baseType: !979, size: 576)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !462, line: 600, size: 576, elements: !980)
!980 = !{!981, !982, !983, !986, !995}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !979, file: !462, line: 602, baseType: !905, size: 320)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !979, file: !462, line: 605, baseType: !543, size: 64, offset: 320)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !979, file: !462, line: 609, baseType: !984, size: 64, offset: 384)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !985, line: 46, baseType: !597)
!985 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!986 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !979, file: !462, line: 612, baseType: !987, size: 64, offset: 448)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !462, line: 581, size: 320, elements: !989)
!989 = !{!990, !991, !992, !993, !994}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !988, file: !462, line: 583, baseType: !189, size: 32)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !988, file: !462, line: 586, baseType: !543, size: 64, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !988, file: !462, line: 589, baseType: !543, size: 64, offset: 128)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !988, file: !462, line: 592, baseType: !543, size: 64, offset: 192)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !988, file: !462, line: 595, baseType: !543, size: 64, offset: 256)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !979, file: !462, line: 616, baseType: !828, size: 64, offset: 512)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !840, file: !462, line: 754, baseType: !997, size: 512)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !462, line: 622, size: 512, elements: !998)
!998 = !{!999, !1000, !1001, !1002}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !997, file: !462, line: 624, baseType: !905, size: 320)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !997, file: !462, line: 628, baseType: !543, size: 64, offset: 320)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !997, file: !462, line: 632, baseType: !543, size: 64, offset: 384)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !997, file: !462, line: 636, baseType: !543, size: 64, offset: 448)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !840, file: !462, line: 755, baseType: !1004, size: 704)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !462, line: 642, size: 704, elements: !1005)
!1005 = !{!1006, !1007, !1008, !1009}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1004, file: !462, line: 644, baseType: !997, size: 512)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1004, file: !462, line: 648, baseType: !543, size: 64, offset: 512)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1004, file: !462, line: 652, baseType: !543, size: 64, offset: 576)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1004, file: !462, line: 653, baseType: !543, size: 64, offset: 640)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !840, file: !462, line: 756, baseType: !1011, size: 448)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !462, line: 663, size: 448, elements: !1012)
!1012 = !{!1013, !1014, !1015}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1011, file: !462, line: 665, baseType: !905, size: 320)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1011, file: !462, line: 668, baseType: !543, size: 64, offset: 320)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1011, file: !462, line: 673, baseType: !543, size: 64, offset: 384)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !840, file: !462, line: 757, baseType: !1017, size: 384)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !462, line: 694, size: 384, elements: !1018)
!1018 = !{!1019, !1020}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1017, file: !462, line: 696, baseType: !905, size: 320)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1017, file: !462, line: 699, baseType: !543, size: 64, offset: 320)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !840, file: !462, line: 758, baseType: !1022, size: 384)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !462, line: 681, size: 384, elements: !1023)
!1023 = !{!1024, !1025, !1026}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1022, file: !462, line: 683, baseType: !843, size: 256)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1022, file: !462, line: 686, baseType: !543, size: 64, offset: 256)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1022, file: !462, line: 689, baseType: !543, size: 64, offset: 320)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !840, file: !462, line: 759, baseType: !1028, size: 384)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !462, line: 707, size: 384, elements: !1029)
!1029 = !{!1030, !1031, !1032}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1028, file: !462, line: 709, baseType: !843, size: 256)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1028, file: !462, line: 712, baseType: !543, size: 64, offset: 256)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1028, file: !462, line: 712, baseType: !543, size: 64, offset: 320)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !840, file: !462, line: 760, baseType: !1034, size: 320)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !462, line: 718, size: 320, elements: !1035)
!1035 = !{!1036, !1037}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1034, file: !462, line: 720, baseType: !843, size: 256)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1034, file: !462, line: 723, baseType: !543, size: 64, offset: 256)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !835, file: !462, line: 138, baseType: !834, size: 64, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !835, file: !462, line: 139, baseType: !834, size: 64, offset: 128)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !830, file: !462, line: 146, baseType: !833, size: 64, offset: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !830, file: !462, line: 152, baseType: !828, size: 64, offset: 128)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !825, file: !385, line: 130, baseType: !702, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !820, file: !385, line: 134, baseType: !540, size: 64, offset: 192)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !820, file: !385, line: 137, baseType: !543, size: 64, offset: 256)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !820, file: !385, line: 138, baseType: !652, size: 32, offset: 320)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !820, file: !385, line: 142, baseType: !7, size: 32, offset: 352)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !820, file: !385, line: 144, baseType: !536, size: 32, offset: 384)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !820, file: !385, line: 145, baseType: !536, size: 32, offset: 416)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !820, file: !385, line: 146, baseType: !1050, size: 64, offset: 448)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !385, line: 119, baseType: !599)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !803, file: !385, line: 220, baseType: !806, size: 64, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !803, file: !385, line: 223, baseType: !540, size: 64, offset: 128)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !803, file: !385, line: 226, baseType: !1054, size: 64, offset: 192)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !385, line: 185, flags: DIFlagFwdDecl)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !803, file: !385, line: 229, baseType: !1057, size: 128, offset: 256)
!1057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1058, size: 128, elements: !1060)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !385, line: 229, flags: DIFlagFwdDecl)
!1060 = !{!1061}
!1061 = !DISubrange(count: 2)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !803, file: !385, line: 232, baseType: !802, size: 64, offset: 384)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !803, file: !385, line: 233, baseType: !802, size: 64, offset: 448)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !803, file: !385, line: 238, baseType: !1065, size: 64, offset: 512)
!1065 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !385, line: 235, size: 64, elements: !1066)
!1066 = !{!1067, !1073}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1065, file: !385, line: 236, baseType: !1068, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !385, line: 273, size: 128, elements: !1070)
!1070 = !{!1071, !1072}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1069, file: !385, line: 275, baseType: !828, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1069, file: !385, line: 278, baseType: !828, size: 64, offset: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1065, file: !385, line: 237, baseType: !1074, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !385, line: 259, size: 320, elements: !1076)
!1076 = !{!1077, !1078, !1079, !1080, !1081}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1075, file: !385, line: 261, baseType: !702, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1075, file: !385, line: 262, baseType: !702, size: 64, offset: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1075, file: !385, line: 266, baseType: !702, size: 64, offset: 128)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1075, file: !385, line: 267, baseType: !702, size: 64, offset: 192)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1075, file: !385, line: 270, baseType: !536, size: 32, offset: 256)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !803, file: !385, line: 241, baseType: !1050, size: 64, offset: 576)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !803, file: !385, line: 244, baseType: !536, size: 32, offset: 640)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !803, file: !385, line: 247, baseType: !536, size: 32, offset: 672)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !803, file: !385, line: 250, baseType: !536, size: 32, offset: 704)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !803, file: !385, line: 253, baseType: !536, size: 32, offset: 736)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !803, file: !385, line: 256, baseType: !536, size: 32, offset: 768)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !798, file: !385, line: 378, baseType: !801, size: 64, offset: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !798, file: !385, line: 381, baseType: !1090, size: 64, offset: 128)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !385, line: 282, baseType: !1092)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !385, line: 282, size: 128, elements: !1093)
!1093 = !{!1094}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1092, file: !385, line: 282, baseType: !1095, size: 128)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !385, line: 281, baseType: !1096)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !385, line: 281, size: 128, elements: !1097)
!1097 = !{!1098, !1099, !1100}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1096, file: !385, line: 281, baseType: !7, size: 32)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1096, file: !385, line: 281, baseType: !7, size: 32, offset: 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1096, file: !385, line: 281, baseType: !1101, size: 64, offset: 64)
!1101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !801, size: 64, elements: !626)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !798, file: !385, line: 384, baseType: !536, size: 32, offset: 192)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !798, file: !385, line: 387, baseType: !536, size: 32, offset: 224)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !798, file: !385, line: 390, baseType: !536, size: 32, offset: 256)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !798, file: !385, line: 394, baseType: !1090, size: 64, offset: 320)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !798, file: !385, line: 396, baseType: !384, size: 32, offset: 384)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !798, file: !385, line: 399, baseType: !1108, size: 64, offset: 416)
!1108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 64, elements: !1060)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !798, file: !385, line: 402, baseType: !1110, size: 64, offset: 480)
!1110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !1060)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !798, file: !385, line: 406, baseType: !536, size: 32, offset: 544)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !798, file: !385, line: 409, baseType: !536, size: 32, offset: 576)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !790, file: !791, line: 470, baseType: !829, size: 64, offset: 128)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !790, file: !791, line: 473, baseType: !1115, size: 64, offset: 192)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !741, line: 39, size: 1152, elements: !1117)
!1117 = !{!1118, !1168, !1181, !1193, !1194, !1263, !1264, !1268, !1269, !1270, !1271, !1272}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1116, file: !741, line: 41, baseType: !1119, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1120, line: 144, baseType: !1121)
!1120 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1120, line: 100, size: 896, elements: !1123)
!1123 = !{!1124, !1132, !1137, !1142, !1144, !1145, !1146, !1147, !1148, !1149, !1154, !1156, !1157, !1162, !1167}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1122, file: !1120, line: 102, baseType: !1125, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1120, line: 52, baseType: !1126)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!1129, !1130}
!1129 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1120, line: 47, baseType: !7)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1122, file: !1120, line: 105, baseType: !1133, size: 64, offset: 64)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1120, line: 59, baseType: !1134)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!536, !1130, !1130}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1122, file: !1120, line: 108, baseType: !1138, size: 64, offset: 128)
!1138 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1120, line: 63, baseType: !1139)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{null, !540}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1122, file: !1120, line: 111, baseType: !1143, size: 64, offset: 192)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1122, file: !1120, line: 114, baseType: !984, size: 64, offset: 256)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1122, file: !1120, line: 117, baseType: !984, size: 64, offset: 320)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1122, file: !1120, line: 120, baseType: !984, size: 64, offset: 384)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1122, file: !1120, line: 124, baseType: !7, size: 32, offset: 448)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1122, file: !1120, line: 128, baseType: !7, size: 32, offset: 480)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1122, file: !1120, line: 131, baseType: !1150, size: 64, offset: 512)
!1150 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1120, line: 75, baseType: !1151)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!540, !984, !984}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1122, file: !1120, line: 132, baseType: !1155, size: 64, offset: 576)
!1155 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1120, line: 78, baseType: !1139)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1122, file: !1120, line: 135, baseType: !540, size: 64, offset: 640)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1122, file: !1120, line: 136, baseType: !1158, size: 64, offset: 704)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1120, line: 82, baseType: !1159)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!540, !540, !984, !984}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1122, file: !1120, line: 137, baseType: !1163, size: 64, offset: 768)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1120, line: 83, baseType: !1164)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{null, !540, !540}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1122, file: !1120, line: 141, baseType: !7, size: 32, offset: 832)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1116, file: !741, line: 48, baseType: !1169, size: 64, offset: 64)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !462, line: 35, baseType: !1171)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !462, line: 35, size: 128, elements: !1172)
!1172 = !{!1173}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1171, file: !462, line: 35, baseType: !1174, size: 128)
!1174 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !462, line: 33, baseType: !1175)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !462, line: 33, size: 128, elements: !1176)
!1176 = !{!1177, !1178, !1179}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1175, file: !462, line: 33, baseType: !7, size: 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1175, file: !462, line: 33, baseType: !7, size: 32, offset: 32)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1175, file: !462, line: 33, baseType: !1180, size: 64, offset: 64)
!1180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !838, size: 64, elements: !626)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1116, file: !741, line: 51, baseType: !1182, size: 64, offset: 128)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !190, line: 183, baseType: !1184)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !190, line: 183, size: 128, elements: !1185)
!1185 = !{!1186}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1184, file: !190, line: 183, baseType: !1187, size: 128)
!1187 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !190, line: 182, baseType: !1188)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !190, line: 182, size: 128, elements: !1189)
!1189 = !{!1190, !1191, !1192}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1188, file: !190, line: 182, baseType: !7, size: 32)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1188, file: !190, line: 182, baseType: !7, size: 32, offset: 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1188, file: !190, line: 182, baseType: !892, size: 64, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1116, file: !741, line: 54, baseType: !543, size: 64, offset: 192)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1116, file: !741, line: 57, baseType: !1195, size: 128, offset: 256)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1196, line: 31, size: 128, elements: !1197)
!1196 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1197 = !{!1198, !1199, !1200, !1201, !1202, !1203, !1204}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1195, file: !1196, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1195, file: !1196, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1195, file: !1196, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1195, file: !1196, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1195, file: !1196, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1195, file: !1196, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1195, file: !1196, line: 56, baseType: !1205, size: 64, offset: 64)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !544, line: 47, baseType: !1206)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !1208, line: 75, size: 256, elements: !1209)
!1208 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1209 = !{!1210, !1222, !1223, !1224}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1207, file: !1208, line: 76, baseType: !1211, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !1208, line: 68, baseType: !1213)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !1208, line: 63, size: 320, elements: !1214)
!1214 = !{!1215, !1217, !1218, !1219}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1213, file: !1208, line: 64, baseType: !1216, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1213, file: !1208, line: 65, baseType: !1216, size: 64, offset: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !1213, file: !1208, line: 66, baseType: !7, size: 32, offset: 128)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1213, file: !1208, line: 67, baseType: !1220, size: 128, offset: 192)
!1220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1221, size: 128, elements: !1060)
!1221 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !1208, line: 29, baseType: !597)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !1207, file: !1208, line: 77, baseType: !1211, size: 64, offset: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !1207, file: !1208, line: 78, baseType: !7, size: 32, offset: 128)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !1207, file: !1208, line: 79, baseType: !1225, size: 64, offset: 192)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !1208, line: 49, baseType: !1227)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !1208, line: 45, size: 832, elements: !1228)
!1228 = !{!1229, !1230, !1231}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1227, file: !1208, line: 46, baseType: !1216, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !1227, file: !1208, line: 47, baseType: !1206, size: 64, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !1227, file: !1208, line: 48, baseType: !1232, size: 704, offset: 128)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !1233, line: 164, size: 704, elements: !1234)
!1233 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1234 = !{!1235, !1236, !1246, !1247, !1248, !1249, !1250, !1251, !1255, !1259, !1260, !1261, !1262}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !1232, file: !1233, line: 166, baseType: !599, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !1232, file: !1233, line: 167, baseType: !1237, size: 64, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !1233, line: 157, size: 192, elements: !1239)
!1239 = !{!1240, !1241, !1242}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1238, file: !1233, line: 159, baseType: !538, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1238, file: !1233, line: 160, baseType: !1237, size: 64, offset: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !1238, file: !1233, line: 161, baseType: !1243, size: 32, offset: 128)
!1243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !539, size: 32, elements: !1244)
!1244 = !{!1245}
!1245 = !DISubrange(count: 4)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !1232, file: !1233, line: 168, baseType: !538, size: 64, offset: 128)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !1232, file: !1233, line: 169, baseType: !538, size: 64, offset: 192)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !1232, file: !1233, line: 170, baseType: !538, size: 64, offset: 256)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !1232, file: !1233, line: 171, baseType: !599, size: 64, offset: 320)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !1232, file: !1233, line: 172, baseType: !536, size: 32, offset: 384)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !1232, file: !1233, line: 176, baseType: !1252, size: 64, offset: 448)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!1237, !540, !599}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !1232, file: !1233, line: 177, baseType: !1256, size: 64, offset: 512)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{null, !540, !1237}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !1232, file: !1233, line: 178, baseType: !540, size: 64, offset: 576)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !1232, file: !1233, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !1232, file: !1233, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !1232, file: !1233, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1116, file: !741, line: 60, baseType: !1195, size: 128, offset: 384)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1116, file: !741, line: 64, baseType: !1265, size: 64, offset: 512)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1267, line: 33, flags: DIFlagFwdDecl)
!1267 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1116, file: !741, line: 67, baseType: !543, size: 64, offset: 576)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1116, file: !741, line: 73, baseType: !1119, size: 64, offset: 640)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1116, file: !741, line: 77, baseType: !1205, size: 64, offset: 704)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1116, file: !741, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1116, file: !741, line: 82, baseType: !1273, size: 320, offset: 832)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !869, line: 62, size: 320, elements: !1274)
!1274 = !{!1275, !1281, !1282, !1283, !1284, !1285}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1273, file: !869, line: 63, baseType: !1276, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !869, line: 56, size: 128, elements: !1278)
!1278 = !{!1279, !1280}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1277, file: !869, line: 57, baseType: !1276, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1277, file: !869, line: 58, baseType: !625, size: 8, offset: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1273, file: !869, line: 64, baseType: !7, size: 32, offset: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1273, file: !869, line: 66, baseType: !7, size: 32, offset: 96)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1273, file: !869, line: 68, baseType: !535, size: 8, offset: 128)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1273, file: !869, line: 70, baseType: !867, size: 64, offset: 192)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1273, file: !869, line: 71, baseType: !875, size: 64, offset: 256)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !790, file: !791, line: 476, baseType: !1287, size: 64, offset: 256)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !791, line: 476, flags: DIFlagFwdDecl)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !790, file: !791, line: 479, baseType: !1119, size: 64, offset: 320)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !790, file: !791, line: 484, baseType: !543, size: 64, offset: 384)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !790, file: !791, line: 488, baseType: !543, size: 64, offset: 448)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !790, file: !791, line: 493, baseType: !543, size: 64, offset: 512)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !790, file: !791, line: 496, baseType: !543, size: 64, offset: 576)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !790, file: !791, line: 501, baseType: !1295, size: 64, offset: 640)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !396, line: 2355, size: 576, elements: !1297)
!1297 = !{!1298, !1301, !1302, !1303, !1304, !1306, !1307, !1312, !1313, !1314, !1315, !1316, !1317}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1296, file: !396, line: 2356, baseType: !1299, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !396, line: 2356, flags: DIFlagFwdDecl)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1296, file: !396, line: 2357, baseType: !541, size: 64, offset: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1296, file: !396, line: 2358, baseType: !536, size: 32, offset: 128)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1296, file: !396, line: 2359, baseType: !536, size: 32, offset: 160)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1296, file: !396, line: 2360, baseType: !1305, size: 128, offset: 192)
!1305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !536, size: 128, elements: !1244)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1296, file: !396, line: 2364, baseType: !536, size: 32, offset: 320)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1296, file: !396, line: 2367, baseType: !1308, size: 128, offset: 384)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !396, line: 2349, size: 128, elements: !1309)
!1309 = !{!1310, !1311}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1308, file: !396, line: 2351, baseType: !702, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1308, file: !396, line: 2352, baseType: !599, size: 64, offset: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1296, file: !396, line: 2371, baseType: !395, size: 32, offset: 512)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1296, file: !396, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1296, file: !396, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1296, file: !396, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1296, file: !396, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1296, file: !396, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !790, file: !791, line: 504, baseType: !1319, size: 64, offset: 704)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !791, line: 504, flags: DIFlagFwdDecl)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !790, file: !791, line: 507, baseType: !1119, size: 64, offset: 768)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !790, file: !791, line: 510, baseType: !536, size: 32, offset: 832)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !790, file: !791, line: 513, baseType: !536, size: 32, offset: 864)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !790, file: !791, line: 516, baseType: !652, size: 32, offset: 896)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !790, file: !791, line: 519, baseType: !652, size: 32, offset: 928)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !790, file: !791, line: 522, baseType: !7, size: 32, offset: 960)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !790, file: !791, line: 523, baseType: !7, size: 32, offset: 992)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !790, file: !791, line: 528, baseType: !541, size: 64, offset: 1024)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !790, file: !791, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !790, file: !791, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !790, file: !791, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !790, file: !791, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !790, file: !791, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !790, file: !791, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !790, file: !791, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !790, file: !791, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !790, file: !791, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !790, file: !791, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !790, file: !791, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !790, file: !791, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !790, file: !791, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !790, file: !791, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !790, file: !791, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !790, file: !791, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !785, file: !190, line: 3254, baseType: !543, size: 64, offset: 1536)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !785, file: !190, line: 3257, baseType: !543, size: 64, offset: 1600)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !785, file: !190, line: 3258, baseType: !543, size: 64, offset: 1664)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !785, file: !190, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !785, file: !190, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !785, file: !190, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !785, file: !190, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !785, file: !190, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !785, file: !190, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !785, file: !190, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !785, file: !190, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !785, file: !190, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !785, file: !190, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !785, file: !190, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !785, file: !190, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !785, file: !190, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !785, file: !190, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !785, file: !190, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !785, file: !190, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !785, file: !190, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !785, file: !190, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !546, file: !190, line: 3394, baseType: !1367, size: 1344)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !190, line: 2279, size: 1344, elements: !1368)
!1368 = !{!1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1394, !1395, !1396, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1367, file: !190, line: 2280, baseType: !582, size: 192)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1367, file: !190, line: 2281, baseType: !543, size: 64, offset: 192)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1367, file: !190, line: 2282, baseType: !543, size: 64, offset: 256)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1367, file: !190, line: 2283, baseType: !543, size: 64, offset: 320)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1367, file: !190, line: 2284, baseType: !543, size: 64, offset: 384)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1367, file: !190, line: 2285, baseType: !7, size: 32, offset: 448)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1367, file: !190, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1367, file: !190, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1367, file: !190, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1367, file: !190, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1367, file: !190, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1367, file: !190, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1367, file: !190, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1367, file: !190, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1367, file: !190, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1367, file: !190, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1367, file: !190, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1367, file: !190, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1367, file: !190, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1367, file: !190, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1367, file: !190, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1367, file: !190, line: 2305, baseType: !7, size: 32, offset: 512)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1367, file: !190, line: 2306, baseType: !1392, size: 32, offset: 544)
!1392 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1393, line: 31, baseType: !536)
!1393 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1367, file: !190, line: 2307, baseType: !543, size: 64, offset: 576)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1367, file: !190, line: 2308, baseType: !543, size: 64, offset: 640)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1367, file: !190, line: 2314, baseType: !1397, size: 64, offset: 704)
!1397 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !190, line: 2309, size: 64, elements: !1398)
!1398 = !{!1399, !1400, !1401}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1397, file: !190, line: 2310, baseType: !536, size: 32)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1397, file: !190, line: 2311, baseType: !541, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1397, file: !190, line: 2312, baseType: !1402, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !190, line: 2277, flags: DIFlagFwdDecl)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1367, file: !190, line: 2315, baseType: !543, size: 64, offset: 768)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1367, file: !190, line: 2316, baseType: !543, size: 64, offset: 832)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1367, file: !190, line: 2317, baseType: !543, size: 64, offset: 896)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1367, file: !190, line: 2318, baseType: !543, size: 64, offset: 960)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1367, file: !190, line: 2319, baseType: !543, size: 64, offset: 1024)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1367, file: !190, line: 2320, baseType: !543, size: 64, offset: 1088)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1367, file: !190, line: 2321, baseType: !543, size: 64, offset: 1152)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1367, file: !190, line: 2322, baseType: !543, size: 64, offset: 1216)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1367, file: !190, line: 2324, baseType: !1413, size: 64, offset: 1280)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !190, line: 2324, flags: DIFlagFwdDecl)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !546, file: !190, line: 3395, baseType: !1416, size: 320)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !190, line: 1469, size: 320, elements: !1417)
!1417 = !{!1418, !1419, !1420}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1416, file: !190, line: 1470, baseType: !582, size: 192)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1416, file: !190, line: 1471, baseType: !543, size: 64, offset: 192)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1416, file: !190, line: 1472, baseType: !543, size: 64, offset: 256)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !546, file: !190, line: 3396, baseType: !1422, size: 320)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !190, line: 1482, size: 320, elements: !1423)
!1423 = !{!1424, !1425, !1426}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1422, file: !190, line: 1483, baseType: !582, size: 192)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1422, file: !190, line: 1484, baseType: !536, size: 32, offset: 192)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1422, file: !190, line: 1485, baseType: !892, size: 64, offset: 256)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !546, file: !190, line: 3397, baseType: !1428, size: 384)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !190, line: 1829, size: 384, elements: !1429)
!1429 = !{!1430, !1431, !1432, !1433}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1428, file: !190, line: 1830, baseType: !582, size: 192)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1428, file: !190, line: 1831, baseType: !652, size: 32, offset: 192)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1428, file: !190, line: 1832, baseType: !543, size: 64, offset: 256)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1428, file: !190, line: 1835, baseType: !892, size: 64, offset: 320)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !546, file: !190, line: 3398, baseType: !1435, size: 704)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !190, line: 1898, size: 704, elements: !1436)
!1436 = !{!1437, !1438, !1439, !1440, !1441, !1446}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1435, file: !190, line: 1899, baseType: !582, size: 192)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1435, file: !190, line: 1902, baseType: !543, size: 64, offset: 192)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1435, file: !190, line: 1905, baseType: !838, size: 64, offset: 256)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1435, file: !190, line: 1908, baseType: !7, size: 32, offset: 320)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1435, file: !190, line: 1911, baseType: !1442, size: 64, offset: 384)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !741, line: 117, size: 128, elements: !1444)
!1444 = !{!1445}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1443, file: !741, line: 120, baseType: !1195, size: 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1435, file: !190, line: 1914, baseType: !880, size: 256, offset: 448)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !546, file: !190, line: 3399, baseType: !1448, size: 704)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !190, line: 2008, size: 704, elements: !1449)
!1449 = !{!1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1448, file: !190, line: 2009, baseType: !582, size: 192)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1448, file: !190, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1448, file: !190, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1448, file: !190, line: 2014, baseType: !652, size: 32, offset: 224)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1448, file: !190, line: 2016, baseType: !543, size: 64, offset: 256)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1448, file: !190, line: 2017, baseType: !1182, size: 64, offset: 320)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1448, file: !190, line: 2019, baseType: !543, size: 64, offset: 384)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1448, file: !190, line: 2020, baseType: !543, size: 64, offset: 448)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1448, file: !190, line: 2021, baseType: !543, size: 64, offset: 512)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1448, file: !190, line: 2022, baseType: !543, size: 64, offset: 576)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1448, file: !190, line: 2023, baseType: !543, size: 64, offset: 640)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !546, file: !190, line: 3400, baseType: !1462, size: 832)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !190, line: 2430, size: 832, elements: !1463)
!1463 = !{!1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1462, file: !190, line: 2431, baseType: !582, size: 192)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1462, file: !190, line: 2433, baseType: !543, size: 64, offset: 192)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1462, file: !190, line: 2434, baseType: !543, size: 64, offset: 256)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1462, file: !190, line: 2435, baseType: !543, size: 64, offset: 320)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1462, file: !190, line: 2436, baseType: !543, size: 64, offset: 384)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1462, file: !190, line: 2437, baseType: !1182, size: 64, offset: 448)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1462, file: !190, line: 2438, baseType: !543, size: 64, offset: 512)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1462, file: !190, line: 2440, baseType: !543, size: 64, offset: 576)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1462, file: !190, line: 2441, baseType: !543, size: 64, offset: 640)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1462, file: !190, line: 2443, baseType: !1474, size: 128, offset: 704)
!1474 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !190, line: 182, baseType: !1475)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !190, line: 182, size: 128, elements: !1476)
!1476 = !{!1477}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1475, file: !190, line: 182, baseType: !1187, size: 128)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !546, file: !190, line: 3401, baseType: !1479, size: 320)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !190, line: 3327, size: 320, elements: !1480)
!1480 = !{!1481, !1482, !1489}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1479, file: !190, line: 3329, baseType: !582, size: 192)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1479, file: !190, line: 3330, baseType: !1483, size: 64, offset: 192)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !190, line: 3320, size: 192, elements: !1485)
!1485 = !{!1486, !1487, !1488}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1484, file: !190, line: 3322, baseType: !1483, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1484, file: !190, line: 3323, baseType: !1483, size: 64, offset: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1484, file: !190, line: 3324, baseType: !543, size: 64, offset: 128)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1479, file: !190, line: 3331, baseType: !1483, size: 64, offset: 256)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !546, file: !190, line: 3402, baseType: !1491, size: 256)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !190, line: 1540, size: 256, elements: !1492)
!1492 = !{!1493, !1494}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1491, file: !190, line: 1541, baseType: !582, size: 192)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1491, file: !190, line: 1542, baseType: !1495, size: 64, offset: 192)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !190, line: 1538, baseType: !1497)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !190, line: 1538, size: 192, elements: !1498)
!1498 = !{!1499}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1497, file: !190, line: 1538, baseType: !1500, size: 192)
!1500 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !190, line: 1537, baseType: !1501)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !190, line: 1537, size: 192, elements: !1502)
!1502 = !{!1503, !1504, !1505}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1501, file: !190, line: 1537, baseType: !7, size: 32)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1501, file: !190, line: 1537, baseType: !7, size: 32, offset: 32)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1501, file: !190, line: 1537, baseType: !1506, size: 128, offset: 64)
!1506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1507, size: 128, elements: !626)
!1507 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !190, line: 1535, baseType: !1508)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !190, line: 1532, size: 128, elements: !1509)
!1509 = !{!1510, !1511}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1508, file: !190, line: 1533, baseType: !543, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1508, file: !190, line: 1534, baseType: !543, size: 64, offset: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !546, file: !190, line: 3403, baseType: !1513, size: 512)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !190, line: 1938, size: 512, elements: !1514)
!1514 = !{!1515, !1516, !1517, !1518, !1524, !1525, !1526}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1513, file: !190, line: 1939, baseType: !582, size: 192)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1513, file: !190, line: 1940, baseType: !652, size: 32, offset: 192)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1513, file: !190, line: 1941, baseType: !400, size: 32, offset: 224)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1513, file: !190, line: 1946, baseType: !1519, size: 32, offset: 256)
!1519 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !190, line: 1942, size: 32, elements: !1520)
!1520 = !{!1521, !1522, !1523}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1519, file: !190, line: 1943, baseType: !418, size: 32)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1519, file: !190, line: 1944, baseType: !425, size: 32)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1519, file: !190, line: 1945, baseType: !189, size: 32)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1513, file: !190, line: 1950, baseType: !828, size: 64, offset: 320)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1513, file: !190, line: 1951, baseType: !828, size: 64, offset: 384)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1513, file: !190, line: 1953, baseType: !892, size: 64, offset: 448)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !546, file: !190, line: 3404, baseType: !1528, size: 1664)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !190, line: 3337, size: 1664, elements: !1529)
!1529 = !{!1530, !1531}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1528, file: !190, line: 3338, baseType: !582, size: 192)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1528, file: !190, line: 3341, baseType: !1532, size: 1472, offset: 192)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1533, line: 410, size: 1472, elements: !1534)
!1533 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1534 = !{!1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1532, file: !1533, line: 412, baseType: !536, size: 32)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1532, file: !1533, line: 413, baseType: !536, size: 32, offset: 32)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1532, file: !1533, line: 414, baseType: !536, size: 32, offset: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1532, file: !1533, line: 415, baseType: !536, size: 32, offset: 96)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1532, file: !1533, line: 416, baseType: !536, size: 32, offset: 128)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1532, file: !1533, line: 417, baseType: !536, size: 32, offset: 160)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1532, file: !1533, line: 418, baseType: !535, size: 8, offset: 192)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1532, file: !1533, line: 419, baseType: !535, size: 8, offset: 200)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1532, file: !1533, line: 420, baseType: !1544, size: 8, offset: 208)
!1544 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1532, file: !1533, line: 421, baseType: !1544, size: 8, offset: 216)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1532, file: !1533, line: 422, baseType: !1544, size: 8, offset: 224)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1532, file: !1533, line: 423, baseType: !1544, size: 8, offset: 232)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1532, file: !1533, line: 424, baseType: !1544, size: 8, offset: 240)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1532, file: !1533, line: 425, baseType: !1544, size: 8, offset: 248)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1532, file: !1533, line: 426, baseType: !1544, size: 8, offset: 256)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1532, file: !1533, line: 427, baseType: !1544, size: 8, offset: 264)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1532, file: !1533, line: 428, baseType: !1544, size: 8, offset: 272)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1532, file: !1533, line: 429, baseType: !1544, size: 8, offset: 280)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1532, file: !1533, line: 430, baseType: !1544, size: 8, offset: 288)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1532, file: !1533, line: 431, baseType: !1544, size: 8, offset: 296)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1532, file: !1533, line: 432, baseType: !1544, size: 8, offset: 304)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1532, file: !1533, line: 433, baseType: !1544, size: 8, offset: 312)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1532, file: !1533, line: 434, baseType: !1544, size: 8, offset: 320)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1532, file: !1533, line: 435, baseType: !1544, size: 8, offset: 328)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1532, file: !1533, line: 436, baseType: !1544, size: 8, offset: 336)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1532, file: !1533, line: 437, baseType: !1544, size: 8, offset: 344)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1532, file: !1533, line: 438, baseType: !1544, size: 8, offset: 352)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1532, file: !1533, line: 439, baseType: !1544, size: 8, offset: 360)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1532, file: !1533, line: 440, baseType: !1544, size: 8, offset: 368)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1532, file: !1533, line: 441, baseType: !1544, size: 8, offset: 376)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1532, file: !1533, line: 442, baseType: !1544, size: 8, offset: 384)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1532, file: !1533, line: 443, baseType: !1544, size: 8, offset: 392)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1532, file: !1533, line: 444, baseType: !1544, size: 8, offset: 400)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1532, file: !1533, line: 445, baseType: !1544, size: 8, offset: 408)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1532, file: !1533, line: 446, baseType: !1544, size: 8, offset: 416)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1532, file: !1533, line: 447, baseType: !1544, size: 8, offset: 424)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1532, file: !1533, line: 448, baseType: !1544, size: 8, offset: 432)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1532, file: !1533, line: 449, baseType: !1544, size: 8, offset: 440)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1532, file: !1533, line: 450, baseType: !1544, size: 8, offset: 448)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1532, file: !1533, line: 451, baseType: !1544, size: 8, offset: 456)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1532, file: !1533, line: 452, baseType: !1544, size: 8, offset: 464)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1532, file: !1533, line: 453, baseType: !1544, size: 8, offset: 472)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1532, file: !1533, line: 454, baseType: !1544, size: 8, offset: 480)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1532, file: !1533, line: 455, baseType: !1544, size: 8, offset: 488)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1532, file: !1533, line: 456, baseType: !1544, size: 8, offset: 496)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1532, file: !1533, line: 457, baseType: !1544, size: 8, offset: 504)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1532, file: !1533, line: 458, baseType: !1544, size: 8, offset: 512)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1532, file: !1533, line: 459, baseType: !1544, size: 8, offset: 520)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1532, file: !1533, line: 460, baseType: !1544, size: 8, offset: 528)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1532, file: !1533, line: 461, baseType: !1544, size: 8, offset: 536)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1532, file: !1533, line: 462, baseType: !1544, size: 8, offset: 544)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1532, file: !1533, line: 463, baseType: !1544, size: 8, offset: 552)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1532, file: !1533, line: 464, baseType: !1544, size: 8, offset: 560)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1532, file: !1533, line: 465, baseType: !1544, size: 8, offset: 568)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1532, file: !1533, line: 466, baseType: !1544, size: 8, offset: 576)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1532, file: !1533, line: 467, baseType: !1544, size: 8, offset: 584)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1532, file: !1533, line: 468, baseType: !1544, size: 8, offset: 592)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1532, file: !1533, line: 469, baseType: !1544, size: 8, offset: 600)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1532, file: !1533, line: 470, baseType: !1544, size: 8, offset: 608)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1532, file: !1533, line: 471, baseType: !1544, size: 8, offset: 616)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1532, file: !1533, line: 472, baseType: !1544, size: 8, offset: 624)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1532, file: !1533, line: 473, baseType: !1544, size: 8, offset: 632)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1532, file: !1533, line: 474, baseType: !1544, size: 8, offset: 640)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1532, file: !1533, line: 475, baseType: !1544, size: 8, offset: 648)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1532, file: !1533, line: 476, baseType: !1544, size: 8, offset: 656)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1532, file: !1533, line: 477, baseType: !1544, size: 8, offset: 664)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1532, file: !1533, line: 478, baseType: !1544, size: 8, offset: 672)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1532, file: !1533, line: 479, baseType: !1544, size: 8, offset: 680)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1532, file: !1533, line: 480, baseType: !1544, size: 8, offset: 688)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1532, file: !1533, line: 481, baseType: !1544, size: 8, offset: 696)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1532, file: !1533, line: 482, baseType: !1544, size: 8, offset: 704)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1532, file: !1533, line: 483, baseType: !1544, size: 8, offset: 712)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1532, file: !1533, line: 484, baseType: !1544, size: 8, offset: 720)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1532, file: !1533, line: 485, baseType: !1544, size: 8, offset: 728)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1532, file: !1533, line: 486, baseType: !1544, size: 8, offset: 736)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1532, file: !1533, line: 487, baseType: !1544, size: 8, offset: 744)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1532, file: !1533, line: 488, baseType: !1544, size: 8, offset: 752)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1532, file: !1533, line: 489, baseType: !1544, size: 8, offset: 760)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1532, file: !1533, line: 490, baseType: !1544, size: 8, offset: 768)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1532, file: !1533, line: 491, baseType: !1544, size: 8, offset: 776)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1532, file: !1533, line: 492, baseType: !1544, size: 8, offset: 784)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1532, file: !1533, line: 493, baseType: !1544, size: 8, offset: 792)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1532, file: !1533, line: 494, baseType: !1544, size: 8, offset: 800)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1532, file: !1533, line: 495, baseType: !1544, size: 8, offset: 808)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1532, file: !1533, line: 496, baseType: !1544, size: 8, offset: 816)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1532, file: !1533, line: 497, baseType: !1544, size: 8, offset: 824)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1532, file: !1533, line: 498, baseType: !1544, size: 8, offset: 832)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1532, file: !1533, line: 499, baseType: !1544, size: 8, offset: 840)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1532, file: !1533, line: 500, baseType: !1544, size: 8, offset: 848)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1532, file: !1533, line: 501, baseType: !1544, size: 8, offset: 856)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1532, file: !1533, line: 502, baseType: !1544, size: 8, offset: 864)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1532, file: !1533, line: 503, baseType: !1544, size: 8, offset: 872)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1532, file: !1533, line: 504, baseType: !1544, size: 8, offset: 880)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1532, file: !1533, line: 505, baseType: !1544, size: 8, offset: 888)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1532, file: !1533, line: 506, baseType: !1544, size: 8, offset: 896)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1532, file: !1533, line: 507, baseType: !1544, size: 8, offset: 904)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1532, file: !1533, line: 508, baseType: !1544, size: 8, offset: 912)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1532, file: !1533, line: 509, baseType: !1544, size: 8, offset: 920)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1532, file: !1533, line: 510, baseType: !1544, size: 8, offset: 928)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1532, file: !1533, line: 511, baseType: !1544, size: 8, offset: 936)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1532, file: !1533, line: 512, baseType: !1544, size: 8, offset: 944)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1532, file: !1533, line: 513, baseType: !1544, size: 8, offset: 952)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1532, file: !1533, line: 514, baseType: !1544, size: 8, offset: 960)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1532, file: !1533, line: 515, baseType: !1544, size: 8, offset: 968)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1532, file: !1533, line: 516, baseType: !1544, size: 8, offset: 976)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1532, file: !1533, line: 517, baseType: !1544, size: 8, offset: 984)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1532, file: !1533, line: 518, baseType: !1544, size: 8, offset: 992)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1532, file: !1533, line: 519, baseType: !1544, size: 8, offset: 1000)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1532, file: !1533, line: 520, baseType: !1544, size: 8, offset: 1008)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1532, file: !1533, line: 521, baseType: !1544, size: 8, offset: 1016)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1532, file: !1533, line: 522, baseType: !1544, size: 8, offset: 1024)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1532, file: !1533, line: 523, baseType: !1544, size: 8, offset: 1032)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1532, file: !1533, line: 524, baseType: !1544, size: 8, offset: 1040)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1532, file: !1533, line: 525, baseType: !1544, size: 8, offset: 1048)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1532, file: !1533, line: 526, baseType: !1544, size: 8, offset: 1056)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1532, file: !1533, line: 527, baseType: !1544, size: 8, offset: 1064)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1532, file: !1533, line: 528, baseType: !1544, size: 8, offset: 1072)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1532, file: !1533, line: 529, baseType: !1544, size: 8, offset: 1080)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1532, file: !1533, line: 530, baseType: !1544, size: 8, offset: 1088)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1532, file: !1533, line: 531, baseType: !1544, size: 8, offset: 1096)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1532, file: !1533, line: 532, baseType: !1544, size: 8, offset: 1104)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1532, file: !1533, line: 533, baseType: !1544, size: 8, offset: 1112)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1532, file: !1533, line: 534, baseType: !1544, size: 8, offset: 1120)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1532, file: !1533, line: 535, baseType: !1544, size: 8, offset: 1128)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1532, file: !1533, line: 536, baseType: !1544, size: 8, offset: 1136)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1532, file: !1533, line: 537, baseType: !1544, size: 8, offset: 1144)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1532, file: !1533, line: 538, baseType: !1544, size: 8, offset: 1152)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1532, file: !1533, line: 539, baseType: !1544, size: 8, offset: 1160)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1532, file: !1533, line: 540, baseType: !1544, size: 8, offset: 1168)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1532, file: !1533, line: 541, baseType: !1544, size: 8, offset: 1176)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1532, file: !1533, line: 542, baseType: !1544, size: 8, offset: 1184)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1532, file: !1533, line: 543, baseType: !1544, size: 8, offset: 1192)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1532, file: !1533, line: 544, baseType: !1544, size: 8, offset: 1200)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1532, file: !1533, line: 545, baseType: !1544, size: 8, offset: 1208)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1532, file: !1533, line: 546, baseType: !1544, size: 8, offset: 1216)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1532, file: !1533, line: 547, baseType: !1544, size: 8, offset: 1224)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1532, file: !1533, line: 548, baseType: !1544, size: 8, offset: 1232)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1532, file: !1533, line: 549, baseType: !1544, size: 8, offset: 1240)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1532, file: !1533, line: 550, baseType: !1544, size: 8, offset: 1248)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1532, file: !1533, line: 551, baseType: !1544, size: 8, offset: 1256)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1532, file: !1533, line: 552, baseType: !1544, size: 8, offset: 1264)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1532, file: !1533, line: 553, baseType: !1544, size: 8, offset: 1272)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1532, file: !1533, line: 554, baseType: !1544, size: 8, offset: 1280)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1532, file: !1533, line: 555, baseType: !1544, size: 8, offset: 1288)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1532, file: !1533, line: 556, baseType: !1544, size: 8, offset: 1296)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1532, file: !1533, line: 557, baseType: !1544, size: 8, offset: 1304)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1532, file: !1533, line: 558, baseType: !1544, size: 8, offset: 1312)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1532, file: !1533, line: 559, baseType: !1544, size: 8, offset: 1320)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1532, file: !1533, line: 560, baseType: !1544, size: 8, offset: 1328)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1532, file: !1533, line: 561, baseType: !1544, size: 8, offset: 1336)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1532, file: !1533, line: 562, baseType: !1544, size: 8, offset: 1344)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1532, file: !1533, line: 563, baseType: !1544, size: 8, offset: 1352)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1532, file: !1533, line: 564, baseType: !1544, size: 8, offset: 1360)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1532, file: !1533, line: 565, baseType: !1544, size: 8, offset: 1368)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1532, file: !1533, line: 566, baseType: !1544, size: 8, offset: 1376)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1532, file: !1533, line: 567, baseType: !1544, size: 8, offset: 1384)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1532, file: !1533, line: 568, baseType: !1544, size: 8, offset: 1392)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1532, file: !1533, line: 569, baseType: !1544, size: 8, offset: 1400)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1532, file: !1533, line: 570, baseType: !1544, size: 8, offset: 1408)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1532, file: !1533, line: 571, baseType: !1544, size: 8, offset: 1416)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1532, file: !1533, line: 572, baseType: !1544, size: 8, offset: 1424)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1532, file: !1533, line: 573, baseType: !1544, size: 8, offset: 1432)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1532, file: !1533, line: 574, baseType: !1544, size: 8, offset: 1440)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !546, file: !190, line: 3405, baseType: !1700, size: 384)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !190, line: 3352, size: 384, elements: !1701)
!1701 = !{!1702, !1703}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1700, file: !190, line: 3353, baseType: !582, size: 192)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1700, file: !190, line: 3356, baseType: !1704, size: 192, offset: 192)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1533, line: 578, size: 192, elements: !1705)
!1705 = !{!1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1704, file: !1533, line: 580, baseType: !536, size: 32)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1704, file: !1533, line: 581, baseType: !536, size: 32, offset: 32)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1704, file: !1533, line: 582, baseType: !536, size: 32, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1704, file: !1533, line: 583, baseType: !536, size: 32, offset: 96)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1704, file: !1533, line: 584, baseType: !535, size: 8, offset: 128)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1704, file: !1533, line: 585, baseType: !535, size: 8, offset: 136)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1704, file: !1533, line: 586, baseType: !535, size: 8, offset: 144)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1704, file: !1533, line: 587, baseType: !535, size: 8, offset: 152)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1704, file: !1533, line: 588, baseType: !535, size: 8, offset: 160)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1704, file: !1533, line: 589, baseType: !535, size: 8, offset: 168)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1704, file: !1533, line: 590, baseType: !535, size: 8, offset: 176)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !840)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_node_params_t_heap", file: !456, line: 315, baseType: !1721)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_node_params_t_heap", file: !456, line: 315, size: 448, elements: !1722)
!1722 = !{!1723}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1721, file: !456, line: 315, baseType: !1724, size: 448)
!1724 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_node_params_t_base", file: !456, line: 314, baseType: !1725)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_node_params_t_base", file: !456, line: 314, size: 448, elements: !1726)
!1726 = !{!1727, !1728, !1729}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1725, file: !456, line: 314, baseType: !7, size: 32)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1725, file: !456, line: 314, baseType: !7, size: 32, offset: 32)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1725, file: !456, line: 314, baseType: !1730, size: 384, offset: 64)
!1730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1731, size: 384, elements: !626)
!1731 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_node_params_t", file: !456, line: 311, baseType: !1732)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_node_params", file: !456, line: 178, size: 384, elements: !1733)
!1733 = !{!1734, !1735, !1746, !1759, !1988, !1989, !1990, !1991, !1992}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !1732, file: !456, line: 183, baseType: !536, size: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !1732, file: !456, line: 186, baseType: !1736, size: 64, offset: 64)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_param_descriptor", file: !456, line: 165, size: 256, elements: !1738)
!1738 = !{!1739, !1744, !1745}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "ipcp_lattice", scope: !1737, file: !456, line: 168, baseType: !1740, size: 128)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipcp_lattice", file: !456, line: 132, size: 128, elements: !1741)
!1741 = !{!1742, !1743}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1740, file: !456, line: 134, baseType: !455, size: 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !1740, file: !456, line: 135, baseType: !543, size: 64, offset: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1737, file: !456, line: 170, baseType: !543, size: 64, offset: 128)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !1737, file: !456, line: 172, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "param_calls", scope: !1732, file: !456, line: 188, baseType: !1747, size: 64, offset: 128)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_param_call_note", file: !456, line: 141, size: 320, elements: !1749)
!1749 = !{!1750, !1751, !1752, !1753, !1754, !1755, !1756, !1758}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1748, file: !456, line: 144, baseType: !1050, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1748, file: !456, line: 146, baseType: !1747, size: 64, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1748, file: !456, line: 148, baseType: !838, size: 64, offset: 128)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "lto_stmt_uid", scope: !1748, file: !456, line: 150, baseType: !7, size: 32, offset: 192)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "formal_id", scope: !1748, file: !456, line: 152, baseType: !536, size: 32, offset: 224)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !1748, file: !456, line: 155, baseType: !536, size: 32, offset: 256)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "loop_nest", scope: !1748, file: !456, line: 157, baseType: !1757, size: 16, offset: 288)
!1757 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "processed", scope: !1748, file: !456, line: 161, baseType: !535, size: 8, offset: 304)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "ipcp_orig_node", scope: !1732, file: !456, line: 191, baseType: !1760, size: 64, offset: 192)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_node", file: !433, line: 181, size: 2496, elements: !1762)
!1762 = !{!1763, !1764, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1903, !1925, !1935, !1939, !1965, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1761, file: !433, line: 182, baseType: !543, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "callees", scope: !1761, file: !433, line: 183, baseType: !1765, size: 64, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_edge", file: !433, line: 314, size: 768, elements: !1767)
!1767 = !{!1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1779, !1780, !1781, !1782, !1783, !1784, !1785}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1766, file: !433, line: 316, baseType: !1050, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1766, file: !433, line: 317, baseType: !1760, size: 64, offset: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "callee", scope: !1766, file: !433, line: 318, baseType: !1760, size: 64, offset: 128)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "prev_caller", scope: !1766, file: !433, line: 319, baseType: !1765, size: 64, offset: 192)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "next_caller", scope: !1766, file: !433, line: 320, baseType: !1765, size: 64, offset: 256)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "prev_callee", scope: !1766, file: !433, line: 321, baseType: !1765, size: 64, offset: 320)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "next_callee", scope: !1766, file: !433, line: 322, baseType: !1765, size: 64, offset: 384)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "call_stmt", scope: !1766, file: !433, line: 323, baseType: !838, size: 64, offset: 448)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1766, file: !433, line: 324, baseType: !540, size: 64, offset: 512)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "inline_failed", scope: !1766, file: !433, line: 327, baseType: !1778, size: 32, offset: 576)
!1778 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_inline_failed_t", file: !433, line: 312, baseType: !432)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "lto_stmt_uid", scope: !1766, file: !433, line: 330, baseType: !7, size: 32, offset: 608)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !1766, file: !433, line: 334, baseType: !536, size: 32, offset: 640)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1766, file: !433, line: 336, baseType: !536, size: 32, offset: 672)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "loop_nest", scope: !1766, file: !433, line: 338, baseType: !1757, size: 16, offset: 704)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "indirect_call", scope: !1766, file: !433, line: 340, baseType: !7, size: 1, offset: 720, flags: DIFlagBitField, extraData: i64 720)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "call_stmt_cannot_inline_p", scope: !1766, file: !433, line: 342, baseType: !7, size: 1, offset: 721, flags: DIFlagBitField, extraData: i64 720)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "can_throw_external", scope: !1766, file: !433, line: 344, baseType: !7, size: 1, offset: 722, flags: DIFlagBitField, extraData: i64 720)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "callers", scope: !1761, file: !433, line: 184, baseType: !1765, size: 64, offset: 128)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1761, file: !433, line: 185, baseType: !1760, size: 64, offset: 192)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !1761, file: !433, line: 186, baseType: !1760, size: 64, offset: 256)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !1761, file: !433, line: 188, baseType: !1760, size: 64, offset: 320)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !1761, file: !433, line: 190, baseType: !1760, size: 64, offset: 384)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "next_nested", scope: !1761, file: !433, line: 192, baseType: !1760, size: 64, offset: 448)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "next_needed", scope: !1761, file: !433, line: 194, baseType: !1760, size: 64, offset: 512)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "next_sibling_clone", scope: !1761, file: !433, line: 196, baseType: !1760, size: 64, offset: 576)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sibling_clone", scope: !1761, file: !433, line: 197, baseType: !1760, size: 64, offset: 640)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "clones", scope: !1761, file: !433, line: 198, baseType: !1760, size: 64, offset: 704)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "clone_of", scope: !1761, file: !433, line: 199, baseType: !1760, size: 64, offset: 768)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "same_body", scope: !1761, file: !433, line: 202, baseType: !1760, size: 64, offset: 832)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "same_comdat_group", scope: !1761, file: !433, line: 204, baseType: !1760, size: 64, offset: 896)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "call_site_hash", scope: !1761, file: !433, line: 207, baseType: !1119, size: 64, offset: 960)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1761, file: !433, line: 209, baseType: !540, size: 64, offset: 1024)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "ipa_transforms_to_apply", scope: !1761, file: !433, line: 214, baseType: !1802, size: 64, offset: 1088)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_opt_pass_heap", file: !791, line: 177, baseType: !1804)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_opt_pass_heap", file: !791, line: 177, size: 128, elements: !1805)
!1805 = !{!1806}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1804, file: !791, line: 177, baseType: !1807, size: 128)
!1807 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_opt_pass_base", file: !791, line: 176, baseType: !1808)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_opt_pass_base", file: !791, line: 176, size: 128, elements: !1809)
!1809 = !{!1810, !1811, !1812}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1808, file: !791, line: 176, baseType: !7, size: 32)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1808, file: !791, line: 176, baseType: !7, size: 32, offset: 32)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1808, file: !791, line: 176, baseType: !1813, size: 64, offset: 64)
!1813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1814, size: 64, elements: !626)
!1814 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_opt_pass", file: !791, line: 174, baseType: !1815)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_opt_pass_d", file: !6, line: 173, size: 1152, elements: !1817)
!1817 = !{!1818, !1842, !1846, !1869, !1870, !1874, !1879, !1880, !1884}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !1816, file: !6, line: 175, baseType: !1819, size: 640)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !6, line: 114, size: 640, elements: !1820)
!1820 = !{!1821, !1822, !1823, !1827, !1831, !1833, !1834, !1835, !1837, !1838, !1839, !1840, !1841}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1819, file: !6, line: 117, baseType: !5, size: 32)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1819, file: !6, line: 121, baseType: !541, size: 64, offset: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !1819, file: !6, line: 125, baseType: !1824, size: 64, offset: 128)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!535}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !1819, file: !6, line: 130, baseType: !1828, size: 64, offset: 192)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!7}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !1819, file: !6, line: 133, baseType: !1832, size: 64, offset: 256)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1819, file: !6, line: 136, baseType: !1832, size: 64, offset: 320)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !1819, file: !6, line: 139, baseType: !536, size: 32, offset: 384)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !1819, file: !6, line: 143, baseType: !1836, size: 32, offset: 416)
!1836 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !14, line: 80, baseType: !13)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !1819, file: !6, line: 146, baseType: !7, size: 32, offset: 448)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !1819, file: !6, line: 147, baseType: !7, size: 32, offset: 480)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !1819, file: !6, line: 148, baseType: !7, size: 32, offset: 512)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !1819, file: !6, line: 151, baseType: !7, size: 32, offset: 544)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !1819, file: !6, line: 152, baseType: !7, size: 32, offset: 576)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "generate_summary", scope: !1816, file: !6, line: 179, baseType: !1843, size: 64, offset: 640)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{null}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "write_summary", scope: !1816, file: !6, line: 182, baseType: !1847, size: 64, offset: 704)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{null, !1850}
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_node_set_def", file: !433, line: 276, size: 192, elements: !1852)
!1852 = !{!1853, !1854, !1868}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "hashtab", scope: !1851, file: !433, line: 278, baseType: !1119, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !1851, file: !433, line: 279, baseType: !1855, size: 64, offset: 64)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_gc", file: !433, line: 272, baseType: !1857)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_gc", file: !433, line: 272, size: 128, elements: !1858)
!1858 = !{!1859}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1857, file: !433, line: 272, baseType: !1860, size: 128)
!1860 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_base", file: !433, line: 270, baseType: !1861)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_base", file: !433, line: 270, size: 128, elements: !1862)
!1862 = !{!1863, !1864, !1865}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1861, file: !433, line: 270, baseType: !7, size: 32)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1861, file: !433, line: 270, baseType: !7, size: 32, offset: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1861, file: !433, line: 270, baseType: !1866, size: 64, offset: 64)
!1866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1867, size: 64, elements: !626)
!1867 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_node_ptr", file: !433, line: 268, baseType: !1760)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1851, file: !433, line: 280, baseType: !540, size: 64, offset: 128)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "read_summary", scope: !1816, file: !6, line: 187, baseType: !1843, size: 64, offset: 768)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "function_read_summary", scope: !1816, file: !6, line: 188, baseType: !1871, size: 64, offset: 832)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{null, !1760}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_fixup", scope: !1816, file: !6, line: 191, baseType: !1875, size: 64, offset: 896)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{null, !1760, !1878}
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "function_transform_todo_flags_start", scope: !1816, file: !6, line: 195, baseType: !7, size: 32, offset: 960)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "function_transform", scope: !1816, file: !6, line: 196, baseType: !1881, size: 64, offset: 1024)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!7, !1760}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "variable_transform", scope: !1816, file: !6, line: 197, baseType: !1885, size: 64, offset: 1088)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{null, !1888}
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varpool_node", file: !433, line: 358, size: 320, elements: !1890)
!1890 = !{!1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1889, file: !433, line: 359, baseType: !543, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1889, file: !433, line: 361, baseType: !1888, size: 64, offset: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "next_needed", scope: !1889, file: !433, line: 363, baseType: !1888, size: 64, offset: 128)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "extra_name", scope: !1889, file: !433, line: 366, baseType: !1888, size: 64, offset: 192)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !1889, file: !433, line: 368, baseType: !536, size: 32, offset: 256)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "needed", scope: !1889, file: !433, line: 372, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "force_output", scope: !1889, file: !433, line: 375, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "analyzed", scope: !1889, file: !433, line: 378, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "finalized", scope: !1889, file: !433, line: 380, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !1889, file: !433, line: 382, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "externally_visible", scope: !1889, file: !433, line: 384, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1889, file: !433, line: 387, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !1761, file: !433, line: 216, baseType: !1904, size: 320, offset: 1152)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_local_info", file: !433, line: 88, size: 320, elements: !1905)
!1905 = !{!1906, !1909, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "lto_file_data", scope: !1904, file: !433, line: 90, baseType: !1907, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DICompositeType(tag: DW_TAG_structure_type, name: "lto_file_decl_data", file: !433, line: 51, flags: DIFlagFwdDecl)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "inline_summary", scope: !1904, file: !433, line: 92, baseType: !1910, size: 192, offset: 64)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inline_summary", file: !433, line: 57, size: 192, elements: !1911)
!1911 = !{!1912, !1913, !1914, !1915, !1916}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_self_stack_size", scope: !1910, file: !433, line: 60, baseType: !599, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "self_size", scope: !1910, file: !433, line: 63, baseType: !536, size: 32, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "size_inlining_benefit", scope: !1910, file: !433, line: 65, baseType: !536, size: 32, offset: 96)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "self_time", scope: !1910, file: !433, line: 67, baseType: !536, size: 32, offset: 128)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "time_inlining_benefit", scope: !1910, file: !433, line: 69, baseType: !536, size: 32, offset: 160)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !1904, file: !433, line: 96, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "externally_visible", scope: !1904, file: !433, line: 99, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "finalized", scope: !1904, file: !433, line: 102, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "inlinable", scope: !1904, file: !433, line: 105, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1904, file: !433, line: 108, baseType: !7, size: 1, offset: 260, flags: DIFlagBitField, extraData: i64 256)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "redefined_extern_inline", scope: !1904, file: !433, line: 112, baseType: !7, size: 1, offset: 261, flags: DIFlagBitField, extraData: i64 256)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "for_functions_valid", scope: !1904, file: !433, line: 116, baseType: !7, size: 1, offset: 262, flags: DIFlagBitField, extraData: i64 256)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "vtable_method", scope: !1904, file: !433, line: 120, baseType: !7, size: 1, offset: 263, flags: DIFlagBitField, extraData: i64 256)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !1761, file: !433, line: 217, baseType: !1926, size: 320, offset: 1472)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_global_info", file: !433, line: 126, size: 320, elements: !1927)
!1927 = !{!1928, !1929, !1930, !1931, !1932, !1933, !1934}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_stack_size", scope: !1926, file: !433, line: 128, baseType: !599, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "stack_frame_offset", scope: !1926, file: !433, line: 130, baseType: !599, size: 64, offset: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "inlined_to", scope: !1926, file: !433, line: 134, baseType: !1760, size: 64, offset: 128)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1926, file: !433, line: 137, baseType: !536, size: 32, offset: 192)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1926, file: !433, line: 138, baseType: !536, size: 32, offset: 224)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_growth", scope: !1926, file: !433, line: 141, baseType: !536, size: 32, offset: 256)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "inlined", scope: !1926, file: !433, line: 144, baseType: !535, size: 8, offset: 288)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1761, file: !433, line: 218, baseType: !1936, size: 32, offset: 1792)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_rtl_info", file: !433, line: 150, size: 32, elements: !1937)
!1937 = !{!1938}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_incoming_stack_boundary", scope: !1936, file: !433, line: 151, baseType: !7, size: 32)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "clone", scope: !1761, file: !433, line: 219, baseType: !1940, size: 192, offset: 1856)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_clone_info", file: !433, line: 171, size: 192, elements: !1941)
!1941 = !{!1942, !1963, !1964}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "tree_map", scope: !1940, file: !433, line: 173, baseType: !1943, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_replace_map_p_gc", file: !433, line: 169, baseType: !1945)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_replace_map_p_gc", file: !433, line: 169, size: 128, elements: !1946)
!1946 = !{!1947}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1945, file: !433, line: 169, baseType: !1948, size: 128)
!1948 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_replace_map_p_base", file: !433, line: 168, baseType: !1949)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_replace_map_p_base", file: !433, line: 168, size: 128, elements: !1950)
!1950 = !{!1951, !1952, !1953}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1949, file: !433, line: 168, baseType: !7, size: 32)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1949, file: !433, line: 168, baseType: !7, size: 32, offset: 32)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1949, file: !433, line: 168, baseType: !1954, size: 64, offset: 64)
!1954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1955, size: 64, elements: !626)
!1955 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_replace_map_p", file: !433, line: 167, baseType: !1956)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_replace_map", file: !433, line: 156, size: 192, elements: !1958)
!1958 = !{!1959, !1960, !1961, !1962}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "old_tree", scope: !1957, file: !433, line: 159, baseType: !543, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "new_tree", scope: !1957, file: !433, line: 161, baseType: !543, size: 64, offset: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "replace_p", scope: !1957, file: !433, line: 163, baseType: !535, size: 8, offset: 128)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "ref_p", scope: !1957, file: !433, line: 165, baseType: !535, size: 8, offset: 136)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "args_to_skip", scope: !1940, file: !433, line: 174, baseType: !1205, size: 64, offset: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "combined_args_to_skip", scope: !1940, file: !433, line: 175, baseType: !1205, size: 64, offset: 128)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "thunk", scope: !1761, file: !433, line: 220, baseType: !1966, size: 256, offset: 2048)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_thunk_info", file: !433, line: 74, size: 256, elements: !1967)
!1967 = !{!1968, !1969, !1970, !1971, !1972, !1973}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_offset", scope: !1966, file: !433, line: 76, baseType: !599, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_value", scope: !1966, file: !433, line: 77, baseType: !599, size: 64, offset: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1966, file: !433, line: 78, baseType: !543, size: 64, offset: 128)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "this_adjusting", scope: !1966, file: !433, line: 79, baseType: !535, size: 8, offset: 192)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_offset_p", scope: !1966, file: !433, line: 80, baseType: !535, size: 8, offset: 200)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "thunk_p", scope: !1966, file: !433, line: 82, baseType: !535, size: 8, offset: 208)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1761, file: !433, line: 223, baseType: !1050, size: 64, offset: 2304)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1761, file: !433, line: 225, baseType: !536, size: 32, offset: 2368)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !1761, file: !433, line: 227, baseType: !536, size: 32, offset: 2400)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1761, file: !433, line: 231, baseType: !536, size: 32, offset: 2432)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "needed", scope: !1761, file: !433, line: 238, baseType: !7, size: 1, offset: 2464, flags: DIFlagBitField, extraData: i64 2464)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "address_taken", scope: !1761, file: !433, line: 241, baseType: !7, size: 1, offset: 2465, flags: DIFlagBitField, extraData: i64 2464)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_and_needed", scope: !1761, file: !433, line: 244, baseType: !7, size: 1, offset: 2466, flags: DIFlagBitField, extraData: i64 2464)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "reachable", scope: !1761, file: !433, line: 251, baseType: !7, size: 1, offset: 2467, flags: DIFlagBitField, extraData: i64 2464)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "lowered", scope: !1761, file: !433, line: 253, baseType: !7, size: 1, offset: 2468, flags: DIFlagBitField, extraData: i64 2464)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "analyzed", scope: !1761, file: !433, line: 256, baseType: !7, size: 1, offset: 2469, flags: DIFlagBitField, extraData: i64 2464)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !1761, file: !433, line: 258, baseType: !7, size: 1, offset: 2470, flags: DIFlagBitField, extraData: i64 2464)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1761, file: !433, line: 260, baseType: !7, size: 1, offset: 2471, flags: DIFlagBitField, extraData: i64 2464)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "finalized_by_frontend", scope: !1761, file: !433, line: 262, baseType: !7, size: 1, offset: 2472, flags: DIFlagBitField, extraData: i64 2464)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "same_body_alias", scope: !1761, file: !433, line: 265, baseType: !7, size: 1, offset: 2473, flags: DIFlagBitField, extraData: i64 2464)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "count_scale", scope: !1732, file: !456, line: 197, baseType: !1050, size: 64, offset: 256)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "called_with_var_arguments", scope: !1732, file: !456, line: 201, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "modification_analysis_done", scope: !1732, file: !456, line: 203, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "uses_analysis_done", scope: !1732, file: !456, line: 205, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "node_enqueued", scope: !1732, file: !456, line: 207, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_edge_args_t_gc", file: !456, line: 317, baseType: !1995)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_edge_args_t_gc", file: !456, line: 317, size: 192, elements: !1996)
!1996 = !{!1997}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1995, file: !456, line: 317, baseType: !1998, size: 192)
!1998 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_edge_args_t_base", file: !456, line: 316, baseType: !1999)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_edge_args_t_base", file: !456, line: 316, size: 192, elements: !2000)
!2000 = !{!2001, !2002, !2003}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1999, file: !456, line: 316, baseType: !7, size: 32)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1999, file: !456, line: 316, baseType: !7, size: 32, offset: 32)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1999, file: !456, line: 316, baseType: !2004, size: 128, offset: 64)
!2004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2005, size: 128, elements: !626)
!2005 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_edge_args_t", file: !456, line: 279, baseType: !2006)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_edge_args", file: !456, line: 271, size: 128, elements: !2007)
!2007 = !{!2008, !2009}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "argument_count", scope: !2006, file: !456, line: 276, baseType: !536, size: 32)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "jump_functions", scope: !2006, file: !456, line: 278, baseType: !2010, size: 64, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_jump_func", file: !456, line: 114, size: 256, elements: !2012)
!2012 = !{!2013, !2014}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2011, file: !456, line: 116, baseType: !526, size: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2011, file: !456, line: 126, baseType: !2015, size: 192, offset: 64)
!2015 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "jump_func_value", file: !456, line: 120, size: 192, elements: !2016)
!2016 = !{!2017, !2018, !2024, !2030}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !2015, file: !456, line: 122, baseType: !543, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "pass_through", scope: !2015, file: !456, line: 123, baseType: !2019, size: 128)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_pass_through_data", file: !456, line: 76, size: 128, elements: !2020)
!2020 = !{!2021, !2022, !2023}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "operand", scope: !2019, file: !456, line: 80, baseType: !543, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "formal_id", scope: !2019, file: !456, line: 82, baseType: !536, size: 32, offset: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "operation", scope: !2019, file: !456, line: 87, baseType: !189, size: 32, offset: 96)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "ancestor", scope: !2015, file: !456, line: 124, baseType: !2025, size: 192)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_ancestor_jf_data", file: !456, line: 93, size: 192, elements: !2026)
!2026 = !{!2027, !2028, !2029}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2025, file: !456, line: 96, baseType: !599, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2025, file: !456, line: 98, baseType: !543, size: 64, offset: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "formal_id", scope: !2025, file: !456, line: 100, baseType: !536, size: 32, offset: 128)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "member_cst", scope: !2015, file: !456, line: 125, baseType: !2031, size: 128)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_member_ptr_cst", file: !456, line: 105, size: 128, elements: !2032)
!2032 = !{!2033, !2034}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "pfn", scope: !2031, file: !456, line: 107, baseType: !543, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "delta", scope: !2031, file: !456, line: 108, baseType: !543, size: 64, offset: 64)
!2035 = !DIDerivedType(tag: DW_TAG_typedef, name: "fibnode_t", file: !2036, line: 74, baseType: !2037)
!2036 = !DIFile(filename: "./include/fibheap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fibnode", file: !2036, line: 59, size: 448, elements: !2039)
!2039 = !{!2040, !2041, !2042, !2043, !2044, !2046, !2047, !2048}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2038, file: !2036, line: 61, baseType: !2037, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2038, file: !2036, line: 62, baseType: !2037, size: 64, offset: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !2038, file: !2036, line: 63, baseType: !2037, size: 64, offset: 128)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !2038, file: !2036, line: 64, baseType: !2037, size: 64, offset: 192)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2038, file: !2036, line: 65, baseType: !2045, size: 64, offset: 256)
!2045 = !DIDerivedType(tag: DW_TAG_typedef, name: "fibheapkey_t", file: !2036, line: 50, baseType: !599)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2038, file: !2036, line: 66, baseType: !540, size: 64, offset: 320)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "degree", scope: !2038, file: !2036, line: 71, baseType: !7, size: 31, offset: 384, flags: DIFlagBitField, extraData: i64 384)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !2038, file: !2036, line: 72, baseType: !7, size: 1, offset: 415, flags: DIFlagBitField, extraData: i64 384)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_edge_p_heap", file: !433, line: 353, baseType: !2051)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_edge_p_heap", file: !433, line: 353, size: 128, elements: !2052)
!2052 = !{!2053}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2051, file: !433, line: 353, baseType: !2054, size: 128)
!2054 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_edge_p_base", file: !433, line: 352, baseType: !2055)
!2055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_edge_p_base", file: !433, line: 352, size: 128, elements: !2056)
!2056 = !{!2057, !2058, !2059}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2055, file: !433, line: 352, baseType: !7, size: 32)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2055, file: !433, line: 352, baseType: !7, size: 32, offset: 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2055, file: !433, line: 352, baseType: !2060, size: 64, offset: 64)
!2060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2061, size: 64, elements: !626)
!2061 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_edge_p", file: !433, line: 350, baseType: !1765)
!2062 = !{!0, !2063, !2065, !2067}
!2063 = !DIGlobalVariableExpression(var: !2064, expr: !DIExpression())
!2064 = distinct !DIGlobalVariable(name: "n_cloning_candidates", scope: !2, file: !3, line: 142, type: !536, isLocal: true, isDefinition: true)
!2065 = !DIGlobalVariableExpression(var: !2066, expr: !DIExpression())
!2066 = distinct !DIGlobalVariable(name: "max_count", scope: !2, file: !3, line: 145, type: !1050, isLocal: true, isDefinition: true)
!2067 = !DIGlobalVariableExpression(var: !2068, expr: !DIExpression())
!2068 = distinct !DIGlobalVariable(name: "dead_nodes", scope: !2, file: !3, line: 149, type: !1205, isLocal: true, isDefinition: true)
!2069 = !{i32 2, !"Dwarf Version", i32 4}
!2070 = !{i32 2, !"Debug Info Version", i32 3}
!2071 = !{i32 1, !"wchar_size", i32 4}
!2072 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!2073 = distinct !DISubprogram(name: "vprintf", scope: !2074, file: !2074, line: 39, type: !2075, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2085)
!2074 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!2075 = !DISubroutineType(types: !2076)
!2076 = !{!536, !2077, !2078}
!2077 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !541)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2080)
!2080 = !{!2081, !2082, !2083, !2084}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2079, file: !3, baseType: !7, size: 32)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2079, file: !3, baseType: !7, size: 32, offset: 32)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2079, file: !3, baseType: !540, size: 64, offset: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2079, file: !3, baseType: !540, size: 64, offset: 128)
!2085 = !{!2086, !2087}
!2086 = !DILocalVariable(name: "__fmt", arg: 1, scope: !2073, file: !2074, line: 39, type: !2077)
!2087 = !DILocalVariable(name: "__arg", arg: 2, scope: !2073, file: !2074, line: 39, type: !2078)
!2088 = !DILocation(line: 0, scope: !2073)
!2089 = !DILocation(line: 41, column: 20, scope: !2073)
!2090 = !DILocation(line: 41, column: 10, scope: !2073)
!2091 = !DILocation(line: 41, column: 3, scope: !2073)
!2092 = distinct !DISubprogram(name: "getchar", scope: !2074, file: !2074, line: 47, type: !2093, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2095)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!536}
!2095 = !{}
!2096 = !DILocation(line: 49, column: 16, scope: !2092)
!2097 = !DILocation(line: 49, column: 10, scope: !2092)
!2098 = !DILocation(line: 49, column: 3, scope: !2092)
!2099 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !2074, file: !2074, line: 56, type: !2100, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2152)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!536, !2102}
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2104, line: 7, baseType: !2105)
!2104 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2106, line: 49, size: 1728, elements: !2107)
!2106 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2107 = !{!2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2123, !2125, !2126, !2127, !2130, !2131, !2132, !2133, !2136, !2138, !2141, !2144, !2145, !2146, !2147, !2148}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2105, file: !2106, line: 51, baseType: !536, size: 32)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2105, file: !2106, line: 54, baseType: !538, size: 64, offset: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2105, file: !2106, line: 55, baseType: !538, size: 64, offset: 128)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2105, file: !2106, line: 56, baseType: !538, size: 64, offset: 192)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2105, file: !2106, line: 57, baseType: !538, size: 64, offset: 256)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2105, file: !2106, line: 58, baseType: !538, size: 64, offset: 320)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2105, file: !2106, line: 59, baseType: !538, size: 64, offset: 384)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2105, file: !2106, line: 60, baseType: !538, size: 64, offset: 448)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2105, file: !2106, line: 61, baseType: !538, size: 64, offset: 512)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2105, file: !2106, line: 64, baseType: !538, size: 64, offset: 576)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2105, file: !2106, line: 65, baseType: !538, size: 64, offset: 640)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2105, file: !2106, line: 66, baseType: !538, size: 64, offset: 704)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2105, file: !2106, line: 68, baseType: !2121, size: 64, offset: 768)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2106, line: 36, flags: DIFlagFwdDecl)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2105, file: !2106, line: 70, baseType: !2124, size: 64, offset: 832)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2105, file: !2106, line: 72, baseType: !536, size: 32, offset: 896)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2105, file: !2106, line: 73, baseType: !536, size: 32, offset: 928)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2105, file: !2106, line: 74, baseType: !2128, size: 64, offset: 960)
!2128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2129, line: 152, baseType: !599)
!2129 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2105, file: !2106, line: 77, baseType: !1757, size: 16, offset: 1024)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2105, file: !2106, line: 78, baseType: !1544, size: 8, offset: 1040)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2105, file: !2106, line: 79, baseType: !625, size: 8, offset: 1048)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2105, file: !2106, line: 81, baseType: !2134, size: 64, offset: 1088)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2106, line: 43, baseType: null)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2105, file: !2106, line: 89, baseType: !2137, size: 64, offset: 1152)
!2137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2129, line: 153, baseType: !599)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2105, file: !2106, line: 91, baseType: !2139, size: 64, offset: 1216)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2106, line: 37, flags: DIFlagFwdDecl)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2105, file: !2106, line: 92, baseType: !2142, size: 64, offset: 1280)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2106, line: 38, flags: DIFlagFwdDecl)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2105, file: !2106, line: 93, baseType: !2124, size: 64, offset: 1344)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2105, file: !2106, line: 94, baseType: !540, size: 64, offset: 1408)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2105, file: !2106, line: 95, baseType: !984, size: 64, offset: 1472)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2105, file: !2106, line: 96, baseType: !536, size: 32, offset: 1536)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2105, file: !2106, line: 98, baseType: !2149, size: 160, offset: 1568)
!2149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !539, size: 160, elements: !2150)
!2150 = !{!2151}
!2151 = !DISubrange(count: 20)
!2152 = !{!2153}
!2153 = !DILocalVariable(name: "__fp", arg: 1, scope: !2099, file: !2074, line: 56, type: !2102)
!2154 = !DILocation(line: 0, scope: !2099)
!2155 = !DILocation(line: 58, column: 10, scope: !2099)
!2156 = !DILocation(line: 58, column: 3, scope: !2099)
!2157 = distinct !DISubprogram(name: "getc_unlocked", scope: !2074, file: !2074, line: 66, type: !2100, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2158)
!2158 = !{!2159}
!2159 = !DILocalVariable(name: "__fp", arg: 1, scope: !2157, file: !2074, line: 66, type: !2102)
!2160 = !DILocation(line: 0, scope: !2157)
!2161 = !DILocation(line: 68, column: 10, scope: !2157)
!2162 = !DILocation(line: 68, column: 3, scope: !2157)
!2163 = distinct !DISubprogram(name: "getchar_unlocked", scope: !2074, file: !2074, line: 73, type: !2093, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2095)
!2164 = !DILocation(line: 75, column: 10, scope: !2163)
!2165 = !DILocation(line: 75, column: 3, scope: !2163)
!2166 = distinct !DISubprogram(name: "putchar", scope: !2074, file: !2074, line: 82, type: !2167, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2169)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{!536, !536}
!2169 = !{!2170}
!2170 = !DILocalVariable(name: "__c", arg: 1, scope: !2166, file: !2074, line: 82, type: !536)
!2171 = !DILocation(line: 0, scope: !2166)
!2172 = !DILocation(line: 84, column: 21, scope: !2166)
!2173 = !DILocation(line: 84, column: 10, scope: !2166)
!2174 = !DILocation(line: 84, column: 3, scope: !2166)
!2175 = distinct !DISubprogram(name: "fputc_unlocked", scope: !2074, file: !2074, line: 91, type: !2176, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2178)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!536, !536, !2102}
!2178 = !{!2179, !2180}
!2179 = !DILocalVariable(name: "__c", arg: 1, scope: !2175, file: !2074, line: 91, type: !536)
!2180 = !DILocalVariable(name: "__stream", arg: 2, scope: !2175, file: !2074, line: 91, type: !2102)
!2181 = !DILocation(line: 0, scope: !2175)
!2182 = !DILocation(line: 93, column: 10, scope: !2175)
!2183 = !DILocation(line: 93, column: 3, scope: !2175)
!2184 = distinct !DISubprogram(name: "putc_unlocked", scope: !2074, file: !2074, line: 101, type: !2176, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2185)
!2185 = !{!2186, !2187}
!2186 = !DILocalVariable(name: "__c", arg: 1, scope: !2184, file: !2074, line: 101, type: !536)
!2187 = !DILocalVariable(name: "__stream", arg: 2, scope: !2184, file: !2074, line: 101, type: !2102)
!2188 = !DILocation(line: 0, scope: !2184)
!2189 = !DILocation(line: 103, column: 10, scope: !2184)
!2190 = !DILocation(line: 103, column: 3, scope: !2184)
!2191 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2074, file: !2074, line: 108, type: !2167, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2192)
!2192 = !{!2193}
!2193 = !DILocalVariable(name: "__c", arg: 1, scope: !2191, file: !2074, line: 108, type: !536)
!2194 = !DILocation(line: 0, scope: !2191)
!2195 = !DILocation(line: 110, column: 10, scope: !2191)
!2196 = !DILocation(line: 110, column: 3, scope: !2191)
!2197 = distinct !DISubprogram(name: "getline", scope: !2074, file: !2074, line: 118, type: !2198, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2202)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!2200, !537, !2201, !2102}
!2200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2129, line: 193, baseType: !599)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!2202 = !{!2203, !2204, !2205}
!2203 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2197, file: !2074, line: 118, type: !537)
!2204 = !DILocalVariable(name: "__n", arg: 2, scope: !2197, file: !2074, line: 118, type: !2201)
!2205 = !DILocalVariable(name: "__stream", arg: 3, scope: !2197, file: !2074, line: 118, type: !2102)
!2206 = !DILocation(line: 0, scope: !2197)
!2207 = !DILocation(line: 120, column: 10, scope: !2197)
!2208 = !DILocation(line: 120, column: 3, scope: !2197)
!2209 = distinct !DISubprogram(name: "feof_unlocked", scope: !2074, file: !2074, line: 128, type: !2100, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2210)
!2210 = !{!2211}
!2211 = !DILocalVariable(name: "__stream", arg: 1, scope: !2209, file: !2074, line: 128, type: !2102)
!2212 = !DILocation(line: 0, scope: !2209)
!2213 = !DILocation(line: 130, column: 10, scope: !2209)
!2214 = !DILocation(line: 130, column: 3, scope: !2209)
!2215 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2074, file: !2074, line: 135, type: !2100, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2216)
!2216 = !{!2217}
!2217 = !DILocalVariable(name: "__stream", arg: 1, scope: !2215, file: !2074, line: 135, type: !2102)
!2218 = !DILocation(line: 0, scope: !2215)
!2219 = !DILocation(line: 137, column: 10, scope: !2215)
!2220 = !DILocation(line: 137, column: 3, scope: !2215)
!2221 = distinct !DISubprogram(name: "tolower", scope: !2222, file: !2222, line: 207, type: !2167, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2223)
!2222 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2223 = !{!2224}
!2224 = !DILocalVariable(name: "__c", arg: 1, scope: !2221, file: !2222, line: 207, type: !536)
!2225 = !DILocation(line: 0, scope: !2221)
!2226 = !DILocation(line: 209, column: 22, scope: !2221)
!2227 = !DILocation(line: 209, column: 39, scope: !2221)
!2228 = !DILocation(line: 209, column: 38, scope: !2221)
!2229 = !DILocation(line: 209, column: 37, scope: !2221)
!2230 = !DILocation(line: 209, column: 10, scope: !2221)
!2231 = !DILocation(line: 209, column: 3, scope: !2221)
!2232 = distinct !DISubprogram(name: "toupper", scope: !2222, file: !2222, line: 213, type: !2167, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2233)
!2233 = !{!2234}
!2234 = !DILocalVariable(name: "__c", arg: 1, scope: !2232, file: !2222, line: 213, type: !536)
!2235 = !DILocation(line: 0, scope: !2232)
!2236 = !DILocation(line: 215, column: 22, scope: !2232)
!2237 = !DILocation(line: 215, column: 39, scope: !2232)
!2238 = !DILocation(line: 215, column: 38, scope: !2232)
!2239 = !DILocation(line: 215, column: 37, scope: !2232)
!2240 = !DILocation(line: 215, column: 10, scope: !2232)
!2241 = !DILocation(line: 215, column: 3, scope: !2232)
!2242 = distinct !DISubprogram(name: "atoi", scope: !2243, file: !2243, line: 361, type: !2244, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2246)
!2243 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2244 = !DISubroutineType(types: !2245)
!2245 = !{!536, !541}
!2246 = !{!2247}
!2247 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2242, file: !2243, line: 361, type: !541)
!2248 = !DILocation(line: 0, scope: !2242)
!2249 = !DILocation(line: 363, column: 16, scope: !2242)
!2250 = !DILocation(line: 363, column: 10, scope: !2242)
!2251 = !DILocation(line: 363, column: 3, scope: !2242)
!2252 = distinct !DISubprogram(name: "atol", scope: !2243, file: !2243, line: 366, type: !2253, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2255)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{!599, !541}
!2255 = !{!2256}
!2256 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2252, file: !2243, line: 366, type: !541)
!2257 = !DILocation(line: 0, scope: !2252)
!2258 = !DILocation(line: 368, column: 10, scope: !2252)
!2259 = !DILocation(line: 368, column: 3, scope: !2252)
!2260 = distinct !DISubprogram(name: "atoll", scope: !2243, file: !2243, line: 373, type: !2261, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2264)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!2263, !541}
!2263 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2264 = !{!2265}
!2265 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2260, file: !2243, line: 373, type: !541)
!2266 = !DILocation(line: 0, scope: !2260)
!2267 = !DILocation(line: 375, column: 10, scope: !2260)
!2268 = !DILocation(line: 375, column: 3, scope: !2260)
!2269 = distinct !DISubprogram(name: "bsearch", scope: !2270, file: !2270, line: 20, type: !2271, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2274)
!2270 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!540, !1130, !1130, !984, !984, !2273}
!2273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2243, line: 808, baseType: !1134)
!2274 = !{!2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284}
!2275 = !DILocalVariable(name: "__key", arg: 1, scope: !2269, file: !2270, line: 20, type: !1130)
!2276 = !DILocalVariable(name: "__base", arg: 2, scope: !2269, file: !2270, line: 20, type: !1130)
!2277 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2269, file: !2270, line: 20, type: !984)
!2278 = !DILocalVariable(name: "__size", arg: 4, scope: !2269, file: !2270, line: 20, type: !984)
!2279 = !DILocalVariable(name: "__compar", arg: 5, scope: !2269, file: !2270, line: 21, type: !2273)
!2280 = !DILocalVariable(name: "__l", scope: !2269, file: !2270, line: 23, type: !984)
!2281 = !DILocalVariable(name: "__u", scope: !2269, file: !2270, line: 23, type: !984)
!2282 = !DILocalVariable(name: "__idx", scope: !2269, file: !2270, line: 23, type: !984)
!2283 = !DILocalVariable(name: "__p", scope: !2269, file: !2270, line: 24, type: !1130)
!2284 = !DILocalVariable(name: "__comparison", scope: !2269, file: !2270, line: 25, type: !536)
!2285 = !DILocation(line: 0, scope: !2269)
!2286 = !DILocation(line: 29, column: 3, scope: !2269)
!2287 = !DILocation(line: 27, column: 7, scope: !2269)
!2288 = !DILocation(line: 29, column: 14, scope: !2269)
!2289 = !DILocation(line: 31, column: 20, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2269, file: !2270, line: 30, column: 5)
!2291 = !DILocation(line: 31, column: 27, scope: !2290)
!2292 = !DILocation(line: 32, column: 56, scope: !2290)
!2293 = !DILocation(line: 32, column: 47, scope: !2290)
!2294 = !DILocation(line: 33, column: 22, scope: !2290)
!2295 = !DILocation(line: 34, column: 24, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2290, file: !2270, line: 34, column: 11)
!2297 = !DILocation(line: 34, column: 11, scope: !2290)
!2298 = !DILocation(line: 36, column: 29, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2296, file: !2270, line: 36, column: 16)
!2300 = !DILocation(line: 36, column: 16, scope: !2296)
!2301 = !DILocation(line: 37, column: 14, scope: !2299)
!2302 = distinct !{!2302, !2286, !2303}
!2303 = !DILocation(line: 40, column: 5, scope: !2269)
!2304 = !DILocation(line: 43, column: 1, scope: !2269)
!2305 = distinct !DISubprogram(name: "atof", scope: !2306, file: !2306, line: 25, type: !2307, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2310)
!2306 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!2309, !541}
!2309 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2310 = !{!2311}
!2311 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2305, file: !2306, line: 25, type: !541)
!2312 = !DILocation(line: 0, scope: !2305)
!2313 = !DILocation(line: 27, column: 10, scope: !2305)
!2314 = !DILocation(line: 27, column: 3, scope: !2305)
!2315 = distinct !DISubprogram(name: "strtoimax", scope: !2316, file: !2316, line: 324, type: !2317, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2323)
!2316 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!2319, !2077, !2322, !536}
!2319 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2320, line: 101, baseType: !2321)
!2320 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2129, line: 72, baseType: !599)
!2322 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !537)
!2323 = !{!2324, !2325, !2326}
!2324 = !DILocalVariable(name: "nptr", arg: 1, scope: !2315, file: !2316, line: 324, type: !2077)
!2325 = !DILocalVariable(name: "endptr", arg: 2, scope: !2315, file: !2316, line: 324, type: !2322)
!2326 = !DILocalVariable(name: "base", arg: 3, scope: !2315, file: !2316, line: 324, type: !536)
!2327 = !DILocation(line: 0, scope: !2315)
!2328 = !DILocation(line: 327, column: 10, scope: !2315)
!2329 = !DILocation(line: 327, column: 3, scope: !2315)
!2330 = distinct !DISubprogram(name: "strtoumax", scope: !2316, file: !2316, line: 336, type: !2331, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2335)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!2333, !2077, !2322, !536}
!2333 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2320, line: 102, baseType: !2334)
!2334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2129, line: 73, baseType: !597)
!2335 = !{!2336, !2337, !2338}
!2336 = !DILocalVariable(name: "nptr", arg: 1, scope: !2330, file: !2316, line: 336, type: !2077)
!2337 = !DILocalVariable(name: "endptr", arg: 2, scope: !2330, file: !2316, line: 336, type: !2322)
!2338 = !DILocalVariable(name: "base", arg: 3, scope: !2330, file: !2316, line: 336, type: !536)
!2339 = !DILocation(line: 0, scope: !2330)
!2340 = !DILocation(line: 339, column: 10, scope: !2330)
!2341 = !DILocation(line: 339, column: 3, scope: !2330)
!2342 = distinct !DISubprogram(name: "wcstoimax", scope: !2316, file: !2316, line: 348, type: !2343, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2352)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!2319, !2345, !2349, !536}
!2345 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2346)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2348)
!2348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2316, line: 34, baseType: !536)
!2349 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2350)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2352 = !{!2353, !2354, !2355}
!2353 = !DILocalVariable(name: "nptr", arg: 1, scope: !2342, file: !2316, line: 348, type: !2345)
!2354 = !DILocalVariable(name: "endptr", arg: 2, scope: !2342, file: !2316, line: 348, type: !2349)
!2355 = !DILocalVariable(name: "base", arg: 3, scope: !2342, file: !2316, line: 348, type: !536)
!2356 = !DILocation(line: 0, scope: !2342)
!2357 = !DILocation(line: 351, column: 10, scope: !2342)
!2358 = !DILocation(line: 351, column: 3, scope: !2342)
!2359 = distinct !DISubprogram(name: "wcstoumax", scope: !2316, file: !2316, line: 362, type: !2360, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2362)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!2333, !2345, !2349, !536}
!2362 = !{!2363, !2364, !2365}
!2363 = !DILocalVariable(name: "nptr", arg: 1, scope: !2359, file: !2316, line: 362, type: !2345)
!2364 = !DILocalVariable(name: "endptr", arg: 2, scope: !2359, file: !2316, line: 362, type: !2349)
!2365 = !DILocalVariable(name: "base", arg: 3, scope: !2359, file: !2316, line: 362, type: !536)
!2366 = !DILocation(line: 0, scope: !2359)
!2367 = !DILocation(line: 365, column: 10, scope: !2359)
!2368 = !DILocation(line: 365, column: 3, scope: !2359)
!2369 = distinct !DISubprogram(name: "stat", scope: !2370, file: !2370, line: 453, type: !2371, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2410)
!2370 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!536, !541, !2373}
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2375, line: 46, size: 1152, elements: !2376)
!2375 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2376 = !{!2377, !2379, !2381, !2383, !2385, !2387, !2389, !2390, !2391, !2392, !2394, !2396, !2404, !2405, !2406}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2374, file: !2375, line: 48, baseType: !2378, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2129, line: 145, baseType: !597)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2374, file: !2375, line: 53, baseType: !2380, size: 64, offset: 64)
!2380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2129, line: 148, baseType: !597)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2374, file: !2375, line: 61, baseType: !2382, size: 64, offset: 128)
!2382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2129, line: 151, baseType: !597)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2374, file: !2375, line: 62, baseType: !2384, size: 32, offset: 192)
!2384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2129, line: 150, baseType: !7)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2374, file: !2375, line: 64, baseType: !2386, size: 32, offset: 224)
!2386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2129, line: 146, baseType: !7)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2374, file: !2375, line: 65, baseType: !2388, size: 32, offset: 256)
!2388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2129, line: 147, baseType: !7)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2374, file: !2375, line: 67, baseType: !536, size: 32, offset: 288)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2374, file: !2375, line: 69, baseType: !2378, size: 64, offset: 320)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2374, file: !2375, line: 74, baseType: !2128, size: 64, offset: 384)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2374, file: !2375, line: 78, baseType: !2393, size: 64, offset: 448)
!2393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2129, line: 174, baseType: !599)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2374, file: !2375, line: 80, baseType: !2395, size: 64, offset: 512)
!2395 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2129, line: 179, baseType: !599)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2374, file: !2375, line: 91, baseType: !2397, size: 128, offset: 576)
!2397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2398, line: 10, size: 128, elements: !2399)
!2398 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2399 = !{!2400, !2402}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2397, file: !2398, line: 12, baseType: !2401, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2129, line: 160, baseType: !599)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2397, file: !2398, line: 16, baseType: !2403, size: 64, offset: 64)
!2403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2129, line: 196, baseType: !599)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2374, file: !2375, line: 92, baseType: !2397, size: 128, offset: 704)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2374, file: !2375, line: 93, baseType: !2397, size: 128, offset: 832)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2374, file: !2375, line: 106, baseType: !2407, size: 192, offset: 960)
!2407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2403, size: 192, elements: !2408)
!2408 = !{!2409}
!2409 = !DISubrange(count: 3)
!2410 = !{!2411, !2412}
!2411 = !DILocalVariable(name: "__path", arg: 1, scope: !2369, file: !2370, line: 453, type: !541)
!2412 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2369, file: !2370, line: 453, type: !2373)
!2413 = !DILocation(line: 0, scope: !2369)
!2414 = !DILocation(line: 455, column: 10, scope: !2369)
!2415 = !DILocation(line: 455, column: 3, scope: !2369)
!2416 = distinct !DISubprogram(name: "lstat", scope: !2370, file: !2370, line: 460, type: !2371, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2417)
!2417 = !{!2418, !2419}
!2418 = !DILocalVariable(name: "__path", arg: 1, scope: !2416, file: !2370, line: 460, type: !541)
!2419 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2416, file: !2370, line: 460, type: !2373)
!2420 = !DILocation(line: 0, scope: !2416)
!2421 = !DILocation(line: 462, column: 10, scope: !2416)
!2422 = !DILocation(line: 462, column: 3, scope: !2416)
!2423 = distinct !DISubprogram(name: "fstat", scope: !2370, file: !2370, line: 467, type: !2424, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2426)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!536, !536, !2373}
!2426 = !{!2427, !2428}
!2427 = !DILocalVariable(name: "__fd", arg: 1, scope: !2423, file: !2370, line: 467, type: !536)
!2428 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2423, file: !2370, line: 467, type: !2373)
!2429 = !DILocation(line: 0, scope: !2423)
!2430 = !DILocation(line: 469, column: 10, scope: !2423)
!2431 = !DILocation(line: 469, column: 3, scope: !2423)
!2432 = distinct !DISubprogram(name: "fstatat", scope: !2370, file: !2370, line: 474, type: !2433, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2435)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!536, !536, !541, !2373, !536}
!2435 = !{!2436, !2437, !2438, !2439}
!2436 = !DILocalVariable(name: "__fd", arg: 1, scope: !2432, file: !2370, line: 474, type: !536)
!2437 = !DILocalVariable(name: "__filename", arg: 2, scope: !2432, file: !2370, line: 474, type: !541)
!2438 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2432, file: !2370, line: 474, type: !2373)
!2439 = !DILocalVariable(name: "__flag", arg: 4, scope: !2432, file: !2370, line: 474, type: !536)
!2440 = !DILocation(line: 0, scope: !2432)
!2441 = !DILocation(line: 477, column: 10, scope: !2432)
!2442 = !DILocation(line: 477, column: 3, scope: !2432)
!2443 = distinct !DISubprogram(name: "mknod", scope: !2370, file: !2370, line: 483, type: !2444, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2446)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{!536, !541, !2384, !2378}
!2446 = !{!2447, !2448, !2449}
!2447 = !DILocalVariable(name: "__path", arg: 1, scope: !2443, file: !2370, line: 483, type: !541)
!2448 = !DILocalVariable(name: "__mode", arg: 2, scope: !2443, file: !2370, line: 483, type: !2384)
!2449 = !DILocalVariable(name: "__dev", arg: 3, scope: !2443, file: !2370, line: 483, type: !2378)
!2450 = !DILocation(line: 0, scope: !2443)
!2451 = !DILocation(line: 485, column: 10, scope: !2443)
!2452 = !DILocation(line: 485, column: 3, scope: !2443)
!2453 = distinct !DISubprogram(name: "mknodat", scope: !2370, file: !2370, line: 491, type: !2454, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2456)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{!536, !536, !541, !2384, !2378}
!2456 = !{!2457, !2458, !2459, !2460}
!2457 = !DILocalVariable(name: "__fd", arg: 1, scope: !2453, file: !2370, line: 491, type: !536)
!2458 = !DILocalVariable(name: "__path", arg: 2, scope: !2453, file: !2370, line: 491, type: !541)
!2459 = !DILocalVariable(name: "__mode", arg: 3, scope: !2453, file: !2370, line: 491, type: !2384)
!2460 = !DILocalVariable(name: "__dev", arg: 4, scope: !2453, file: !2370, line: 491, type: !2378)
!2461 = !DILocation(line: 0, scope: !2453)
!2462 = !DILocation(line: 494, column: 10, scope: !2453)
!2463 = !DILocation(line: 494, column: 3, scope: !2453)
!2464 = distinct !DISubprogram(name: "stat64", scope: !2370, file: !2370, line: 502, type: !2465, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2487)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!536, !541, !2467}
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2375, line: 119, size: 1152, elements: !2469)
!2469 = !{!2470, !2471, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2483, !2484, !2485, !2486}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2468, file: !2375, line: 121, baseType: !2378, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2468, file: !2375, line: 123, baseType: !2472, size: 64, offset: 64)
!2472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2129, line: 149, baseType: !597)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2468, file: !2375, line: 124, baseType: !2382, size: 64, offset: 128)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2468, file: !2375, line: 125, baseType: !2384, size: 32, offset: 192)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2468, file: !2375, line: 132, baseType: !2386, size: 32, offset: 224)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2468, file: !2375, line: 133, baseType: !2388, size: 32, offset: 256)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2468, file: !2375, line: 135, baseType: !536, size: 32, offset: 288)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2468, file: !2375, line: 136, baseType: !2378, size: 64, offset: 320)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2468, file: !2375, line: 137, baseType: !2128, size: 64, offset: 384)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2468, file: !2375, line: 143, baseType: !2393, size: 64, offset: 448)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2468, file: !2375, line: 144, baseType: !2482, size: 64, offset: 512)
!2482 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2129, line: 180, baseType: !599)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2468, file: !2375, line: 152, baseType: !2397, size: 128, offset: 576)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2468, file: !2375, line: 153, baseType: !2397, size: 128, offset: 704)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2468, file: !2375, line: 154, baseType: !2397, size: 128, offset: 832)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2468, file: !2375, line: 164, baseType: !2407, size: 192, offset: 960)
!2487 = !{!2488, !2489}
!2488 = !DILocalVariable(name: "__path", arg: 1, scope: !2464, file: !2370, line: 502, type: !541)
!2489 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2464, file: !2370, line: 502, type: !2467)
!2490 = !DILocation(line: 0, scope: !2464)
!2491 = !DILocation(line: 504, column: 10, scope: !2464)
!2492 = !DILocation(line: 504, column: 3, scope: !2464)
!2493 = distinct !DISubprogram(name: "lstat64", scope: !2370, file: !2370, line: 509, type: !2465, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2494)
!2494 = !{!2495, !2496}
!2495 = !DILocalVariable(name: "__path", arg: 1, scope: !2493, file: !2370, line: 509, type: !541)
!2496 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2493, file: !2370, line: 509, type: !2467)
!2497 = !DILocation(line: 0, scope: !2493)
!2498 = !DILocation(line: 511, column: 10, scope: !2493)
!2499 = !DILocation(line: 511, column: 3, scope: !2493)
!2500 = distinct !DISubprogram(name: "fstat64", scope: !2370, file: !2370, line: 516, type: !2501, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2503)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!536, !536, !2467}
!2503 = !{!2504, !2505}
!2504 = !DILocalVariable(name: "__fd", arg: 1, scope: !2500, file: !2370, line: 516, type: !536)
!2505 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2500, file: !2370, line: 516, type: !2467)
!2506 = !DILocation(line: 0, scope: !2500)
!2507 = !DILocation(line: 518, column: 10, scope: !2500)
!2508 = !DILocation(line: 518, column: 3, scope: !2500)
!2509 = distinct !DISubprogram(name: "fstatat64", scope: !2370, file: !2370, line: 523, type: !2510, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2512)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!536, !536, !541, !2467, !536}
!2512 = !{!2513, !2514, !2515, !2516}
!2513 = !DILocalVariable(name: "__fd", arg: 1, scope: !2509, file: !2370, line: 523, type: !536)
!2514 = !DILocalVariable(name: "__filename", arg: 2, scope: !2509, file: !2370, line: 523, type: !541)
!2515 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2509, file: !2370, line: 523, type: !2467)
!2516 = !DILocalVariable(name: "__flag", arg: 4, scope: !2509, file: !2370, line: 523, type: !536)
!2517 = !DILocation(line: 0, scope: !2509)
!2518 = !DILocation(line: 526, column: 10, scope: !2509)
!2519 = !DILocation(line: 526, column: 3, scope: !2509)
!2520 = distinct !DISubprogram(name: "cgraph_gate_cp", scope: !3, file: !3, line: 1309, type: !1825, scopeLine: 1310, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2095)
!2521 = !DILocation(line: 1311, column: 10, scope: !2520)
!2522 = !DILocation(line: 1311, column: 3, scope: !2520)
!2523 = distinct !DISubprogram(name: "ipcp_driver", scope: !3, file: !3, line: 1253, type: !1829, scopeLine: 1254, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2095)
!2524 = !DILocation(line: 1255, column: 41, scope: !2523)
!2525 = !DILocation(line: 1255, column: 3, scope: !2523)
!2526 = !DILocation(line: 1256, column: 7, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2523, file: !3, line: 1256, column: 7)
!2528 = !DILocation(line: 1256, column: 7, scope: !2523)
!2529 = !DILocation(line: 1258, column: 7, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2527, file: !3, line: 1257, column: 5)
!2531 = !DILocation(line: 1259, column: 11, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2530, file: !3, line: 1259, column: 11)
!2533 = !DILocation(line: 1259, column: 22, scope: !2532)
!2534 = !DILocation(line: 1259, column: 11, scope: !2530)
!2535 = !DILocation(line: 1260, column: 31, scope: !2532)
!2536 = !DILocation(line: 1260, column: 9, scope: !2532)
!2537 = !DILocation(line: 1261, column: 37, scope: !2530)
!2538 = !DILocation(line: 1261, column: 7, scope: !2530)
!2539 = !DILocation(line: 1262, column: 5, scope: !2530)
!2540 = !DILocation(line: 1264, column: 3, scope: !2523)
!2541 = !DILocation(line: 1266, column: 3, scope: !2523)
!2542 = !DILocation(line: 1267, column: 7, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2523, file: !3, line: 1267, column: 7)
!2544 = !DILocation(line: 1267, column: 17, scope: !2543)
!2545 = !DILocation(line: 1267, column: 21, scope: !2543)
!2546 = !DILocation(line: 1267, column: 32, scope: !2543)
!2547 = !DILocation(line: 1267, column: 7, scope: !2523)
!2548 = !DILocation(line: 1269, column: 7, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2543, file: !3, line: 1268, column: 5)
!2550 = !DILocation(line: 1270, column: 32, scope: !2549)
!2551 = !DILocation(line: 1270, column: 7, scope: !2549)
!2552 = !DILocation(line: 1271, column: 5, scope: !2549)
!2553 = !DILocation(line: 1273, column: 3, scope: !2523)
!2554 = !DILocation(line: 1274, column: 7, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2523, file: !3, line: 1274, column: 7)
!2556 = !DILocation(line: 1274, column: 7, scope: !2523)
!2557 = !DILocation(line: 1275, column: 5, scope: !2555)
!2558 = !DILocation(line: 1276, column: 3, scope: !2523)
!2559 = distinct !DISubprogram(name: "ipcp_generate_summary", scope: !3, file: !3, line: 1281, type: !1844, scopeLine: 1282, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2095)
!2560 = !DILocation(line: 1283, column: 7, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2559, file: !3, line: 1283, column: 7)
!2562 = !DILocation(line: 1283, column: 7, scope: !2559)
!2563 = !DILocation(line: 1284, column: 5, scope: !2561)
!2564 = !DILocation(line: 1285, column: 3, scope: !2559)
!2565 = !DILocation(line: 1286, column: 3, scope: !2559)
!2566 = !DILocation(line: 1287, column: 3, scope: !2559)
!2567 = !DILocation(line: 1290, column: 3, scope: !2559)
!2568 = !DILocation(line: 1291, column: 1, scope: !2559)
!2569 = distinct !DISubprogram(name: "ipcp_write_summary", scope: !3, file: !3, line: 1295, type: !2570, scopeLine: 1296, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2573)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{null, !2572}
!2572 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_node_set", file: !433, line: 283, baseType: !1850)
!2573 = !{!2574}
!2574 = !DILocalVariable(name: "set", arg: 1, scope: !2569, file: !3, line: 1295, type: !2572)
!2575 = !DILocation(line: 0, scope: !2569)
!2576 = !DILocation(line: 1297, column: 3, scope: !2569)
!2577 = !DILocation(line: 1298, column: 1, scope: !2569)
!2578 = distinct !DISubprogram(name: "ipcp_read_summary", scope: !3, file: !3, line: 1302, type: !1844, scopeLine: 1303, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2095)
!2579 = !DILocation(line: 1304, column: 3, scope: !2578)
!2580 = !DILocation(line: 1305, column: 1, scope: !2578)
!2581 = distinct !DISubprogram(name: "ipcp_iterate_stage", scope: !3, file: !3, line: 733, type: !1844, scopeLine: 734, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2582)
!2582 = !{!2583}
!2583 = !DILocalVariable(name: "node", scope: !2581, file: !3, line: 735, type: !1760)
!2584 = !DILocation(line: 736, column: 24, scope: !2581)
!2585 = !DILocation(line: 738, column: 7, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 738, column: 7)
!2587 = !DILocation(line: 738, column: 7, scope: !2581)
!2588 = !DILocation(line: 739, column: 5, scope: !2586)
!2589 = !DILocation(line: 741, column: 7, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 741, column: 7)
!2591 = !DILocation(line: 741, column: 7, scope: !2581)
!2592 = !DILocation(line: 742, column: 5, scope: !2590)
!2593 = !DILocation(line: 744, column: 8, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 744, column: 3)
!2595 = !DILocation(line: 0, scope: !2594)
!2596 = !DILocation(line: 0, scope: !2581)
!2597 = !DILocation(line: 744, column: 3, scope: !2594)
!2598 = !DILocation(line: 746, column: 7, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2600, file: !3, line: 745, column: 5)
!2600 = distinct !DILexicalBlock(scope: !2594, file: !3, line: 744, column: 3)
!2601 = !DILocation(line: 747, column: 7, scope: !2599)
!2602 = !DILocation(line: 744, column: 48, scope: !2600)
!2603 = !DILocation(line: 744, column: 3, scope: !2600)
!2604 = distinct !{!2604, !2597, !2605}
!2605 = !DILocation(line: 748, column: 5, scope: !2594)
!2606 = !DILocation(line: 749, column: 7, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 749, column: 7)
!2608 = !DILocation(line: 749, column: 17, scope: !2607)
!2609 = !DILocation(line: 749, column: 21, scope: !2607)
!2610 = !DILocation(line: 749, column: 32, scope: !2607)
!2611 = !DILocation(line: 749, column: 7, scope: !2581)
!2612 = !DILocation(line: 751, column: 7, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2607, file: !3, line: 750, column: 5)
!2614 = !DILocation(line: 752, column: 34, scope: !2613)
!2615 = !DILocation(line: 752, column: 7, scope: !2613)
!2616 = !DILocation(line: 753, column: 5, scope: !2613)
!2617 = !DILocation(line: 755, column: 3, scope: !2581)
!2618 = !DILocation(line: 756, column: 7, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 756, column: 7)
!2620 = !DILocation(line: 756, column: 7, scope: !2581)
!2621 = !DILocation(line: 760, column: 7, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2619, file: !3, line: 759, column: 5)
!2623 = !DILocation(line: 761, column: 7, scope: !2622)
!2624 = !DILocation(line: 762, column: 5, scope: !2622)
!2625 = !DILocation(line: 763, column: 7, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 763, column: 7)
!2627 = !DILocation(line: 763, column: 7, scope: !2581)
!2628 = !DILocation(line: 765, column: 7, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2626, file: !3, line: 764, column: 5)
!2630 = !DILocation(line: 766, column: 32, scope: !2629)
!2631 = !DILocation(line: 766, column: 7, scope: !2629)
!2632 = !DILocation(line: 767, column: 11, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2629, file: !3, line: 767, column: 11)
!2634 = !DILocation(line: 767, column: 22, scope: !2633)
!2635 = !DILocation(line: 767, column: 11, scope: !2629)
!2636 = !DILocation(line: 768, column: 34, scope: !2633)
!2637 = !DILocation(line: 768, column: 9, scope: !2633)
!2638 = !DILocation(line: 770, column: 1, scope: !2581)
!2639 = distinct !DISubprogram(name: "ipcp_insert_stage", scope: !3, file: !3, line: 1086, type: !1844, scopeLine: 1087, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2640)
!2640 = !{!2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2658, !2659, !2660, !2661, !2666, !2668, !2669, !2670, !2671}
!2641 = !DILocalVariable(name: "node", scope: !2639, file: !3, line: 1088, type: !1760)
!2642 = !DILocalVariable(name: "node1", scope: !2639, file: !3, line: 1088, type: !1760)
!2643 = !DILocalVariable(name: "i", scope: !2639, file: !3, line: 1089, type: !536)
!2644 = !DILocalVariable(name: "redirect_callers", scope: !2639, file: !3, line: 1090, type: !2049)
!2645 = !DILocalVariable(name: "replace_trees", scope: !2639, file: !3, line: 1091, type: !1943)
!2646 = !DILocalVariable(name: "node_callers", scope: !2639, file: !3, line: 1092, type: !536)
!2647 = !DILocalVariable(name: "count", scope: !2639, file: !3, line: 1092, type: !536)
!2648 = !DILocalVariable(name: "parm_tree", scope: !2639, file: !3, line: 1093, type: !543)
!2649 = !DILocalVariable(name: "replace_param", scope: !2639, file: !3, line: 1094, type: !1956)
!2650 = !DILocalVariable(name: "heap", scope: !2639, file: !3, line: 1095, type: !2651)
!2651 = !DIDerivedType(tag: DW_TAG_typedef, name: "fibheap_t", file: !2036, line: 57, baseType: !2652)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fibheap", file: !2036, line: 52, size: 192, elements: !2654)
!2654 = !{!2655, !2656, !2657}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !2653, file: !2036, line: 54, baseType: !984, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !2653, file: !2036, line: 55, baseType: !2037, size: 64, offset: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2653, file: !2036, line: 56, baseType: !2037, size: 64, offset: 128)
!2658 = !DILocalVariable(name: "overall_size", scope: !2639, file: !3, line: 1096, type: !599)
!2659 = !DILocalVariable(name: "new_size", scope: !2639, file: !3, line: 1096, type: !599)
!2660 = !DILocalVariable(name: "max_new_size", scope: !2639, file: !3, line: 1097, type: !599)
!2661 = !DILocalVariable(name: "info", scope: !2662, file: !3, line: 1123, type: !2665)
!2662 = distinct !DILexicalBlock(scope: !2663, file: !3, line: 1122, column: 5)
!2663 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 1121, column: 3)
!2664 = distinct !DILexicalBlock(scope: !2639, file: !3, line: 1121, column: 3)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!2666 = !DILocalVariable(name: "info", scope: !2667, file: !3, line: 1138, type: !2665)
!2667 = distinct !DILexicalBlock(scope: !2639, file: !3, line: 1137, column: 5)
!2668 = !DILocalVariable(name: "growth", scope: !2667, file: !3, line: 1139, type: !536)
!2669 = !DILocalVariable(name: "args_to_skip", scope: !2667, file: !3, line: 1140, type: !1205)
!2670 = !DILocalVariable(name: "cs", scope: !2667, file: !3, line: 1141, type: !1765)
!2671 = !DILocalVariable(name: "lat", scope: !2672, file: !3, line: 1177, type: !2675)
!2672 = distinct !DILexicalBlock(scope: !2673, file: !3, line: 1176, column: 2)
!2673 = distinct !DILexicalBlock(scope: !2674, file: !3, line: 1175, column: 7)
!2674 = distinct !DILexicalBlock(scope: !2667, file: !3, line: 1175, column: 7)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!2676 = !DILocation(line: 0, scope: !2639)
!2677 = !DILocation(line: 1090, column: 3, scope: !2639)
!2678 = !DILocation(line: 1091, column: 3, scope: !2639)
!2679 = !DILocation(line: 1099, column: 3, scope: !2639)
!2680 = !DILocation(line: 1100, column: 3, scope: !2639)
!2681 = !DILocation(line: 1101, column: 7, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2639, file: !3, line: 1101, column: 7)
!2683 = !DILocation(line: 1101, column: 7, scope: !2639)
!2684 = !DILocation(line: 1102, column: 5, scope: !2682)
!2685 = !DILocation(line: 1104, column: 16, scope: !2639)
!2686 = !DILocation(line: 1104, column: 14, scope: !2639)
!2687 = !DILocation(line: 1106, column: 8, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2639, file: !3, line: 1106, column: 3)
!2689 = !DILocation(line: 0, scope: !2688)
!2690 = !DILocation(line: 1106, column: 3, scope: !2688)
!2691 = !DILocation(line: 1107, column: 15, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2693, file: !3, line: 1107, column: 9)
!2693 = distinct !DILexicalBlock(scope: !2688, file: !3, line: 1106, column: 3)
!2694 = !DILocation(line: 1107, column: 9, scope: !2692)
!2695 = !DILocation(line: 1107, column: 9, scope: !2693)
!2696 = !DILocation(line: 1109, column: 12, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 1109, column: 6)
!2698 = distinct !DILexicalBlock(scope: !2692, file: !3, line: 1108, column: 7)
!2699 = !DILocation(line: 1109, column: 20, scope: !2697)
!2700 = !DILocation(line: 1109, column: 18, scope: !2697)
!2701 = !DILocation(line: 1109, column: 6, scope: !2698)
!2702 = !DILocation(line: 1110, column: 14, scope: !2697)
!2703 = !DILocation(line: 1110, column: 4, scope: !2697)
!2704 = !DILocation(line: 1111, column: 45, scope: !2698)
!2705 = !DILocation(line: 1111, column: 18, scope: !2698)
!2706 = !DILocation(line: 1111, column: 15, scope: !2698)
!2707 = !DILocation(line: 1112, column: 7, scope: !2698)
!2708 = !DILocation(line: 1106, column: 48, scope: !2693)
!2709 = !DILocation(line: 1106, column: 3, scope: !2693)
!2710 = distinct !{!2710, !2690, !2711}
!2711 = !DILocation(line: 1112, column: 7, scope: !2688)
!2712 = !DILocation(line: 1115, column: 22, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2639, file: !3, line: 1115, column: 7)
!2714 = !DILocation(line: 1115, column: 20, scope: !2713)
!2715 = !DILocation(line: 1115, column: 7, scope: !2639)
!2716 = !DILocation(line: 1116, column: 5, scope: !2713)
!2717 = !DILocation(line: 1117, column: 33, scope: !2639)
!2718 = !DILocation(line: 1117, column: 31, scope: !2639)
!2719 = !DILocation(line: 1120, column: 10, scope: !2639)
!2720 = !DILocation(line: 1121, column: 8, scope: !2664)
!2721 = !DILocation(line: 0, scope: !2664)
!2722 = !DILocation(line: 1121, column: 3, scope: !2664)
!2723 = !DILocation(line: 1117, column: 70, scope: !2639)
!2724 = !DILocation(line: 1117, column: 76, scope: !2639)
!2725 = !DILocation(line: 1136, column: 3, scope: !2639)
!2726 = !DILocation(line: 1125, column: 18, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2662, file: !3, line: 1125, column: 11)
!2728 = !DILocation(line: 1125, column: 12, scope: !2727)
!2729 = !DILocation(line: 1125, column: 27, scope: !2727)
!2730 = !DILocation(line: 1125, column: 31, scope: !2727)
!2731 = !DILocation(line: 1125, column: 11, scope: !2662)
!2732 = !DILocation(line: 1127, column: 14, scope: !2662)
!2733 = !DILocation(line: 0, scope: !2662)
!2734 = !DILocation(line: 1128, column: 11, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2662, file: !3, line: 1128, column: 11)
!2736 = !DILocation(line: 1128, column: 11, scope: !2662)
!2737 = !DILocation(line: 1130, column: 11, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2662, file: !3, line: 1130, column: 11)
!2739 = !DILocation(line: 1130, column: 11, scope: !2662)
!2740 = !DILocation(line: 1131, column: 36, scope: !2738)
!2741 = !DILocation(line: 1131, column: 71, scope: !2738)
!2742 = !DILocation(line: 1131, column: 14, scope: !2738)
!2743 = !DILocation(line: 1131, column: 8, scope: !2738)
!2744 = !DILocation(line: 1131, column: 12, scope: !2738)
!2745 = !DILocation(line: 1131, column: 2, scope: !2738)
!2746 = !DILocation(line: 1121, column: 48, scope: !2663)
!2747 = !DILocation(line: 1121, column: 3, scope: !2663)
!2748 = distinct !{!2748, !2722, !2749}
!2749 = !DILocation(line: 1132, column: 6, scope: !2664)
!2750 = !DILocation(line: 1096, column: 26, scope: !2639)
!2751 = !DILocation(line: 1136, column: 11, scope: !2639)
!2752 = !DILocation(line: 1136, column: 10, scope: !2639)
!2753 = !DILocation(line: 0, scope: !2667)
!2754 = !DILocation(line: 1143, column: 36, scope: !2667)
!2755 = !DILocation(line: 1143, column: 14, scope: !2667)
!2756 = !DILocation(line: 1144, column: 13, scope: !2667)
!2757 = !DILocation(line: 1144, column: 17, scope: !2667)
!2758 = !DILocation(line: 1145, column: 11, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2667, file: !3, line: 1145, column: 11)
!2760 = !DILocation(line: 1145, column: 11, scope: !2667)
!2761 = !DILocation(line: 1147, column: 4, scope: !2759)
!2762 = !DILocation(line: 1146, column: 2, scope: !2759)
!2763 = !DILocation(line: 1149, column: 16, scope: !2667)
!2764 = !DILocation(line: 1151, column: 22, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2667, file: !3, line: 1151, column: 11)
!2766 = !DILocation(line: 1151, column: 20, scope: !2765)
!2767 = !DILocation(line: 1151, column: 29, scope: !2765)
!2768 = !DILocation(line: 1151, column: 11, scope: !2667)
!2769 = !DILocation(line: 1153, column: 11, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2667, file: !3, line: 1153, column: 11)
!2771 = !DILocation(line: 1154, column: 4, scope: !2770)
!2772 = !DILocation(line: 1154, column: 37, scope: !2770)
!2773 = !DILocation(line: 1154, column: 7, scope: !2770)
!2774 = !DILocation(line: 1153, column: 11, scope: !2667)
!2775 = !DILocation(line: 1156, column: 8, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2777, file: !3, line: 1156, column: 8)
!2777 = distinct !DILexicalBlock(scope: !2770, file: !3, line: 1155, column: 2)
!2778 = !DILocation(line: 1156, column: 8, scope: !2777)
!2779 = distinct !{!2779, !2725, !2780}
!2780 = !DILocation(line: 1235, column: 5, scope: !2639)
!2781 = !DILocation(line: 1157, column: 6, scope: !2776)
!2782 = !DILocation(line: 1164, column: 23, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2667, file: !3, line: 1164, column: 7)
!2784 = !DILocation(line: 1164, column: 12, scope: !2783)
!2785 = !DILocation(line: 0, scope: !2783)
!2786 = !DILocation(line: 1164, column: 7, scope: !2783)
!2787 = !DILocation(line: 1165, column: 10, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2789, file: !3, line: 1165, column: 6)
!2789 = distinct !DILexicalBlock(scope: !2783, file: !3, line: 1164, column: 7)
!2790 = !DILocation(line: 1165, column: 17, scope: !2788)
!2791 = !DILocation(line: 1165, column: 25, scope: !2788)
!2792 = !DILocation(line: 1165, column: 28, scope: !2788)
!2793 = !DILocation(line: 1165, column: 6, scope: !2789)
!2794 = !DILocation(line: 1164, column: 53, scope: !2789)
!2795 = !DILocation(line: 1164, column: 7, scope: !2789)
!2796 = distinct !{!2796, !2786, !2797}
!2797 = !DILocation(line: 1166, column: 4, scope: !2783)
!2798 = !DILocation(line: 1167, column: 15, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2667, file: !3, line: 1167, column: 11)
!2800 = !DILocation(line: 1167, column: 18, scope: !2799)
!2801 = !DILocation(line: 1167, column: 11, scope: !2667)
!2802 = !DILocation(line: 1168, column: 18, scope: !2799)
!2803 = !DILocation(line: 1168, column: 36, scope: !2799)
!2804 = !DILocation(line: 1168, column: 2, scope: !2799)
!2805 = !DILocation(line: 1170, column: 14, scope: !2667)
!2806 = !DILocation(line: 1171, column: 15, scope: !2667)
!2807 = !DILocation(line: 1173, column: 23, scope: !2667)
!2808 = !DILocation(line: 1173, column: 21, scope: !2667)
!2809 = !DILocation(line: 1174, column: 22, scope: !2667)
!2810 = !DILocation(line: 0, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2672, file: !3, line: 1181, column: 8)
!2812 = !DILocation(line: 1175, column: 12, scope: !2674)
!2813 = !DILocation(line: 0, scope: !2674)
!2814 = !DILocation(line: 1175, column: 21, scope: !2673)
!2815 = !DILocation(line: 1175, column: 7, scope: !2674)
!2816 = !DILocation(line: 1177, column: 31, scope: !2672)
!2817 = !DILocation(line: 0, scope: !2672)
!2818 = !DILocation(line: 1178, column: 16, scope: !2672)
!2819 = !DILocation(line: 1181, column: 8, scope: !2811)
!2820 = !DILocation(line: 1182, column: 8, scope: !2811)
!2821 = !DILocation(line: 1182, column: 32, scope: !2811)
!2822 = !DILocation(line: 1182, column: 12, scope: !2811)
!2823 = !DILocation(line: 1181, column: 8, scope: !2672)
!2824 = !DILocation(line: 1185, column: 8, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2811, file: !3, line: 1184, column: 6)
!2826 = !DILocation(line: 1186, column: 8, scope: !2825)
!2827 = !DILocation(line: 1189, column: 13, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2672, file: !3, line: 1189, column: 8)
!2829 = !DILocation(line: 1189, column: 18, scope: !2828)
!2830 = !DILocation(line: 1189, column: 8, scope: !2672)
!2831 = !DILocation(line: 1192, column: 3, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2828, file: !3, line: 1190, column: 6)
!2833 = !DILocation(line: 1193, column: 8, scope: !2832)
!2834 = !DILocation(line: 1194, column: 8, scope: !2832)
!2835 = !DILocation(line: 1195, column: 6, scope: !2832)
!2836 = !DILocation(line: 1175, column: 31, scope: !2673)
!2837 = !DILocation(line: 1175, column: 7, scope: !2673)
!2838 = distinct !{!2838, !2815, !2839}
!2839 = !DILocation(line: 1196, column: 2, scope: !2674)
!2840 = !DILocation(line: 1200, column: 12, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2667, file: !3, line: 1200, column: 7)
!2842 = !DILocation(line: 0, scope: !2841)
!2843 = !DILocation(line: 1200, column: 35, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2841, file: !3, line: 1200, column: 7)
!2845 = !DILocation(line: 1200, column: 7, scope: !2841)
!2846 = !DILocation(line: 1201, column: 14, scope: !2844)
!2847 = !DILocation(line: 1200, column: 53, scope: !2844)
!2848 = !DILocation(line: 1200, column: 7, scope: !2844)
!2849 = distinct !{!2849, !2845, !2850}
!2850 = !DILocation(line: 1201, column: 14, scope: !2841)
!2851 = !DILocation(line: 1202, column: 26, scope: !2667)
!2852 = !DILocation(line: 1202, column: 24, scope: !2667)
!2853 = !DILocation(line: 1203, column: 12, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2667, file: !3, line: 1203, column: 7)
!2855 = !DILocation(line: 0, scope: !2854)
!2856 = !DILocation(line: 1203, column: 35, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2854, file: !3, line: 1203, column: 7)
!2858 = !DILocation(line: 1203, column: 7, scope: !2854)
!2859 = !DILocation(line: 1204, column: 2, scope: !2857)
!2860 = !DILocation(line: 1203, column: 53, scope: !2857)
!2861 = !DILocation(line: 1203, column: 7, scope: !2857)
!2862 = distinct !{!2862, !2858, !2863}
!2863 = !DILocation(line: 1204, column: 2, scope: !2854)
!2864 = !DILocation(line: 1209, column: 55, scope: !2667)
!2865 = !DILocation(line: 1209, column: 2, scope: !2667)
!2866 = !DILocation(line: 1212, column: 7, scope: !2667)
!2867 = !DILocation(line: 1213, column: 21, scope: !2667)
!2868 = !DILocation(line: 1215, column: 17, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2667, file: !3, line: 1215, column: 11)
!2870 = !DILocation(line: 1215, column: 11, scope: !2667)
!2871 = !DILocation(line: 1217, column: 11, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2667, file: !3, line: 1217, column: 11)
!2873 = !DILocation(line: 1217, column: 11, scope: !2667)
!2874 = !DILocation(line: 1219, column: 4, scope: !2872)
!2875 = !DILocation(line: 1219, column: 42, scope: !2872)
!2876 = !DILocation(line: 1218, column: 2, scope: !2872)
!2877 = !DILocation(line: 1220, column: 7, scope: !2667)
!2878 = !DILocation(line: 1224, column: 11, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2667, file: !3, line: 1224, column: 11)
!2880 = !DILocation(line: 1224, column: 11, scope: !2667)
!2881 = !DILocation(line: 1225, column: 32, scope: !2879)
!2882 = !DILocation(line: 1225, column: 49, scope: !2879)
!2883 = !DILocation(line: 1225, column: 2, scope: !2879)
!2884 = !DILocation(line: 1227, column: 23, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2667, file: !3, line: 1227, column: 7)
!2886 = !DILocation(line: 1227, column: 12, scope: !2885)
!2887 = !DILocation(line: 0, scope: !2885)
!2888 = !DILocation(line: 1227, column: 7, scope: !2885)
!2889 = !DILocation(line: 1228, column: 17, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2891, file: !3, line: 1228, column: 13)
!2891 = distinct !DILexicalBlock(scope: !2885, file: !3, line: 1227, column: 7)
!2892 = !DILocation(line: 1228, column: 25, scope: !2890)
!2893 = !DILocation(line: 1228, column: 13, scope: !2890)
!2894 = !DILocation(line: 1228, column: 13, scope: !2891)
!2895 = !DILocation(line: 1230, column: 6, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2890, file: !3, line: 1229, column: 4)
!2897 = !DILocation(line: 1232, column: 48, scope: !2896)
!2898 = !DILocation(line: 1232, column: 16, scope: !2896)
!2899 = !DILocation(line: 1233, column: 16, scope: !2896)
!2900 = !DILocation(line: 1231, column: 24, scope: !2896)
!2901 = !DILocation(line: 1231, column: 10, scope: !2896)
!2902 = !DILocation(line: 1231, column: 18, scope: !2896)
!2903 = !DILocation(line: 1231, column: 22, scope: !2896)
!2904 = !DILocation(line: 1234, column: 4, scope: !2896)
!2905 = !DILocation(line: 1227, column: 45, scope: !2891)
!2906 = !DILocation(line: 1227, column: 7, scope: !2891)
!2907 = distinct !{!2907, !2888, !2908}
!2908 = !DILocation(line: 1234, column: 4, scope: !2885)
!2909 = !DILocation(line: 1237, column: 3, scope: !2639)
!2910 = !DILocation(line: 1237, column: 11, scope: !2639)
!2911 = !DILocation(line: 1237, column: 10, scope: !2639)
!2912 = !DILocation(line: 1239, column: 11, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2914, file: !3, line: 1239, column: 11)
!2914 = distinct !DILexicalBlock(scope: !2639, file: !3, line: 1238, column: 5)
!2915 = !DILocation(line: 1239, column: 11, scope: !2914)
!2916 = !DILocation(line: 1241, column: 4, scope: !2913)
!2917 = !DILocation(line: 1240, column: 2, scope: !2913)
!2918 = !DILocation(line: 1242, column: 37, scope: !2914)
!2919 = !DILocation(line: 1242, column: 14, scope: !2914)
!2920 = !DILocation(line: 1243, column: 13, scope: !2914)
!2921 = !DILocation(line: 1243, column: 17, scope: !2914)
!2922 = distinct !{!2922, !2909, !2923}
!2923 = !DILocation(line: 1244, column: 5, scope: !2639)
!2924 = !DILocation(line: 1245, column: 3, scope: !2639)
!2925 = !DILocation(line: 1246, column: 3, scope: !2639)
!2926 = !DILocation(line: 1247, column: 3, scope: !2639)
!2927 = !DILocation(line: 1248, column: 3, scope: !2639)
!2928 = !DILocation(line: 1249, column: 1, scope: !2639)
!2929 = distinct !DISubprogram(name: "ipcp_print_profile_data", scope: !3, file: !3, line: 833, type: !2930, scopeLine: 834, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2932)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{null, !2102}
!2932 = !{!2933}
!2933 = !DILocalVariable(name: "f", arg: 1, scope: !2929, file: !3, line: 833, type: !2102)
!2934 = !DILocation(line: 0, scope: !2929)
!2935 = !DILocation(line: 835, column: 3, scope: !2929)
!2936 = !DILocation(line: 836, column: 3, scope: !2929)
!2937 = !DILocation(line: 837, column: 3, scope: !2929)
!2938 = !DILocation(line: 838, column: 3, scope: !2929)
!2939 = !DILocation(line: 839, column: 1, scope: !2929)
!2940 = distinct !DISubprogram(name: "ipcp_initialize_node_lattices", scope: !3, file: !3, line: 539, type: !1872, scopeLine: 540, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2941)
!2941 = !{!2942, !2943, !2944, !2945}
!2942 = !DILocalVariable(name: "node", arg: 1, scope: !2940, file: !3, line: 539, type: !1760)
!2943 = !DILocalVariable(name: "i", scope: !2940, file: !3, line: 541, type: !536)
!2944 = !DILocalVariable(name: "info", scope: !2940, file: !3, line: 542, type: !2665)
!2945 = !DILocalVariable(name: "type", scope: !2940, file: !3, line: 543, type: !455)
!2946 = !DILocation(line: 0, scope: !2940)
!2947 = !DILocation(line: 542, column: 34, scope: !2940)
!2948 = !DILocation(line: 545, column: 7, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2940, file: !3, line: 545, column: 7)
!2950 = !DILocation(line: 545, column: 7, scope: !2940)
!2951 = !DILocation(line: 547, column: 12, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2949, file: !3, line: 547, column: 12)
!2953 = !DILocation(line: 547, column: 12, scope: !2949)
!2954 = !DILocation(line: 551, column: 12, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2952, file: !3, line: 551, column: 12)
!2956 = !DILocation(line: 551, column: 12, scope: !2952)
!2957 = !DILocation(line: 552, column: 42, scope: !2955)
!2958 = !DILocation(line: 552, column: 5, scope: !2955)
!2959 = !DILocation(line: 0, scope: !2949)
!2960 = !DILocation(line: 556, column: 8, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2940, file: !3, line: 556, column: 3)
!2962 = !DILocation(line: 0, scope: !2961)
!2963 = !DILocation(line: 556, column: 19, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2961, file: !3, line: 556, column: 3)
!2965 = !DILocation(line: 556, column: 17, scope: !2964)
!2966 = !DILocation(line: 556, column: 3, scope: !2961)
!2967 = !DILocation(line: 557, column: 5, scope: !2964)
!2968 = !DILocation(line: 557, column: 33, scope: !2964)
!2969 = !DILocation(line: 557, column: 38, scope: !2964)
!2970 = !DILocation(line: 556, column: 49, scope: !2964)
!2971 = !DILocation(line: 556, column: 3, scope: !2964)
!2972 = distinct !{!2972, !2966, !2973}
!2973 = !DILocation(line: 557, column: 40, scope: !2961)
!2974 = !DILocation(line: 558, column: 1, scope: !2940)
!2975 = distinct !DISubprogram(name: "ipcp_compute_node_scale", scope: !3, file: !3, line: 590, type: !1872, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2976)
!2976 = !{!2977, !2978, !2979}
!2977 = !DILocalVariable(name: "node", arg: 1, scope: !2975, file: !3, line: 590, type: !1760)
!2978 = !DILocalVariable(name: "sum", scope: !2975, file: !3, line: 592, type: !1050)
!2979 = !DILocalVariable(name: "cs", scope: !2975, file: !3, line: 593, type: !1765)
!2980 = !DILocation(line: 0, scope: !2975)
!2981 = !DILocation(line: 597, column: 19, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2975, file: !3, line: 597, column: 3)
!2983 = !DILocation(line: 597, column: 8, scope: !2982)
!2984 = !DILocation(line: 0, scope: !2982)
!2985 = !DILocation(line: 597, column: 31, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2982, file: !3, line: 597, column: 3)
!2987 = !DILocation(line: 597, column: 3, scope: !2982)
!2988 = !DILocation(line: 598, column: 16, scope: !2986)
!2989 = !DILocation(line: 598, column: 9, scope: !2986)
!2990 = !DILocation(line: 597, column: 49, scope: !2986)
!2991 = !DILocation(line: 597, column: 3, scope: !2986)
!2992 = distinct !{!2992, !2987, !2993}
!2993 = !DILocation(line: 598, column: 16, scope: !2982)
!2994 = !DILocation(line: 603, column: 19, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2975, file: !3, line: 603, column: 7)
!2996 = !DILocation(line: 603, column: 25, scope: !2995)
!2997 = !DILocation(line: 603, column: 29, scope: !2995)
!2998 = !DILocation(line: 603, column: 11, scope: !2995)
!2999 = !DILocation(line: 603, column: 7, scope: !2975)
!3000 = !DILocation(line: 604, column: 5, scope: !2995)
!3001 = !DILocation(line: 605, column: 19, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2975, file: !3, line: 605, column: 7)
!3003 = !DILocation(line: 605, column: 7, scope: !2975)
!3004 = !DILocation(line: 606, column: 5, scope: !3002)
!3005 = !DILocation(line: 608, column: 36, scope: !3002)
!3006 = !DILocation(line: 608, column: 55, scope: !3002)
!3007 = !DILocation(line: 608, column: 5, scope: !3002)
!3008 = !DILocation(line: 609, column: 1, scope: !2975)
!3009 = distinct !DISubprogram(name: "ipcp_print_all_lattices", scope: !3, file: !3, line: 367, type: !2930, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3010)
!3010 = !{!3011, !3012, !3013, !3014, !3015, !3019}
!3011 = !DILocalVariable(name: "f", arg: 1, scope: !3009, file: !3, line: 367, type: !2102)
!3012 = !DILocalVariable(name: "node", scope: !3009, file: !3, line: 369, type: !1760)
!3013 = !DILocalVariable(name: "i", scope: !3009, file: !3, line: 370, type: !536)
!3014 = !DILocalVariable(name: "count", scope: !3009, file: !3, line: 370, type: !536)
!3015 = !DILocalVariable(name: "info", scope: !3016, file: !3, line: 375, type: !2665)
!3016 = distinct !DILexicalBlock(scope: !3017, file: !3, line: 374, column: 5)
!3017 = distinct !DILexicalBlock(scope: !3018, file: !3, line: 373, column: 3)
!3018 = distinct !DILexicalBlock(scope: !3009, file: !3, line: 373, column: 3)
!3019 = !DILocalVariable(name: "lat", scope: !3020, file: !3, line: 384, type: !2675)
!3020 = distinct !DILexicalBlock(scope: !3021, file: !3, line: 383, column: 2)
!3021 = distinct !DILexicalBlock(scope: !3022, file: !3, line: 382, column: 7)
!3022 = distinct !DILexicalBlock(scope: !3016, file: !3, line: 382, column: 7)
!3023 = !DILocation(line: 0, scope: !3009)
!3024 = !DILocation(line: 372, column: 3, scope: !3009)
!3025 = !DILocation(line: 373, column: 8, scope: !3018)
!3026 = !DILocation(line: 0, scope: !3018)
!3027 = !DILocation(line: 373, column: 3, scope: !3018)
!3028 = !DILocation(line: 377, column: 18, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3016, file: !3, line: 377, column: 11)
!3030 = !DILocation(line: 377, column: 12, scope: !3029)
!3031 = !DILocation(line: 377, column: 11, scope: !3016)
!3032 = !DILocation(line: 379, column: 14, scope: !3016)
!3033 = !DILocation(line: 0, scope: !3016)
!3034 = !DILocation(line: 380, column: 36, scope: !3016)
!3035 = !DILocation(line: 380, column: 7, scope: !3016)
!3036 = !DILocation(line: 381, column: 15, scope: !3016)
!3037 = !DILocation(line: 382, column: 12, scope: !3022)
!3038 = !DILocation(line: 0, scope: !3022)
!3039 = !DILocation(line: 382, column: 21, scope: !3021)
!3040 = !DILocation(line: 382, column: 7, scope: !3022)
!3041 = !DILocation(line: 384, column: 31, scope: !3020)
!3042 = !DILocation(line: 0, scope: !3020)
!3043 = !DILocation(line: 386, column: 4, scope: !3020)
!3044 = !DILocation(line: 387, column: 13, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3020, file: !3, line: 387, column: 8)
!3046 = !DILocation(line: 387, column: 18, scope: !3045)
!3047 = !DILocation(line: 387, column: 8, scope: !3020)
!3048 = !DILocation(line: 389, column: 8, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3045, file: !3, line: 388, column: 6)
!3050 = !DILocation(line: 390, column: 36, scope: !3049)
!3051 = !DILocation(line: 390, column: 8, scope: !3049)
!3052 = !DILocation(line: 391, column: 8, scope: !3049)
!3053 = !DILocation(line: 392, column: 6, scope: !3049)
!3054 = !DILocation(line: 393, column: 23, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3045, file: !3, line: 393, column: 13)
!3056 = !DILocation(line: 393, column: 13, scope: !3045)
!3057 = !DILocation(line: 394, column: 6, scope: !3055)
!3058 = !DILocation(line: 396, column: 6, scope: !3055)
!3059 = !DILocation(line: 382, column: 31, scope: !3021)
!3060 = !DILocation(line: 382, column: 7, scope: !3021)
!3061 = distinct !{!3061, !3040, !3062}
!3062 = !DILocation(line: 397, column: 2, scope: !3022)
!3063 = !DILocation(line: 373, column: 48, scope: !3017)
!3064 = !DILocation(line: 373, column: 3, scope: !3017)
!3065 = distinct !{!3065, !3027, !3066}
!3066 = !DILocation(line: 398, column: 5, scope: !3018)
!3067 = !DILocation(line: 399, column: 1, scope: !3009)
!3068 = distinct !DISubprogram(name: "ipcp_function_scale_print", scope: !3, file: !3, line: 784, type: !2930, scopeLine: 785, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3069)
!3069 = !{!3070, !3071}
!3070 = !DILocalVariable(name: "f", arg: 1, scope: !3068, file: !3, line: 784, type: !2102)
!3071 = !DILocalVariable(name: "node", scope: !3068, file: !3, line: 786, type: !1760)
!3072 = !DILocation(line: 0, scope: !3068)
!3073 = !DILocation(line: 788, column: 8, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3068, file: !3, line: 788, column: 3)
!3075 = !DILocation(line: 0, scope: !3074)
!3076 = !DILocation(line: 788, column: 3, scope: !3074)
!3077 = !DILocation(line: 790, column: 18, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3079, file: !3, line: 790, column: 11)
!3079 = distinct !DILexicalBlock(scope: !3080, file: !3, line: 789, column: 5)
!3080 = distinct !DILexicalBlock(scope: !3074, file: !3, line: 788, column: 3)
!3081 = !DILocation(line: 790, column: 12, scope: !3078)
!3082 = !DILocation(line: 790, column: 11, scope: !3079)
!3083 = !DILocation(line: 792, column: 46, scope: !3079)
!3084 = !DILocation(line: 792, column: 7, scope: !3079)
!3085 = !DILocation(line: 794, column: 33, scope: !3079)
!3086 = !DILocation(line: 793, column: 7, scope: !3079)
!3087 = !DILocation(line: 795, column: 5, scope: !3079)
!3088 = !DILocation(line: 788, column: 48, scope: !3080)
!3089 = !DILocation(line: 788, column: 3, scope: !3080)
!3090 = distinct !{!3090, !3076, !3091}
!3091 = !DILocation(line: 795, column: 5, scope: !3074)
!3092 = !DILocation(line: 796, column: 1, scope: !3068)
!3093 = distinct !DISubprogram(name: "ipcp_propagate_stage", scope: !3, file: !3, line: 681, type: !1844, scopeLine: 682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3094)
!3094 = !{!3095, !3096, !3097, !3098, !3099, !3100, !3101, !3107, !3108, !3110, !3111, !3115}
!3095 = !DILocalVariable(name: "i", scope: !3093, file: !3, line: 683, type: !536)
!3096 = !DILocalVariable(name: "inc_lat", scope: !3093, file: !3, line: 684, type: !1740)
!3097 = !DILocalVariable(name: "new_lat", scope: !3093, file: !3, line: 685, type: !1740)
!3098 = !DILocalVariable(name: "dest_lat", scope: !3093, file: !3, line: 686, type: !2675)
!3099 = !DILocalVariable(name: "cs", scope: !3093, file: !3, line: 687, type: !1765)
!3100 = !DILocalVariable(name: "jump_func", scope: !3093, file: !3, line: 688, type: !2010)
!3101 = !DILocalVariable(name: "wl", scope: !3093, file: !3, line: 689, type: !3102)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_func_list", file: !456, line: 390, size: 128, elements: !3104)
!3104 = !{!3105, !3106}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3103, file: !456, line: 392, baseType: !1760, size: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3103, file: !456, line: 393, baseType: !3102, size: 64, offset: 64)
!3107 = !DILocalVariable(name: "count", scope: !3093, file: !3, line: 690, type: !536)
!3108 = !DILocalVariable(name: "node", scope: !3109, file: !3, line: 699, type: !1760)
!3109 = distinct !DILexicalBlock(scope: !3093, file: !3, line: 698, column: 5)
!3110 = !DILocalVariable(name: "info", scope: !3109, file: !3, line: 700, type: !2665)
!3111 = !DILocalVariable(name: "callee_info", scope: !3112, file: !3, line: 704, type: !2665)
!3112 = distinct !DILexicalBlock(scope: !3113, file: !3, line: 703, column: 2)
!3113 = distinct !DILexicalBlock(scope: !3114, file: !3, line: 702, column: 7)
!3114 = distinct !DILexicalBlock(scope: !3109, file: !3, line: 702, column: 7)
!3115 = !DILocalVariable(name: "args", scope: !3112, file: !3, line: 705, type: !3116)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!3117 = !DILocation(line: 684, column: 3, scope: !3093)
!3118 = !DILocation(line: 684, column: 23, scope: !3093)
!3119 = !DILocation(line: 685, column: 3, scope: !3093)
!3120 = !DILocation(line: 685, column: 23, scope: !3093)
!3121 = !DILocation(line: 689, column: 3, scope: !3093)
!3122 = !DILocation(line: 692, column: 3, scope: !3093)
!3123 = !DILocation(line: 693, column: 3, scope: !3093)
!3124 = !DILocation(line: 696, column: 8, scope: !3093)
!3125 = !DILocation(line: 0, scope: !3093)
!3126 = !DILocation(line: 696, column: 6, scope: !3093)
!3127 = !DILocation(line: 0, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3129, file: !3, line: 720, column: 3)
!3129 = distinct !DILexicalBlock(scope: !3130, file: !3, line: 719, column: 12)
!3130 = distinct !DILexicalBlock(scope: !3131, file: !3, line: 714, column: 6)
!3131 = distinct !DILexicalBlock(scope: !3132, file: !3, line: 713, column: 4)
!3132 = distinct !DILexicalBlock(scope: !3112, file: !3, line: 713, column: 4)
!3133 = !DILocation(line: 697, column: 3, scope: !3093)
!3134 = !DILocation(line: 697, column: 10, scope: !3093)
!3135 = !DILocation(line: 699, column: 34, scope: !3109)
!3136 = !DILocation(line: 0, scope: !3109)
!3137 = !DILocation(line: 700, column: 38, scope: !3109)
!3138 = !DILocation(line: 702, column: 23, scope: !3114)
!3139 = !DILocation(line: 702, column: 12, scope: !3114)
!3140 = !DILocation(line: 0, scope: !3114)
!3141 = !DILocation(line: 702, column: 7, scope: !3114)
!3142 = distinct !{!3142, !3133, !3143}
!3143 = !DILocation(line: 727, column: 5, scope: !3093)
!3144 = !DILocation(line: 704, column: 42, scope: !3112)
!3145 = !DILocation(line: 0, scope: !3112)
!3146 = !DILocation(line: 705, column: 33, scope: !3112)
!3147 = !DILocation(line: 707, column: 8, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3112, file: !3, line: 707, column: 8)
!3149 = !DILocation(line: 708, column: 8, scope: !3148)
!3150 = !DILocation(line: 708, column: 16, scope: !3148)
!3151 = !DILocation(line: 708, column: 24, scope: !3148)
!3152 = !DILocation(line: 708, column: 12, scope: !3148)
!3153 = !DILocation(line: 709, column: 8, scope: !3148)
!3154 = !DILocation(line: 709, column: 11, scope: !3148)
!3155 = !DILocation(line: 707, column: 8, scope: !3112)
!3156 = !DILocation(line: 712, column: 12, scope: !3112)
!3157 = !DILocation(line: 713, column: 9, scope: !3132)
!3158 = !DILocation(line: 0, scope: !3132)
!3159 = !DILocation(line: 713, column: 18, scope: !3131)
!3160 = !DILocation(line: 713, column: 4, scope: !3132)
!3161 = !DILocation(line: 715, column: 20, scope: !3130)
!3162 = !DILocation(line: 716, column: 8, scope: !3130)
!3163 = !DILocation(line: 717, column: 19, scope: !3130)
!3164 = !DILocation(line: 718, column: 8, scope: !3130)
!3165 = !DILocation(line: 719, column: 12, scope: !3129)
!3166 = !DILocation(line: 719, column: 12, scope: !3130)
!3167 = !DILocation(line: 721, column: 30, scope: !3128)
!3168 = !DILocation(line: 721, column: 15, scope: !3128)
!3169 = !DILocation(line: 721, column: 20, scope: !3128)
!3170 = !DILocation(line: 722, column: 34, scope: !3128)
!3171 = !DILocation(line: 722, column: 15, scope: !3128)
!3172 = !DILocation(line: 722, column: 24, scope: !3128)
!3173 = !DILocation(line: 723, column: 37, scope: !3128)
!3174 = !DILocation(line: 723, column: 5, scope: !3128)
!3175 = !DILocation(line: 724, column: 3, scope: !3128)
!3176 = !DILocation(line: 713, column: 28, scope: !3131)
!3177 = !DILocation(line: 713, column: 4, scope: !3131)
!3178 = distinct !{!3178, !3160, !3179}
!3179 = !DILocation(line: 725, column: 6, scope: !3132)
!3180 = !DILocation(line: 702, column: 45, scope: !3113)
!3181 = !DILocation(line: 702, column: 7, scope: !3113)
!3182 = distinct !{!3182, !3141, !3183}
!3183 = !DILocation(line: 726, column: 2, scope: !3114)
!3184 = !DILocation(line: 728, column: 1, scope: !3093)
!3185 = distinct !DISubprogram(name: "ipcp_change_tops_to_bottom", scope: !3, file: !3, line: 647, type: !1825, scopeLine: 648, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3186)
!3186 = !{!3187, !3188, !3189, !3190, !3191, !3195}
!3187 = !DILocalVariable(name: "i", scope: !3185, file: !3, line: 649, type: !536)
!3188 = !DILocalVariable(name: "count", scope: !3185, file: !3, line: 649, type: !536)
!3189 = !DILocalVariable(name: "node", scope: !3185, file: !3, line: 650, type: !1760)
!3190 = !DILocalVariable(name: "prop_again", scope: !3185, file: !3, line: 651, type: !535)
!3191 = !DILocalVariable(name: "info", scope: !3192, file: !3, line: 656, type: !2665)
!3192 = distinct !DILexicalBlock(scope: !3193, file: !3, line: 655, column: 5)
!3193 = distinct !DILexicalBlock(scope: !3194, file: !3, line: 654, column: 3)
!3194 = distinct !DILexicalBlock(scope: !3185, file: !3, line: 654, column: 3)
!3195 = !DILocalVariable(name: "lat", scope: !3196, file: !3, line: 660, type: !2675)
!3196 = distinct !DILexicalBlock(scope: !3197, file: !3, line: 659, column: 2)
!3197 = distinct !DILexicalBlock(scope: !3198, file: !3, line: 658, column: 7)
!3198 = distinct !DILexicalBlock(scope: !3192, file: !3, line: 658, column: 7)
!3199 = !DILocation(line: 0, scope: !3185)
!3200 = !DILocation(line: 654, column: 8, scope: !3194)
!3201 = !DILocation(line: 653, column: 14, scope: !3185)
!3202 = !DILocation(line: 0, scope: !3194)
!3203 = !DILocation(line: 654, column: 3, scope: !3194)
!3204 = !DILocation(line: 656, column: 38, scope: !3192)
!3205 = !DILocation(line: 0, scope: !3192)
!3206 = !DILocation(line: 657, column: 15, scope: !3192)
!3207 = !DILocation(line: 658, column: 12, scope: !3198)
!3208 = !DILocation(line: 0, scope: !3198)
!3209 = !DILocation(line: 658, column: 21, scope: !3197)
!3210 = !DILocation(line: 658, column: 7, scope: !3198)
!3211 = !DILocation(line: 660, column: 31, scope: !3196)
!3212 = !DILocation(line: 0, scope: !3196)
!3213 = !DILocation(line: 661, column: 13, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3196, file: !3, line: 661, column: 8)
!3215 = !DILocation(line: 661, column: 18, scope: !3214)
!3216 = !DILocation(line: 661, column: 8, scope: !3196)
!3217 = !DILocation(line: 664, column: 12, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3219, file: !3, line: 664, column: 12)
!3219 = distinct !DILexicalBlock(scope: !3214, file: !3, line: 662, column: 6)
!3220 = !DILocation(line: 664, column: 12, scope: !3219)
!3221 = !DILocation(line: 666, column: 5, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3218, file: !3, line: 665, column: 3)
!3223 = !DILocation(line: 667, column: 25, scope: !3222)
!3224 = !DILocation(line: 667, column: 36, scope: !3222)
!3225 = !DILocation(line: 667, column: 5, scope: !3222)
!3226 = !DILocation(line: 668, column: 14, scope: !3222)
!3227 = !DILocation(line: 669, column: 7, scope: !3222)
!3228 = !DILocation(line: 668, column: 5, scope: !3222)
!3229 = !DILocation(line: 670, column: 3, scope: !3222)
!3230 = !DILocation(line: 671, column: 18, scope: !3219)
!3231 = !DILocation(line: 672, column: 6, scope: !3219)
!3232 = !DILocation(line: 658, column: 31, scope: !3197)
!3233 = !DILocation(line: 658, column: 7, scope: !3197)
!3234 = distinct !{!3234, !3210, !3235}
!3235 = !DILocation(line: 673, column: 2, scope: !3198)
!3236 = !DILocation(line: 654, column: 48, scope: !3193)
!3237 = !DILocation(line: 654, column: 3, scope: !3193)
!3238 = distinct !{!3238, !3203, !3239}
!3239 = !DILocation(line: 674, column: 5, scope: !3194)
!3240 = !DILocation(line: 675, column: 3, scope: !3185)
!3241 = distinct !DISubprogram(name: "VEC_ipa_node_params_t_base_index", scope: !456, file: !456, line: 314, type: !3242, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3246)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!3244, !3245, !7}
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!3246 = !{!3247, !3248}
!3247 = !DILocalVariable(name: "vec_", arg: 1, scope: !3241, file: !456, line: 314, type: !3245)
!3248 = !DILocalVariable(name: "ix_", arg: 2, scope: !3241, file: !456, line: 314, type: !7)
!3249 = !DILocation(line: 0, scope: !3241)
!3250 = !DILocation(line: 314, column: 1, scope: !3241)
!3251 = distinct !DISubprogram(name: "ipa_is_called_with_var_arguments", scope: !456, file: !456, line: 261, type: !3252, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3254)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{!535, !2665}
!3254 = !{!3255}
!3255 = !DILocalVariable(name: "info", arg: 1, scope: !3251, file: !456, line: 261, type: !2665)
!3256 = !DILocation(line: 0, scope: !3251)
!3257 = !DILocation(line: 263, column: 16, scope: !3251)
!3258 = !DILocation(line: 263, column: 3, scope: !3251)
!3259 = distinct !DISubprogram(name: "cgraph_only_called_directly_p", scope: !433, file: !433, line: 715, type: !3260, scopeLine: 716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3262)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!535, !1760}
!3262 = !{!3263}
!3263 = !DILocalVariable(name: "node", arg: 1, scope: !3259, file: !433, line: 715, type: !1760)
!3264 = !DILocation(line: 0, scope: !3259)
!3265 = !DILocation(line: 717, column: 17, scope: !3259)
!3266 = !DILocation(line: 717, column: 11, scope: !3259)
!3267 = !DILocation(line: 717, column: 24, scope: !3259)
!3268 = !DILocation(line: 717, column: 40, scope: !3259)
!3269 = !DILocation(line: 717, column: 3, scope: !3259)
!3270 = distinct !DISubprogram(name: "ipcp_cloning_candidate_p", scope: !3, file: !3, line: 442, type: !3260, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3271)
!3271 = !{!3272, !3273, !3274, !3275, !3276}
!3272 = !DILocalVariable(name: "node", arg: 1, scope: !3270, file: !3, line: 442, type: !1760)
!3273 = !DILocalVariable(name: "n_calls", scope: !3270, file: !3, line: 444, type: !536)
!3274 = !DILocalVariable(name: "n_hot_calls", scope: !3270, file: !3, line: 445, type: !536)
!3275 = !DILocalVariable(name: "direct_call_sum", scope: !3270, file: !3, line: 446, type: !1050)
!3276 = !DILocalVariable(name: "e", scope: !3270, file: !3, line: 447, type: !1765)
!3277 = !DILocation(line: 0, scope: !3270)
!3278 = !DILocation(line: 453, column: 7, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3270, file: !3, line: 453, column: 7)
!3280 = !DILocation(line: 453, column: 44, scope: !3279)
!3281 = !DILocation(line: 453, column: 54, scope: !3279)
!3282 = !DILocation(line: 453, column: 48, scope: !3279)
!3283 = !DILocation(line: 453, column: 7, scope: !3270)
!3284 = !DILocation(line: 456, column: 7, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3270, file: !3, line: 456, column: 7)
!3286 = !DILocation(line: 456, column: 48, scope: !3285)
!3287 = !DILocation(line: 456, column: 7, scope: !3270)
!3288 = !DILocation(line: 458, column: 11, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3290, file: !3, line: 458, column: 11)
!3290 = distinct !DILexicalBlock(scope: !3285, file: !3, line: 457, column: 5)
!3291 = !DILocation(line: 458, column: 11, scope: !3290)
!3292 = !DILocation(line: 460, column: 12, scope: !3289)
!3293 = !DILocation(line: 459, column: 9, scope: !3289)
!3294 = !DILocation(line: 463, column: 8, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3270, file: !3, line: 463, column: 7)
!3296 = !DILocation(line: 463, column: 7, scope: !3270)
!3297 = !DILocation(line: 465, column: 11, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3299, file: !3, line: 465, column: 11)
!3299 = distinct !DILexicalBlock(scope: !3295, file: !3, line: 464, column: 5)
!3300 = !DILocation(line: 465, column: 11, scope: !3299)
!3301 = !DILocation(line: 467, column: 12, scope: !3298)
!3302 = !DILocation(line: 466, column: 9, scope: !3298)
!3303 = !DILocation(line: 470, column: 18, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3270, file: !3, line: 470, column: 3)
!3305 = !DILocation(line: 470, column: 8, scope: !3304)
!3306 = !DILocation(line: 0, scope: !3304)
!3307 = !DILocation(line: 470, column: 3, scope: !3304)
!3308 = !DILocation(line: 472, column: 29, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3310, file: !3, line: 471, column: 5)
!3310 = distinct !DILexicalBlock(scope: !3304, file: !3, line: 470, column: 3)
!3311 = !DILocation(line: 472, column: 23, scope: !3309)
!3312 = !DILocation(line: 473, column: 15, scope: !3309)
!3313 = !DILocation(line: 474, column: 11, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3309, file: !3, line: 474, column: 11)
!3315 = !DILocation(line: 474, column: 11, scope: !3309)
!3316 = !DILocation(line: 470, column: 37, scope: !3310)
!3317 = !DILocation(line: 470, column: 3, scope: !3310)
!3318 = distinct !{!3318, !3307, !3319}
!3319 = !DILocation(line: 476, column: 5, scope: !3304)
!3320 = !DILocation(line: 478, column: 8, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3270, file: !3, line: 478, column: 7)
!3322 = !DILocation(line: 478, column: 7, scope: !3270)
!3323 = !DILocation(line: 480, column: 11, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3325, file: !3, line: 480, column: 11)
!3325 = distinct !DILexicalBlock(scope: !3321, file: !3, line: 479, column: 5)
!3326 = !DILocation(line: 480, column: 11, scope: !3325)
!3327 = !DILocation(line: 482, column: 12, scope: !3324)
!3328 = !DILocation(line: 481, column: 9, scope: !3324)
!3329 = !DILocation(line: 485, column: 34, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3270, file: !3, line: 485, column: 7)
!3331 = !DILocation(line: 485, column: 44, scope: !3330)
!3332 = !DILocation(line: 485, column: 7, scope: !3270)
!3333 = !DILocation(line: 487, column: 11, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3335, file: !3, line: 487, column: 11)
!3335 = distinct !DILexicalBlock(scope: !3330, file: !3, line: 486, column: 5)
!3336 = !DILocation(line: 487, column: 11, scope: !3335)
!3337 = !DILocation(line: 489, column: 12, scope: !3334)
!3338 = !DILocation(line: 488, column: 9, scope: !3334)
!3339 = !DILocation(line: 493, column: 8, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3270, file: !3, line: 493, column: 7)
!3341 = !DILocation(line: 493, column: 7, scope: !3270)
!3342 = !DILocation(line: 495, column: 11, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3344, file: !3, line: 495, column: 11)
!3344 = distinct !DILexicalBlock(scope: !3340, file: !3, line: 494, column: 5)
!3345 = !DILocation(line: 495, column: 11, scope: !3344)
!3346 = !DILocation(line: 497, column: 12, scope: !3343)
!3347 = !DILocation(line: 496, column: 9, scope: !3343)
!3348 = !DILocation(line: 501, column: 39, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3270, file: !3, line: 501, column: 7)
!3350 = !DILocation(line: 501, column: 8, scope: !3349)
!3351 = !DILocation(line: 501, column: 7, scope: !3270)
!3352 = !DILocation(line: 503, column: 11, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3354, file: !3, line: 503, column: 11)
!3354 = distinct !DILexicalBlock(scope: !3349, file: !3, line: 502, column: 5)
!3355 = !DILocation(line: 503, column: 11, scope: !3354)
!3356 = !DILocation(line: 505, column: 12, scope: !3353)
!3357 = !DILocation(line: 504, column: 9, scope: !3353)
!3358 = !DILocation(line: 512, column: 7, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3270, file: !3, line: 512, column: 7)
!3360 = !DILocation(line: 512, column: 7, scope: !3270)
!3361 = !DILocation(line: 514, column: 35, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !3363, file: !3, line: 514, column: 11)
!3363 = distinct !DILexicalBlock(scope: !3359, file: !3, line: 513, column: 5)
!3364 = !DILocation(line: 514, column: 41, scope: !3362)
!3365 = !DILocation(line: 514, column: 46, scope: !3362)
!3366 = !DILocation(line: 514, column: 27, scope: !3362)
!3367 = !DILocation(line: 514, column: 11, scope: !3363)
!3368 = !DILocation(line: 516, column: 8, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3370, file: !3, line: 516, column: 8)
!3370 = distinct !DILexicalBlock(scope: !3362, file: !3, line: 515, column: 2)
!3371 = !DILocation(line: 516, column: 8, scope: !3370)
!3372 = !DILocation(line: 518, column: 8, scope: !3369)
!3373 = !DILocation(line: 517, column: 6, scope: !3369)
!3374 = !DILocation(line: 522, column: 8, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3270, file: !3, line: 522, column: 7)
!3376 = !DILocation(line: 522, column: 7, scope: !3270)
!3377 = !DILocation(line: 524, column: 11, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3375, file: !3, line: 523, column: 5)
!3379 = !DILocation(line: 526, column: 4, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3378, file: !3, line: 524, column: 11)
!3381 = !DILocation(line: 525, column: 2, scope: !3380)
!3382 = !DILocation(line: 529, column: 7, scope: !3270)
!3383 = !DILocation(line: 531, column: 7, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3270, file: !3, line: 529, column: 7)
!3385 = !DILocation(line: 530, column: 5, scope: !3384)
!3386 = !DILocation(line: 533, column: 1, scope: !3270)
!3387 = distinct !DISubprogram(name: "ipa_get_param_count", scope: !456, file: !456, line: 224, type: !3388, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3390)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{!536, !2665}
!3390 = !{!3391}
!3391 = !DILocalVariable(name: "info", arg: 1, scope: !3387, file: !456, line: 224, type: !2665)
!3392 = !DILocation(line: 0, scope: !3387)
!3393 = !DILocation(line: 226, column: 16, scope: !3387)
!3394 = !DILocation(line: 226, column: 3, scope: !3387)
!3395 = distinct !DISubprogram(name: "ipcp_get_lattice", scope: !3, file: !3, line: 274, type: !3396, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3398)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!2675, !2665, !536}
!3398 = !{!3399, !3400}
!3399 = !DILocalVariable(name: "info", arg: 1, scope: !3395, file: !3, line: 274, type: !2665)
!3400 = !DILocalVariable(name: "i", arg: 2, scope: !3395, file: !3, line: 274, type: !536)
!3401 = !DILocation(line: 0, scope: !3395)
!3402 = !DILocation(line: 276, column: 18, scope: !3395)
!3403 = !DILocation(line: 276, column: 12, scope: !3395)
!3404 = !DILocation(line: 276, column: 28, scope: !3395)
!3405 = !DILocation(line: 276, column: 3, scope: !3395)
!3406 = distinct !DISubprogram(name: "ipcp_versionable_function_p", scope: !3, file: !3, line: 404, type: !3260, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3407)
!3407 = !{!3408, !3409, !3410, !3411, !3421, !3426}
!3408 = !DILocalVariable(name: "node", arg: 1, scope: !3406, file: !3, line: 404, type: !1760)
!3409 = !DILocalVariable(name: "decl", scope: !3406, file: !3, line: 406, type: !543)
!3410 = !DILocalVariable(name: "bb", scope: !3406, file: !3, line: 407, type: !801)
!3411 = !DILocalVariable(name: "gsi", scope: !3412, file: !3, line: 420, type: !3415)
!3412 = distinct !DILexicalBlock(scope: !3413, file: !3, line: 419, column: 5)
!3413 = distinct !DILexicalBlock(scope: !3414, file: !3, line: 418, column: 3)
!3414 = distinct !DILexicalBlock(scope: !3406, file: !3, line: 418, column: 3)
!3415 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !462, line: 265, baseType: !3416)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !462, line: 254, size: 192, elements: !3417)
!3417 = !{!3418, !3419, !3420}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3416, file: !462, line: 257, baseType: !833, size: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3416, file: !462, line: 263, baseType: !828, size: 64, offset: 64)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !3416, file: !462, line: 264, baseType: !801, size: 64, offset: 128)
!3421 = !DILocalVariable(name: "stmt", scope: !3422, file: !3, line: 423, type: !3425)
!3422 = distinct !DILexicalBlock(scope: !3423, file: !3, line: 422, column: 2)
!3423 = distinct !DILexicalBlock(scope: !3424, file: !3, line: 421, column: 7)
!3424 = distinct !DILexicalBlock(scope: !3412, file: !3, line: 421, column: 7)
!3425 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !544, line: 60, baseType: !1717)
!3426 = !DILocalVariable(name: "t", scope: !3422, file: !3, line: 424, type: !543)
!3427 = !DILocation(line: 0, scope: !3406)
!3428 = !DILocation(line: 406, column: 21, scope: !3406)
!3429 = !DILocation(line: 410, column: 8, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3406, file: !3, line: 410, column: 7)
!3431 = !DILocation(line: 410, column: 7, scope: !3406)
!3432 = !DILocation(line: 414, column: 7, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3406, file: !3, line: 414, column: 7)
!3434 = !DILocation(line: 414, column: 36, scope: !3433)
!3435 = !DILocation(line: 414, column: 7, scope: !3406)
!3436 = !DILocation(line: 418, column: 3, scope: !3414)
!3437 = !DILocation(line: 0, scope: !3412)
!3438 = !DILocation(line: 0, scope: !3424)
!3439 = !DILocation(line: 418, column: 3, scope: !3413)
!3440 = !DILocation(line: 0, scope: !3414)
!3441 = !DILocation(line: 420, column: 7, scope: !3412)
!3442 = !DILocation(line: 421, column: 18, scope: !3424)
!3443 = !DILocation(line: 421, column: 12, scope: !3424)
!3444 = !DILocation(line: 421, column: 38, scope: !3423)
!3445 = !DILocation(line: 421, column: 37, scope: !3423)
!3446 = !DILocation(line: 421, column: 7, scope: !3424)
!3447 = !DILocation(line: 423, column: 24, scope: !3422)
!3448 = !DILocation(line: 0, scope: !3422)
!3449 = !DILocation(line: 426, column: 9, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3422, file: !3, line: 426, column: 8)
!3451 = !DILocation(line: 426, column: 8, scope: !3422)
!3452 = !DILocation(line: 428, column: 8, scope: !3422)
!3453 = !DILocation(line: 429, column: 10, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3422, file: !3, line: 429, column: 8)
!3455 = !DILocation(line: 429, column: 8, scope: !3422)
!3456 = !DILocation(line: 431, column: 8, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3422, file: !3, line: 431, column: 8)
!3458 = !DILocation(line: 431, column: 32, scope: !3457)
!3459 = !DILocation(line: 432, column: 8, scope: !3457)
!3460 = !DILocation(line: 432, column: 11, scope: !3457)
!3461 = !DILocation(line: 432, column: 34, scope: !3457)
!3462 = !DILocation(line: 431, column: 8, scope: !3422)
!3463 = !DILocation(line: 434, column: 2, scope: !3423)
!3464 = !DILocation(line: 421, column: 55, scope: !3423)
!3465 = !DILocation(line: 421, column: 7, scope: !3423)
!3466 = distinct !{!3466, !3446, !3467}
!3467 = !DILocation(line: 434, column: 2, scope: !3424)
!3468 = !DILocation(line: 435, column: 5, scope: !3413)
!3469 = !DILocation(line: 0, scope: !3413)
!3470 = distinct !{!3470, !3436, !3471}
!3471 = !DILocation(line: 435, column: 5, scope: !3414)
!3472 = !DILocation(line: 438, column: 1, scope: !3406)
!3473 = distinct !DISubprogram(name: "gsi_start_bb", scope: !462, file: !462, line: 4418, type: !3474, scopeLine: 4419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3476)
!3474 = !DISubroutineType(types: !3475)
!3475 = !{!3415, !801}
!3476 = !{!3477, !3478, !3479}
!3477 = !DILocalVariable(name: "bb", arg: 1, scope: !3473, file: !462, line: 4418, type: !801)
!3478 = !DILocalVariable(name: "i", scope: !3473, file: !462, line: 4420, type: !3415)
!3479 = !DILocalVariable(name: "seq", scope: !3473, file: !462, line: 4421, type: !828)
!3480 = !DILocation(line: 0, scope: !3473)
!3481 = !DILocation(line: 4420, column: 24, scope: !3473)
!3482 = !DILocation(line: 4423, column: 9, scope: !3473)
!3483 = !DILocation(line: 4424, column: 11, scope: !3473)
!3484 = !DILocation(line: 4424, column: 5, scope: !3473)
!3485 = !DILocation(line: 4424, column: 9, scope: !3473)
!3486 = !DILocation(line: 4425, column: 5, scope: !3473)
!3487 = !DILocation(line: 4425, column: 9, scope: !3473)
!3488 = !DILocation(line: 4426, column: 5, scope: !3473)
!3489 = !DILocation(line: 4426, column: 8, scope: !3473)
!3490 = !DILocation(line: 4429, column: 1, scope: !3473)
!3491 = distinct !DISubprogram(name: "gsi_end_p", scope: !462, file: !462, line: 4467, type: !3492, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3494)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{!535, !3415}
!3494 = !{!3495}
!3495 = !DILocalVariable(name: "i", arg: 1, scope: !3491, file: !462, line: 4467, type: !3415)
!3496 = !DILocation(line: 4467, column: 33, scope: !3491)
!3497 = !DILocation(line: 4469, column: 12, scope: !3491)
!3498 = !DILocation(line: 4469, column: 16, scope: !3491)
!3499 = !DILocation(line: 4469, column: 10, scope: !3491)
!3500 = !DILocation(line: 4469, column: 3, scope: !3491)
!3501 = distinct !DISubprogram(name: "gsi_stmt", scope: !462, file: !462, line: 4501, type: !3502, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3504)
!3502 = !DISubroutineType(types: !3503)
!3503 = !{!838, !3415}
!3504 = !{!3505}
!3505 = !DILocalVariable(name: "i", arg: 1, scope: !3501, file: !462, line: 4501, type: !3415)
!3506 = !DILocation(line: 4501, column: 32, scope: !3501)
!3507 = !DILocation(line: 4503, column: 12, scope: !3501)
!3508 = !DILocation(line: 4503, column: 17, scope: !3501)
!3509 = !DILocation(line: 4503, column: 3, scope: !3501)
!3510 = distinct !DISubprogram(name: "is_gimple_call", scope: !462, file: !462, line: 1870, type: !3511, scopeLine: 1871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3513)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!535, !3425}
!3513 = !{!3514}
!3514 = !DILocalVariable(name: "gs", arg: 1, scope: !3510, file: !462, line: 1870, type: !3425)
!3515 = !DILocation(line: 0, scope: !3510)
!3516 = !DILocation(line: 1872, column: 10, scope: !3510)
!3517 = !DILocation(line: 1872, column: 27, scope: !3510)
!3518 = !DILocation(line: 1872, column: 3, scope: !3510)
!3519 = distinct !DISubprogram(name: "gimple_call_fndecl", scope: !462, file: !462, line: 1954, type: !3520, scopeLine: 1955, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3522)
!3520 = !DISubroutineType(types: !3521)
!3521 = !{!543, !3425}
!3522 = !{!3523, !3524}
!3523 = !DILocalVariable(name: "gs", arg: 1, scope: !3519, file: !462, line: 1954, type: !3425)
!3524 = !DILocalVariable(name: "addr", scope: !3519, file: !462, line: 1956, type: !543)
!3525 = !DILocation(line: 0, scope: !3519)
!3526 = !DILocation(line: 1956, column: 15, scope: !3519)
!3527 = !DILocation(line: 1957, column: 7, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3519, file: !462, line: 1957, column: 7)
!3529 = !DILocation(line: 1957, column: 24, scope: !3528)
!3530 = !DILocation(line: 1957, column: 7, scope: !3519)
!3531 = !DILocation(line: 1958, column: 12, scope: !3528)
!3532 = !DILocation(line: 1958, column: 5, scope: !3528)
!3533 = !DILocation(line: 1960, column: 1, scope: !3519)
!3534 = distinct !DISubprogram(name: "gsi_next", scope: !462, file: !462, line: 4485, type: !3535, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3538)
!3535 = !DISubroutineType(types: !3536)
!3536 = !{null, !3537}
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3538 = !{!3539}
!3539 = !DILocalVariable(name: "i", arg: 1, scope: !3534, file: !462, line: 4485, type: !3537)
!3540 = !DILocation(line: 0, scope: !3534)
!3541 = !DILocation(line: 4487, column: 15, scope: !3534)
!3542 = !DILocation(line: 4487, column: 20, scope: !3534)
!3543 = !DILocation(line: 4487, column: 10, scope: !3534)
!3544 = !DILocation(line: 4488, column: 1, scope: !3534)
!3545 = distinct !DISubprogram(name: "bb_seq", scope: !462, file: !462, line: 237, type: !3546, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3551)
!3546 = !DISubroutineType(types: !3547)
!3547 = !{!828, !3548}
!3548 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !544, line: 112, baseType: !3549)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !803)
!3551 = !{!3552}
!3552 = !DILocalVariable(name: "bb", arg: 1, scope: !3545, file: !462, line: 237, type: !3548)
!3553 = !DILocation(line: 0, scope: !3545)
!3554 = !DILocation(line: 239, column: 17, scope: !3545)
!3555 = !DILocation(line: 239, column: 23, scope: !3545)
!3556 = !DILocation(line: 239, column: 33, scope: !3545)
!3557 = !DILocation(line: 239, column: 43, scope: !3545)
!3558 = !DILocation(line: 239, column: 36, scope: !3545)
!3559 = !DILocation(line: 239, column: 10, scope: !3545)
!3560 = !DILocation(line: 239, column: 68, scope: !3545)
!3561 = !DILocation(line: 239, column: 3, scope: !3545)
!3562 = distinct !DISubprogram(name: "gimple_seq_first", scope: !462, file: !462, line: 159, type: !3563, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3568)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!833, !3565}
!3565 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !544, line: 67, baseType: !3566)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !830)
!3568 = !{!3569}
!3569 = !DILocalVariable(name: "s", arg: 1, scope: !3562, file: !462, line: 159, type: !3565)
!3570 = !DILocation(line: 0, scope: !3562)
!3571 = !DILocation(line: 161, column: 10, scope: !3562)
!3572 = !DILocation(line: 161, column: 17, scope: !3562)
!3573 = !DILocation(line: 161, column: 3, scope: !3562)
!3574 = distinct !DISubprogram(name: "gimple_code", scope: !462, file: !462, line: 1052, type: !3575, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3577)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!461, !3425}
!3577 = !{!3578}
!3578 = !DILocalVariable(name: "g", arg: 1, scope: !3574, file: !462, line: 1052, type: !3425)
!3579 = !DILocation(line: 0, scope: !3574)
!3580 = !DILocation(line: 1054, column: 20, scope: !3574)
!3581 = !DILocation(line: 1054, column: 3, scope: !3574)
!3582 = distinct !DISubprogram(name: "gimple_call_fn", scope: !462, file: !462, line: 1911, type: !3520, scopeLine: 1912, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3583)
!3583 = !{!3584}
!3584 = !DILocalVariable(name: "gs", arg: 1, scope: !3582, file: !462, line: 1911, type: !3425)
!3585 = !DILocation(line: 0, scope: !3582)
!3586 = !DILocation(line: 1914, column: 10, scope: !3582)
!3587 = !DILocation(line: 1914, column: 3, scope: !3582)
!3588 = distinct !DISubprogram(name: "gimple_op", scope: !462, file: !462, line: 1631, type: !3589, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3591)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{!543, !3425, !7}
!3591 = !{!3592, !3593}
!3592 = !DILocalVariable(name: "gs", arg: 1, scope: !3588, file: !462, line: 1631, type: !3425)
!3593 = !DILocalVariable(name: "i", arg: 2, scope: !3588, file: !462, line: 1631, type: !7)
!3594 = !DILocation(line: 0, scope: !3588)
!3595 = !DILocation(line: 1633, column: 7, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3588, file: !462, line: 1633, column: 7)
!3597 = !DILocation(line: 1633, column: 7, scope: !3588)
!3598 = !DILocation(line: 1638, column: 14, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3596, file: !462, line: 1634, column: 5)
!3600 = !DILocation(line: 1638, column: 7, scope: !3599)
!3601 = !DILocation(line: 0, scope: !3596)
!3602 = !DILocation(line: 1642, column: 1, scope: !3588)
!3603 = distinct !DISubprogram(name: "gimple_has_ops", scope: !462, file: !462, line: 1274, type: !3511, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3604)
!3604 = !{!3605}
!3605 = !DILocalVariable(name: "g", arg: 1, scope: !3603, file: !462, line: 1274, type: !3425)
!3606 = !DILocation(line: 0, scope: !3603)
!3607 = !DILocation(line: 1276, column: 10, scope: !3603)
!3608 = !DILocation(line: 1276, column: 26, scope: !3603)
!3609 = !DILocation(line: 1276, column: 41, scope: !3603)
!3610 = !DILocation(line: 1276, column: 44, scope: !3603)
!3611 = !DILocation(line: 1276, column: 60, scope: !3603)
!3612 = !DILocation(line: 1276, column: 3, scope: !3603)
!3613 = distinct !DISubprogram(name: "gimple_ops", scope: !462, file: !462, line: 1614, type: !3614, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3616)
!3614 = !DISubroutineType(types: !3615)
!3615 = !{!873, !838}
!3616 = !{!3617, !3618}
!3617 = !DILocalVariable(name: "gs", arg: 1, scope: !3613, file: !462, line: 1614, type: !838)
!3618 = !DILocalVariable(name: "off", scope: !3613, file: !462, line: 1616, type: !984)
!3619 = !DILocation(line: 0, scope: !3613)
!3620 = !DILocation(line: 1621, column: 28, scope: !3613)
!3621 = !DILocation(line: 1621, column: 9, scope: !3613)
!3622 = !DILocation(line: 1622, column: 3, scope: !3613)
!3623 = !DILocation(line: 1624, column: 20, scope: !3613)
!3624 = !DILocation(line: 1624, column: 32, scope: !3613)
!3625 = !DILocation(line: 1624, column: 10, scope: !3613)
!3626 = !DILocation(line: 1624, column: 3, scope: !3613)
!3627 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !462, file: !462, line: 1073, type: !3628, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3630)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{!500, !838}
!3630 = !{!3631}
!3631 = !DILocalVariable(name: "gs", arg: 1, scope: !3627, file: !462, line: 1073, type: !838)
!3632 = !DILocation(line: 0, scope: !3627)
!3633 = !DILocation(line: 1075, column: 24, scope: !3627)
!3634 = !DILocation(line: 1075, column: 10, scope: !3627)
!3635 = !DILocation(line: 1075, column: 3, scope: !3627)
!3636 = distinct !DISubprogram(name: "gss_for_code", scope: !462, file: !462, line: 1061, type: !3637, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3639)
!3637 = !DISubroutineType(types: !3638)
!3638 = !{!500, !461}
!3639 = !{!3640}
!3640 = !DILocalVariable(name: "code", arg: 1, scope: !3636, file: !462, line: 1061, type: !461)
!3641 = !DILocation(line: 0, scope: !3636)
!3642 = !DILocation(line: 1066, column: 10, scope: !3636)
!3643 = !DILocation(line: 1066, column: 3, scope: !3636)
!3644 = distinct !DISubprogram(name: "ipcp_set_node_scale", scope: !3, file: !3, line: 199, type: !3645, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3647)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{null, !1760, !1050}
!3647 = !{!3648, !3649}
!3648 = !DILocalVariable(name: "node", arg: 1, scope: !3644, file: !3, line: 199, type: !1760)
!3649 = !DILocalVariable(name: "count", arg: 2, scope: !3644, file: !3, line: 199, type: !1050)
!3650 = !DILocation(line: 0, scope: !3644)
!3651 = !DILocation(line: 201, column: 3, scope: !3644)
!3652 = !DILocation(line: 201, column: 24, scope: !3644)
!3653 = !DILocation(line: 201, column: 36, scope: !3644)
!3654 = !DILocation(line: 202, column: 1, scope: !3644)
!3655 = distinct !DISubprogram(name: "ipcp_get_node_scale", scope: !3, file: !3, line: 192, type: !3656, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3658)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{!1050, !1760}
!3658 = !{!3659}
!3659 = !DILocalVariable(name: "node", arg: 1, scope: !3655, file: !3, line: 192, type: !1760)
!3660 = !DILocation(line: 0, scope: !3655)
!3661 = !DILocation(line: 194, column: 10, scope: !3655)
!3662 = !DILocation(line: 194, column: 31, scope: !3655)
!3663 = !DILocation(line: 194, column: 3, scope: !3655)
!3664 = distinct !DISubprogram(name: "ipa_check_create_node_params", scope: !456, file: !456, line: 349, type: !1844, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2095)
!3665 = !DILocation(line: 351, column: 8, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3664, file: !456, line: 351, column: 7)
!3667 = !DILocation(line: 351, column: 7, scope: !3664)
!3668 = !DILocation(line: 352, column: 30, scope: !3666)
!3669 = !DILocation(line: 352, column: 28, scope: !3666)
!3670 = !DILocation(line: 352, column: 5, scope: !3666)
!3671 = !DILocation(line: 355, column: 7, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3664, file: !456, line: 355, column: 7)
!3673 = !DILocation(line: 356, column: 21, scope: !3672)
!3674 = !DILocation(line: 356, column: 7, scope: !3672)
!3675 = !DILocation(line: 355, column: 7, scope: !3664)
!3676 = !DILocation(line: 357, column: 5, scope: !3672)
!3677 = !DILocation(line: 359, column: 1, scope: !3664)
!3678 = distinct !DISubprogram(name: "ipa_check_create_edge_args", scope: !456, file: !456, line: 365, type: !1844, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2095)
!3679 = !DILocation(line: 367, column: 8, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3678, file: !456, line: 367, column: 7)
!3681 = !DILocation(line: 367, column: 7, scope: !3678)
!3682 = !DILocation(line: 368, column: 28, scope: !3680)
!3683 = !DILocation(line: 368, column: 26, scope: !3680)
!3684 = !DILocation(line: 368, column: 5, scope: !3680)
!3685 = !DILocation(line: 371, column: 7, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3678, file: !456, line: 371, column: 7)
!3687 = !DILocation(line: 372, column: 22, scope: !3686)
!3688 = !DILocation(line: 372, column: 7, scope: !3686)
!3689 = !DILocation(line: 371, column: 7, scope: !3678)
!3690 = !DILocation(line: 373, column: 5, scope: !3686)
!3691 = !DILocation(line: 375, column: 1, scope: !3678)
!3692 = distinct !DISubprogram(name: "VEC_ipa_edge_args_t_base_index", scope: !456, file: !456, line: 316, type: !3693, scopeLine: 316, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3697)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!3695, !3696, !7}
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!3697 = !{!3698, !3699}
!3698 = !DILocalVariable(name: "vec_", arg: 1, scope: !3692, file: !456, line: 316, type: !3696)
!3699 = !DILocalVariable(name: "ix_", arg: 2, scope: !3692, file: !456, line: 316, type: !7)
!3700 = !DILocation(line: 0, scope: !3692)
!3701 = !DILocation(line: 316, column: 1, scope: !3692)
!3702 = distinct !DISubprogram(name: "ipa_get_cs_argument_count", scope: !456, file: !456, line: 295, type: !3703, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3705)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!536, !3116}
!3705 = !{!3706}
!3706 = !DILocalVariable(name: "args", arg: 1, scope: !3702, file: !456, line: 295, type: !3116)
!3707 = !DILocation(line: 0, scope: !3702)
!3708 = !DILocation(line: 297, column: 16, scope: !3702)
!3709 = !DILocation(line: 297, column: 3, scope: !3702)
!3710 = distinct !DISubprogram(name: "ipa_get_ith_jump_func", scope: !456, file: !456, line: 305, type: !3711, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3713)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!2010, !3116, !536}
!3713 = !{!3714, !3715}
!3714 = !DILocalVariable(name: "args", arg: 1, scope: !3710, file: !456, line: 305, type: !3116)
!3715 = !DILocalVariable(name: "i", arg: 2, scope: !3710, file: !456, line: 305, type: !536)
!3716 = !DILocation(line: 0, scope: !3710)
!3717 = !DILocation(line: 307, column: 17, scope: !3710)
!3718 = !DILocation(line: 307, column: 11, scope: !3710)
!3719 = !DILocation(line: 307, column: 3, scope: !3710)
!3720 = distinct !DISubprogram(name: "ipcp_lattice_from_jfunc", scope: !3, file: !3, line: 283, type: !3721, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3723)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{null, !2665, !2675, !2010}
!3723 = !{!3724, !3725, !3726, !3727, !3731, !3732, !3735, !3738, !3739}
!3724 = !DILocalVariable(name: "info", arg: 1, scope: !3720, file: !3, line: 283, type: !2665)
!3725 = !DILocalVariable(name: "lat", arg: 2, scope: !3720, file: !3, line: 283, type: !2675)
!3726 = !DILocalVariable(name: "jfunc", arg: 3, scope: !3720, file: !3, line: 284, type: !2010)
!3727 = !DILocalVariable(name: "caller_lat", scope: !3728, file: !3, line: 293, type: !2675)
!3728 = distinct !DILexicalBlock(scope: !3729, file: !3, line: 292, column: 5)
!3729 = distinct !DILexicalBlock(scope: !3730, file: !3, line: 291, column: 12)
!3730 = distinct !DILexicalBlock(scope: !3720, file: !3, line: 286, column: 7)
!3731 = !DILocalVariable(name: "cst", scope: !3728, file: !3, line: 294, type: !543)
!3732 = !DILocalVariable(name: "restype", scope: !3733, file: !3, line: 304, type: !543)
!3733 = distinct !DILexicalBlock(scope: !3734, file: !3, line: 303, column: 2)
!3734 = distinct !DILexicalBlock(scope: !3728, file: !3, line: 302, column: 11)
!3735 = !DILocalVariable(name: "caller_lat", scope: !3736, file: !3, line: 319, type: !2675)
!3736 = distinct !DILexicalBlock(scope: !3737, file: !3, line: 318, column: 5)
!3737 = distinct !DILexicalBlock(scope: !3729, file: !3, line: 317, column: 12)
!3738 = !DILocalVariable(name: "t", scope: !3736, file: !3, line: 320, type: !543)
!3739 = !DILocalVariable(name: "ok", scope: !3736, file: !3, line: 321, type: !535)
!3740 = !DILocation(line: 0, scope: !3720)
!3741 = !DILocation(line: 286, column: 14, scope: !3730)
!3742 = !DILocation(line: 286, column: 19, scope: !3730)
!3743 = !DILocation(line: 286, column: 7, scope: !3720)
!3744 = !DILocation(line: 288, column: 12, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3730, file: !3, line: 287, column: 5)
!3746 = !DILocation(line: 288, column: 17, scope: !3745)
!3747 = !DILocation(line: 289, column: 36, scope: !3745)
!3748 = !DILocation(line: 289, column: 12, scope: !3745)
!3749 = !DILocation(line: 289, column: 21, scope: !3745)
!3750 = !DILocation(line: 290, column: 5, scope: !3745)
!3751 = !DILocation(line: 291, column: 24, scope: !3729)
!3752 = !DILocation(line: 291, column: 12, scope: !3730)
!3753 = !DILocation(line: 296, column: 70, scope: !3728)
!3754 = !DILocation(line: 296, column: 20, scope: !3728)
!3755 = !DILocation(line: 0, scope: !3728)
!3756 = !DILocation(line: 297, column: 31, scope: !3728)
!3757 = !DILocation(line: 297, column: 12, scope: !3728)
!3758 = !DILocation(line: 297, column: 17, scope: !3728)
!3759 = !DILocation(line: 298, column: 23, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3728, file: !3, line: 298, column: 11)
!3761 = !DILocation(line: 298, column: 28, scope: !3760)
!3762 = !DILocation(line: 298, column: 11, scope: !3728)
!3763 = !DILocation(line: 300, column: 25, scope: !3728)
!3764 = !DILocation(line: 302, column: 18, scope: !3734)
!3765 = !DILocation(line: 302, column: 24, scope: !3734)
!3766 = !DILocation(line: 302, column: 37, scope: !3734)
!3767 = !DILocation(line: 302, column: 47, scope: !3734)
!3768 = !DILocation(line: 302, column: 11, scope: !3728)
!3769 = !DILocation(line: 305, column: 8, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3733, file: !3, line: 305, column: 8)
!3771 = !DILocation(line: 306, column: 8, scope: !3770)
!3772 = !DILocation(line: 305, column: 8, scope: !3733)
!3773 = !DILocation(line: 307, column: 6, scope: !3770)
!3774 = !DILocation(line: 309, column: 16, scope: !3770)
!3775 = !DILocation(line: 0, scope: !3770)
!3776 = !DILocation(line: 0, scope: !3733)
!3777 = !DILocation(line: 310, column: 10, scope: !3733)
!3778 = !DILocation(line: 312, column: 2, scope: !3733)
!3779 = !DILocation(line: 313, column: 12, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3728, file: !3, line: 313, column: 11)
!3781 = !DILocation(line: 313, column: 16, scope: !3780)
!3782 = !DILocation(line: 313, column: 20, scope: !3780)
!3783 = !DILocation(line: 313, column: 11, scope: !3728)
!3784 = !DILocation(line: 314, column: 12, scope: !3780)
!3785 = !DILocation(line: 314, column: 2, scope: !3780)
!3786 = !DILocation(line: 315, column: 12, scope: !3728)
!3787 = !DILocation(line: 315, column: 21, scope: !3728)
!3788 = !DILocation(line: 316, column: 5, scope: !3729)
!3789 = !DILocation(line: 317, column: 24, scope: !3737)
!3790 = !DILocation(line: 317, column: 12, scope: !3729)
!3791 = !DILocation(line: 320, column: 7, scope: !3736)
!3792 = !DILocation(line: 323, column: 66, scope: !3736)
!3793 = !DILocation(line: 323, column: 20, scope: !3736)
!3794 = !DILocation(line: 0, scope: !3736)
!3795 = !DILocation(line: 324, column: 31, scope: !3736)
!3796 = !DILocation(line: 324, column: 12, scope: !3736)
!3797 = !DILocation(line: 324, column: 17, scope: !3736)
!3798 = !DILocation(line: 325, column: 23, scope: !3799)
!3799 = distinct !DILexicalBlock(scope: !3736, file: !3, line: 325, column: 11)
!3800 = !DILocation(line: 325, column: 28, scope: !3799)
!3801 = !DILocation(line: 325, column: 11, scope: !3736)
!3802 = !DILocation(line: 327, column: 11, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3736, file: !3, line: 327, column: 11)
!3804 = !DILocation(line: 327, column: 44, scope: !3803)
!3805 = !DILocation(line: 327, column: 11, scope: !3736)
!3806 = !DILocation(line: 330, column: 14, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3803, file: !3, line: 328, column: 2)
!3808 = !DILocation(line: 331, column: 4, scope: !3807)
!3809 = !DILocation(line: 333, column: 11, scope: !3736)
!3810 = !DILocation(line: 333, column: 9, scope: !3736)
!3811 = !DILocation(line: 334, column: 38, scope: !3736)
!3812 = !DILocation(line: 335, column: 28, scope: !3736)
!3813 = !DILocation(line: 336, column: 28, scope: !3736)
!3814 = !DILocation(line: 334, column: 12, scope: !3736)
!3815 = !DILocation(line: 337, column: 12, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3736, file: !3, line: 337, column: 11)
!3817 = !DILocation(line: 337, column: 11, scope: !3736)
!3818 = !DILocation(line: 339, column: 14, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3816, file: !3, line: 338, column: 2)
!3820 = !DILocation(line: 340, column: 9, scope: !3819)
!3821 = !DILocation(line: 340, column: 18, scope: !3819)
!3822 = !DILocation(line: 341, column: 2, scope: !3819)
!3823 = !DILocation(line: 343, column: 18, scope: !3816)
!3824 = !DILocation(line: 343, column: 7, scope: !3816)
!3825 = !DILocation(line: 343, column: 16, scope: !3816)
!3826 = !DILocation(line: 344, column: 5, scope: !3737)
!3827 = !DILocation(line: 346, column: 10, scope: !3737)
!3828 = !DILocation(line: 346, column: 15, scope: !3737)
!3829 = !DILocation(line: 347, column: 1, scope: !3720)
!3830 = distinct !DISubprogram(name: "ipa_lattice_meet", scope: !3, file: !3, line: 242, type: !3831, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3833)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{null, !2675, !2675, !2675}
!3833 = !{!3834, !3835, !3836}
!3834 = !DILocalVariable(name: "res", arg: 1, scope: !3830, file: !3, line: 242, type: !2675)
!3835 = !DILocalVariable(name: "lat1", arg: 2, scope: !3830, file: !3, line: 242, type: !2675)
!3836 = !DILocalVariable(name: "lat2", arg: 3, scope: !3830, file: !3, line: 243, type: !2675)
!3837 = !DILocation(line: 0, scope: !3830)
!3838 = !DILocation(line: 245, column: 13, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3830, file: !3, line: 245, column: 7)
!3840 = !DILocation(line: 245, column: 18, scope: !3839)
!3841 = !DILocation(line: 245, column: 32, scope: !3839)
!3842 = !DILocation(line: 245, column: 41, scope: !3839)
!3843 = !DILocation(line: 245, column: 46, scope: !3839)
!3844 = !DILocation(line: 245, column: 7, scope: !3830)
!3845 = !DILocation(line: 247, column: 12, scope: !3846)
!3846 = distinct !DILexicalBlock(scope: !3839, file: !3, line: 246, column: 5)
!3847 = !DILocation(line: 247, column: 17, scope: !3846)
!3848 = !DILocation(line: 248, column: 7, scope: !3846)
!3849 = !DILocation(line: 250, column: 18, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3830, file: !3, line: 250, column: 7)
!3851 = !DILocation(line: 250, column: 7, scope: !3830)
!3852 = !DILocation(line: 252, column: 12, scope: !3853)
!3853 = distinct !DILexicalBlock(scope: !3850, file: !3, line: 251, column: 5)
!3854 = !DILocation(line: 252, column: 17, scope: !3853)
!3855 = !DILocation(line: 253, column: 29, scope: !3853)
!3856 = !DILocation(line: 253, column: 12, scope: !3853)
!3857 = !DILocation(line: 253, column: 21, scope: !3853)
!3858 = !DILocation(line: 254, column: 7, scope: !3853)
!3859 = !DILocation(line: 256, column: 18, scope: !3860)
!3860 = distinct !DILexicalBlock(scope: !3830, file: !3, line: 256, column: 7)
!3861 = !DILocation(line: 256, column: 7, scope: !3830)
!3862 = !DILocation(line: 258, column: 12, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3860, file: !3, line: 257, column: 5)
!3864 = !DILocation(line: 258, column: 17, scope: !3863)
!3865 = !DILocation(line: 259, column: 29, scope: !3863)
!3866 = !DILocation(line: 259, column: 12, scope: !3863)
!3867 = !DILocation(line: 259, column: 21, scope: !3863)
!3868 = !DILocation(line: 260, column: 7, scope: !3863)
!3869 = !DILocation(line: 262, column: 8, scope: !3870)
!3870 = distinct !DILexicalBlock(scope: !3830, file: !3, line: 262, column: 7)
!3871 = !DILocation(line: 262, column: 7, scope: !3830)
!3872 = !DILocation(line: 264, column: 12, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3870, file: !3, line: 263, column: 5)
!3874 = !DILocation(line: 264, column: 17, scope: !3873)
!3875 = !DILocation(line: 265, column: 7, scope: !3873)
!3876 = !DILocation(line: 267, column: 21, scope: !3830)
!3877 = !DILocation(line: 267, column: 8, scope: !3830)
!3878 = !DILocation(line: 267, column: 13, scope: !3830)
!3879 = !DILocation(line: 268, column: 25, scope: !3830)
!3880 = !DILocation(line: 268, column: 8, scope: !3830)
!3881 = !DILocation(line: 268, column: 17, scope: !3830)
!3882 = !DILocation(line: 269, column: 1, scope: !3830)
!3883 = distinct !DISubprogram(name: "ipcp_lattice_changed", scope: !3, file: !3, line: 352, type: !3884, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3886)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{!535, !2675, !2675}
!3886 = !{!3887, !3888}
!3887 = !DILocalVariable(name: "old_lat", arg: 1, scope: !3883, file: !3, line: 352, type: !2675)
!3888 = !DILocalVariable(name: "new_lat", arg: 2, scope: !3883, file: !3, line: 353, type: !2675)
!3889 = !DILocation(line: 0, scope: !3883)
!3890 = !DILocation(line: 355, column: 16, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !3883, file: !3, line: 355, column: 7)
!3892 = !DILocation(line: 355, column: 33, scope: !3891)
!3893 = !DILocation(line: 355, column: 21, scope: !3891)
!3894 = !DILocation(line: 355, column: 7, scope: !3883)
!3895 = !DILocation(line: 357, column: 12, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3897, file: !3, line: 357, column: 11)
!3897 = distinct !DILexicalBlock(scope: !3891, file: !3, line: 356, column: 5)
!3898 = !DILocation(line: 357, column: 11, scope: !3897)
!3899 = !DILocation(line: 359, column: 11, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3897, file: !3, line: 359, column: 11)
!3901 = !DILocation(line: 359, column: 11, scope: !3897)
!3902 = !DILocation(line: 362, column: 3, scope: !3883)
!3903 = !DILocation(line: 363, column: 1, scope: !3883)
!3904 = distinct !DISubprogram(name: "ipa_push_func_to_list", scope: !456, file: !456, line: 405, type: !3905, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3908)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{null, !3907, !1760}
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3908 = !{!3909, !3910, !3911}
!3909 = !DILocalVariable(name: "wl", arg: 1, scope: !3904, file: !456, line: 405, type: !3907)
!3910 = !DILocalVariable(name: "node", arg: 2, scope: !3904, file: !456, line: 405, type: !1760)
!3911 = !DILocalVariable(name: "info", scope: !3904, file: !456, line: 407, type: !2665)
!3912 = !DILocation(line: 0, scope: !3904)
!3913 = !DILocation(line: 407, column: 34, scope: !3904)
!3914 = !DILocation(line: 409, column: 14, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3904, file: !456, line: 409, column: 7)
!3916 = !DILocation(line: 409, column: 8, scope: !3915)
!3917 = !DILocation(line: 409, column: 7, scope: !3904)
!3918 = !DILocation(line: 410, column: 5, scope: !3915)
!3919 = !DILocation(line: 411, column: 1, scope: !3904)
!3920 = distinct !DISubprogram(name: "VEC_ipa_node_params_t_heap_alloc", scope: !456, file: !456, line: 315, type: !3921, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3923)
!3921 = !DISubroutineType(types: !3922)
!3922 = !{!1719, !536}
!3923 = !{!3924}
!3924 = !DILocalVariable(name: "alloc_", arg: 1, scope: !3920, file: !456, line: 315, type: !536)
!3925 = !DILocation(line: 0, scope: !3920)
!3926 = !DILocation(line: 315, column: 1, scope: !3920)
!3927 = distinct !DISubprogram(name: "VEC_ipa_node_params_t_base_length", scope: !456, file: !456, line: 314, type: !3928, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3932)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{!7, !3930}
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1724)
!3932 = !{!3933}
!3933 = !DILocalVariable(name: "vec_", arg: 1, scope: !3927, file: !456, line: 314, type: !3930)
!3934 = !DILocation(line: 0, scope: !3927)
!3935 = !DILocation(line: 314, column: 1, scope: !3927)
!3936 = distinct !DISubprogram(name: "VEC_ipa_node_params_t_heap_safe_grow_cleared", scope: !456, file: !456, line: 315, type: !3937, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3940)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{null, !3939, !536}
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!3940 = !{!3941, !3942, !3943}
!3941 = !DILocalVariable(name: "vec_", arg: 1, scope: !3936, file: !456, line: 315, type: !3939)
!3942 = !DILocalVariable(name: "size_", arg: 2, scope: !3936, file: !456, line: 315, type: !536)
!3943 = !DILocalVariable(name: "oldsize", scope: !3936, file: !456, line: 315, type: !536)
!3944 = !DILocation(line: 0, scope: !3936)
!3945 = !DILocation(line: 315, column: 1, scope: !3936)
!3946 = distinct !DISubprogram(name: "VEC_ipa_node_params_t_heap_safe_grow", scope: !456, file: !456, line: 315, type: !3937, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3947)
!3947 = !{!3948, !3949}
!3948 = !DILocalVariable(name: "vec_", arg: 1, scope: !3946, file: !456, line: 315, type: !3939)
!3949 = !DILocalVariable(name: "size_", arg: 2, scope: !3946, file: !456, line: 315, type: !536)
!3950 = !DILocation(line: 0, scope: !3946)
!3951 = !DILocation(line: 315, column: 1, scope: !3946)
!3952 = distinct !DISubprogram(name: "VEC_ipa_node_params_t_base_address", scope: !456, file: !456, line: 314, type: !3953, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3955)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{!3244, !3245}
!3955 = !{!3956}
!3956 = !DILocalVariable(name: "vec_", arg: 1, scope: !3952, file: !456, line: 314, type: !3245)
!3957 = !DILocation(line: 0, scope: !3952)
!3958 = !DILocation(line: 314, column: 1, scope: !3952)
!3959 = distinct !DISubprogram(name: "VEC_ipa_node_params_t_heap_reserve_exact", scope: !456, file: !456, line: 315, type: !3960, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3962)
!3960 = !DISubroutineType(types: !3961)
!3961 = !{!536, !3939, !536}
!3962 = !{!3963, !3964, !3965}
!3963 = !DILocalVariable(name: "vec_", arg: 1, scope: !3959, file: !456, line: 315, type: !3939)
!3964 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3959, file: !456, line: 315, type: !536)
!3965 = !DILocalVariable(name: "extend", scope: !3959, file: !456, line: 315, type: !536)
!3966 = !DILocation(line: 0, scope: !3959)
!3967 = !DILocation(line: 315, column: 1, scope: !3959)
!3968 = !DILocation(line: 315, column: 1, scope: !3969)
!3969 = distinct !DILexicalBlock(scope: !3959, file: !456, line: 315, column: 1)
!3970 = distinct !DISubprogram(name: "VEC_ipa_node_params_t_base_space", scope: !456, file: !456, line: 314, type: !3971, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3973)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!536, !3245, !536}
!3973 = !{!3974, !3975}
!3974 = !DILocalVariable(name: "vec_", arg: 1, scope: !3970, file: !456, line: 314, type: !3245)
!3975 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3970, file: !456, line: 314, type: !536)
!3976 = !DILocation(line: 0, scope: !3970)
!3977 = !DILocation(line: 314, column: 1, scope: !3970)
!3978 = distinct !DISubprogram(name: "VEC_ipa_edge_args_t_gc_alloc", scope: !456, file: !456, line: 317, type: !3979, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3981)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{!1993, !536}
!3981 = !{!3982}
!3982 = !DILocalVariable(name: "alloc_", arg: 1, scope: !3978, file: !456, line: 317, type: !536)
!3983 = !DILocation(line: 0, scope: !3978)
!3984 = !DILocation(line: 317, column: 1, scope: !3978)
!3985 = distinct !DISubprogram(name: "VEC_ipa_edge_args_t_base_length", scope: !456, file: !456, line: 316, type: !3986, scopeLine: 316, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3990)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!7, !3988}
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1998)
!3990 = !{!3991}
!3991 = !DILocalVariable(name: "vec_", arg: 1, scope: !3985, file: !456, line: 316, type: !3988)
!3992 = !DILocation(line: 0, scope: !3985)
!3993 = !DILocation(line: 316, column: 1, scope: !3985)
!3994 = distinct !DISubprogram(name: "VEC_ipa_edge_args_t_gc_safe_grow_cleared", scope: !456, file: !456, line: 317, type: !3995, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3998)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{null, !3997, !536}
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!3998 = !{!3999, !4000, !4001}
!3999 = !DILocalVariable(name: "vec_", arg: 1, scope: !3994, file: !456, line: 317, type: !3997)
!4000 = !DILocalVariable(name: "size_", arg: 2, scope: !3994, file: !456, line: 317, type: !536)
!4001 = !DILocalVariable(name: "oldsize", scope: !3994, file: !456, line: 317, type: !536)
!4002 = !DILocation(line: 0, scope: !3994)
!4003 = !DILocation(line: 317, column: 1, scope: !3994)
!4004 = distinct !DISubprogram(name: "VEC_ipa_edge_args_t_gc_safe_grow", scope: !456, file: !456, line: 317, type: !3995, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4005)
!4005 = !{!4006, !4007}
!4006 = !DILocalVariable(name: "vec_", arg: 1, scope: !4004, file: !456, line: 317, type: !3997)
!4007 = !DILocalVariable(name: "size_", arg: 2, scope: !4004, file: !456, line: 317, type: !536)
!4008 = !DILocation(line: 0, scope: !4004)
!4009 = !DILocation(line: 317, column: 1, scope: !4004)
!4010 = distinct !DISubprogram(name: "VEC_ipa_edge_args_t_base_address", scope: !456, file: !456, line: 316, type: !4011, scopeLine: 316, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4013)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!3695, !3696}
!4013 = !{!4014}
!4014 = !DILocalVariable(name: "vec_", arg: 1, scope: !4010, file: !456, line: 316, type: !3696)
!4015 = !DILocation(line: 0, scope: !4010)
!4016 = !DILocation(line: 316, column: 1, scope: !4010)
!4017 = distinct !DISubprogram(name: "VEC_ipa_edge_args_t_gc_reserve_exact", scope: !456, file: !456, line: 317, type: !4018, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4020)
!4018 = !DISubroutineType(types: !4019)
!4019 = !{!536, !3997, !536}
!4020 = !{!4021, !4022, !4023}
!4021 = !DILocalVariable(name: "vec_", arg: 1, scope: !4017, file: !456, line: 317, type: !3997)
!4022 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4017, file: !456, line: 317, type: !536)
!4023 = !DILocalVariable(name: "extend", scope: !4017, file: !456, line: 317, type: !536)
!4024 = !DILocation(line: 0, scope: !4017)
!4025 = !DILocation(line: 317, column: 1, scope: !4017)
!4026 = !DILocation(line: 317, column: 1, scope: !4027)
!4027 = distinct !DILexicalBlock(scope: !4017, file: !456, line: 317, column: 1)
!4028 = distinct !DISubprogram(name: "VEC_ipa_edge_args_t_base_space", scope: !456, file: !456, line: 316, type: !4029, scopeLine: 316, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4031)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!536, !3696, !536}
!4031 = !{!4032, !4033}
!4032 = !DILocalVariable(name: "vec_", arg: 1, scope: !4028, file: !456, line: 316, type: !3696)
!4033 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4028, file: !456, line: 316, type: !536)
!4034 = !DILocation(line: 0, scope: !4028)
!4035 = !DILocation(line: 316, column: 1, scope: !4028)
!4036 = distinct !DISubprogram(name: "ipcp_lats_are_equal", scope: !3, file: !3, line: 224, type: !3884, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4037)
!4037 = !{!4038, !4039}
!4038 = !DILocalVariable(name: "lat1", arg: 1, scope: !4036, file: !3, line: 224, type: !2675)
!4039 = !DILocalVariable(name: "lat2", arg: 2, scope: !4036, file: !3, line: 224, type: !2675)
!4040 = !DILocation(line: 0, scope: !4036)
!4041 = !DILocation(line: 226, column: 3, scope: !4036)
!4042 = !DILocation(line: 227, column: 13, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !4036, file: !3, line: 227, column: 7)
!4044 = !DILocation(line: 227, column: 27, scope: !4043)
!4045 = !DILocation(line: 227, column: 18, scope: !4043)
!4046 = !DILocation(line: 227, column: 7, scope: !4036)
!4047 = !DILocation(line: 230, column: 30, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !4036, file: !3, line: 230, column: 7)
!4049 = !DILocation(line: 230, column: 46, scope: !4048)
!4050 = !DILocation(line: 230, column: 7, scope: !4048)
!4051 = !DILocation(line: 234, column: 1, scope: !4036)
!4052 = distinct !DISubprogram(name: "ipcp_lat_is_const", scope: !3, file: !3, line: 206, type: !4053, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4055)
!4053 = !DISubroutineType(types: !4054)
!4054 = !{!535, !2675}
!4055 = !{!4056}
!4056 = !DILocalVariable(name: "lat", arg: 1, scope: !4052, file: !3, line: 206, type: !2675)
!4057 = !DILocation(line: 0, scope: !4052)
!4058 = !DILocation(line: 208, column: 12, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !4052, file: !3, line: 208, column: 7)
!4060 = !DILocation(line: 208, column: 17, scope: !4059)
!4061 = !DILocation(line: 0, scope: !4059)
!4062 = !DILocation(line: 212, column: 1, scope: !4052)
!4063 = distinct !DISubprogram(name: "ipa_get_param", scope: !456, file: !456, line: 234, type: !4064, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4066)
!4064 = !DISubroutineType(types: !4065)
!4065 = !{!543, !2665, !536}
!4066 = !{!4067, !4068}
!4067 = !DILocalVariable(name: "info", arg: 1, scope: !4063, file: !456, line: 234, type: !2665)
!4068 = !DILocalVariable(name: "i", arg: 2, scope: !4063, file: !456, line: 234, type: !536)
!4069 = !DILocation(line: 0, scope: !4063)
!4070 = !DILocation(line: 236, column: 16, scope: !4063)
!4071 = !DILocation(line: 236, column: 10, scope: !4063)
!4072 = !DILocation(line: 236, column: 26, scope: !4063)
!4073 = !DILocation(line: 236, column: 3, scope: !4063)
!4074 = distinct !DISubprogram(name: "ipcp_node_modifiable_p", scope: !3, file: !3, line: 775, type: !3260, scopeLine: 776, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4075)
!4075 = !{!4076}
!4076 = !DILocalVariable(name: "node", arg: 1, scope: !4074, file: !3, line: 775, type: !1760)
!4077 = !DILocation(line: 0, scope: !4074)
!4078 = !DILocation(line: 779, column: 10, scope: !4074)
!4079 = !DILocation(line: 779, column: 3, scope: !4074)
!4080 = distinct !DISubprogram(name: "ipcp_const_param_count", scope: !3, file: !3, line: 1062, type: !4081, scopeLine: 1063, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4083)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{!536, !1760}
!4083 = !{!4084, !4085, !4086, !4087, !4088, !4089, !4093}
!4084 = !DILocalVariable(name: "node", arg: 1, scope: !4080, file: !3, line: 1062, type: !1760)
!4085 = !DILocalVariable(name: "const_param", scope: !4080, file: !3, line: 1064, type: !536)
!4086 = !DILocalVariable(name: "info", scope: !4080, file: !3, line: 1065, type: !2665)
!4087 = !DILocalVariable(name: "count", scope: !4080, file: !3, line: 1066, type: !536)
!4088 = !DILocalVariable(name: "i", scope: !4080, file: !3, line: 1067, type: !536)
!4089 = !DILocalVariable(name: "lat", scope: !4090, file: !3, line: 1071, type: !2675)
!4090 = distinct !DILexicalBlock(scope: !4091, file: !3, line: 1070, column: 5)
!4091 = distinct !DILexicalBlock(scope: !4092, file: !3, line: 1069, column: 3)
!4092 = distinct !DILexicalBlock(scope: !4080, file: !3, line: 1069, column: 3)
!4093 = !DILocalVariable(name: "parm_tree", scope: !4090, file: !3, line: 1072, type: !543)
!4094 = !DILocation(line: 0, scope: !4080)
!4095 = !DILocation(line: 1065, column: 34, scope: !4080)
!4096 = !DILocation(line: 1066, column: 15, scope: !4080)
!4097 = !DILocation(line: 0, scope: !4098)
!4098 = distinct !DILexicalBlock(scope: !4090, file: !3, line: 1073, column: 11)
!4099 = !DILocation(line: 1069, column: 8, scope: !4092)
!4100 = !DILocation(line: 0, scope: !4092)
!4101 = !DILocation(line: 1069, column: 17, scope: !4091)
!4102 = !DILocation(line: 1069, column: 3, scope: !4092)
!4103 = !DILocation(line: 1071, column: 34, scope: !4090)
!4104 = !DILocation(line: 0, scope: !4090)
!4105 = !DILocation(line: 1072, column: 24, scope: !4090)
!4106 = !DILocation(line: 1073, column: 11, scope: !4098)
!4107 = !DILocation(line: 1075, column: 4, scope: !4098)
!4108 = !DILocation(line: 1075, column: 9, scope: !4098)
!4109 = !DILocation(line: 1076, column: 8, scope: !4098)
!4110 = !DILocation(line: 1076, column: 31, scope: !4098)
!4111 = !DILocation(line: 1076, column: 11, scope: !4098)
!4112 = !DILocation(line: 1073, column: 11, scope: !4090)
!4113 = !DILocation(line: 1078, column: 13, scope: !4098)
!4114 = !DILocation(line: 1078, column: 2, scope: !4098)
!4115 = !DILocation(line: 1069, column: 27, scope: !4091)
!4116 = !DILocation(line: 1069, column: 3, scope: !4091)
!4117 = distinct !{!4117, !4102, !4118}
!4118 = !DILocation(line: 1079, column: 5, scope: !4092)
!4119 = !DILocation(line: 1080, column: 3, scope: !4080)
!4120 = distinct !DISubprogram(name: "ipcp_estimate_cloning_cost", scope: !3, file: !3, line: 1025, type: !4121, scopeLine: 1026, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4123)
!4121 = !DISubroutineType(types: !4122)
!4122 = !{!599, !1760}
!4123 = !{!4124, !4125, !4126, !4127, !4128}
!4124 = !DILocalVariable(name: "node", arg: 1, scope: !4120, file: !3, line: 1025, type: !1760)
!4125 = !DILocalVariable(name: "freq_sum", scope: !4120, file: !3, line: 1027, type: !536)
!4126 = !DILocalVariable(name: "count_sum", scope: !4120, file: !3, line: 1028, type: !1050)
!4127 = !DILocalVariable(name: "e", scope: !4120, file: !3, line: 1029, type: !1765)
!4128 = !DILocalVariable(name: "cost", scope: !4120, file: !3, line: 1030, type: !536)
!4129 = !DILocation(line: 0, scope: !4120)
!4130 = !DILocation(line: 1032, column: 10, scope: !4120)
!4131 = !DILocation(line: 1033, column: 8, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !4120, file: !3, line: 1033, column: 7)
!4133 = !DILocation(line: 1033, column: 7, scope: !4120)
!4134 = !DILocation(line: 1035, column: 11, scope: !4135)
!4135 = distinct !DILexicalBlock(scope: !4136, file: !3, line: 1035, column: 11)
!4136 = distinct !DILexicalBlock(scope: !4132, file: !3, line: 1034, column: 5)
!4137 = !DILocation(line: 1035, column: 11, scope: !4136)
!4138 = !DILocation(line: 1037, column: 11, scope: !4135)
!4139 = !DILocation(line: 1036, column: 9, scope: !4135)
!4140 = !DILocation(line: 1041, column: 18, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !4120, file: !3, line: 1041, column: 3)
!4142 = !DILocation(line: 1041, column: 8, scope: !4141)
!4143 = !DILocation(line: 1028, column: 13, scope: !4120)
!4144 = !DILocation(line: 1027, column: 7, scope: !4120)
!4145 = !DILocation(line: 0, scope: !4141)
!4146 = !DILocation(line: 1041, column: 3, scope: !4141)
!4147 = !DILocation(line: 1042, column: 24, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !4149, file: !3, line: 1042, column: 9)
!4149 = distinct !DILexicalBlock(scope: !4141, file: !3, line: 1041, column: 3)
!4150 = !DILocation(line: 1042, column: 39, scope: !4148)
!4151 = !DILocation(line: 1042, column: 47, scope: !4148)
!4152 = !DILocation(line: 1042, column: 10, scope: !4148)
!4153 = !DILocation(line: 1043, column: 9, scope: !4148)
!4154 = !DILocation(line: 1043, column: 13, scope: !4148)
!4155 = !DILocation(line: 1042, column: 9, scope: !4149)
!4156 = !DILocation(line: 1045, column: 18, scope: !4157)
!4157 = distinct !DILexicalBlock(scope: !4148, file: !3, line: 1044, column: 7)
!4158 = !DILocation(line: 1045, column: 12, scope: !4157)
!4159 = !DILocation(line: 1046, column: 17, scope: !4157)
!4160 = !DILocation(line: 1046, column: 27, scope: !4157)
!4161 = !DILocation(line: 1046, column: 11, scope: !4157)
!4162 = !DILocation(line: 1047, column: 7, scope: !4157)
!4163 = !DILocation(line: 1041, column: 37, scope: !4149)
!4164 = !DILocation(line: 1041, column: 3, scope: !4149)
!4165 = distinct !{!4165, !4146, !4166}
!4166 = !DILocation(line: 1047, column: 7, scope: !4141)
!4167 = !DILocation(line: 1049, column: 7, scope: !4168)
!4168 = distinct !DILexicalBlock(scope: !4120, file: !3, line: 1049, column: 7)
!4169 = !DILocation(line: 1049, column: 7, scope: !4120)
!4170 = !DILocation(line: 1050, column: 23, scope: !4168)
!4171 = !DILocation(line: 1050, column: 30, scope: !4168)
!4172 = !DILocation(line: 1050, column: 42, scope: !4168)
!4173 = !DILocation(line: 1050, column: 10, scope: !4168)
!4174 = !DILocation(line: 1050, column: 5, scope: !4168)
!4175 = !DILocation(line: 1052, column: 29, scope: !4168)
!4176 = !DILocation(line: 1052, column: 48, scope: !4168)
!4177 = !DILocation(line: 1052, column: 10, scope: !4168)
!4178 = !DILocation(line: 0, scope: !4168)
!4179 = !DILocation(line: 1053, column: 7, scope: !4180)
!4180 = distinct !DILexicalBlock(scope: !4120, file: !3, line: 1053, column: 7)
!4181 = !DILocation(line: 1053, column: 7, scope: !4120)
!4182 = !DILocation(line: 1055, column: 14, scope: !4180)
!4183 = !DILocation(line: 1055, column: 72, scope: !4180)
!4184 = !DILocation(line: 1054, column: 5, scope: !4180)
!4185 = !DILocation(line: 1057, column: 15, scope: !4120)
!4186 = !DILocation(line: 1057, column: 10, scope: !4120)
!4187 = !DILocation(line: 1057, column: 3, scope: !4120)
!4188 = !DILocation(line: 1058, column: 1, scope: !4120)
!4189 = distinct !DISubprogram(name: "ipcp_estimate_growth", scope: !3, file: !3, line: 973, type: !4121, scopeLine: 974, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4190)
!4190 = !{!4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4204}
!4191 = !DILocalVariable(name: "node", arg: 1, scope: !4189, file: !3, line: 973, type: !1760)
!4192 = !DILocalVariable(name: "cs", scope: !4189, file: !3, line: 975, type: !1765)
!4193 = !DILocalVariable(name: "redirectable_node_callers", scope: !4189, file: !3, line: 976, type: !536)
!4194 = !DILocalVariable(name: "removable_args", scope: !4189, file: !3, line: 977, type: !536)
!4195 = !DILocalVariable(name: "need_original", scope: !4189, file: !3, line: 978, type: !535)
!4196 = !DILocalVariable(name: "info", scope: !4189, file: !3, line: 979, type: !2665)
!4197 = !DILocalVariable(name: "i", scope: !4189, file: !3, line: 980, type: !536)
!4198 = !DILocalVariable(name: "count", scope: !4189, file: !3, line: 980, type: !536)
!4199 = !DILocalVariable(name: "growth", scope: !4189, file: !3, line: 981, type: !536)
!4200 = !DILocalVariable(name: "lat", scope: !4201, file: !3, line: 998, type: !2675)
!4201 = distinct !DILexicalBlock(scope: !4202, file: !3, line: 997, column: 5)
!4202 = distinct !DILexicalBlock(scope: !4203, file: !3, line: 996, column: 3)
!4203 = distinct !DILexicalBlock(scope: !4189, file: !3, line: 996, column: 3)
!4204 = !DILocalVariable(name: "parm_tree", scope: !4201, file: !3, line: 999, type: !543)
!4205 = !DILocation(line: 0, scope: !4189)
!4206 = !DILocation(line: 978, column: 25, scope: !4189)
!4207 = !DILocation(line: 978, column: 24, scope: !4189)
!4208 = !DILocation(line: 983, column: 19, scope: !4209)
!4209 = distinct !DILexicalBlock(scope: !4189, file: !3, line: 983, column: 3)
!4210 = !DILocation(line: 983, column: 8, scope: !4209)
!4211 = !DILocation(line: 978, column: 8, scope: !4189)
!4212 = !DILocation(line: 0, scope: !4209)
!4213 = !DILocation(line: 983, column: 31, scope: !4214)
!4214 = distinct !DILexicalBlock(scope: !4209, file: !3, line: 983, column: 3)
!4215 = !DILocation(line: 983, column: 3, scope: !4209)
!4216 = !DILocation(line: 984, column: 13, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4214, file: !3, line: 984, column: 9)
!4218 = !DILocation(line: 984, column: 20, scope: !4217)
!4219 = !DILocation(line: 984, column: 28, scope: !4217)
!4220 = !DILocation(line: 984, column: 32, scope: !4217)
!4221 = !DILocation(line: 984, column: 9, scope: !4214)
!4222 = !DILocation(line: 985, column: 32, scope: !4217)
!4223 = !DILocation(line: 985, column: 7, scope: !4217)
!4224 = !DILocation(line: 983, column: 49, scope: !4214)
!4225 = !DILocation(line: 983, column: 3, scope: !4214)
!4226 = distinct !{!4226, !4215, !4227}
!4227 = !DILocation(line: 987, column: 23, scope: !4209)
!4228 = !DILocation(line: 991, column: 8, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4189, file: !3, line: 991, column: 7)
!4230 = !DILocation(line: 991, column: 7, scope: !4189)
!4231 = !DILocation(line: 994, column: 10, scope: !4189)
!4232 = !DILocation(line: 995, column: 11, scope: !4189)
!4233 = !DILocation(line: 0, scope: !4234)
!4234 = distinct !DILexicalBlock(scope: !4201, file: !3, line: 1002, column: 11)
!4235 = !DILocation(line: 996, column: 8, scope: !4203)
!4236 = !DILocation(line: 0, scope: !4203)
!4237 = !DILocation(line: 996, column: 17, scope: !4202)
!4238 = !DILocation(line: 996, column: 3, scope: !4203)
!4239 = !DILocation(line: 998, column: 34, scope: !4201)
!4240 = !DILocation(line: 0, scope: !4201)
!4241 = !DILocation(line: 999, column: 24, scope: !4201)
!4242 = !DILocation(line: 1002, column: 11, scope: !4234)
!4243 = !DILocation(line: 1003, column: 4, scope: !4234)
!4244 = !DILocation(line: 1003, column: 28, scope: !4234)
!4245 = !DILocation(line: 1003, column: 8, scope: !4234)
!4246 = !DILocation(line: 1002, column: 11, scope: !4201)
!4247 = !DILocation(line: 1007, column: 16, scope: !4248)
!4248 = distinct !DILexicalBlock(scope: !4201, file: !3, line: 1007, column: 11)
!4249 = !DILocation(line: 1007, column: 21, scope: !4248)
!4250 = !DILocation(line: 1007, column: 11, scope: !4201)
!4251 = !DILocation(line: 996, column: 27, scope: !4202)
!4252 = !DILocation(line: 996, column: 3, scope: !4202)
!4253 = distinct !{!4253, !4238, !4254}
!4254 = !DILocation(line: 1009, column: 5, scope: !4203)
!4255 = !DILocation(line: 1015, column: 39, scope: !4189)
!4256 = !DILocation(line: 1016, column: 24, scope: !4189)
!4257 = !DILocation(line: 1016, column: 7, scope: !4189)
!4258 = !DILocation(line: 1017, column: 7, scope: !4189)
!4259 = !DILocation(line: 1020, column: 1, scope: !4189)
!4260 = distinct !DISubprogram(name: "ipcp_need_redirect_p", scope: !3, file: !3, line: 872, type: !4261, scopeLine: 873, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4263)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{!535, !1765}
!4263 = !{!4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271}
!4264 = !DILocalVariable(name: "cs", arg: 1, scope: !4260, file: !3, line: 872, type: !1765)
!4265 = !DILocalVariable(name: "orig_callee_info", scope: !4260, file: !3, line: 874, type: !2665)
!4266 = !DILocalVariable(name: "i", scope: !4260, file: !3, line: 875, type: !536)
!4267 = !DILocalVariable(name: "count", scope: !4260, file: !3, line: 875, type: !536)
!4268 = !DILocalVariable(name: "jump_func", scope: !4260, file: !3, line: 876, type: !2010)
!4269 = !DILocalVariable(name: "node", scope: !4260, file: !3, line: 877, type: !1760)
!4270 = !DILocalVariable(name: "orig", scope: !4260, file: !3, line: 877, type: !1760)
!4271 = !DILocalVariable(name: "lat", scope: !4272, file: !3, line: 891, type: !2675)
!4272 = distinct !DILexicalBlock(scope: !4273, file: !3, line: 890, column: 5)
!4273 = distinct !DILexicalBlock(scope: !4274, file: !3, line: 889, column: 3)
!4274 = distinct !DILexicalBlock(scope: !4260, file: !3, line: 889, column: 3)
!4275 = !DILocation(line: 0, scope: !4260)
!4276 = !DILocation(line: 877, column: 34, scope: !4260)
!4277 = !DILocation(line: 879, column: 8, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4260, file: !3, line: 879, column: 7)
!4279 = !DILocation(line: 879, column: 7, scope: !4260)
!4280 = !DILocation(line: 882, column: 15, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4260, file: !3, line: 882, column: 7)
!4282 = !DILocation(line: 884, column: 31, scope: !4283)
!4283 = distinct !DILexicalBlock(scope: !4260, file: !3, line: 884, column: 7)
!4284 = !DILocation(line: 884, column: 7, scope: !4283)
!4285 = !DILocation(line: 884, column: 7, scope: !4260)
!4286 = !DILocation(line: 882, column: 42, scope: !4281)
!4287 = !DILocation(line: 882, column: 7, scope: !4260)
!4288 = !DILocation(line: 887, column: 22, scope: !4260)
!4289 = !DILocation(line: 888, column: 11, scope: !4260)
!4290 = !DILocation(line: 0, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4292, file: !3, line: 893, column: 2)
!4292 = distinct !DILexicalBlock(scope: !4272, file: !3, line: 892, column: 11)
!4293 = !DILocation(line: 889, column: 8, scope: !4274)
!4294 = !DILocation(line: 0, scope: !4274)
!4295 = !DILocation(line: 889, column: 17, scope: !4273)
!4296 = !DILocation(line: 889, column: 3, scope: !4274)
!4297 = !DILocation(line: 891, column: 34, scope: !4272)
!4298 = !DILocation(line: 0, scope: !4272)
!4299 = !DILocation(line: 892, column: 11, scope: !4292)
!4300 = !DILocation(line: 892, column: 11, scope: !4272)
!4301 = !DILocation(line: 894, column: 39, scope: !4291)
!4302 = !DILocation(line: 894, column: 16, scope: !4291)
!4303 = !DILocation(line: 895, column: 19, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4291, file: !3, line: 895, column: 8)
!4305 = !DILocation(line: 895, column: 24, scope: !4304)
!4306 = !DILocation(line: 895, column: 8, scope: !4291)
!4307 = !DILocation(line: 898, column: 5, scope: !4273)
!4308 = !DILocation(line: 889, column: 27, scope: !4273)
!4309 = !DILocation(line: 889, column: 3, scope: !4273)
!4310 = distinct !{!4310, !4296, !4311}
!4311 = !DILocation(line: 898, column: 5, scope: !4274)
!4312 = !DILocation(line: 901, column: 1, scope: !4260)
!4313 = distinct !DISubprogram(name: "VEC_ipa_replace_map_p_gc_alloc", scope: !433, file: !433, line: 169, type: !4314, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4316)
!4314 = !DISubroutineType(types: !4315)
!4315 = !{!1943, !536}
!4316 = !{!4317}
!4317 = !DILocalVariable(name: "alloc_", arg: 1, scope: !4313, file: !433, line: 169, type: !536)
!4318 = !DILocation(line: 0, scope: !4313)
!4319 = !DILocation(line: 169, column: 1, scope: !4313)
!4320 = distinct !DISubprogram(name: "ipcp_create_replace_map", scope: !3, file: !3, line: 846, type: !4321, scopeLine: 847, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4323)
!4321 = !DISubroutineType(types: !4322)
!4322 = !{!1956, !543, !2675}
!4323 = !{!4324, !4325, !4326, !4327}
!4324 = !DILocalVariable(name: "parm_tree", arg: 1, scope: !4320, file: !3, line: 846, type: !543)
!4325 = !DILocalVariable(name: "lat", arg: 2, scope: !4320, file: !3, line: 846, type: !2675)
!4326 = !DILocalVariable(name: "replace_map", scope: !4320, file: !3, line: 848, type: !1956)
!4327 = !DILocalVariable(name: "const_val", scope: !4320, file: !3, line: 849, type: !543)
!4328 = !DILocation(line: 0, scope: !4320)
!4329 = !DILocation(line: 851, column: 17, scope: !4320)
!4330 = !DILocation(line: 852, column: 37, scope: !4320)
!4331 = !DILocation(line: 852, column: 15, scope: !4320)
!4332 = !DILocation(line: 853, column: 7, scope: !4333)
!4333 = distinct !DILexicalBlock(scope: !4320, file: !3, line: 853, column: 7)
!4334 = !DILocation(line: 853, column: 7, scope: !4320)
!4335 = !DILocation(line: 855, column: 7, scope: !4336)
!4336 = distinct !DILexicalBlock(scope: !4333, file: !3, line: 854, column: 5)
!4337 = !DILocation(line: 856, column: 27, scope: !4336)
!4338 = !DILocation(line: 856, column: 7, scope: !4336)
!4339 = !DILocation(line: 857, column: 16, scope: !4336)
!4340 = !DILocation(line: 857, column: 7, scope: !4336)
!4341 = !DILocation(line: 858, column: 27, scope: !4336)
!4342 = !DILocation(line: 858, column: 7, scope: !4336)
!4343 = !DILocation(line: 859, column: 16, scope: !4336)
!4344 = !DILocation(line: 859, column: 7, scope: !4336)
!4345 = !DILocation(line: 860, column: 5, scope: !4336)
!4346 = !DILocation(line: 861, column: 16, scope: !4320)
!4347 = !DILocation(line: 861, column: 25, scope: !4320)
!4348 = !DILocation(line: 862, column: 16, scope: !4320)
!4349 = !DILocation(line: 862, column: 25, scope: !4320)
!4350 = !DILocation(line: 863, column: 16, scope: !4320)
!4351 = !DILocation(line: 863, column: 26, scope: !4320)
!4352 = !DILocation(line: 864, column: 16, scope: !4320)
!4353 = !DILocation(line: 864, column: 22, scope: !4320)
!4354 = !DILocation(line: 866, column: 3, scope: !4320)
!4355 = distinct !DISubprogram(name: "VEC_ipa_replace_map_p_gc_safe_push", scope: !433, file: !433, line: 169, type: !4356, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4360)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{!4358, !4359, !1955}
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!4360 = !{!4361, !4362}
!4361 = !DILocalVariable(name: "vec_", arg: 1, scope: !4355, file: !433, line: 169, type: !4359)
!4362 = !DILocalVariable(name: "obj_", arg: 2, scope: !4355, file: !433, line: 169, type: !1955)
!4363 = !DILocation(line: 0, scope: !4355)
!4364 = !DILocation(line: 169, column: 1, scope: !4355)
!4365 = distinct !DISubprogram(name: "VEC_cgraph_edge_p_heap_alloc", scope: !433, file: !433, line: 353, type: !4366, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4368)
!4366 = !DISubroutineType(types: !4367)
!4367 = !{!2049, !536}
!4368 = !{!4369}
!4369 = !DILocalVariable(name: "alloc_", arg: 1, scope: !4365, file: !433, line: 353, type: !536)
!4370 = !DILocation(line: 0, scope: !4365)
!4371 = !DILocation(line: 353, column: 1, scope: !4365)
!4372 = distinct !DISubprogram(name: "VEC_cgraph_edge_p_base_quick_push", scope: !433, file: !433, line: 352, type: !4373, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4377)
!4373 = !DISubroutineType(types: !4374)
!4374 = !{!4375, !4376, !2061}
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!4377 = !{!4378, !4379, !4380}
!4378 = !DILocalVariable(name: "vec_", arg: 1, scope: !4372, file: !433, line: 352, type: !4376)
!4379 = !DILocalVariable(name: "obj_", arg: 2, scope: !4372, file: !433, line: 352, type: !2061)
!4380 = !DILocalVariable(name: "slot_", scope: !4372, file: !433, line: 352, type: !4375)
!4381 = !DILocation(line: 0, scope: !4372)
!4382 = !DILocation(line: 352, column: 1, scope: !4372)
!4383 = distinct !DISubprogram(name: "VEC_cgraph_edge_p_heap_free", scope: !433, file: !433, line: 353, type: !4384, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4387)
!4384 = !DISubroutineType(types: !4385)
!4385 = !{null, !4386}
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!4387 = !{!4388}
!4388 = !DILocalVariable(name: "vec_", arg: 1, scope: !4383, file: !433, line: 353, type: !4386)
!4389 = !DILocation(line: 0, scope: !4383)
!4390 = !DILocation(line: 353, column: 1, scope: !4391)
!4391 = distinct !DILexicalBlock(scope: !4383, file: !433, line: 353, column: 1)
!4392 = !DILocation(line: 353, column: 1, scope: !4383)
!4393 = distinct !DISubprogram(name: "ipcp_init_cloned_node", scope: !3, file: !3, line: 171, type: !4394, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4396)
!4394 = !DISubroutineType(types: !4395)
!4395 = !{null, !1760, !1760}
!4396 = !{!4397, !4398}
!4397 = !DILocalVariable(name: "orig_node", arg: 1, scope: !4393, file: !3, line: 171, type: !1760)
!4398 = !DILocalVariable(name: "new_node", arg: 2, scope: !4393, file: !3, line: 172, type: !1760)
!4399 = !DILocation(line: 0, scope: !4393)
!4400 = !DILocation(line: 174, column: 3, scope: !4393)
!4401 = !DILocation(line: 175, column: 3, scope: !4393)
!4402 = !DILocation(line: 176, column: 3, scope: !4393)
!4403 = !DILocation(line: 176, column: 28, scope: !4393)
!4404 = !DILocation(line: 176, column: 43, scope: !4393)
!4405 = !DILocation(line: 177, column: 1, scope: !4393)
!4406 = distinct !DISubprogram(name: "ipcp_update_callgraph", scope: !3, file: !3, line: 905, type: !1844, scopeLine: 906, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4407)
!4407 = !{!4408, !4409, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4424}
!4408 = !DILocalVariable(name: "node", scope: !4406, file: !3, line: 907, type: !1760)
!4409 = !DILocalVariable(name: "args_to_skip", scope: !4410, file: !3, line: 912, type: !1205)
!4410 = distinct !DILexicalBlock(scope: !4411, file: !3, line: 911, column: 7)
!4411 = distinct !DILexicalBlock(scope: !4412, file: !3, line: 910, column: 9)
!4412 = distinct !DILexicalBlock(scope: !4413, file: !3, line: 909, column: 3)
!4413 = distinct !DILexicalBlock(scope: !4406, file: !3, line: 909, column: 3)
!4414 = !DILocalVariable(name: "orig_node", scope: !4410, file: !3, line: 913, type: !1760)
!4415 = !DILocalVariable(name: "info", scope: !4410, file: !3, line: 914, type: !2665)
!4416 = !DILocalVariable(name: "i", scope: !4410, file: !3, line: 915, type: !536)
!4417 = !DILocalVariable(name: "count", scope: !4410, file: !3, line: 915, type: !536)
!4418 = !DILocalVariable(name: "cs", scope: !4410, file: !3, line: 916, type: !1765)
!4419 = !DILocalVariable(name: "next", scope: !4410, file: !3, line: 916, type: !1765)
!4420 = !DILocalVariable(name: "lat", scope: !4421, file: !3, line: 920, type: !2675)
!4421 = distinct !DILexicalBlock(scope: !4422, file: !3, line: 919, column: 4)
!4422 = distinct !DILexicalBlock(scope: !4423, file: !3, line: 918, column: 2)
!4423 = distinct !DILexicalBlock(scope: !4410, file: !3, line: 918, column: 2)
!4424 = !DILocalVariable(name: "parm_tree", scope: !4421, file: !3, line: 921, type: !543)
!4425 = !DILocation(line: 909, column: 8, scope: !4413)
!4426 = !DILocation(line: 0, scope: !4413)
!4427 = !DILocation(line: 0, scope: !4406)
!4428 = !DILocation(line: 909, column: 3, scope: !4413)
!4429 = !DILocation(line: 910, column: 15, scope: !4411)
!4430 = !DILocation(line: 910, column: 9, scope: !4411)
!4431 = !DILocation(line: 910, column: 24, scope: !4411)
!4432 = !DILocation(line: 910, column: 27, scope: !4411)
!4433 = !DILocation(line: 910, column: 9, scope: !4412)
!4434 = !DILocation(line: 912, column: 24, scope: !4410)
!4435 = !DILocation(line: 0, scope: !4410)
!4436 = !DILocation(line: 913, column: 34, scope: !4410)
!4437 = !DILocation(line: 914, column: 40, scope: !4410)
!4438 = !DILocation(line: 915, column: 24, scope: !4410)
!4439 = !DILocation(line: 0, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4421, file: !3, line: 924, column: 10)
!4441 = !DILocation(line: 918, column: 7, scope: !4423)
!4442 = !DILocation(line: 0, scope: !4423)
!4443 = !DILocation(line: 918, column: 16, scope: !4422)
!4444 = !DILocation(line: 918, column: 2, scope: !4423)
!4445 = !DILocation(line: 920, column: 33, scope: !4421)
!4446 = !DILocation(line: 0, scope: !4421)
!4447 = !DILocation(line: 921, column: 23, scope: !4421)
!4448 = !DILocation(line: 924, column: 10, scope: !4440)
!4449 = !DILocation(line: 925, column: 3, scope: !4440)
!4450 = !DILocation(line: 925, column: 27, scope: !4440)
!4451 = !DILocation(line: 925, column: 7, scope: !4440)
!4452 = !DILocation(line: 924, column: 10, scope: !4421)
!4453 = !DILocation(line: 928, column: 3, scope: !4454)
!4454 = distinct !DILexicalBlock(scope: !4440, file: !3, line: 927, column: 8)
!4455 = !DILocation(line: 929, column: 3, scope: !4454)
!4456 = !DILocation(line: 932, column: 15, scope: !4457)
!4457 = distinct !DILexicalBlock(scope: !4421, file: !3, line: 932, column: 10)
!4458 = !DILocation(line: 932, column: 20, scope: !4457)
!4459 = !DILocation(line: 932, column: 10, scope: !4421)
!4460 = !DILocation(line: 933, column: 8, scope: !4457)
!4461 = !DILocation(line: 918, column: 26, scope: !4422)
!4462 = !DILocation(line: 918, column: 2, scope: !4422)
!4463 = distinct !{!4463, !4444, !4464}
!4464 = !DILocation(line: 934, column: 4, scope: !4423)
!4465 = !DILocation(line: 935, column: 18, scope: !4466)
!4466 = distinct !DILexicalBlock(scope: !4410, file: !3, line: 935, column: 2)
!4467 = !DILocation(line: 935, column: 7, scope: !4466)
!4468 = !DILocation(line: 0, scope: !4466)
!4469 = !DILocation(line: 935, column: 2, scope: !4466)
!4470 = !DILocation(line: 937, column: 17, scope: !4471)
!4471 = distinct !DILexicalBlock(scope: !4472, file: !3, line: 936, column: 4)
!4472 = distinct !DILexicalBlock(scope: !4466, file: !3, line: 935, column: 2)
!4473 = !DILocation(line: 938, column: 35, scope: !4474)
!4474 = distinct !DILexicalBlock(scope: !4471, file: !3, line: 938, column: 10)
!4475 = !DILocation(line: 938, column: 11, scope: !4474)
!4476 = !DILocation(line: 938, column: 43, scope: !4474)
!4477 = !DILocation(line: 938, column: 46, scope: !4474)
!4478 = !DILocation(line: 938, column: 10, scope: !4471)
!4479 = !DILocation(line: 939, column: 8, scope: !4474)
!4480 = !DILocation(line: 935, column: 2, scope: !4472)
!4481 = distinct !{!4481, !4469, !4482}
!4482 = !DILocation(line: 940, column: 4, scope: !4466)
!4483 = !DILocation(line: 909, column: 48, scope: !4412)
!4484 = !DILocation(line: 909, column: 3, scope: !4412)
!4485 = distinct !{!4485, !4428, !4486}
!4486 = !DILocation(line: 941, column: 7, scope: !4413)
!4487 = !DILocation(line: 942, column: 1, scope: !4406)
!4488 = distinct !DISubprogram(name: "ipcp_update_profiling", scope: !3, file: !3, line: 947, type: !1844, scopeLine: 948, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4489)
!4489 = !{!4490, !4491, !4492, !4493, !4494}
!4490 = !DILocalVariable(name: "node", scope: !4488, file: !3, line: 949, type: !1760)
!4491 = !DILocalVariable(name: "orig_node", scope: !4488, file: !3, line: 949, type: !1760)
!4492 = !DILocalVariable(name: "scale", scope: !4488, file: !3, line: 950, type: !1050)
!4493 = !DILocalVariable(name: "scale_complement", scope: !4488, file: !3, line: 950, type: !1050)
!4494 = !DILocalVariable(name: "cs", scope: !4488, file: !3, line: 951, type: !1765)
!4495 = !DILocation(line: 953, column: 8, scope: !4496)
!4496 = distinct !DILexicalBlock(scope: !4488, file: !3, line: 953, column: 3)
!4497 = !DILocation(line: 0, scope: !4496)
!4498 = !DILocation(line: 0, scope: !4488)
!4499 = !DILocation(line: 953, column: 3, scope: !4496)
!4500 = !DILocation(line: 955, column: 11, scope: !4501)
!4501 = distinct !DILexicalBlock(scope: !4502, file: !3, line: 955, column: 11)
!4502 = distinct !DILexicalBlock(scope: !4503, file: !3, line: 954, column: 5)
!4503 = distinct !DILexicalBlock(scope: !4496, file: !3, line: 953, column: 3)
!4504 = !DILocation(line: 955, column: 11, scope: !4502)
!4505 = !DILocation(line: 957, column: 16, scope: !4506)
!4506 = distinct !DILexicalBlock(scope: !4501, file: !3, line: 956, column: 2)
!4507 = !DILocation(line: 958, column: 12, scope: !4506)
!4508 = !DILocation(line: 959, column: 29, scope: !4506)
!4509 = !DILocation(line: 959, column: 35, scope: !4506)
!4510 = !DILocation(line: 959, column: 43, scope: !4506)
!4511 = !DILocation(line: 959, column: 10, scope: !4506)
!4512 = !DILocation(line: 959, column: 16, scope: !4506)
!4513 = !DILocation(line: 960, column: 40, scope: !4506)
!4514 = !DILocation(line: 962, column: 17, scope: !4506)
!4515 = !DILocation(line: 962, column: 23, scope: !4506)
!4516 = !DILocation(line: 962, column: 42, scope: !4506)
!4517 = !DILocation(line: 961, column: 21, scope: !4506)
!4518 = !DILocation(line: 963, column: 20, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4506, file: !3, line: 963, column: 4)
!4520 = !DILocation(line: 963, column: 9, scope: !4519)
!4521 = !DILocation(line: 0, scope: !4519)
!4522 = !DILocation(line: 963, column: 4, scope: !4519)
!4523 = !DILocation(line: 964, column: 22, scope: !4524)
!4524 = distinct !DILexicalBlock(scope: !4519, file: !3, line: 963, column: 4)
!4525 = !DILocation(line: 964, column: 28, scope: !4524)
!4526 = !DILocation(line: 964, column: 36, scope: !4524)
!4527 = !DILocation(line: 964, column: 16, scope: !4524)
!4528 = !DILocation(line: 963, column: 42, scope: !4524)
!4529 = !DILocation(line: 963, column: 4, scope: !4524)
!4530 = distinct !{!4530, !4522, !4531}
!4531 = !DILocation(line: 964, column: 38, scope: !4519)
!4532 = !DILocation(line: 965, column: 25, scope: !4533)
!4533 = distinct !DILexicalBlock(scope: !4506, file: !3, line: 965, column: 4)
!4534 = !DILocation(line: 965, column: 9, scope: !4533)
!4535 = !DILocation(line: 0, scope: !4533)
!4536 = !DILocation(line: 965, column: 4, scope: !4533)
!4537 = !DILocation(line: 966, column: 22, scope: !4538)
!4538 = distinct !DILexicalBlock(scope: !4533, file: !3, line: 965, column: 4)
!4539 = !DILocation(line: 966, column: 28, scope: !4538)
!4540 = !DILocation(line: 966, column: 47, scope: !4538)
!4541 = !DILocation(line: 966, column: 16, scope: !4538)
!4542 = !DILocation(line: 965, column: 47, scope: !4538)
!4543 = !DILocation(line: 965, column: 4, scope: !4538)
!4544 = distinct !{!4544, !4536, !4545}
!4545 = !DILocation(line: 966, column: 49, scope: !4533)
!4546 = !DILocation(line: 953, column: 48, scope: !4503)
!4547 = !DILocation(line: 953, column: 3, scope: !4503)
!4548 = distinct !{!4548, !4499, !4549}
!4549 = !DILocation(line: 968, column: 5, scope: !4496)
!4550 = !DILocation(line: 969, column: 1, scope: !4488)
!4551 = distinct !DISubprogram(name: "ipcp_lat_is_insertable", scope: !3, file: !3, line: 217, type: !4053, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4552)
!4552 = !{!4553}
!4553 = !DILocalVariable(name: "lat", arg: 1, scope: !4551, file: !3, line: 217, type: !2675)
!4554 = !DILocation(line: 0, scope: !4551)
!4555 = !DILocation(line: 219, column: 15, scope: !4551)
!4556 = !DILocation(line: 219, column: 20, scope: !4551)
!4557 = !DILocation(line: 219, column: 10, scope: !4551)
!4558 = !DILocation(line: 219, column: 3, scope: !4551)
!4559 = distinct !DISubprogram(name: "ipcp_get_orig_node", scope: !3, file: !3, line: 156, type: !4560, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4562)
!4560 = !DISubroutineType(types: !4561)
!4561 = !{!1760, !1760}
!4562 = !{!4563}
!4563 = !DILocalVariable(name: "node", arg: 1, scope: !4559, file: !3, line: 156, type: !1760)
!4564 = !DILocation(line: 0, scope: !4559)
!4565 = !DILocation(line: 158, column: 10, scope: !4559)
!4566 = !DILocation(line: 158, column: 31, scope: !4559)
!4567 = !DILocation(line: 158, column: 3, scope: !4559)
!4568 = distinct !DISubprogram(name: "build_const_val", scope: !3, file: !3, line: 563, type: !4569, scopeLine: 564, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4571)
!4569 = !DISubroutineType(types: !4570)
!4570 = !{!543, !2675, !543}
!4571 = !{!4572, !4573, !4574}
!4572 = !DILocalVariable(name: "lat", arg: 1, scope: !4568, file: !3, line: 563, type: !2675)
!4573 = !DILocalVariable(name: "tree_type", arg: 2, scope: !4568, file: !3, line: 563, type: !543)
!4574 = !DILocalVariable(name: "val", scope: !4568, file: !3, line: 565, type: !543)
!4575 = !DILocation(line: 0, scope: !4568)
!4576 = !DILocation(line: 567, column: 3, scope: !4568)
!4577 = !DILocation(line: 568, column: 14, scope: !4568)
!4578 = !DILocation(line: 570, column: 46, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4568, file: !3, line: 570, column: 7)
!4580 = !DILocation(line: 570, column: 8, scope: !4579)
!4581 = !DILocation(line: 570, column: 7, scope: !4568)
!4582 = !DILocation(line: 572, column: 11, scope: !4583)
!4583 = distinct !DILexicalBlock(scope: !4584, file: !3, line: 572, column: 11)
!4584 = distinct !DILexicalBlock(scope: !4579, file: !3, line: 571, column: 5)
!4585 = !DILocation(line: 572, column: 11, scope: !4584)
!4586 = !DILocation(line: 573, column: 9, scope: !4583)
!4587 = !DILocation(line: 573, column: 2, scope: !4583)
!4588 = !DILocation(line: 575, column: 9, scope: !4583)
!4589 = !DILocation(line: 575, column: 2, scope: !4583)
!4590 = !DILocation(line: 578, column: 1, scope: !4568)
!4591 = distinct !DISubprogram(name: "VEC_ipa_replace_map_p_gc_reserve", scope: !433, file: !433, line: 169, type: !4592, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4594)
!4592 = !DISubroutineType(types: !4593)
!4593 = !{!536, !4359, !536}
!4594 = !{!4595, !4596, !4597}
!4595 = !DILocalVariable(name: "vec_", arg: 1, scope: !4591, file: !433, line: 169, type: !4359)
!4596 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4591, file: !433, line: 169, type: !536)
!4597 = !DILocalVariable(name: "extend", scope: !4591, file: !433, line: 169, type: !536)
!4598 = !DILocation(line: 0, scope: !4591)
!4599 = !DILocation(line: 169, column: 1, scope: !4591)
!4600 = !DILocation(line: 169, column: 1, scope: !4601)
!4601 = distinct !DILexicalBlock(scope: !4591, file: !433, line: 169, column: 1)
!4602 = distinct !DISubprogram(name: "VEC_ipa_replace_map_p_base_quick_push", scope: !433, file: !433, line: 168, type: !4603, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4606)
!4603 = !DISubroutineType(types: !4604)
!4604 = !{!4358, !4605, !1955}
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!4606 = !{!4607, !4608, !4609}
!4607 = !DILocalVariable(name: "vec_", arg: 1, scope: !4602, file: !433, line: 168, type: !4605)
!4608 = !DILocalVariable(name: "obj_", arg: 2, scope: !4602, file: !433, line: 168, type: !1955)
!4609 = !DILocalVariable(name: "slot_", scope: !4602, file: !433, line: 168, type: !4358)
!4610 = !DILocation(line: 0, scope: !4602)
!4611 = !DILocation(line: 168, column: 1, scope: !4602)
!4612 = distinct !DISubprogram(name: "VEC_ipa_replace_map_p_base_space", scope: !433, file: !433, line: 168, type: !4613, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4615)
!4613 = !DISubroutineType(types: !4614)
!4614 = !{!536, !4605, !536}
!4615 = !{!4616, !4617}
!4616 = !DILocalVariable(name: "vec_", arg: 1, scope: !4612, file: !433, line: 168, type: !4605)
!4617 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4612, file: !433, line: 168, type: !536)
!4618 = !DILocation(line: 0, scope: !4612)
!4619 = !DILocation(line: 168, column: 1, scope: !4612)
!4620 = distinct !DISubprogram(name: "ipcp_node_is_clone", scope: !3, file: !3, line: 163, type: !3260, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4621)
!4621 = !{!4622}
!4622 = !DILocalVariable(name: "node", arg: 1, scope: !4620, file: !3, line: 163, type: !1760)
!4623 = !DILocation(line: 0, scope: !4620)
!4624 = !DILocation(line: 165, column: 11, scope: !4620)
!4625 = !DILocation(line: 165, column: 37, scope: !4620)
!4626 = !DILocation(line: 165, column: 10, scope: !4620)
!4627 = !DILocation(line: 165, column: 3, scope: !4620)
!4628 = distinct !DISubprogram(name: "ipcp_print_func_profile_counts", scope: !3, file: !3, line: 800, type: !2930, scopeLine: 801, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4629)
!4629 = !{!4630, !4631}
!4630 = !DILocalVariable(name: "f", arg: 1, scope: !4628, file: !3, line: 800, type: !2102)
!4631 = !DILocalVariable(name: "node", scope: !4628, file: !3, line: 802, type: !1760)
!4632 = !DILocation(line: 0, scope: !4628)
!4633 = !DILocation(line: 804, column: 8, scope: !4634)
!4634 = distinct !DILexicalBlock(scope: !4628, file: !3, line: 804, column: 3)
!4635 = !DILocation(line: 0, scope: !4634)
!4636 = !DILocation(line: 804, column: 3, scope: !4634)
!4637 = !DILocation(line: 806, column: 36, scope: !4638)
!4638 = distinct !DILexicalBlock(scope: !4639, file: !3, line: 805, column: 5)
!4639 = distinct !DILexicalBlock(scope: !4634, file: !3, line: 804, column: 3)
!4640 = !DILocation(line: 806, column: 7, scope: !4638)
!4641 = !DILocation(line: 808, column: 39, scope: !4638)
!4642 = !DILocation(line: 807, column: 7, scope: !4638)
!4643 = !DILocation(line: 804, column: 48, scope: !4639)
!4644 = !DILocation(line: 804, column: 3, scope: !4639)
!4645 = distinct !{!4645, !4636, !4646}
!4646 = !DILocation(line: 809, column: 5, scope: !4634)
!4647 = !DILocation(line: 810, column: 1, scope: !4628)
!4648 = distinct !DISubprogram(name: "ipcp_print_call_profile_counts", scope: !3, file: !3, line: 814, type: !2930, scopeLine: 815, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4649)
!4649 = !{!4650, !4651, !4652}
!4650 = !DILocalVariable(name: "f", arg: 1, scope: !4648, file: !3, line: 814, type: !2102)
!4651 = !DILocalVariable(name: "node", scope: !4648, file: !3, line: 816, type: !1760)
!4652 = !DILocalVariable(name: "cs", scope: !4648, file: !3, line: 817, type: !1765)
!4653 = !DILocation(line: 0, scope: !4648)
!4654 = !DILocation(line: 819, column: 8, scope: !4655)
!4655 = distinct !DILexicalBlock(scope: !4648, file: !3, line: 819, column: 3)
!4656 = !DILocation(line: 0, scope: !4655)
!4657 = !DILocation(line: 819, column: 3, scope: !4655)
!4658 = !DILocation(line: 821, column: 23, scope: !4659)
!4659 = distinct !DILexicalBlock(scope: !4660, file: !3, line: 821, column: 7)
!4660 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 820, column: 5)
!4661 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 819, column: 3)
!4662 = !DILocation(line: 821, column: 12, scope: !4659)
!4663 = !DILocation(line: 0, scope: !4659)
!4664 = !DILocation(line: 821, column: 7, scope: !4659)
!4665 = !DILocation(line: 823, column: 51, scope: !4666)
!4666 = distinct !DILexicalBlock(scope: !4667, file: !3, line: 822, column: 2)
!4667 = distinct !DILexicalBlock(scope: !4659, file: !3, line: 821, column: 7)
!4668 = !DILocation(line: 823, column: 29, scope: !4666)
!4669 = !DILocation(line: 824, column: 28, scope: !4666)
!4670 = !DILocation(line: 824, column: 6, scope: !4666)
!4671 = !DILocation(line: 823, column: 4, scope: !4666)
!4672 = !DILocation(line: 826, column: 26, scope: !4666)
!4673 = !DILocation(line: 825, column: 4, scope: !4666)
!4674 = !DILocation(line: 821, column: 45, scope: !4667)
!4675 = !DILocation(line: 821, column: 7, scope: !4667)
!4676 = distinct !{!4676, !4664, !4677}
!4677 = !DILocation(line: 827, column: 2, scope: !4659)
!4678 = !DILocation(line: 819, column: 48, scope: !4661)
!4679 = !DILocation(line: 819, column: 3, scope: !4661)
!4680 = distinct !{!4680, !4657, !4681}
!4681 = !DILocation(line: 828, column: 5, scope: !4655)
!4682 = !DILocation(line: 829, column: 1, scope: !4648)
!4683 = distinct !DISubprogram(name: "ipcp_init_stage", scope: !3, file: !3, line: 615, type: !1844, scopeLine: 616, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4684)
!4684 = !{!4685, !4686}
!4685 = !DILocalVariable(name: "node", scope: !4683, file: !3, line: 617, type: !1760)
!4686 = !DILocalVariable(name: "cs", scope: !4683, file: !3, line: 618, type: !1765)
!4687 = !DILocation(line: 620, column: 8, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4683, file: !3, line: 620, column: 3)
!4689 = !DILocation(line: 0, scope: !4688)
!4690 = !DILocation(line: 0, scope: !4683)
!4691 = !DILocation(line: 620, column: 3, scope: !4688)
!4692 = !DILocation(line: 621, column: 15, scope: !4693)
!4693 = distinct !DILexicalBlock(scope: !4694, file: !3, line: 621, column: 9)
!4694 = distinct !DILexicalBlock(scope: !4688, file: !3, line: 620, column: 3)
!4695 = !DILocation(line: 621, column: 9, scope: !4693)
!4696 = !DILocation(line: 621, column: 9, scope: !4694)
!4697 = !DILocation(line: 622, column: 7, scope: !4693)
!4698 = !DILocation(line: 620, column: 48, scope: !4694)
!4699 = !DILocation(line: 620, column: 3, scope: !4694)
!4700 = distinct !{!4700, !4691, !4701}
!4701 = !DILocation(line: 622, column: 30, scope: !4688)
!4702 = !DILocation(line: 623, column: 8, scope: !4703)
!4703 = distinct !DILexicalBlock(scope: !4683, file: !3, line: 623, column: 3)
!4704 = !DILocation(line: 0, scope: !4703)
!4705 = !DILocation(line: 623, column: 3, scope: !4703)
!4706 = !DILocation(line: 625, column: 18, scope: !4707)
!4707 = distinct !DILexicalBlock(scope: !4708, file: !3, line: 625, column: 11)
!4708 = distinct !DILexicalBlock(scope: !4709, file: !3, line: 624, column: 5)
!4709 = distinct !DILexicalBlock(scope: !4703, file: !3, line: 623, column: 3)
!4710 = !DILocation(line: 625, column: 12, scope: !4707)
!4711 = !DILocation(line: 625, column: 11, scope: !4708)
!4712 = !DILocation(line: 628, column: 23, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !4708, file: !3, line: 628, column: 7)
!4714 = !DILocation(line: 628, column: 12, scope: !4713)
!4715 = !DILocation(line: 0, scope: !4713)
!4716 = !DILocation(line: 628, column: 7, scope: !4713)
!4717 = !DILocation(line: 632, column: 13, scope: !4718)
!4718 = distinct !DILexicalBlock(scope: !4719, file: !3, line: 632, column: 8)
!4719 = distinct !DILexicalBlock(scope: !4720, file: !3, line: 629, column: 2)
!4720 = distinct !DILexicalBlock(scope: !4713, file: !3, line: 628, column: 7)
!4721 = !DILocation(line: 632, column: 21, scope: !4718)
!4722 = !DILocation(line: 632, column: 9, scope: !4718)
!4723 = !DILocation(line: 632, column: 34, scope: !4718)
!4724 = !DILocation(line: 632, column: 47, scope: !4718)
!4725 = !DILocation(line: 632, column: 30, scope: !4718)
!4726 = !DILocation(line: 634, column: 4, scope: !4719)
!4727 = !DILocation(line: 635, column: 35, scope: !4728)
!4728 = distinct !DILexicalBlock(scope: !4719, file: !3, line: 635, column: 8)
!4729 = !DILocation(line: 635, column: 8, scope: !4728)
!4730 = !DILocation(line: 636, column: 32, scope: !4728)
!4731 = !DILocation(line: 636, column: 11, scope: !4728)
!4732 = !DILocation(line: 636, column: 8, scope: !4728)
!4733 = !DILocation(line: 635, column: 8, scope: !4719)
!4734 = !DILocation(line: 637, column: 40, scope: !4728)
!4735 = !DILocation(line: 637, column: 6, scope: !4728)
!4736 = !DILocation(line: 638, column: 4, scope: !4719)
!4737 = !DILocation(line: 639, column: 2, scope: !4719)
!4738 = !DILocation(line: 628, column: 45, scope: !4720)
!4739 = !DILocation(line: 628, column: 7, scope: !4720)
!4740 = distinct !{!4740, !4716, !4741}
!4741 = !DILocation(line: 639, column: 2, scope: !4713)
!4742 = !DILocation(line: 623, column: 48, scope: !4709)
!4743 = !DILocation(line: 623, column: 3, scope: !4709)
!4744 = distinct !{!4744, !4705, !4745}
!4745 = !DILocation(line: 640, column: 5, scope: !4703)
!4746 = !DILocation(line: 641, column: 1, scope: !4683)
!4747 = distinct !DISubprogram(name: "ipcp_analyze_node", scope: !3, file: !3, line: 181, type: !1872, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4748)
!4748 = !{!4749}
!4749 = !DILocalVariable(name: "node", arg: 1, scope: !4747, file: !3, line: 181, type: !1760)
!4750 = !DILocation(line: 0, scope: !4747)
!4751 = !DILocation(line: 184, column: 3, scope: !4747)
!4752 = !DILocation(line: 186, column: 3, scope: !4747)
!4753 = !DILocation(line: 187, column: 3, scope: !4747)
!4754 = !DILocation(line: 188, column: 1, scope: !4747)
!4755 = distinct !DISubprogram(name: "ipa_set_called_with_variable_arg", scope: !456, file: !456, line: 253, type: !4756, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4758)
!4756 = !DISubroutineType(types: !4757)
!4757 = !{null, !2665}
!4758 = !{!4759}
!4759 = !DILocalVariable(name: "info", arg: 1, scope: !4755, file: !456, line: 253, type: !2665)
!4760 = !DILocation(line: 0, scope: !4755)
!4761 = !DILocation(line: 255, column: 9, scope: !4755)
!4762 = !DILocation(line: 255, column: 35, scope: !4755)
!4763 = !DILocation(line: 256, column: 1, scope: !4755)
