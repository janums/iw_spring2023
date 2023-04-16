; ModuleID = 'lto-section-out.bc'
source_filename = "lto-section-out.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, %struct.bitmap_obstack* }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.bitmap_obstack = type { %struct.bitmap_element_def*, %struct.bitmap_head_def*, %struct.obstack }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.lang_hooks = type { i8*, i64, void (%union.tree_node*)*, i64 (i32)*, i32 (i32, i8**)*, void (%struct.diagnostic_context*)*, i32 (i64, i8*, i32)*, i8 (i8*, i64)*, i8 (i8**)*, i8 ()*, void ()*, void (i32)*, i8 (%union.tree_node*)*, i32 (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void ()*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)*, i32 (%union.tree_node*, %union.tree_node*)*, void (%struct.diagnostic_context*, i8*, %struct.diagnostic_info*)*, i64 (i64)*, %struct.attribute_spec*, %struct.attribute_spec*, %struct.attribute_spec*, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i8 (%union.tree_node*)*, i32 (%union.tree_node**, %struct.gimple_seq_d**, %struct.gimple_seq_d**)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void ()*, %union.tree_node* (%union.tree_node*, i8*, i8*)*, %union.tree_node* ()*, %union.tree_node* (%union.tree_node*)*, i8 }
%struct.diagnostic_context = type opaque
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
%struct.pt_solution = type { i8, %struct.bitmap_head_def* }
%struct.pointer_map_t = type opaque
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
%struct.diagnostic_info = type opaque
%struct.attribute_spec = type { i8*, i32, i32, i8, i8, i8, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* }
%struct.lang_hooks_for_tree_inlining = type { i8 (%union.tree_node*, %union.tree_node*)* }
%struct.lang_hooks_for_callgraph = type { %union.tree_node* (%union.tree_node**, i32*)* }
%struct.lang_hooks_for_tree_dump = type { i8 (i8*, %union.tree_node*)*, i32 (%union.tree_node*)* }
%struct.lang_hooks_for_decls = type { i32 ()*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* ()*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, i8 (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i8 (%union.tree_node*)*, void ()*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, i32 (%union.tree_node*)*, i8 (%union.tree_node*, i8)*, i8 (%union.tree_node*, i8)*, i8 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)* }
%struct.lang_hooks_for_types = type { %union.tree_node* (i32)*, i32 (%union.tree_node*)*, %union.tree_node* (i32, i32)*, %union.tree_node* (i32, i32)*, i8 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void (%union.tree_node*, i8*)*, void (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void (%struct.gimplify_omp_ctx*, %union.tree_node*)*, i8 (%union.tree_node*, %union.tree_node*)*, i8 (%union.tree_node*, %struct.array_descr_info*)*, void (%union.tree_node*, %union.tree_node**, %union.tree_node**)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, i8 }
%struct.gimplify_omp_ctx = type opaque
%struct.array_descr_info = type opaque
%struct.lang_hooks_for_lto = type { void (i8*)*, void (i8*, i64, i8*)*, void ()* }
%struct.VEC_lto_out_decl_state_ptr_heap = type { %struct.VEC_lto_out_decl_state_ptr_base }
%struct.VEC_lto_out_decl_state_ptr_base = type { i32, i32, [1 x %struct.lto_out_decl_state*] }
%struct.lto_out_decl_state = type { [7 x %struct.lto_tree_ref_encoder], %struct.lto_cgraph_encoder_d*, %union.tree_node* }
%struct.lto_tree_ref_encoder = type { %struct.htab*, i32, %struct.VEC_tree_heap* }
%struct.VEC_tree_heap = type { %struct.VEC_tree_base }
%struct.lto_cgraph_encoder_d = type { %struct.pointer_map_t*, %struct.VEC_cgraph_node_ptr_heap* }
%struct.VEC_cgraph_node_ptr_heap = type { %struct.VEC_cgraph_node_ptr_base }
%struct.VEC_cgraph_node_ptr_base = type { i32, i32, [1 x %struct.cgraph_node*] }
%struct.cgraph_node = type { %union.tree_node*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.htab*, i8*, %struct.VEC_ipa_opt_pass_heap*, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_edge = type { i64, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_edge*, %union.gimple_statement_d*, i8*, i32, i32, i32, i32, i16, i8 }
%struct.VEC_ipa_opt_pass_heap = type { %struct.VEC_ipa_opt_pass_base }
%struct.VEC_ipa_opt_pass_base = type { i32, i32, [1 x %struct.ipa_opt_pass_d*] }
%struct.ipa_opt_pass_d = type { %struct.opt_pass, void ()*, void (%struct.cgraph_node_set_def*)*, void ()*, void (%struct.cgraph_node*)*, void (%struct.cgraph_node*, %union.gimple_statement_d**)*, i32, i32 (%struct.cgraph_node*)*, void (%struct.varpool_node*)* }
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
%struct.cgraph_node_set_def = type { %struct.htab*, %struct.VEC_cgraph_node_ptr_gc*, i8* }
%struct.VEC_cgraph_node_ptr_gc = type { %struct.VEC_cgraph_node_ptr_base }
%struct.varpool_node = type { %union.tree_node*, %struct.varpool_node*, %struct.varpool_node*, %struct.varpool_node*, i32, i8 }
%struct.cgraph_local_info = type { %struct.lto_file_decl_data*, %struct.inline_summary, i8 }
%struct.lto_file_decl_data = type { %struct.lto_in_decl_state*, %struct.lto_in_decl_state*, %struct.lto_cgraph_encoder_d*, %struct.htab*, i8*, i8, %struct.htab*, %struct.htab* }
%struct.lto_in_decl_state = type { [7 x %struct.lto_tree_ref_table], %union.tree_node* }
%struct.lto_tree_ref_table = type { %union.tree_node**, i32 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, %struct.cgraph_node*, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { %struct.VEC_ipa_replace_map_p_gc*, %struct.bitmap_head_def*, %struct.bitmap_head_def* }
%struct.VEC_ipa_replace_map_p_gc = type { %struct.VEC_ipa_replace_map_p_base }
%struct.VEC_ipa_replace_map_p_base = type { i32, i32, [1 x %struct.ipa_replace_map*] }
%struct.ipa_replace_map = type { %union.tree_node*, %union.tree_node*, i8, i8 }
%struct.cgraph_thunk_info = type { i64, i64, %union.tree_node*, i8, i8, i8 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_type_symtab, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_type* }
%union.tree_type_symtab = type { i8* }
%struct.lang_type = type opaque
%struct.lto_output_stream = type { %struct.lto_char_ptr_base*, %struct.lto_char_ptr_base*, i8*, i32, i32, i32 }
%struct.lto_char_ptr_base = type { i8* }
%struct.lto_decl_slot = type { %union.tree_node*, i32 }
%struct.lto_simple_output_block = type { i32, %struct.lto_out_decl_state*, %struct.lto_output_stream* }
%struct.lto_simple_header = type { %struct.lto_header, i32, i32 }
%struct.lto_header = type { i16, i16, i32 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@forced_extern_inline = internal unnamed_addr global %struct.bitmap_head_def* null, align 8, !dbg !0
@lang_hooks = external dso_local local_unnamed_addr global %struct.lang_hooks, align 8
@flag_wpa = external dso_local local_unnamed_addr global i32, align 4
@decl_state_stack = internal global %struct.VEC_lto_out_decl_state_ptr_heap* null, align 8, !dbg !2326
@lto_function_decl_states = common dso_local global %struct.VEC_lto_out_decl_state_ptr_heap* null, align 8, !dbg !2328
@.str = private unnamed_addr constant [18 x i8] c"lto-section-out.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !2334 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !2347, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !2348, metadata !DIExpression()), !dbg !2349
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2350
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2351
  ret i32 %call, !dbg !2352
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2353 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2357
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2358
  ret i32 %call, !dbg !2359
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2360 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2414, metadata !DIExpression()), !dbg !2415
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2416
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2416
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2416
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2416
  %cmp = icmp uge i8* %0, %1, !dbg !2416
  %conv1 = zext i1 %cmp to i64, !dbg !2416
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2416
  %tobool = icmp eq i64 %expval, 0, !dbg !2416
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2416

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2416
  br label %cond.end, !dbg !2416

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2416
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2416
  %2 = load i8, i8* %0, align 1, !dbg !2416
  %conv3 = zext i8 %2 to i32, !dbg !2416
  br label %cond.end, !dbg !2416

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2416
  ret i32 %cond, !dbg !2417
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2418 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2420, metadata !DIExpression()), !dbg !2421
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2422
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2422
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2422
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2422
  %cmp = icmp uge i8* %0, %1, !dbg !2422
  %conv1 = zext i1 %cmp to i64, !dbg !2422
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2422
  %tobool = icmp eq i64 %expval, 0, !dbg !2422
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2422

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2422
  br label %cond.end, !dbg !2422

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2422
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2422
  %2 = load i8, i8* %0, align 1, !dbg !2422
  %conv3 = zext i8 %2 to i32, !dbg !2422
  br label %cond.end, !dbg !2422

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2422
  ret i32 %cond, !dbg !2423
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2424 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2425
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2425
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2425
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2425
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2425
  %cmp = icmp uge i8* %1, %2, !dbg !2425
  %conv1 = zext i1 %cmp to i64, !dbg !2425
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2425
  %tobool = icmp eq i64 %expval, 0, !dbg !2425
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2425

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2425
  br label %cond.end, !dbg !2425

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2425
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2425
  %3 = load i8, i8* %1, align 1, !dbg !2425
  %conv3 = zext i8 %3 to i32, !dbg !2425
  br label %cond.end, !dbg !2425

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2425
  ret i32 %cond, !dbg !2426
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2427 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2431, metadata !DIExpression()), !dbg !2432
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2433
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2434
  ret i32 %call, !dbg !2435
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2436 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2440, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2441, metadata !DIExpression()), !dbg !2442
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2443
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2443
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2443
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2443
  %cmp = icmp uge i8* %0, %1, !dbg !2443
  %conv1 = zext i1 %cmp to i64, !dbg !2443
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2443
  %tobool = icmp eq i64 %expval, 0, !dbg !2443
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2443

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2443
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2443
  br label %cond.end, !dbg !2443

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2443
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2443
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2443
  store i8 %conv2, i8* %0, align 1, !dbg !2443
  %conv6 = and i32 %__c, 255, !dbg !2443
  br label %cond.end, !dbg !2443

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2443
  ret i32 %cond, !dbg !2444
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2445 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2447, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2448, metadata !DIExpression()), !dbg !2449
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2450
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2450
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2450
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2450
  %cmp = icmp uge i8* %0, %1, !dbg !2450
  %conv1 = zext i1 %cmp to i64, !dbg !2450
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2450
  %tobool = icmp eq i64 %expval, 0, !dbg !2450
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2450

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2450
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2450
  br label %cond.end, !dbg !2450

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2450
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2450
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2450
  store i8 %conv2, i8* %0, align 1, !dbg !2450
  %conv6 = and i32 %__c, 255, !dbg !2450
  br label %cond.end, !dbg !2450

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2450
  ret i32 %cond, !dbg !2451
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2452 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2454, metadata !DIExpression()), !dbg !2455
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2456
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2456
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2456
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2456
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2456
  %cmp = icmp uge i8* %1, %2, !dbg !2456
  %conv1 = zext i1 %cmp to i64, !dbg !2456
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2456
  %tobool = icmp eq i64 %expval, 0, !dbg !2456
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2456

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2456
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2456
  br label %cond.end, !dbg !2456

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2456
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2456
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2456
  store i8 %conv4, i8* %1, align 1, !dbg !2456
  %conv6 = and i32 %__c, 255, !dbg !2456
  br label %cond.end, !dbg !2456

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2456
  ret i32 %cond, !dbg !2457
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2458 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2464, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2465, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2466, metadata !DIExpression()), !dbg !2467
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2468
  ret i64 %call, !dbg !2469
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2470 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2472, metadata !DIExpression()), !dbg !2473
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2474
  %0 = load i32, i32* %_flags, align 8, !dbg !2474
  %and = lshr i32 %0, 4, !dbg !2474
  %and.lobit = and i32 %and, 1, !dbg !2474
  ret i32 %and.lobit, !dbg !2475
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2476 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2478, metadata !DIExpression()), !dbg !2479
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2480
  %0 = load i32, i32* %_flags, align 8, !dbg !2480
  %and = lshr i32 %0, 5, !dbg !2480
  %and.lobit = and i32 %and, 1, !dbg !2480
  ret i32 %and.lobit, !dbg !2481
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2482 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2485, metadata !DIExpression()), !dbg !2486
  %__c.off = add i32 %__c, 128, !dbg !2487
  %0 = icmp ult i32 %__c.off, 384, !dbg !2487
  br i1 %0, label %cond.true, label %cond.end, !dbg !2487

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2488
  %1 = load i32*, i32** %call, align 8, !dbg !2489
  %idxprom = sext i32 %__c to i64, !dbg !2490
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2490
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2490
  br label %cond.end, !dbg !2491

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2491
  ret i32 %cond, !dbg !2492
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2493 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2495, metadata !DIExpression()), !dbg !2496
  %__c.off = add i32 %__c, 128, !dbg !2497
  %0 = icmp ult i32 %__c.off, 384, !dbg !2497
  br i1 %0, label %cond.true, label %cond.end, !dbg !2497

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2498
  %1 = load i32*, i32** %call, align 8, !dbg !2499
  %idxprom = sext i32 %__c to i64, !dbg !2500
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2500
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2500
  br label %cond.end, !dbg !2501

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2501
  ret i32 %cond, !dbg !2502
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2503 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2508, metadata !DIExpression()), !dbg !2509
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2510
  %conv = trunc i64 %call to i32, !dbg !2511
  ret i32 %conv, !dbg !2512
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2513 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2517, metadata !DIExpression()), !dbg !2518
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2519
  ret i64 %call, !dbg !2520
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2521 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2526, metadata !DIExpression()), !dbg !2527
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2528
  ret i64 %call, !dbg !2529
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2530 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2536, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2537, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2538, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2539, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2540, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i64 0, metadata !2541, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2542, metadata !DIExpression()), !dbg !2546
  br label %while.cond, !dbg !2547

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2548
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2546
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2542, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2541, metadata !DIExpression()), !dbg !2546
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2549
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2547

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2550
  %div = lshr i64 %add, 1, !dbg !2552
  call void @llvm.dbg.value(metadata i64 %div, metadata !2543, metadata !DIExpression()), !dbg !2546
  %mul = mul i64 %div, %__size, !dbg !2553
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2554
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2544, metadata !DIExpression()), !dbg !2546
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2555
  call void @llvm.dbg.value(metadata i32 %call, metadata !2545, metadata !DIExpression()), !dbg !2546
  %cmp1 = icmp slt i32 %call, 0, !dbg !2556
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2558

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2559
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2561

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2562
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2541, metadata !DIExpression()), !dbg !2546
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2546
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2546
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2542, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2541, metadata !DIExpression()), !dbg !2546
  br label %while.cond, !dbg !2547, !llvm.loop !2563

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2546
  ret i8* %retval.0, !dbg !2565
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2566 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2572, metadata !DIExpression()), !dbg !2573
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2574
  ret double %call, !dbg !2575
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2576 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2585, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2586, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i32 %base, metadata !2587, metadata !DIExpression()), !dbg !2588
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2589
  ret i64 %call, !dbg !2590
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2591 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2597, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2598, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i32 %base, metadata !2599, metadata !DIExpression()), !dbg !2600
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2601
  ret i64 %call, !dbg !2602
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2603 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2614, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2615, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i32 %base, metadata !2616, metadata !DIExpression()), !dbg !2617
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2618
  ret i64 %call, !dbg !2619
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2620 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2624, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2625, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i32 %base, metadata !2626, metadata !DIExpression()), !dbg !2627
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2628
  ret i64 %call, !dbg !2629
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2630 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2670, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2671, metadata !DIExpression()), !dbg !2672
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2673
  ret i32 %call, !dbg !2674
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2675 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2677, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2678, metadata !DIExpression()), !dbg !2679
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2680
  ret i32 %call, !dbg !2681
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2682 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2686, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2687, metadata !DIExpression()), !dbg !2688
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2689
  ret i32 %call, !dbg !2690
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2691 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2695, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2696, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2697, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2698, metadata !DIExpression()), !dbg !2699
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2700
  ret i32 %call, !dbg !2701
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2702 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2706, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2707, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2708, metadata !DIExpression()), !dbg !2709
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2708, metadata !DIExpression(DW_OP_deref)), !dbg !2709
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2710
  ret i32 %call, !dbg !2711
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2712 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2716, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2717, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2718, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2719, metadata !DIExpression()), !dbg !2720
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2719, metadata !DIExpression(DW_OP_deref)), !dbg !2720
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2721
  ret i32 %call, !dbg !2722
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2723 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2747, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2748, metadata !DIExpression()), !dbg !2749
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2750
  ret i32 %call, !dbg !2751
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2752 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2754, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2755, metadata !DIExpression()), !dbg !2756
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2757
  ret i32 %call, !dbg !2758
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2759 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2763, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2764, metadata !DIExpression()), !dbg !2765
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2766
  ret i32 %call, !dbg !2767
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2768 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2772, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2773, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2774, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2775, metadata !DIExpression()), !dbg !2776
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2777
  ret i32 %call, !dbg !2778
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @lto_new_extern_inline_states() local_unnamed_addr #4 !dbg !2779 {
entry:
  %call = tail call %struct.bitmap_head_def* @lto_bitmap_alloc() #6, !dbg !2780
  store %struct.bitmap_head_def* %call, %struct.bitmap_head_def** @forced_extern_inline, align 8, !dbg !2781
  ret void, !dbg !2782
}

declare dso_local %struct.bitmap_head_def* @lto_bitmap_alloc() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @lto_delete_extern_inline_states() local_unnamed_addr #4 !dbg !2783 {
entry:
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @forced_extern_inline, align 8, !dbg !2784
  tail call void @lto_bitmap_free(%struct.bitmap_head_def* %0) #6, !dbg !2785
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** @forced_extern_inline, align 8, !dbg !2786
  ret void, !dbg !2787
}

declare dso_local void @lto_bitmap_free(%struct.bitmap_head_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @lto_force_functions_extern_inline(%struct.bitmap_head_def* %decls) local_unnamed_addr #4 !dbg !2788 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %decls, metadata !2792, metadata !DIExpression()), !dbg !2793
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @forced_extern_inline, align 8, !dbg !2794
  %call = tail call zeroext i8 @bitmap_ior_into(%struct.bitmap_head_def* %0, %struct.bitmap_head_def* %decls) #6, !dbg !2795
  ret void, !dbg !2796
}

declare dso_local zeroext i8 @bitmap_ior_into(%struct.bitmap_head_def*, %struct.bitmap_head_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @lto_forced_extern_inline_p(%union.tree_node* %fn_decl) local_unnamed_addr #4 !dbg !2797 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %fn_decl, metadata !2801, metadata !DIExpression()), !dbg !2802
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @forced_extern_inline, align 8, !dbg !2803
  %uid = getelementptr inbounds %union.tree_node, %union.tree_node* %fn_decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2804
  %1 = load i32, i32* %uid, align 4, !dbg !2804
  %call = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %0, i32 %1) #6, !dbg !2805
  %conv = trunc i32 %call to i8, !dbg !2805
  ret i8 %conv, !dbg !2806
}

declare dso_local i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @lto_hash_decl_slot_node(i8* %p) #4 !dbg !2807 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !2809, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i8* %p, metadata !2810, metadata !DIExpression()), !dbg !2811
  %0 = bitcast i8* %p to i64*, !dbg !2812
  %1 = load i64, i64* %0, align 8, !dbg !2812
  %2 = trunc i64 %1 to i32, !dbg !2813
  %conv = and i32 %2, 262143, !dbg !2813
  ret i32 %conv, !dbg !2814
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lto_eq_decl_slot_node(i8* %p1, i8* %p2) #4 !dbg !2815 {
entry:
  call void @llvm.dbg.value(metadata i8* %p1, metadata !2817, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8* %p2, metadata !2818, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8* %p1, metadata !2819, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8* %p2, metadata !2820, metadata !DIExpression()), !dbg !2821
  %t = bitcast i8* %p1 to %union.tree_node**, !dbg !2822
  %0 = load %union.tree_node*, %union.tree_node** %t, align 8, !dbg !2822
  %t1 = bitcast i8* %p2 to %union.tree_node**, !dbg !2823
  %1 = load %union.tree_node*, %union.tree_node** %t1, align 8, !dbg !2823
  %cmp = icmp eq %union.tree_node* %0, %1, !dbg !2824
  %conv = zext i1 %cmp to i32, !dbg !2824
  ret i32 %conv, !dbg !2825
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lto_hash_type_slot_node(i8* %p) #4 !dbg !2826 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !2828, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.value(metadata i8* %p, metadata !2829, metadata !DIExpression()), !dbg !2830
  %0 = bitcast i8* %p to %struct.tree_type**, !dbg !2831
  %1 = load %struct.tree_type*, %struct.tree_type** %0, align 8, !dbg !2831
  %uid = getelementptr inbounds %struct.tree_type, %struct.tree_type* %1, i64 0, i32 5, !dbg !2831
  %2 = load i32, i32* %uid, align 8, !dbg !2831
  ret i32 %2, !dbg !2832
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lto_eq_type_slot_node(i8* %p1, i8* %p2) #4 !dbg !2833 {
entry:
  call void @llvm.dbg.value(metadata i8* %p1, metadata !2835, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i8* %p2, metadata !2836, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i8* %p1, metadata !2837, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i8* %p2, metadata !2838, metadata !DIExpression()), !dbg !2839
  %0 = bitcast i8* %p1 to %struct.tree_type**, !dbg !2840
  %1 = load %struct.tree_type*, %struct.tree_type** %0, align 8, !dbg !2840
  %uid = getelementptr inbounds %struct.tree_type, %struct.tree_type* %1, i64 0, i32 5, !dbg !2840
  %2 = load i32, i32* %uid, align 8, !dbg !2840
  %3 = bitcast i8* %p2 to %struct.tree_type**, !dbg !2841
  %4 = load %struct.tree_type*, %struct.tree_type** %3, align 8, !dbg !2841
  %uid3 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %4, i64 0, i32 5, !dbg !2841
  %5 = load i32, i32* %uid3, align 8, !dbg !2841
  %cmp = icmp eq i32 %2, %5, !dbg !2842
  %conv = zext i1 %cmp to i32, !dbg !2842
  ret i32 %conv, !dbg !2843
}

; Function Attrs: nounwind uwtable
define dso_local void @lto_begin_section(i8* %name, i8 zeroext %compress) local_unnamed_addr #4 !dbg !2844 {
entry:
  call void @llvm.dbg.value(metadata i8* %name, metadata !2848, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata i8 %compress, metadata !2849, metadata !DIExpression()), !dbg !2850
  %0 = load void (i8*)*, void (i8*)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 35, i32 0), align 8, !dbg !2851
  tail call void %0(i8* %name) #6, !dbg !2852
  ret void, !dbg !2853
}

; Function Attrs: nounwind uwtable
define dso_local void @lto_end_section() local_unnamed_addr #4 !dbg !2854 {
entry:
  %0 = load void ()*, void ()** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 35, i32 2), align 8, !dbg !2855
  tail call void %0() #6, !dbg !2856
  ret void, !dbg !2857
}

; Function Attrs: nounwind uwtable
define dso_local void @lto_write_stream(%struct.lto_output_stream* %obs) local_unnamed_addr #4 !dbg !2858 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_output_stream* %obs, metadata !2862, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i32 1024, metadata !2863, metadata !DIExpression()), !dbg !2871
  %first_block = getelementptr inbounds %struct.lto_output_stream, %struct.lto_output_stream* %obs, i64 0, i32 0, !dbg !2872
  %0 = load %struct.lto_char_ptr_base*, %struct.lto_char_ptr_base** %first_block, align 8, !dbg !2872
  %tobool = icmp eq %struct.lto_char_ptr_base* %0, null, !dbg !2874
  br i1 %tobool, label %cleanup.cont, label %if.end, !dbg !2875

if.end:                                           ; preds = %entry
  %1 = bitcast %struct.lto_char_ptr_base* %0 to i8*, !dbg !2871
  call void @llvm.dbg.value(metadata %struct.lto_char_ptr_base* %0, metadata !2864, metadata !DIExpression()), !dbg !2871
  %left_in_block = getelementptr inbounds %struct.lto_output_stream, %struct.lto_output_stream* %obs, i64 0, i32 3, !dbg !2876
  br label %for.cond, !dbg !2878

for.cond:                                         ; preds = %if.end7, %if.end
  %2 = phi i8* [ %1, %if.end ], [ %3, %if.end7 ], !dbg !2879
  %block.0 = phi %struct.lto_char_ptr_base* [ %0, %if.end ], [ %4, %if.end7 ], !dbg !2879
  %block_size.0 = phi i32 [ 1024, %if.end ], [ %mul, %if.end7 ], !dbg !2871
  call void @llvm.dbg.value(metadata i32 %block_size.0, metadata !2863, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata %struct.lto_char_ptr_base* %block.0, metadata !2864, metadata !DIExpression()), !dbg !2871
  %tobool2 = icmp eq %struct.lto_char_ptr_base* %block.0, null, !dbg !2880
  br i1 %tobool2, label %cleanup.cont.loopexit, label %for.body, !dbg !2880

for.body:                                         ; preds = %for.cond
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 8, !dbg !2881
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2866, metadata !DIExpression()), !dbg !2882
  %sub = add i32 %block_size.0, -8, !dbg !2883
  call void @llvm.dbg.value(metadata i32 %sub, metadata !2870, metadata !DIExpression()), !dbg !2882
  %ptr = getelementptr inbounds %struct.lto_char_ptr_base, %struct.lto_char_ptr_base* %block.0, i64 0, i32 0, !dbg !2884
  %3 = load i8*, i8** %ptr, align 8, !dbg !2884
  %4 = bitcast i8* %3 to %struct.lto_char_ptr_base*, !dbg !2885
  call void @llvm.dbg.value(metadata %struct.lto_char_ptr_base* %4, metadata !2865, metadata !DIExpression()), !dbg !2871
  %tobool4 = icmp eq i8* %3, null, !dbg !2886
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !2887

if.then5:                                         ; preds = %for.body
  %5 = load i32, i32* %left_in_block, align 8, !dbg !2888
  %sub6 = sub i32 %sub, %5, !dbg !2889
  call void @llvm.dbg.value(metadata i32 %sub6, metadata !2870, metadata !DIExpression()), !dbg !2882
  br label %if.end7, !dbg !2890

if.end7:                                          ; preds = %for.body, %if.then5
  %num_chars.0 = phi i32 [ %sub, %for.body ], [ %sub6, %if.then5 ], !dbg !2882
  call void @llvm.dbg.value(metadata i32 %num_chars.0, metadata !2870, metadata !DIExpression()), !dbg !2882
  %6 = load void (i8*, i64, i8*)*, void (i8*, i64, i8*)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 35, i32 1), align 8, !dbg !2891
  %conv8 = zext i32 %num_chars.0 to i64, !dbg !2892
  tail call void %6(i8* nonnull %add.ptr, i64 %conv8, i8* %2) #6, !dbg !2893
  %mul = shl i32 %block_size.0, 1, !dbg !2894
  call void @llvm.dbg.value(metadata i32 %mul, metadata !2863, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata %struct.lto_char_ptr_base* %4, metadata !2864, metadata !DIExpression()), !dbg !2871
  br label %for.cond, !dbg !2895, !llvm.loop !2896

cleanup.cont.loopexit:                            ; preds = %for.cond
  br label %cleanup.cont, !dbg !2898

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit, %entry
  ret void, !dbg !2898
}

; Function Attrs: nounwind uwtable
define dso_local void @lto_output_1_stream(%struct.lto_output_stream* %obs, i8 signext %c) local_unnamed_addr #4 !dbg !2899 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_output_stream* %obs, metadata !2903, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata i8 %c, metadata !2904, metadata !DIExpression()), !dbg !2905
  %left_in_block = getelementptr inbounds %struct.lto_output_stream, %struct.lto_output_stream* %obs, i64 0, i32 3, !dbg !2906
  %0 = load i32, i32* %left_in_block, align 8, !dbg !2906
  %cmp = icmp eq i32 %0, 0, !dbg !2908
  br i1 %cmp, label %if.then, label %if.end, !dbg !2909

if.then:                                          ; preds = %entry
  tail call fastcc void @append_block(%struct.lto_output_stream* %obs) #7, !dbg !2910
  br label %if.end, !dbg !2910

if.end:                                           ; preds = %if.then, %entry
  %current_pointer = getelementptr inbounds %struct.lto_output_stream, %struct.lto_output_stream* %obs, i64 0, i32 2, !dbg !2911
  %1 = load i8*, i8** %current_pointer, align 8, !dbg !2911
  store i8 %c, i8* %1, align 1, !dbg !2912
  %2 = load i8*, i8** %current_pointer, align 8, !dbg !2913
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2913
  store i8* %incdec.ptr, i8** %current_pointer, align 8, !dbg !2913
  %total_size = getelementptr inbounds %struct.lto_output_stream, %struct.lto_output_stream* %obs, i64 0, i32 5, !dbg !2914
  %3 = load i32, i32* %total_size, align 8, !dbg !2915
  %inc = add i32 %3, 1, !dbg !2915
  store i32 %inc, i32* %total_size, align 8, !dbg !2915
  %4 = load i32, i32* %left_in_block, align 8, !dbg !2916
  %dec = add i32 %4, -1, !dbg !2916
  store i32 %dec, i32* %left_in_block, align 8, !dbg !2916
  ret void, !dbg !2917
}

; Function Attrs: nounwind uwtable
define internal fastcc void @append_block(%struct.lto_output_stream* %obs) unnamed_addr #4 !dbg !2918 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_output_stream* %obs, metadata !2920, metadata !DIExpression()), !dbg !2925
  %left_in_block = getelementptr inbounds %struct.lto_output_stream, %struct.lto_output_stream* %obs, i64 0, i32 3, !dbg !2926
  %0 = load i32, i32* %left_in_block, align 8, !dbg !2926
  %cmp = icmp eq i32 %0, 0, !dbg !2926
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2926

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 254, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2926
  br label %cond.end, !dbg !2926

cond.end:                                         ; preds = %entry, %cond.true
  %first_block = getelementptr inbounds %struct.lto_output_stream, %struct.lto_output_stream* %obs, i64 0, i32 0, !dbg !2927
  %1 = load %struct.lto_char_ptr_base*, %struct.lto_char_ptr_base** %first_block, align 8, !dbg !2927
  %cmp1 = icmp eq %struct.lto_char_ptr_base* %1, null, !dbg !2928
  %block_size = getelementptr inbounds %struct.lto_output_stream, %struct.lto_output_stream* %obs, i64 0, i32 4, !dbg !2929
  br i1 %cmp1, label %if.then, label %if.else, !dbg !2930

if.then:                                          ; preds = %cond.end
  store i32 1024, i32* %block_size, align 4, !dbg !2931
  %call = tail call i8* @xmalloc(i64 1024) #6, !dbg !2933
  call void @llvm.dbg.value(metadata i8* %call, metadata !2921, metadata !DIExpression()), !dbg !2925
  %2 = bitcast %struct.lto_output_stream* %obs to i8**, !dbg !2934
  store i8* %call, i8** %2, align 8, !dbg !2934
  br label %if.end, !dbg !2935

if.else:                                          ; preds = %cond.end
  %3 = load i32, i32* %block_size, align 4, !dbg !2936
  %mul = shl i32 %3, 1, !dbg !2936
  store i32 %mul, i32* %block_size, align 4, !dbg !2936
  %conv6 = zext i32 %mul to i64, !dbg !2937
  %call7 = tail call i8* @xmalloc(i64 %conv6) #6, !dbg !2938
  call void @llvm.dbg.value(metadata i8* %call7, metadata !2921, metadata !DIExpression()), !dbg !2925
  %current_block = getelementptr inbounds %struct.lto_output_stream, %struct.lto_output_stream* %obs, i64 0, i32 1, !dbg !2939
  %4 = load %struct.lto_char_ptr_base*, %struct.lto_char_ptr_base** %current_block, align 8, !dbg !2939
  call void @llvm.dbg.value(metadata %struct.lto_char_ptr_base* %4, metadata !2922, metadata !DIExpression()), !dbg !2940
  %ptr = getelementptr inbounds %struct.lto_char_ptr_base, %struct.lto_char_ptr_base* %4, i64 0, i32 0, !dbg !2941
  store i8* %call7, i8** %ptr, align 8, !dbg !2942
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = phi i8* [ %call, %if.then ], [ %call7, %if.else ], !dbg !2929
  %new_block.0.in = phi i8* [ %call, %if.then ], [ %call7, %if.else ]
  call void @llvm.dbg.value(metadata i8* %new_block.0.in, metadata !2921, metadata !DIExpression()), !dbg !2925
  %add.ptr1 = getelementptr inbounds i8, i8* %new_block.0.in, i64 8, !dbg !2943
  %current_pointer = getelementptr inbounds %struct.lto_output_stream, %struct.lto_output_stream* %obs, i64 0, i32 2, !dbg !2944
  store i8* %add.ptr1, i8** %current_pointer, align 8, !dbg !2945
  %current_block8 = getelementptr inbounds %struct.lto_output_stream, %struct.lto_output_stream* %obs, i64 0, i32 1, !dbg !2946
  %6 = bitcast %struct.lto_char_ptr_base** %current_block8 to i8**, !dbg !2947
  store i8* %5, i8** %6, align 8, !dbg !2947
  %ptr9 = bitcast i8* %new_block.0.in to i8**, !dbg !2948
  store i8* null, i8** %ptr9, align 8, !dbg !2949
  %7 = load i32, i32* %block_size, align 4, !dbg !2950
  %sub = add i32 %7, -8, !dbg !2951
  store i32 %sub, i32* %left_in_block, align 8, !dbg !2952
  ret void, !dbg !2953
}

; Function Attrs: nounwind uwtable
define dso_local void @lto_output_data_stream(%struct.lto_output_stream* %obs, i8* %data, i64 %len) local_unnamed_addr #4 !dbg !2954 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_output_stream* %obs, metadata !2958, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i8* %data, metadata !2959, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i64 %len, metadata !2960, metadata !DIExpression()), !dbg !2963
  %left_in_block = getelementptr inbounds %struct.lto_output_stream, %struct.lto_output_stream* %obs, i64 0, i32 3, !dbg !2964
  %current_pointer = getelementptr inbounds %struct.lto_output_stream, %struct.lto_output_stream* %obs, i64 0, i32 2, !dbg !2966
  %total_size = getelementptr inbounds %struct.lto_output_stream, %struct.lto_output_stream* %obs, i64 0, i32 5, !dbg !2966
  br label %while.cond, !dbg !2967

while.cond:                                       ; preds = %if.end7, %entry
  %len.addr.0 = phi i64 [ %len, %entry ], [ %sub15, %if.end7 ]
  %data.addr.0 = phi i8* [ %data, %entry ], [ %add.ptr14, %if.end7 ]
  call void @llvm.dbg.value(metadata i8* %data.addr.0, metadata !2959, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i64 %len.addr.0, metadata !2960, metadata !DIExpression()), !dbg !2963
  %tobool = icmp eq i64 %len.addr.0, 0, !dbg !2967
  br i1 %tobool, label %while.end, label %while.body, !dbg !2967

while.body:                                       ; preds = %while.cond
  %0 = load i32, i32* %left_in_block, align 8, !dbg !2968
  %cmp = icmp eq i32 %0, 0, !dbg !2969
  br i1 %cmp, label %if.then, label %if.end, !dbg !2970

if.then:                                          ; preds = %while.body
  tail call fastcc void @append_block(%struct.lto_output_stream* %obs) #7, !dbg !2971
  %.pre = load i32, i32* %left_in_block, align 8, !dbg !2972
  br label %if.end, !dbg !2971

if.end:                                           ; preds = %if.then, %while.body
  %1 = phi i32 [ %.pre, %if.then ], [ %0, %while.body ], !dbg !2972
  %conv = zext i32 %1 to i64, !dbg !2974
  %cmp2 = icmp ugt i64 %len.addr.0, %conv, !dbg !2975
  br i1 %cmp2, label %if.else, label %if.end7, !dbg !2976

if.else:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata i64 %conv, metadata !2961, metadata !DIExpression()), !dbg !2966
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.else
  %copy.0 = phi i64 [ %conv, %if.else ], [ %len.addr.0, %if.end ], !dbg !2977
  call void @llvm.dbg.value(metadata i64 %copy.0, metadata !2961, metadata !DIExpression()), !dbg !2966
  %2 = load i8*, i8** %current_pointer, align 8, !dbg !2978
  %call = tail call i8* @memcpy(i8* %2, i8* %data.addr.0, i64 %copy.0) #6, !dbg !2979
  %3 = load i8*, i8** %current_pointer, align 8, !dbg !2980
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %copy.0, !dbg !2980
  store i8* %add.ptr, i8** %current_pointer, align 8, !dbg !2980
  %4 = load i32, i32* %total_size, align 8, !dbg !2981
  %5 = trunc i64 %copy.0 to i32, !dbg !2981
  %conv10 = add i32 %4, %5, !dbg !2981
  store i32 %conv10, i32* %total_size, align 8, !dbg !2981
  %6 = load i32, i32* %left_in_block, align 8, !dbg !2982
  %conv13 = sub i32 %6, %5, !dbg !2982
  store i32 %conv13, i32* %left_in_block, align 8, !dbg !2982
  %add.ptr14 = getelementptr inbounds i8, i8* %data.addr.0, i64 %copy.0, !dbg !2983
  call void @llvm.dbg.value(metadata i8* %add.ptr14, metadata !2959, metadata !DIExpression()), !dbg !2963
  %sub15 = sub i64 %len.addr.0, %copy.0, !dbg !2984
  call void @llvm.dbg.value(metadata i64 %sub15, metadata !2960, metadata !DIExpression()), !dbg !2963
  br label %while.cond, !dbg !2967, !llvm.loop !2985

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2987
}

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @lto_output_uleb128_stream(%struct.lto_output_stream* %obs, i64 %work) local_unnamed_addr #4 !dbg !2988 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_output_stream* %obs, metadata !2992, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata i64 %work, metadata !2993, metadata !DIExpression()), !dbg !2996
  br label %do.body, !dbg !2997

do.body:                                          ; preds = %do.body, %entry
  %work.addr.0 = phi i64 [ %work, %entry ], [ %shr, %do.body ]
  call void @llvm.dbg.value(metadata i64 %work.addr.0, metadata !2993, metadata !DIExpression()), !dbg !2996
  %0 = trunc i64 %work.addr.0 to i32, !dbg !2998
  %conv = and i32 %0, 127, !dbg !2998
  call void @llvm.dbg.value(metadata i32 %conv, metadata !2994, metadata !DIExpression()), !dbg !2999
  %shr = lshr i64 %work.addr.0, 7, !dbg !3000
  call void @llvm.dbg.value(metadata i64 %shr, metadata !2993, metadata !DIExpression()), !dbg !2996
  %cmp = icmp eq i64 %shr, 0, !dbg !3001
  %or = or i32 %0, 128, !dbg !3003
  %spec.select = select i1 %cmp, i32 %conv, i32 %or, !dbg !3004
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2994, metadata !DIExpression()), !dbg !2999
  %conv2 = trunc i32 %spec.select to i8, !dbg !3005
  tail call void @lto_output_1_stream(%struct.lto_output_stream* %obs, i8 signext %conv2) #7, !dbg !3006
  br i1 %cmp, label %do.end, label %do.body, !dbg !3007, !llvm.loop !3008

do.end:                                           ; preds = %do.body
  ret void, !dbg !3010
}

; Function Attrs: nounwind uwtable
define dso_local void @lto_output_widest_uint_uleb128_stream(%struct.lto_output_stream* %obs, i64 %work) local_unnamed_addr #4 !dbg !3011 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_output_stream* %obs, metadata !3013, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i64 %work, metadata !3014, metadata !DIExpression()), !dbg !3017
  br label %do.body, !dbg !3018

do.body:                                          ; preds = %do.body, %entry
  %work.addr.0 = phi i64 [ %work, %entry ], [ %shr, %do.body ]
  call void @llvm.dbg.value(metadata i64 %work.addr.0, metadata !3014, metadata !DIExpression()), !dbg !3017
  %0 = trunc i64 %work.addr.0 to i32, !dbg !3019
  %conv = and i32 %0, 127, !dbg !3019
  call void @llvm.dbg.value(metadata i32 %conv, metadata !3015, metadata !DIExpression()), !dbg !3020
  %shr = lshr i64 %work.addr.0, 7, !dbg !3021
  call void @llvm.dbg.value(metadata i64 %shr, metadata !3014, metadata !DIExpression()), !dbg !3017
  %cmp = icmp eq i64 %shr, 0, !dbg !3022
  %or = or i32 %0, 128, !dbg !3024
  %spec.select = select i1 %cmp, i32 %conv, i32 %or, !dbg !3025
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !3015, metadata !DIExpression()), !dbg !3020
  %conv2 = trunc i32 %spec.select to i8, !dbg !3026
  tail call void @lto_output_1_stream(%struct.lto_output_stream* %obs, i8 signext %conv2) #7, !dbg !3027
  br i1 %cmp, label %do.end, label %do.body, !dbg !3028, !llvm.loop !3029

do.end:                                           ; preds = %do.body
  ret void, !dbg !3031
}

; Function Attrs: nounwind uwtable
define dso_local void @lto_output_sleb128_stream(%struct.lto_output_stream* %obs, i64 %work) local_unnamed_addr #4 !dbg !3032 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_output_stream* %obs, metadata !3036, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i64 %work, metadata !3037, metadata !DIExpression()), !dbg !3040
  br label %do.body, !dbg !3041

do.body:                                          ; preds = %lor.end, %entry
  %work.addr.0 = phi i64 [ %work, %entry ], [ %shr, %lor.end ]
  call void @llvm.dbg.value(metadata i64 %work.addr.0, metadata !3037, metadata !DIExpression()), !dbg !3040
  %0 = trunc i64 %work.addr.0 to i32, !dbg !3042
  %conv = and i32 %0, 127, !dbg !3042
  call void @llvm.dbg.value(metadata i32 %conv, metadata !3039, metadata !DIExpression()), !dbg !3040
  %shr = ashr i64 %work.addr.0, 7, !dbg !3044
  call void @llvm.dbg.value(metadata i64 %shr, metadata !3037, metadata !DIExpression()), !dbg !3040
  %cmp = icmp eq i64 %shr, 0, !dbg !3045
  %and2 = and i32 %0, 64, !dbg !3046
  %cmp3 = icmp eq i32 %and2, 0, !dbg !3047
  %or.cond = and i1 %cmp, %cmp3, !dbg !3048
  br i1 %or.cond, label %lor.end, label %lor.rhs, !dbg !3048

lor.rhs:                                          ; preds = %do.body
  %cmp5 = icmp eq i64 %shr, -1, !dbg !3049
  %cmp8 = icmp ne i32 %and2, 0, !dbg !3050
  %1 = and i1 %cmp5, %cmp8, !dbg !3050
  br label %lor.end, !dbg !3050

lor.end:                                          ; preds = %lor.rhs, %do.body
  %2 = phi i1 [ true, %do.body ], [ %1, %lor.rhs ]
  call void @llvm.dbg.value(metadata i1 %2, metadata !3038, metadata !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value)), !dbg !3040
  %or = or i32 %0, 128, !dbg !3051
  %spec.select = select i1 %2, i32 %conv, i32 %or, !dbg !3053
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !3039, metadata !DIExpression()), !dbg !3040
  %conv10 = trunc i32 %spec.select to i8, !dbg !3054
  tail call void @lto_output_1_stream(%struct.lto_output_stream* %obs, i8 signext %conv10) #7, !dbg !3055
  br i1 %2, label %do.end, label %do.body, !dbg !3056, !llvm.loop !3057

do.end:                                           ; preds = %lor.end
  ret void, !dbg !3059
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @lto_output_decl_index(%struct.lto_output_stream* %obs, %struct.lto_tree_ref_encoder* %encoder, %union.tree_node* %name, i32* %this_index) local_unnamed_addr #4 !dbg !3060 {
entry:
  %d_slot = alloca %struct.lto_decl_slot, align 8
  call void @llvm.dbg.value(metadata %struct.lto_output_stream* %obs, metadata !3066, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata %struct.lto_tree_ref_encoder* %encoder, metadata !3067, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata %union.tree_node* %name, metadata !3068, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata i32* %this_index, metadata !3069, metadata !DIExpression()), !dbg !3079
  %0 = bitcast %struct.lto_decl_slot* %d_slot to i8*, !dbg !3080
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !3080
  call void @llvm.dbg.value(metadata i8 0, metadata !3073, metadata !DIExpression()), !dbg !3079
  %t = getelementptr inbounds %struct.lto_decl_slot, %struct.lto_decl_slot* %d_slot, i64 0, i32 0, !dbg !3081
  store %union.tree_node* %name, %union.tree_node** %t, align 8, !dbg !3082
  %tree_hash_table = getelementptr inbounds %struct.lto_tree_ref_encoder, %struct.lto_tree_ref_encoder* %encoder, i64 0, i32 0, !dbg !3083
  %1 = load %struct.htab*, %struct.htab** %tree_hash_table, align 8, !dbg !3083
  %call = call i8** @htab_find_slot(%struct.htab* %1, i8* nonnull %0, i32 1) #6, !dbg !3084
  call void @llvm.dbg.value(metadata i8** %call, metadata !3070, metadata !DIExpression()), !dbg !3079
  %2 = load i8*, i8** %call, align 8, !dbg !3085
  %cmp = icmp eq i8* %2, null, !dbg !3086
  br i1 %cmp, label %if.then, label %if.else, !dbg !3087

if.then:                                          ; preds = %entry
  %call1 = call i8* @xmalloc(i64 16) #6, !dbg !3088
  call void @llvm.dbg.value(metadata i8* %call1, metadata !3074, metadata !DIExpression()), !dbg !3089
  %next_index = getelementptr inbounds %struct.lto_tree_ref_encoder, %struct.lto_tree_ref_encoder* %encoder, i64 0, i32 1, !dbg !3090
  %3 = load i32, i32* %next_index, align 8, !dbg !3091
  %inc = add i32 %3, 1, !dbg !3091
  store i32 %inc, i32* %next_index, align 8, !dbg !3091
  call void @llvm.dbg.value(metadata i32 %3, metadata !3072, metadata !DIExpression()), !dbg !3079
  %t2 = bitcast i8* %call1 to %union.tree_node**, !dbg !3092
  store %union.tree_node* %name, %union.tree_node** %t2, align 8, !dbg !3093
  %slot_num = getelementptr inbounds i8, i8* %call1, i64 8, !dbg !3094
  %4 = bitcast i8* %slot_num to i32*, !dbg !3094
  store i32 %3, i32* %4, align 8, !dbg !3095
  store i8* %call1, i8** %call, align 8, !dbg !3096
  %trees = getelementptr inbounds %struct.lto_tree_ref_encoder, %struct.lto_tree_ref_encoder* %encoder, i64 0, i32 2, !dbg !3097
  %call3 = call fastcc %union.tree_node** @VEC_tree_heap_safe_push(%struct.VEC_tree_heap** nonnull %trees, %union.tree_node* %name) #7, !dbg !3097
  call void @llvm.dbg.value(metadata i8 1, metadata !3073, metadata !DIExpression()), !dbg !3079
  br label %if.end, !dbg !3098

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %2, metadata !3077, metadata !DIExpression()), !dbg !3099
  %slot_num4 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !3100
  %5 = bitcast i8* %slot_num4 to i32*, !dbg !3100
  %6 = load i32, i32* %5, align 8, !dbg !3100
  call void @llvm.dbg.value(metadata i32 %6, metadata !3072, metadata !DIExpression()), !dbg !3079
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %index.0 = phi i32 [ %3, %if.then ], [ %6, %if.else ], !dbg !3101
  %new_entry_p.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !3079
  call void @llvm.dbg.value(metadata i8 %new_entry_p.0, metadata !3073, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata i32 %index.0, metadata !3072, metadata !DIExpression()), !dbg !3079
  %tobool = icmp eq %struct.lto_output_stream* %obs, null, !dbg !3102
  br i1 %tobool, label %if.end6, label %if.then5, !dbg !3104

if.then5:                                         ; preds = %if.end
  %conv = sext i32 %index.0 to i64, !dbg !3105
  call void @lto_output_uleb128_stream(%struct.lto_output_stream* nonnull %obs, i64 %conv) #7, !dbg !3106
  br label %if.end6, !dbg !3106

if.end6:                                          ; preds = %if.end, %if.then5
  store i32 %index.0, i32* %this_index, align 4, !dbg !3107
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !3108
  ret i8 %new_entry_p.0, !dbg !3109
}

declare dso_local i8** @htab_find_slot(%struct.htab*, i8*, i32) local_unnamed_addr #1

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @VEC_tree_heap_safe_push(%struct.VEC_tree_heap** %vec_, %union.tree_node* %obj_) unnamed_addr #0 !dbg !3110 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %vec_, metadata !3115, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata %union.tree_node* %obj_, metadata !3116, metadata !DIExpression()), !dbg !3117
  %call = tail call fastcc i32 @VEC_tree_heap_reserve(%struct.VEC_tree_heap** %vec_, i32 1) #7, !dbg !3118
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %vec_, align 8, !dbg !3118
  %tobool = icmp eq %struct.VEC_tree_heap* %0, null, !dbg !3118
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3118

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %0, i64 0, i32 0, !dbg !3118
  br label %cond.end, !dbg !3118

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3118
  %call1 = tail call fastcc %union.tree_node** @VEC_tree_base_quick_push(%struct.VEC_tree_base* %cond, %union.tree_node* %obj_) #7, !dbg !3118
  ret %union.tree_node** %call1, !dbg !3118
}

; Function Attrs: nounwind uwtable
define dso_local void @lto_output_field_decl_index(%struct.lto_out_decl_state* %decl_state, %struct.lto_output_stream* %obs, %union.tree_node* %decl) local_unnamed_addr #4 !dbg !3119 {
entry:
  %index = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.lto_out_decl_state* %decl_state, metadata !3123, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata %struct.lto_output_stream* %obs, metadata !3124, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !3125, metadata !DIExpression()), !dbg !3127
  %0 = bitcast i32* %index to i8*, !dbg !3128
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3128
  %arrayidx = getelementptr inbounds %struct.lto_out_decl_state, %struct.lto_out_decl_state* %decl_state, i64 0, i32 0, i64 1, !dbg !3129
  call void @llvm.dbg.value(metadata i32* %index, metadata !3126, metadata !DIExpression(DW_OP_deref)), !dbg !3127
  %call = call zeroext i8 @lto_output_decl_index(%struct.lto_output_stream* %obs, %struct.lto_tree_ref_encoder* nonnull %arrayidx, %union.tree_node* %decl, i32* nonnull %index) #7, !dbg !3130
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3131
  ret void, !dbg !3131
}

; Function Attrs: nounwind uwtable
define dso_local void @lto_output_fn_decl_index(%struct.lto_out_decl_state* %decl_state, %struct.lto_output_stream* %obs, %union.tree_node* %decl) local_unnamed_addr #4 !dbg !3132 {
entry:
  %index = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.lto_out_decl_state* %decl_state, metadata !3134, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata %struct.lto_output_stream* %obs, metadata !3135, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !3136, metadata !DIExpression()), !dbg !3138
  %0 = bitcast i32* %index to i8*, !dbg !3139
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3139
  %arrayidx = getelementptr inbounds %struct.lto_out_decl_state, %struct.lto_out_decl_state* %decl_state, i64 0, i32 0, i64 2, !dbg !3140
  call void @llvm.dbg.value(metadata i32* %index, metadata !3137, metadata !DIExpression(DW_OP_deref)), !dbg !3138
  %call = call zeroext i8 @lto_output_decl_index(%struct.lto_output_stream* %obs, %struct.lto_tree_ref_encoder* nonnull %arrayidx, %union.tree_node* %decl, i32* nonnull %index) #7, !dbg !3141
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3142
  ret void, !dbg !3142
}

; Function Attrs: nounwind uwtable
define dso_local void @lto_output_namespace_decl_index(%struct.lto_out_decl_state* %decl_state, %struct.lto_output_stream* %obs, %union.tree_node* %decl) local_unnamed_addr #4 !dbg !3143 {
entry:
  %index = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.lto_out_decl_state* %decl_state, metadata !3145, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata %struct.lto_output_stream* %obs, metadata !3146, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !3147, metadata !DIExpression()), !dbg !3149
  %0 = bitcast i32* %index to i8*, !dbg !3150
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3150
  %arrayidx = getelementptr inbounds %struct.lto_out_decl_state, %struct.lto_out_decl_state* %decl_state, i64 0, i32 0, i64 5, !dbg !3151
  call void @llvm.dbg.value(metadata i32* %index, metadata !3148, metadata !DIExpression(DW_OP_deref)), !dbg !3149
  %call = call zeroext i8 @lto_output_decl_index(%struct.lto_output_stream* %obs, %struct.lto_tree_ref_encoder* nonnull %arrayidx, %union.tree_node* %decl, i32* nonnull %index) #7, !dbg !3152
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3153
  ret void, !dbg !3153
}

; Function Attrs: nounwind uwtable
define dso_local void @lto_output_var_decl_index(%struct.lto_out_decl_state* %decl_state, %struct.lto_output_stream* %obs, %union.tree_node* %decl) local_unnamed_addr #4 !dbg !3154 {
entry:
  %index = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.lto_out_decl_state* %decl_state, metadata !3156, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata %struct.lto_output_stream* %obs, metadata !3157, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !3158, metadata !DIExpression()), !dbg !3160
  %0 = bitcast i32* %index to i8*, !dbg !3161
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3161
  %arrayidx = getelementptr inbounds %struct.lto_out_decl_state, %struct.lto_out_decl_state* %decl_state, i64 0, i32 0, i64 3, !dbg !3162
  call void @llvm.dbg.value(metadata i32* %index, metadata !3159, metadata !DIExpression(DW_OP_deref)), !dbg !3160
  %call = call zeroext i8 @lto_output_decl_index(%struct.lto_output_stream* %obs, %struct.lto_tree_ref_encoder* nonnull %arrayidx, %union.tree_node* %decl, i32* nonnull %index) #7, !dbg !3163
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3164
  ret void, !dbg !3164
}

; Function Attrs: nounwind uwtable
define dso_local void @lto_output_type_decl_index(%struct.lto_out_decl_state* %decl_state, %struct.lto_output_stream* %obs, %union.tree_node* %decl) local_unnamed_addr #4 !dbg !3165 {
entry:
  %index = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.lto_out_decl_state* %decl_state, metadata !3167, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata %struct.lto_output_stream* %obs, metadata !3168, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !3169, metadata !DIExpression()), !dbg !3171
  %0 = bitcast i32* %index to i8*, !dbg !3172
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3172
  %arrayidx = getelementptr inbounds %struct.lto_out_decl_state, %struct.lto_out_decl_state* %decl_state, i64 0, i32 0, i64 4, !dbg !3173
  call void @llvm.dbg.value(metadata i32* %index, metadata !3170, metadata !DIExpression(DW_OP_deref)), !dbg !3171
  %call = call zeroext i8 @lto_output_decl_index(%struct.lto_output_stream* %obs, %struct.lto_tree_ref_encoder* nonnull %arrayidx, %union.tree_node* %decl, i32* nonnull %index) #7, !dbg !3174
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3175
  ret void, !dbg !3175
}

; Function Attrs: nounwind uwtable
define dso_local void @lto_output_type_ref_index(%struct.lto_out_decl_state* %decl_state, %struct.lto_output_stream* %obs, %union.tree_node* %ref) local_unnamed_addr #4 !dbg !3176 {
entry:
  %index = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.lto_out_decl_state* %decl_state, metadata !3178, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata %struct.lto_output_stream* %obs, metadata !3179, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata %union.tree_node* %ref, metadata !3180, metadata !DIExpression()), !dbg !3182
  %0 = bitcast i32* %index to i8*, !dbg !3183
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3183
  %arrayidx = getelementptr inbounds %struct.lto_out_decl_state, %struct.lto_out_decl_state* %decl_state, i64 0, i32 0, i64 0, !dbg !3184
  call void @llvm.dbg.value(metadata i32* %index, metadata !3181, metadata !DIExpression(DW_OP_deref)), !dbg !3182
  %call = call zeroext i8 @lto_output_decl_index(%struct.lto_output_stream* %obs, %struct.lto_tree_ref_encoder* %arrayidx, %union.tree_node* %ref, i32* nonnull %index) #7, !dbg !3185
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3186
  ret void, !dbg !3186
}

; Function Attrs: nounwind uwtable
define dso_local %struct.lto_simple_output_block* @lto_create_simple_output_block(i32 %section_type) local_unnamed_addr #4 !dbg !3187 {
entry:
  call void @llvm.dbg.value(metadata i32 %section_type, metadata !3191, metadata !DIExpression()), !dbg !3193
  %call = tail call i8* @xcalloc(i64 1, i64 24) #6, !dbg !3194
  %0 = bitcast i8* %call to %struct.lto_simple_output_block*, !dbg !3195
  call void @llvm.dbg.value(metadata %struct.lto_simple_output_block* %0, metadata !3192, metadata !DIExpression()), !dbg !3193
  %section_type1 = bitcast i8* %call to i32*, !dbg !3196
  store i32 %section_type, i32* %section_type1, align 8, !dbg !3197
  %call2 = tail call %struct.lto_out_decl_state* @lto_get_out_decl_state() #7, !dbg !3198
  %decl_state = getelementptr inbounds i8, i8* %call, i64 8, !dbg !3199
  %1 = bitcast i8* %decl_state to %struct.lto_out_decl_state**, !dbg !3199
  store %struct.lto_out_decl_state* %call2, %struct.lto_out_decl_state** %1, align 8, !dbg !3200
  %call3 = tail call i8* @xcalloc(i64 1, i64 40) #6, !dbg !3201
  %main_stream = getelementptr inbounds i8, i8* %call, i64 16, !dbg !3202
  %2 = bitcast i8* %main_stream to i8**, !dbg !3203
  store i8* %call3, i8** %2, align 8, !dbg !3203
  ret %struct.lto_simple_output_block* %0, !dbg !3204
}

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.lto_out_decl_state* @lto_get_out_decl_state() local_unnamed_addr #4 !dbg !3205 {
entry:
  %0 = load %struct.VEC_lto_out_decl_state_ptr_heap*, %struct.VEC_lto_out_decl_state_ptr_heap** @decl_state_stack, align 8, !dbg !3208
  %base = getelementptr inbounds %struct.VEC_lto_out_decl_state_ptr_heap, %struct.VEC_lto_out_decl_state_ptr_heap* %0, i64 0, i32 0, !dbg !3208
  %call = tail call fastcc %struct.lto_out_decl_state* @VEC_lto_out_decl_state_ptr_base_last(%struct.VEC_lto_out_decl_state_ptr_base* %base) #7, !dbg !3208
  ret %struct.lto_out_decl_state* %call, !dbg !3209
}

; Function Attrs: nounwind uwtable
define dso_local void @lto_destroy_simple_output_block(%struct.lto_simple_output_block* %ob) local_unnamed_addr #4 !dbg !3210 {
entry:
  %header = alloca %struct.lto_simple_header, align 4
  call void @llvm.dbg.value(metadata %struct.lto_simple_output_block* %ob, metadata !3214, metadata !DIExpression()), !dbg !3234
  %0 = bitcast %struct.lto_simple_header* %header to i8*, !dbg !3235
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !3235
  %section_type = getelementptr inbounds %struct.lto_simple_output_block, %struct.lto_simple_output_block* %ob, i64 0, i32 0, !dbg !3236
  %1 = load i32, i32* %section_type, align 8, !dbg !3236
  %call = tail call i8* @lto_get_section_name(i32 %1, i8* null) #6, !dbg !3237
  call void @llvm.dbg.value(metadata i8* %call, metadata !3215, metadata !DIExpression()), !dbg !3234
  %2 = load i32, i32* @flag_wpa, align 4, !dbg !3238
  %tobool = icmp eq i32 %2, 0, !dbg !3239
  %conv = zext i1 %tobool to i8, !dbg !3239
  tail call void @lto_begin_section(i8* %call, i8 zeroext %conv) #7, !dbg !3240
  tail call void @free(i8* %call) #6, !dbg !3241
  %call1 = call i8* @memset(i8* nonnull %0, i32 0, i64 16) #6, !dbg !3242
  %major_version = getelementptr inbounds %struct.lto_simple_header, %struct.lto_simple_header* %header, i64 0, i32 0, i32 0, !dbg !3243
  store i16 1, i16* %major_version, align 4, !dbg !3244
  %minor_version = getelementptr inbounds %struct.lto_simple_header, %struct.lto_simple_header* %header, i64 0, i32 0, i32 1, !dbg !3245
  store i16 0, i16* %minor_version, align 2, !dbg !3246
  %section_type4 = getelementptr inbounds %struct.lto_simple_header, %struct.lto_simple_header* %header, i64 0, i32 0, i32 2, !dbg !3247
  store i32 3, i32* %section_type4, align 4, !dbg !3248
  %compressed_size = getelementptr inbounds %struct.lto_simple_header, %struct.lto_simple_header* %header, i64 0, i32 2, !dbg !3249
  store i32 0, i32* %compressed_size, align 4, !dbg !3250
  %main_stream = getelementptr inbounds %struct.lto_simple_output_block, %struct.lto_simple_output_block* %ob, i64 0, i32 2, !dbg !3251
  %3 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !3251
  %total_size = getelementptr inbounds %struct.lto_output_stream, %struct.lto_output_stream* %3, i64 0, i32 5, !dbg !3252
  %4 = load i32, i32* %total_size, align 8, !dbg !3252
  %main_size = getelementptr inbounds %struct.lto_simple_header, %struct.lto_simple_header* %header, i64 0, i32 1, !dbg !3253
  store i32 %4, i32* %main_size, align 4, !dbg !3254
  %call5 = call i8* @xcalloc(i64 1, i64 40) #6, !dbg !3255
  %5 = bitcast i8* %call5 to %struct.lto_output_stream*, !dbg !3255
  call void @llvm.dbg.value(metadata %struct.lto_output_stream* %5, metadata !3233, metadata !DIExpression()), !dbg !3234
  call void @lto_output_data_stream(%struct.lto_output_stream* %5, i8* nonnull %0, i64 16) #7, !dbg !3256
  call void @lto_write_stream(%struct.lto_output_stream* %5) #7, !dbg !3257
  call void @free(i8* %call5) #6, !dbg !3258
  %6 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !3259
  call void @lto_write_stream(%struct.lto_output_stream* %6) #7, !dbg !3260
  call void @lto_end_section() #7, !dbg !3261
  %7 = bitcast %struct.lto_output_stream** %main_stream to i8**, !dbg !3262
  %8 = load i8*, i8** %7, align 8, !dbg !3262
  call void @free(i8* %8) #6, !dbg !3263
  %9 = bitcast %struct.lto_simple_output_block* %ob to i8*, !dbg !3264
  call void @free(i8* %9) #6, !dbg !3265
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !3266
  ret void, !dbg !3266
}

declare dso_local i8* @lto_get_section_name(i32, i8*) local_unnamed_addr #1

declare dso_local void @free(i8*) #1

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.lto_out_decl_state* @lto_new_out_decl_state() local_unnamed_addr #4 !dbg !3267 {
entry:
  %call = tail call i8* @xcalloc(i64 1, i64 184) #6, !dbg !3273
  call void @llvm.dbg.value(metadata %struct.lto_out_decl_state* %0, metadata !3269, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i32 0, metadata !3270, metadata !DIExpression()), !dbg !3274
  %streams = bitcast i8* %call to [7 x %struct.lto_tree_ref_encoder]*, !dbg !3275
  br label %for.cond, !dbg !3279

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ], !dbg !3280
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3270, metadata !DIExpression()), !dbg !3274
  %exitcond = icmp eq i64 %indvars.iv, 7, !dbg !3281
  br i1 %exitcond, label %for.end, label %for.body, !dbg !3282

for.body:                                         ; preds = %for.cond
  %cmp1 = icmp eq i64 %indvars.iv, 0, !dbg !3283
  %lto_hash_type_slot_node.lto_hash_decl_slot_node = select i1 %cmp1, i32 (i8*)* @lto_hash_type_slot_node, i32 (i8*)* @lto_hash_decl_slot_node
  %lto_eq_type_slot_node.lto_eq_decl_slot_node = select i1 %cmp1, i32 (i8*, i8*)* @lto_eq_type_slot_node, i32 (i8*, i8*)* @lto_eq_decl_slot_node
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %lto_eq_type_slot_node.lto_eq_decl_slot_node, metadata !3272, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i32 (i8*)* %lto_hash_type_slot_node.lto_hash_decl_slot_node, metadata !3271, metadata !DIExpression()), !dbg !3274
  %arrayidx = getelementptr inbounds [7 x %struct.lto_tree_ref_encoder], [7 x %struct.lto_tree_ref_encoder]* %streams, i64 0, i64 %indvars.iv, !dbg !3285
  tail call fastcc void @lto_init_tree_ref_encoder(%struct.lto_tree_ref_encoder* %arrayidx, i32 (i8*)* nonnull %lto_hash_type_slot_node.lto_hash_decl_slot_node, i32 (i8*, i8*)* nonnull %lto_eq_type_slot_node.lto_eq_decl_slot_node) #7, !dbg !3286
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3287
  call void @llvm.dbg.value(metadata i32 undef, metadata !3270, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3274
  br label %for.cond, !dbg !3288, !llvm.loop !3289

for.end:                                          ; preds = %for.cond
  %0 = bitcast i8* %call to %struct.lto_out_decl_state*, !dbg !3273
  %call2 = tail call %struct.lto_cgraph_encoder_d* @lto_cgraph_encoder_new() #6, !dbg !3291
  %cgraph_node_encoder = getelementptr inbounds i8, i8* %call, i64 168, !dbg !3292
  %1 = bitcast i8* %cgraph_node_encoder to %struct.lto_cgraph_encoder_d**, !dbg !3292
  store %struct.lto_cgraph_encoder_d* %call2, %struct.lto_cgraph_encoder_d** %1, align 8, !dbg !3293
  ret %struct.lto_out_decl_state* %0, !dbg !3294
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @lto_init_tree_ref_encoder(%struct.lto_tree_ref_encoder* %encoder, i32 (i8*)* %hash_fn, i32 (i8*, i8*)* %eq_fn) unnamed_addr #0 !dbg !3295 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_tree_ref_encoder* %encoder, metadata !3299, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i32 (i8*)* %hash_fn, metadata !3300, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %eq_fn, metadata !3301, metadata !DIExpression()), !dbg !3302
  %call = tail call %struct.htab* @htab_create(i64 37, i32 (i8*)* %hash_fn, i32 (i8*, i8*)* %eq_fn, void (i8*)* nonnull @free) #6, !dbg !3303
  %tree_hash_table = getelementptr inbounds %struct.lto_tree_ref_encoder, %struct.lto_tree_ref_encoder* %encoder, i64 0, i32 0, !dbg !3304
  store %struct.htab* %call, %struct.htab** %tree_hash_table, align 8, !dbg !3305
  %next_index = getelementptr inbounds %struct.lto_tree_ref_encoder, %struct.lto_tree_ref_encoder* %encoder, i64 0, i32 1, !dbg !3306
  store i32 0, i32* %next_index, align 8, !dbg !3307
  %trees = getelementptr inbounds %struct.lto_tree_ref_encoder, %struct.lto_tree_ref_encoder* %encoder, i64 0, i32 2, !dbg !3308
  store %struct.VEC_tree_heap* null, %struct.VEC_tree_heap** %trees, align 8, !dbg !3309
  ret void, !dbg !3310
}

declare dso_local %struct.lto_cgraph_encoder_d* @lto_cgraph_encoder_new() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @lto_delete_out_decl_state(%struct.lto_out_decl_state* %state) local_unnamed_addr #4 !dbg !3311 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_out_decl_state* %state, metadata !3315, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i32 0, metadata !3316, metadata !DIExpression()), !dbg !3317
  br label %for.cond, !dbg !3318

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ], !dbg !3320
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3316, metadata !DIExpression()), !dbg !3317
  %exitcond = icmp eq i64 %indvars.iv, 7, !dbg !3321
  br i1 %exitcond, label %for.end, label %for.body, !dbg !3323

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.lto_out_decl_state, %struct.lto_out_decl_state* %state, i64 0, i32 0, i64 %indvars.iv, !dbg !3324
  tail call fastcc void @lto_destroy_tree_ref_encoder(%struct.lto_tree_ref_encoder* %arrayidx) #7, !dbg !3325
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3326
  call void @llvm.dbg.value(metadata i32 undef, metadata !3316, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3317
  br label %for.cond, !dbg !3327, !llvm.loop !3328

for.end:                                          ; preds = %for.cond
  %0 = bitcast %struct.lto_out_decl_state* %state to i8*, !dbg !3330
  tail call void @free(i8* %0) #6, !dbg !3331
  ret void, !dbg !3332
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @lto_destroy_tree_ref_encoder(%struct.lto_tree_ref_encoder* %encoder) unnamed_addr #0 !dbg !3333 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_tree_ref_encoder* %encoder, metadata !3337, metadata !DIExpression()), !dbg !3338
  %tree_hash_table = getelementptr inbounds %struct.lto_tree_ref_encoder, %struct.lto_tree_ref_encoder* %encoder, i64 0, i32 0, !dbg !3339
  %0 = load %struct.htab*, %struct.htab** %tree_hash_table, align 8, !dbg !3339
  %tobool = icmp eq %struct.htab* %0, null, !dbg !3341
  br i1 %tobool, label %if.end, label %if.then, !dbg !3342

if.then:                                          ; preds = %entry
  tail call void @htab_delete(%struct.htab* nonnull %0) #6, !dbg !3343
  br label %if.end, !dbg !3343

if.end:                                           ; preds = %entry, %if.then
  %trees = getelementptr inbounds %struct.lto_tree_ref_encoder, %struct.lto_tree_ref_encoder* %encoder, i64 0, i32 2, !dbg !3344
  tail call fastcc void @VEC_tree_heap_free(%struct.VEC_tree_heap** nonnull %trees) #7, !dbg !3344
  ret void, !dbg !3345
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.lto_out_decl_state* @VEC_lto_out_decl_state_ptr_base_last(%struct.VEC_lto_out_decl_state_ptr_base* %vec_) unnamed_addr #0 !dbg !3346 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_lto_out_decl_state_ptr_base* %vec_, metadata !3352, metadata !DIExpression()), !dbg !3353
  br label %land.end, !dbg !3354

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %num2 = getelementptr inbounds %struct.VEC_lto_out_decl_state_ptr_base, %struct.VEC_lto_out_decl_state_ptr_base* %vec_, i64 0, i32 0, !dbg !3354
  %0 = load i32, i32* %num2, align 8, !dbg !3354
  %sub = add i32 %0, -1, !dbg !3354
  %idxprom = zext i32 %sub to i64, !dbg !3354
  %arrayidx = getelementptr inbounds %struct.VEC_lto_out_decl_state_ptr_base, %struct.VEC_lto_out_decl_state_ptr_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3354
  %1 = load %struct.lto_out_decl_state*, %struct.lto_out_decl_state** %arrayidx, align 8, !dbg !3354
  ret %struct.lto_out_decl_state* %1, !dbg !3354
}

; Function Attrs: nounwind uwtable
define dso_local void @lto_push_out_decl_state(%struct.lto_out_decl_state* %state) local_unnamed_addr #4 !dbg !3355 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_out_decl_state* %state, metadata !3357, metadata !DIExpression()), !dbg !3358
  %call = tail call fastcc %struct.lto_out_decl_state** @VEC_lto_out_decl_state_ptr_heap_safe_push(%struct.VEC_lto_out_decl_state_ptr_heap** nonnull @decl_state_stack, %struct.lto_out_decl_state* %state) #7, !dbg !3359
  ret void, !dbg !3360
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.lto_out_decl_state** @VEC_lto_out_decl_state_ptr_heap_safe_push(%struct.VEC_lto_out_decl_state_ptr_heap** %vec_, %struct.lto_out_decl_state* %obj_) unnamed_addr #0 !dbg !3361 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_lto_out_decl_state_ptr_heap** %vec_, metadata !3367, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata %struct.lto_out_decl_state* %obj_, metadata !3368, metadata !DIExpression()), !dbg !3369
  %call = tail call fastcc i32 @VEC_lto_out_decl_state_ptr_heap_reserve(%struct.VEC_lto_out_decl_state_ptr_heap** %vec_, i32 1) #7, !dbg !3370
  %0 = load %struct.VEC_lto_out_decl_state_ptr_heap*, %struct.VEC_lto_out_decl_state_ptr_heap** %vec_, align 8, !dbg !3370
  %tobool = icmp eq %struct.VEC_lto_out_decl_state_ptr_heap* %0, null, !dbg !3370
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3370

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_lto_out_decl_state_ptr_heap, %struct.VEC_lto_out_decl_state_ptr_heap* %0, i64 0, i32 0, !dbg !3370
  br label %cond.end, !dbg !3370

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_lto_out_decl_state_ptr_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3370
  %call1 = tail call fastcc %struct.lto_out_decl_state** @VEC_lto_out_decl_state_ptr_base_quick_push(%struct.VEC_lto_out_decl_state_ptr_base* %cond, %struct.lto_out_decl_state* %obj_) #7, !dbg !3370
  ret %struct.lto_out_decl_state** %call1, !dbg !3370
}

; Function Attrs: nounwind uwtable
define dso_local %struct.lto_out_decl_state* @lto_pop_out_decl_state() local_unnamed_addr #4 !dbg !3371 {
entry:
  %0 = load %struct.VEC_lto_out_decl_state_ptr_heap*, %struct.VEC_lto_out_decl_state_ptr_heap** @decl_state_stack, align 8, !dbg !3372
  %base = getelementptr inbounds %struct.VEC_lto_out_decl_state_ptr_heap, %struct.VEC_lto_out_decl_state_ptr_heap* %0, i64 0, i32 0, !dbg !3372
  %call = tail call fastcc %struct.lto_out_decl_state* @VEC_lto_out_decl_state_ptr_base_pop(%struct.VEC_lto_out_decl_state_ptr_base* %base) #7, !dbg !3372
  ret %struct.lto_out_decl_state* %call, !dbg !3373
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.lto_out_decl_state* @VEC_lto_out_decl_state_ptr_base_pop(%struct.VEC_lto_out_decl_state_ptr_base* %vec_) unnamed_addr #0 !dbg !3374 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_lto_out_decl_state_ptr_base* %vec_, metadata !3379, metadata !DIExpression()), !dbg !3381
  %num1 = getelementptr inbounds %struct.VEC_lto_out_decl_state_ptr_base, %struct.VEC_lto_out_decl_state_ptr_base* %vec_, i64 0, i32 0, !dbg !3382
  %0 = load i32, i32* %num1, align 8, !dbg !3382
  %dec = add i32 %0, -1, !dbg !3382
  store i32 %dec, i32* %num1, align 8, !dbg !3382
  %idxprom = zext i32 %dec to i64, !dbg !3382
  %arrayidx = getelementptr inbounds %struct.VEC_lto_out_decl_state_ptr_base, %struct.VEC_lto_out_decl_state_ptr_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3382
  %1 = load %struct.lto_out_decl_state*, %struct.lto_out_decl_state** %arrayidx, align 8, !dbg !3382
  call void @llvm.dbg.value(metadata %struct.lto_out_decl_state* %1, metadata !3380, metadata !DIExpression()), !dbg !3381
  ret %struct.lto_out_decl_state* %1, !dbg !3382
}

; Function Attrs: nounwind uwtable
define dso_local void @lto_record_function_out_decl_state(%union.tree_node* %fn_decl, %struct.lto_out_decl_state* %state) local_unnamed_addr #4 !dbg !3383 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %fn_decl, metadata !3387, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata %struct.lto_out_decl_state* %state, metadata !3388, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i32 0, metadata !3389, metadata !DIExpression()), !dbg !3390
  br label %for.cond, !dbg !3391

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ], !dbg !3393
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3389, metadata !DIExpression()), !dbg !3390
  %exitcond = icmp eq i64 %indvars.iv, 7, !dbg !3394
  br i1 %exitcond, label %for.end, label %for.body, !dbg !3396

for.body:                                         ; preds = %for.cond
  %tree_hash_table = getelementptr inbounds %struct.lto_out_decl_state, %struct.lto_out_decl_state* %state, i64 0, i32 0, i64 %indvars.iv, i32 0, !dbg !3397
  %0 = load %struct.htab*, %struct.htab** %tree_hash_table, align 8, !dbg !3397
  %tobool = icmp eq %struct.htab* %0, null, !dbg !3399
  br i1 %tobool, label %for.inc, label %if.then, !dbg !3400

if.then:                                          ; preds = %for.body
  tail call void @htab_delete(%struct.htab* nonnull %0) #6, !dbg !3401
  store %struct.htab* null, %struct.htab** %tree_hash_table, align 8, !dbg !3403
  br label %for.inc, !dbg !3404

for.inc:                                          ; preds = %for.body, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3405
  call void @llvm.dbg.value(metadata i32 undef, metadata !3389, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3390
  br label %for.cond, !dbg !3406, !llvm.loop !3407

for.end:                                          ; preds = %for.cond
  %fn_decl9 = getelementptr inbounds %struct.lto_out_decl_state, %struct.lto_out_decl_state* %state, i64 0, i32 2, !dbg !3409
  store %union.tree_node* %fn_decl, %union.tree_node** %fn_decl9, align 8, !dbg !3410
  %call = tail call fastcc %struct.lto_out_decl_state** @VEC_lto_out_decl_state_ptr_heap_safe_push(%struct.VEC_lto_out_decl_state_ptr_heap** nonnull @lto_function_decl_states, %struct.lto_out_decl_state* %state) #7, !dbg !3411
  ret void, !dbg !3412
}

declare dso_local void @htab_delete(%struct.htab*) local_unnamed_addr #1

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_heap_reserve(%struct.VEC_tree_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3413 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %vec_, metadata !3417, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata i32 1, metadata !3418, metadata !DIExpression()), !dbg !3420
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %vec_, align 8, !dbg !3421
  %tobool = icmp eq %struct.VEC_tree_heap* %0, null, !dbg !3421
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3421

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %0, i64 0, i32 0, !dbg !3421
  br label %cond.end, !dbg !3421

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3421
  %call = tail call fastcc i32 @VEC_tree_base_space(%struct.VEC_tree_base* %cond, i32 1) #7, !dbg !3421
  %tobool1 = icmp eq i32 %call, 0, !dbg !3421
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !3421
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !3419, metadata !DIExpression()), !dbg !3420
  br i1 %tobool1, label %if.then, label %if.end, !dbg !3421

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_tree_heap** %vec_ to i8**, !dbg !3422
  %2 = load i8*, i8** %1, align 8, !dbg !3422
  %call3 = tail call i8* @vec_heap_p_reserve(i8* %2, i32 1) #6, !dbg !3422
  store i8* %call3, i8** %1, align 8, !dbg !3422
  br label %if.end, !dbg !3422

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !3421
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @VEC_tree_base_quick_push(%struct.VEC_tree_base* %vec_, %union.tree_node* %obj_) unnamed_addr #0 !dbg !3424 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !3429, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata %union.tree_node* %obj_, metadata !3430, metadata !DIExpression()), !dbg !3432
  %num1 = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !3433
  %0 = load i32, i32* %num1, align 8, !dbg !3433
  %inc = add i32 %0, 1, !dbg !3433
  store i32 %inc, i32* %num1, align 8, !dbg !3433
  %idxprom = zext i32 %0 to i64, !dbg !3433
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3433
  call void @llvm.dbg.value(metadata %union.tree_node** %arrayidx, metadata !3431, metadata !DIExpression()), !dbg !3432
  store %union.tree_node* %obj_, %union.tree_node** %arrayidx, align 8, !dbg !3433
  ret %union.tree_node** %arrayidx, !dbg !3433
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_space(%struct.VEC_tree_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3434 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !3438, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i32 1, metadata !3439, metadata !DIExpression()), !dbg !3440
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !3441
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !3441

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 1, !dbg !3441
  %0 = load i32, i32* %alloc, align 4, !dbg !3441
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !3441
  %1 = load i32, i32* %num, align 8, !dbg !3441
  %cmp1 = icmp ne i32 %0, %1, !dbg !3441
  %phitmp = zext i1 %cmp1 to i32, !dbg !3441
  br label %cond.end, !dbg !3441

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3441

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !3441
}

declare dso_local i8* @vec_heap_p_reserve(i8*, i32) local_unnamed_addr #1

declare dso_local %struct.htab* @htab_create(i64, i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_tree_heap_free(%struct.VEC_tree_heap** %vec_) unnamed_addr #0 !dbg !3442 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %vec_, metadata !3446, metadata !DIExpression()), !dbg !3447
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %vec_, align 8, !dbg !3448
  %tobool = icmp eq %struct.VEC_tree_heap* %0, null, !dbg !3448
  br i1 %tobool, label %if.end, label %if.then, !dbg !3450

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_tree_heap* %0 to i8*, !dbg !3450
  tail call void @free(i8* nonnull %1) #6, !dbg !3448
  br label %if.end, !dbg !3448

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_tree_heap* null, %struct.VEC_tree_heap** %vec_, align 8, !dbg !3450
  ret void, !dbg !3450
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_lto_out_decl_state_ptr_heap_reserve(%struct.VEC_lto_out_decl_state_ptr_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3451 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_lto_out_decl_state_ptr_heap** %vec_, metadata !3455, metadata !DIExpression()), !dbg !3458
  call void @llvm.dbg.value(metadata i32 1, metadata !3456, metadata !DIExpression()), !dbg !3458
  %0 = load %struct.VEC_lto_out_decl_state_ptr_heap*, %struct.VEC_lto_out_decl_state_ptr_heap** %vec_, align 8, !dbg !3459
  %tobool = icmp eq %struct.VEC_lto_out_decl_state_ptr_heap* %0, null, !dbg !3459
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3459

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_lto_out_decl_state_ptr_heap, %struct.VEC_lto_out_decl_state_ptr_heap* %0, i64 0, i32 0, !dbg !3459
  br label %cond.end, !dbg !3459

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_lto_out_decl_state_ptr_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3459
  %call = tail call fastcc i32 @VEC_lto_out_decl_state_ptr_base_space(%struct.VEC_lto_out_decl_state_ptr_base* %cond, i32 1) #7, !dbg !3459
  %tobool1 = icmp eq i32 %call, 0, !dbg !3459
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !3459
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !3457, metadata !DIExpression()), !dbg !3458
  br i1 %tobool1, label %if.then, label %if.end, !dbg !3459

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_lto_out_decl_state_ptr_heap** %vec_ to i8**, !dbg !3460
  %2 = load i8*, i8** %1, align 8, !dbg !3460
  %call3 = tail call i8* @vec_heap_p_reserve(i8* %2, i32 1) #6, !dbg !3460
  store i8* %call3, i8** %1, align 8, !dbg !3460
  br label %if.end, !dbg !3460

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !3459
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.lto_out_decl_state** @VEC_lto_out_decl_state_ptr_base_quick_push(%struct.VEC_lto_out_decl_state_ptr_base* %vec_, %struct.lto_out_decl_state* %obj_) unnamed_addr #0 !dbg !3462 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_lto_out_decl_state_ptr_base* %vec_, metadata !3466, metadata !DIExpression()), !dbg !3469
  call void @llvm.dbg.value(metadata %struct.lto_out_decl_state* %obj_, metadata !3467, metadata !DIExpression()), !dbg !3469
  %num1 = getelementptr inbounds %struct.VEC_lto_out_decl_state_ptr_base, %struct.VEC_lto_out_decl_state_ptr_base* %vec_, i64 0, i32 0, !dbg !3470
  %0 = load i32, i32* %num1, align 8, !dbg !3470
  %inc = add i32 %0, 1, !dbg !3470
  store i32 %inc, i32* %num1, align 8, !dbg !3470
  %idxprom = zext i32 %0 to i64, !dbg !3470
  %arrayidx = getelementptr inbounds %struct.VEC_lto_out_decl_state_ptr_base, %struct.VEC_lto_out_decl_state_ptr_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3470
  call void @llvm.dbg.value(metadata %struct.lto_out_decl_state** %arrayidx, metadata !3468, metadata !DIExpression()), !dbg !3469
  store %struct.lto_out_decl_state* %obj_, %struct.lto_out_decl_state** %arrayidx, align 8, !dbg !3470
  ret %struct.lto_out_decl_state** %arrayidx, !dbg !3470
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_lto_out_decl_state_ptr_base_space(%struct.VEC_lto_out_decl_state_ptr_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3471 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_lto_out_decl_state_ptr_base* %vec_, metadata !3475, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.value(metadata i32 1, metadata !3476, metadata !DIExpression()), !dbg !3477
  %tobool = icmp eq %struct.VEC_lto_out_decl_state_ptr_base* %vec_, null, !dbg !3478
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !3478

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_lto_out_decl_state_ptr_base, %struct.VEC_lto_out_decl_state_ptr_base* %vec_, i64 0, i32 1, !dbg !3478
  %0 = load i32, i32* %alloc, align 4, !dbg !3478
  %num = getelementptr inbounds %struct.VEC_lto_out_decl_state_ptr_base, %struct.VEC_lto_out_decl_state_ptr_base* %vec_, i64 0, i32 0, !dbg !3478
  %1 = load i32, i32* %num, align 8, !dbg !3478
  %cmp1 = icmp ne i32 %0, %1, !dbg !3478
  %phitmp = zext i1 %cmp1 to i32, !dbg !3478
  br label %cond.end, !dbg !3478

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3478

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !3478
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
attributes #7 = { nobuiltin }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2330, !2331, !2332}
!llvm.ident = !{!2333}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "forced_extern_inline", scope: !2, file: !3, line: 56, type: !1560, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !604, globals: !2325, nameTableKind: None)
!3 = !DIFile(filename: "lto-section-out.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !329, !336, !342, !347, !352, !370, !377, !384, !407, !414, !590}
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
!329 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "eh_region_type", file: !330, line: 30, baseType: !7, size: 32, elements: !331)
!330 = !DIFile(filename: "./except.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!331 = !{!332, !333, !334, !335}
!332 = !DIEnumerator(name: "ERT_CLEANUP", value: 0, isUnsigned: true)
!333 = !DIEnumerator(name: "ERT_TRY", value: 1, isUnsigned: true)
!334 = !DIEnumerator(name: "ERT_ALLOWED_EXCEPTIONS", value: 2, isUnsigned: true)
!335 = !DIEnumerator(name: "ERT_MUST_NOT_THROW", value: 3, isUnsigned: true)
!336 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !337, line: 363, baseType: !7, size: 32, elements: !338)
!337 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!338 = !{!339, !340, !341}
!339 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!340 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!341 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!342 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !337, line: 355, baseType: !7, size: 32, elements: !343)
!343 = !{!344, !345, !346}
!344 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!345 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!346 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!347 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !348, line: 474, baseType: !7, size: 32, elements: !349)
!348 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!349 = !{!350, !351}
!350 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!351 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!352 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !135, line: 280, baseType: !7, size: 32, elements: !353)
!353 = !{!354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369}
!354 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!355 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!356 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!357 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!358 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!359 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!360 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!361 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!362 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!363 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!364 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!365 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!366 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!367 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!368 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!369 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!370 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !135, line: 1817, baseType: !7, size: 32, elements: !371)
!371 = !{!372, !373, !374, !375, !376}
!372 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!373 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!374 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!375 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!376 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!377 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !135, line: 1805, baseType: !7, size: 32, elements: !378)
!378 = !{!379, !380, !381, !382, !383}
!379 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!380 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!381 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!382 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!383 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!384 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !385, line: 309, baseType: !7, size: 32, elements: !386)
!385 = !DIFile(filename: "./cgraph.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!386 = !{!387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406}
!387 = !DIEnumerator(name: "CIF_OK", value: 0, isUnsigned: true)
!388 = !DIEnumerator(name: "CIF_UNSPECIFIED", value: 1, isUnsigned: true)
!389 = !DIEnumerator(name: "CIF_FUNCTION_NOT_CONSIDERED", value: 2, isUnsigned: true)
!390 = !DIEnumerator(name: "CIF_BODY_NOT_AVAILABLE", value: 3, isUnsigned: true)
!391 = !DIEnumerator(name: "CIF_REDEFINED_EXTERN_INLINE", value: 4, isUnsigned: true)
!392 = !DIEnumerator(name: "CIF_FUNCTION_NOT_INLINABLE", value: 5, isUnsigned: true)
!393 = !DIEnumerator(name: "CIF_FUNCTION_NOT_INLINE_CANDIDATE", value: 6, isUnsigned: true)
!394 = !DIEnumerator(name: "CIF_LARGE_FUNCTION_GROWTH_LIMIT", value: 7, isUnsigned: true)
!395 = !DIEnumerator(name: "CIF_LARGE_STACK_FRAME_GROWTH_LIMIT", value: 8, isUnsigned: true)
!396 = !DIEnumerator(name: "CIF_MAX_INLINE_INSNS_SINGLE_LIMIT", value: 9, isUnsigned: true)
!397 = !DIEnumerator(name: "CIF_MAX_INLINE_INSNS_AUTO_LIMIT", value: 10, isUnsigned: true)
!398 = !DIEnumerator(name: "CIF_INLINE_UNIT_GROWTH_LIMIT", value: 11, isUnsigned: true)
!399 = !DIEnumerator(name: "CIF_RECURSIVE_INLINING", value: 12, isUnsigned: true)
!400 = !DIEnumerator(name: "CIF_UNLIKELY_CALL", value: 13, isUnsigned: true)
!401 = !DIEnumerator(name: "CIF_NOT_DECLARED_INLINED", value: 14, isUnsigned: true)
!402 = !DIEnumerator(name: "CIF_OPTIMIZING_FOR_SIZE", value: 15, isUnsigned: true)
!403 = !DIEnumerator(name: "CIF_TARGET_OPTION_MISMATCH", value: 16, isUnsigned: true)
!404 = !DIEnumerator(name: "CIF_MISMATCHED_ARGUMENTS", value: 17, isUnsigned: true)
!405 = !DIEnumerator(name: "CIF_ORIGINALLY_INDIRECT_CALL", value: 18, isUnsigned: true)
!406 = !DIEnumerator(name: "CIF_N_REASONS", value: 19, isUnsigned: true)
!407 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "opt_pass_type", file: !408, line: 104, baseType: !7, size: 32, elements: !409)
!408 = !DIFile(filename: "./tree-pass.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!409 = !{!410, !411, !412, !413}
!410 = !DIEnumerator(name: "GIMPLE_PASS", value: 0, isUnsigned: true)
!411 = !DIEnumerator(name: "RTL_PASS", value: 1, isUnsigned: true)
!412 = !DIEnumerator(name: "SIMPLE_IPA_PASS", value: 2, isUnsigned: true)
!413 = !DIEnumerator(name: "IPA_PASS", value: 3, isUnsigned: true)
!414 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !415, line: 74, baseType: !7, size: 32, elements: !416)
!415 = !DIFile(filename: "./timevar.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!416 = !{!417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589}
!417 = !DIEnumerator(name: "TV_NONE", value: 0, isUnsigned: true)
!418 = !DIEnumerator(name: "TV_TOTAL", value: 1, isUnsigned: true)
!419 = !DIEnumerator(name: "TV_GC", value: 2, isUnsigned: true)
!420 = !DIEnumerator(name: "TV_DUMP", value: 3, isUnsigned: true)
!421 = !DIEnumerator(name: "TV_CGRAPH", value: 4, isUnsigned: true)
!422 = !DIEnumerator(name: "TV_CGRAPHOPT", value: 5, isUnsigned: true)
!423 = !DIEnumerator(name: "TV_IPA_CONSTANT_PROP", value: 6, isUnsigned: true)
!424 = !DIEnumerator(name: "TV_IPA_LTO_GIMPLE_IO", value: 7, isUnsigned: true)
!425 = !DIEnumerator(name: "TV_IPA_LTO_DECL_IO", value: 8, isUnsigned: true)
!426 = !DIEnumerator(name: "TV_IPA_LTO_CGRAPH_IO", value: 9, isUnsigned: true)
!427 = !DIEnumerator(name: "TV_LTO", value: 10, isUnsigned: true)
!428 = !DIEnumerator(name: "TV_WHOPR_WPA", value: 11, isUnsigned: true)
!429 = !DIEnumerator(name: "TV_WHOPR_WPA_IO", value: 12, isUnsigned: true)
!430 = !DIEnumerator(name: "TV_WHOPR_LTRANS", value: 13, isUnsigned: true)
!431 = !DIEnumerator(name: "TV_WHOPR_WPA_FIXUP", value: 14, isUnsigned: true)
!432 = !DIEnumerator(name: "TV_WHOPR_WPA_LTRANS_EXEC", value: 15, isUnsigned: true)
!433 = !DIEnumerator(name: "TV_IPA_REFERENCE", value: 16, isUnsigned: true)
!434 = !DIEnumerator(name: "TV_IPA_PURE_CONST", value: 17, isUnsigned: true)
!435 = !DIEnumerator(name: "TV_IPA_TYPE_ESCAPE", value: 18, isUnsigned: true)
!436 = !DIEnumerator(name: "TV_IPA_PTA", value: 19, isUnsigned: true)
!437 = !DIEnumerator(name: "TV_IPA_SRA", value: 20, isUnsigned: true)
!438 = !DIEnumerator(name: "TV_IPA_FREE_LANG_DATA", value: 21, isUnsigned: true)
!439 = !DIEnumerator(name: "TV_CFG", value: 22, isUnsigned: true)
!440 = !DIEnumerator(name: "TV_CLEANUP_CFG", value: 23, isUnsigned: true)
!441 = !DIEnumerator(name: "TV_CFG_VERIFY", value: 24, isUnsigned: true)
!442 = !DIEnumerator(name: "TV_DELETE_TRIVIALLY_DEAD", value: 25, isUnsigned: true)
!443 = !DIEnumerator(name: "TV_LIFE", value: 26, isUnsigned: true)
!444 = !DIEnumerator(name: "TV_LIFE_UPDATE", value: 27, isUnsigned: true)
!445 = !DIEnumerator(name: "TV_DF_SCAN", value: 28, isUnsigned: true)
!446 = !DIEnumerator(name: "TV_DF_MD", value: 29, isUnsigned: true)
!447 = !DIEnumerator(name: "TV_DF_RD", value: 30, isUnsigned: true)
!448 = !DIEnumerator(name: "TV_DF_LR", value: 31, isUnsigned: true)
!449 = !DIEnumerator(name: "TV_DF_LIVE", value: 32, isUnsigned: true)
!450 = !DIEnumerator(name: "TV_DF_UREC", value: 33, isUnsigned: true)
!451 = !DIEnumerator(name: "TV_DF_CHAIN", value: 34, isUnsigned: true)
!452 = !DIEnumerator(name: "TV_DF_BYTE_LR", value: 35, isUnsigned: true)
!453 = !DIEnumerator(name: "TV_DF_NOTE", value: 36, isUnsigned: true)
!454 = !DIEnumerator(name: "TV_REG_STATS", value: 37, isUnsigned: true)
!455 = !DIEnumerator(name: "TV_ALIAS_ANALYSIS", value: 38, isUnsigned: true)
!456 = !DIEnumerator(name: "TV_ALIAS_STMT_WALK", value: 39, isUnsigned: true)
!457 = !DIEnumerator(name: "TV_REG_SCAN", value: 40, isUnsigned: true)
!458 = !DIEnumerator(name: "TV_REBUILD_JUMP", value: 41, isUnsigned: true)
!459 = !DIEnumerator(name: "TV_CPP", value: 42, isUnsigned: true)
!460 = !DIEnumerator(name: "TV_LEX", value: 43, isUnsigned: true)
!461 = !DIEnumerator(name: "TV_PARSE", value: 44, isUnsigned: true)
!462 = !DIEnumerator(name: "TV_NAME_LOOKUP", value: 45, isUnsigned: true)
!463 = !DIEnumerator(name: "TV_INLINE_HEURISTICS", value: 46, isUnsigned: true)
!464 = !DIEnumerator(name: "TV_INTEGRATION", value: 47, isUnsigned: true)
!465 = !DIEnumerator(name: "TV_TREE_GIMPLIFY", value: 48, isUnsigned: true)
!466 = !DIEnumerator(name: "TV_TREE_EH", value: 49, isUnsigned: true)
!467 = !DIEnumerator(name: "TV_TREE_CFG", value: 50, isUnsigned: true)
!468 = !DIEnumerator(name: "TV_TREE_CLEANUP_CFG", value: 51, isUnsigned: true)
!469 = !DIEnumerator(name: "TV_TREE_VRP", value: 52, isUnsigned: true)
!470 = !DIEnumerator(name: "TV_TREE_COPY_PROP", value: 53, isUnsigned: true)
!471 = !DIEnumerator(name: "TV_TREE_STORE_COPY_PROP", value: 54, isUnsigned: true)
!472 = !DIEnumerator(name: "TV_FIND_REFERENCED_VARS", value: 55, isUnsigned: true)
!473 = !DIEnumerator(name: "TV_TREE_PTA", value: 56, isUnsigned: true)
!474 = !DIEnumerator(name: "TV_TREE_INSERT_PHI_NODES", value: 57, isUnsigned: true)
!475 = !DIEnumerator(name: "TV_TREE_SSA_REWRITE_BLOCKS", value: 58, isUnsigned: true)
!476 = !DIEnumerator(name: "TV_TREE_SSA_OTHER", value: 59, isUnsigned: true)
!477 = !DIEnumerator(name: "TV_TREE_SSA_INCREMENTAL", value: 60, isUnsigned: true)
!478 = !DIEnumerator(name: "TV_TREE_OPS", value: 61, isUnsigned: true)
!479 = !DIEnumerator(name: "TV_TREE_SSA_DOMINATOR_OPTS", value: 62, isUnsigned: true)
!480 = !DIEnumerator(name: "TV_TREE_SRA", value: 63, isUnsigned: true)
!481 = !DIEnumerator(name: "TV_TREE_STORE_CCP", value: 64, isUnsigned: true)
!482 = !DIEnumerator(name: "TV_TREE_CCP", value: 65, isUnsigned: true)
!483 = !DIEnumerator(name: "TV_TREE_PHI_CPROP", value: 66, isUnsigned: true)
!484 = !DIEnumerator(name: "TV_TREE_SPLIT_EDGES", value: 67, isUnsigned: true)
!485 = !DIEnumerator(name: "TV_TREE_REASSOC", value: 68, isUnsigned: true)
!486 = !DIEnumerator(name: "TV_TREE_PRE", value: 69, isUnsigned: true)
!487 = !DIEnumerator(name: "TV_TREE_REDPHI", value: 70, isUnsigned: true)
!488 = !DIEnumerator(name: "TV_TREE_FRE", value: 71, isUnsigned: true)
!489 = !DIEnumerator(name: "TV_TREE_SINK", value: 72, isUnsigned: true)
!490 = !DIEnumerator(name: "TV_TREE_PHIOPT", value: 73, isUnsigned: true)
!491 = !DIEnumerator(name: "TV_TREE_FORWPROP", value: 74, isUnsigned: true)
!492 = !DIEnumerator(name: "TV_TREE_PHIPROP", value: 75, isUnsigned: true)
!493 = !DIEnumerator(name: "TV_TREE_DCE", value: 76, isUnsigned: true)
!494 = !DIEnumerator(name: "TV_TREE_CD_DCE", value: 77, isUnsigned: true)
!495 = !DIEnumerator(name: "TV_TREE_CALL_CDCE", value: 78, isUnsigned: true)
!496 = !DIEnumerator(name: "TV_TREE_DSE", value: 79, isUnsigned: true)
!497 = !DIEnumerator(name: "TV_TREE_MERGE_PHI", value: 80, isUnsigned: true)
!498 = !DIEnumerator(name: "TV_TREE_LOOP", value: 81, isUnsigned: true)
!499 = !DIEnumerator(name: "TV_TREE_LOOP_BOUNDS", value: 82, isUnsigned: true)
!500 = !DIEnumerator(name: "TV_LIM", value: 83, isUnsigned: true)
!501 = !DIEnumerator(name: "TV_TREE_LOOP_IVCANON", value: 84, isUnsigned: true)
!502 = !DIEnumerator(name: "TV_SCEV_CONST", value: 85, isUnsigned: true)
!503 = !DIEnumerator(name: "TV_TREE_LOOP_UNSWITCH", value: 86, isUnsigned: true)
!504 = !DIEnumerator(name: "TV_COMPLETE_UNROLL", value: 87, isUnsigned: true)
!505 = !DIEnumerator(name: "TV_TREE_PARALLELIZE_LOOPS", value: 88, isUnsigned: true)
!506 = !DIEnumerator(name: "TV_TREE_VECTORIZATION", value: 89, isUnsigned: true)
!507 = !DIEnumerator(name: "TV_TREE_SLP_VECTORIZATION", value: 90, isUnsigned: true)
!508 = !DIEnumerator(name: "TV_GRAPHITE_TRANSFORMS", value: 91, isUnsigned: true)
!509 = !DIEnumerator(name: "TV_GRAPHITE_DATA_DEPS", value: 92, isUnsigned: true)
!510 = !DIEnumerator(name: "TV_GRAPHITE_CODE_GEN", value: 93, isUnsigned: true)
!511 = !DIEnumerator(name: "TV_TREE_LINEAR_TRANSFORM", value: 94, isUnsigned: true)
!512 = !DIEnumerator(name: "TV_TREE_LOOP_DISTRIBUTION", value: 95, isUnsigned: true)
!513 = !DIEnumerator(name: "TV_CHECK_DATA_DEPS", value: 96, isUnsigned: true)
!514 = !DIEnumerator(name: "TV_TREE_PREFETCH", value: 97, isUnsigned: true)
!515 = !DIEnumerator(name: "TV_TREE_LOOP_IVOPTS", value: 98, isUnsigned: true)
!516 = !DIEnumerator(name: "TV_PREDCOM", value: 99, isUnsigned: true)
!517 = !DIEnumerator(name: "TV_TREE_LOOP_INIT", value: 100, isUnsigned: true)
!518 = !DIEnumerator(name: "TV_TREE_LOOP_FINI", value: 101, isUnsigned: true)
!519 = !DIEnumerator(name: "TV_TREE_CH", value: 102, isUnsigned: true)
!520 = !DIEnumerator(name: "TV_TREE_SSA_UNCPROP", value: 103, isUnsigned: true)
!521 = !DIEnumerator(name: "TV_TREE_SSA_TO_NORMAL", value: 104, isUnsigned: true)
!522 = !DIEnumerator(name: "TV_TREE_NRV", value: 105, isUnsigned: true)
!523 = !DIEnumerator(name: "TV_TREE_COPY_RENAME", value: 106, isUnsigned: true)
!524 = !DIEnumerator(name: "TV_TREE_SSA_VERIFY", value: 107, isUnsigned: true)
!525 = !DIEnumerator(name: "TV_TREE_STMT_VERIFY", value: 108, isUnsigned: true)
!526 = !DIEnumerator(name: "TV_TREE_SWITCH_CONVERSION", value: 109, isUnsigned: true)
!527 = !DIEnumerator(name: "TV_CGRAPH_VERIFY", value: 110, isUnsigned: true)
!528 = !DIEnumerator(name: "TV_DOM_FRONTIERS", value: 111, isUnsigned: true)
!529 = !DIEnumerator(name: "TV_DOMINANCE", value: 112, isUnsigned: true)
!530 = !DIEnumerator(name: "TV_CONTROL_DEPENDENCES", value: 113, isUnsigned: true)
!531 = !DIEnumerator(name: "TV_OVERLOAD", value: 114, isUnsigned: true)
!532 = !DIEnumerator(name: "TV_TEMPLATE_INSTANTIATION", value: 115, isUnsigned: true)
!533 = !DIEnumerator(name: "TV_EXPAND", value: 116, isUnsigned: true)
!534 = !DIEnumerator(name: "TV_VARCONST", value: 117, isUnsigned: true)
!535 = !DIEnumerator(name: "TV_LOWER_SUBREG", value: 118, isUnsigned: true)
!536 = !DIEnumerator(name: "TV_JUMP", value: 119, isUnsigned: true)
!537 = !DIEnumerator(name: "TV_FWPROP", value: 120, isUnsigned: true)
!538 = !DIEnumerator(name: "TV_CSE", value: 121, isUnsigned: true)
!539 = !DIEnumerator(name: "TV_DCE", value: 122, isUnsigned: true)
!540 = !DIEnumerator(name: "TV_DSE1", value: 123, isUnsigned: true)
!541 = !DIEnumerator(name: "TV_DSE2", value: 124, isUnsigned: true)
!542 = !DIEnumerator(name: "TV_LOOP", value: 125, isUnsigned: true)
!543 = !DIEnumerator(name: "TV_LOOP_MOVE_INVARIANTS", value: 126, isUnsigned: true)
!544 = !DIEnumerator(name: "TV_LOOP_UNSWITCH", value: 127, isUnsigned: true)
!545 = !DIEnumerator(name: "TV_LOOP_UNROLL", value: 128, isUnsigned: true)
!546 = !DIEnumerator(name: "TV_LOOP_DOLOOP", value: 129, isUnsigned: true)
!547 = !DIEnumerator(name: "TV_CPROP", value: 130, isUnsigned: true)
!548 = !DIEnumerator(name: "TV_PRE", value: 131, isUnsigned: true)
!549 = !DIEnumerator(name: "TV_HOIST", value: 132, isUnsigned: true)
!550 = !DIEnumerator(name: "TV_LSM", value: 133, isUnsigned: true)
!551 = !DIEnumerator(name: "TV_TRACER", value: 134, isUnsigned: true)
!552 = !DIEnumerator(name: "TV_WEB", value: 135, isUnsigned: true)
!553 = !DIEnumerator(name: "TV_AUTO_INC_DEC", value: 136, isUnsigned: true)
!554 = !DIEnumerator(name: "TV_CSE2", value: 137, isUnsigned: true)
!555 = !DIEnumerator(name: "TV_BRANCH_PROB", value: 138, isUnsigned: true)
!556 = !DIEnumerator(name: "TV_VPT", value: 139, isUnsigned: true)
!557 = !DIEnumerator(name: "TV_COMBINE", value: 140, isUnsigned: true)
!558 = !DIEnumerator(name: "TV_IFCVT", value: 141, isUnsigned: true)
!559 = !DIEnumerator(name: "TV_REGMOVE", value: 142, isUnsigned: true)
!560 = !DIEnumerator(name: "TV_MODE_SWITCH", value: 143, isUnsigned: true)
!561 = !DIEnumerator(name: "TV_SMS", value: 144, isUnsigned: true)
!562 = !DIEnumerator(name: "TV_SCHED", value: 145, isUnsigned: true)
!563 = !DIEnumerator(name: "TV_LOCAL_ALLOC", value: 146, isUnsigned: true)
!564 = !DIEnumerator(name: "TV_GLOBAL_ALLOC", value: 147, isUnsigned: true)
!565 = !DIEnumerator(name: "TV_IRA", value: 148, isUnsigned: true)
!566 = !DIEnumerator(name: "TV_RELOAD", value: 149, isUnsigned: true)
!567 = !DIEnumerator(name: "TV_RELOAD_CSE_REGS", value: 150, isUnsigned: true)
!568 = !DIEnumerator(name: "TV_SEQABSTR", value: 151, isUnsigned: true)
!569 = !DIEnumerator(name: "TV_GCSE_AFTER_RELOAD", value: 152, isUnsigned: true)
!570 = !DIEnumerator(name: "TV_THREAD_PROLOGUE_AND_EPILOGUE", value: 153, isUnsigned: true)
!571 = !DIEnumerator(name: "TV_IFCVT2", value: 154, isUnsigned: true)
!572 = !DIEnumerator(name: "TV_COMBINE_STACK_ADJUST", value: 155, isUnsigned: true)
!573 = !DIEnumerator(name: "TV_PEEPHOLE2", value: 156, isUnsigned: true)
!574 = !DIEnumerator(name: "TV_RENAME_REGISTERS", value: 157, isUnsigned: true)
!575 = !DIEnumerator(name: "TV_CPROP_REGISTERS", value: 158, isUnsigned: true)
!576 = !DIEnumerator(name: "TV_SCHED2", value: 159, isUnsigned: true)
!577 = !DIEnumerator(name: "TV_MACH_DEP", value: 160, isUnsigned: true)
!578 = !DIEnumerator(name: "TV_DBR_SCHED", value: 161, isUnsigned: true)
!579 = !DIEnumerator(name: "TV_REORDER_BLOCKS", value: 162, isUnsigned: true)
!580 = !DIEnumerator(name: "TV_SHORTEN_BRANCH", value: 163, isUnsigned: true)
!581 = !DIEnumerator(name: "TV_REG_STACK", value: 164, isUnsigned: true)
!582 = !DIEnumerator(name: "TV_FINAL", value: 165, isUnsigned: true)
!583 = !DIEnumerator(name: "TV_SYMOUT", value: 166, isUnsigned: true)
!584 = !DIEnumerator(name: "TV_VAR_TRACKING", value: 167, isUnsigned: true)
!585 = !DIEnumerator(name: "TV_TREE_IFCOMBINE", value: 168, isUnsigned: true)
!586 = !DIEnumerator(name: "TV_PLUGIN_INIT", value: 169, isUnsigned: true)
!587 = !DIEnumerator(name: "TV_PLUGIN_RUN", value: 170, isUnsigned: true)
!588 = !DIEnumerator(name: "TV_REST_OF_COMPILATION", value: 171, isUnsigned: true)
!589 = !DIEnumerator(name: "TIMEVAR_LAST", value: 172, isUnsigned: true)
!590 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lto_section_type", file: !591, line: 256, baseType: !7, size: 32, elements: !592)
!591 = !DIFile(filename: "./lto-streamer.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!592 = !{!593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603}
!593 = !DIEnumerator(name: "LTO_section_decls", value: 0, isUnsigned: true)
!594 = !DIEnumerator(name: "LTO_section_function_body", value: 1, isUnsigned: true)
!595 = !DIEnumerator(name: "LTO_section_static_initializer", value: 2, isUnsigned: true)
!596 = !DIEnumerator(name: "LTO_section_cgraph", value: 3, isUnsigned: true)
!597 = !DIEnumerator(name: "LTO_section_jump_functions", value: 4, isUnsigned: true)
!598 = !DIEnumerator(name: "LTO_section_ipa_pure_const", value: 5, isUnsigned: true)
!599 = !DIEnumerator(name: "LTO_section_ipa_reference", value: 6, isUnsigned: true)
!600 = !DIEnumerator(name: "LTO_section_symtab", value: 7, isUnsigned: true)
!601 = !DIEnumerator(name: "LTO_section_wpa_fixup", value: 8, isUnsigned: true)
!602 = !DIEnumerator(name: "LTO_section_opts", value: 9, isUnsigned: true)
!603 = !DIEnumerator(name: "LTO_N_SECTION_TYPES", value: 10, isUnsigned: true)
!604 = !{!605, !606, !607, !608, !611, !612, !614, !1427, !1090, !609, !2014, !2018, !2019, !2303, !2024, !2034, !7, !2312}
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!607 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !610)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !616)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_decl_slot", file: !591, line: 484, size: 128, elements: !617)
!617 = !{!618, !2013}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !616, file: !591, line: 486, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !620, line: 56, baseType: !621)
!620 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !135, line: 3371, size: 1792, elements: !623)
!623 = !{!624, !657, !663, !676, !695, !706, !711, !720, !726, !739, !751, !789, !1248, !1276, !1293, !1294, !1299, !1308, !1314, !1319, !1323, !1327, !1664, !1711, !1717, !1723, !1730, !1743, !1757, !1774, !1786, !1808, !1823, !1995}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !622, file: !135, line: 3372, baseType: !625, size: 64)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !135, line: 360, size: 64, elements: !626)
!626 = !{!627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !625, file: !135, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !625, file: !135, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !625, file: !135, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !625, file: !135, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !625, file: !135, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !625, file: !135, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !625, file: !135, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !625, file: !135, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !625, file: !135, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !625, file: !135, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !625, file: !135, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !625, file: !135, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !625, file: !135, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !625, file: !135, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !625, file: !135, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !625, file: !135, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !625, file: !135, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !625, file: !135, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !625, file: !135, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !625, file: !135, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !625, file: !135, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !625, file: !135, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !625, file: !135, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !625, file: !135, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !625, file: !135, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !625, file: !135, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !625, file: !135, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !625, file: !135, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !625, file: !135, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !625, file: !135, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !622, file: !135, line: 3373, baseType: !658, size: 192)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !135, line: 402, size: 192, elements: !659)
!659 = !{!660, !661, !662}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !658, file: !135, line: 403, baseType: !625, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !658, file: !135, line: 404, baseType: !619, size: 64, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !658, file: !135, line: 405, baseType: !619, size: 64, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !622, file: !135, line: 3374, baseType: !664, size: 320)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !135, line: 1384, size: 320, elements: !665)
!665 = !{!666, !667}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !664, file: !135, line: 1385, baseType: !658, size: 192)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !664, file: !135, line: 1386, baseType: !668, size: 128, offset: 192)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !669, line: 58, baseType: !670)
!669 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !669, line: 54, size: 128, elements: !671)
!671 = !{!672, !674}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !670, file: !669, line: 56, baseType: !673, size: 64)
!673 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !670, file: !669, line: 57, baseType: !675, size: 64, offset: 64)
!675 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !622, file: !135, line: 3375, baseType: !677, size: 256)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !135, line: 1397, size: 256, elements: !678)
!678 = !{!679, !680}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !677, file: !135, line: 1398, baseType: !658, size: 192)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !677, file: !135, line: 1399, baseType: !681, size: 64, offset: 192)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !683, line: 52, size: 256, elements: !684)
!683 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!684 = !{!685, !686, !687, !688, !689, !690, !691}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !682, file: !683, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !682, file: !683, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !682, file: !683, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !682, file: !683, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !682, file: !683, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !682, file: !683, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !682, file: !683, line: 62, baseType: !692, size: 192, offset: 64)
!692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !673, size: 192, elements: !693)
!693 = !{!694}
!694 = !DISubrange(count: 3)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !622, file: !135, line: 3376, baseType: !696, size: 256)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !135, line: 1408, size: 256, elements: !697)
!697 = !{!698, !699}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !696, file: !135, line: 1409, baseType: !658, size: 192)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !696, file: !135, line: 1410, baseType: !700, size: 64, offset: 192)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !702, line: 27, size: 192, elements: !703)
!702 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!703 = !{!704, !705}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !701, file: !702, line: 29, baseType: !668, size: 128)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !701, file: !702, line: 30, baseType: !5, size: 32, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !622, file: !135, line: 3377, baseType: !707, size: 256)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !135, line: 1437, size: 256, elements: !708)
!708 = !{!709, !710}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !707, file: !135, line: 1438, baseType: !658, size: 192)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !707, file: !135, line: 1439, baseType: !619, size: 64, offset: 192)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !622, file: !135, line: 3378, baseType: !712, size: 256)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !135, line: 1418, size: 256, elements: !713)
!713 = !{!714, !715, !716}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !712, file: !135, line: 1419, baseType: !658, size: 192)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !712, file: !135, line: 1420, baseType: !607, size: 32, offset: 192)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !712, file: !135, line: 1421, baseType: !717, size: 8, offset: 224)
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 8, elements: !718)
!718 = !{!719}
!719 = !DISubrange(count: 1)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !622, file: !135, line: 3379, baseType: !721, size: 320)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !135, line: 1428, size: 320, elements: !722)
!722 = !{!723, !724, !725}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !721, file: !135, line: 1429, baseType: !658, size: 192)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !721, file: !135, line: 1430, baseType: !619, size: 64, offset: 192)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !721, file: !135, line: 1431, baseType: !619, size: 64, offset: 256)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !622, file: !135, line: 3380, baseType: !727, size: 320)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !135, line: 1460, size: 320, elements: !728)
!728 = !{!729, !730}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !727, file: !135, line: 1461, baseType: !658, size: 192)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !727, file: !135, line: 1462, baseType: !731, size: 128, offset: 192)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !732, line: 31, size: 128, elements: !733)
!732 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!733 = !{!734, !737, !738}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !731, file: !732, line: 32, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !606)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !731, file: !732, line: 33, baseType: !7, size: 32, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !731, file: !732, line: 34, baseType: !7, size: 32, offset: 96)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !622, file: !135, line: 3381, baseType: !740, size: 384)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !135, line: 2507, size: 384, elements: !741)
!741 = !{!742, !743, !748, !749, !750}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !740, file: !135, line: 2508, baseType: !658, size: 192)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !740, file: !135, line: 2509, baseType: !744, size: 32, offset: 192)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !745, line: 58, baseType: !746)
!745 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !747, line: 44, baseType: !7)
!747 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!748 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !740, file: !135, line: 2510, baseType: !7, size: 32, offset: 224)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !740, file: !135, line: 2511, baseType: !619, size: 64, offset: 256)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !740, file: !135, line: 2512, baseType: !619, size: 64, offset: 320)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !622, file: !135, line: 3382, baseType: !752, size: 896)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !135, line: 2652, size: 896, elements: !753)
!753 = !{!754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !752, file: !135, line: 2653, baseType: !740, size: 384)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !752, file: !135, line: 2654, baseType: !619, size: 64, offset: 384)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !752, file: !135, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !752, file: !135, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !752, file: !135, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !752, file: !135, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !752, file: !135, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !752, file: !135, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !752, file: !135, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !752, file: !135, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !752, file: !135, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !752, file: !135, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !752, file: !135, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !752, file: !135, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !752, file: !135, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !752, file: !135, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !752, file: !135, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !752, file: !135, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !752, file: !135, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !752, file: !135, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !752, file: !135, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !752, file: !135, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !752, file: !135, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !752, file: !135, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !752, file: !135, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !752, file: !135, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !752, file: !135, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !752, file: !135, line: 2703, baseType: !7, size: 32, offset: 512)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !752, file: !135, line: 2705, baseType: !619, size: 64, offset: 576)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !752, file: !135, line: 2706, baseType: !619, size: 64, offset: 640)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !752, file: !135, line: 2707, baseType: !619, size: 64, offset: 704)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !752, file: !135, line: 2708, baseType: !619, size: 64, offset: 768)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !752, file: !135, line: 2711, baseType: !787, size: 64, offset: 832)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !135, line: 2711, flags: DIFlagFwdDecl)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !622, file: !135, line: 3383, baseType: !790, size: 960)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !135, line: 2756, size: 960, elements: !791)
!791 = !{!792, !793}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !790, file: !135, line: 2757, baseType: !752, size: 896)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !790, file: !135, line: 2758, baseType: !794, size: 64, offset: 896)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !620, line: 50, baseType: !795)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !797, line: 240, size: 384, elements: !798)
!797 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!798 = !{!799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !796, file: !797, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !796, file: !797, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !796, file: !797, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !796, file: !797, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !796, file: !797, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !796, file: !797, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !796, file: !797, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !796, file: !797, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !796, file: !797, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !796, file: !797, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !796, file: !797, line: 321, baseType: !810, size: 320, offset: 64)
!810 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !797, line: 315, size: 320, elements: !811)
!811 = !{!812, !1215, !1217, !1246, !1247}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !810, file: !797, line: 316, baseType: !813, size: 64)
!813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !814, size: 64, elements: !718)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !797, line: 183, baseType: !815)
!815 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !797, line: 166, size: 64, elements: !816)
!816 = !{!817, !818, !819, !820, !821, !829, !830, !842, !845, !905, !906, !1192, !1205, !1212}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !815, file: !797, line: 168, baseType: !607, size: 32)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !815, file: !797, line: 169, baseType: !7, size: 32)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !815, file: !797, line: 170, baseType: !612, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !815, file: !797, line: 171, baseType: !794, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !815, file: !797, line: 172, baseType: !822, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !620, line: 53, baseType: !823)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !797, line: 359, size: 128, elements: !825)
!825 = !{!826, !827}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !824, file: !797, line: 360, baseType: !607, size: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !824, file: !797, line: 361, baseType: !828, size: 64, offset: 64)
!828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !794, size: 64, elements: !718)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !815, file: !797, line: 173, baseType: !5, size: 32)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !815, file: !797, line: 174, baseType: !831, size: 32)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !797, line: 133, baseType: !832)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !797, line: 115, size: 32, elements: !833)
!833 = !{!834, !835, !836, !837, !838, !839, !840, !841}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !832, file: !797, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !832, file: !797, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !832, file: !797, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !832, file: !797, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !832, file: !797, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !832, file: !797, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !832, file: !797, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !832, file: !797, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !815, file: !797, line: 175, baseType: !843, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !797, line: 175, flags: DIFlagFwdDecl)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !815, file: !797, line: 176, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !848, line: 75, size: 256, elements: !849)
!848 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!849 = !{!850, !864, !865, !866}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !847, file: !848, line: 76, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !848, line: 68, baseType: !853)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !848, line: 63, size: 320, elements: !854)
!854 = !{!855, !857, !858, !859}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !853, file: !848, line: 64, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !853, file: !848, line: 65, baseType: !856, size: 64, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !853, file: !848, line: 66, baseType: !7, size: 32, offset: 128)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !853, file: !848, line: 67, baseType: !860, size: 128, offset: 192)
!860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !861, size: 128, elements: !862)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !848, line: 29, baseType: !673)
!862 = !{!863}
!863 = !DISubrange(count: 2)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !847, file: !848, line: 77, baseType: !851, size: 64, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !847, file: !848, line: 78, baseType: !7, size: 32, offset: 128)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !847, file: !848, line: 79, baseType: !867, size: 64, offset: 192)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !848, line: 49, baseType: !869)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !848, line: 45, size: 832, elements: !870)
!870 = !{!871, !872, !873}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !869, file: !848, line: 46, baseType: !856, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !869, file: !848, line: 47, baseType: !846, size: 64, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !869, file: !848, line: 48, baseType: !874, size: 704, offset: 128)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !875, line: 164, size: 704, elements: !876)
!875 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!876 = !{!877, !878, !888, !889, !890, !891, !892, !893, !897, !901, !902, !903, !904}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !874, file: !875, line: 166, baseType: !675, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !874, file: !875, line: 167, baseType: !879, size: 64, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !875, line: 157, size: 192, elements: !881)
!881 = !{!882, !883, !884}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !880, file: !875, line: 159, baseType: !609, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !880, file: !875, line: 160, baseType: !879, size: 64, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !880, file: !875, line: 161, baseType: !885, size: 32, offset: 128)
!885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 32, elements: !886)
!886 = !{!887}
!887 = !DISubrange(count: 4)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !874, file: !875, line: 168, baseType: !609, size: 64, offset: 128)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !874, file: !875, line: 169, baseType: !609, size: 64, offset: 192)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !874, file: !875, line: 170, baseType: !609, size: 64, offset: 256)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !874, file: !875, line: 171, baseType: !675, size: 64, offset: 320)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !874, file: !875, line: 172, baseType: !607, size: 32, offset: 384)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !874, file: !875, line: 176, baseType: !894, size: 64, offset: 448)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DISubroutineType(types: !896)
!896 = !{!879, !611, !675}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !874, file: !875, line: 177, baseType: !898, size: 64, offset: 512)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DISubroutineType(types: !900)
!900 = !{null, !611, !879}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !874, file: !875, line: 178, baseType: !611, size: 64, offset: 576)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !874, file: !875, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !874, file: !875, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !874, file: !875, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !815, file: !797, line: 177, baseType: !619, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !815, file: !797, line: 178, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !337, line: 217, size: 832, elements: !909)
!909 = !{!910, !1157, !1158, !1159, !1162, !1166, !1167, !1168, !1186, !1187, !1188, !1189, !1190, !1191}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !908, file: !337, line: 219, baseType: !911, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !337, line: 151, baseType: !913)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !337, line: 151, size: 128, elements: !914)
!914 = !{!915}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !913, file: !337, line: 151, baseType: !916, size: 128)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !337, line: 150, baseType: !917)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !337, line: 150, size: 128, elements: !918)
!918 = !{!919, !920, !921}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !917, file: !337, line: 150, baseType: !7, size: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !917, file: !337, line: 150, baseType: !7, size: 32, offset: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !917, file: !337, line: 150, baseType: !922, size: 64, offset: 64)
!922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !923, size: 64, elements: !718)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !620, line: 108, baseType: !924)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !337, line: 122, size: 512, elements: !926)
!926 = !{!927, !928, !929, !1149, !1150, !1151, !1152, !1153, !1154, !1155}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !925, file: !337, line: 124, baseType: !907, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !925, file: !337, line: 125, baseType: !907, size: 64, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !925, file: !337, line: 131, baseType: !930, size: 64, offset: 128)
!930 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !337, line: 128, size: 64, elements: !931)
!931 = !{!932, !1148}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !930, file: !337, line: 129, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !620, line: 66, baseType: !934)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !936, line: 143, size: 192, elements: !937)
!936 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!937 = !{!938, !1146, !1147}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !935, file: !936, line: 145, baseType: !939, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !620, line: 69, baseType: !940)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !936, line: 136, size: 192, elements: !942)
!942 = !{!943, !1144, !1145}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !941, file: !936, line: 137, baseType: !944, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !620, line: 58, baseType: !945)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !936, line: 737, size: 768, elements: !947)
!947 = !{!948, !965, !999, !1005, !1010, !1015, !1022, !1028, !1034, !1039, !1053, !1058, !1064, !1069, !1079, !1084, !1102, !1109, !1116, !1122, !1127, !1133, !1139}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !946, file: !936, line: 738, baseType: !949, size: 256)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !936, line: 271, size: 256, elements: !950)
!950 = !{!951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !949, file: !936, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !949, file: !936, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !949, file: !936, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !949, file: !936, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !949, file: !936, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !949, file: !936, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !949, file: !936, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !949, file: !936, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !949, file: !936, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !949, file: !936, line: 312, baseType: !7, size: 32, offset: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !949, file: !936, line: 316, baseType: !744, size: 32, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !949, file: !936, line: 319, baseType: !7, size: 32, offset: 96)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !949, file: !936, line: 323, baseType: !907, size: 64, offset: 128)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !949, file: !936, line: 327, baseType: !619, size: 64, offset: 192)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !946, file: !936, line: 739, baseType: !966, size: 448)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !936, line: 350, size: 448, elements: !967)
!967 = !{!968, !997}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !966, file: !936, line: 353, baseType: !969, size: 384)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !936, line: 333, size: 384, elements: !970)
!970 = !{!971, !972, !980}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !969, file: !936, line: 336, baseType: !949, size: 256)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !969, file: !936, line: 343, baseType: !973, size: 64, offset: 256)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !975, line: 37, size: 128, elements: !976)
!975 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!976 = !{!977, !978}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !974, file: !975, line: 39, baseType: !973, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !974, file: !975, line: 40, baseType: !979, size: 64, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !969, file: !936, line: 344, baseType: !981, size: 64, offset: 320)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !975, line: 45, size: 320, elements: !983)
!983 = !{!984, !985}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !982, file: !975, line: 47, baseType: !981, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !982, file: !975, line: 48, baseType: !986, size: 256, offset: 64)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !135, line: 1883, size: 256, elements: !987)
!987 = !{!988, !990, !991, !996}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !986, file: !135, line: 1884, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !986, file: !135, line: 1885, baseType: !989, size: 64, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !986, file: !135, line: 1891, baseType: !992, size: 64, offset: 128)
!992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !986, file: !135, line: 1891, size: 64, elements: !993)
!993 = !{!994, !995}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !992, file: !135, line: 1891, baseType: !944, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !992, file: !135, line: 1891, baseType: !619, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !986, file: !135, line: 1892, baseType: !979, size: 64, offset: 192)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !966, file: !936, line: 359, baseType: !998, size: 64, offset: 384)
!998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !619, size: 64, elements: !718)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !946, file: !936, line: 740, baseType: !1000, size: 512)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !936, line: 365, size: 512, elements: !1001)
!1001 = !{!1002, !1003, !1004}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1000, file: !936, line: 368, baseType: !969, size: 384)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !1000, file: !936, line: 373, baseType: !619, size: 64, offset: 384)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !1000, file: !936, line: 374, baseType: !619, size: 64, offset: 448)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !946, file: !936, line: 741, baseType: !1006, size: 576)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !936, line: 380, size: 576, elements: !1007)
!1007 = !{!1008, !1009}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1006, file: !936, line: 383, baseType: !1000, size: 512)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1006, file: !936, line: 389, baseType: !998, size: 64, offset: 512)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !946, file: !936, line: 742, baseType: !1011, size: 320)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !936, line: 395, size: 320, elements: !1012)
!1012 = !{!1013, !1014}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1011, file: !936, line: 397, baseType: !949, size: 256)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1011, file: !936, line: 400, baseType: !933, size: 64, offset: 256)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !946, file: !936, line: 743, baseType: !1016, size: 448)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !936, line: 406, size: 448, elements: !1017)
!1017 = !{!1018, !1019, !1020, !1021}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1016, file: !936, line: 408, baseType: !949, size: 256)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1016, file: !936, line: 412, baseType: !619, size: 64, offset: 256)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1016, file: !936, line: 420, baseType: !619, size: 64, offset: 320)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1016, file: !936, line: 423, baseType: !933, size: 64, offset: 384)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !946, file: !936, line: 744, baseType: !1023, size: 384)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !936, line: 429, size: 384, elements: !1024)
!1024 = !{!1025, !1026, !1027}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1023, file: !936, line: 431, baseType: !949, size: 256)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1023, file: !936, line: 434, baseType: !619, size: 64, offset: 256)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1023, file: !936, line: 437, baseType: !933, size: 64, offset: 320)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !946, file: !936, line: 745, baseType: !1029, size: 384)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !936, line: 443, size: 384, elements: !1030)
!1030 = !{!1031, !1032, !1033}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1029, file: !936, line: 445, baseType: !949, size: 256)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1029, file: !936, line: 449, baseType: !619, size: 64, offset: 256)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1029, file: !936, line: 453, baseType: !933, size: 64, offset: 320)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !946, file: !936, line: 746, baseType: !1035, size: 320)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !936, line: 459, size: 320, elements: !1036)
!1036 = !{!1037, !1038}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1035, file: !936, line: 461, baseType: !949, size: 256)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1035, file: !936, line: 464, baseType: !619, size: 64, offset: 256)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !946, file: !936, line: 747, baseType: !1040, size: 768)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !936, line: 469, size: 768, elements: !1041)
!1041 = !{!1042, !1043, !1044, !1045, !1046}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1040, file: !936, line: 471, baseType: !949, size: 256)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1040, file: !936, line: 474, baseType: !7, size: 32, offset: 256)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1040, file: !936, line: 475, baseType: !7, size: 32, offset: 288)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1040, file: !936, line: 478, baseType: !619, size: 64, offset: 320)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1040, file: !936, line: 481, baseType: !1047, size: 384, offset: 384)
!1047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1048, size: 384, elements: !718)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !135, line: 1917, size: 384, elements: !1049)
!1049 = !{!1050, !1051, !1052}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1048, file: !135, line: 1920, baseType: !986, size: 256)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1048, file: !135, line: 1921, baseType: !619, size: 64, offset: 256)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1048, file: !135, line: 1922, baseType: !744, size: 32, offset: 320)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !946, file: !936, line: 748, baseType: !1054, size: 320)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !936, line: 487, size: 320, elements: !1055)
!1055 = !{!1056, !1057}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1054, file: !936, line: 490, baseType: !949, size: 256)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1054, file: !936, line: 494, baseType: !607, size: 32, offset: 256)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !946, file: !936, line: 749, baseType: !1059, size: 384)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !936, line: 500, size: 384, elements: !1060)
!1060 = !{!1061, !1062, !1063}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1059, file: !936, line: 502, baseType: !949, size: 256)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1059, file: !936, line: 506, baseType: !933, size: 64, offset: 256)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1059, file: !936, line: 510, baseType: !933, size: 64, offset: 320)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !946, file: !936, line: 750, baseType: !1065, size: 320)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !936, line: 529, size: 320, elements: !1066)
!1066 = !{!1067, !1068}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1065, file: !936, line: 531, baseType: !949, size: 256)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1065, file: !936, line: 540, baseType: !933, size: 64, offset: 256)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !946, file: !936, line: 751, baseType: !1070, size: 704)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !936, line: 546, size: 704, elements: !1071)
!1071 = !{!1072, !1073, !1074, !1075, !1076, !1077, !1078}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1070, file: !936, line: 549, baseType: !1000, size: 512)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1070, file: !936, line: 553, baseType: !612, size: 64, offset: 512)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1070, file: !936, line: 557, baseType: !606, size: 8, offset: 576)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1070, file: !936, line: 558, baseType: !606, size: 8, offset: 584)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1070, file: !936, line: 559, baseType: !606, size: 8, offset: 592)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1070, file: !936, line: 560, baseType: !606, size: 8, offset: 600)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1070, file: !936, line: 566, baseType: !998, size: 64, offset: 640)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !946, file: !936, line: 752, baseType: !1080, size: 384)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !936, line: 571, size: 384, elements: !1081)
!1081 = !{!1082, !1083}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1080, file: !936, line: 573, baseType: !1011, size: 320)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1080, file: !936, line: 577, baseType: !619, size: 64, offset: 320)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !946, file: !936, line: 753, baseType: !1085, size: 576)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !936, line: 600, size: 576, elements: !1086)
!1086 = !{!1087, !1088, !1089, !1092, !1101}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1085, file: !936, line: 602, baseType: !1011, size: 320)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1085, file: !936, line: 605, baseType: !619, size: 64, offset: 320)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1085, file: !936, line: 609, baseType: !1090, size: 64, offset: 384)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1091, line: 46, baseType: !673)
!1091 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1085, file: !936, line: 612, baseType: !1093, size: 64, offset: 448)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !936, line: 581, size: 320, elements: !1095)
!1095 = !{!1096, !1097, !1098, !1099, !1100}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1094, file: !936, line: 583, baseType: !134, size: 32)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1094, file: !936, line: 586, baseType: !619, size: 64, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1094, file: !936, line: 589, baseType: !619, size: 64, offset: 128)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1094, file: !936, line: 592, baseType: !619, size: 64, offset: 192)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1094, file: !936, line: 595, baseType: !619, size: 64, offset: 256)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1085, file: !936, line: 616, baseType: !933, size: 64, offset: 512)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !946, file: !936, line: 754, baseType: !1103, size: 512)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !936, line: 622, size: 512, elements: !1104)
!1104 = !{!1105, !1106, !1107, !1108}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1103, file: !936, line: 624, baseType: !1011, size: 320)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1103, file: !936, line: 628, baseType: !619, size: 64, offset: 320)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1103, file: !936, line: 632, baseType: !619, size: 64, offset: 384)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1103, file: !936, line: 636, baseType: !619, size: 64, offset: 448)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !946, file: !936, line: 755, baseType: !1110, size: 704)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !936, line: 642, size: 704, elements: !1111)
!1111 = !{!1112, !1113, !1114, !1115}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1110, file: !936, line: 644, baseType: !1103, size: 512)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1110, file: !936, line: 648, baseType: !619, size: 64, offset: 512)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1110, file: !936, line: 652, baseType: !619, size: 64, offset: 576)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1110, file: !936, line: 653, baseType: !619, size: 64, offset: 640)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !946, file: !936, line: 756, baseType: !1117, size: 448)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !936, line: 663, size: 448, elements: !1118)
!1118 = !{!1119, !1120, !1121}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1117, file: !936, line: 665, baseType: !1011, size: 320)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1117, file: !936, line: 668, baseType: !619, size: 64, offset: 320)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1117, file: !936, line: 673, baseType: !619, size: 64, offset: 384)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !946, file: !936, line: 757, baseType: !1123, size: 384)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !936, line: 694, size: 384, elements: !1124)
!1124 = !{!1125, !1126}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1123, file: !936, line: 696, baseType: !1011, size: 320)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1123, file: !936, line: 699, baseType: !619, size: 64, offset: 320)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !946, file: !936, line: 758, baseType: !1128, size: 384)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !936, line: 681, size: 384, elements: !1129)
!1129 = !{!1130, !1131, !1132}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1128, file: !936, line: 683, baseType: !949, size: 256)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1128, file: !936, line: 686, baseType: !619, size: 64, offset: 256)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1128, file: !936, line: 689, baseType: !619, size: 64, offset: 320)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !946, file: !936, line: 759, baseType: !1134, size: 384)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !936, line: 707, size: 384, elements: !1135)
!1135 = !{!1136, !1137, !1138}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1134, file: !936, line: 709, baseType: !949, size: 256)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1134, file: !936, line: 712, baseType: !619, size: 64, offset: 256)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1134, file: !936, line: 712, baseType: !619, size: 64, offset: 320)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !946, file: !936, line: 760, baseType: !1140, size: 320)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !936, line: 718, size: 320, elements: !1141)
!1141 = !{!1142, !1143}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1140, file: !936, line: 720, baseType: !949, size: 256)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1140, file: !936, line: 723, baseType: !619, size: 64, offset: 256)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !941, file: !936, line: 138, baseType: !940, size: 64, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !941, file: !936, line: 139, baseType: !940, size: 64, offset: 128)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !935, file: !936, line: 146, baseType: !939, size: 64, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !935, file: !936, line: 152, baseType: !933, size: 64, offset: 128)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !930, file: !337, line: 130, baseType: !794, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !925, file: !337, line: 134, baseType: !611, size: 64, offset: 192)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !925, file: !337, line: 137, baseType: !619, size: 64, offset: 256)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !925, file: !337, line: 138, baseType: !744, size: 32, offset: 320)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !925, file: !337, line: 142, baseType: !7, size: 32, offset: 352)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !925, file: !337, line: 144, baseType: !607, size: 32, offset: 384)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !925, file: !337, line: 145, baseType: !607, size: 32, offset: 416)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !925, file: !337, line: 146, baseType: !1156, size: 64, offset: 448)
!1156 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !337, line: 119, baseType: !675)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !908, file: !337, line: 220, baseType: !911, size: 64, offset: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !908, file: !337, line: 223, baseType: !611, size: 64, offset: 128)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !908, file: !337, line: 226, baseType: !1160, size: 64, offset: 192)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !337, line: 185, flags: DIFlagFwdDecl)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !908, file: !337, line: 229, baseType: !1163, size: 128, offset: 256)
!1163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1164, size: 128, elements: !862)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !337, line: 229, flags: DIFlagFwdDecl)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !908, file: !337, line: 232, baseType: !907, size: 64, offset: 384)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !908, file: !337, line: 233, baseType: !907, size: 64, offset: 448)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !908, file: !337, line: 238, baseType: !1169, size: 64, offset: 512)
!1169 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !337, line: 235, size: 64, elements: !1170)
!1170 = !{!1171, !1177}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1169, file: !337, line: 236, baseType: !1172, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !337, line: 273, size: 128, elements: !1174)
!1174 = !{!1175, !1176}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1173, file: !337, line: 275, baseType: !933, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1173, file: !337, line: 278, baseType: !933, size: 64, offset: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1169, file: !337, line: 237, baseType: !1178, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !337, line: 259, size: 320, elements: !1180)
!1180 = !{!1181, !1182, !1183, !1184, !1185}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1179, file: !337, line: 261, baseType: !794, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1179, file: !337, line: 262, baseType: !794, size: 64, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1179, file: !337, line: 266, baseType: !794, size: 64, offset: 128)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1179, file: !337, line: 267, baseType: !794, size: 64, offset: 192)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1179, file: !337, line: 270, baseType: !607, size: 32, offset: 256)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !908, file: !337, line: 241, baseType: !1156, size: 64, offset: 576)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !908, file: !337, line: 244, baseType: !607, size: 32, offset: 640)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !908, file: !337, line: 247, baseType: !607, size: 32, offset: 672)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !908, file: !337, line: 250, baseType: !607, size: 32, offset: 704)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !908, file: !337, line: 253, baseType: !607, size: 32, offset: 736)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !908, file: !337, line: 256, baseType: !607, size: 32, offset: 768)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !815, file: !797, line: 179, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !797, line: 150, baseType: !1195)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !797, line: 142, size: 320, elements: !1196)
!1196 = !{!1197, !1198, !1199, !1200, !1203, !1204}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1195, file: !797, line: 144, baseType: !619, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1195, file: !797, line: 145, baseType: !794, size: 64, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1195, file: !797, line: 146, baseType: !794, size: 64, offset: 128)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1195, file: !797, line: 147, baseType: !1201, size: 32, offset: 192)
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1202, line: 31, baseType: !607)
!1202 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1195, file: !797, line: 148, baseType: !7, size: 32, offset: 224)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1195, file: !797, line: 149, baseType: !606, size: 8, offset: 256)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !815, file: !797, line: 180, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !797, line: 162, baseType: !1208)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !797, line: 159, size: 128, elements: !1209)
!1209 = !{!1210, !1211}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1208, file: !797, line: 160, baseType: !619, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1208, file: !797, line: 161, baseType: !675, size: 64, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !815, file: !797, line: 181, baseType: !1213, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !797, line: 181, flags: DIFlagFwdDecl)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !810, file: !797, line: 317, baseType: !1216, size: 64)
!1216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !675, size: 64, elements: !718)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !810, file: !797, line: 318, baseType: !1218, size: 320)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !797, line: 188, size: 320, elements: !1219)
!1219 = !{!1220, !1222, !1245}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1218, file: !797, line: 190, baseType: !1221, size: 192)
!1221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !814, size: 192, elements: !693)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1218, file: !797, line: 193, baseType: !1223, size: 64, offset: 192)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !797, line: 206, size: 320, elements: !1225)
!1225 = !{!1226, !1230, !1231, !1232, !1244}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1224, file: !797, line: 208, baseType: !1227, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !620, line: 62, baseType: !1229)
!1229 = !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !620, line: 61, flags: DIFlagFwdDecl)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1224, file: !797, line: 211, baseType: !7, size: 32, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1224, file: !797, line: 214, baseType: !675, size: 64, offset: 128)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1224, file: !797, line: 224, baseType: !1233, size: 64, offset: 192)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !797, line: 202, baseType: !1235)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !797, line: 202, size: 128, elements: !1236)
!1236 = !{!1237}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1235, file: !797, line: 202, baseType: !1238, size: 128)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !797, line: 200, baseType: !1239)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !797, line: 200, size: 128, elements: !1240)
!1240 = !{!1241, !1242, !1243}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1239, file: !797, line: 200, baseType: !7, size: 32)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1239, file: !797, line: 200, baseType: !7, size: 32, offset: 32)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1239, file: !797, line: 200, baseType: !828, size: 64, offset: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1224, file: !797, line: 234, baseType: !1233, size: 64, offset: 256)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1218, file: !797, line: 197, baseType: !675, size: 64, offset: 256)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !810, file: !797, line: 319, baseType: !682, size: 256)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !810, file: !797, line: 320, baseType: !701, size: 192)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !622, file: !135, line: 3384, baseType: !1249, size: 1472)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !135, line: 3114, size: 1472, elements: !1250)
!1250 = !{!1251, !1272, !1273, !1274, !1275}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1249, file: !135, line: 3115, baseType: !1252, size: 1216)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !135, line: 2984, size: 1216, elements: !1253)
!1253 = !{!1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1252, file: !135, line: 2985, baseType: !790, size: 960)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1252, file: !135, line: 2986, baseType: !619, size: 64, offset: 960)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1252, file: !135, line: 2987, baseType: !619, size: 64, offset: 1024)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1252, file: !135, line: 2988, baseType: !619, size: 64, offset: 1088)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1252, file: !135, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1252, file: !135, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1252, file: !135, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1252, file: !135, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1252, file: !135, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1252, file: !135, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1252, file: !135, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1252, file: !135, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1252, file: !135, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1252, file: !135, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1252, file: !135, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1252, file: !135, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1252, file: !135, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1252, file: !135, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1249, file: !135, line: 3117, baseType: !619, size: 64, offset: 1216)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1249, file: !135, line: 3119, baseType: !619, size: 64, offset: 1280)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1249, file: !135, line: 3121, baseType: !619, size: 64, offset: 1344)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1249, file: !135, line: 3123, baseType: !619, size: 64, offset: 1408)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !622, file: !135, line: 3385, baseType: !1277, size: 1088)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !135, line: 2874, size: 1088, elements: !1278)
!1278 = !{!1279, !1280, !1281}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1277, file: !135, line: 2875, baseType: !790, size: 960)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1277, file: !135, line: 2876, baseType: !794, size: 64, offset: 960)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1277, file: !135, line: 2877, baseType: !1282, size: 64, offset: 1024)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !1284, line: 172, size: 128, elements: !1285)
!1284 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1285 = !{!1286, !1287, !1288, !1289, !1290, !1291, !1292}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !1283, file: !1284, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1283, file: !1284, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !1283, file: !1284, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !1283, file: !1284, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !1283, file: !1284, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !1283, file: !1284, line: 195, baseType: !7, size: 32, offset: 32)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !1283, file: !1284, line: 199, baseType: !619, size: 64, offset: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !622, file: !135, line: 3386, baseType: !1252, size: 1216)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !622, file: !135, line: 3387, baseType: !1295, size: 1280)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !135, line: 3093, size: 1280, elements: !1296)
!1296 = !{!1297, !1298}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1295, file: !135, line: 3094, baseType: !1252, size: 1216)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1295, file: !135, line: 3095, baseType: !1282, size: 64, offset: 1216)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !622, file: !135, line: 3388, baseType: !1300, size: 1216)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !135, line: 2824, size: 1216, elements: !1301)
!1301 = !{!1302, !1303, !1304, !1305, !1306, !1307}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1300, file: !135, line: 2825, baseType: !752, size: 896)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1300, file: !135, line: 2827, baseType: !619, size: 64, offset: 896)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1300, file: !135, line: 2828, baseType: !619, size: 64, offset: 960)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1300, file: !135, line: 2829, baseType: !619, size: 64, offset: 1024)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1300, file: !135, line: 2830, baseType: !619, size: 64, offset: 1088)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1300, file: !135, line: 2831, baseType: !619, size: 64, offset: 1152)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !622, file: !135, line: 3389, baseType: !1309, size: 1024)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !135, line: 2850, size: 1024, elements: !1310)
!1310 = !{!1311, !1312, !1313}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1309, file: !135, line: 2851, baseType: !790, size: 960)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1309, file: !135, line: 2852, baseType: !607, size: 32, offset: 960)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1309, file: !135, line: 2853, baseType: !607, size: 32, offset: 992)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !622, file: !135, line: 3390, baseType: !1315, size: 1024)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !135, line: 2857, size: 1024, elements: !1316)
!1316 = !{!1317, !1318}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1315, file: !135, line: 2858, baseType: !790, size: 960)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1315, file: !135, line: 2859, baseType: !1282, size: 64, offset: 960)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !622, file: !135, line: 3391, baseType: !1320, size: 960)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !135, line: 2862, size: 960, elements: !1321)
!1321 = !{!1322}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1320, file: !135, line: 2863, baseType: !790, size: 960)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !622, file: !135, line: 3392, baseType: !1324, size: 1472)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !135, line: 3304, size: 1472, elements: !1325)
!1325 = !{!1326}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1324, file: !135, line: 3305, baseType: !1249, size: 1472)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !622, file: !135, line: 3393, baseType: !1328, size: 1792)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !135, line: 3248, size: 1792, elements: !1329)
!1329 = !{!1330, !1331, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1328, file: !135, line: 3249, baseType: !1249, size: 1472)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1328, file: !135, line: 3251, baseType: !1332, size: 64, offset: 1472)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1334, line: 463, size: 1152, elements: !1335)
!1334 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1335 = !{!1336, !1497, !1528, !1529, !1584, !1587, !1588, !1589, !1590, !1591, !1592, !1616, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1333, file: !1334, line: 464, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !330, line: 194, size: 384, elements: !1339)
!1339 = !{!1340, !1389, !1402, !1416, !1466, !1478}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "region_tree", scope: !1338, file: !330, line: 197, baseType: !1341, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_region", file: !330, line: 182, baseType: !1342)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_d", file: !330, line: 116, size: 704, elements: !1344)
!1344 = !{!1345, !1346, !1347, !1348, !1349, !1350, !1377, !1386, !1387, !1388}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "outer", scope: !1343, file: !330, line: 119, baseType: !1342, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1343, file: !330, line: 122, baseType: !1342, size: 64, offset: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "next_peer", scope: !1343, file: !330, line: 123, baseType: !1342, size: 64, offset: 128)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1343, file: !330, line: 126, baseType: !607, size: 32, offset: 192)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1343, file: !330, line: 129, baseType: !329, size: 32, offset: 224)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1343, file: !330, line: 165, baseType: !1351, size: 192, offset: 256)
!1351 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_region_u", file: !330, line: 132, size: 192, elements: !1352)
!1352 = !{!1353, !1366, !1372}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "eh_try", scope: !1351, file: !330, line: 137, baseType: !1354, size: 128)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_try", file: !330, line: 133, size: 128, elements: !1355)
!1355 = !{!1356, !1365}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "first_catch", scope: !1354, file: !330, line: 135, baseType: !1357, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_catch_d", file: !330, line: 93, size: 320, elements: !1359)
!1359 = !{!1360, !1361, !1362, !1363, !1364}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "next_catch", scope: !1358, file: !330, line: 96, baseType: !1357, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "prev_catch", scope: !1358, file: !330, line: 97, baseType: !1357, size: 64, offset: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1358, file: !330, line: 101, baseType: !619, size: 64, offset: 128)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "filter_list", scope: !1358, file: !330, line: 106, baseType: !619, size: 64, offset: 192)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1358, file: !330, line: 111, baseType: !619, size: 64, offset: 256)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "last_catch", scope: !1354, file: !330, line: 136, baseType: !1357, size: 64, offset: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !1351, file: !330, line: 151, baseType: !1367, size: 192)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_allowed", file: !330, line: 139, size: 192, elements: !1368)
!1368 = !{!1369, !1370, !1371}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1367, file: !330, line: 141, baseType: !619, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1367, file: !330, line: 145, baseType: !619, size: 64, offset: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1367, file: !330, line: 150, baseType: !607, size: 32, offset: 128)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "must_not_throw", scope: !1351, file: !330, line: 164, baseType: !1373, size: 128)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_must_not_throw", file: !330, line: 153, size: 128, elements: !1374)
!1374 = !{!1375, !1376}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "failure_decl", scope: !1373, file: !330, line: 161, baseType: !619, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "failure_loc", scope: !1373, file: !330, line: 163, baseType: !744, size: 32, offset: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pads", scope: !1343, file: !330, line: 168, baseType: !1378, size: 64, offset: 448)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_landing_pad_d", file: !330, line: 67, size: 320, elements: !1380)
!1380 = !{!1381, !1382, !1383, !1384, !1385}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "next_lp", scope: !1379, file: !330, line: 70, baseType: !1378, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1379, file: !330, line: 73, baseType: !1342, size: 64, offset: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "post_landing_pad", scope: !1379, file: !330, line: 78, baseType: !619, size: 64, offset: 128)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pad", scope: !1379, file: !330, line: 85, baseType: !794, size: 64, offset: 192)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1379, file: !330, line: 88, baseType: !607, size: 32, offset: 256)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "exc_ptr_reg", scope: !1343, file: !330, line: 173, baseType: !794, size: 64, offset: 512)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "filter_reg", scope: !1343, file: !330, line: 173, baseType: !794, size: 64, offset: 576)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "use_cxa_end_cleanup", scope: !1343, file: !330, line: 177, baseType: !606, size: 8, offset: 640)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "region_array", scope: !1338, file: !330, line: 200, baseType: !1390, size: 64, offset: 64)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_gc", file: !330, line: 185, baseType: !1392)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_gc", file: !330, line: 185, size: 128, elements: !1393)
!1393 = !{!1394}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1392, file: !330, line: 185, baseType: !1395, size: 128)
!1395 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_base", file: !330, line: 184, baseType: !1396)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_base", file: !330, line: 184, size: 128, elements: !1397)
!1397 = !{!1398, !1399, !1400}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1396, file: !330, line: 184, baseType: !7, size: 32)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1396, file: !330, line: 184, baseType: !7, size: 32, offset: 32)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1396, file: !330, line: 184, baseType: !1401, size: 64, offset: 64)
!1401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1341, size: 64, elements: !718)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "lp_array", scope: !1338, file: !330, line: 203, baseType: !1403, size: 64, offset: 128)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_gc", file: !330, line: 189, baseType: !1405)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_gc", file: !330, line: 189, size: 128, elements: !1406)
!1406 = !{!1407}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1405, file: !330, line: 189, baseType: !1408, size: 128)
!1408 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_base", file: !330, line: 188, baseType: !1409)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_base", file: !330, line: 188, size: 128, elements: !1410)
!1410 = !{!1411, !1412, !1413}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1409, file: !330, line: 188, baseType: !7, size: 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1409, file: !330, line: 188, baseType: !7, size: 32, offset: 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1409, file: !330, line: 188, baseType: !1414, size: 64, offset: 64)
!1414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1415, size: 64, elements: !718)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_landing_pad", file: !330, line: 180, baseType: !1378)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "throw_stmt_table", scope: !1338, file: !330, line: 207, baseType: !1417, size: 64, offset: 192)
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1418, line: 144, baseType: !1419)
!1418 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1418, line: 100, size: 896, elements: !1421)
!1421 = !{!1422, !1430, !1435, !1440, !1442, !1443, !1444, !1445, !1446, !1447, !1452, !1454, !1455, !1460, !1465}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1420, file: !1418, line: 102, baseType: !1423, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1418, line: 52, baseType: !1424)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!1427, !1428}
!1427 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1418, line: 47, baseType: !7)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1420, file: !1418, line: 105, baseType: !1431, size: 64, offset: 64)
!1431 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1418, line: 59, baseType: !1432)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!607, !1428, !1428}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1420, file: !1418, line: 108, baseType: !1436, size: 64, offset: 128)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1418, line: 63, baseType: !1437)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{null, !611}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1420, file: !1418, line: 111, baseType: !1441, size: 64, offset: 192)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1420, file: !1418, line: 114, baseType: !1090, size: 64, offset: 256)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1420, file: !1418, line: 117, baseType: !1090, size: 64, offset: 320)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1420, file: !1418, line: 120, baseType: !1090, size: 64, offset: 384)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1420, file: !1418, line: 124, baseType: !7, size: 32, offset: 448)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1420, file: !1418, line: 128, baseType: !7, size: 32, offset: 480)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1420, file: !1418, line: 131, baseType: !1448, size: 64, offset: 512)
!1448 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1418, line: 75, baseType: !1449)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!611, !1090, !1090}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1420, file: !1418, line: 132, baseType: !1453, size: 64, offset: 576)
!1453 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1418, line: 78, baseType: !1437)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1420, file: !1418, line: 135, baseType: !611, size: 64, offset: 640)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1420, file: !1418, line: 136, baseType: !1456, size: 64, offset: 704)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1418, line: 82, baseType: !1457)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!611, !611, !1090, !1090}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1420, file: !1418, line: 137, baseType: !1461, size: 64, offset: 768)
!1461 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1418, line: 83, baseType: !1462)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{null, !611, !611}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1420, file: !1418, line: 141, baseType: !7, size: 32, offset: 832)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "ttype_data", scope: !1338, file: !330, line: 211, baseType: !1467, size: 64, offset: 256)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !135, line: 183, baseType: !1469)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !135, line: 183, size: 128, elements: !1470)
!1470 = !{!1471}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1469, file: !135, line: 183, baseType: !1472, size: 128)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !135, line: 182, baseType: !1473)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !135, line: 182, size: 128, elements: !1474)
!1474 = !{!1475, !1476, !1477}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1473, file: !135, line: 182, baseType: !7, size: 32)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1473, file: !135, line: 182, baseType: !7, size: 32, offset: 32)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1473, file: !135, line: 182, baseType: !998, size: 64, offset: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "ehspec_data", scope: !1338, file: !330, line: 220, baseType: !1479, size: 64, offset: 320)
!1479 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_status_u", file: !330, line: 217, size: 64, elements: !1480)
!1480 = !{!1481, !1482}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "arm_eabi", scope: !1479, file: !330, line: 218, baseType: !1467, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !1479, file: !330, line: 219, baseType: !1483, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_gc", file: !1485, line: 29, baseType: !1486)
!1485 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_gc", file: !1485, line: 29, size: 96, elements: !1487)
!1487 = !{!1488}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1486, file: !1485, line: 29, baseType: !1489, size: 96)
!1489 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_base", file: !1485, line: 27, baseType: !1490)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_base", file: !1485, line: 27, size: 96, elements: !1491)
!1491 = !{!1492, !1493, !1494}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1490, file: !1485, line: 27, baseType: !7, size: 32)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1490, file: !1485, line: 27, baseType: !7, size: 32, offset: 32)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1490, file: !1485, line: 27, baseType: !1495, size: 8, offset: 64)
!1495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1496, size: 8, elements: !718)
!1496 = !DIDerivedType(tag: DW_TAG_typedef, name: "uchar", file: !1485, line: 26, baseType: !606)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1333, file: !1334, line: 467, baseType: !1498, size: 64, offset: 64)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !337, line: 374, size: 640, elements: !1500)
!1500 = !{!1501, !1503, !1504, !1517, !1518, !1519, !1520, !1521, !1522, !1524, !1526, !1527}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1499, file: !337, line: 377, baseType: !1502, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !620, line: 111, baseType: !907)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1499, file: !337, line: 378, baseType: !1502, size: 64, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1499, file: !337, line: 381, baseType: !1505, size: 64, offset: 128)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !337, line: 282, baseType: !1507)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !337, line: 282, size: 128, elements: !1508)
!1508 = !{!1509}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1507, file: !337, line: 282, baseType: !1510, size: 128)
!1510 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !337, line: 281, baseType: !1511)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !337, line: 281, size: 128, elements: !1512)
!1512 = !{!1513, !1514, !1515}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1511, file: !337, line: 281, baseType: !7, size: 32)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1511, file: !337, line: 281, baseType: !7, size: 32, offset: 32)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1511, file: !337, line: 281, baseType: !1516, size: 64, offset: 64)
!1516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1502, size: 64, elements: !718)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1499, file: !337, line: 384, baseType: !607, size: 32, offset: 192)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1499, file: !337, line: 387, baseType: !607, size: 32, offset: 224)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1499, file: !337, line: 390, baseType: !607, size: 32, offset: 256)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1499, file: !337, line: 394, baseType: !1505, size: 64, offset: 320)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1499, file: !337, line: 396, baseType: !336, size: 32, offset: 384)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1499, file: !337, line: 399, baseType: !1523, size: 64, offset: 416)
!1523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 64, elements: !862)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1499, file: !337, line: 402, baseType: !1525, size: 64, offset: 480)
!1525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !862)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1499, file: !337, line: 406, baseType: !607, size: 32, offset: 544)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1499, file: !337, line: 409, baseType: !607, size: 32, offset: 576)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1333, file: !1334, line: 470, baseType: !934, size: 64, offset: 128)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1333, file: !1334, line: 473, baseType: !1530, size: 64, offset: 192)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1284, line: 39, size: 1152, elements: !1532)
!1532 = !{!1533, !1534, !1547, !1548, !1549, !1561, !1562, !1566, !1567, !1568, !1569, !1570}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1531, file: !1284, line: 41, baseType: !1417, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1531, file: !1284, line: 48, baseType: !1535, size: 64, offset: 64)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !936, line: 35, baseType: !1537)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !936, line: 35, size: 128, elements: !1538)
!1538 = !{!1539}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1537, file: !936, line: 35, baseType: !1540, size: 128)
!1540 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !936, line: 33, baseType: !1541)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !936, line: 33, size: 128, elements: !1542)
!1542 = !{!1543, !1544, !1545}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1541, file: !936, line: 33, baseType: !7, size: 32)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1541, file: !936, line: 33, baseType: !7, size: 32, offset: 32)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1541, file: !936, line: 33, baseType: !1546, size: 64, offset: 64)
!1546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !944, size: 64, elements: !718)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1531, file: !1284, line: 51, baseType: !1467, size: 64, offset: 128)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1531, file: !1284, line: 54, baseType: !619, size: 64, offset: 192)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1531, file: !1284, line: 57, baseType: !1550, size: 128, offset: 256)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1551, line: 31, size: 128, elements: !1552)
!1551 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1552 = !{!1553, !1554, !1555, !1556, !1557, !1558, !1559}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1550, file: !1551, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1550, file: !1551, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1550, file: !1551, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1550, file: !1551, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1550, file: !1551, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1550, file: !1551, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1550, file: !1551, line: 56, baseType: !1560, size: 64, offset: 64)
!1560 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !620, line: 47, baseType: !846)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1531, file: !1284, line: 60, baseType: !1550, size: 128, offset: 384)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1531, file: !1284, line: 64, baseType: !1563, size: 64, offset: 512)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1565, line: 33, flags: DIFlagFwdDecl)
!1565 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1531, file: !1284, line: 67, baseType: !619, size: 64, offset: 576)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1531, file: !1284, line: 73, baseType: !1417, size: 64, offset: 640)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1531, file: !1284, line: 77, baseType: !1560, size: 64, offset: 704)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1531, file: !1284, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1531, file: !1284, line: 82, baseType: !1571, size: 320, offset: 832)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !975, line: 62, size: 320, elements: !1572)
!1572 = !{!1573, !1579, !1580, !1581, !1582, !1583}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1571, file: !975, line: 63, baseType: !1574, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !975, line: 56, size: 128, elements: !1576)
!1576 = !{!1577, !1578}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1575, file: !975, line: 57, baseType: !1574, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1575, file: !975, line: 58, baseType: !717, size: 8, offset: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1571, file: !975, line: 64, baseType: !7, size: 32, offset: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1571, file: !975, line: 66, baseType: !7, size: 32, offset: 96)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1571, file: !975, line: 68, baseType: !606, size: 8, offset: 128)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1571, file: !975, line: 70, baseType: !973, size: 64, offset: 192)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1571, file: !975, line: 71, baseType: !981, size: 64, offset: 256)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1333, file: !1334, line: 476, baseType: !1585, size: 64, offset: 256)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1334, line: 476, flags: DIFlagFwdDecl)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1333, file: !1334, line: 479, baseType: !1417, size: 64, offset: 320)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1333, file: !1334, line: 484, baseType: !619, size: 64, offset: 384)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1333, file: !1334, line: 488, baseType: !619, size: 64, offset: 448)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1333, file: !1334, line: 493, baseType: !619, size: 64, offset: 512)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1333, file: !1334, line: 496, baseType: !619, size: 64, offset: 576)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1333, file: !1334, line: 501, baseType: !1593, size: 64, offset: 640)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !348, line: 2355, size: 576, elements: !1595)
!1595 = !{!1596, !1599, !1600, !1601, !1602, !1604, !1605, !1610, !1611, !1612, !1613, !1614, !1615}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1594, file: !348, line: 2356, baseType: !1597, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !348, line: 2356, flags: DIFlagFwdDecl)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1594, file: !348, line: 2357, baseType: !612, size: 64, offset: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1594, file: !348, line: 2358, baseType: !607, size: 32, offset: 128)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1594, file: !348, line: 2359, baseType: !607, size: 32, offset: 160)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1594, file: !348, line: 2360, baseType: !1603, size: 128, offset: 192)
!1603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 128, elements: !886)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1594, file: !348, line: 2364, baseType: !607, size: 32, offset: 320)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1594, file: !348, line: 2367, baseType: !1606, size: 128, offset: 384)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !348, line: 2349, size: 128, elements: !1607)
!1607 = !{!1608, !1609}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1606, file: !348, line: 2351, baseType: !794, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1606, file: !348, line: 2352, baseType: !675, size: 64, offset: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1594, file: !348, line: 2371, baseType: !347, size: 32, offset: 512)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1594, file: !348, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1594, file: !348, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1594, file: !348, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1594, file: !348, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1594, file: !348, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1333, file: !1334, line: 504, baseType: !1617, size: 64, offset: 704)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1334, line: 504, flags: DIFlagFwdDecl)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1333, file: !1334, line: 507, baseType: !1417, size: 64, offset: 768)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1333, file: !1334, line: 510, baseType: !607, size: 32, offset: 832)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1333, file: !1334, line: 513, baseType: !607, size: 32, offset: 864)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1333, file: !1334, line: 516, baseType: !744, size: 32, offset: 896)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1333, file: !1334, line: 519, baseType: !744, size: 32, offset: 928)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1333, file: !1334, line: 522, baseType: !7, size: 32, offset: 960)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1333, file: !1334, line: 523, baseType: !7, size: 32, offset: 992)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1333, file: !1334, line: 528, baseType: !612, size: 64, offset: 1024)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1333, file: !1334, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1333, file: !1334, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1333, file: !1334, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1333, file: !1334, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1333, file: !1334, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1333, file: !1334, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1333, file: !1334, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1333, file: !1334, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1333, file: !1334, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1333, file: !1334, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1333, file: !1334, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1333, file: !1334, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1333, file: !1334, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1333, file: !1334, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1333, file: !1334, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1333, file: !1334, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1328, file: !135, line: 3254, baseType: !619, size: 64, offset: 1536)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1328, file: !135, line: 3257, baseType: !619, size: 64, offset: 1600)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1328, file: !135, line: 3258, baseType: !619, size: 64, offset: 1664)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1328, file: !135, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1328, file: !135, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1328, file: !135, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1328, file: !135, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1328, file: !135, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1328, file: !135, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1328, file: !135, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1328, file: !135, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1328, file: !135, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1328, file: !135, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1328, file: !135, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1328, file: !135, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1328, file: !135, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1328, file: !135, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1328, file: !135, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1328, file: !135, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1328, file: !135, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1328, file: !135, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !622, file: !135, line: 3394, baseType: !1665, size: 1344)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !135, line: 2279, size: 1344, elements: !1666)
!1666 = !{!1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1665, file: !135, line: 2280, baseType: !658, size: 192)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1665, file: !135, line: 2281, baseType: !619, size: 64, offset: 192)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1665, file: !135, line: 2282, baseType: !619, size: 64, offset: 256)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1665, file: !135, line: 2283, baseType: !619, size: 64, offset: 320)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1665, file: !135, line: 2284, baseType: !619, size: 64, offset: 384)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1665, file: !135, line: 2285, baseType: !7, size: 32, offset: 448)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1665, file: !135, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1665, file: !135, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1665, file: !135, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1665, file: !135, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1665, file: !135, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1665, file: !135, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1665, file: !135, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1665, file: !135, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1665, file: !135, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1665, file: !135, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1665, file: !135, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1665, file: !135, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1665, file: !135, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1665, file: !135, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1665, file: !135, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1665, file: !135, line: 2305, baseType: !7, size: 32, offset: 512)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1665, file: !135, line: 2306, baseType: !1201, size: 32, offset: 544)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1665, file: !135, line: 2307, baseType: !619, size: 64, offset: 576)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1665, file: !135, line: 2308, baseType: !619, size: 64, offset: 640)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1665, file: !135, line: 2314, baseType: !1693, size: 64, offset: 704)
!1693 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !135, line: 2309, size: 64, elements: !1694)
!1694 = !{!1695, !1696, !1697}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1693, file: !135, line: 2310, baseType: !607, size: 32)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1693, file: !135, line: 2311, baseType: !612, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1693, file: !135, line: 2312, baseType: !1698, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !135, line: 2277, flags: DIFlagFwdDecl)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1665, file: !135, line: 2315, baseType: !619, size: 64, offset: 768)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1665, file: !135, line: 2316, baseType: !619, size: 64, offset: 832)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1665, file: !135, line: 2317, baseType: !619, size: 64, offset: 896)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1665, file: !135, line: 2318, baseType: !619, size: 64, offset: 960)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1665, file: !135, line: 2319, baseType: !619, size: 64, offset: 1024)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1665, file: !135, line: 2320, baseType: !619, size: 64, offset: 1088)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1665, file: !135, line: 2321, baseType: !619, size: 64, offset: 1152)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1665, file: !135, line: 2322, baseType: !619, size: 64, offset: 1216)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1665, file: !135, line: 2324, baseType: !1709, size: 64, offset: 1280)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !135, line: 2324, flags: DIFlagFwdDecl)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !622, file: !135, line: 3395, baseType: !1712, size: 320)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !135, line: 1469, size: 320, elements: !1713)
!1713 = !{!1714, !1715, !1716}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1712, file: !135, line: 1470, baseType: !658, size: 192)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1712, file: !135, line: 1471, baseType: !619, size: 64, offset: 192)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1712, file: !135, line: 1472, baseType: !619, size: 64, offset: 256)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !622, file: !135, line: 3396, baseType: !1718, size: 320)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !135, line: 1482, size: 320, elements: !1719)
!1719 = !{!1720, !1721, !1722}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1718, file: !135, line: 1483, baseType: !658, size: 192)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1718, file: !135, line: 1484, baseType: !607, size: 32, offset: 192)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1718, file: !135, line: 1485, baseType: !998, size: 64, offset: 256)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !622, file: !135, line: 3397, baseType: !1724, size: 384)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !135, line: 1829, size: 384, elements: !1725)
!1725 = !{!1726, !1727, !1728, !1729}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1724, file: !135, line: 1830, baseType: !658, size: 192)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1724, file: !135, line: 1831, baseType: !744, size: 32, offset: 192)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1724, file: !135, line: 1832, baseType: !619, size: 64, offset: 256)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1724, file: !135, line: 1835, baseType: !998, size: 64, offset: 320)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !622, file: !135, line: 3398, baseType: !1731, size: 704)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !135, line: 1898, size: 704, elements: !1732)
!1732 = !{!1733, !1734, !1735, !1736, !1737, !1742}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1731, file: !135, line: 1899, baseType: !658, size: 192)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1731, file: !135, line: 1902, baseType: !619, size: 64, offset: 192)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1731, file: !135, line: 1905, baseType: !944, size: 64, offset: 256)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1731, file: !135, line: 1908, baseType: !7, size: 32, offset: 320)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1731, file: !135, line: 1911, baseType: !1738, size: 64, offset: 384)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !1284, line: 117, size: 128, elements: !1740)
!1740 = !{!1741}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1739, file: !1284, line: 120, baseType: !1550, size: 128)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1731, file: !135, line: 1914, baseType: !986, size: 256, offset: 448)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !622, file: !135, line: 3399, baseType: !1744, size: 704)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !135, line: 2008, size: 704, elements: !1745)
!1745 = !{!1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1744, file: !135, line: 2009, baseType: !658, size: 192)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1744, file: !135, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1744, file: !135, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1744, file: !135, line: 2014, baseType: !744, size: 32, offset: 224)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1744, file: !135, line: 2016, baseType: !619, size: 64, offset: 256)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1744, file: !135, line: 2017, baseType: !1467, size: 64, offset: 320)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1744, file: !135, line: 2019, baseType: !619, size: 64, offset: 384)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1744, file: !135, line: 2020, baseType: !619, size: 64, offset: 448)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1744, file: !135, line: 2021, baseType: !619, size: 64, offset: 512)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1744, file: !135, line: 2022, baseType: !619, size: 64, offset: 576)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1744, file: !135, line: 2023, baseType: !619, size: 64, offset: 640)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !622, file: !135, line: 3400, baseType: !1758, size: 832)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !135, line: 2430, size: 832, elements: !1759)
!1759 = !{!1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1758, file: !135, line: 2431, baseType: !658, size: 192)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1758, file: !135, line: 2433, baseType: !619, size: 64, offset: 192)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1758, file: !135, line: 2434, baseType: !619, size: 64, offset: 256)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1758, file: !135, line: 2435, baseType: !619, size: 64, offset: 320)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1758, file: !135, line: 2436, baseType: !619, size: 64, offset: 384)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1758, file: !135, line: 2437, baseType: !1467, size: 64, offset: 448)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1758, file: !135, line: 2438, baseType: !619, size: 64, offset: 512)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1758, file: !135, line: 2440, baseType: !619, size: 64, offset: 576)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1758, file: !135, line: 2441, baseType: !619, size: 64, offset: 640)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1758, file: !135, line: 2443, baseType: !1770, size: 128, offset: 704)
!1770 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !135, line: 182, baseType: !1771)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !135, line: 182, size: 128, elements: !1772)
!1772 = !{!1773}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1771, file: !135, line: 182, baseType: !1472, size: 128)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !622, file: !135, line: 3401, baseType: !1775, size: 320)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !135, line: 3327, size: 320, elements: !1776)
!1776 = !{!1777, !1778, !1785}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1775, file: !135, line: 3329, baseType: !658, size: 192)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1775, file: !135, line: 3330, baseType: !1779, size: 64, offset: 192)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !135, line: 3320, size: 192, elements: !1781)
!1781 = !{!1782, !1783, !1784}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1780, file: !135, line: 3322, baseType: !1779, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1780, file: !135, line: 3323, baseType: !1779, size: 64, offset: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1780, file: !135, line: 3324, baseType: !619, size: 64, offset: 128)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1775, file: !135, line: 3331, baseType: !1779, size: 64, offset: 256)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !622, file: !135, line: 3402, baseType: !1787, size: 256)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !135, line: 1540, size: 256, elements: !1788)
!1788 = !{!1789, !1790}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1787, file: !135, line: 1541, baseType: !658, size: 192)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1787, file: !135, line: 1542, baseType: !1791, size: 64, offset: 192)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !135, line: 1538, baseType: !1793)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !135, line: 1538, size: 192, elements: !1794)
!1794 = !{!1795}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1793, file: !135, line: 1538, baseType: !1796, size: 192)
!1796 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !135, line: 1537, baseType: !1797)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !135, line: 1537, size: 192, elements: !1798)
!1798 = !{!1799, !1800, !1801}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1797, file: !135, line: 1537, baseType: !7, size: 32)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1797, file: !135, line: 1537, baseType: !7, size: 32, offset: 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1797, file: !135, line: 1537, baseType: !1802, size: 128, offset: 64)
!1802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1803, size: 128, elements: !718)
!1803 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !135, line: 1535, baseType: !1804)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !135, line: 1532, size: 128, elements: !1805)
!1805 = !{!1806, !1807}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1804, file: !135, line: 1533, baseType: !619, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1804, file: !135, line: 1534, baseType: !619, size: 64, offset: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !622, file: !135, line: 3403, baseType: !1809, size: 512)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !135, line: 1938, size: 512, elements: !1810)
!1810 = !{!1811, !1812, !1813, !1814, !1820, !1821, !1822}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1809, file: !135, line: 1939, baseType: !658, size: 192)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1809, file: !135, line: 1940, baseType: !744, size: 32, offset: 192)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1809, file: !135, line: 1941, baseType: !352, size: 32, offset: 224)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1809, file: !135, line: 1946, baseType: !1815, size: 32, offset: 256)
!1815 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !135, line: 1942, size: 32, elements: !1816)
!1816 = !{!1817, !1818, !1819}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1815, file: !135, line: 1943, baseType: !370, size: 32)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1815, file: !135, line: 1944, baseType: !377, size: 32)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1815, file: !135, line: 1945, baseType: !134, size: 32)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1809, file: !135, line: 1950, baseType: !933, size: 64, offset: 320)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1809, file: !135, line: 1951, baseType: !933, size: 64, offset: 384)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1809, file: !135, line: 1953, baseType: !998, size: 64, offset: 448)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !622, file: !135, line: 3404, baseType: !1824, size: 1664)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !135, line: 3337, size: 1664, elements: !1825)
!1825 = !{!1826, !1827}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1824, file: !135, line: 3338, baseType: !658, size: 192)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1824, file: !135, line: 3341, baseType: !1828, size: 1472, offset: 192)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1829, line: 410, size: 1472, elements: !1830)
!1829 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1830 = !{!1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1828, file: !1829, line: 412, baseType: !607, size: 32)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1828, file: !1829, line: 413, baseType: !607, size: 32, offset: 32)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1828, file: !1829, line: 414, baseType: !607, size: 32, offset: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1828, file: !1829, line: 415, baseType: !607, size: 32, offset: 96)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1828, file: !1829, line: 416, baseType: !607, size: 32, offset: 128)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1828, file: !1829, line: 417, baseType: !607, size: 32, offset: 160)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1828, file: !1829, line: 418, baseType: !606, size: 8, offset: 192)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1828, file: !1829, line: 419, baseType: !606, size: 8, offset: 200)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1828, file: !1829, line: 420, baseType: !1840, size: 8, offset: 208)
!1840 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1828, file: !1829, line: 421, baseType: !1840, size: 8, offset: 216)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1828, file: !1829, line: 422, baseType: !1840, size: 8, offset: 224)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1828, file: !1829, line: 423, baseType: !1840, size: 8, offset: 232)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1828, file: !1829, line: 424, baseType: !1840, size: 8, offset: 240)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1828, file: !1829, line: 425, baseType: !1840, size: 8, offset: 248)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1828, file: !1829, line: 426, baseType: !1840, size: 8, offset: 256)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1828, file: !1829, line: 427, baseType: !1840, size: 8, offset: 264)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1828, file: !1829, line: 428, baseType: !1840, size: 8, offset: 272)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1828, file: !1829, line: 429, baseType: !1840, size: 8, offset: 280)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1828, file: !1829, line: 430, baseType: !1840, size: 8, offset: 288)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1828, file: !1829, line: 431, baseType: !1840, size: 8, offset: 296)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1828, file: !1829, line: 432, baseType: !1840, size: 8, offset: 304)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1828, file: !1829, line: 433, baseType: !1840, size: 8, offset: 312)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1828, file: !1829, line: 434, baseType: !1840, size: 8, offset: 320)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1828, file: !1829, line: 435, baseType: !1840, size: 8, offset: 328)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1828, file: !1829, line: 436, baseType: !1840, size: 8, offset: 336)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1828, file: !1829, line: 437, baseType: !1840, size: 8, offset: 344)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1828, file: !1829, line: 438, baseType: !1840, size: 8, offset: 352)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1828, file: !1829, line: 439, baseType: !1840, size: 8, offset: 360)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1828, file: !1829, line: 440, baseType: !1840, size: 8, offset: 368)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1828, file: !1829, line: 441, baseType: !1840, size: 8, offset: 376)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1828, file: !1829, line: 442, baseType: !1840, size: 8, offset: 384)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1828, file: !1829, line: 443, baseType: !1840, size: 8, offset: 392)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1828, file: !1829, line: 444, baseType: !1840, size: 8, offset: 400)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1828, file: !1829, line: 445, baseType: !1840, size: 8, offset: 408)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1828, file: !1829, line: 446, baseType: !1840, size: 8, offset: 416)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1828, file: !1829, line: 447, baseType: !1840, size: 8, offset: 424)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1828, file: !1829, line: 448, baseType: !1840, size: 8, offset: 432)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1828, file: !1829, line: 449, baseType: !1840, size: 8, offset: 440)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1828, file: !1829, line: 450, baseType: !1840, size: 8, offset: 448)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1828, file: !1829, line: 451, baseType: !1840, size: 8, offset: 456)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1828, file: !1829, line: 452, baseType: !1840, size: 8, offset: 464)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1828, file: !1829, line: 453, baseType: !1840, size: 8, offset: 472)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1828, file: !1829, line: 454, baseType: !1840, size: 8, offset: 480)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1828, file: !1829, line: 455, baseType: !1840, size: 8, offset: 488)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1828, file: !1829, line: 456, baseType: !1840, size: 8, offset: 496)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1828, file: !1829, line: 457, baseType: !1840, size: 8, offset: 504)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1828, file: !1829, line: 458, baseType: !1840, size: 8, offset: 512)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1828, file: !1829, line: 459, baseType: !1840, size: 8, offset: 520)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1828, file: !1829, line: 460, baseType: !1840, size: 8, offset: 528)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1828, file: !1829, line: 461, baseType: !1840, size: 8, offset: 536)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1828, file: !1829, line: 462, baseType: !1840, size: 8, offset: 544)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1828, file: !1829, line: 463, baseType: !1840, size: 8, offset: 552)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1828, file: !1829, line: 464, baseType: !1840, size: 8, offset: 560)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1828, file: !1829, line: 465, baseType: !1840, size: 8, offset: 568)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1828, file: !1829, line: 466, baseType: !1840, size: 8, offset: 576)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1828, file: !1829, line: 467, baseType: !1840, size: 8, offset: 584)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1828, file: !1829, line: 468, baseType: !1840, size: 8, offset: 592)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1828, file: !1829, line: 469, baseType: !1840, size: 8, offset: 600)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1828, file: !1829, line: 470, baseType: !1840, size: 8, offset: 608)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1828, file: !1829, line: 471, baseType: !1840, size: 8, offset: 616)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1828, file: !1829, line: 472, baseType: !1840, size: 8, offset: 624)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1828, file: !1829, line: 473, baseType: !1840, size: 8, offset: 632)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1828, file: !1829, line: 474, baseType: !1840, size: 8, offset: 640)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1828, file: !1829, line: 475, baseType: !1840, size: 8, offset: 648)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1828, file: !1829, line: 476, baseType: !1840, size: 8, offset: 656)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1828, file: !1829, line: 477, baseType: !1840, size: 8, offset: 664)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1828, file: !1829, line: 478, baseType: !1840, size: 8, offset: 672)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1828, file: !1829, line: 479, baseType: !1840, size: 8, offset: 680)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1828, file: !1829, line: 480, baseType: !1840, size: 8, offset: 688)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1828, file: !1829, line: 481, baseType: !1840, size: 8, offset: 696)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1828, file: !1829, line: 482, baseType: !1840, size: 8, offset: 704)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1828, file: !1829, line: 483, baseType: !1840, size: 8, offset: 712)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1828, file: !1829, line: 484, baseType: !1840, size: 8, offset: 720)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1828, file: !1829, line: 485, baseType: !1840, size: 8, offset: 728)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1828, file: !1829, line: 486, baseType: !1840, size: 8, offset: 736)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1828, file: !1829, line: 487, baseType: !1840, size: 8, offset: 744)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1828, file: !1829, line: 488, baseType: !1840, size: 8, offset: 752)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1828, file: !1829, line: 489, baseType: !1840, size: 8, offset: 760)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1828, file: !1829, line: 490, baseType: !1840, size: 8, offset: 768)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1828, file: !1829, line: 491, baseType: !1840, size: 8, offset: 776)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1828, file: !1829, line: 492, baseType: !1840, size: 8, offset: 784)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1828, file: !1829, line: 493, baseType: !1840, size: 8, offset: 792)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1828, file: !1829, line: 494, baseType: !1840, size: 8, offset: 800)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1828, file: !1829, line: 495, baseType: !1840, size: 8, offset: 808)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1828, file: !1829, line: 496, baseType: !1840, size: 8, offset: 816)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1828, file: !1829, line: 497, baseType: !1840, size: 8, offset: 824)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1828, file: !1829, line: 498, baseType: !1840, size: 8, offset: 832)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1828, file: !1829, line: 499, baseType: !1840, size: 8, offset: 840)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1828, file: !1829, line: 500, baseType: !1840, size: 8, offset: 848)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1828, file: !1829, line: 501, baseType: !1840, size: 8, offset: 856)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1828, file: !1829, line: 502, baseType: !1840, size: 8, offset: 864)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1828, file: !1829, line: 503, baseType: !1840, size: 8, offset: 872)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1828, file: !1829, line: 504, baseType: !1840, size: 8, offset: 880)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1828, file: !1829, line: 505, baseType: !1840, size: 8, offset: 888)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1828, file: !1829, line: 506, baseType: !1840, size: 8, offset: 896)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1828, file: !1829, line: 507, baseType: !1840, size: 8, offset: 904)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1828, file: !1829, line: 508, baseType: !1840, size: 8, offset: 912)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1828, file: !1829, line: 509, baseType: !1840, size: 8, offset: 920)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1828, file: !1829, line: 510, baseType: !1840, size: 8, offset: 928)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1828, file: !1829, line: 511, baseType: !1840, size: 8, offset: 936)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1828, file: !1829, line: 512, baseType: !1840, size: 8, offset: 944)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1828, file: !1829, line: 513, baseType: !1840, size: 8, offset: 952)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1828, file: !1829, line: 514, baseType: !1840, size: 8, offset: 960)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1828, file: !1829, line: 515, baseType: !1840, size: 8, offset: 968)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1828, file: !1829, line: 516, baseType: !1840, size: 8, offset: 976)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1828, file: !1829, line: 517, baseType: !1840, size: 8, offset: 984)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1828, file: !1829, line: 518, baseType: !1840, size: 8, offset: 992)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1828, file: !1829, line: 519, baseType: !1840, size: 8, offset: 1000)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1828, file: !1829, line: 520, baseType: !1840, size: 8, offset: 1008)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1828, file: !1829, line: 521, baseType: !1840, size: 8, offset: 1016)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1828, file: !1829, line: 522, baseType: !1840, size: 8, offset: 1024)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1828, file: !1829, line: 523, baseType: !1840, size: 8, offset: 1032)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1828, file: !1829, line: 524, baseType: !1840, size: 8, offset: 1040)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1828, file: !1829, line: 525, baseType: !1840, size: 8, offset: 1048)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1828, file: !1829, line: 526, baseType: !1840, size: 8, offset: 1056)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1828, file: !1829, line: 527, baseType: !1840, size: 8, offset: 1064)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1828, file: !1829, line: 528, baseType: !1840, size: 8, offset: 1072)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1828, file: !1829, line: 529, baseType: !1840, size: 8, offset: 1080)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1828, file: !1829, line: 530, baseType: !1840, size: 8, offset: 1088)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1828, file: !1829, line: 531, baseType: !1840, size: 8, offset: 1096)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1828, file: !1829, line: 532, baseType: !1840, size: 8, offset: 1104)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1828, file: !1829, line: 533, baseType: !1840, size: 8, offset: 1112)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1828, file: !1829, line: 534, baseType: !1840, size: 8, offset: 1120)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1828, file: !1829, line: 535, baseType: !1840, size: 8, offset: 1128)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1828, file: !1829, line: 536, baseType: !1840, size: 8, offset: 1136)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1828, file: !1829, line: 537, baseType: !1840, size: 8, offset: 1144)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1828, file: !1829, line: 538, baseType: !1840, size: 8, offset: 1152)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1828, file: !1829, line: 539, baseType: !1840, size: 8, offset: 1160)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1828, file: !1829, line: 540, baseType: !1840, size: 8, offset: 1168)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1828, file: !1829, line: 541, baseType: !1840, size: 8, offset: 1176)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1828, file: !1829, line: 542, baseType: !1840, size: 8, offset: 1184)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1828, file: !1829, line: 543, baseType: !1840, size: 8, offset: 1192)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1828, file: !1829, line: 544, baseType: !1840, size: 8, offset: 1200)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1828, file: !1829, line: 545, baseType: !1840, size: 8, offset: 1208)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1828, file: !1829, line: 546, baseType: !1840, size: 8, offset: 1216)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1828, file: !1829, line: 547, baseType: !1840, size: 8, offset: 1224)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1828, file: !1829, line: 548, baseType: !1840, size: 8, offset: 1232)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1828, file: !1829, line: 549, baseType: !1840, size: 8, offset: 1240)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1828, file: !1829, line: 550, baseType: !1840, size: 8, offset: 1248)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1828, file: !1829, line: 551, baseType: !1840, size: 8, offset: 1256)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1828, file: !1829, line: 552, baseType: !1840, size: 8, offset: 1264)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1828, file: !1829, line: 553, baseType: !1840, size: 8, offset: 1272)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1828, file: !1829, line: 554, baseType: !1840, size: 8, offset: 1280)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1828, file: !1829, line: 555, baseType: !1840, size: 8, offset: 1288)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1828, file: !1829, line: 556, baseType: !1840, size: 8, offset: 1296)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1828, file: !1829, line: 557, baseType: !1840, size: 8, offset: 1304)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1828, file: !1829, line: 558, baseType: !1840, size: 8, offset: 1312)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1828, file: !1829, line: 559, baseType: !1840, size: 8, offset: 1320)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1828, file: !1829, line: 560, baseType: !1840, size: 8, offset: 1328)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1828, file: !1829, line: 561, baseType: !1840, size: 8, offset: 1336)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1828, file: !1829, line: 562, baseType: !1840, size: 8, offset: 1344)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1828, file: !1829, line: 563, baseType: !1840, size: 8, offset: 1352)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1828, file: !1829, line: 564, baseType: !1840, size: 8, offset: 1360)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1828, file: !1829, line: 565, baseType: !1840, size: 8, offset: 1368)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1828, file: !1829, line: 566, baseType: !1840, size: 8, offset: 1376)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1828, file: !1829, line: 567, baseType: !1840, size: 8, offset: 1384)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1828, file: !1829, line: 568, baseType: !1840, size: 8, offset: 1392)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1828, file: !1829, line: 569, baseType: !1840, size: 8, offset: 1400)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1828, file: !1829, line: 570, baseType: !1840, size: 8, offset: 1408)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1828, file: !1829, line: 571, baseType: !1840, size: 8, offset: 1416)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1828, file: !1829, line: 572, baseType: !1840, size: 8, offset: 1424)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1828, file: !1829, line: 573, baseType: !1840, size: 8, offset: 1432)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1828, file: !1829, line: 574, baseType: !1840, size: 8, offset: 1440)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !622, file: !135, line: 3405, baseType: !1996, size: 384)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !135, line: 3352, size: 384, elements: !1997)
!1997 = !{!1998, !1999}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1996, file: !135, line: 3353, baseType: !658, size: 192)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1996, file: !135, line: 3356, baseType: !2000, size: 192, offset: 192)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1829, line: 578, size: 192, elements: !2001)
!2001 = !{!2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !2000, file: !1829, line: 580, baseType: !607, size: 32)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !2000, file: !1829, line: 581, baseType: !607, size: 32, offset: 32)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !2000, file: !1829, line: 582, baseType: !607, size: 32, offset: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !2000, file: !1829, line: 583, baseType: !607, size: 32, offset: 96)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2000, file: !1829, line: 584, baseType: !606, size: 8, offset: 128)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !2000, file: !1829, line: 585, baseType: !606, size: 8, offset: 136)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !2000, file: !1829, line: 586, baseType: !606, size: 8, offset: 144)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !2000, file: !1829, line: 587, baseType: !606, size: 8, offset: 152)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !2000, file: !1829, line: 588, baseType: !606, size: 8, offset: 160)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !2000, file: !1829, line: 589, baseType: !606, size: 8, offset: 168)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !2000, file: !1829, line: 590, baseType: !606, size: 8, offset: 176)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "slot_num", scope: !616, file: !591, line: 487, baseType: !607, size: 32, offset: 64)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_char_ptr_base", file: !591, line: 568, size: 64, elements: !2016)
!2016 = !{!2017}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2015, file: !591, line: 570, baseType: !609, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_simple_output_block", file: !591, line: 614, size: 192, elements: !2021)
!2021 = !{!2022, !2023, !2302}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "section_type", scope: !2020, file: !591, line: 616, baseType: !590, size: 32)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "decl_state", scope: !2020, file: !591, line: 617, baseType: !2024, size: 64, offset: 64)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_out_decl_state", file: !591, line: 517, size: 1472, elements: !2026)
!2026 = !{!2027, !2041, !2301}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !2025, file: !591, line: 521, baseType: !2028, size: 1344)
!2028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2029, size: 1344, elements: !2039)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_tree_ref_encoder", file: !591, line: 493, size: 192, elements: !2030)
!2030 = !{!2031, !2032, !2033}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "tree_hash_table", scope: !2029, file: !591, line: 495, baseType: !1417, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "next_index", scope: !2029, file: !591, line: 496, baseType: !7, size: 32, offset: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "trees", scope: !2029, file: !591, line: 497, baseType: !2034, size: 64, offset: 128)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_heap", file: !135, line: 184, baseType: !2036)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_heap", file: !135, line: 184, size: 128, elements: !2037)
!2037 = !{!2038}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2036, file: !135, line: 184, baseType: !1472, size: 128)
!2039 = !{!2040}
!2040 = !DISubrange(count: 7)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "cgraph_node_encoder", scope: !2025, file: !591, line: 524, baseType: !2042, size: 64, offset: 1344)
!2042 = !DIDerivedType(tag: DW_TAG_typedef, name: "lto_cgraph_encoder_t", file: !591, line: 470, baseType: !2043)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_cgraph_encoder_d", file: !591, line: 461, size: 128, elements: !2045)
!2045 = !{!2046, !2047}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !2044, file: !591, line: 464, baseType: !1563, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !2044, file: !591, line: 467, baseType: !2048, size: 64, offset: 64)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_heap", file: !385, line: 271, baseType: !2050)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_heap", file: !385, line: 271, size: 128, elements: !2051)
!2051 = !{!2052}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2050, file: !385, line: 271, baseType: !2053, size: 128)
!2053 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_base", file: !385, line: 270, baseType: !2054)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_base", file: !385, line: 270, size: 128, elements: !2055)
!2055 = !{!2056, !2057, !2058}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2054, file: !385, line: 270, baseType: !7, size: 32)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2054, file: !385, line: 270, baseType: !7, size: 32, offset: 32)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2054, file: !385, line: 270, baseType: !2059, size: 64, offset: 64)
!2059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2060, size: 64, elements: !718)
!2060 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_node_ptr", file: !385, line: 268, baseType: !2061)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_node", file: !385, line: 181, size: 2496, elements: !2063)
!2063 = !{!2064, !2065, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2197, !2238, !2248, !2252, !2278, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !2062, file: !385, line: 182, baseType: !619, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "callees", scope: !2062, file: !385, line: 183, baseType: !2066, size: 64, offset: 64)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_edge", file: !385, line: 314, size: 768, elements: !2068)
!2068 = !{!2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2080, !2081, !2082, !2083, !2085, !2086, !2087}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2067, file: !385, line: 316, baseType: !1156, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2067, file: !385, line: 317, baseType: !2061, size: 64, offset: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "callee", scope: !2067, file: !385, line: 318, baseType: !2061, size: 64, offset: 128)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "prev_caller", scope: !2067, file: !385, line: 319, baseType: !2066, size: 64, offset: 192)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "next_caller", scope: !2067, file: !385, line: 320, baseType: !2066, size: 64, offset: 256)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "prev_callee", scope: !2067, file: !385, line: 321, baseType: !2066, size: 64, offset: 320)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "next_callee", scope: !2067, file: !385, line: 322, baseType: !2066, size: 64, offset: 384)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "call_stmt", scope: !2067, file: !385, line: 323, baseType: !944, size: 64, offset: 448)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !2067, file: !385, line: 324, baseType: !611, size: 64, offset: 512)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "inline_failed", scope: !2067, file: !385, line: 327, baseType: !2079, size: 32, offset: 576)
!2079 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_inline_failed_t", file: !385, line: 312, baseType: !384)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "lto_stmt_uid", scope: !2067, file: !385, line: 330, baseType: !7, size: 32, offset: 608)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !2067, file: !385, line: 334, baseType: !607, size: 32, offset: 640)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2067, file: !385, line: 336, baseType: !607, size: 32, offset: 672)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "loop_nest", scope: !2067, file: !385, line: 338, baseType: !2084, size: 16, offset: 704)
!2084 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "indirect_call", scope: !2067, file: !385, line: 340, baseType: !7, size: 1, offset: 720, flags: DIFlagBitField, extraData: i64 720)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "call_stmt_cannot_inline_p", scope: !2067, file: !385, line: 342, baseType: !7, size: 1, offset: 721, flags: DIFlagBitField, extraData: i64 720)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "can_throw_external", scope: !2067, file: !385, line: 344, baseType: !7, size: 1, offset: 722, flags: DIFlagBitField, extraData: i64 720)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "callers", scope: !2062, file: !385, line: 184, baseType: !2066, size: 64, offset: 128)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2062, file: !385, line: 185, baseType: !2061, size: 64, offset: 192)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !2062, file: !385, line: 186, baseType: !2061, size: 64, offset: 256)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !2062, file: !385, line: 188, baseType: !2061, size: 64, offset: 320)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2062, file: !385, line: 190, baseType: !2061, size: 64, offset: 384)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "next_nested", scope: !2062, file: !385, line: 192, baseType: !2061, size: 64, offset: 448)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "next_needed", scope: !2062, file: !385, line: 194, baseType: !2061, size: 64, offset: 512)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "next_sibling_clone", scope: !2062, file: !385, line: 196, baseType: !2061, size: 64, offset: 576)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sibling_clone", scope: !2062, file: !385, line: 197, baseType: !2061, size: 64, offset: 640)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "clones", scope: !2062, file: !385, line: 198, baseType: !2061, size: 64, offset: 704)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "clone_of", scope: !2062, file: !385, line: 199, baseType: !2061, size: 64, offset: 768)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "same_body", scope: !2062, file: !385, line: 202, baseType: !2061, size: 64, offset: 832)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "same_comdat_group", scope: !2062, file: !385, line: 204, baseType: !2061, size: 64, offset: 896)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "call_site_hash", scope: !2062, file: !385, line: 207, baseType: !1417, size: 64, offset: 960)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !2062, file: !385, line: 209, baseType: !611, size: 64, offset: 1024)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "ipa_transforms_to_apply", scope: !2062, file: !385, line: 214, baseType: !2104, size: 64, offset: 1088)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_opt_pass_heap", file: !1334, line: 177, baseType: !2106)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_opt_pass_heap", file: !1334, line: 177, size: 128, elements: !2107)
!2107 = !{!2108}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2106, file: !1334, line: 177, baseType: !2109, size: 128)
!2109 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_opt_pass_base", file: !1334, line: 176, baseType: !2110)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_opt_pass_base", file: !1334, line: 176, size: 128, elements: !2111)
!2111 = !{!2112, !2113, !2114}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2110, file: !1334, line: 176, baseType: !7, size: 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2110, file: !1334, line: 176, baseType: !7, size: 32, offset: 32)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2110, file: !1334, line: 176, baseType: !2115, size: 64, offset: 64)
!2115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2116, size: 64, elements: !718)
!2116 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_opt_pass", file: !1334, line: 174, baseType: !2117)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_opt_pass_d", file: !408, line: 173, size: 1152, elements: !2119)
!2119 = !{!2120, !2144, !2148, !2163, !2164, !2168, !2173, !2174, !2178}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !2118, file: !408, line: 175, baseType: !2121, size: 640)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !408, line: 114, size: 640, elements: !2122)
!2122 = !{!2123, !2124, !2125, !2129, !2133, !2135, !2136, !2137, !2139, !2140, !2141, !2142, !2143}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2121, file: !408, line: 117, baseType: !407, size: 32)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2121, file: !408, line: 121, baseType: !612, size: 64, offset: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !2121, file: !408, line: 125, baseType: !2126, size: 64, offset: 128)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!606}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !2121, file: !408, line: 130, baseType: !2130, size: 64, offset: 192)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!7}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !2121, file: !408, line: 133, baseType: !2134, size: 64, offset: 256)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2121, file: !408, line: 136, baseType: !2134, size: 64, offset: 320)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !2121, file: !408, line: 139, baseType: !607, size: 32, offset: 384)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !2121, file: !408, line: 143, baseType: !2138, size: 32, offset: 416)
!2138 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !415, line: 80, baseType: !414)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !2121, file: !408, line: 146, baseType: !7, size: 32, offset: 448)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !2121, file: !408, line: 147, baseType: !7, size: 32, offset: 480)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !2121, file: !408, line: 148, baseType: !7, size: 32, offset: 512)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !2121, file: !408, line: 151, baseType: !7, size: 32, offset: 544)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !2121, file: !408, line: 152, baseType: !7, size: 32, offset: 576)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "generate_summary", scope: !2118, file: !408, line: 179, baseType: !2145, size: 64, offset: 640)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{null}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "write_summary", scope: !2118, file: !408, line: 182, baseType: !2149, size: 64, offset: 704)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{null, !2152}
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_node_set_def", file: !385, line: 276, size: 192, elements: !2154)
!2154 = !{!2155, !2156, !2162}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "hashtab", scope: !2153, file: !385, line: 278, baseType: !1417, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !2153, file: !385, line: 279, baseType: !2157, size: 64, offset: 64)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_gc", file: !385, line: 272, baseType: !2159)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_gc", file: !385, line: 272, size: 128, elements: !2160)
!2160 = !{!2161}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2159, file: !385, line: 272, baseType: !2053, size: 128)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !2153, file: !385, line: 280, baseType: !611, size: 64, offset: 128)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "read_summary", scope: !2118, file: !408, line: 187, baseType: !2145, size: 64, offset: 768)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "function_read_summary", scope: !2118, file: !408, line: 188, baseType: !2165, size: 64, offset: 832)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{null, !2061}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_fixup", scope: !2118, file: !408, line: 191, baseType: !2169, size: 64, offset: 896)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{null, !2061, !2172}
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "function_transform_todo_flags_start", scope: !2118, file: !408, line: 195, baseType: !7, size: 32, offset: 960)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "function_transform", scope: !2118, file: !408, line: 196, baseType: !2175, size: 64, offset: 1024)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!7, !2061}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "variable_transform", scope: !2118, file: !408, line: 197, baseType: !2179, size: 64, offset: 1088)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{null, !2182}
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varpool_node", file: !385, line: 358, size: 320, elements: !2184)
!2184 = !{!2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !2183, file: !385, line: 359, baseType: !619, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2183, file: !385, line: 361, baseType: !2182, size: 64, offset: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "next_needed", scope: !2183, file: !385, line: 363, baseType: !2182, size: 64, offset: 128)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "extra_name", scope: !2183, file: !385, line: 366, baseType: !2182, size: 64, offset: 192)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !2183, file: !385, line: 368, baseType: !607, size: 32, offset: 256)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "needed", scope: !2183, file: !385, line: 372, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "force_output", scope: !2183, file: !385, line: 375, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "analyzed", scope: !2183, file: !385, line: 378, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "finalized", scope: !2183, file: !385, line: 380, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !2183, file: !385, line: 382, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "externally_visible", scope: !2183, file: !385, line: 384, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !2183, file: !385, line: 387, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !2062, file: !385, line: 216, baseType: !2198, size: 320, offset: 1152)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_local_info", file: !385, line: 88, size: 320, elements: !2199)
!2199 = !{!2200, !2222, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "lto_file_data", scope: !2198, file: !385, line: 90, baseType: !2201, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_file_decl_data", file: !591, line: 540, size: 512, elements: !2203)
!2203 = !{!2204, !2215, !2216, !2217, !2218, !2219, !2220, !2221}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "current_decl_state", scope: !2202, file: !591, line: 543, baseType: !2205, size: 64)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_in_decl_state", file: !591, line: 502, size: 960, elements: !2207)
!2207 = !{!2208, !2214}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !2206, file: !591, line: 505, baseType: !2209, size: 896)
!2209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2210, size: 896, elements: !2039)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_tree_ref_table", file: !591, line: 473, size: 128, elements: !2211)
!2211 = !{!2212, !2213}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "trees", scope: !2210, file: !591, line: 476, baseType: !979, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2210, file: !591, line: 479, baseType: !7, size: 32, offset: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "fn_decl", scope: !2206, file: !591, line: 509, baseType: !619, size: 64, offset: 896)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "global_decl_state", scope: !2202, file: !591, line: 547, baseType: !2205, size: 64, offset: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "cgraph_node_encoder", scope: !2202, file: !591, line: 550, baseType: !2042, size: 64, offset: 128)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl_states", scope: !2202, file: !591, line: 553, baseType: !1417, size: 64, offset: 192)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "file_name", scope: !2202, file: !591, line: 556, baseType: !612, size: 64, offset: 256)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "needs_ltrans_p", scope: !2202, file: !591, line: 559, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "section_hash_table", scope: !2202, file: !591, line: 562, baseType: !1417, size: 64, offset: 384)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "renaming_hash_table", scope: !2202, file: !591, line: 565, baseType: !1417, size: 64, offset: 448)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "inline_summary", scope: !2198, file: !385, line: 92, baseType: !2223, size: 192, offset: 64)
!2223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inline_summary", file: !385, line: 57, size: 192, elements: !2224)
!2224 = !{!2225, !2226, !2227, !2228, !2229}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_self_stack_size", scope: !2223, file: !385, line: 60, baseType: !675, size: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "self_size", scope: !2223, file: !385, line: 63, baseType: !607, size: 32, offset: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "size_inlining_benefit", scope: !2223, file: !385, line: 65, baseType: !607, size: 32, offset: 96)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "self_time", scope: !2223, file: !385, line: 67, baseType: !607, size: 32, offset: 128)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "time_inlining_benefit", scope: !2223, file: !385, line: 69, baseType: !607, size: 32, offset: 160)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !2198, file: !385, line: 96, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "externally_visible", scope: !2198, file: !385, line: 99, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "finalized", scope: !2198, file: !385, line: 102, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "inlinable", scope: !2198, file: !385, line: 105, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !2198, file: !385, line: 108, baseType: !7, size: 1, offset: 260, flags: DIFlagBitField, extraData: i64 256)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "redefined_extern_inline", scope: !2198, file: !385, line: 112, baseType: !7, size: 1, offset: 261, flags: DIFlagBitField, extraData: i64 256)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "for_functions_valid", scope: !2198, file: !385, line: 116, baseType: !7, size: 1, offset: 262, flags: DIFlagBitField, extraData: i64 256)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "vtable_method", scope: !2198, file: !385, line: 120, baseType: !7, size: 1, offset: 263, flags: DIFlagBitField, extraData: i64 256)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !2062, file: !385, line: 217, baseType: !2239, size: 320, offset: 1472)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_global_info", file: !385, line: 126, size: 320, elements: !2240)
!2240 = !{!2241, !2242, !2243, !2244, !2245, !2246, !2247}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_stack_size", scope: !2239, file: !385, line: 128, baseType: !675, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "stack_frame_offset", scope: !2239, file: !385, line: 130, baseType: !675, size: 64, offset: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "inlined_to", scope: !2239, file: !385, line: 134, baseType: !2061, size: 64, offset: 128)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2239, file: !385, line: 137, baseType: !607, size: 32, offset: 192)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2239, file: !385, line: 138, baseType: !607, size: 32, offset: 224)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_growth", scope: !2239, file: !385, line: 141, baseType: !607, size: 32, offset: 256)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "inlined", scope: !2239, file: !385, line: 144, baseType: !606, size: 8, offset: 288)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !2062, file: !385, line: 218, baseType: !2249, size: 32, offset: 1792)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_rtl_info", file: !385, line: 150, size: 32, elements: !2250)
!2250 = !{!2251}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_incoming_stack_boundary", scope: !2249, file: !385, line: 151, baseType: !7, size: 32)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "clone", scope: !2062, file: !385, line: 219, baseType: !2253, size: 192, offset: 1856)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_clone_info", file: !385, line: 171, size: 192, elements: !2254)
!2254 = !{!2255, !2276, !2277}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "tree_map", scope: !2253, file: !385, line: 173, baseType: !2256, size: 64)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_replace_map_p_gc", file: !385, line: 169, baseType: !2258)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_replace_map_p_gc", file: !385, line: 169, size: 128, elements: !2259)
!2259 = !{!2260}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2258, file: !385, line: 169, baseType: !2261, size: 128)
!2261 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_replace_map_p_base", file: !385, line: 168, baseType: !2262)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_replace_map_p_base", file: !385, line: 168, size: 128, elements: !2263)
!2263 = !{!2264, !2265, !2266}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2262, file: !385, line: 168, baseType: !7, size: 32)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2262, file: !385, line: 168, baseType: !7, size: 32, offset: 32)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2262, file: !385, line: 168, baseType: !2267, size: 64, offset: 64)
!2267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2268, size: 64, elements: !718)
!2268 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_replace_map_p", file: !385, line: 167, baseType: !2269)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_replace_map", file: !385, line: 156, size: 192, elements: !2271)
!2271 = !{!2272, !2273, !2274, !2275}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "old_tree", scope: !2270, file: !385, line: 159, baseType: !619, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "new_tree", scope: !2270, file: !385, line: 161, baseType: !619, size: 64, offset: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "replace_p", scope: !2270, file: !385, line: 163, baseType: !606, size: 8, offset: 128)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "ref_p", scope: !2270, file: !385, line: 165, baseType: !606, size: 8, offset: 136)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "args_to_skip", scope: !2253, file: !385, line: 174, baseType: !1560, size: 64, offset: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "combined_args_to_skip", scope: !2253, file: !385, line: 175, baseType: !1560, size: 64, offset: 128)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "thunk", scope: !2062, file: !385, line: 220, baseType: !2279, size: 256, offset: 2048)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_thunk_info", file: !385, line: 74, size: 256, elements: !2280)
!2280 = !{!2281, !2282, !2283, !2284, !2285, !2286}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_offset", scope: !2279, file: !385, line: 76, baseType: !675, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_value", scope: !2279, file: !385, line: 77, baseType: !675, size: 64, offset: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !2279, file: !385, line: 78, baseType: !619, size: 64, offset: 128)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "this_adjusting", scope: !2279, file: !385, line: 79, baseType: !606, size: 8, offset: 192)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_offset_p", scope: !2279, file: !385, line: 80, baseType: !606, size: 8, offset: 200)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "thunk_p", scope: !2279, file: !385, line: 82, baseType: !606, size: 8, offset: 208)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2062, file: !385, line: 223, baseType: !1156, size: 64, offset: 2304)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2062, file: !385, line: 225, baseType: !607, size: 32, offset: 2368)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !2062, file: !385, line: 227, baseType: !607, size: 32, offset: 2400)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2062, file: !385, line: 231, baseType: !607, size: 32, offset: 2432)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "needed", scope: !2062, file: !385, line: 238, baseType: !7, size: 1, offset: 2464, flags: DIFlagBitField, extraData: i64 2464)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "address_taken", scope: !2062, file: !385, line: 241, baseType: !7, size: 1, offset: 2465, flags: DIFlagBitField, extraData: i64 2464)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_and_needed", scope: !2062, file: !385, line: 244, baseType: !7, size: 1, offset: 2466, flags: DIFlagBitField, extraData: i64 2464)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "reachable", scope: !2062, file: !385, line: 251, baseType: !7, size: 1, offset: 2467, flags: DIFlagBitField, extraData: i64 2464)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "lowered", scope: !2062, file: !385, line: 253, baseType: !7, size: 1, offset: 2468, flags: DIFlagBitField, extraData: i64 2464)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "analyzed", scope: !2062, file: !385, line: 256, baseType: !7, size: 1, offset: 2469, flags: DIFlagBitField, extraData: i64 2464)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !2062, file: !385, line: 258, baseType: !7, size: 1, offset: 2470, flags: DIFlagBitField, extraData: i64 2464)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !2062, file: !385, line: 260, baseType: !7, size: 1, offset: 2471, flags: DIFlagBitField, extraData: i64 2464)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "finalized_by_frontend", scope: !2062, file: !385, line: 262, baseType: !7, size: 1, offset: 2472, flags: DIFlagBitField, extraData: i64 2464)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "same_body_alias", scope: !2062, file: !385, line: 265, baseType: !7, size: 1, offset: 2473, flags: DIFlagBitField, extraData: i64 2464)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "fn_decl", scope: !2025, file: !591, line: 528, baseType: !619, size: 64, offset: 1408)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "main_stream", scope: !2020, file: !591, line: 620, baseType: !2303, size: 64, offset: 128)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_output_stream", file: !591, line: 577, size: 320, elements: !2305)
!2305 = !{!2306, !2307, !2308, !2309, !2310, !2311}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "first_block", scope: !2304, file: !591, line: 580, baseType: !2014, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "current_block", scope: !2304, file: !591, line: 583, baseType: !2014, size: 64, offset: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "current_pointer", scope: !2304, file: !591, line: 586, baseType: !609, size: 64, offset: 128)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "left_in_block", scope: !2304, file: !591, line: 589, baseType: !7, size: 32, offset: 192)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !2304, file: !591, line: 592, baseType: !7, size: 32, offset: 224)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "total_size", scope: !2304, file: !591, line: 595, baseType: !7, size: 32, offset: 256)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_lto_out_decl_state_ptr_heap", file: !591, line: 534, baseType: !2314)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_lto_out_decl_state_ptr_heap", file: !591, line: 534, size: 128, elements: !2315)
!2315 = !{!2316}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2314, file: !591, line: 534, baseType: !2317, size: 128)
!2317 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_lto_out_decl_state_ptr_base", file: !591, line: 533, baseType: !2318)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_lto_out_decl_state_ptr_base", file: !591, line: 533, size: 128, elements: !2319)
!2319 = !{!2320, !2321, !2322}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2318, file: !591, line: 533, baseType: !7, size: 32)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2318, file: !591, line: 533, baseType: !7, size: 32, offset: 32)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2318, file: !591, line: 533, baseType: !2323, size: 64, offset: 64)
!2323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2324, size: 64, elements: !718)
!2324 = !DIDerivedType(tag: DW_TAG_typedef, name: "lto_out_decl_state_ptr", file: !591, line: 531, baseType: !2024)
!2325 = !{!2326, !2328, !0}
!2326 = !DIGlobalVariableExpression(var: !2327, expr: !DIExpression())
!2327 = distinct !DIGlobalVariable(name: "decl_state_stack", scope: !2, file: !3, line: 47, type: !2312, isLocal: true, isDefinition: true)
!2328 = !DIGlobalVariableExpression(var: !2329, expr: !DIExpression())
!2329 = distinct !DIGlobalVariable(name: "lto_function_decl_states", scope: !2, file: !3, line: 52, type: !2312, isLocal: false, isDefinition: true)
!2330 = !{i32 2, !"Dwarf Version", i32 4}
!2331 = !{i32 2, !"Debug Info Version", i32 3}
!2332 = !{i32 1, !"wchar_size", i32 4}
!2333 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!2334 = distinct !DISubprogram(name: "vprintf", scope: !2335, file: !2335, line: 39, type: !2336, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2346)
!2335 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!607, !2338, !2339}
!2338 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !612)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2341)
!2341 = !{!2342, !2343, !2344, !2345}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2340, file: !3, baseType: !7, size: 32)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2340, file: !3, baseType: !7, size: 32, offset: 32)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2340, file: !3, baseType: !611, size: 64, offset: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2340, file: !3, baseType: !611, size: 64, offset: 128)
!2346 = !{!2347, !2348}
!2347 = !DILocalVariable(name: "__fmt", arg: 1, scope: !2334, file: !2335, line: 39, type: !2338)
!2348 = !DILocalVariable(name: "__arg", arg: 2, scope: !2334, file: !2335, line: 39, type: !2339)
!2349 = !DILocation(line: 0, scope: !2334)
!2350 = !DILocation(line: 41, column: 20, scope: !2334)
!2351 = !DILocation(line: 41, column: 10, scope: !2334)
!2352 = !DILocation(line: 41, column: 3, scope: !2334)
!2353 = distinct !DISubprogram(name: "getchar", scope: !2335, file: !2335, line: 47, type: !2354, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2356)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!607}
!2356 = !{}
!2357 = !DILocation(line: 49, column: 16, scope: !2353)
!2358 = !DILocation(line: 49, column: 10, scope: !2353)
!2359 = !DILocation(line: 49, column: 3, scope: !2353)
!2360 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !2335, file: !2335, line: 56, type: !2361, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2413)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!607, !2363}
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2365, line: 7, baseType: !2366)
!2365 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2367, line: 49, size: 1728, elements: !2368)
!2367 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2368 = !{!2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2384, !2386, !2387, !2388, !2391, !2392, !2393, !2394, !2397, !2399, !2402, !2405, !2406, !2407, !2408, !2409}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2366, file: !2367, line: 51, baseType: !607, size: 32)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2366, file: !2367, line: 54, baseType: !609, size: 64, offset: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2366, file: !2367, line: 55, baseType: !609, size: 64, offset: 128)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2366, file: !2367, line: 56, baseType: !609, size: 64, offset: 192)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2366, file: !2367, line: 57, baseType: !609, size: 64, offset: 256)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2366, file: !2367, line: 58, baseType: !609, size: 64, offset: 320)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2366, file: !2367, line: 59, baseType: !609, size: 64, offset: 384)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2366, file: !2367, line: 60, baseType: !609, size: 64, offset: 448)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2366, file: !2367, line: 61, baseType: !609, size: 64, offset: 512)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2366, file: !2367, line: 64, baseType: !609, size: 64, offset: 576)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2366, file: !2367, line: 65, baseType: !609, size: 64, offset: 640)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2366, file: !2367, line: 66, baseType: !609, size: 64, offset: 704)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2366, file: !2367, line: 68, baseType: !2382, size: 64, offset: 768)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2367, line: 36, flags: DIFlagFwdDecl)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2366, file: !2367, line: 70, baseType: !2385, size: 64, offset: 832)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2366, file: !2367, line: 72, baseType: !607, size: 32, offset: 896)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2366, file: !2367, line: 73, baseType: !607, size: 32, offset: 928)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2366, file: !2367, line: 74, baseType: !2389, size: 64, offset: 960)
!2389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2390, line: 152, baseType: !675)
!2390 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2366, file: !2367, line: 77, baseType: !2084, size: 16, offset: 1024)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2366, file: !2367, line: 78, baseType: !1840, size: 8, offset: 1040)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2366, file: !2367, line: 79, baseType: !717, size: 8, offset: 1048)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2366, file: !2367, line: 81, baseType: !2395, size: 64, offset: 1088)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2367, line: 43, baseType: null)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2366, file: !2367, line: 89, baseType: !2398, size: 64, offset: 1152)
!2398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2390, line: 153, baseType: !675)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2366, file: !2367, line: 91, baseType: !2400, size: 64, offset: 1216)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2367, line: 37, flags: DIFlagFwdDecl)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2366, file: !2367, line: 92, baseType: !2403, size: 64, offset: 1280)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2367, line: 38, flags: DIFlagFwdDecl)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2366, file: !2367, line: 93, baseType: !2385, size: 64, offset: 1344)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2366, file: !2367, line: 94, baseType: !611, size: 64, offset: 1408)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2366, file: !2367, line: 95, baseType: !1090, size: 64, offset: 1472)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2366, file: !2367, line: 96, baseType: !607, size: 32, offset: 1536)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2366, file: !2367, line: 98, baseType: !2410, size: 160, offset: 1568)
!2410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 160, elements: !2411)
!2411 = !{!2412}
!2412 = !DISubrange(count: 20)
!2413 = !{!2414}
!2414 = !DILocalVariable(name: "__fp", arg: 1, scope: !2360, file: !2335, line: 56, type: !2363)
!2415 = !DILocation(line: 0, scope: !2360)
!2416 = !DILocation(line: 58, column: 10, scope: !2360)
!2417 = !DILocation(line: 58, column: 3, scope: !2360)
!2418 = distinct !DISubprogram(name: "getc_unlocked", scope: !2335, file: !2335, line: 66, type: !2361, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2419)
!2419 = !{!2420}
!2420 = !DILocalVariable(name: "__fp", arg: 1, scope: !2418, file: !2335, line: 66, type: !2363)
!2421 = !DILocation(line: 0, scope: !2418)
!2422 = !DILocation(line: 68, column: 10, scope: !2418)
!2423 = !DILocation(line: 68, column: 3, scope: !2418)
!2424 = distinct !DISubprogram(name: "getchar_unlocked", scope: !2335, file: !2335, line: 73, type: !2354, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2356)
!2425 = !DILocation(line: 75, column: 10, scope: !2424)
!2426 = !DILocation(line: 75, column: 3, scope: !2424)
!2427 = distinct !DISubprogram(name: "putchar", scope: !2335, file: !2335, line: 82, type: !2428, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2430)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!607, !607}
!2430 = !{!2431}
!2431 = !DILocalVariable(name: "__c", arg: 1, scope: !2427, file: !2335, line: 82, type: !607)
!2432 = !DILocation(line: 0, scope: !2427)
!2433 = !DILocation(line: 84, column: 21, scope: !2427)
!2434 = !DILocation(line: 84, column: 10, scope: !2427)
!2435 = !DILocation(line: 84, column: 3, scope: !2427)
!2436 = distinct !DISubprogram(name: "fputc_unlocked", scope: !2335, file: !2335, line: 91, type: !2437, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2439)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!607, !607, !2363}
!2439 = !{!2440, !2441}
!2440 = !DILocalVariable(name: "__c", arg: 1, scope: !2436, file: !2335, line: 91, type: !607)
!2441 = !DILocalVariable(name: "__stream", arg: 2, scope: !2436, file: !2335, line: 91, type: !2363)
!2442 = !DILocation(line: 0, scope: !2436)
!2443 = !DILocation(line: 93, column: 10, scope: !2436)
!2444 = !DILocation(line: 93, column: 3, scope: !2436)
!2445 = distinct !DISubprogram(name: "putc_unlocked", scope: !2335, file: !2335, line: 101, type: !2437, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2446)
!2446 = !{!2447, !2448}
!2447 = !DILocalVariable(name: "__c", arg: 1, scope: !2445, file: !2335, line: 101, type: !607)
!2448 = !DILocalVariable(name: "__stream", arg: 2, scope: !2445, file: !2335, line: 101, type: !2363)
!2449 = !DILocation(line: 0, scope: !2445)
!2450 = !DILocation(line: 103, column: 10, scope: !2445)
!2451 = !DILocation(line: 103, column: 3, scope: !2445)
!2452 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2335, file: !2335, line: 108, type: !2428, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2453)
!2453 = !{!2454}
!2454 = !DILocalVariable(name: "__c", arg: 1, scope: !2452, file: !2335, line: 108, type: !607)
!2455 = !DILocation(line: 0, scope: !2452)
!2456 = !DILocation(line: 110, column: 10, scope: !2452)
!2457 = !DILocation(line: 110, column: 3, scope: !2452)
!2458 = distinct !DISubprogram(name: "getline", scope: !2335, file: !2335, line: 118, type: !2459, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2463)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!2461, !608, !2462, !2363}
!2461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2390, line: 193, baseType: !675)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!2463 = !{!2464, !2465, !2466}
!2464 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2458, file: !2335, line: 118, type: !608)
!2465 = !DILocalVariable(name: "__n", arg: 2, scope: !2458, file: !2335, line: 118, type: !2462)
!2466 = !DILocalVariable(name: "__stream", arg: 3, scope: !2458, file: !2335, line: 118, type: !2363)
!2467 = !DILocation(line: 0, scope: !2458)
!2468 = !DILocation(line: 120, column: 10, scope: !2458)
!2469 = !DILocation(line: 120, column: 3, scope: !2458)
!2470 = distinct !DISubprogram(name: "feof_unlocked", scope: !2335, file: !2335, line: 128, type: !2361, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2471)
!2471 = !{!2472}
!2472 = !DILocalVariable(name: "__stream", arg: 1, scope: !2470, file: !2335, line: 128, type: !2363)
!2473 = !DILocation(line: 0, scope: !2470)
!2474 = !DILocation(line: 130, column: 10, scope: !2470)
!2475 = !DILocation(line: 130, column: 3, scope: !2470)
!2476 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2335, file: !2335, line: 135, type: !2361, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2477)
!2477 = !{!2478}
!2478 = !DILocalVariable(name: "__stream", arg: 1, scope: !2476, file: !2335, line: 135, type: !2363)
!2479 = !DILocation(line: 0, scope: !2476)
!2480 = !DILocation(line: 137, column: 10, scope: !2476)
!2481 = !DILocation(line: 137, column: 3, scope: !2476)
!2482 = distinct !DISubprogram(name: "tolower", scope: !2483, file: !2483, line: 207, type: !2428, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2484)
!2483 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2484 = !{!2485}
!2485 = !DILocalVariable(name: "__c", arg: 1, scope: !2482, file: !2483, line: 207, type: !607)
!2486 = !DILocation(line: 0, scope: !2482)
!2487 = !DILocation(line: 209, column: 22, scope: !2482)
!2488 = !DILocation(line: 209, column: 39, scope: !2482)
!2489 = !DILocation(line: 209, column: 38, scope: !2482)
!2490 = !DILocation(line: 209, column: 37, scope: !2482)
!2491 = !DILocation(line: 209, column: 10, scope: !2482)
!2492 = !DILocation(line: 209, column: 3, scope: !2482)
!2493 = distinct !DISubprogram(name: "toupper", scope: !2483, file: !2483, line: 213, type: !2428, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2494)
!2494 = !{!2495}
!2495 = !DILocalVariable(name: "__c", arg: 1, scope: !2493, file: !2483, line: 213, type: !607)
!2496 = !DILocation(line: 0, scope: !2493)
!2497 = !DILocation(line: 215, column: 22, scope: !2493)
!2498 = !DILocation(line: 215, column: 39, scope: !2493)
!2499 = !DILocation(line: 215, column: 38, scope: !2493)
!2500 = !DILocation(line: 215, column: 37, scope: !2493)
!2501 = !DILocation(line: 215, column: 10, scope: !2493)
!2502 = !DILocation(line: 215, column: 3, scope: !2493)
!2503 = distinct !DISubprogram(name: "atoi", scope: !2504, file: !2504, line: 361, type: !2505, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2507)
!2504 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!607, !612}
!2507 = !{!2508}
!2508 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2503, file: !2504, line: 361, type: !612)
!2509 = !DILocation(line: 0, scope: !2503)
!2510 = !DILocation(line: 363, column: 16, scope: !2503)
!2511 = !DILocation(line: 363, column: 10, scope: !2503)
!2512 = !DILocation(line: 363, column: 3, scope: !2503)
!2513 = distinct !DISubprogram(name: "atol", scope: !2504, file: !2504, line: 366, type: !2514, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2516)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!675, !612}
!2516 = !{!2517}
!2517 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2513, file: !2504, line: 366, type: !612)
!2518 = !DILocation(line: 0, scope: !2513)
!2519 = !DILocation(line: 368, column: 10, scope: !2513)
!2520 = !DILocation(line: 368, column: 3, scope: !2513)
!2521 = distinct !DISubprogram(name: "atoll", scope: !2504, file: !2504, line: 373, type: !2522, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2525)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!2524, !612}
!2524 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2525 = !{!2526}
!2526 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2521, file: !2504, line: 373, type: !612)
!2527 = !DILocation(line: 0, scope: !2521)
!2528 = !DILocation(line: 375, column: 10, scope: !2521)
!2529 = !DILocation(line: 375, column: 3, scope: !2521)
!2530 = distinct !DISubprogram(name: "bsearch", scope: !2531, file: !2531, line: 20, type: !2532, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2535)
!2531 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!611, !1428, !1428, !1090, !1090, !2534}
!2534 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2504, line: 808, baseType: !1432)
!2535 = !{!2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545}
!2536 = !DILocalVariable(name: "__key", arg: 1, scope: !2530, file: !2531, line: 20, type: !1428)
!2537 = !DILocalVariable(name: "__base", arg: 2, scope: !2530, file: !2531, line: 20, type: !1428)
!2538 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2530, file: !2531, line: 20, type: !1090)
!2539 = !DILocalVariable(name: "__size", arg: 4, scope: !2530, file: !2531, line: 20, type: !1090)
!2540 = !DILocalVariable(name: "__compar", arg: 5, scope: !2530, file: !2531, line: 21, type: !2534)
!2541 = !DILocalVariable(name: "__l", scope: !2530, file: !2531, line: 23, type: !1090)
!2542 = !DILocalVariable(name: "__u", scope: !2530, file: !2531, line: 23, type: !1090)
!2543 = !DILocalVariable(name: "__idx", scope: !2530, file: !2531, line: 23, type: !1090)
!2544 = !DILocalVariable(name: "__p", scope: !2530, file: !2531, line: 24, type: !1428)
!2545 = !DILocalVariable(name: "__comparison", scope: !2530, file: !2531, line: 25, type: !607)
!2546 = !DILocation(line: 0, scope: !2530)
!2547 = !DILocation(line: 29, column: 3, scope: !2530)
!2548 = !DILocation(line: 27, column: 7, scope: !2530)
!2549 = !DILocation(line: 29, column: 14, scope: !2530)
!2550 = !DILocation(line: 31, column: 20, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2530, file: !2531, line: 30, column: 5)
!2552 = !DILocation(line: 31, column: 27, scope: !2551)
!2553 = !DILocation(line: 32, column: 56, scope: !2551)
!2554 = !DILocation(line: 32, column: 47, scope: !2551)
!2555 = !DILocation(line: 33, column: 22, scope: !2551)
!2556 = !DILocation(line: 34, column: 24, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2551, file: !2531, line: 34, column: 11)
!2558 = !DILocation(line: 34, column: 11, scope: !2551)
!2559 = !DILocation(line: 36, column: 29, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2557, file: !2531, line: 36, column: 16)
!2561 = !DILocation(line: 36, column: 16, scope: !2557)
!2562 = !DILocation(line: 37, column: 14, scope: !2560)
!2563 = distinct !{!2563, !2547, !2564}
!2564 = !DILocation(line: 40, column: 5, scope: !2530)
!2565 = !DILocation(line: 43, column: 1, scope: !2530)
!2566 = distinct !DISubprogram(name: "atof", scope: !2567, file: !2567, line: 25, type: !2568, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2571)
!2567 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!2570, !612}
!2570 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2571 = !{!2572}
!2572 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2566, file: !2567, line: 25, type: !612)
!2573 = !DILocation(line: 0, scope: !2566)
!2574 = !DILocation(line: 27, column: 10, scope: !2566)
!2575 = !DILocation(line: 27, column: 3, scope: !2566)
!2576 = distinct !DISubprogram(name: "strtoimax", scope: !2577, file: !2577, line: 324, type: !2578, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2584)
!2577 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!2580, !2338, !2583, !607}
!2580 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2581, line: 101, baseType: !2582)
!2581 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2390, line: 72, baseType: !675)
!2583 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !608)
!2584 = !{!2585, !2586, !2587}
!2585 = !DILocalVariable(name: "nptr", arg: 1, scope: !2576, file: !2577, line: 324, type: !2338)
!2586 = !DILocalVariable(name: "endptr", arg: 2, scope: !2576, file: !2577, line: 324, type: !2583)
!2587 = !DILocalVariable(name: "base", arg: 3, scope: !2576, file: !2577, line: 324, type: !607)
!2588 = !DILocation(line: 0, scope: !2576)
!2589 = !DILocation(line: 327, column: 10, scope: !2576)
!2590 = !DILocation(line: 327, column: 3, scope: !2576)
!2591 = distinct !DISubprogram(name: "strtoumax", scope: !2577, file: !2577, line: 336, type: !2592, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2596)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!2594, !2338, !2583, !607}
!2594 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2581, line: 102, baseType: !2595)
!2595 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2390, line: 73, baseType: !673)
!2596 = !{!2597, !2598, !2599}
!2597 = !DILocalVariable(name: "nptr", arg: 1, scope: !2591, file: !2577, line: 336, type: !2338)
!2598 = !DILocalVariable(name: "endptr", arg: 2, scope: !2591, file: !2577, line: 336, type: !2583)
!2599 = !DILocalVariable(name: "base", arg: 3, scope: !2591, file: !2577, line: 336, type: !607)
!2600 = !DILocation(line: 0, scope: !2591)
!2601 = !DILocation(line: 339, column: 10, scope: !2591)
!2602 = !DILocation(line: 339, column: 3, scope: !2591)
!2603 = distinct !DISubprogram(name: "wcstoimax", scope: !2577, file: !2577, line: 348, type: !2604, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2613)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!2580, !2606, !2610, !607}
!2606 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2607)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2609)
!2609 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2577, line: 34, baseType: !607)
!2610 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2611)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2613 = !{!2614, !2615, !2616}
!2614 = !DILocalVariable(name: "nptr", arg: 1, scope: !2603, file: !2577, line: 348, type: !2606)
!2615 = !DILocalVariable(name: "endptr", arg: 2, scope: !2603, file: !2577, line: 348, type: !2610)
!2616 = !DILocalVariable(name: "base", arg: 3, scope: !2603, file: !2577, line: 348, type: !607)
!2617 = !DILocation(line: 0, scope: !2603)
!2618 = !DILocation(line: 351, column: 10, scope: !2603)
!2619 = !DILocation(line: 351, column: 3, scope: !2603)
!2620 = distinct !DISubprogram(name: "wcstoumax", scope: !2577, file: !2577, line: 362, type: !2621, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2623)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{!2594, !2606, !2610, !607}
!2623 = !{!2624, !2625, !2626}
!2624 = !DILocalVariable(name: "nptr", arg: 1, scope: !2620, file: !2577, line: 362, type: !2606)
!2625 = !DILocalVariable(name: "endptr", arg: 2, scope: !2620, file: !2577, line: 362, type: !2610)
!2626 = !DILocalVariable(name: "base", arg: 3, scope: !2620, file: !2577, line: 362, type: !607)
!2627 = !DILocation(line: 0, scope: !2620)
!2628 = !DILocation(line: 365, column: 10, scope: !2620)
!2629 = !DILocation(line: 365, column: 3, scope: !2620)
!2630 = distinct !DISubprogram(name: "stat", scope: !2631, file: !2631, line: 453, type: !2632, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2669)
!2631 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!607, !612, !2634}
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2636, line: 46, size: 1152, elements: !2637)
!2636 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2637 = !{!2638, !2640, !2642, !2644, !2646, !2648, !2650, !2651, !2652, !2653, !2655, !2657, !2665, !2666, !2667}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2635, file: !2636, line: 48, baseType: !2639, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2390, line: 145, baseType: !673)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2635, file: !2636, line: 53, baseType: !2641, size: 64, offset: 64)
!2641 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2390, line: 148, baseType: !673)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2635, file: !2636, line: 61, baseType: !2643, size: 64, offset: 128)
!2643 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2390, line: 151, baseType: !673)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2635, file: !2636, line: 62, baseType: !2645, size: 32, offset: 192)
!2645 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2390, line: 150, baseType: !7)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2635, file: !2636, line: 64, baseType: !2647, size: 32, offset: 224)
!2647 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2390, line: 146, baseType: !7)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2635, file: !2636, line: 65, baseType: !2649, size: 32, offset: 256)
!2649 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2390, line: 147, baseType: !7)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2635, file: !2636, line: 67, baseType: !607, size: 32, offset: 288)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2635, file: !2636, line: 69, baseType: !2639, size: 64, offset: 320)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2635, file: !2636, line: 74, baseType: !2389, size: 64, offset: 384)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2635, file: !2636, line: 78, baseType: !2654, size: 64, offset: 448)
!2654 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2390, line: 174, baseType: !675)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2635, file: !2636, line: 80, baseType: !2656, size: 64, offset: 512)
!2656 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2390, line: 179, baseType: !675)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2635, file: !2636, line: 91, baseType: !2658, size: 128, offset: 576)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2659, line: 10, size: 128, elements: !2660)
!2659 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2660 = !{!2661, !2663}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2658, file: !2659, line: 12, baseType: !2662, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2390, line: 160, baseType: !675)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2658, file: !2659, line: 16, baseType: !2664, size: 64, offset: 64)
!2664 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2390, line: 196, baseType: !675)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2635, file: !2636, line: 92, baseType: !2658, size: 128, offset: 704)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2635, file: !2636, line: 93, baseType: !2658, size: 128, offset: 832)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2635, file: !2636, line: 106, baseType: !2668, size: 192, offset: 960)
!2668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2664, size: 192, elements: !693)
!2669 = !{!2670, !2671}
!2670 = !DILocalVariable(name: "__path", arg: 1, scope: !2630, file: !2631, line: 453, type: !612)
!2671 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2630, file: !2631, line: 453, type: !2634)
!2672 = !DILocation(line: 0, scope: !2630)
!2673 = !DILocation(line: 455, column: 10, scope: !2630)
!2674 = !DILocation(line: 455, column: 3, scope: !2630)
!2675 = distinct !DISubprogram(name: "lstat", scope: !2631, file: !2631, line: 460, type: !2632, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2676)
!2676 = !{!2677, !2678}
!2677 = !DILocalVariable(name: "__path", arg: 1, scope: !2675, file: !2631, line: 460, type: !612)
!2678 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2675, file: !2631, line: 460, type: !2634)
!2679 = !DILocation(line: 0, scope: !2675)
!2680 = !DILocation(line: 462, column: 10, scope: !2675)
!2681 = !DILocation(line: 462, column: 3, scope: !2675)
!2682 = distinct !DISubprogram(name: "fstat", scope: !2631, file: !2631, line: 467, type: !2683, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2685)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!607, !607, !2634}
!2685 = !{!2686, !2687}
!2686 = !DILocalVariable(name: "__fd", arg: 1, scope: !2682, file: !2631, line: 467, type: !607)
!2687 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2682, file: !2631, line: 467, type: !2634)
!2688 = !DILocation(line: 0, scope: !2682)
!2689 = !DILocation(line: 469, column: 10, scope: !2682)
!2690 = !DILocation(line: 469, column: 3, scope: !2682)
!2691 = distinct !DISubprogram(name: "fstatat", scope: !2631, file: !2631, line: 474, type: !2692, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2694)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!607, !607, !612, !2634, !607}
!2694 = !{!2695, !2696, !2697, !2698}
!2695 = !DILocalVariable(name: "__fd", arg: 1, scope: !2691, file: !2631, line: 474, type: !607)
!2696 = !DILocalVariable(name: "__filename", arg: 2, scope: !2691, file: !2631, line: 474, type: !612)
!2697 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2691, file: !2631, line: 474, type: !2634)
!2698 = !DILocalVariable(name: "__flag", arg: 4, scope: !2691, file: !2631, line: 474, type: !607)
!2699 = !DILocation(line: 0, scope: !2691)
!2700 = !DILocation(line: 477, column: 10, scope: !2691)
!2701 = !DILocation(line: 477, column: 3, scope: !2691)
!2702 = distinct !DISubprogram(name: "mknod", scope: !2631, file: !2631, line: 483, type: !2703, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2705)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!607, !612, !2645, !2639}
!2705 = !{!2706, !2707, !2708}
!2706 = !DILocalVariable(name: "__path", arg: 1, scope: !2702, file: !2631, line: 483, type: !612)
!2707 = !DILocalVariable(name: "__mode", arg: 2, scope: !2702, file: !2631, line: 483, type: !2645)
!2708 = !DILocalVariable(name: "__dev", arg: 3, scope: !2702, file: !2631, line: 483, type: !2639)
!2709 = !DILocation(line: 0, scope: !2702)
!2710 = !DILocation(line: 485, column: 10, scope: !2702)
!2711 = !DILocation(line: 485, column: 3, scope: !2702)
!2712 = distinct !DISubprogram(name: "mknodat", scope: !2631, file: !2631, line: 491, type: !2713, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2715)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!607, !607, !612, !2645, !2639}
!2715 = !{!2716, !2717, !2718, !2719}
!2716 = !DILocalVariable(name: "__fd", arg: 1, scope: !2712, file: !2631, line: 491, type: !607)
!2717 = !DILocalVariable(name: "__path", arg: 2, scope: !2712, file: !2631, line: 491, type: !612)
!2718 = !DILocalVariable(name: "__mode", arg: 3, scope: !2712, file: !2631, line: 491, type: !2645)
!2719 = !DILocalVariable(name: "__dev", arg: 4, scope: !2712, file: !2631, line: 491, type: !2639)
!2720 = !DILocation(line: 0, scope: !2712)
!2721 = !DILocation(line: 494, column: 10, scope: !2712)
!2722 = !DILocation(line: 494, column: 3, scope: !2712)
!2723 = distinct !DISubprogram(name: "stat64", scope: !2631, file: !2631, line: 502, type: !2724, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2746)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!607, !612, !2726}
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2636, line: 119, size: 1152, elements: !2728)
!2728 = !{!2729, !2730, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2742, !2743, !2744, !2745}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2727, file: !2636, line: 121, baseType: !2639, size: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2727, file: !2636, line: 123, baseType: !2731, size: 64, offset: 64)
!2731 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2390, line: 149, baseType: !673)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2727, file: !2636, line: 124, baseType: !2643, size: 64, offset: 128)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2727, file: !2636, line: 125, baseType: !2645, size: 32, offset: 192)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2727, file: !2636, line: 132, baseType: !2647, size: 32, offset: 224)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2727, file: !2636, line: 133, baseType: !2649, size: 32, offset: 256)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2727, file: !2636, line: 135, baseType: !607, size: 32, offset: 288)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2727, file: !2636, line: 136, baseType: !2639, size: 64, offset: 320)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2727, file: !2636, line: 137, baseType: !2389, size: 64, offset: 384)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2727, file: !2636, line: 143, baseType: !2654, size: 64, offset: 448)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2727, file: !2636, line: 144, baseType: !2741, size: 64, offset: 512)
!2741 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2390, line: 180, baseType: !675)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2727, file: !2636, line: 152, baseType: !2658, size: 128, offset: 576)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2727, file: !2636, line: 153, baseType: !2658, size: 128, offset: 704)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2727, file: !2636, line: 154, baseType: !2658, size: 128, offset: 832)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2727, file: !2636, line: 164, baseType: !2668, size: 192, offset: 960)
!2746 = !{!2747, !2748}
!2747 = !DILocalVariable(name: "__path", arg: 1, scope: !2723, file: !2631, line: 502, type: !612)
!2748 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2723, file: !2631, line: 502, type: !2726)
!2749 = !DILocation(line: 0, scope: !2723)
!2750 = !DILocation(line: 504, column: 10, scope: !2723)
!2751 = !DILocation(line: 504, column: 3, scope: !2723)
!2752 = distinct !DISubprogram(name: "lstat64", scope: !2631, file: !2631, line: 509, type: !2724, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2753)
!2753 = !{!2754, !2755}
!2754 = !DILocalVariable(name: "__path", arg: 1, scope: !2752, file: !2631, line: 509, type: !612)
!2755 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2752, file: !2631, line: 509, type: !2726)
!2756 = !DILocation(line: 0, scope: !2752)
!2757 = !DILocation(line: 511, column: 10, scope: !2752)
!2758 = !DILocation(line: 511, column: 3, scope: !2752)
!2759 = distinct !DISubprogram(name: "fstat64", scope: !2631, file: !2631, line: 516, type: !2760, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2762)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{!607, !607, !2726}
!2762 = !{!2763, !2764}
!2763 = !DILocalVariable(name: "__fd", arg: 1, scope: !2759, file: !2631, line: 516, type: !607)
!2764 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2759, file: !2631, line: 516, type: !2726)
!2765 = !DILocation(line: 0, scope: !2759)
!2766 = !DILocation(line: 518, column: 10, scope: !2759)
!2767 = !DILocation(line: 518, column: 3, scope: !2759)
!2768 = distinct !DISubprogram(name: "fstatat64", scope: !2631, file: !2631, line: 523, type: !2769, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2771)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{!607, !607, !612, !2726, !607}
!2771 = !{!2772, !2773, !2774, !2775}
!2772 = !DILocalVariable(name: "__fd", arg: 1, scope: !2768, file: !2631, line: 523, type: !607)
!2773 = !DILocalVariable(name: "__filename", arg: 2, scope: !2768, file: !2631, line: 523, type: !612)
!2774 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2768, file: !2631, line: 523, type: !2726)
!2775 = !DILocalVariable(name: "__flag", arg: 4, scope: !2768, file: !2631, line: 523, type: !607)
!2776 = !DILocation(line: 0, scope: !2768)
!2777 = !DILocation(line: 526, column: 10, scope: !2768)
!2778 = !DILocation(line: 526, column: 3, scope: !2768)
!2779 = distinct !DISubprogram(name: "lto_new_extern_inline_states", scope: !3, file: !3, line: 62, type: !2146, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2356)
!2780 = !DILocation(line: 64, column: 26, scope: !2779)
!2781 = !DILocation(line: 64, column: 24, scope: !2779)
!2782 = !DILocation(line: 65, column: 1, scope: !2779)
!2783 = distinct !DISubprogram(name: "lto_delete_extern_inline_states", scope: !3, file: !3, line: 71, type: !2146, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2356)
!2784 = !DILocation(line: 73, column: 20, scope: !2783)
!2785 = !DILocation(line: 73, column: 3, scope: !2783)
!2786 = !DILocation(line: 74, column: 24, scope: !2783)
!2787 = !DILocation(line: 75, column: 1, scope: !2783)
!2788 = distinct !DISubprogram(name: "lto_force_functions_extern_inline", scope: !3, file: !3, line: 81, type: !2789, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2791)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{null, !1560}
!2791 = !{!2792}
!2792 = !DILocalVariable(name: "decls", arg: 1, scope: !2788, file: !3, line: 81, type: !1560)
!2793 = !DILocation(line: 0, scope: !2788)
!2794 = !DILocation(line: 83, column: 20, scope: !2788)
!2795 = !DILocation(line: 83, column: 3, scope: !2788)
!2796 = !DILocation(line: 84, column: 1, scope: !2788)
!2797 = distinct !DISubprogram(name: "lto_forced_extern_inline_p", scope: !3, file: !3, line: 90, type: !2798, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2800)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!606, !619}
!2800 = !{!2801}
!2801 = !DILocalVariable(name: "fn_decl", arg: 1, scope: !2797, file: !3, line: 90, type: !619)
!2802 = !DILocation(line: 0, scope: !2797)
!2803 = !DILocation(line: 92, column: 24, scope: !2797)
!2804 = !DILocation(line: 92, column: 46, scope: !2797)
!2805 = !DILocation(line: 92, column: 10, scope: !2797)
!2806 = !DILocation(line: 92, column: 3, scope: !2797)
!2807 = distinct !DISubprogram(name: "lto_hash_decl_slot_node", scope: !3, file: !3, line: 98, type: !1425, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2808)
!2808 = !{!2809, !2810}
!2809 = !DILocalVariable(name: "p", arg: 1, scope: !2807, file: !3, line: 98, type: !1428)
!2810 = !DILocalVariable(name: "ds", scope: !2807, file: !3, line: 100, type: !614)
!2811 = !DILocation(line: 0, scope: !2807)
!2812 = !DILocation(line: 105, column: 22, scope: !2807)
!2813 = !DILocation(line: 105, column: 10, scope: !2807)
!2814 = !DILocation(line: 105, column: 3, scope: !2807)
!2815 = distinct !DISubprogram(name: "lto_eq_decl_slot_node", scope: !3, file: !3, line: 112, type: !1433, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2816)
!2816 = !{!2817, !2818, !2819, !2820}
!2817 = !DILocalVariable(name: "p1", arg: 1, scope: !2815, file: !3, line: 112, type: !1428)
!2818 = !DILocalVariable(name: "p2", arg: 2, scope: !2815, file: !3, line: 112, type: !1428)
!2819 = !DILocalVariable(name: "ds1", scope: !2815, file: !3, line: 114, type: !614)
!2820 = !DILocalVariable(name: "ds2", scope: !2815, file: !3, line: 116, type: !614)
!2821 = !DILocation(line: 0, scope: !2815)
!2822 = !DILocation(line: 122, column: 15, scope: !2815)
!2823 = !DILocation(line: 122, column: 25, scope: !2815)
!2824 = !DILocation(line: 122, column: 17, scope: !2815)
!2825 = !DILocation(line: 122, column: 3, scope: !2815)
!2826 = distinct !DISubprogram(name: "lto_hash_type_slot_node", scope: !3, file: !3, line: 129, type: !1425, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2827)
!2827 = !{!2828, !2829}
!2828 = !DILocalVariable(name: "p", arg: 1, scope: !2826, file: !3, line: 129, type: !1428)
!2829 = !DILocalVariable(name: "ds", scope: !2826, file: !3, line: 131, type: !614)
!2830 = !DILocation(line: 0, scope: !2826)
!2831 = !DILocation(line: 132, column: 22, scope: !2826)
!2832 = !DILocation(line: 132, column: 3, scope: !2826)
!2833 = distinct !DISubprogram(name: "lto_eq_type_slot_node", scope: !3, file: !3, line: 139, type: !1433, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2834)
!2834 = !{!2835, !2836, !2837, !2838}
!2835 = !DILocalVariable(name: "p1", arg: 1, scope: !2833, file: !3, line: 139, type: !1428)
!2836 = !DILocalVariable(name: "p2", arg: 2, scope: !2833, file: !3, line: 139, type: !1428)
!2837 = !DILocalVariable(name: "ds1", scope: !2833, file: !3, line: 141, type: !614)
!2838 = !DILocalVariable(name: "ds2", scope: !2833, file: !3, line: 143, type: !614)
!2839 = !DILocation(line: 0, scope: !2833)
!2840 = !DILocation(line: 146, column: 10, scope: !2833)
!2841 = !DILocation(line: 146, column: 31, scope: !2833)
!2842 = !DILocation(line: 146, column: 28, scope: !2833)
!2843 = !DILocation(line: 146, column: 3, scope: !2833)
!2844 = distinct !DISubprogram(name: "lto_begin_section", scope: !3, file: !3, line: 172, type: !2845, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2847)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{null, !612, !606}
!2847 = !{!2848, !2849}
!2848 = !DILocalVariable(name: "name", arg: 1, scope: !2844, file: !3, line: 172, type: !612)
!2849 = !DILocalVariable(name: "compress", arg: 2, scope: !2844, file: !3, line: 172, type: !606)
!2850 = !DILocation(line: 0, scope: !2844)
!2851 = !DILocation(line: 174, column: 18, scope: !2844)
!2852 = !DILocation(line: 174, column: 3, scope: !2844)
!2853 = !DILocation(line: 177, column: 3, scope: !2844)
!2854 = distinct !DISubprogram(name: "lto_end_section", scope: !3, file: !3, line: 192, type: !2146, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2356)
!2855 = !DILocation(line: 201, column: 18, scope: !2854)
!2856 = !DILocation(line: 201, column: 3, scope: !2854)
!2857 = !DILocation(line: 202, column: 1, scope: !2854)
!2858 = distinct !DISubprogram(name: "lto_write_stream", scope: !3, file: !3, line: 209, type: !2859, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2861)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{null, !2303}
!2861 = !{!2862, !2863, !2864, !2865, !2866, !2870}
!2862 = !DILocalVariable(name: "obs", arg: 1, scope: !2858, file: !3, line: 209, type: !2303)
!2863 = !DILocalVariable(name: "block_size", scope: !2858, file: !3, line: 211, type: !7)
!2864 = !DILocalVariable(name: "block", scope: !2858, file: !3, line: 212, type: !2014)
!2865 = !DILocalVariable(name: "next_block", scope: !2858, file: !3, line: 213, type: !2014)
!2866 = !DILocalVariable(name: "base", scope: !2867, file: !3, line: 219, type: !612)
!2867 = distinct !DILexicalBlock(scope: !2868, file: !3, line: 218, column: 5)
!2868 = distinct !DILexicalBlock(scope: !2869, file: !3, line: 217, column: 3)
!2869 = distinct !DILexicalBlock(scope: !2858, file: !3, line: 217, column: 3)
!2870 = !DILocalVariable(name: "num_chars", scope: !2867, file: !3, line: 220, type: !7)
!2871 = !DILocation(line: 0, scope: !2858)
!2872 = !DILocation(line: 214, column: 13, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2858, file: !3, line: 214, column: 7)
!2874 = !DILocation(line: 214, column: 8, scope: !2873)
!2875 = !DILocation(line: 214, column: 7, scope: !2858)
!2876 = !DILocation(line: 0, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2867, file: !3, line: 226, column: 11)
!2878 = !DILocation(line: 217, column: 8, scope: !2869)
!2879 = !DILocation(line: 0, scope: !2869)
!2880 = !DILocation(line: 217, column: 3, scope: !2869)
!2881 = !DILocation(line: 219, column: 42, scope: !2867)
!2882 = !DILocation(line: 0, scope: !2867)
!2883 = !DILocation(line: 220, column: 43, scope: !2867)
!2884 = !DILocation(line: 225, column: 56, scope: !2867)
!2885 = !DILocation(line: 225, column: 20, scope: !2867)
!2886 = !DILocation(line: 226, column: 12, scope: !2877)
!2887 = !DILocation(line: 226, column: 11, scope: !2867)
!2888 = !DILocation(line: 227, column: 20, scope: !2877)
!2889 = !DILocation(line: 227, column: 12, scope: !2877)
!2890 = !DILocation(line: 227, column: 2, scope: !2877)
!2891 = !DILocation(line: 241, column: 17, scope: !2867)
!2892 = !DILocation(line: 241, column: 36, scope: !2867)
!2893 = !DILocation(line: 241, column: 2, scope: !2867)
!2894 = !DILocation(line: 242, column: 18, scope: !2867)
!2895 = !DILocation(line: 217, column: 3, scope: !2868)
!2896 = distinct !{!2896, !2880, !2897}
!2897 = !DILocation(line: 243, column: 5, scope: !2869)
!2898 = !DILocation(line: 244, column: 1, scope: !2858)
!2899 = distinct !DISubprogram(name: "lto_output_1_stream", scope: !3, file: !3, line: 292, type: !2900, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2902)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{null, !2303, !610}
!2902 = !{!2903, !2904}
!2903 = !DILocalVariable(name: "obs", arg: 1, scope: !2899, file: !3, line: 292, type: !2303)
!2904 = !DILocalVariable(name: "c", arg: 2, scope: !2899, file: !3, line: 292, type: !610)
!2905 = !DILocation(line: 0, scope: !2899)
!2906 = !DILocation(line: 295, column: 12, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2899, file: !3, line: 295, column: 7)
!2908 = !DILocation(line: 295, column: 26, scope: !2907)
!2909 = !DILocation(line: 295, column: 7, scope: !2899)
!2910 = !DILocation(line: 296, column: 5, scope: !2907)
!2911 = !DILocation(line: 299, column: 9, scope: !2899)
!2912 = !DILocation(line: 299, column: 25, scope: !2899)
!2913 = !DILocation(line: 300, column: 23, scope: !2899)
!2914 = !DILocation(line: 301, column: 8, scope: !2899)
!2915 = !DILocation(line: 301, column: 18, scope: !2899)
!2916 = !DILocation(line: 302, column: 21, scope: !2899)
!2917 = !DILocation(line: 303, column: 1, scope: !2899)
!2918 = distinct !DISubprogram(name: "append_block", scope: !3, file: !3, line: 250, type: !2859, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2919)
!2919 = !{!2920, !2921, !2922}
!2920 = !DILocalVariable(name: "obs", arg: 1, scope: !2918, file: !3, line: 250, type: !2303)
!2921 = !DILocalVariable(name: "new_block", scope: !2918, file: !3, line: 252, type: !2014)
!2922 = !DILocalVariable(name: "tptr", scope: !2923, file: !3, line: 266, type: !2014)
!2923 = distinct !DILexicalBlock(scope: !2924, file: !3, line: 265, column: 5)
!2924 = distinct !DILexicalBlock(scope: !2918, file: !3, line: 256, column: 7)
!2925 = !DILocation(line: 0, scope: !2918)
!2926 = !DILocation(line: 254, column: 3, scope: !2918)
!2927 = !DILocation(line: 256, column: 12, scope: !2924)
!2928 = !DILocation(line: 256, column: 24, scope: !2924)
!2929 = !DILocation(line: 0, scope: !2924)
!2930 = !DILocation(line: 256, column: 7, scope: !2918)
!2931 = !DILocation(line: 260, column: 23, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2924, file: !3, line: 257, column: 5)
!2933 = !DILocation(line: 261, column: 47, scope: !2932)
!2934 = !DILocation(line: 262, column: 24, scope: !2932)
!2935 = !DILocation(line: 263, column: 5, scope: !2932)
!2936 = !DILocation(line: 269, column: 23, scope: !2923)
!2937 = !DILocation(line: 270, column: 56, scope: !2923)
!2938 = !DILocation(line: 270, column: 47, scope: !2923)
!2939 = !DILocation(line: 274, column: 19, scope: !2923)
!2940 = !DILocation(line: 0, scope: !2923)
!2941 = !DILocation(line: 275, column: 13, scope: !2923)
!2942 = !DILocation(line: 275, column: 17, scope: !2923)
!2943 = !DILocation(line: 281, column: 28, scope: !2918)
!2944 = !DILocation(line: 280, column: 8, scope: !2918)
!2945 = !DILocation(line: 281, column: 5, scope: !2918)
!2946 = !DILocation(line: 282, column: 8, scope: !2918)
!2947 = !DILocation(line: 282, column: 22, scope: !2918)
!2948 = !DILocation(line: 284, column: 14, scope: !2918)
!2949 = !DILocation(line: 284, column: 18, scope: !2918)
!2950 = !DILocation(line: 285, column: 29, scope: !2918)
!2951 = !DILocation(line: 285, column: 40, scope: !2918)
!2952 = !DILocation(line: 285, column: 22, scope: !2918)
!2953 = !DILocation(line: 286, column: 1, scope: !2918)
!2954 = distinct !DISubprogram(name: "lto_output_data_stream", scope: !3, file: !3, line: 309, type: !2955, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2957)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{null, !2303, !1428, !1090}
!2957 = !{!2958, !2959, !2960, !2961}
!2958 = !DILocalVariable(name: "obs", arg: 1, scope: !2954, file: !3, line: 309, type: !2303)
!2959 = !DILocalVariable(name: "data", arg: 2, scope: !2954, file: !3, line: 309, type: !1428)
!2960 = !DILocalVariable(name: "len", arg: 3, scope: !2954, file: !3, line: 310, type: !1090)
!2961 = !DILocalVariable(name: "copy", scope: !2962, file: !3, line: 314, type: !1090)
!2962 = distinct !DILexicalBlock(scope: !2954, file: !3, line: 313, column: 5)
!2963 = !DILocation(line: 0, scope: !2954)
!2964 = !DILocation(line: 0, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2962, file: !3, line: 317, column: 11)
!2966 = !DILocation(line: 0, scope: !2962)
!2967 = !DILocation(line: 312, column: 3, scope: !2954)
!2968 = !DILocation(line: 317, column: 16, scope: !2965)
!2969 = !DILocation(line: 317, column: 30, scope: !2965)
!2970 = !DILocation(line: 317, column: 11, scope: !2962)
!2971 = !DILocation(line: 318, column: 2, scope: !2965)
!2972 = !DILocation(line: 321, column: 23, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2962, file: !3, line: 321, column: 11)
!2974 = !DILocation(line: 321, column: 18, scope: !2973)
!2975 = !DILocation(line: 321, column: 15, scope: !2973)
!2976 = !DILocation(line: 321, column: 11, scope: !2962)
!2977 = !DILocation(line: 0, scope: !2973)
!2978 = !DILocation(line: 327, column: 20, scope: !2962)
!2979 = !DILocation(line: 327, column: 7, scope: !2962)
!2980 = !DILocation(line: 328, column: 28, scope: !2962)
!2981 = !DILocation(line: 329, column: 23, scope: !2962)
!2982 = !DILocation(line: 330, column: 26, scope: !2962)
!2983 = !DILocation(line: 331, column: 34, scope: !2962)
!2984 = !DILocation(line: 332, column: 11, scope: !2962)
!2985 = distinct !{!2985, !2967, !2986}
!2986 = !DILocation(line: 333, column: 5, scope: !2954)
!2987 = !DILocation(line: 334, column: 1, scope: !2954)
!2988 = distinct !DISubprogram(name: "lto_output_uleb128_stream", scope: !3, file: !3, line: 340, type: !2989, scopeLine: 342, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2991)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{null, !2303, !673}
!2991 = !{!2992, !2993, !2994}
!2992 = !DILocalVariable(name: "obs", arg: 1, scope: !2988, file: !3, line: 340, type: !2303)
!2993 = !DILocalVariable(name: "work", arg: 2, scope: !2988, file: !3, line: 341, type: !673)
!2994 = !DILocalVariable(name: "byte", scope: !2995, file: !3, line: 345, type: !7)
!2995 = distinct !DILexicalBlock(scope: !2988, file: !3, line: 344, column: 5)
!2996 = !DILocation(line: 0, scope: !2988)
!2997 = !DILocation(line: 343, column: 3, scope: !2988)
!2998 = !DILocation(line: 345, column: 27, scope: !2995)
!2999 = !DILocation(line: 0, scope: !2995)
!3000 = !DILocation(line: 346, column: 12, scope: !2995)
!3001 = !DILocation(line: 347, column: 16, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2995, file: !3, line: 347, column: 11)
!3003 = !DILocation(line: 349, column: 7, scope: !3002)
!3004 = !DILocation(line: 347, column: 11, scope: !2995)
!3005 = !DILocation(line: 351, column: 33, scope: !2995)
!3006 = !DILocation(line: 351, column: 7, scope: !2995)
!3007 = !DILocation(line: 352, column: 5, scope: !2995)
!3008 = distinct !{!3008, !2997, !3009}
!3009 = !DILocation(line: 353, column: 19, scope: !2988)
!3010 = !DILocation(line: 354, column: 1, scope: !2988)
!3011 = distinct !DISubprogram(name: "lto_output_widest_uint_uleb128_stream", scope: !3, file: !3, line: 362, type: !2989, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3012)
!3012 = !{!3013, !3014, !3015}
!3013 = !DILocalVariable(name: "obs", arg: 1, scope: !3011, file: !3, line: 362, type: !2303)
!3014 = !DILocalVariable(name: "work", arg: 2, scope: !3011, file: !3, line: 363, type: !673)
!3015 = !DILocalVariable(name: "byte", scope: !3016, file: !3, line: 367, type: !7)
!3016 = distinct !DILexicalBlock(scope: !3011, file: !3, line: 366, column: 5)
!3017 = !DILocation(line: 0, scope: !3011)
!3018 = !DILocation(line: 365, column: 3, scope: !3011)
!3019 = !DILocation(line: 367, column: 27, scope: !3016)
!3020 = !DILocation(line: 0, scope: !3016)
!3021 = !DILocation(line: 368, column: 12, scope: !3016)
!3022 = !DILocation(line: 369, column: 16, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3016, file: !3, line: 369, column: 11)
!3024 = !DILocation(line: 371, column: 7, scope: !3023)
!3025 = !DILocation(line: 369, column: 11, scope: !3016)
!3026 = !DILocation(line: 373, column: 33, scope: !3016)
!3027 = !DILocation(line: 373, column: 7, scope: !3016)
!3028 = !DILocation(line: 374, column: 5, scope: !3016)
!3029 = distinct !{!3029, !3018, !3030}
!3030 = !DILocation(line: 375, column: 19, scope: !3011)
!3031 = !DILocation(line: 376, column: 1, scope: !3011)
!3032 = distinct !DISubprogram(name: "lto_output_sleb128_stream", scope: !3, file: !3, line: 382, type: !3033, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3035)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{null, !2303, !675}
!3035 = !{!3036, !3037, !3038, !3039}
!3036 = !DILocalVariable(name: "obs", arg: 1, scope: !3032, file: !3, line: 382, type: !2303)
!3037 = !DILocalVariable(name: "work", arg: 2, scope: !3032, file: !3, line: 382, type: !675)
!3038 = !DILocalVariable(name: "more", scope: !3032, file: !3, line: 384, type: !607)
!3039 = !DILocalVariable(name: "byte", scope: !3032, file: !3, line: 384, type: !607)
!3040 = !DILocation(line: 0, scope: !3032)
!3041 = !DILocation(line: 386, column: 3, scope: !3032)
!3042 = !DILocation(line: 388, column: 14, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !3032, file: !3, line: 387, column: 5)
!3044 = !DILocation(line: 390, column: 12, scope: !3043)
!3045 = !DILocation(line: 391, column: 22, scope: !3043)
!3046 = !DILocation(line: 391, column: 36, scope: !3043)
!3047 = !DILocation(line: 391, column: 44, scope: !3043)
!3048 = !DILocation(line: 391, column: 27, scope: !3043)
!3049 = !DILocation(line: 392, column: 18, scope: !3043)
!3050 = !DILocation(line: 392, column: 24, scope: !3043)
!3051 = !DILocation(line: 394, column: 7, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3043, file: !3, line: 393, column: 11)
!3053 = !DILocation(line: 393, column: 11, scope: !3043)
!3054 = !DILocation(line: 396, column: 33, scope: !3043)
!3055 = !DILocation(line: 396, column: 7, scope: !3043)
!3056 = !DILocation(line: 397, column: 5, scope: !3043)
!3057 = distinct !{!3057, !3041, !3058}
!3058 = !DILocation(line: 398, column: 14, scope: !3032)
!3059 = !DILocation(line: 399, column: 1, scope: !3032)
!3060 = distinct !DISubprogram(name: "lto_output_decl_index", scope: !3, file: !3, line: 410, type: !3061, scopeLine: 413, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3065)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!606, !2303, !3063, !619, !3064}
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!3065 = !{!3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3077}
!3066 = !DILocalVariable(name: "obs", arg: 1, scope: !3060, file: !3, line: 410, type: !2303)
!3067 = !DILocalVariable(name: "encoder", arg: 2, scope: !3060, file: !3, line: 411, type: !3063)
!3068 = !DILocalVariable(name: "name", arg: 3, scope: !3060, file: !3, line: 412, type: !619)
!3069 = !DILocalVariable(name: "this_index", arg: 4, scope: !3060, file: !3, line: 412, type: !3064)
!3070 = !DILocalVariable(name: "slot", scope: !3060, file: !3, line: 414, type: !1441)
!3071 = !DILocalVariable(name: "d_slot", scope: !3060, file: !3, line: 415, type: !616)
!3072 = !DILocalVariable(name: "index", scope: !3060, file: !3, line: 416, type: !607)
!3073 = !DILocalVariable(name: "new_entry_p", scope: !3060, file: !3, line: 417, type: !606)
!3074 = !DILocalVariable(name: "new_slot", scope: !3075, file: !3, line: 423, type: !2018)
!3075 = distinct !DILexicalBlock(scope: !3076, file: !3, line: 422, column: 5)
!3076 = distinct !DILexicalBlock(scope: !3060, file: !3, line: 421, column: 7)
!3077 = !DILocalVariable(name: "old_slot", scope: !3078, file: !3, line: 435, type: !2018)
!3078 = distinct !DILexicalBlock(scope: !3076, file: !3, line: 434, column: 5)
!3079 = !DILocation(line: 0, scope: !3060)
!3080 = !DILocation(line: 415, column: 3, scope: !3060)
!3081 = !DILocation(line: 419, column: 10, scope: !3060)
!3082 = !DILocation(line: 419, column: 12, scope: !3060)
!3083 = !DILocation(line: 420, column: 35, scope: !3060)
!3084 = !DILocation(line: 420, column: 10, scope: !3060)
!3085 = !DILocation(line: 421, column: 7, scope: !3076)
!3086 = !DILocation(line: 421, column: 13, scope: !3076)
!3087 = !DILocation(line: 421, column: 7, scope: !3060)
!3088 = !DILocation(line: 424, column: 29, scope: !3075)
!3089 = !DILocation(line: 0, scope: !3075)
!3090 = !DILocation(line: 425, column: 24, scope: !3075)
!3091 = !DILocation(line: 425, column: 34, scope: !3075)
!3092 = !DILocation(line: 427, column: 17, scope: !3075)
!3093 = !DILocation(line: 427, column: 19, scope: !3075)
!3094 = !DILocation(line: 428, column: 17, scope: !3075)
!3095 = !DILocation(line: 428, column: 26, scope: !3075)
!3096 = !DILocation(line: 429, column: 13, scope: !3075)
!3097 = !DILocation(line: 430, column: 7, scope: !3075)
!3098 = !DILocation(line: 432, column: 5, scope: !3075)
!3099 = !DILocation(line: 0, scope: !3078)
!3100 = !DILocation(line: 436, column: 25, scope: !3078)
!3101 = !DILocation(line: 0, scope: !3076)
!3102 = !DILocation(line: 439, column: 7, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3060, file: !3, line: 439, column: 7)
!3104 = !DILocation(line: 439, column: 7, scope: !3060)
!3105 = !DILocation(line: 440, column: 37, scope: !3103)
!3106 = !DILocation(line: 440, column: 5, scope: !3103)
!3107 = !DILocation(line: 441, column: 15, scope: !3060)
!3108 = !DILocation(line: 443, column: 1, scope: !3060)
!3109 = !DILocation(line: 442, column: 3, scope: !3060)
!3110 = distinct !DISubprogram(name: "VEC_tree_heap_safe_push", scope: !135, file: !135, line: 184, type: !3111, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3114)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!979, !3113, !619}
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!3114 = !{!3115, !3116}
!3115 = !DILocalVariable(name: "vec_", arg: 1, scope: !3110, file: !135, line: 184, type: !3113)
!3116 = !DILocalVariable(name: "obj_", arg: 2, scope: !3110, file: !135, line: 184, type: !619)
!3117 = !DILocation(line: 0, scope: !3110)
!3118 = !DILocation(line: 184, column: 1, scope: !3110)
!3119 = distinct !DISubprogram(name: "lto_output_field_decl_index", scope: !3, file: !3, line: 448, type: !3120, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3122)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{null, !2024, !2303, !619}
!3122 = !{!3123, !3124, !3125, !3126}
!3123 = !DILocalVariable(name: "decl_state", arg: 1, scope: !3119, file: !3, line: 448, type: !2024)
!3124 = !DILocalVariable(name: "obs", arg: 2, scope: !3119, file: !3, line: 449, type: !2303)
!3125 = !DILocalVariable(name: "decl", arg: 3, scope: !3119, file: !3, line: 449, type: !619)
!3126 = !DILocalVariable(name: "index", scope: !3119, file: !3, line: 451, type: !7)
!3127 = !DILocation(line: 0, scope: !3119)
!3128 = !DILocation(line: 451, column: 3, scope: !3119)
!3129 = !DILocation(line: 452, column: 32, scope: !3119)
!3130 = !DILocation(line: 452, column: 3, scope: !3119)
!3131 = !DILocation(line: 454, column: 1, scope: !3119)
!3132 = distinct !DISubprogram(name: "lto_output_fn_decl_index", scope: !3, file: !3, line: 459, type: !3120, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3133)
!3133 = !{!3134, !3135, !3136, !3137}
!3134 = !DILocalVariable(name: "decl_state", arg: 1, scope: !3132, file: !3, line: 459, type: !2024)
!3135 = !DILocalVariable(name: "obs", arg: 2, scope: !3132, file: !3, line: 460, type: !2303)
!3136 = !DILocalVariable(name: "decl", arg: 3, scope: !3132, file: !3, line: 460, type: !619)
!3137 = !DILocalVariable(name: "index", scope: !3132, file: !3, line: 462, type: !7)
!3138 = !DILocation(line: 0, scope: !3132)
!3139 = !DILocation(line: 462, column: 3, scope: !3132)
!3140 = !DILocation(line: 463, column: 32, scope: !3132)
!3141 = !DILocation(line: 463, column: 3, scope: !3132)
!3142 = !DILocation(line: 465, column: 1, scope: !3132)
!3143 = distinct !DISubprogram(name: "lto_output_namespace_decl_index", scope: !3, file: !3, line: 470, type: !3120, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3144)
!3144 = !{!3145, !3146, !3147, !3148}
!3145 = !DILocalVariable(name: "decl_state", arg: 1, scope: !3143, file: !3, line: 470, type: !2024)
!3146 = !DILocalVariable(name: "obs", arg: 2, scope: !3143, file: !3, line: 471, type: !2303)
!3147 = !DILocalVariable(name: "decl", arg: 3, scope: !3143, file: !3, line: 471, type: !619)
!3148 = !DILocalVariable(name: "index", scope: !3143, file: !3, line: 473, type: !7)
!3149 = !DILocation(line: 0, scope: !3143)
!3150 = !DILocation(line: 473, column: 3, scope: !3143)
!3151 = !DILocation(line: 475, column: 6, scope: !3143)
!3152 = !DILocation(line: 474, column: 3, scope: !3143)
!3153 = !DILocation(line: 477, column: 1, scope: !3143)
!3154 = distinct !DISubprogram(name: "lto_output_var_decl_index", scope: !3, file: !3, line: 482, type: !3120, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3155)
!3155 = !{!3156, !3157, !3158, !3159}
!3156 = !DILocalVariable(name: "decl_state", arg: 1, scope: !3154, file: !3, line: 482, type: !2024)
!3157 = !DILocalVariable(name: "obs", arg: 2, scope: !3154, file: !3, line: 483, type: !2303)
!3158 = !DILocalVariable(name: "decl", arg: 3, scope: !3154, file: !3, line: 483, type: !619)
!3159 = !DILocalVariable(name: "index", scope: !3154, file: !3, line: 485, type: !7)
!3160 = !DILocation(line: 0, scope: !3154)
!3161 = !DILocation(line: 485, column: 3, scope: !3154)
!3162 = !DILocation(line: 486, column: 32, scope: !3154)
!3163 = !DILocation(line: 486, column: 3, scope: !3154)
!3164 = !DILocation(line: 488, column: 1, scope: !3154)
!3165 = distinct !DISubprogram(name: "lto_output_type_decl_index", scope: !3, file: !3, line: 493, type: !3120, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3166)
!3166 = !{!3167, !3168, !3169, !3170}
!3167 = !DILocalVariable(name: "decl_state", arg: 1, scope: !3165, file: !3, line: 493, type: !2024)
!3168 = !DILocalVariable(name: "obs", arg: 2, scope: !3165, file: !3, line: 494, type: !2303)
!3169 = !DILocalVariable(name: "decl", arg: 3, scope: !3165, file: !3, line: 494, type: !619)
!3170 = !DILocalVariable(name: "index", scope: !3165, file: !3, line: 496, type: !7)
!3171 = !DILocation(line: 0, scope: !3165)
!3172 = !DILocation(line: 496, column: 3, scope: !3165)
!3173 = !DILocation(line: 497, column: 32, scope: !3165)
!3174 = !DILocation(line: 497, column: 3, scope: !3165)
!3175 = !DILocation(line: 499, column: 1, scope: !3165)
!3176 = distinct !DISubprogram(name: "lto_output_type_ref_index", scope: !3, file: !3, line: 504, type: !3120, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3177)
!3177 = !{!3178, !3179, !3180, !3181}
!3178 = !DILocalVariable(name: "decl_state", arg: 1, scope: !3176, file: !3, line: 504, type: !2024)
!3179 = !DILocalVariable(name: "obs", arg: 2, scope: !3176, file: !3, line: 505, type: !2303)
!3180 = !DILocalVariable(name: "ref", arg: 3, scope: !3176, file: !3, line: 505, type: !619)
!3181 = !DILocalVariable(name: "index", scope: !3176, file: !3, line: 507, type: !7)
!3182 = !DILocation(line: 0, scope: !3176)
!3183 = !DILocation(line: 507, column: 3, scope: !3176)
!3184 = !DILocation(line: 508, column: 32, scope: !3176)
!3185 = !DILocation(line: 508, column: 3, scope: !3176)
!3186 = !DILocation(line: 510, column: 1, scope: !3176)
!3187 = distinct !DISubprogram(name: "lto_create_simple_output_block", scope: !3, file: !3, line: 516, type: !3188, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3190)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!2019, !590}
!3190 = !{!3191, !3192}
!3191 = !DILocalVariable(name: "section_type", arg: 1, scope: !3187, file: !3, line: 516, type: !590)
!3192 = !DILocalVariable(name: "ob", scope: !3187, file: !3, line: 518, type: !2019)
!3193 = !DILocation(line: 0, scope: !3187)
!3194 = !DILocation(line: 520, column: 8, scope: !3187)
!3195 = !DILocation(line: 519, column: 8, scope: !3187)
!3196 = !DILocation(line: 522, column: 7, scope: !3187)
!3197 = !DILocation(line: 522, column: 20, scope: !3187)
!3198 = !DILocation(line: 523, column: 20, scope: !3187)
!3199 = !DILocation(line: 523, column: 7, scope: !3187)
!3200 = !DILocation(line: 523, column: 18, scope: !3187)
!3201 = !DILocation(line: 525, column: 8, scope: !3187)
!3202 = !DILocation(line: 524, column: 7, scope: !3187)
!3203 = !DILocation(line: 524, column: 19, scope: !3187)
!3204 = !DILocation(line: 527, column: 3, scope: !3187)
!3205 = distinct !DISubprogram(name: "lto_get_out_decl_state", scope: !3, file: !3, line: 619, type: !3206, scopeLine: 620, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2356)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!2024}
!3208 = !DILocation(line: 621, column: 10, scope: !3205)
!3209 = !DILocation(line: 621, column: 3, scope: !3205)
!3210 = distinct !DISubprogram(name: "lto_destroy_simple_output_block", scope: !3, file: !3, line: 534, type: !3211, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3213)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{null, !2019}
!3213 = !{!3214, !3215, !3216, !3233}
!3214 = !DILocalVariable(name: "ob", arg: 1, scope: !3210, file: !3, line: 534, type: !2019)
!3215 = !DILocalVariable(name: "section_name", scope: !3210, file: !3, line: 536, type: !609)
!3216 = !DILocalVariable(name: "header", scope: !3210, file: !3, line: 537, type: !3217)
!3217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_simple_header", file: !591, line: 600, size: 128, elements: !3218)
!3218 = !{!3219, !3229, !3232}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "lto_header", scope: !3217, file: !591, line: 603, baseType: !3220, size: 64)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_header", file: !591, line: 387, size: 64, elements: !3221)
!3221 = !{!3222, !3227, !3228}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "major_version", scope: !3220, file: !591, line: 389, baseType: !3223, size: 16)
!3223 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !3224, line: 25, baseType: !3225)
!3224 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!3225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !2390, line: 39, baseType: !3226)
!3226 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "minor_version", scope: !3220, file: !591, line: 390, baseType: !3223, size: 16, offset: 16)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "section_type", scope: !3220, file: !591, line: 391, baseType: !590, size: 32, offset: 32)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "main_size", scope: !3217, file: !591, line: 606, baseType: !3230, size: 32, offset: 64)
!3230 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !3224, line: 26, baseType: !3231)
!3231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !2390, line: 41, baseType: !607)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_size", scope: !3217, file: !591, line: 609, baseType: !3230, size: 32, offset: 96)
!3233 = !DILocalVariable(name: "header_stream", scope: !3210, file: !3, line: 538, type: !2303)
!3234 = !DILocation(line: 0, scope: !3210)
!3235 = !DILocation(line: 537, column: 3, scope: !3210)
!3236 = !DILocation(line: 540, column: 44, scope: !3210)
!3237 = !DILocation(line: 540, column: 18, scope: !3210)
!3238 = !DILocation(line: 541, column: 37, scope: !3210)
!3239 = !DILocation(line: 541, column: 36, scope: !3210)
!3240 = !DILocation(line: 541, column: 3, scope: !3210)
!3241 = !DILocation(line: 542, column: 3, scope: !3210)
!3242 = !DILocation(line: 546, column: 3, scope: !3210)
!3243 = !DILocation(line: 547, column: 21, scope: !3210)
!3244 = !DILocation(line: 547, column: 35, scope: !3210)
!3245 = !DILocation(line: 548, column: 21, scope: !3210)
!3246 = !DILocation(line: 548, column: 35, scope: !3210)
!3247 = !DILocation(line: 549, column: 21, scope: !3210)
!3248 = !DILocation(line: 549, column: 34, scope: !3210)
!3249 = !DILocation(line: 551, column: 10, scope: !3210)
!3250 = !DILocation(line: 551, column: 26, scope: !3210)
!3251 = !DILocation(line: 553, column: 26, scope: !3210)
!3252 = !DILocation(line: 553, column: 39, scope: !3210)
!3253 = !DILocation(line: 553, column: 10, scope: !3210)
!3254 = !DILocation(line: 553, column: 20, scope: !3210)
!3255 = !DILocation(line: 555, column: 19, scope: !3210)
!3256 = !DILocation(line: 556, column: 3, scope: !3210)
!3257 = !DILocation(line: 557, column: 3, scope: !3210)
!3258 = !DILocation(line: 558, column: 3, scope: !3210)
!3259 = !DILocation(line: 560, column: 25, scope: !3210)
!3260 = !DILocation(line: 560, column: 3, scope: !3210)
!3261 = !DILocation(line: 564, column: 3, scope: !3210)
!3262 = !DILocation(line: 566, column: 13, scope: !3210)
!3263 = !DILocation(line: 566, column: 3, scope: !3210)
!3264 = !DILocation(line: 567, column: 9, scope: !3210)
!3265 = !DILocation(line: 567, column: 3, scope: !3210)
!3266 = !DILocation(line: 568, column: 1, scope: !3210)
!3267 = distinct !DISubprogram(name: "lto_new_out_decl_state", scope: !3, file: !3, line: 574, type: !3206, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3268)
!3268 = !{!3269, !3270, !3271, !3272}
!3269 = !DILocalVariable(name: "state", scope: !3267, file: !3, line: 576, type: !2024)
!3270 = !DILocalVariable(name: "i", scope: !3267, file: !3, line: 577, type: !607)
!3271 = !DILocalVariable(name: "hash_fn", scope: !3267, file: !3, line: 578, type: !1423)
!3272 = !DILocalVariable(name: "eq_fn", scope: !3267, file: !3, line: 579, type: !1431)
!3273 = !DILocation(line: 576, column: 38, scope: !3267)
!3274 = !DILocation(line: 0, scope: !3267)
!3275 = !DILocation(line: 0, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3277, file: !3, line: 582, column: 5)
!3277 = distinct !DILexicalBlock(scope: !3278, file: !3, line: 581, column: 3)
!3278 = distinct !DILexicalBlock(scope: !3267, file: !3, line: 581, column: 3)
!3279 = !DILocation(line: 581, column: 8, scope: !3278)
!3280 = !DILocation(line: 0, scope: !3278)
!3281 = !DILocation(line: 581, column: 17, scope: !3277)
!3282 = !DILocation(line: 581, column: 3, scope: !3278)
!3283 = !DILocation(line: 583, column: 13, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3276, file: !3, line: 583, column: 11)
!3285 = !DILocation(line: 593, column: 35, scope: !3276)
!3286 = !DILocation(line: 593, column: 7, scope: !3276)
!3287 = !DILocation(line: 581, column: 40, scope: !3277)
!3288 = !DILocation(line: 581, column: 3, scope: !3277)
!3289 = distinct !{!3289, !3282, !3290}
!3290 = !DILocation(line: 594, column: 5, scope: !3278)
!3291 = !DILocation(line: 596, column: 32, scope: !3267)
!3292 = !DILocation(line: 596, column: 10, scope: !3267)
!3293 = !DILocation(line: 596, column: 30, scope: !3267)
!3294 = !DILocation(line: 598, column: 3, scope: !3267)
!3295 = distinct !DISubprogram(name: "lto_init_tree_ref_encoder", scope: !591, file: !591, line: 964, type: !3296, scopeLine: 966, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3298)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{null, !3063, !1423, !1431}
!3298 = !{!3299, !3300, !3301}
!3299 = !DILocalVariable(name: "encoder", arg: 1, scope: !3295, file: !591, line: 964, type: !3063)
!3300 = !DILocalVariable(name: "hash_fn", arg: 2, scope: !3295, file: !591, line: 965, type: !1423)
!3301 = !DILocalVariable(name: "eq_fn", arg: 3, scope: !3295, file: !591, line: 965, type: !1431)
!3302 = !DILocation(line: 0, scope: !3295)
!3303 = !DILocation(line: 967, column: 30, scope: !3295)
!3304 = !DILocation(line: 967, column: 12, scope: !3295)
!3305 = !DILocation(line: 967, column: 28, scope: !3295)
!3306 = !DILocation(line: 968, column: 12, scope: !3295)
!3307 = !DILocation(line: 968, column: 23, scope: !3295)
!3308 = !DILocation(line: 969, column: 12, scope: !3295)
!3309 = !DILocation(line: 969, column: 18, scope: !3295)
!3310 = !DILocation(line: 970, column: 1, scope: !3295)
!3311 = distinct !DISubprogram(name: "lto_delete_out_decl_state", scope: !3, file: !3, line: 605, type: !3312, scopeLine: 606, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3314)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{null, !2024}
!3314 = !{!3315, !3316}
!3315 = !DILocalVariable(name: "state", arg: 1, scope: !3311, file: !3, line: 605, type: !2024)
!3316 = !DILocalVariable(name: "i", scope: !3311, file: !3, line: 607, type: !607)
!3317 = !DILocation(line: 0, scope: !3311)
!3318 = !DILocation(line: 609, column: 8, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3311, file: !3, line: 609, column: 3)
!3320 = !DILocation(line: 0, scope: !3319)
!3321 = !DILocation(line: 609, column: 17, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3319, file: !3, line: 609, column: 3)
!3323 = !DILocation(line: 609, column: 3, scope: !3319)
!3324 = !DILocation(line: 610, column: 36, scope: !3322)
!3325 = !DILocation(line: 610, column: 5, scope: !3322)
!3326 = !DILocation(line: 609, column: 40, scope: !3322)
!3327 = !DILocation(line: 609, column: 3, scope: !3322)
!3328 = distinct !{!3328, !3323, !3329}
!3329 = !DILocation(line: 610, column: 53, scope: !3319)
!3330 = !DILocation(line: 612, column: 9, scope: !3311)
!3331 = !DILocation(line: 612, column: 3, scope: !3311)
!3332 = !DILocation(line: 613, column: 1, scope: !3311)
!3333 = distinct !DISubprogram(name: "lto_destroy_tree_ref_encoder", scope: !591, file: !591, line: 976, type: !3334, scopeLine: 977, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3336)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{null, !3063}
!3336 = !{!3337}
!3337 = !DILocalVariable(name: "encoder", arg: 1, scope: !3333, file: !591, line: 976, type: !3063)
!3338 = !DILocation(line: 0, scope: !3333)
!3339 = !DILocation(line: 979, column: 16, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3333, file: !591, line: 979, column: 7)
!3341 = !DILocation(line: 979, column: 7, scope: !3340)
!3342 = !DILocation(line: 979, column: 7, scope: !3333)
!3343 = !DILocation(line: 980, column: 5, scope: !3340)
!3344 = !DILocation(line: 981, column: 3, scope: !3333)
!3345 = !DILocation(line: 982, column: 1, scope: !3333)
!3346 = distinct !DISubprogram(name: "VEC_lto_out_decl_state_ptr_base_last", scope: !591, file: !591, line: 533, type: !3347, scopeLine: 533, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3351)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{!2324, !3349}
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2317)
!3351 = !{!3352}
!3352 = !DILocalVariable(name: "vec_", arg: 1, scope: !3346, file: !591, line: 533, type: !3349)
!3353 = !DILocation(line: 0, scope: !3346)
!3354 = !DILocation(line: 533, column: 1, scope: !3346)
!3355 = distinct !DISubprogram(name: "lto_push_out_decl_state", scope: !3, file: !3, line: 627, type: !3312, scopeLine: 628, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3356)
!3356 = !{!3357}
!3357 = !DILocalVariable(name: "state", arg: 1, scope: !3355, file: !3, line: 627, type: !2024)
!3358 = !DILocation(line: 0, scope: !3355)
!3359 = !DILocation(line: 629, column: 3, scope: !3355)
!3360 = !DILocation(line: 630, column: 1, scope: !3355)
!3361 = distinct !DISubprogram(name: "VEC_lto_out_decl_state_ptr_heap_safe_push", scope: !591, file: !591, line: 534, type: !3362, scopeLine: 534, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3366)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!3364, !3365, !2324}
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!3366 = !{!3367, !3368}
!3367 = !DILocalVariable(name: "vec_", arg: 1, scope: !3361, file: !591, line: 534, type: !3365)
!3368 = !DILocalVariable(name: "obj_", arg: 2, scope: !3361, file: !591, line: 534, type: !2324)
!3369 = !DILocation(line: 0, scope: !3361)
!3370 = !DILocation(line: 534, column: 1, scope: !3361)
!3371 = distinct !DISubprogram(name: "lto_pop_out_decl_state", scope: !3, file: !3, line: 635, type: !3206, scopeLine: 636, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2356)
!3372 = !DILocation(line: 637, column: 10, scope: !3371)
!3373 = !DILocation(line: 637, column: 3, scope: !3371)
!3374 = distinct !DISubprogram(name: "VEC_lto_out_decl_state_ptr_base_pop", scope: !591, file: !591, line: 533, type: !3375, scopeLine: 533, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3378)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!2324, !3377}
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!3378 = !{!3379, !3380}
!3379 = !DILocalVariable(name: "vec_", arg: 1, scope: !3374, file: !591, line: 533, type: !3377)
!3380 = !DILocalVariable(name: "obj_", scope: !3374, file: !591, line: 533, type: !2324)
!3381 = !DILocation(line: 0, scope: !3374)
!3382 = !DILocation(line: 533, column: 1, scope: !3374)
!3383 = distinct !DISubprogram(name: "lto_record_function_out_decl_state", scope: !3, file: !3, line: 645, type: !3384, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3386)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{null, !619, !2024}
!3386 = !{!3387, !3388, !3389}
!3387 = !DILocalVariable(name: "fn_decl", arg: 1, scope: !3383, file: !3, line: 645, type: !619)
!3388 = !DILocalVariable(name: "state", arg: 2, scope: !3383, file: !3, line: 646, type: !2024)
!3389 = !DILocalVariable(name: "i", scope: !3383, file: !3, line: 648, type: !607)
!3390 = !DILocation(line: 0, scope: !3383)
!3391 = !DILocation(line: 651, column: 8, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3383, file: !3, line: 651, column: 3)
!3393 = !DILocation(line: 0, scope: !3392)
!3394 = !DILocation(line: 651, column: 17, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3392, file: !3, line: 651, column: 3)
!3396 = !DILocation(line: 651, column: 3, scope: !3392)
!3397 = !DILocation(line: 652, column: 27, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3395, file: !3, line: 652, column: 9)
!3399 = !DILocation(line: 652, column: 9, scope: !3398)
!3400 = !DILocation(line: 652, column: 9, scope: !3395)
!3401 = !DILocation(line: 654, column: 2, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3398, file: !3, line: 653, column: 7)
!3403 = !DILocation(line: 655, column: 36, scope: !3402)
!3404 = !DILocation(line: 656, column: 7, scope: !3402)
!3405 = !DILocation(line: 651, column: 40, scope: !3395)
!3406 = !DILocation(line: 651, column: 3, scope: !3395)
!3407 = distinct !{!3407, !3396, !3408}
!3408 = !DILocation(line: 656, column: 7, scope: !3392)
!3409 = !DILocation(line: 657, column: 10, scope: !3383)
!3410 = !DILocation(line: 657, column: 18, scope: !3383)
!3411 = !DILocation(line: 658, column: 3, scope: !3383)
!3412 = !DILocation(line: 660, column: 1, scope: !3383)
!3413 = distinct !DISubprogram(name: "VEC_tree_heap_reserve", scope: !135, file: !135, line: 184, type: !3414, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3416)
!3414 = !DISubroutineType(types: !3415)
!3415 = !{!607, !3113, !607}
!3416 = !{!3417, !3418, !3419}
!3417 = !DILocalVariable(name: "vec_", arg: 1, scope: !3413, file: !135, line: 184, type: !3113)
!3418 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3413, file: !135, line: 184, type: !607)
!3419 = !DILocalVariable(name: "extend", scope: !3413, file: !135, line: 184, type: !607)
!3420 = !DILocation(line: 0, scope: !3413)
!3421 = !DILocation(line: 184, column: 1, scope: !3413)
!3422 = !DILocation(line: 184, column: 1, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3413, file: !135, line: 184, column: 1)
!3424 = distinct !DISubprogram(name: "VEC_tree_base_quick_push", scope: !135, file: !135, line: 182, type: !3425, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3428)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!979, !3427, !619}
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!3428 = !{!3429, !3430, !3431}
!3429 = !DILocalVariable(name: "vec_", arg: 1, scope: !3424, file: !135, line: 182, type: !3427)
!3430 = !DILocalVariable(name: "obj_", arg: 2, scope: !3424, file: !135, line: 182, type: !619)
!3431 = !DILocalVariable(name: "slot_", scope: !3424, file: !135, line: 182, type: !979)
!3432 = !DILocation(line: 0, scope: !3424)
!3433 = !DILocation(line: 182, column: 1, scope: !3424)
!3434 = distinct !DISubprogram(name: "VEC_tree_base_space", scope: !135, file: !135, line: 182, type: !3435, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3437)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!607, !3427, !607}
!3437 = !{!3438, !3439}
!3438 = !DILocalVariable(name: "vec_", arg: 1, scope: !3434, file: !135, line: 182, type: !3427)
!3439 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3434, file: !135, line: 182, type: !607)
!3440 = !DILocation(line: 0, scope: !3434)
!3441 = !DILocation(line: 182, column: 1, scope: !3434)
!3442 = distinct !DISubprogram(name: "VEC_tree_heap_free", scope: !135, file: !135, line: 184, type: !3443, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3445)
!3443 = !DISubroutineType(types: !3444)
!3444 = !{null, !3113}
!3445 = !{!3446}
!3446 = !DILocalVariable(name: "vec_", arg: 1, scope: !3442, file: !135, line: 184, type: !3113)
!3447 = !DILocation(line: 0, scope: !3442)
!3448 = !DILocation(line: 184, column: 1, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3442, file: !135, line: 184, column: 1)
!3450 = !DILocation(line: 184, column: 1, scope: !3442)
!3451 = distinct !DISubprogram(name: "VEC_lto_out_decl_state_ptr_heap_reserve", scope: !591, file: !591, line: 534, type: !3452, scopeLine: 534, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3454)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!607, !3365, !607}
!3454 = !{!3455, !3456, !3457}
!3455 = !DILocalVariable(name: "vec_", arg: 1, scope: !3451, file: !591, line: 534, type: !3365)
!3456 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3451, file: !591, line: 534, type: !607)
!3457 = !DILocalVariable(name: "extend", scope: !3451, file: !591, line: 534, type: !607)
!3458 = !DILocation(line: 0, scope: !3451)
!3459 = !DILocation(line: 534, column: 1, scope: !3451)
!3460 = !DILocation(line: 534, column: 1, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3451, file: !591, line: 534, column: 1)
!3462 = distinct !DISubprogram(name: "VEC_lto_out_decl_state_ptr_base_quick_push", scope: !591, file: !591, line: 533, type: !3463, scopeLine: 533, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3465)
!3463 = !DISubroutineType(types: !3464)
!3464 = !{!3364, !3377, !2324}
!3465 = !{!3466, !3467, !3468}
!3466 = !DILocalVariable(name: "vec_", arg: 1, scope: !3462, file: !591, line: 533, type: !3377)
!3467 = !DILocalVariable(name: "obj_", arg: 2, scope: !3462, file: !591, line: 533, type: !2324)
!3468 = !DILocalVariable(name: "slot_", scope: !3462, file: !591, line: 533, type: !3364)
!3469 = !DILocation(line: 0, scope: !3462)
!3470 = !DILocation(line: 533, column: 1, scope: !3462)
!3471 = distinct !DISubprogram(name: "VEC_lto_out_decl_state_ptr_base_space", scope: !591, file: !591, line: 533, type: !3472, scopeLine: 533, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3474)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!607, !3377, !607}
!3474 = !{!3475, !3476}
!3475 = !DILocalVariable(name: "vec_", arg: 1, scope: !3471, file: !591, line: 533, type: !3377)
!3476 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3471, file: !591, line: 533, type: !607)
!3477 = !DILocation(line: 0, scope: !3471)
!3478 = !DILocation(line: 533, column: 1, scope: !3471)
