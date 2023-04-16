; ModuleID = 'lto-opts.bc'
source_filename = "lto-opts.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.VEC_opt_t_heap = type { %struct.VEC_opt_t_base }
%struct.VEC_opt_t_base = type { i32, i32, [1 x %struct.opt_d] }
%struct.opt_d = type { i32, i64, i8*, i32 }
%struct.cl_option = type { i8*, i8*, i16, i8, i32, i32, i8*, i32, i32 }
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %struct.vectorize, i32, void ()*, i8 (i64, i8*, i32)*, void ()*, i32 ()*, i32 ()*, i32 ()*, i32 ()*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %struct.attribute_spec*, i32 (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*, %union.tree_node**)*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, i8 ()*, i8 ()*, i8 ()*, i8 ()*, void ()*, %union.tree_node* (i32, i8)*, %struct.rtx_def* (%union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, i32)*, %union.tree_node* (i32, %union.tree_node*, i8*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, i8)*, %union.tree_node* (i32, i8, i8)*, i8* (%union.tree_node*)*, void ()*, i32 (%union.tree_node*, i8*, i32)*, i8 ()*, i32 ()*, i8 (i8)*, i8 ()*, i8 (%struct.rtx_def*)*, i8 (%struct.rtx_def*)*, i8 (%struct.rtx_def*, i32)*, %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*, i32)*, %struct.rtx_def* (%struct.rtx_def*)*, i8 (i32, %struct.rtx_def*, i8)*, i8 (i32, %struct.rtx_def*)*, i64, i64, i8 (%struct.rtx_def*)*, i8 (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*, %struct.rtx_def*, i32)*, i8* (i8*)*, i64 (i32)*, i32 (i32)*, i32 (i32, i32)*, i8 (i32)*, %struct.addr_space, i8 (i32)*, i8 (i32)*, i8 (%struct.rtx_def*, i32, i32, i32*, i8)*, i32 (%struct.rtx_def*, i8)*, %struct.rtx_def* (%struct.rtx_def*)*, i32 (%struct.rtx_def*, i32)*, %struct.rtx_def* (%struct.rtx_def*)*, void (%union.tree_node*)*, i8 (i32*, i32*)*, i32 (i32, i32)*, void ()*, %union.tree_node* ()*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void (%union.tree_node*, %struct.rtx_def*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %struct.gimple_seq_d**, %struct.gimple_seq_d**)*, i8* (i64*)*, i8* (i8*, i64)*, i8* (i32)*, i8 ()*, %struct.rtx_def* ()*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, i32 (%union.tree_node*)*, void (i8*, %struct.rtx_def*, i32)*, i8 (%struct.stdarg_info*, %union.gimple_statement_d*)*, %union.tree_node* ()*, %union.tree_node* ()*, i8* (%struct.rtx_def*)*, i8 (%union.tree_node*)*, i64, %struct.calls, i8* (%union.tree_node*, %union.tree_node*)*, i8* (i32, %union.tree_node*)*, i8* (i32, %union.tree_node*, %union.tree_node*)*, i8* (%union.tree_node*)*, i8* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, i32* ()*, i32 (i8, %struct.rtx_def*, i32, i32, %struct.secondary_reload_info*)*, void ()*, void ()*, i8 (i32)*, i32 ()*, i8 ()*, i8 (i32, i32)*, %struct.c, %struct.cxx, %struct.emutls, %struct.target_option_hooks, void (%struct.bitmap_head_def*)*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asm_out = type { i8*, i8*, i8*, %struct.asm_int_op, %struct.asm_int_op, i8 (%struct.rtx_def*, i32, i32)*, void (%struct._IO_FILE*, i8*)*, void (%struct._IO_FILE*, %union.tree_node*)*, void (%struct._IO_FILE*, %union.tree_node*, i32, i32)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*, %struct.rtx_def*)*, void (%struct._IO_FILE*, i8*, i64)*, i8 (%struct.rtx_def*)*, void (%union.tree_node*, i32)*, void (%struct._IO_FILE*, i64)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*, i64)*, void ()*, void (i8*, i32, %union.tree_node*)*, i32 ()*, %union.section* (%union.tree_node*, i32, i64)*, %union.section* (i32, %struct.rtx_def*, i64)*, void (%union.tree_node*, i32)*, %union.section* (%union.tree_node*)*, void (%struct.rtx_def*, i32)*, void (%struct.rtx_def*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i64, i64, %union.tree_node*)*, i8 (%union.tree_node*, i64, i64, %union.tree_node*)*, void ()*, void ()*, void ()*, void (%struct.rtx_def*)*, void (i8*)*, i32 (i32, i8*)*, i8*, void (%struct.rtx_def*)*, void (%struct._IO_FILE*, i32, %struct.rtx_def*)*, void (%struct._IO_FILE*, %struct.rtx_def*, %struct.rtx_def**, i32)*, void (%struct._IO_FILE*)* }
%struct.asm_int_op = type { i8*, i8*, i8*, i8* }
%struct.rtx_def = type opaque
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
%struct.gimple_df = type opaque
%struct.loops = type opaque
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%union.section = type opaque
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
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, %struct.bitmap_obstack* }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.bitmap_obstack = type { %struct.bitmap_element_def*, %struct.bitmap_head_def*, %struct.obstack }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.lto_output_stream = type { %struct.lto_char_ptr_base*, %struct.lto_char_ptr_base*, i8*, i32, i32, i32 }
%struct.lto_char_ptr_base = type { i8* }
%struct.lto_simple_header = type { %struct.lto_header, i32, i32 }
%struct.lto_header = type { i16, i16, i32 }
%struct.lto_file_decl_data = type { %struct.lto_in_decl_state*, %struct.lto_in_decl_state*, %struct.lto_cgraph_encoder_d*, %struct.htab*, i8*, i8, %struct.htab*, %struct.htab* }
%struct.lto_in_decl_state = type { [7 x %struct.lto_tree_ref_table], %union.tree_node* }
%struct.lto_tree_ref_table = type { %union.tree_node**, i32 }
%struct.lto_cgraph_encoder_d = type { %struct.pointer_map_t*, %struct.VEC_cgraph_node_ptr_heap* }
%struct.pointer_map_t = type opaque
%struct.VEC_cgraph_node_ptr_heap = type { %struct.VEC_cgraph_node_ptr_base }
%struct.VEC_cgraph_node_ptr_base = type { i32, i32, [1 x %struct.cgraph_node*] }
%struct.cgraph_node = type { %union.tree_node*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.htab*, i8*, %struct.VEC_ipa_opt_pass_heap*, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_edge = type { i64, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_edge*, %union.gimple_statement_d*, i8*, i32, i32, i32, i32, i16, i8 }
%struct.VEC_ipa_opt_pass_heap = type { %struct.VEC_ipa_opt_pass_base }
%struct.VEC_ipa_opt_pass_base = type { i32, i32, [1 x %struct.ipa_opt_pass_d*] }
%struct.ipa_opt_pass_d = type opaque
%struct.cgraph_local_info = type { %struct.lto_file_decl_data*, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, %struct.cgraph_node*, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { %struct.VEC_ipa_replace_map_p_gc*, %struct.bitmap_head_def*, %struct.bitmap_head_def* }
%struct.VEC_ipa_replace_map_p_gc = type { %struct.VEC_ipa_replace_map_p_base }
%struct.VEC_ipa_replace_map_p_base = type { i32, i32, [1 x %struct.ipa_replace_map*] }
%struct.ipa_replace_map = type { %union.tree_node*, %union.tree_node*, i8, i8 }
%struct.cgraph_thunk_info = type { i64, i64, %union.tree_node*, i8, i8, i8 }
%struct.lto_input_block = type { i8*, i32, i32 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@user_options = internal global %struct.VEC_opt_t_heap* null, align 8, !dbg !0
@file_options = internal global %struct.VEC_opt_t_heap* null, align 8, !dbg !361
@flag_wpa = external dso_local local_unnamed_addr global i32, align 4
@cl_options = external dso_local constant [0 x %struct.cl_option], align 8
@targetm = external dso_local local_unnamed_addr global %struct.gcc_target, align 8
@.str = private unnamed_addr constant [11 x i8] c"lto-opts.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !367 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !380, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !381, metadata !DIExpression()), !dbg !382
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !383
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !384
  ret i32 %call, !dbg !385
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !386 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !390
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !391
  ret i32 %call, !dbg !392
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !393 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !450, metadata !DIExpression()), !dbg !451
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !452
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !452
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !452
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !452
  %cmp = icmp uge i8* %0, %1, !dbg !452
  %conv1 = zext i1 %cmp to i64, !dbg !452
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !452
  %tobool = icmp eq i64 %expval, 0, !dbg !452
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !452

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !452
  br label %cond.end, !dbg !452

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !452
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !452
  %2 = load i8, i8* %0, align 1, !dbg !452
  %conv3 = zext i8 %2 to i32, !dbg !452
  br label %cond.end, !dbg !452

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !452
  ret i32 %cond, !dbg !453
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !454 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !456, metadata !DIExpression()), !dbg !457
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !458
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !458
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !458
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !458
  %cmp = icmp uge i8* %0, %1, !dbg !458
  %conv1 = zext i1 %cmp to i64, !dbg !458
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !458
  %tobool = icmp eq i64 %expval, 0, !dbg !458
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !458

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !458
  br label %cond.end, !dbg !458

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !458
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !458
  %2 = load i8, i8* %0, align 1, !dbg !458
  %conv3 = zext i8 %2 to i32, !dbg !458
  br label %cond.end, !dbg !458

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !458
  ret i32 %cond, !dbg !459
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !460 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !461
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !461
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !461
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !461
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !461
  %cmp = icmp uge i8* %1, %2, !dbg !461
  %conv1 = zext i1 %cmp to i64, !dbg !461
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !461
  %tobool = icmp eq i64 %expval, 0, !dbg !461
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !461

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !461
  br label %cond.end, !dbg !461

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !461
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !461
  %3 = load i8, i8* %1, align 1, !dbg !461
  %conv3 = zext i8 %3 to i32, !dbg !461
  br label %cond.end, !dbg !461

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !461
  ret i32 %cond, !dbg !462
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !463 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !467, metadata !DIExpression()), !dbg !468
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !469
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !470
  ret i32 %call, !dbg !471
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !472 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !476, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !477, metadata !DIExpression()), !dbg !478
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !479
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !479
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !479
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !479
  %cmp = icmp uge i8* %0, %1, !dbg !479
  %conv1 = zext i1 %cmp to i64, !dbg !479
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !479
  %tobool = icmp eq i64 %expval, 0, !dbg !479
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !479

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !479
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !479
  br label %cond.end, !dbg !479

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !479
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !479
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !479
  store i8 %conv2, i8* %0, align 1, !dbg !479
  %conv6 = and i32 %__c, 255, !dbg !479
  br label %cond.end, !dbg !479

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !479
  ret i32 %cond, !dbg !480
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !481 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !483, metadata !DIExpression()), !dbg !485
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !484, metadata !DIExpression()), !dbg !485
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !486
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !486
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !486
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !486
  %cmp = icmp uge i8* %0, %1, !dbg !486
  %conv1 = zext i1 %cmp to i64, !dbg !486
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !486
  %tobool = icmp eq i64 %expval, 0, !dbg !486
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !486

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !486
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !486
  br label %cond.end, !dbg !486

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !486
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !486
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !486
  store i8 %conv2, i8* %0, align 1, !dbg !486
  %conv6 = and i32 %__c, 255, !dbg !486
  br label %cond.end, !dbg !486

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !486
  ret i32 %cond, !dbg !487
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !488 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !490, metadata !DIExpression()), !dbg !491
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !492
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !492
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !492
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !492
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !492
  %cmp = icmp uge i8* %1, %2, !dbg !492
  %conv1 = zext i1 %cmp to i64, !dbg !492
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !492
  %tobool = icmp eq i64 %expval, 0, !dbg !492
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !492

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !492
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !492
  br label %cond.end, !dbg !492

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !492
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !492
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !492
  store i8 %conv4, i8* %1, align 1, !dbg !492
  %conv6 = and i32 %__c, 255, !dbg !492
  br label %cond.end, !dbg !492

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !492
  ret i32 %cond, !dbg !493
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !494 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !500, metadata !DIExpression()), !dbg !503
  call void @llvm.dbg.value(metadata i64* %__n, metadata !501, metadata !DIExpression()), !dbg !503
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !502, metadata !DIExpression()), !dbg !503
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !504
  ret i64 %call, !dbg !505
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !506 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !508, metadata !DIExpression()), !dbg !509
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !510
  %0 = load i32, i32* %_flags, align 8, !dbg !510
  %and = lshr i32 %0, 4, !dbg !510
  %and.lobit = and i32 %and, 1, !dbg !510
  ret i32 %and.lobit, !dbg !511
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !512 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !514, metadata !DIExpression()), !dbg !515
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !516
  %0 = load i32, i32* %_flags, align 8, !dbg !516
  %and = lshr i32 %0, 5, !dbg !516
  %and.lobit = and i32 %and, 1, !dbg !516
  ret i32 %and.lobit, !dbg !517
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !518 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !521, metadata !DIExpression()), !dbg !522
  %__c.off = add i32 %__c, 128, !dbg !523
  %0 = icmp ult i32 %__c.off, 384, !dbg !523
  br i1 %0, label %cond.true, label %cond.end, !dbg !523

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !524
  %1 = load i32*, i32** %call, align 8, !dbg !525
  %idxprom = sext i32 %__c to i64, !dbg !526
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !526
  %2 = load i32, i32* %arrayidx, align 4, !dbg !526
  br label %cond.end, !dbg !527

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !527
  ret i32 %cond, !dbg !528
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !529 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !531, metadata !DIExpression()), !dbg !532
  %__c.off = add i32 %__c, 128, !dbg !533
  %0 = icmp ult i32 %__c.off, 384, !dbg !533
  br i1 %0, label %cond.true, label %cond.end, !dbg !533

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !534
  %1 = load i32*, i32** %call, align 8, !dbg !535
  %idxprom = sext i32 %__c to i64, !dbg !536
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !536
  %2 = load i32, i32* %arrayidx, align 4, !dbg !536
  br label %cond.end, !dbg !537

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !537
  ret i32 %cond, !dbg !538
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !539 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !544, metadata !DIExpression()), !dbg !545
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !546
  %conv = trunc i64 %call to i32, !dbg !547
  ret i32 %conv, !dbg !548
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !549 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !553, metadata !DIExpression()), !dbg !554
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !555
  ret i64 %call, !dbg !556
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !557 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !562, metadata !DIExpression()), !dbg !563
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !564
  ret i64 %call, !dbg !565
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !566 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !577, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i8* %__base, metadata !578, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !579, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 %__size, metadata !580, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !581, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 0, metadata !582, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !583, metadata !DIExpression()), !dbg !587
  br label %while.cond, !dbg !588

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !589
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !587
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !583, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !582, metadata !DIExpression()), !dbg !587
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !590
  br i1 %cmp, label %while.body, label %cleanup, !dbg !588

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !591
  %div = lshr i64 %add, 1, !dbg !593
  call void @llvm.dbg.value(metadata i64 %div, metadata !584, metadata !DIExpression()), !dbg !587
  %mul = mul i64 %div, %__size, !dbg !594
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !595
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !585, metadata !DIExpression()), !dbg !587
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !596
  call void @llvm.dbg.value(metadata i32 %call, metadata !586, metadata !DIExpression()), !dbg !587
  %cmp1 = icmp slt i32 %call, 0, !dbg !597
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !599

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !600
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !602

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !603
  call void @llvm.dbg.value(metadata i64 %add4, metadata !582, metadata !DIExpression()), !dbg !587
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !587
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !587
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !583, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !582, metadata !DIExpression()), !dbg !587
  br label %while.cond, !dbg !588, !llvm.loop !604

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !587
  ret i8* %retval.0, !dbg !606
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !607 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !613, metadata !DIExpression()), !dbg !614
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !615
  ret double %call, !dbg !616
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !617 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !626, metadata !DIExpression()), !dbg !629
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !627, metadata !DIExpression()), !dbg !629
  call void @llvm.dbg.value(metadata i32 %base, metadata !628, metadata !DIExpression()), !dbg !629
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !630
  ret i64 %call, !dbg !631
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !632 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !638, metadata !DIExpression()), !dbg !641
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !639, metadata !DIExpression()), !dbg !641
  call void @llvm.dbg.value(metadata i32 %base, metadata !640, metadata !DIExpression()), !dbg !641
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !642
  ret i64 %call, !dbg !643
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !644 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !655, metadata !DIExpression()), !dbg !658
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !656, metadata !DIExpression()), !dbg !658
  call void @llvm.dbg.value(metadata i32 %base, metadata !657, metadata !DIExpression()), !dbg !658
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !659
  ret i64 %call, !dbg !660
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !661 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !665, metadata !DIExpression()), !dbg !668
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !666, metadata !DIExpression()), !dbg !668
  call void @llvm.dbg.value(metadata i32 %base, metadata !667, metadata !DIExpression()), !dbg !668
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !669
  ret i64 %call, !dbg !670
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !671 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !713, metadata !DIExpression()), !dbg !715
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !714, metadata !DIExpression()), !dbg !715
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !716
  ret i32 %call, !dbg !717
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !718 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !720, metadata !DIExpression()), !dbg !722
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !721, metadata !DIExpression()), !dbg !722
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !723
  ret i32 %call, !dbg !724
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !725 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !729, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !730, metadata !DIExpression()), !dbg !731
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !732
  ret i32 %call, !dbg !733
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !734 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !738, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !739, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !740, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !741, metadata !DIExpression()), !dbg !742
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !743
  ret i32 %call, !dbg !744
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !745 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !749, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !750, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !751, metadata !DIExpression()), !dbg !752
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !751, metadata !DIExpression(DW_OP_deref)), !dbg !752
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !753
  ret i32 %call, !dbg !754
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !755 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !759, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.value(metadata i8* %__path, metadata !760, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !761, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !762, metadata !DIExpression()), !dbg !763
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !762, metadata !DIExpression(DW_OP_deref)), !dbg !763
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !764
  ret i32 %call, !dbg !765
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !766 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !790, metadata !DIExpression()), !dbg !792
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !791, metadata !DIExpression()), !dbg !792
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !793
  ret i32 %call, !dbg !794
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !795 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !797, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !798, metadata !DIExpression()), !dbg !799
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !800
  ret i32 %call, !dbg !801
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !802 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !806, metadata !DIExpression()), !dbg !808
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !807, metadata !DIExpression()), !dbg !808
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !809
  ret i32 %call, !dbg !810
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !811 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !815, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !816, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !818, metadata !DIExpression()), !dbg !819
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !820
  ret i32 %call, !dbg !821
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @lto_register_user_option(i64 %code, i8* %arg, i32 %value, i32 %type) local_unnamed_addr #4 !dbg !822 {
entry:
  %o = alloca %struct.opt_d, align 8
  call void @llvm.dbg.value(metadata i64 %code, metadata !826, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.value(metadata i8* %arg, metadata !827, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.value(metadata i32 %value, metadata !828, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.value(metadata i32 %type, metadata !829, metadata !DIExpression()), !dbg !833
  %call = tail call fastcc zeroext i8 @register_user_option_p(i64 %code, i32 %type) #7, !dbg !834
  %tobool = icmp eq i8 %call, 0, !dbg !834
  br i1 %tobool, label %if.end12, label %if.then, !dbg !835

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.opt_d* %o to i8*, !dbg !836
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #8, !dbg !836
  %type1 = getelementptr inbounds %struct.opt_d, %struct.opt_d* %o, i64 0, i32 0, !dbg !837
  store i32 %type, i32* %type1, align 8, !dbg !838
  %code2 = getelementptr inbounds %struct.opt_d, %struct.opt_d* %o, i64 0, i32 1, !dbg !839
  store i64 %code, i64* %code2, align 8, !dbg !840
  %cmp = icmp eq i8* %arg, null, !dbg !841
  br i1 %cmp, label %if.else, label %if.then3, !dbg !843

if.then3:                                         ; preds = %if.then
  %call4 = tail call i64 @strlen(i8* nonnull %arg) #6, !dbg !844
  %add = add i64 %call4, 1, !dbg !846
  %call5 = tail call i8* @xmalloc(i64 %add) #6, !dbg !847
  %arg6 = getelementptr inbounds %struct.opt_d, %struct.opt_d* %o, i64 0, i32 2, !dbg !848
  store i8* %call5, i8** %arg6, align 8, !dbg !849
  %call8 = tail call i8* @strcpy(i8* %call5, i8* nonnull %arg) #6, !dbg !850
  br label %if.end, !dbg !851

if.else:                                          ; preds = %if.then
  %arg9 = getelementptr inbounds %struct.opt_d, %struct.opt_d* %o, i64 0, i32 2, !dbg !852
  store i8* null, i8** %arg9, align 8, !dbg !853
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  %value10 = getelementptr inbounds %struct.opt_d, %struct.opt_d* %o, i64 0, i32 3, !dbg !854
  store i32 %value, i32* %value10, align 8, !dbg !855
  call void @llvm.dbg.value(metadata %struct.opt_d* %o, metadata !830, metadata !DIExpression(DW_OP_deref)), !dbg !856
  %call11 = call fastcc %struct.opt_d* @VEC_opt_t_heap_safe_push(%struct.VEC_opt_t_heap** nonnull @user_options, %struct.opt_d* nonnull %o) #7, !dbg !857
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #8, !dbg !858
  br label %if.end12, !dbg !859

if.end12:                                         ; preds = %entry, %if.end
  ret void, !dbg !860
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @register_user_option_p(i64 %code, i32 %type) unnamed_addr #4 !dbg !861 {
entry:
  call void @llvm.dbg.value(metadata i64 %code, metadata !865, metadata !DIExpression()), !dbg !867
  call void @llvm.dbg.value(metadata i32 %type, metadata !866, metadata !DIExpression()), !dbg !867
  switch i32 %type, label %if.end12 [
    i32 1048576, label %return
    i32 2097152, label %if.then2
  ], !dbg !868

if.then2:                                         ; preds = %entry
  switch i64 %code, label %lor.rhs [
    i64 248, label %lor.end
    i64 526, label %lor.end
    i64 249, label %lor.end
    i64 527, label %lor.end
    i64 301, label %lor.end
    i64 368, label %lor.end
  ], !dbg !869

lor.rhs:                                          ; preds = %if.then2
  br label %lor.end, !dbg !873

lor.end:                                          ; preds = %if.then2, %if.then2, %if.then2, %if.then2, %if.then2, %if.then2, %lor.rhs
  %0 = phi i8 [ 1, %if.then2 ], [ 0, %lor.rhs ], [ 1, %if.then2 ], [ 1, %if.then2 ], [ 1, %if.then2 ], [ 1, %if.then2 ], [ 1, %if.then2 ]
  br label %return, !dbg !874

if.end12:                                         ; preds = %entry
  br label %return, !dbg !875

return:                                           ; preds = %entry, %if.end12, %lor.end
  %retval.0 = phi i8 [ %0, %lor.end ], [ 0, %if.end12 ], [ 1, %entry ], !dbg !867
  ret i8 %retval.0, !dbg !876
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

declare dso_local i8* @strcpy(i8*, i8*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.opt_d* @VEC_opt_t_heap_safe_push(%struct.VEC_opt_t_heap** %vec_, %struct.opt_d* %obj_) unnamed_addr #0 !dbg !877 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_opt_t_heap** %vec_, metadata !885, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata %struct.opt_d* %obj_, metadata !886, metadata !DIExpression()), !dbg !887
  %call = tail call fastcc i32 @VEC_opt_t_heap_reserve(%struct.VEC_opt_t_heap** %vec_, i32 1) #7, !dbg !888
  %0 = load %struct.VEC_opt_t_heap*, %struct.VEC_opt_t_heap** %vec_, align 8, !dbg !888
  %tobool = icmp eq %struct.VEC_opt_t_heap* %0, null, !dbg !888
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !888

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_opt_t_heap, %struct.VEC_opt_t_heap* %0, i64 0, i32 0, !dbg !888
  br label %cond.end, !dbg !888

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_opt_t_base* [ %base, %cond.true ], [ null, %entry ], !dbg !888
  %call1 = tail call fastcc %struct.opt_d* @VEC_opt_t_base_quick_push(%struct.VEC_opt_t_base* %cond, %struct.opt_d* %obj_) #7, !dbg !888
  ret %struct.opt_d* %call1, !dbg !888
}

; Function Attrs: nounwind uwtable
define dso_local void @lto_clear_user_options() local_unnamed_addr #4 !dbg !889 {
entry:
  tail call fastcc void @clear_options(%struct.VEC_opt_t_heap** nonnull @user_options) #7, !dbg !892
  ret void, !dbg !893
}

; Function Attrs: nounwind uwtable
define internal fastcc void @clear_options(%struct.VEC_opt_t_heap** %opts_p) unnamed_addr #4 !dbg !894 {
entry:
  %o = alloca %struct.opt_d*, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_opt_t_heap** %opts_p, metadata !898, metadata !DIExpression()), !dbg !901
  %0 = bitcast %struct.opt_d** %o to i8*, !dbg !902
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !902
  call void @llvm.dbg.value(metadata i32 0, metadata !899, metadata !DIExpression()), !dbg !901
  br label %for.cond, !dbg !903

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !905
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !899, metadata !DIExpression()), !dbg !901
  %1 = load %struct.VEC_opt_t_heap*, %struct.VEC_opt_t_heap** %opts_p, align 8, !dbg !906
  %tobool = icmp eq %struct.VEC_opt_t_heap* %1, null, !dbg !906
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !906

cond.true:                                        ; preds = %for.cond
  %base = getelementptr inbounds %struct.VEC_opt_t_heap, %struct.VEC_opt_t_heap* %1, i64 0, i32 0, !dbg !906
  br label %cond.end, !dbg !906

cond.end:                                         ; preds = %for.cond, %cond.true
  %cond = phi %struct.VEC_opt_t_base* [ %base, %cond.true ], [ null, %for.cond ], !dbg !906
  call void @llvm.dbg.value(metadata %struct.opt_d** %o, metadata !900, metadata !DIExpression(DW_OP_deref)), !dbg !901
  %call = call fastcc i32 @VEC_opt_t_base_iterate(%struct.VEC_opt_t_base* %cond, i32 %i.0, %struct.opt_d** nonnull %o) #7, !dbg !906
  %tobool1 = icmp eq i32 %call, 0, !dbg !908
  br i1 %tobool1, label %for.end, label %for.body, !dbg !908

for.body:                                         ; preds = %cond.end
  %2 = load %struct.opt_d*, %struct.opt_d** %o, align 8, !dbg !909
  call void @llvm.dbg.value(metadata %struct.opt_d* %2, metadata !900, metadata !DIExpression()), !dbg !901
  %arg = getelementptr inbounds %struct.opt_d, %struct.opt_d* %2, i64 0, i32 2, !dbg !910
  %3 = load i8*, i8** %arg, align 8, !dbg !910
  call void @free(i8* %3) #6, !dbg !911
  %inc = add nuw nsw i32 %i.0, 1, !dbg !912
  call void @llvm.dbg.value(metadata i32 %inc, metadata !899, metadata !DIExpression()), !dbg !901
  br label %for.cond, !dbg !913, !llvm.loop !914

for.end:                                          ; preds = %cond.end
  call fastcc void @VEC_opt_t_heap_free(%struct.VEC_opt_t_heap** %opts_p) #7, !dbg !916
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !917
  ret void, !dbg !917
}

; Function Attrs: nounwind uwtable
define dso_local void @lto_clear_file_options() local_unnamed_addr #4 !dbg !918 {
entry:
  tail call fastcc void @clear_options(%struct.VEC_opt_t_heap** nonnull @file_options) #7, !dbg !919
  ret void, !dbg !920
}

; Function Attrs: nounwind uwtable
define dso_local void @lto_write_options() local_unnamed_addr #4 !dbg !921 {
entry:
  %stream = alloca %struct.lto_output_stream, align 8
  %header = alloca %struct.lto_simple_header, align 4
  %call = tail call i8* @lto_get_section_name(i32 9, i8* null) #6, !dbg !928
  call void @llvm.dbg.value(metadata i8* %call, metadata !923, metadata !DIExpression()), !dbg !929
  %0 = bitcast %struct.lto_output_stream* %stream to i8*, !dbg !930
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #8, !dbg !930
  %1 = bitcast %struct.lto_simple_header* %header to i8*, !dbg !931
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !931
  %2 = load i32, i32* @flag_wpa, align 4, !dbg !932
  %tobool = icmp eq i32 %2, 0, !dbg !933
  %conv = zext i1 %tobool to i8, !dbg !933
  tail call void @lto_begin_section(i8* %call, i8 zeroext %conv) #6, !dbg !934
  tail call void @free(i8* %call) #6, !dbg !935
  %call1 = call i8* @memset(i8* nonnull %0, i32 0, i64 40) #6, !dbg !936
  call void @llvm.dbg.value(metadata %struct.lto_output_stream* %stream, metadata !925, metadata !DIExpression(DW_OP_deref)), !dbg !929
  call fastcc void @output_options(%struct.lto_output_stream* nonnull %stream) #7, !dbg !937
  %call2 = call i8* @memset(i8* nonnull %1, i32 0, i64 16) #6, !dbg !938
  %major_version = getelementptr inbounds %struct.lto_simple_header, %struct.lto_simple_header* %header, i64 0, i32 0, i32 0, !dbg !939
  store i16 1, i16* %major_version, align 4, !dbg !940
  %minor_version = getelementptr inbounds %struct.lto_simple_header, %struct.lto_simple_header* %header, i64 0, i32 0, i32 1, !dbg !941
  store i16 0, i16* %minor_version, align 2, !dbg !942
  %section_type = getelementptr inbounds %struct.lto_simple_header, %struct.lto_simple_header* %header, i64 0, i32 0, i32 2, !dbg !943
  store i32 9, i32* %section_type, align 4, !dbg !944
  %compressed_size = getelementptr inbounds %struct.lto_simple_header, %struct.lto_simple_header* %header, i64 0, i32 2, !dbg !945
  store i32 0, i32* %compressed_size, align 4, !dbg !946
  %total_size = getelementptr inbounds %struct.lto_output_stream, %struct.lto_output_stream* %stream, i64 0, i32 5, !dbg !947
  %3 = load i32, i32* %total_size, align 8, !dbg !947
  %main_size = getelementptr inbounds %struct.lto_simple_header, %struct.lto_simple_header* %header, i64 0, i32 1, !dbg !948
  store i32 %3, i32* %main_size, align 4, !dbg !949
  %call5 = call i8* @xcalloc(i64 1, i64 40) #6, !dbg !950
  %4 = bitcast i8* %call5 to %struct.lto_output_stream*, !dbg !951
  call void @llvm.dbg.value(metadata %struct.lto_output_stream* %4, metadata !927, metadata !DIExpression()), !dbg !929
  call void @lto_output_data_stream(%struct.lto_output_stream* %4, i8* nonnull %1, i64 16) #6, !dbg !952
  call void @lto_write_stream(%struct.lto_output_stream* %4) #6, !dbg !953
  call void @free(i8* %call5) #6, !dbg !954
  call void @llvm.dbg.value(metadata %struct.lto_output_stream* %stream, metadata !925, metadata !DIExpression(DW_OP_deref)), !dbg !929
  call void @lto_write_stream(%struct.lto_output_stream* nonnull %stream) #6, !dbg !955
  call void @lto_end_section() #6, !dbg !956
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !957
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #8, !dbg !957
  ret void, !dbg !957
}

declare dso_local i8* @lto_get_section_name(i32, i8*) local_unnamed_addr #1

declare dso_local void @lto_begin_section(i8*, i8 zeroext) local_unnamed_addr #1

declare dso_local void @free(i8*) local_unnamed_addr #1

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @output_options(%struct.lto_output_stream* %stream) unnamed_addr #4 !dbg !958 {
entry:
  %opts = alloca %struct.VEC_opt_t_heap*, align 8
  %length = alloca i64, align 8
  %o = alloca %struct.opt_d*, align 8
  call void @llvm.dbg.value(metadata %struct.lto_output_stream* %stream, metadata !962, metadata !DIExpression()), !dbg !968
  %0 = bitcast %struct.VEC_opt_t_heap** %opts to i8*, !dbg !969
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !969
  %1 = load %struct.VEC_opt_t_heap*, %struct.VEC_opt_t_heap** @file_options, align 8, !dbg !970
  %2 = load %struct.VEC_opt_t_heap*, %struct.VEC_opt_t_heap** @user_options, align 8, !dbg !971
  %call = tail call fastcc %struct.VEC_opt_t_heap* @concatenate_options(%struct.VEC_opt_t_heap* %1, %struct.VEC_opt_t_heap* %2) #7, !dbg !972
  call void @llvm.dbg.value(metadata %struct.VEC_opt_t_heap* %call, metadata !963, metadata !DIExpression()), !dbg !968
  store %struct.VEC_opt_t_heap* %call, %struct.VEC_opt_t_heap** %opts, align 8, !dbg !973
  %3 = bitcast i64* %length to i8*, !dbg !974
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8, !dbg !974
  call void @llvm.dbg.value(metadata %struct.VEC_opt_t_heap* %call, metadata !963, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata %struct.VEC_opt_t_heap* %call, metadata !963, metadata !DIExpression()), !dbg !968
  %base = getelementptr inbounds %struct.VEC_opt_t_heap, %struct.VEC_opt_t_heap* %call, i64 0, i32 0, !dbg !975
  %call1 = tail call fastcc i32 @VEC_opt_t_base_length(%struct.VEC_opt_t_base* %base) #7, !dbg !975
  %conv = zext i32 %call1 to i64, !dbg !975
  call void @llvm.dbg.value(metadata i64 %conv, metadata !964, metadata !DIExpression()), !dbg !968
  store i64 %conv, i64* %length, align 8, !dbg !976
  %4 = bitcast %struct.opt_d** %o to i8*, !dbg !977
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #8, !dbg !977
  call fastcc void @output_data_stream(%struct.lto_output_stream* %stream, i8* nonnull %3, i64 8) #7, !dbg !978
  call void @llvm.dbg.value(metadata i32 0, metadata !966, metadata !DIExpression()), !dbg !968
  %5 = bitcast %struct.opt_d** %o to i8**, !dbg !979
  br label %for.cond, !dbg !983

for.cond:                                         ; preds = %for.body, %entry
  %6 = phi %struct.VEC_opt_t_heap* [ %call, %entry ], [ %.pre, %for.body ], !dbg !984
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !985
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !966, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata %struct.VEC_opt_t_heap* %6, metadata !963, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata %struct.VEC_opt_t_heap* %6, metadata !963, metadata !DIExpression()), !dbg !968
  %base4 = getelementptr inbounds %struct.VEC_opt_t_heap, %struct.VEC_opt_t_heap* %6, i64 0, i32 0, !dbg !984
  call void @llvm.dbg.value(metadata %struct.opt_d** %o, metadata !967, metadata !DIExpression(DW_OP_deref)), !dbg !968
  %call8 = call fastcc i32 @VEC_opt_t_base_iterate(%struct.VEC_opt_t_base* %base4, i32 %i.0, %struct.opt_d** nonnull %o) #7, !dbg !984
  %tobool9 = icmp eq i32 %call8, 0, !dbg !986
  br i1 %tobool9, label %for.end, label %for.body, !dbg !986

for.body:                                         ; preds = %for.cond
  %7 = load i8*, i8** %5, align 8, !dbg !987
  call fastcc void @output_data_stream(%struct.lto_output_stream* %stream, i8* %7, i64 4) #7, !dbg !988
  %8 = load %struct.opt_d*, %struct.opt_d** %o, align 8, !dbg !989
  call void @llvm.dbg.value(metadata %struct.opt_d* %8, metadata !967, metadata !DIExpression()), !dbg !968
  %code = getelementptr inbounds %struct.opt_d, %struct.opt_d* %8, i64 0, i32 1, !dbg !990
  %9 = bitcast i64* %code to i8*, !dbg !991
  call fastcc void @output_data_stream(%struct.lto_output_stream* %stream, i8* nonnull %9, i64 8) #7, !dbg !992
  %10 = load %struct.opt_d*, %struct.opt_d** %o, align 8, !dbg !993
  call void @llvm.dbg.value(metadata %struct.opt_d* %10, metadata !967, metadata !DIExpression()), !dbg !968
  %arg = getelementptr inbounds %struct.opt_d, %struct.opt_d* %10, i64 0, i32 2, !dbg !994
  %11 = load i8*, i8** %arg, align 8, !dbg !994
  call fastcc void @output_string_stream(%struct.lto_output_stream* %stream, i8* %11) #7, !dbg !995
  %12 = load %struct.opt_d*, %struct.opt_d** %o, align 8, !dbg !996
  call void @llvm.dbg.value(metadata %struct.opt_d* %12, metadata !967, metadata !DIExpression()), !dbg !968
  %value = getelementptr inbounds %struct.opt_d, %struct.opt_d* %12, i64 0, i32 3, !dbg !997
  %13 = bitcast i32* %value to i8*, !dbg !998
  call fastcc void @output_data_stream(%struct.lto_output_stream* %stream, i8* nonnull %13, i64 4) #7, !dbg !999
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1000
  call void @llvm.dbg.value(metadata i32 %inc, metadata !966, metadata !DIExpression()), !dbg !968
  %.pre = load %struct.VEC_opt_t_heap*, %struct.VEC_opt_t_heap** %opts, align 8, !dbg !984
  br label %for.cond, !dbg !1001, !llvm.loop !1002

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.VEC_opt_t_heap** %opts, metadata !963, metadata !DIExpression(DW_OP_deref)), !dbg !968
  call fastcc void @VEC_opt_t_heap_free(%struct.VEC_opt_t_heap** nonnull %opts) #7, !dbg !1004
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #8, !dbg !1005
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8, !dbg !1005
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !1005
  ret void, !dbg !1005
}

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #1

declare dso_local void @lto_output_data_stream(%struct.lto_output_stream*, i8*, i64) local_unnamed_addr #1

declare dso_local void @lto_write_stream(%struct.lto_output_stream*) local_unnamed_addr #1

declare dso_local void @lto_end_section() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @lto_read_file_options(%struct.lto_file_decl_data* %file_data) local_unnamed_addr #4 !dbg !1006 {
entry:
  %len = alloca i64, align 8
  %ib = alloca %struct.lto_input_block, align 8
  call void @llvm.dbg.value(metadata %struct.lto_file_decl_data* %file_data, metadata !2295, metadata !DIExpression()), !dbg !2306
  %0 = bitcast i64* %len to i8*, !dbg !2307
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2307
  %1 = bitcast %struct.lto_input_block* %ib to i8*, !dbg !2308
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2308
  call void @llvm.dbg.value(metadata i64* %len, metadata !2296, metadata !DIExpression(DW_OP_deref)), !dbg !2306
  %call = call i8* @lto_get_section_data(%struct.lto_file_decl_data* %file_data, i32 9, i8* null, i64* nonnull %len) #6, !dbg !2309
  call void @llvm.dbg.value(metadata i8* %call, metadata !2297, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i8* %call, metadata !2298, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i32 16, metadata !2299, metadata !DIExpression()), !dbg !2306
  %major_version = bitcast i8* %call to i16*, !dbg !2310
  %2 = load i16, i16* %major_version, align 4, !dbg !2310
  %conv = sext i16 %2 to i32, !dbg !2311
  %minor_version = getelementptr inbounds i8, i8* %call, i64 2, !dbg !2312
  %3 = bitcast i8* %minor_version to i16*, !dbg !2312
  %4 = load i16, i16* %3, align 2, !dbg !2312
  %conv2 = sext i16 %4 to i32, !dbg !2313
  call void @lto_check_version(i32 %conv, i32 %conv2) #6, !dbg !2314
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 16, !dbg !2315
  %data3 = getelementptr inbounds %struct.lto_input_block, %struct.lto_input_block* %ib, i64 0, i32 0, !dbg !2315
  store i8* %add.ptr, i8** %data3, align 8, !dbg !2315
  %p = getelementptr inbounds %struct.lto_input_block, %struct.lto_input_block* %ib, i64 0, i32 1, !dbg !2315
  store i32 0, i32* %p, align 8, !dbg !2315
  %main_size = getelementptr inbounds i8, i8* %call, i64 8, !dbg !2315
  %5 = bitcast i8* %main_size to i32*, !dbg !2315
  %6 = load i32, i32* %5, align 4, !dbg !2315
  %len4 = getelementptr inbounds %struct.lto_input_block, %struct.lto_input_block* %ib, i64 0, i32 2, !dbg !2315
  store i32 %6, i32* %len4, align 4, !dbg !2315
  call void @llvm.dbg.value(metadata %struct.lto_input_block* %ib, metadata !2300, metadata !DIExpression(DW_OP_deref)), !dbg !2306
  call fastcc void @input_options(%struct.lto_input_block* nonnull %ib) #7, !dbg !2317
  %7 = load i64, i64* %len, align 8, !dbg !2318
  call void @llvm.dbg.value(metadata i64 %7, metadata !2296, metadata !DIExpression()), !dbg !2306
  call void @lto_free_section_data(%struct.lto_file_decl_data* %file_data, i32 9, i8* null, i8* %call, i64 %7) #6, !dbg !2319
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2320
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2320
  ret void, !dbg !2320
}

declare dso_local i8* @lto_get_section_data(%struct.lto_file_decl_data*, i32, i8*, i64*) local_unnamed_addr #1

declare dso_local void @lto_check_version(i32, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @input_options(%struct.lto_input_block* %ib) unnamed_addr #4 !dbg !2321 {
entry:
  %length = alloca i64, align 8
  %o = alloca %struct.opt_d, align 8
  call void @llvm.dbg.value(metadata %struct.lto_input_block* %ib, metadata !2326, metadata !DIExpression()), !dbg !2333
  %0 = bitcast i64* %length to i8*, !dbg !2334
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2334
  call fastcc void @input_data_block(%struct.lto_input_block* %ib, i8* nonnull %0, i64 8) #7, !dbg !2335
  call void @llvm.dbg.value(metadata i64 0, metadata !2328, metadata !DIExpression()), !dbg !2333
  %1 = bitcast %struct.opt_d* %o to i8*, !dbg !2336
  %code = getelementptr inbounds %struct.opt_d, %struct.opt_d* %o, i64 0, i32 1, !dbg !2336
  %2 = bitcast i64* %code to i8*, !dbg !2336
  %arg = getelementptr inbounds %struct.opt_d, %struct.opt_d* %o, i64 0, i32 2, !dbg !2336
  %value = getelementptr inbounds %struct.opt_d, %struct.opt_d* %o, i64 0, i32 3, !dbg !2336
  %3 = bitcast i32* %value to i8*, !dbg !2336
  br label %for.cond, !dbg !2337

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i64 [ 0, %entry ], [ %inc, %for.body ], !dbg !2338
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !2328, metadata !DIExpression()), !dbg !2333
  %4 = load i64, i64* %length, align 8, !dbg !2339
  call void @llvm.dbg.value(metadata i64 %4, metadata !2327, metadata !DIExpression()), !dbg !2333
  %cmp = icmp ult i64 %i.0, %4, !dbg !2340
  br i1 %cmp, label %for.body, label %for.end, !dbg !2341

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #8, !dbg !2342
  call fastcc void @input_data_block(%struct.lto_input_block* %ib, i8* nonnull %1, i64 4) #7, !dbg !2343
  call fastcc void @input_data_block(%struct.lto_input_block* %ib, i8* nonnull %2, i64 8) #7, !dbg !2344
  %call = call fastcc i8* @input_string_block(%struct.lto_input_block* %ib) #7, !dbg !2345
  store i8* %call, i8** %arg, align 8, !dbg !2346
  call fastcc void @input_data_block(%struct.lto_input_block* %ib, i8* nonnull %3, i64 4) #7, !dbg !2347
  call void @llvm.dbg.value(metadata %struct.opt_d* %o, metadata !2329, metadata !DIExpression(DW_OP_deref)), !dbg !2336
  %call1 = call fastcc %struct.opt_d* @VEC_opt_t_heap_safe_push(%struct.VEC_opt_t_heap** nonnull @file_options, %struct.opt_d* nonnull %o) #7, !dbg !2348
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #8, !dbg !2349
  %inc = add i64 %i.0, 1, !dbg !2350
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2328, metadata !DIExpression()), !dbg !2333
  br label %for.cond, !dbg !2351, !llvm.loop !2352

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2354
  ret void, !dbg !2354
}

declare dso_local void @lto_free_section_data(%struct.lto_file_decl_data*, i32, i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @lto_reissue_options() local_unnamed_addr #4 !dbg !2355 {
entry:
  %opts = alloca %struct.VEC_opt_t_heap*, align 8
  %o = alloca %struct.opt_d*, align 8
  %0 = bitcast %struct.VEC_opt_t_heap** %opts to i8*, !dbg !2377
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2377
  %1 = load %struct.VEC_opt_t_heap*, %struct.VEC_opt_t_heap** @file_options, align 8, !dbg !2378
  %2 = load %struct.VEC_opt_t_heap*, %struct.VEC_opt_t_heap** @user_options, align 8, !dbg !2379
  %call = tail call fastcc %struct.VEC_opt_t_heap* @concatenate_options(%struct.VEC_opt_t_heap* %1, %struct.VEC_opt_t_heap* %2) #7, !dbg !2380
  call void @llvm.dbg.value(metadata %struct.VEC_opt_t_heap* %call, metadata !2357, metadata !DIExpression()), !dbg !2381
  store %struct.VEC_opt_t_heap* %call, %struct.VEC_opt_t_heap** %opts, align 8, !dbg !2382
  %3 = bitcast %struct.opt_d** %o to i8*, !dbg !2383
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8, !dbg !2383
  call void @llvm.dbg.value(metadata i32 0, metadata !2358, metadata !DIExpression()), !dbg !2381
  br label %for.cond, !dbg !2384

for.cond:                                         ; preds = %for.inc, %entry
  %4 = phi %struct.VEC_opt_t_heap* [ %call, %entry ], [ %.pre, %for.inc ], !dbg !2385
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !2386
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2358, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata %struct.VEC_opt_t_heap* %4, metadata !2357, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata %struct.VEC_opt_t_heap* %4, metadata !2357, metadata !DIExpression()), !dbg !2381
  %base = getelementptr inbounds %struct.VEC_opt_t_heap, %struct.VEC_opt_t_heap* %4, i64 0, i32 0, !dbg !2385
  call void @llvm.dbg.value(metadata %struct.opt_d** %o, metadata !2359, metadata !DIExpression(DW_OP_deref)), !dbg !2381
  %call1 = call fastcc i32 @VEC_opt_t_base_iterate(%struct.VEC_opt_t_base* %base, i32 %i.0, %struct.opt_d** nonnull %o) #7, !dbg !2385
  %tobool2 = icmp eq i32 %call1, 0, !dbg !2387
  br i1 %tobool2, label %for.end, label %for.body, !dbg !2387

for.body:                                         ; preds = %for.cond
  %5 = load %struct.opt_d*, %struct.opt_d** %o, align 8, !dbg !2388
  call void @llvm.dbg.value(metadata %struct.opt_d* %5, metadata !2359, metadata !DIExpression()), !dbg !2381
  %code = getelementptr inbounds %struct.opt_d, %struct.opt_d* %5, i64 0, i32 1, !dbg !2389
  %6 = load i64, i64* %code, align 8, !dbg !2389
  call void @llvm.dbg.value(metadata %struct.cl_option* undef, metadata !2360, metadata !DIExpression()), !dbg !2390
  %flag_var = getelementptr inbounds [0 x %struct.cl_option], [0 x %struct.cl_option]* @cl_options, i64 0, i64 %6, i32 6, !dbg !2391
  %7 = load i8*, i8** %flag_var, align 8, !dbg !2391
  %tobool3 = icmp eq i8* %7, null, !dbg !2393
  br i1 %tobool3, label %if.end, label %if.then, !dbg !2394

if.then:                                          ; preds = %for.body
  %arrayidx = getelementptr inbounds [0 x %struct.cl_option], [0 x %struct.cl_option]* @cl_options, i64 0, i64 %6, !dbg !2395
  call void @llvm.dbg.value(metadata %struct.cl_option* %arrayidx, metadata !2360, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata %struct.opt_d* %5, metadata !2359, metadata !DIExpression()), !dbg !2381
  %value = getelementptr inbounds %struct.opt_d, %struct.opt_d* %5, i64 0, i32 3, !dbg !2396
  %8 = load i32, i32* %value, align 8, !dbg !2396
  call void @llvm.dbg.value(metadata %struct.opt_d* %5, metadata !2359, metadata !DIExpression()), !dbg !2381
  %arg = getelementptr inbounds %struct.opt_d, %struct.opt_d* %5, i64 0, i32 2, !dbg !2397
  %9 = load i8*, i8** %arg, align 8, !dbg !2397
  call void @set_option(%struct.cl_option* nonnull %arrayidx, i32 %8, i8* %9) #6, !dbg !2398
  %.pre1 = load %struct.opt_d*, %struct.opt_d** %o, align 8, !dbg !2399
  br label %if.end, !dbg !2398

if.end:                                           ; preds = %for.body, %if.then
  %10 = phi %struct.opt_d* [ %5, %for.body ], [ %.pre1, %if.then ], !dbg !2399
  call void @llvm.dbg.value(metadata %struct.opt_d* %10, metadata !2359, metadata !DIExpression()), !dbg !2381
  %type = getelementptr inbounds %struct.opt_d, %struct.opt_d* %10, i64 0, i32 0, !dbg !2401
  %11 = load i32, i32* %type, align 8, !dbg !2401
  %cmp = icmp eq i32 %11, 1048576, !dbg !2402
  br i1 %cmp, label %if.then4, label %if.else, !dbg !2403

if.then4:                                         ; preds = %if.end
  %12 = load i8 (i64, i8*, i32)*, i8 (i64, i8*, i32)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 5), align 8, !dbg !2404
  call void @llvm.dbg.value(metadata %struct.opt_d* %10, metadata !2359, metadata !DIExpression()), !dbg !2381
  %code5 = getelementptr inbounds %struct.opt_d, %struct.opt_d* %10, i64 0, i32 1, !dbg !2405
  %13 = load i64, i64* %code5, align 8, !dbg !2405
  call void @llvm.dbg.value(metadata %struct.opt_d* %10, metadata !2359, metadata !DIExpression()), !dbg !2381
  %arg6 = getelementptr inbounds %struct.opt_d, %struct.opt_d* %10, i64 0, i32 2, !dbg !2406
  %14 = load i8*, i8** %arg6, align 8, !dbg !2406
  call void @llvm.dbg.value(metadata %struct.opt_d* %10, metadata !2359, metadata !DIExpression()), !dbg !2381
  %value7 = getelementptr inbounds %struct.opt_d, %struct.opt_d* %10, i64 0, i32 3, !dbg !2407
  %15 = load i32, i32* %value7, align 8, !dbg !2407
  %call8 = call zeroext i8 %12(i64 %13, i8* %14, i32 %15) #6, !dbg !2408
  br label %for.inc, !dbg !2408

if.else:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct.opt_d* %10, metadata !2359, metadata !DIExpression()), !dbg !2381
  %cmp10 = icmp eq i32 %11, 2097152, !dbg !2409
  br i1 %cmp10, label %if.then11, label %if.else18, !dbg !2411

if.then11:                                        ; preds = %if.else
  br i1 %tobool3, label %cond.true14, label %for.inc, !dbg !2412

cond.true14:                                      ; preds = %if.then11
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 391, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2412
  br label %for.inc, !dbg !2412

if.else18:                                        ; preds = %if.else
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 393, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2413
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %if.then4, %cond.true14, %if.else18
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2414
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2358, metadata !DIExpression()), !dbg !2381
  %.pre = load %struct.VEC_opt_t_heap*, %struct.VEC_opt_t_heap** %opts, align 8, !dbg !2385
  br label %for.cond, !dbg !2415, !llvm.loop !2416

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.VEC_opt_t_heap** %opts, metadata !2357, metadata !DIExpression(DW_OP_deref)), !dbg !2381
  call fastcc void @VEC_opt_t_heap_free(%struct.VEC_opt_t_heap** nonnull %opts) #7, !dbg !2418
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8, !dbg !2419
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2419
  ret void, !dbg !2419
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.VEC_opt_t_heap* @concatenate_options(%struct.VEC_opt_t_heap* %first, %struct.VEC_opt_t_heap* %second) unnamed_addr #4 !dbg !2420 {
entry:
  %results = alloca %struct.VEC_opt_t_heap*, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_opt_t_heap* %first, metadata !2424, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata %struct.VEC_opt_t_heap* %second, metadata !2425, metadata !DIExpression()), !dbg !2428
  %0 = bitcast %struct.VEC_opt_t_heap** %results to i8*, !dbg !2429
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2429
  call void @llvm.dbg.value(metadata %struct.VEC_opt_t_heap* null, metadata !2426, metadata !DIExpression()), !dbg !2428
  store %struct.VEC_opt_t_heap* null, %struct.VEC_opt_t_heap** %results, align 8, !dbg !2430
  %call = tail call %struct.bitmap_head_def* @lto_bitmap_alloc() #6, !dbg !2431
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call, metadata !2427, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata %struct.VEC_opt_t_heap** %results, metadata !2426, metadata !DIExpression(DW_OP_deref)), !dbg !2428
  call fastcc void @reverse_iterate_options(%struct.VEC_opt_t_heap* %second, %struct.VEC_opt_t_heap** nonnull %results, %struct.bitmap_head_def* %call) #7, !dbg !2432
  call void @llvm.dbg.value(metadata %struct.VEC_opt_t_heap** %results, metadata !2426, metadata !DIExpression(DW_OP_deref)), !dbg !2428
  call fastcc void @reverse_iterate_options(%struct.VEC_opt_t_heap* %first, %struct.VEC_opt_t_heap** nonnull %results, %struct.bitmap_head_def* %call) #7, !dbg !2433
  call void @lto_bitmap_free(%struct.bitmap_head_def* %call) #6, !dbg !2434
  %1 = load %struct.VEC_opt_t_heap*, %struct.VEC_opt_t_heap** %results, align 8, !dbg !2435
  call void @llvm.dbg.value(metadata %struct.VEC_opt_t_heap* %1, metadata !2426, metadata !DIExpression()), !dbg !2428
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2436
  ret %struct.VEC_opt_t_heap* %1, !dbg !2437
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_opt_t_base_iterate(%struct.VEC_opt_t_base* %vec_, i32 %ix_, %struct.opt_d** %ptr) unnamed_addr #0 !dbg !2438 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_opt_t_base* %vec_, metadata !2444, metadata !DIExpression()), !dbg !2447
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2445, metadata !DIExpression()), !dbg !2447
  call void @llvm.dbg.value(metadata %struct.opt_d** %ptr, metadata !2446, metadata !DIExpression()), !dbg !2447
  %tobool = icmp eq %struct.VEC_opt_t_base* %vec_, null, !dbg !2448
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !2448

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_opt_t_base, %struct.VEC_opt_t_base* %vec_, i64 0, i32 0, !dbg !2448
  %0 = load i32, i32* %num, align 8, !dbg !2448
  %cmp = icmp ugt i32 %0, %ix_, !dbg !2448
  br i1 %cmp, label %if.then, label %if.else, !dbg !2450

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !2451
  %arrayidx = getelementptr inbounds %struct.VEC_opt_t_base, %struct.VEC_opt_t_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2451
  br label %return, !dbg !2451

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !2453

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.opt_d* [ null, %if.else ], [ %arrayidx, %if.then ], !dbg !2455
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !2455
  store %struct.opt_d* %storemerge, %struct.opt_d** %ptr, align 8, !dbg !2455
  ret i32 %retval.0, !dbg !2450
}

declare dso_local void @set_option(%struct.cl_option*, i32, i8*) local_unnamed_addr #1

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_opt_t_heap_free(%struct.VEC_opt_t_heap** %vec_) unnamed_addr #0 !dbg !2456 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_opt_t_heap** %vec_, metadata !2458, metadata !DIExpression()), !dbg !2459
  %0 = load %struct.VEC_opt_t_heap*, %struct.VEC_opt_t_heap** %vec_, align 8, !dbg !2460
  %tobool = icmp eq %struct.VEC_opt_t_heap* %0, null, !dbg !2460
  br i1 %tobool, label %if.end, label %if.then, !dbg !2462

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_opt_t_heap* %0 to i8*, !dbg !2462
  tail call void @free(i8* nonnull %1) #6, !dbg !2460
  br label %if.end, !dbg !2460

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_opt_t_heap* null, %struct.VEC_opt_t_heap** %vec_, align 8, !dbg !2462
  ret void, !dbg !2462
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_opt_t_heap_reserve(%struct.VEC_opt_t_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !2463 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_opt_t_heap** %vec_, metadata !2467, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i32 1, metadata !2468, metadata !DIExpression()), !dbg !2470
  %0 = load %struct.VEC_opt_t_heap*, %struct.VEC_opt_t_heap** %vec_, align 8, !dbg !2471
  %tobool = icmp eq %struct.VEC_opt_t_heap* %0, null, !dbg !2471
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2471

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_opt_t_heap, %struct.VEC_opt_t_heap* %0, i64 0, i32 0, !dbg !2471
  br label %cond.end, !dbg !2471

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_opt_t_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2471
  %call = tail call fastcc i32 @VEC_opt_t_base_space(%struct.VEC_opt_t_base* %cond, i32 1) #7, !dbg !2471
  %tobool1 = icmp eq i32 %call, 0, !dbg !2471
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !2471
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !2469, metadata !DIExpression()), !dbg !2470
  br i1 %tobool1, label %if.then, label %if.end, !dbg !2471

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_opt_t_heap** %vec_ to i8**, !dbg !2472
  %2 = load i8*, i8** %1, align 8, !dbg !2472
  %call3 = tail call i8* @vec_heap_o_reserve(i8* %2, i32 1, i64 8, i64 32) #6, !dbg !2472
  store i8* %call3, i8** %1, align 8, !dbg !2472
  br label %if.end, !dbg !2472

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !2471
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.opt_d* @VEC_opt_t_base_quick_push(%struct.VEC_opt_t_base* %vec_, %struct.opt_d* %obj_) unnamed_addr #0 !dbg !2474 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_opt_t_base* %vec_, metadata !2478, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata %struct.opt_d* %obj_, metadata !2479, metadata !DIExpression()), !dbg !2481
  %num1 = getelementptr inbounds %struct.VEC_opt_t_base, %struct.VEC_opt_t_base* %vec_, i64 0, i32 0, !dbg !2482
  %0 = load i32, i32* %num1, align 8, !dbg !2482
  %inc = add i32 %0, 1, !dbg !2482
  store i32 %inc, i32* %num1, align 8, !dbg !2482
  %idxprom = zext i32 %0 to i64, !dbg !2482
  %arrayidx = getelementptr inbounds %struct.VEC_opt_t_base, %struct.VEC_opt_t_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2482
  call void @llvm.dbg.value(metadata %struct.opt_d* %arrayidx, metadata !2480, metadata !DIExpression()), !dbg !2481
  %tobool = icmp eq %struct.opt_d* %obj_, null, !dbg !2483
  br i1 %tobool, label %if.end, label %if.then, !dbg !2482

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.opt_d* %arrayidx to i8*, !dbg !2483
  %2 = bitcast %struct.opt_d* %obj_ to i8*, !dbg !2483
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %2, i64 32, i1 false), !dbg !2483
  br label %if.end, !dbg !2483

if.end:                                           ; preds = %entry, %if.then
  ret %struct.opt_d* %arrayidx, !dbg !2482
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_opt_t_base_space(%struct.VEC_opt_t_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !2485 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_opt_t_base* %vec_, metadata !2489, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata i32 1, metadata !2490, metadata !DIExpression()), !dbg !2491
  %tobool = icmp eq %struct.VEC_opt_t_base* %vec_, null, !dbg !2492
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2492

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_opt_t_base, %struct.VEC_opt_t_base* %vec_, i64 0, i32 1, !dbg !2492
  %0 = load i32, i32* %alloc, align 4, !dbg !2492
  %num = getelementptr inbounds %struct.VEC_opt_t_base, %struct.VEC_opt_t_base* %vec_, i64 0, i32 0, !dbg !2492
  %1 = load i32, i32* %num, align 8, !dbg !2492
  %cmp1 = icmp ne i32 %0, %1, !dbg !2492
  %phitmp = zext i1 %cmp1 to i32, !dbg !2492
  br label %cond.end, !dbg !2492

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2492

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !2492
}

declare dso_local i8* @vec_heap_o_reserve(i8*, i32, i64, i64) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_opt_t_base_length(%struct.VEC_opt_t_base* %vec_) unnamed_addr #0 !dbg !2493 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_opt_t_base* %vec_, metadata !2499, metadata !DIExpression()), !dbg !2500
  %tobool = icmp eq %struct.VEC_opt_t_base* %vec_, null, !dbg !2501
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2501

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_opt_t_base, %struct.VEC_opt_t_base* %vec_, i64 0, i32 0, !dbg !2501
  %0 = load i32, i32* %num, align 8, !dbg !2501
  br label %cond.end, !dbg !2501

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2501
  ret i32 %cond, !dbg !2501
}

; Function Attrs: nounwind uwtable
define internal fastcc void @output_data_stream(%struct.lto_output_stream* %stream, i8* %addr, i64 %length) unnamed_addr #4 !dbg !2502 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_output_stream* %stream, metadata !2506, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i8* %addr, metadata !2507, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i64 %length, metadata !2508, metadata !DIExpression()), !dbg !2509
  tail call void @lto_output_data_stream(%struct.lto_output_stream* %stream, i8* %addr, i64 %length) #6, !dbg !2510
  ret void, !dbg !2511
}

; Function Attrs: nounwind uwtable
define internal fastcc void @output_string_stream(%struct.lto_output_stream* %stream, i8* %string) unnamed_addr #4 !dbg !2512 {
entry:
  %flag = alloca i8, align 1
  %length = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.lto_output_stream* %stream, metadata !2516, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata i8* %string, metadata !2517, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata i8* %flag, metadata !2518, metadata !DIExpression(DW_OP_deref)), !dbg !2522
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %flag) #8, !dbg !2523
  call void @llvm.dbg.value(metadata i8 0, metadata !2518, metadata !DIExpression()), !dbg !2522
  store i8 0, i8* %flag, align 1, !dbg !2524
  %cmp = icmp eq i8* %string, null, !dbg !2525
  br i1 %cmp, label %if.else, label %if.then, !dbg !2526

if.then:                                          ; preds = %entry
  %0 = bitcast i64* %length to i8*, !dbg !2527
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2527
  %call = tail call i64 @strlen(i8* nonnull %string) #6, !dbg !2528
  call void @llvm.dbg.value(metadata i64 %call, metadata !2519, metadata !DIExpression()), !dbg !2529
  store i64 %call, i64* %length, align 8, !dbg !2530
  call void @llvm.dbg.value(metadata i8 1, metadata !2518, metadata !DIExpression()), !dbg !2522
  store i8 1, i8* %flag, align 1, !dbg !2531
  call void @llvm.dbg.value(metadata i8* %flag, metadata !2518, metadata !DIExpression(DW_OP_deref)), !dbg !2522
  call fastcc void @output_data_stream(%struct.lto_output_stream* %stream, i8* nonnull %flag, i64 1) #7, !dbg !2532
  call fastcc void @output_data_stream(%struct.lto_output_stream* %stream, i8* nonnull %0, i64 8) #7, !dbg !2533
  %1 = load i64, i64* %length, align 8, !dbg !2534
  call void @llvm.dbg.value(metadata i64 %1, metadata !2519, metadata !DIExpression()), !dbg !2529
  call fastcc void @output_data_stream(%struct.lto_output_stream* %stream, i8* nonnull %string, i64 %1) #7, !dbg !2535
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2536
  br label %if.end, !dbg !2537

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %flag, metadata !2518, metadata !DIExpression(DW_OP_deref)), !dbg !2522
  call fastcc void @output_data_stream(%struct.lto_output_stream* %stream, i8* nonnull %flag, i64 1) #7, !dbg !2538
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.dbg.value(metadata i8* %flag, metadata !2518, metadata !DIExpression(DW_OP_deref)), !dbg !2522
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %flag) #8, !dbg !2539
  ret void, !dbg !2539
}

; Function Attrs: nounwind uwtable
define internal fastcc void @input_data_block(%struct.lto_input_block* %ib, i8* %addr, i64 %length) unnamed_addr #4 !dbg !2540 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_input_block* %ib, metadata !2544, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i8* %addr, metadata !2545, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i64 %length, metadata !2546, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i8* %addr, metadata !2548, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i64 0, metadata !2547, metadata !DIExpression()), !dbg !2550
  br label %for.cond, !dbg !2551

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i64 [ 0, %entry ], [ %inc, %for.body ], !dbg !2553
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !2547, metadata !DIExpression()), !dbg !2550
  %exitcond = icmp eq i64 %i.0, %length, !dbg !2554
  br i1 %exitcond, label %for.end, label %for.body, !dbg !2556

for.body:                                         ; preds = %for.cond
  %call = tail call zeroext i8 @lto_input_1_unsigned(%struct.lto_input_block* %ib) #6, !dbg !2557
  %arrayidx = getelementptr inbounds i8, i8* %addr, i64 %i.0, !dbg !2558
  store i8 %call, i8* %arrayidx, align 1, !dbg !2559
  %inc = add i64 %i.0, 1, !dbg !2560
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2547, metadata !DIExpression()), !dbg !2550
  br label %for.cond, !dbg !2561, !llvm.loop !2562

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2564
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @input_string_block(%struct.lto_input_block* %ib) unnamed_addr #4 !dbg !2565 {
entry:
  %flag = alloca i8, align 1
  %length = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.lto_input_block* %ib, metadata !2569, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8* %flag, metadata !2570, metadata !DIExpression(DW_OP_deref)), !dbg !2575
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %flag) #8, !dbg !2576
  call void @llvm.dbg.value(metadata i8* %flag, metadata !2570, metadata !DIExpression(DW_OP_deref)), !dbg !2575
  call fastcc void @input_data_block(%struct.lto_input_block* %ib, i8* nonnull %flag, i64 1) #7, !dbg !2577
  %0 = load i8, i8* %flag, align 1, !dbg !2578
  call void @llvm.dbg.value(metadata i8 %0, metadata !2570, metadata !DIExpression()), !dbg !2575
  %tobool = icmp eq i8 %0, 0, !dbg !2578
  br i1 %tobool, label %cleanup, label %if.then, !dbg !2579

if.then:                                          ; preds = %entry
  %1 = bitcast i64* %length to i8*, !dbg !2580
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2580
  call fastcc void @input_data_block(%struct.lto_input_block* %ib, i8* nonnull %1, i64 8) #7, !dbg !2581
  %2 = load i64, i64* %length, align 8, !dbg !2582
  call void @llvm.dbg.value(metadata i64 %2, metadata !2571, metadata !DIExpression()), !dbg !2583
  %add = add i64 %2, 1, !dbg !2584
  %call = call i8* @xcalloc(i64 1, i64 %add) #6, !dbg !2585
  call void @llvm.dbg.value(metadata i8* %call, metadata !2574, metadata !DIExpression()), !dbg !2583
  %3 = load i64, i64* %length, align 8, !dbg !2586
  call void @llvm.dbg.value(metadata i64 %3, metadata !2571, metadata !DIExpression()), !dbg !2583
  call fastcc void @input_data_block(%struct.lto_input_block* %ib, i8* %call, i64 %3) #7, !dbg !2587
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2588
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i8* [ %call, %if.then ], [ null, %entry ], !dbg !2589
  call void @llvm.dbg.value(metadata i8* %flag, metadata !2570, metadata !DIExpression(DW_OP_deref)), !dbg !2575
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %flag) #8, !dbg !2590
  ret i8* %retval.0, !dbg !2590
}

declare dso_local zeroext i8 @lto_input_1_unsigned(%struct.lto_input_block*) local_unnamed_addr #1

declare dso_local %struct.bitmap_head_def* @lto_bitmap_alloc() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @reverse_iterate_options(%struct.VEC_opt_t_heap* %from, %struct.VEC_opt_t_heap** %to, %struct.bitmap_head_def* %codes) unnamed_addr #4 !dbg !2591 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_opt_t_heap* %from, metadata !2595, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata %struct.VEC_opt_t_heap** %to, metadata !2596, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %codes, metadata !2597, metadata !DIExpression()), !dbg !2604
  %base = getelementptr inbounds %struct.VEC_opt_t_heap, %struct.VEC_opt_t_heap* %from, i64 0, i32 0, !dbg !2605
  %call = tail call fastcc i32 @VEC_opt_t_base_length(%struct.VEC_opt_t_base* %base) #7, !dbg !2605
  call void @llvm.dbg.value(metadata i32 %call, metadata !2598, metadata !DIExpression()), !dbg !2604
  br label %for.cond, !dbg !2606

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ %call, %entry ], [ %sub, %for.inc ], !dbg !2607
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2598, metadata !DIExpression()), !dbg !2604
  %cmp = icmp sgt i32 %i.0, 0, !dbg !2608
  br i1 %cmp, label %for.body, label %for.end, !dbg !2609

for.body:                                         ; preds = %for.cond
  %sub = add nsw i32 %i.0, -1, !dbg !2610
  %call7 = tail call fastcc %struct.opt_d* @VEC_opt_t_base_index(%struct.VEC_opt_t_base* %base, i32 %sub) #7, !dbg !2610
  call void @llvm.dbg.value(metadata %struct.opt_d* %call7, metadata !2599, metadata !DIExpression()), !dbg !2611
  %code = getelementptr inbounds %struct.opt_d, %struct.opt_d* %call7, i64 0, i32 1, !dbg !2612
  %0 = load i64, i64* %code, align 8, !dbg !2612
  %conv = trunc i64 %0 to i32, !dbg !2614
  %call8 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %codes, i32 %conv) #6, !dbg !2615
  %tobool9 = icmp eq i8 %call8, 0, !dbg !2615
  br i1 %tobool9, label %for.inc, label %if.then, !dbg !2616

if.then:                                          ; preds = %for.body
  %call10 = tail call fastcc %struct.opt_d* @VEC_opt_t_heap_safe_push(%struct.VEC_opt_t_heap** %to, %struct.opt_d* %call7) #7, !dbg !2617
  br label %for.inc, !dbg !2617

for.inc:                                          ; preds = %for.body, %if.then
  call void @llvm.dbg.value(metadata i32 %sub, metadata !2598, metadata !DIExpression()), !dbg !2604
  br label %for.cond, !dbg !2618, !llvm.loop !2619

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2621
}

declare dso_local void @lto_bitmap_free(%struct.bitmap_head_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.opt_d* @VEC_opt_t_base_index(%struct.VEC_opt_t_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2622 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_opt_t_base* %vec_, metadata !2626, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2627, metadata !DIExpression()), !dbg !2628
  br label %land.end, !dbg !2629

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !2629
  %arrayidx = getelementptr inbounds %struct.VEC_opt_t_base, %struct.VEC_opt_t_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2629
  ret %struct.opt_d* %arrayidx, !dbg !2629
}

declare dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #1

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
!llvm.module.flags = !{!363, !364, !365}
!llvm.ident = !{!366}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "user_options", scope: !2, file: !3, line: 85, type: !336, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !294, globals: !360, nameTableKind: None)
!3 = !DIFile(filename: "lto-opts.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !20, !215, !221, !226, !231, !249, !256, !263, !286}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lto_section_type", file: !6, line: 256, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./lto-streamer.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19}
!9 = !DIEnumerator(name: "LTO_section_decls", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "LTO_section_function_body", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "LTO_section_static_initializer", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "LTO_section_cgraph", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "LTO_section_jump_functions", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "LTO_section_ipa_pure_const", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "LTO_section_ipa_reference", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "LTO_section_symtab", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "LTO_section_wpa_fixup", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "LTO_section_opts", value: 9, isUnsigned: true)
!19 = !DIEnumerator(name: "LTO_N_SECTION_TYPES", value: 10, isUnsigned: true)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !21, line: 39, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214}
!23 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!24 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!25 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!26 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!27 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!28 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!29 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!30 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!31 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!32 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!33 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!34 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!35 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!36 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!37 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!38 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!39 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!40 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!41 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!42 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!43 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!44 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!45 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!46 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!47 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!48 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!49 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!50 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!51 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!52 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!53 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!54 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!55 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!56 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!57 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!58 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!59 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!60 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!61 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!62 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!63 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!64 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!65 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!66 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!67 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!68 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!69 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!70 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!71 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!72 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!73 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!74 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!75 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!76 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!77 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!78 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!79 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!80 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!81 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!82 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!83 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!84 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!85 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!86 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!87 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!88 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!89 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!90 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!91 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!92 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!93 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!94 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!95 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!96 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!97 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!98 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!99 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!100 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!101 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!102 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!103 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!104 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!105 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!106 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!107 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!108 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!109 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!110 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!111 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!112 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!113 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!114 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!115 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!116 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!117 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!118 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!119 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!120 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!121 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!122 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!123 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!124 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!125 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!126 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!127 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!128 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!129 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!130 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!131 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!132 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!133 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!134 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!135 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!136 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!137 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!138 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!139 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!140 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!141 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!142 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!143 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!144 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!145 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!146 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!147 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!148 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!149 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!150 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!151 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!152 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!153 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!154 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!155 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!156 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!157 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!158 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!159 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!160 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!161 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!162 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!163 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!164 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!165 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!166 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!167 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!168 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!169 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!170 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!171 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!172 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!173 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!174 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!175 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!176 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!177 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!178 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!179 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!180 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!181 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!182 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!183 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!184 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!185 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!186 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!187 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!188 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!189 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!190 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!191 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!192 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!193 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!194 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!195 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!196 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!197 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!198 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!199 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!200 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!201 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!202 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!203 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!204 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!205 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!206 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!207 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!208 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!209 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!210 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!211 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!212 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!213 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!214 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!215 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !216, line: 363, baseType: !7, size: 32, elements: !217)
!216 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!217 = !{!218, !219, !220}
!218 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!219 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!220 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!221 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !216, line: 355, baseType: !7, size: 32, elements: !222)
!222 = !{!223, !224, !225}
!223 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!224 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!225 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!226 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !227, line: 474, baseType: !7, size: 32, elements: !228)
!227 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!228 = !{!229, !230}
!229 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!230 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!231 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !21, line: 280, baseType: !7, size: 32, elements: !232)
!232 = !{!233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248}
!233 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!234 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!235 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!236 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!237 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!238 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!239 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!240 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!241 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!242 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!243 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!244 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!245 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!246 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!247 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!248 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!249 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !21, line: 1817, baseType: !7, size: 32, elements: !250)
!250 = !{!251, !252, !253, !254, !255}
!251 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!252 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!253 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!254 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!255 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!256 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !21, line: 1805, baseType: !7, size: 32, elements: !257)
!257 = !{!258, !259, !260, !261, !262}
!258 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!259 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!260 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!261 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!262 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!263 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !264, line: 309, baseType: !7, size: 32, elements: !265)
!264 = !DIFile(filename: "./cgraph.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!265 = !{!266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285}
!266 = !DIEnumerator(name: "CIF_OK", value: 0, isUnsigned: true)
!267 = !DIEnumerator(name: "CIF_UNSPECIFIED", value: 1, isUnsigned: true)
!268 = !DIEnumerator(name: "CIF_FUNCTION_NOT_CONSIDERED", value: 2, isUnsigned: true)
!269 = !DIEnumerator(name: "CIF_BODY_NOT_AVAILABLE", value: 3, isUnsigned: true)
!270 = !DIEnumerator(name: "CIF_REDEFINED_EXTERN_INLINE", value: 4, isUnsigned: true)
!271 = !DIEnumerator(name: "CIF_FUNCTION_NOT_INLINABLE", value: 5, isUnsigned: true)
!272 = !DIEnumerator(name: "CIF_FUNCTION_NOT_INLINE_CANDIDATE", value: 6, isUnsigned: true)
!273 = !DIEnumerator(name: "CIF_LARGE_FUNCTION_GROWTH_LIMIT", value: 7, isUnsigned: true)
!274 = !DIEnumerator(name: "CIF_LARGE_STACK_FRAME_GROWTH_LIMIT", value: 8, isUnsigned: true)
!275 = !DIEnumerator(name: "CIF_MAX_INLINE_INSNS_SINGLE_LIMIT", value: 9, isUnsigned: true)
!276 = !DIEnumerator(name: "CIF_MAX_INLINE_INSNS_AUTO_LIMIT", value: 10, isUnsigned: true)
!277 = !DIEnumerator(name: "CIF_INLINE_UNIT_GROWTH_LIMIT", value: 11, isUnsigned: true)
!278 = !DIEnumerator(name: "CIF_RECURSIVE_INLINING", value: 12, isUnsigned: true)
!279 = !DIEnumerator(name: "CIF_UNLIKELY_CALL", value: 13, isUnsigned: true)
!280 = !DIEnumerator(name: "CIF_NOT_DECLARED_INLINED", value: 14, isUnsigned: true)
!281 = !DIEnumerator(name: "CIF_OPTIMIZING_FOR_SIZE", value: 15, isUnsigned: true)
!282 = !DIEnumerator(name: "CIF_TARGET_OPTION_MISMATCH", value: 16, isUnsigned: true)
!283 = !DIEnumerator(name: "CIF_MISMATCHED_ARGUMENTS", value: 17, isUnsigned: true)
!284 = !DIEnumerator(name: "CIF_ORIGINALLY_INDIRECT_CALL", value: 18, isUnsigned: true)
!285 = !DIEnumerator(name: "CIF_N_REASONS", value: 19, isUnsigned: true)
!286 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cl_var_type", file: !287, line: 25, baseType: !7, size: 32, elements: !288)
!287 = !DIFile(filename: "./opts.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!288 = !{!289, !290, !291, !292, !293}
!289 = !DIEnumerator(name: "CLVC_BOOLEAN", value: 0, isUnsigned: true)
!290 = !DIEnumerator(name: "CLVC_EQUAL", value: 1, isUnsigned: true)
!291 = !DIEnumerator(name: "CLVC_BIT_CLEAR", value: 2, isUnsigned: true)
!292 = !DIEnumerator(name: "CLVC_BIT_SET", value: 3, isUnsigned: true)
!293 = !DIEnumerator(name: "CLVC_STRING", value: 4, isUnsigned: true)
!294 = !{!295, !296, !297, !298, !301, !302, !299, !304, !317, !336, !7}
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!297 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_output_stream", file: !6, line: 577, size: 320, elements: !306)
!306 = !{!307, !312, !313, !314, !315, !316}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "first_block", scope: !305, file: !6, line: 580, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_char_ptr_base", file: !6, line: 568, size: 64, elements: !310)
!310 = !{!311}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !309, file: !6, line: 570, baseType: !299, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "current_block", scope: !305, file: !6, line: 583, baseType: !308, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "current_pointer", scope: !305, file: !6, line: 586, baseType: !299, size: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "left_in_block", scope: !305, file: !6, line: 589, baseType: !7, size: 32, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !305, file: !6, line: 592, baseType: !7, size: 32, offset: 224)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "total_size", scope: !305, file: !6, line: 595, baseType: !7, size: 32, offset: 256)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !319)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_simple_header", file: !6, line: 600, size: 128, elements: !320)
!320 = !{!321, !332, !335}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "lto_header", scope: !319, file: !6, line: 603, baseType: !322, size: 64)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_header", file: !6, line: 387, size: 64, elements: !323)
!323 = !{!324, !330, !331}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "major_version", scope: !322, file: !6, line: 389, baseType: !325, size: 16)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !326, line: 25, baseType: !327)
!326 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !328, line: 39, baseType: !329)
!328 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!329 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "minor_version", scope: !322, file: !6, line: 390, baseType: !325, size: 16, offset: 16)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "section_type", scope: !322, file: !6, line: 391, baseType: !5, size: 32, offset: 32)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "main_size", scope: !319, file: !6, line: 606, baseType: !333, size: 32, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !326, line: 26, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !328, line: 41, baseType: !297)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_size", scope: !319, file: !6, line: 609, baseType: !333, size: 32, offset: 96)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_opt_t_heap", file: !3, line: 79, baseType: !338)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_opt_t_heap", file: !3, line: 79, size: 320, elements: !339)
!339 = !{!340}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !338, file: !3, line: 79, baseType: !341, size: 320)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_opt_t_base", file: !3, line: 78, baseType: !342)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_opt_t_base", file: !3, line: 78, size: 320, elements: !343)
!343 = !{!344, !345, !346}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !342, file: !3, line: 78, baseType: !7, size: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !342, file: !3, line: 78, baseType: !7, size: 32, offset: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !342, file: !3, line: 78, baseType: !347, size: 256, offset: 64)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 256, elements: !358)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "opt_t", file: !3, line: 76, baseType: !349)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_d", file: !3, line: 70, size: 256, elements: !350)
!350 = !{!351, !352, !356, !357}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !349, file: !3, line: 72, baseType: !7, size: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !349, file: !3, line: 73, baseType: !353, size: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !354, line: 46, baseType: !355)
!354 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!355 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !349, file: !3, line: 74, baseType: !299, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !349, file: !3, line: 75, baseType: !297, size: 32, offset: 192)
!358 = !{!359}
!359 = !DISubrange(count: 1)
!360 = !{!0, !361}
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(name: "file_options", scope: !2, file: !3, line: 86, type: !336, isLocal: true, isDefinition: true)
!363 = !{i32 2, !"Dwarf Version", i32 4}
!364 = !{i32 2, !"Debug Info Version", i32 3}
!365 = !{i32 1, !"wchar_size", i32 4}
!366 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!367 = distinct !DISubprogram(name: "vprintf", scope: !368, file: !368, line: 39, type: !369, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !379)
!368 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!369 = !DISubroutineType(types: !370)
!370 = !{!297, !371, !372}
!371 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !302)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !374)
!374 = !{!375, !376, !377, !378}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !373, file: !3, baseType: !7, size: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !373, file: !3, baseType: !7, size: 32, offset: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !373, file: !3, baseType: !301, size: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !373, file: !3, baseType: !301, size: 64, offset: 128)
!379 = !{!380, !381}
!380 = !DILocalVariable(name: "__fmt", arg: 1, scope: !367, file: !368, line: 39, type: !371)
!381 = !DILocalVariable(name: "__arg", arg: 2, scope: !367, file: !368, line: 39, type: !372)
!382 = !DILocation(line: 0, scope: !367)
!383 = !DILocation(line: 41, column: 20, scope: !367)
!384 = !DILocation(line: 41, column: 10, scope: !367)
!385 = !DILocation(line: 41, column: 3, scope: !367)
!386 = distinct !DISubprogram(name: "getchar", scope: !368, file: !368, line: 47, type: !387, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !389)
!387 = !DISubroutineType(types: !388)
!388 = !{!297}
!389 = !{}
!390 = !DILocation(line: 49, column: 16, scope: !386)
!391 = !DILocation(line: 49, column: 10, scope: !386)
!392 = !DILocation(line: 49, column: 3, scope: !386)
!393 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !368, file: !368, line: 56, type: !394, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !449)
!394 = !DISubroutineType(types: !395)
!395 = !{!297, !396}
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !398, line: 7, baseType: !399)
!398 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !400, line: 49, size: 1728, elements: !401)
!400 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!401 = !{!402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !417, !419, !420, !421, !424, !426, !428, !430, !433, !435, !438, !441, !442, !443, !444, !445}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !399, file: !400, line: 51, baseType: !297, size: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !399, file: !400, line: 54, baseType: !299, size: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !399, file: !400, line: 55, baseType: !299, size: 64, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !399, file: !400, line: 56, baseType: !299, size: 64, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !399, file: !400, line: 57, baseType: !299, size: 64, offset: 256)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !399, file: !400, line: 58, baseType: !299, size: 64, offset: 320)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !399, file: !400, line: 59, baseType: !299, size: 64, offset: 384)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !399, file: !400, line: 60, baseType: !299, size: 64, offset: 448)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !399, file: !400, line: 61, baseType: !299, size: 64, offset: 512)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !399, file: !400, line: 64, baseType: !299, size: 64, offset: 576)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !399, file: !400, line: 65, baseType: !299, size: 64, offset: 640)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !399, file: !400, line: 66, baseType: !299, size: 64, offset: 704)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !399, file: !400, line: 68, baseType: !415, size: 64, offset: 768)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !400, line: 36, flags: DIFlagFwdDecl)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !399, file: !400, line: 70, baseType: !418, size: 64, offset: 832)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !399, file: !400, line: 72, baseType: !297, size: 32, offset: 896)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !399, file: !400, line: 73, baseType: !297, size: 32, offset: 928)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !399, file: !400, line: 74, baseType: !422, size: 64, offset: 960)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !328, line: 152, baseType: !423)
!423 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !399, file: !400, line: 77, baseType: !425, size: 16, offset: 1024)
!425 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !399, file: !400, line: 78, baseType: !427, size: 8, offset: 1040)
!427 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !399, file: !400, line: 79, baseType: !429, size: 8, offset: 1048)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 8, elements: !358)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !399, file: !400, line: 81, baseType: !431, size: 64, offset: 1088)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !400, line: 43, baseType: null)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !399, file: !400, line: 89, baseType: !434, size: 64, offset: 1152)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !328, line: 153, baseType: !423)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !399, file: !400, line: 91, baseType: !436, size: 64, offset: 1216)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !400, line: 37, flags: DIFlagFwdDecl)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !399, file: !400, line: 92, baseType: !439, size: 64, offset: 1280)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !400, line: 38, flags: DIFlagFwdDecl)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !399, file: !400, line: 93, baseType: !418, size: 64, offset: 1344)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !399, file: !400, line: 94, baseType: !301, size: 64, offset: 1408)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !399, file: !400, line: 95, baseType: !353, size: 64, offset: 1472)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !399, file: !400, line: 96, baseType: !297, size: 32, offset: 1536)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !399, file: !400, line: 98, baseType: !446, size: 160, offset: 1568)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 160, elements: !447)
!447 = !{!448}
!448 = !DISubrange(count: 20)
!449 = !{!450}
!450 = !DILocalVariable(name: "__fp", arg: 1, scope: !393, file: !368, line: 56, type: !396)
!451 = !DILocation(line: 0, scope: !393)
!452 = !DILocation(line: 58, column: 10, scope: !393)
!453 = !DILocation(line: 58, column: 3, scope: !393)
!454 = distinct !DISubprogram(name: "getc_unlocked", scope: !368, file: !368, line: 66, type: !394, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !455)
!455 = !{!456}
!456 = !DILocalVariable(name: "__fp", arg: 1, scope: !454, file: !368, line: 66, type: !396)
!457 = !DILocation(line: 0, scope: !454)
!458 = !DILocation(line: 68, column: 10, scope: !454)
!459 = !DILocation(line: 68, column: 3, scope: !454)
!460 = distinct !DISubprogram(name: "getchar_unlocked", scope: !368, file: !368, line: 73, type: !387, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !389)
!461 = !DILocation(line: 75, column: 10, scope: !460)
!462 = !DILocation(line: 75, column: 3, scope: !460)
!463 = distinct !DISubprogram(name: "putchar", scope: !368, file: !368, line: 82, type: !464, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !466)
!464 = !DISubroutineType(types: !465)
!465 = !{!297, !297}
!466 = !{!467}
!467 = !DILocalVariable(name: "__c", arg: 1, scope: !463, file: !368, line: 82, type: !297)
!468 = !DILocation(line: 0, scope: !463)
!469 = !DILocation(line: 84, column: 21, scope: !463)
!470 = !DILocation(line: 84, column: 10, scope: !463)
!471 = !DILocation(line: 84, column: 3, scope: !463)
!472 = distinct !DISubprogram(name: "fputc_unlocked", scope: !368, file: !368, line: 91, type: !473, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !475)
!473 = !DISubroutineType(types: !474)
!474 = !{!297, !297, !396}
!475 = !{!476, !477}
!476 = !DILocalVariable(name: "__c", arg: 1, scope: !472, file: !368, line: 91, type: !297)
!477 = !DILocalVariable(name: "__stream", arg: 2, scope: !472, file: !368, line: 91, type: !396)
!478 = !DILocation(line: 0, scope: !472)
!479 = !DILocation(line: 93, column: 10, scope: !472)
!480 = !DILocation(line: 93, column: 3, scope: !472)
!481 = distinct !DISubprogram(name: "putc_unlocked", scope: !368, file: !368, line: 101, type: !473, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !482)
!482 = !{!483, !484}
!483 = !DILocalVariable(name: "__c", arg: 1, scope: !481, file: !368, line: 101, type: !297)
!484 = !DILocalVariable(name: "__stream", arg: 2, scope: !481, file: !368, line: 101, type: !396)
!485 = !DILocation(line: 0, scope: !481)
!486 = !DILocation(line: 103, column: 10, scope: !481)
!487 = !DILocation(line: 103, column: 3, scope: !481)
!488 = distinct !DISubprogram(name: "putchar_unlocked", scope: !368, file: !368, line: 108, type: !464, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !489)
!489 = !{!490}
!490 = !DILocalVariable(name: "__c", arg: 1, scope: !488, file: !368, line: 108, type: !297)
!491 = !DILocation(line: 0, scope: !488)
!492 = !DILocation(line: 110, column: 10, scope: !488)
!493 = !DILocation(line: 110, column: 3, scope: !488)
!494 = distinct !DISubprogram(name: "getline", scope: !368, file: !368, line: 118, type: !495, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !499)
!495 = !DISubroutineType(types: !496)
!496 = !{!497, !298, !498, !396}
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !328, line: 193, baseType: !423)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!499 = !{!500, !501, !502}
!500 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !494, file: !368, line: 118, type: !298)
!501 = !DILocalVariable(name: "__n", arg: 2, scope: !494, file: !368, line: 118, type: !498)
!502 = !DILocalVariable(name: "__stream", arg: 3, scope: !494, file: !368, line: 118, type: !396)
!503 = !DILocation(line: 0, scope: !494)
!504 = !DILocation(line: 120, column: 10, scope: !494)
!505 = !DILocation(line: 120, column: 3, scope: !494)
!506 = distinct !DISubprogram(name: "feof_unlocked", scope: !368, file: !368, line: 128, type: !394, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !507)
!507 = !{!508}
!508 = !DILocalVariable(name: "__stream", arg: 1, scope: !506, file: !368, line: 128, type: !396)
!509 = !DILocation(line: 0, scope: !506)
!510 = !DILocation(line: 130, column: 10, scope: !506)
!511 = !DILocation(line: 130, column: 3, scope: !506)
!512 = distinct !DISubprogram(name: "ferror_unlocked", scope: !368, file: !368, line: 135, type: !394, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !513)
!513 = !{!514}
!514 = !DILocalVariable(name: "__stream", arg: 1, scope: !512, file: !368, line: 135, type: !396)
!515 = !DILocation(line: 0, scope: !512)
!516 = !DILocation(line: 137, column: 10, scope: !512)
!517 = !DILocation(line: 137, column: 3, scope: !512)
!518 = distinct !DISubprogram(name: "tolower", scope: !519, file: !519, line: 207, type: !464, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !520)
!519 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!520 = !{!521}
!521 = !DILocalVariable(name: "__c", arg: 1, scope: !518, file: !519, line: 207, type: !297)
!522 = !DILocation(line: 0, scope: !518)
!523 = !DILocation(line: 209, column: 22, scope: !518)
!524 = !DILocation(line: 209, column: 39, scope: !518)
!525 = !DILocation(line: 209, column: 38, scope: !518)
!526 = !DILocation(line: 209, column: 37, scope: !518)
!527 = !DILocation(line: 209, column: 10, scope: !518)
!528 = !DILocation(line: 209, column: 3, scope: !518)
!529 = distinct !DISubprogram(name: "toupper", scope: !519, file: !519, line: 213, type: !464, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !530)
!530 = !{!531}
!531 = !DILocalVariable(name: "__c", arg: 1, scope: !529, file: !519, line: 213, type: !297)
!532 = !DILocation(line: 0, scope: !529)
!533 = !DILocation(line: 215, column: 22, scope: !529)
!534 = !DILocation(line: 215, column: 39, scope: !529)
!535 = !DILocation(line: 215, column: 38, scope: !529)
!536 = !DILocation(line: 215, column: 37, scope: !529)
!537 = !DILocation(line: 215, column: 10, scope: !529)
!538 = !DILocation(line: 215, column: 3, scope: !529)
!539 = distinct !DISubprogram(name: "atoi", scope: !540, file: !540, line: 361, type: !541, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !543)
!540 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!541 = !DISubroutineType(types: !542)
!542 = !{!297, !302}
!543 = !{!544}
!544 = !DILocalVariable(name: "__nptr", arg: 1, scope: !539, file: !540, line: 361, type: !302)
!545 = !DILocation(line: 0, scope: !539)
!546 = !DILocation(line: 363, column: 16, scope: !539)
!547 = !DILocation(line: 363, column: 10, scope: !539)
!548 = !DILocation(line: 363, column: 3, scope: !539)
!549 = distinct !DISubprogram(name: "atol", scope: !540, file: !540, line: 366, type: !550, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !552)
!550 = !DISubroutineType(types: !551)
!551 = !{!423, !302}
!552 = !{!553}
!553 = !DILocalVariable(name: "__nptr", arg: 1, scope: !549, file: !540, line: 366, type: !302)
!554 = !DILocation(line: 0, scope: !549)
!555 = !DILocation(line: 368, column: 10, scope: !549)
!556 = !DILocation(line: 368, column: 3, scope: !549)
!557 = distinct !DISubprogram(name: "atoll", scope: !540, file: !540, line: 373, type: !558, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !561)
!558 = !DISubroutineType(types: !559)
!559 = !{!560, !302}
!560 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!561 = !{!562}
!562 = !DILocalVariable(name: "__nptr", arg: 1, scope: !557, file: !540, line: 373, type: !302)
!563 = !DILocation(line: 0, scope: !557)
!564 = !DILocation(line: 375, column: 10, scope: !557)
!565 = !DILocation(line: 375, column: 3, scope: !557)
!566 = distinct !DISubprogram(name: "bsearch", scope: !567, file: !567, line: 20, type: !568, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !576)
!567 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!568 = !DISubroutineType(types: !569)
!569 = !{!301, !570, !570, !353, !353, !572}
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !540, line: 808, baseType: !573)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{!297, !570, !570}
!576 = !{!577, !578, !579, !580, !581, !582, !583, !584, !585, !586}
!577 = !DILocalVariable(name: "__key", arg: 1, scope: !566, file: !567, line: 20, type: !570)
!578 = !DILocalVariable(name: "__base", arg: 2, scope: !566, file: !567, line: 20, type: !570)
!579 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !566, file: !567, line: 20, type: !353)
!580 = !DILocalVariable(name: "__size", arg: 4, scope: !566, file: !567, line: 20, type: !353)
!581 = !DILocalVariable(name: "__compar", arg: 5, scope: !566, file: !567, line: 21, type: !572)
!582 = !DILocalVariable(name: "__l", scope: !566, file: !567, line: 23, type: !353)
!583 = !DILocalVariable(name: "__u", scope: !566, file: !567, line: 23, type: !353)
!584 = !DILocalVariable(name: "__idx", scope: !566, file: !567, line: 23, type: !353)
!585 = !DILocalVariable(name: "__p", scope: !566, file: !567, line: 24, type: !570)
!586 = !DILocalVariable(name: "__comparison", scope: !566, file: !567, line: 25, type: !297)
!587 = !DILocation(line: 0, scope: !566)
!588 = !DILocation(line: 29, column: 3, scope: !566)
!589 = !DILocation(line: 27, column: 7, scope: !566)
!590 = !DILocation(line: 29, column: 14, scope: !566)
!591 = !DILocation(line: 31, column: 20, scope: !592)
!592 = distinct !DILexicalBlock(scope: !566, file: !567, line: 30, column: 5)
!593 = !DILocation(line: 31, column: 27, scope: !592)
!594 = !DILocation(line: 32, column: 56, scope: !592)
!595 = !DILocation(line: 32, column: 47, scope: !592)
!596 = !DILocation(line: 33, column: 22, scope: !592)
!597 = !DILocation(line: 34, column: 24, scope: !598)
!598 = distinct !DILexicalBlock(scope: !592, file: !567, line: 34, column: 11)
!599 = !DILocation(line: 34, column: 11, scope: !592)
!600 = !DILocation(line: 36, column: 29, scope: !601)
!601 = distinct !DILexicalBlock(scope: !598, file: !567, line: 36, column: 16)
!602 = !DILocation(line: 36, column: 16, scope: !598)
!603 = !DILocation(line: 37, column: 14, scope: !601)
!604 = distinct !{!604, !588, !605}
!605 = !DILocation(line: 40, column: 5, scope: !566)
!606 = !DILocation(line: 43, column: 1, scope: !566)
!607 = distinct !DISubprogram(name: "atof", scope: !608, file: !608, line: 25, type: !609, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !612)
!608 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!609 = !DISubroutineType(types: !610)
!610 = !{!611, !302}
!611 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!612 = !{!613}
!613 = !DILocalVariable(name: "__nptr", arg: 1, scope: !607, file: !608, line: 25, type: !302)
!614 = !DILocation(line: 0, scope: !607)
!615 = !DILocation(line: 27, column: 10, scope: !607)
!616 = !DILocation(line: 27, column: 3, scope: !607)
!617 = distinct !DISubprogram(name: "strtoimax", scope: !618, file: !618, line: 324, type: !619, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !625)
!618 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!619 = !DISubroutineType(types: !620)
!620 = !{!621, !371, !624, !297}
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !622, line: 101, baseType: !623)
!622 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !328, line: 72, baseType: !423)
!624 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !298)
!625 = !{!626, !627, !628}
!626 = !DILocalVariable(name: "nptr", arg: 1, scope: !617, file: !618, line: 324, type: !371)
!627 = !DILocalVariable(name: "endptr", arg: 2, scope: !617, file: !618, line: 324, type: !624)
!628 = !DILocalVariable(name: "base", arg: 3, scope: !617, file: !618, line: 324, type: !297)
!629 = !DILocation(line: 0, scope: !617)
!630 = !DILocation(line: 327, column: 10, scope: !617)
!631 = !DILocation(line: 327, column: 3, scope: !617)
!632 = distinct !DISubprogram(name: "strtoumax", scope: !618, file: !618, line: 336, type: !633, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !637)
!633 = !DISubroutineType(types: !634)
!634 = !{!635, !371, !624, !297}
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !622, line: 102, baseType: !636)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !328, line: 73, baseType: !355)
!637 = !{!638, !639, !640}
!638 = !DILocalVariable(name: "nptr", arg: 1, scope: !632, file: !618, line: 336, type: !371)
!639 = !DILocalVariable(name: "endptr", arg: 2, scope: !632, file: !618, line: 336, type: !624)
!640 = !DILocalVariable(name: "base", arg: 3, scope: !632, file: !618, line: 336, type: !297)
!641 = !DILocation(line: 0, scope: !632)
!642 = !DILocation(line: 339, column: 10, scope: !632)
!643 = !DILocation(line: 339, column: 3, scope: !632)
!644 = distinct !DISubprogram(name: "wcstoimax", scope: !618, file: !618, line: 348, type: !645, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !654)
!645 = !DISubroutineType(types: !646)
!646 = !{!621, !647, !651, !297}
!647 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !648)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !650)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !618, line: 34, baseType: !297)
!651 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !652)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!654 = !{!655, !656, !657}
!655 = !DILocalVariable(name: "nptr", arg: 1, scope: !644, file: !618, line: 348, type: !647)
!656 = !DILocalVariable(name: "endptr", arg: 2, scope: !644, file: !618, line: 348, type: !651)
!657 = !DILocalVariable(name: "base", arg: 3, scope: !644, file: !618, line: 348, type: !297)
!658 = !DILocation(line: 0, scope: !644)
!659 = !DILocation(line: 351, column: 10, scope: !644)
!660 = !DILocation(line: 351, column: 3, scope: !644)
!661 = distinct !DISubprogram(name: "wcstoumax", scope: !618, file: !618, line: 362, type: !662, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !664)
!662 = !DISubroutineType(types: !663)
!663 = !{!635, !647, !651, !297}
!664 = !{!665, !666, !667}
!665 = !DILocalVariable(name: "nptr", arg: 1, scope: !661, file: !618, line: 362, type: !647)
!666 = !DILocalVariable(name: "endptr", arg: 2, scope: !661, file: !618, line: 362, type: !651)
!667 = !DILocalVariable(name: "base", arg: 3, scope: !661, file: !618, line: 362, type: !297)
!668 = !DILocation(line: 0, scope: !661)
!669 = !DILocation(line: 365, column: 10, scope: !661)
!670 = !DILocation(line: 365, column: 3, scope: !661)
!671 = distinct !DISubprogram(name: "stat", scope: !672, file: !672, line: 453, type: !673, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !712)
!672 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!673 = !DISubroutineType(types: !674)
!674 = !{!297, !302, !675}
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !677, line: 46, size: 1152, elements: !678)
!677 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!678 = !{!679, !681, !683, !685, !687, !689, !691, !692, !693, !694, !696, !698, !706, !707, !708}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !676, file: !677, line: 48, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !328, line: 145, baseType: !355)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !676, file: !677, line: 53, baseType: !682, size: 64, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !328, line: 148, baseType: !355)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !676, file: !677, line: 61, baseType: !684, size: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !328, line: 151, baseType: !355)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !676, file: !677, line: 62, baseType: !686, size: 32, offset: 192)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !328, line: 150, baseType: !7)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !676, file: !677, line: 64, baseType: !688, size: 32, offset: 224)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !328, line: 146, baseType: !7)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !676, file: !677, line: 65, baseType: !690, size: 32, offset: 256)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !328, line: 147, baseType: !7)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !676, file: !677, line: 67, baseType: !297, size: 32, offset: 288)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !676, file: !677, line: 69, baseType: !680, size: 64, offset: 320)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !676, file: !677, line: 74, baseType: !422, size: 64, offset: 384)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !676, file: !677, line: 78, baseType: !695, size: 64, offset: 448)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !328, line: 174, baseType: !423)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !676, file: !677, line: 80, baseType: !697, size: 64, offset: 512)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !328, line: 179, baseType: !423)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !676, file: !677, line: 91, baseType: !699, size: 128, offset: 576)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !700, line: 10, size: 128, elements: !701)
!700 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!701 = !{!702, !704}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !699, file: !700, line: 12, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !328, line: 160, baseType: !423)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !699, file: !700, line: 16, baseType: !705, size: 64, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !328, line: 196, baseType: !423)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !676, file: !677, line: 92, baseType: !699, size: 128, offset: 704)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !676, file: !677, line: 93, baseType: !699, size: 128, offset: 832)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !676, file: !677, line: 106, baseType: !709, size: 192, offset: 960)
!709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !705, size: 192, elements: !710)
!710 = !{!711}
!711 = !DISubrange(count: 3)
!712 = !{!713, !714}
!713 = !DILocalVariable(name: "__path", arg: 1, scope: !671, file: !672, line: 453, type: !302)
!714 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !671, file: !672, line: 453, type: !675)
!715 = !DILocation(line: 0, scope: !671)
!716 = !DILocation(line: 455, column: 10, scope: !671)
!717 = !DILocation(line: 455, column: 3, scope: !671)
!718 = distinct !DISubprogram(name: "lstat", scope: !672, file: !672, line: 460, type: !673, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !719)
!719 = !{!720, !721}
!720 = !DILocalVariable(name: "__path", arg: 1, scope: !718, file: !672, line: 460, type: !302)
!721 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !718, file: !672, line: 460, type: !675)
!722 = !DILocation(line: 0, scope: !718)
!723 = !DILocation(line: 462, column: 10, scope: !718)
!724 = !DILocation(line: 462, column: 3, scope: !718)
!725 = distinct !DISubprogram(name: "fstat", scope: !672, file: !672, line: 467, type: !726, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !728)
!726 = !DISubroutineType(types: !727)
!727 = !{!297, !297, !675}
!728 = !{!729, !730}
!729 = !DILocalVariable(name: "__fd", arg: 1, scope: !725, file: !672, line: 467, type: !297)
!730 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !725, file: !672, line: 467, type: !675)
!731 = !DILocation(line: 0, scope: !725)
!732 = !DILocation(line: 469, column: 10, scope: !725)
!733 = !DILocation(line: 469, column: 3, scope: !725)
!734 = distinct !DISubprogram(name: "fstatat", scope: !672, file: !672, line: 474, type: !735, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !737)
!735 = !DISubroutineType(types: !736)
!736 = !{!297, !297, !302, !675, !297}
!737 = !{!738, !739, !740, !741}
!738 = !DILocalVariable(name: "__fd", arg: 1, scope: !734, file: !672, line: 474, type: !297)
!739 = !DILocalVariable(name: "__filename", arg: 2, scope: !734, file: !672, line: 474, type: !302)
!740 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !734, file: !672, line: 474, type: !675)
!741 = !DILocalVariable(name: "__flag", arg: 4, scope: !734, file: !672, line: 474, type: !297)
!742 = !DILocation(line: 0, scope: !734)
!743 = !DILocation(line: 477, column: 10, scope: !734)
!744 = !DILocation(line: 477, column: 3, scope: !734)
!745 = distinct !DISubprogram(name: "mknod", scope: !672, file: !672, line: 483, type: !746, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !748)
!746 = !DISubroutineType(types: !747)
!747 = !{!297, !302, !686, !680}
!748 = !{!749, !750, !751}
!749 = !DILocalVariable(name: "__path", arg: 1, scope: !745, file: !672, line: 483, type: !302)
!750 = !DILocalVariable(name: "__mode", arg: 2, scope: !745, file: !672, line: 483, type: !686)
!751 = !DILocalVariable(name: "__dev", arg: 3, scope: !745, file: !672, line: 483, type: !680)
!752 = !DILocation(line: 0, scope: !745)
!753 = !DILocation(line: 485, column: 10, scope: !745)
!754 = !DILocation(line: 485, column: 3, scope: !745)
!755 = distinct !DISubprogram(name: "mknodat", scope: !672, file: !672, line: 491, type: !756, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !758)
!756 = !DISubroutineType(types: !757)
!757 = !{!297, !297, !302, !686, !680}
!758 = !{!759, !760, !761, !762}
!759 = !DILocalVariable(name: "__fd", arg: 1, scope: !755, file: !672, line: 491, type: !297)
!760 = !DILocalVariable(name: "__path", arg: 2, scope: !755, file: !672, line: 491, type: !302)
!761 = !DILocalVariable(name: "__mode", arg: 3, scope: !755, file: !672, line: 491, type: !686)
!762 = !DILocalVariable(name: "__dev", arg: 4, scope: !755, file: !672, line: 491, type: !680)
!763 = !DILocation(line: 0, scope: !755)
!764 = !DILocation(line: 494, column: 10, scope: !755)
!765 = !DILocation(line: 494, column: 3, scope: !755)
!766 = distinct !DISubprogram(name: "stat64", scope: !672, file: !672, line: 502, type: !767, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !789)
!767 = !DISubroutineType(types: !768)
!768 = !{!297, !302, !769}
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !677, line: 119, size: 1152, elements: !771)
!771 = !{!772, !773, !775, !776, !777, !778, !779, !780, !781, !782, !783, !785, !786, !787, !788}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !770, file: !677, line: 121, baseType: !680, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !770, file: !677, line: 123, baseType: !774, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !328, line: 149, baseType: !355)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !770, file: !677, line: 124, baseType: !684, size: 64, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !770, file: !677, line: 125, baseType: !686, size: 32, offset: 192)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !770, file: !677, line: 132, baseType: !688, size: 32, offset: 224)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !770, file: !677, line: 133, baseType: !690, size: 32, offset: 256)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !770, file: !677, line: 135, baseType: !297, size: 32, offset: 288)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !770, file: !677, line: 136, baseType: !680, size: 64, offset: 320)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !770, file: !677, line: 137, baseType: !422, size: 64, offset: 384)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !770, file: !677, line: 143, baseType: !695, size: 64, offset: 448)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !770, file: !677, line: 144, baseType: !784, size: 64, offset: 512)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !328, line: 180, baseType: !423)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !770, file: !677, line: 152, baseType: !699, size: 128, offset: 576)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !770, file: !677, line: 153, baseType: !699, size: 128, offset: 704)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !770, file: !677, line: 154, baseType: !699, size: 128, offset: 832)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !770, file: !677, line: 164, baseType: !709, size: 192, offset: 960)
!789 = !{!790, !791}
!790 = !DILocalVariable(name: "__path", arg: 1, scope: !766, file: !672, line: 502, type: !302)
!791 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !766, file: !672, line: 502, type: !769)
!792 = !DILocation(line: 0, scope: !766)
!793 = !DILocation(line: 504, column: 10, scope: !766)
!794 = !DILocation(line: 504, column: 3, scope: !766)
!795 = distinct !DISubprogram(name: "lstat64", scope: !672, file: !672, line: 509, type: !767, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !796)
!796 = !{!797, !798}
!797 = !DILocalVariable(name: "__path", arg: 1, scope: !795, file: !672, line: 509, type: !302)
!798 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !795, file: !672, line: 509, type: !769)
!799 = !DILocation(line: 0, scope: !795)
!800 = !DILocation(line: 511, column: 10, scope: !795)
!801 = !DILocation(line: 511, column: 3, scope: !795)
!802 = distinct !DISubprogram(name: "fstat64", scope: !672, file: !672, line: 516, type: !803, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !805)
!803 = !DISubroutineType(types: !804)
!804 = !{!297, !297, !769}
!805 = !{!806, !807}
!806 = !DILocalVariable(name: "__fd", arg: 1, scope: !802, file: !672, line: 516, type: !297)
!807 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !802, file: !672, line: 516, type: !769)
!808 = !DILocation(line: 0, scope: !802)
!809 = !DILocation(line: 518, column: 10, scope: !802)
!810 = !DILocation(line: 518, column: 3, scope: !802)
!811 = distinct !DISubprogram(name: "fstatat64", scope: !672, file: !672, line: 523, type: !812, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !814)
!812 = !DISubroutineType(types: !813)
!813 = !{!297, !297, !302, !769, !297}
!814 = !{!815, !816, !817, !818}
!815 = !DILocalVariable(name: "__fd", arg: 1, scope: !811, file: !672, line: 523, type: !297)
!816 = !DILocalVariable(name: "__filename", arg: 2, scope: !811, file: !672, line: 523, type: !302)
!817 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !811, file: !672, line: 523, type: !769)
!818 = !DILocalVariable(name: "__flag", arg: 4, scope: !811, file: !672, line: 523, type: !297)
!819 = !DILocation(line: 0, scope: !811)
!820 = !DILocation(line: 526, column: 10, scope: !811)
!821 = !DILocation(line: 526, column: 3, scope: !811)
!822 = distinct !DISubprogram(name: "lto_register_user_option", scope: !3, file: !3, line: 230, type: !823, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !825)
!823 = !DISubroutineType(types: !824)
!824 = !{null, !353, !302, !297, !297}
!825 = !{!826, !827, !828, !829, !830}
!826 = !DILocalVariable(name: "code", arg: 1, scope: !822, file: !3, line: 230, type: !353)
!827 = !DILocalVariable(name: "arg", arg: 2, scope: !822, file: !3, line: 230, type: !302)
!828 = !DILocalVariable(name: "value", arg: 3, scope: !822, file: !3, line: 230, type: !297)
!829 = !DILocalVariable(name: "type", arg: 4, scope: !822, file: !3, line: 230, type: !297)
!830 = !DILocalVariable(name: "o", scope: !831, file: !3, line: 234, type: !348)
!831 = distinct !DILexicalBlock(scope: !832, file: !3, line: 233, column: 5)
!832 = distinct !DILexicalBlock(scope: !822, file: !3, line: 232, column: 7)
!833 = !DILocation(line: 0, scope: !822)
!834 = !DILocation(line: 232, column: 7, scope: !832)
!835 = !DILocation(line: 232, column: 7, scope: !822)
!836 = !DILocation(line: 234, column: 7, scope: !831)
!837 = !DILocation(line: 236, column: 9, scope: !831)
!838 = !DILocation(line: 236, column: 14, scope: !831)
!839 = !DILocation(line: 237, column: 9, scope: !831)
!840 = !DILocation(line: 237, column: 14, scope: !831)
!841 = !DILocation(line: 238, column: 15, scope: !842)
!842 = distinct !DILexicalBlock(scope: !831, file: !3, line: 238, column: 11)
!843 = !DILocation(line: 238, column: 11, scope: !831)
!844 = !DILocation(line: 240, column: 30, scope: !845)
!845 = distinct !DILexicalBlock(scope: !842, file: !3, line: 239, column: 2)
!846 = !DILocation(line: 240, column: 43, scope: !845)
!847 = !DILocation(line: 240, column: 21, scope: !845)
!848 = !DILocation(line: 240, column: 6, scope: !845)
!849 = !DILocation(line: 240, column: 10, scope: !845)
!850 = !DILocation(line: 241, column: 4, scope: !845)
!851 = !DILocation(line: 242, column: 2, scope: !845)
!852 = !DILocation(line: 244, column: 4, scope: !842)
!853 = !DILocation(line: 244, column: 8, scope: !842)
!854 = !DILocation(line: 245, column: 9, scope: !831)
!855 = !DILocation(line: 245, column: 15, scope: !831)
!856 = !DILocation(line: 0, scope: !831)
!857 = !DILocation(line: 246, column: 7, scope: !831)
!858 = !DILocation(line: 247, column: 5, scope: !832)
!859 = !DILocation(line: 247, column: 5, scope: !831)
!860 = !DILocation(line: 248, column: 1, scope: !822)
!861 = distinct !DISubprogram(name: "register_user_option_p", scope: !3, file: !3, line: 209, type: !862, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !864)
!862 = !DISubroutineType(types: !863)
!863 = !{!296, !353, !297}
!864 = !{!865, !866}
!865 = !DILocalVariable(name: "code", arg: 1, scope: !861, file: !3, line: 209, type: !353)
!866 = !DILocalVariable(name: "type", arg: 2, scope: !861, file: !3, line: 209, type: !297)
!867 = !DILocation(line: 0, scope: !861)
!868 = !DILocation(line: 211, column: 7, scope: !861)
!869 = !DILocation(line: 216, column: 8, scope: !870)
!870 = distinct !DILexicalBlock(scope: !871, file: !3, line: 214, column: 5)
!871 = distinct !DILexicalBlock(scope: !872, file: !3, line: 213, column: 12)
!872 = distinct !DILexicalBlock(scope: !861, file: !3, line: 211, column: 7)
!873 = !DILocation(line: 220, column: 8, scope: !870)
!874 = !DILocation(line: 215, column: 7, scope: !870)
!875 = !DILocation(line: 223, column: 3, scope: !861)
!876 = !DILocation(line: 224, column: 1, scope: !861)
!877 = distinct !DISubprogram(name: "VEC_opt_t_heap_safe_push", scope: !3, file: !3, line: 79, type: !878, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !884)
!878 = !DISubroutineType(types: !879)
!879 = !{!880, !881, !882}
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !348)
!884 = !{!885, !886}
!885 = !DILocalVariable(name: "vec_", arg: 1, scope: !877, file: !3, line: 79, type: !881)
!886 = !DILocalVariable(name: "obj_", arg: 2, scope: !877, file: !3, line: 79, type: !882)
!887 = !DILocation(line: 0, scope: !877)
!888 = !DILocation(line: 79, column: 1, scope: !877)
!889 = distinct !DISubprogram(name: "lto_clear_user_options", scope: !3, file: !3, line: 253, type: !890, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !389)
!890 = !DISubroutineType(types: !891)
!891 = !{null}
!892 = !DILocation(line: 255, column: 3, scope: !889)
!893 = !DILocation(line: 256, column: 1, scope: !889)
!894 = distinct !DISubprogram(name: "clear_options", scope: !3, file: !3, line: 125, type: !895, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !897)
!895 = !DISubroutineType(types: !896)
!896 = !{null, !881}
!897 = !{!898, !899, !900}
!898 = !DILocalVariable(name: "opts_p", arg: 1, scope: !894, file: !3, line: 125, type: !881)
!899 = !DILocalVariable(name: "i", scope: !894, file: !3, line: 127, type: !297)
!900 = !DILocalVariable(name: "o", scope: !894, file: !3, line: 128, type: !880)
!901 = !DILocation(line: 0, scope: !894)
!902 = !DILocation(line: 128, column: 3, scope: !894)
!903 = !DILocation(line: 130, column: 8, scope: !904)
!904 = distinct !DILexicalBlock(scope: !894, file: !3, line: 130, column: 3)
!905 = !DILocation(line: 0, scope: !904)
!906 = !DILocation(line: 130, column: 15, scope: !907)
!907 = distinct !DILexicalBlock(scope: !904, file: !3, line: 130, column: 3)
!908 = !DILocation(line: 130, column: 3, scope: !904)
!909 = !DILocation(line: 131, column: 11, scope: !907)
!910 = !DILocation(line: 131, column: 14, scope: !907)
!911 = !DILocation(line: 131, column: 5, scope: !907)
!912 = !DILocation(line: 130, column: 52, scope: !907)
!913 = !DILocation(line: 130, column: 3, scope: !907)
!914 = distinct !{!914, !908, !915}
!915 = !DILocation(line: 131, column: 17, scope: !904)
!916 = !DILocation(line: 133, column: 3, scope: !894)
!917 = !DILocation(line: 134, column: 1, scope: !894)
!918 = distinct !DISubprogram(name: "lto_clear_file_options", scope: !3, file: !3, line: 261, type: !890, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !389)
!919 = !DILocation(line: 263, column: 3, scope: !918)
!920 = !DILocation(line: 264, column: 1, scope: !918)
!921 = distinct !DISubprogram(name: "lto_write_options", scope: !3, file: !3, line: 294, type: !890, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !922)
!922 = !{!923, !925, !926, !927}
!923 = !DILocalVariable(name: "section_name", scope: !921, file: !3, line: 296, type: !924)
!924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!925 = !DILocalVariable(name: "stream", scope: !921, file: !3, line: 297, type: !305)
!926 = !DILocalVariable(name: "header", scope: !921, file: !3, line: 298, type: !319)
!927 = !DILocalVariable(name: "header_stream", scope: !921, file: !3, line: 299, type: !304)
!928 = !DILocation(line: 296, column: 30, scope: !921)
!929 = !DILocation(line: 0, scope: !921)
!930 = !DILocation(line: 297, column: 3, scope: !921)
!931 = !DILocation(line: 298, column: 3, scope: !921)
!932 = !DILocation(line: 301, column: 37, scope: !921)
!933 = !DILocation(line: 301, column: 36, scope: !921)
!934 = !DILocation(line: 301, column: 3, scope: !921)
!935 = !DILocation(line: 302, column: 3, scope: !921)
!936 = !DILocation(line: 304, column: 3, scope: !921)
!937 = !DILocation(line: 305, column: 3, scope: !921)
!938 = !DILocation(line: 307, column: 3, scope: !921)
!939 = !DILocation(line: 308, column: 21, scope: !921)
!940 = !DILocation(line: 308, column: 35, scope: !921)
!941 = !DILocation(line: 309, column: 21, scope: !921)
!942 = !DILocation(line: 309, column: 35, scope: !921)
!943 = !DILocation(line: 310, column: 21, scope: !921)
!944 = !DILocation(line: 310, column: 34, scope: !921)
!945 = !DILocation(line: 312, column: 10, scope: !921)
!946 = !DILocation(line: 312, column: 26, scope: !921)
!947 = !DILocation(line: 313, column: 29, scope: !921)
!948 = !DILocation(line: 313, column: 10, scope: !921)
!949 = !DILocation(line: 313, column: 20, scope: !921)
!950 = !DILocation(line: 316, column: 6, scope: !921)
!951 = !DILocation(line: 315, column: 20, scope: !921)
!952 = !DILocation(line: 317, column: 3, scope: !921)
!953 = !DILocation(line: 318, column: 3, scope: !921)
!954 = !DILocation(line: 319, column: 3, scope: !921)
!955 = !DILocation(line: 321, column: 3, scope: !921)
!956 = !DILocation(line: 322, column: 3, scope: !921)
!957 = !DILocation(line: 323, column: 1, scope: !921)
!958 = distinct !DISubprogram(name: "output_options", scope: !3, file: !3, line: 271, type: !959, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !961)
!959 = !DISubroutineType(types: !960)
!960 = !{null, !304}
!961 = !{!962, !963, !964, !966, !967}
!962 = !DILocalVariable(name: "stream", arg: 1, scope: !958, file: !3, line: 271, type: !304)
!963 = !DILocalVariable(name: "opts", scope: !958, file: !3, line: 273, type: !336)
!964 = !DILocalVariable(name: "length", scope: !958, file: !3, line: 274, type: !965)
!965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !353)
!966 = !DILocalVariable(name: "i", scope: !958, file: !3, line: 275, type: !297)
!967 = !DILocalVariable(name: "o", scope: !958, file: !3, line: 276, type: !880)
!968 = !DILocation(line: 0, scope: !958)
!969 = !DILocation(line: 273, column: 3, scope: !958)
!970 = !DILocation(line: 273, column: 49, scope: !958)
!971 = !DILocation(line: 273, column: 63, scope: !958)
!972 = !DILocation(line: 273, column: 28, scope: !958)
!973 = !DILocation(line: 273, column: 21, scope: !958)
!974 = !DILocation(line: 274, column: 3, scope: !958)
!975 = !DILocation(line: 274, column: 25, scope: !958)
!976 = !DILocation(line: 274, column: 16, scope: !958)
!977 = !DILocation(line: 276, column: 3, scope: !958)
!978 = !DILocation(line: 278, column: 3, scope: !958)
!979 = !DILocation(line: 0, scope: !980)
!980 = distinct !DILexicalBlock(scope: !981, file: !3, line: 281, column: 5)
!981 = distinct !DILexicalBlock(scope: !982, file: !3, line: 280, column: 3)
!982 = distinct !DILexicalBlock(scope: !958, file: !3, line: 280, column: 3)
!983 = !DILocation(line: 280, column: 8, scope: !982)
!984 = !DILocation(line: 280, column: 15, scope: !981)
!985 = !DILocation(line: 0, scope: !982)
!986 = !DILocation(line: 280, column: 3, scope: !982)
!987 = !DILocation(line: 282, column: 36, scope: !980)
!988 = !DILocation(line: 282, column: 7, scope: !980)
!989 = !DILocation(line: 283, column: 36, scope: !980)
!990 = !DILocation(line: 283, column: 39, scope: !980)
!991 = !DILocation(line: 283, column: 35, scope: !980)
!992 = !DILocation(line: 283, column: 7, scope: !980)
!993 = !DILocation(line: 284, column: 37, scope: !980)
!994 = !DILocation(line: 284, column: 40, scope: !980)
!995 = !DILocation(line: 284, column: 7, scope: !980)
!996 = !DILocation(line: 285, column: 36, scope: !980)
!997 = !DILocation(line: 285, column: 39, scope: !980)
!998 = !DILocation(line: 285, column: 35, scope: !980)
!999 = !DILocation(line: 285, column: 7, scope: !980)
!1000 = !DILocation(line: 280, column: 49, scope: !981)
!1001 = !DILocation(line: 280, column: 3, scope: !981)
!1002 = distinct !{!1002, !986, !1003}
!1003 = !DILocation(line: 286, column: 5, scope: !982)
!1004 = !DILocation(line: 288, column: 3, scope: !958)
!1005 = !DILocation(line: 289, column: 1, scope: !958)
!1006 = distinct !DISubprogram(name: "lto_read_file_options", scope: !3, file: !3, line: 349, type: !1007, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2294)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{null, !1009}
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_file_decl_data", file: !6, line: 540, size: 512, elements: !1011)
!1011 = !{!1012, !2069, !2070, !2289, !2290, !2291, !2292, !2293}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "current_decl_state", scope: !1010, file: !6, line: 543, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_in_decl_state", file: !6, line: 502, size: 960, elements: !1015)
!1015 = !{!1016, !2068}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !1014, file: !6, line: 505, baseType: !1017, size: 896)
!1017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1018, size: 896, elements: !2066)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_tree_ref_table", file: !6, line: 473, size: 128, elements: !1019)
!1019 = !{!1020, !2065}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "trees", scope: !1018, file: !6, line: 476, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !1023, line: 56, baseType: !1024)
!1023 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !21, line: 3371, size: 1792, elements: !1026)
!1026 = !{!1027, !1060, !1066, !1077, !1084, !1091, !1096, !1102, !1108, !1121, !1133, !1171, !1179, !1207, !1215, !1216, !1221, !1230, !1236, !1241, !1245, !1249, !1706, !1755, !1761, !1767, !1774, !1785, !1810, !1827, !1839, !1861, !1876, !2047}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1025, file: !21, line: 3372, baseType: !1028, size: 64)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !21, line: 360, size: 64, elements: !1029)
!1029 = !{!1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1028, file: !21, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !1028, file: !21, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !1028, file: !21, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !1028, file: !21, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !1028, file: !21, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !1028, file: !21, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !1028, file: !21, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !1028, file: !21, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !1028, file: !21, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !1028, file: !21, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !1028, file: !21, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !1028, file: !21, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !1028, file: !21, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !1028, file: !21, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !1028, file: !21, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !1028, file: !21, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !1028, file: !21, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !1028, file: !21, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1028, file: !21, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1028, file: !21, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1028, file: !21, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1028, file: !21, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1028, file: !21, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1028, file: !21, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1028, file: !21, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1028, file: !21, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !1028, file: !21, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !1028, file: !21, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !1028, file: !21, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !1028, file: !21, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1025, file: !21, line: 3373, baseType: !1061, size: 192)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !21, line: 402, size: 192, elements: !1062)
!1062 = !{!1063, !1064, !1065}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1061, file: !21, line: 403, baseType: !1028, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !1061, file: !21, line: 404, baseType: !1022, size: 64, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1061, file: !21, line: 405, baseType: !1022, size: 64, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !1025, file: !21, line: 3374, baseType: !1067, size: 320)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !21, line: 1384, size: 320, elements: !1068)
!1068 = !{!1069, !1070}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1067, file: !21, line: 1385, baseType: !1061, size: 192)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !1067, file: !21, line: 1386, baseType: !1071, size: 128, offset: 192)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !1072, line: 58, baseType: !1073)
!1072 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1072, line: 54, size: 128, elements: !1074)
!1074 = !{!1075, !1076}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !1073, file: !1072, line: 56, baseType: !355, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !1073, file: !1072, line: 57, baseType: !423, size: 64, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !1025, file: !21, line: 3375, baseType: !1078, size: 256)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !21, line: 1397, size: 256, elements: !1079)
!1079 = !{!1080, !1081}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1078, file: !21, line: 1398, baseType: !1061, size: 192)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !1078, file: !21, line: 1399, baseType: !1082, size: 64, offset: 192)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !21, line: 1392, flags: DIFlagFwdDecl)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !1025, file: !21, line: 3376, baseType: !1085, size: 256)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !21, line: 1408, size: 256, elements: !1086)
!1086 = !{!1087, !1088}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1085, file: !21, line: 1409, baseType: !1061, size: 192)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !1085, file: !21, line: 1410, baseType: !1089, size: 64, offset: 192)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !21, line: 1403, flags: DIFlagFwdDecl)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1025, file: !21, line: 3377, baseType: !1092, size: 256)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !21, line: 1437, size: 256, elements: !1093)
!1093 = !{!1094, !1095}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1092, file: !21, line: 1438, baseType: !1061, size: 192)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1092, file: !21, line: 1439, baseType: !1022, size: 64, offset: 192)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1025, file: !21, line: 3378, baseType: !1097, size: 256)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !21, line: 1418, size: 256, elements: !1098)
!1098 = !{!1099, !1100, !1101}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1097, file: !21, line: 1419, baseType: !1061, size: 192)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1097, file: !21, line: 1420, baseType: !297, size: 32, offset: 192)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1097, file: !21, line: 1421, baseType: !429, size: 8, offset: 224)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !1025, file: !21, line: 3379, baseType: !1103, size: 320)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !21, line: 1428, size: 320, elements: !1104)
!1104 = !{!1105, !1106, !1107}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1103, file: !21, line: 1429, baseType: !1061, size: 192)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !1103, file: !21, line: 1430, baseType: !1022, size: 64, offset: 192)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !1103, file: !21, line: 1431, baseType: !1022, size: 64, offset: 256)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !1025, file: !21, line: 3380, baseType: !1109, size: 320)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !21, line: 1460, size: 320, elements: !1110)
!1110 = !{!1111, !1112}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1109, file: !21, line: 1461, baseType: !1061, size: 192)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1109, file: !21, line: 1462, baseType: !1113, size: 128, offset: 192)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !1114, line: 31, size: 128, elements: !1115)
!1114 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1115 = !{!1116, !1119, !1120}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1113, file: !1114, line: 32, baseType: !1117, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !296)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1113, file: !1114, line: 33, baseType: !7, size: 32, offset: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !1113, file: !1114, line: 34, baseType: !7, size: 32, offset: 96)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !1025, file: !21, line: 3381, baseType: !1122, size: 384)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !21, line: 2507, size: 384, elements: !1123)
!1123 = !{!1124, !1125, !1130, !1131, !1132}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1122, file: !21, line: 2508, baseType: !1061, size: 192)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1122, file: !21, line: 2509, baseType: !1126, size: 32, offset: 192)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !1127, line: 58, baseType: !1128)
!1127 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !1129, line: 44, baseType: !7)
!1129 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1122, file: !21, line: 2510, baseType: !7, size: 32, offset: 224)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1122, file: !21, line: 2511, baseType: !1022, size: 64, offset: 256)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1122, file: !21, line: 2512, baseType: !1022, size: 64, offset: 320)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !1025, file: !21, line: 3382, baseType: !1134, size: 896)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !21, line: 2652, size: 896, elements: !1135)
!1135 = !{!1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1134, file: !21, line: 2653, baseType: !1122, size: 384)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1134, file: !21, line: 2654, baseType: !1022, size: 64, offset: 384)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1134, file: !21, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !1134, file: !21, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !1134, file: !21, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !1134, file: !21, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1134, file: !21, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !1134, file: !21, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !1134, file: !21, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !1134, file: !21, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1134, file: !21, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1134, file: !21, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1134, file: !21, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1134, file: !21, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1134, file: !21, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1134, file: !21, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1134, file: !21, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !1134, file: !21, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !1134, file: !21, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !1134, file: !21, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !1134, file: !21, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !1134, file: !21, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !1134, file: !21, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !1134, file: !21, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !1134, file: !21, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !1134, file: !21, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !1134, file: !21, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1134, file: !21, line: 2703, baseType: !7, size: 32, offset: 512)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1134, file: !21, line: 2705, baseType: !1022, size: 64, offset: 576)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1134, file: !21, line: 2706, baseType: !1022, size: 64, offset: 640)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1134, file: !21, line: 2707, baseType: !1022, size: 64, offset: 704)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1134, file: !21, line: 2708, baseType: !1022, size: 64, offset: 768)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1134, file: !21, line: 2711, baseType: !1169, size: 64, offset: 832)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !21, line: 2711, flags: DIFlagFwdDecl)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !1025, file: !21, line: 3383, baseType: !1172, size: 960)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !21, line: 2756, size: 960, elements: !1173)
!1173 = !{!1174, !1175}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1172, file: !21, line: 2757, baseType: !1134, size: 896)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1172, file: !21, line: 2758, baseType: !1176, size: 64, offset: 896)
!1176 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !1023, line: 50, baseType: !1177)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !1023, line: 49, flags: DIFlagFwdDecl)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !1025, file: !21, line: 3384, baseType: !1180, size: 1472)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !21, line: 3114, size: 1472, elements: !1181)
!1181 = !{!1182, !1203, !1204, !1205, !1206}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1180, file: !21, line: 3115, baseType: !1183, size: 1216)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !21, line: 2984, size: 1216, elements: !1184)
!1184 = !{!1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1183, file: !21, line: 2985, baseType: !1172, size: 960)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1183, file: !21, line: 2986, baseType: !1022, size: 64, offset: 960)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1183, file: !21, line: 2987, baseType: !1022, size: 64, offset: 1024)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1183, file: !21, line: 2988, baseType: !1022, size: 64, offset: 1088)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1183, file: !21, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1183, file: !21, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1183, file: !21, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1183, file: !21, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1183, file: !21, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1183, file: !21, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1183, file: !21, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1183, file: !21, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1183, file: !21, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1183, file: !21, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1183, file: !21, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1183, file: !21, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1183, file: !21, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1183, file: !21, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1180, file: !21, line: 3117, baseType: !1022, size: 64, offset: 1216)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1180, file: !21, line: 3119, baseType: !1022, size: 64, offset: 1280)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1180, file: !21, line: 3121, baseType: !1022, size: 64, offset: 1344)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1180, file: !21, line: 3123, baseType: !1022, size: 64, offset: 1408)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !1025, file: !21, line: 3385, baseType: !1208, size: 1088)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !21, line: 2874, size: 1088, elements: !1209)
!1209 = !{!1210, !1211, !1212}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1208, file: !21, line: 2875, baseType: !1172, size: 960)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1208, file: !21, line: 2876, baseType: !1176, size: 64, offset: 960)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1208, file: !21, line: 2877, baseType: !1213, size: 64, offset: 1024)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !21, line: 2856, flags: DIFlagFwdDecl)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !1025, file: !21, line: 3386, baseType: !1183, size: 1216)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !1025, file: !21, line: 3387, baseType: !1217, size: 1280)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !21, line: 3093, size: 1280, elements: !1218)
!1218 = !{!1219, !1220}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1217, file: !21, line: 3094, baseType: !1183, size: 1216)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1217, file: !21, line: 3095, baseType: !1213, size: 64, offset: 1216)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !1025, file: !21, line: 3388, baseType: !1222, size: 1216)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !21, line: 2824, size: 1216, elements: !1223)
!1223 = !{!1224, !1225, !1226, !1227, !1228, !1229}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1222, file: !21, line: 2825, baseType: !1134, size: 896)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1222, file: !21, line: 2827, baseType: !1022, size: 64, offset: 896)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1222, file: !21, line: 2828, baseType: !1022, size: 64, offset: 960)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1222, file: !21, line: 2829, baseType: !1022, size: 64, offset: 1024)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1222, file: !21, line: 2830, baseType: !1022, size: 64, offset: 1088)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1222, file: !21, line: 2831, baseType: !1022, size: 64, offset: 1152)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !1025, file: !21, line: 3389, baseType: !1231, size: 1024)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !21, line: 2850, size: 1024, elements: !1232)
!1232 = !{!1233, !1234, !1235}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1231, file: !21, line: 2851, baseType: !1172, size: 960)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1231, file: !21, line: 2852, baseType: !297, size: 32, offset: 960)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1231, file: !21, line: 2853, baseType: !297, size: 32, offset: 992)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !1025, file: !21, line: 3390, baseType: !1237, size: 1024)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !21, line: 2857, size: 1024, elements: !1238)
!1238 = !{!1239, !1240}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1237, file: !21, line: 2858, baseType: !1172, size: 960)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1237, file: !21, line: 2859, baseType: !1213, size: 64, offset: 960)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !1025, file: !21, line: 3391, baseType: !1242, size: 960)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !21, line: 2862, size: 960, elements: !1243)
!1243 = !{!1244}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1242, file: !21, line: 2863, baseType: !1172, size: 960)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !1025, file: !21, line: 3392, baseType: !1246, size: 1472)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !21, line: 3304, size: 1472, elements: !1247)
!1247 = !{!1248}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1246, file: !21, line: 3305, baseType: !1180, size: 1472)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !1025, file: !21, line: 3393, baseType: !1250, size: 1792)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !21, line: 3248, size: 1792, elements: !1251)
!1251 = !{!1252, !1253, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1250, file: !21, line: 3249, baseType: !1180, size: 1472)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1250, file: !21, line: 3251, baseType: !1254, size: 64, offset: 1472)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1256, line: 463, size: 1152, elements: !1257)
!1256 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1257 = !{!1258, !1261, !1576, !1577, !1580, !1583, !1628, !1629, !1630, !1631, !1632, !1658, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1255, file: !1256, line: 464, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1256, line: 464, flags: DIFlagFwdDecl)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1255, file: !1256, line: 467, baseType: !1262, size: 64, offset: 64)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !216, line: 374, size: 640, elements: !1264)
!1264 = !{!1265, !1551, !1552, !1565, !1566, !1567, !1568, !1569, !1570, !1572, !1574, !1575}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1263, file: !216, line: 377, baseType: !1266, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !1023, line: 111, baseType: !1267)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !216, line: 217, size: 832, elements: !1269)
!1269 = !{!1270, !1514, !1515, !1516, !1519, !1525, !1526, !1527, !1545, !1546, !1547, !1548, !1549, !1550}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !1268, file: !216, line: 219, baseType: !1271, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !216, line: 151, baseType: !1273)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !216, line: 151, size: 128, elements: !1274)
!1274 = !{!1275}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1273, file: !216, line: 151, baseType: !1276, size: 128)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !216, line: 150, baseType: !1277)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !216, line: 150, size: 128, elements: !1278)
!1278 = !{!1279, !1280, !1281}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1277, file: !216, line: 150, baseType: !7, size: 32)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1277, file: !216, line: 150, baseType: !7, size: 32, offset: 32)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1277, file: !216, line: 150, baseType: !1282, size: 64, offset: 64)
!1282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1283, size: 64, elements: !358)
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !1023, line: 108, baseType: !1284)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !216, line: 122, size: 512, elements: !1286)
!1286 = !{!1287, !1288, !1289, !1506, !1507, !1508, !1509, !1510, !1511, !1512}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1285, file: !216, line: 124, baseType: !1267, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !1285, file: !216, line: 125, baseType: !1267, size: 64, offset: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !1285, file: !216, line: 131, baseType: !1290, size: 64, offset: 128)
!1290 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !216, line: 128, size: 64, elements: !1291)
!1291 = !{!1292, !1505}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1290, file: !216, line: 129, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !1023, line: 66, baseType: !1294)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !1296, line: 143, size: 192, elements: !1297)
!1296 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1297 = !{!1298, !1503, !1504}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1295, file: !1296, line: 145, baseType: !1299, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !1023, line: 69, baseType: !1300)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !1296, line: 136, size: 192, elements: !1302)
!1302 = !{!1303, !1501, !1502}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1301, file: !1296, line: 137, baseType: !1304, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !1023, line: 58, baseType: !1305)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !1296, line: 737, size: 768, elements: !1307)
!1307 = !{!1308, !1325, !1358, !1364, !1369, !1374, !1381, !1387, !1393, !1398, !1412, !1417, !1423, !1428, !1438, !1443, !1459, !1466, !1473, !1479, !1484, !1490, !1496}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1306, file: !1296, line: 738, baseType: !1309, size: 256)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !1296, line: 271, size: 256, elements: !1310)
!1310 = !{!1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1309, file: !1296, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !1309, file: !1296, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1309, file: !1296, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !1309, file: !1296, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !1309, file: !1296, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !1309, file: !1296, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !1309, file: !1296, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !1309, file: !1296, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1309, file: !1296, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1309, file: !1296, line: 312, baseType: !7, size: 32, offset: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !1309, file: !1296, line: 316, baseType: !1126, size: 32, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !1309, file: !1296, line: 319, baseType: !7, size: 32, offset: 96)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !1309, file: !1296, line: 323, baseType: !1267, size: 64, offset: 128)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1309, file: !1296, line: 327, baseType: !1022, size: 64, offset: 192)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !1306, file: !1296, line: 739, baseType: !1326, size: 448)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !1296, line: 350, size: 448, elements: !1327)
!1327 = !{!1328, !1356}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1326, file: !1296, line: 353, baseType: !1329, size: 384)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !1296, line: 333, size: 384, elements: !1330)
!1330 = !{!1331, !1332, !1339}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1329, file: !1296, line: 336, baseType: !1309, size: 256)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !1329, file: !1296, line: 343, baseType: !1333, size: 64, offset: 256)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !1335, line: 37, size: 128, elements: !1336)
!1335 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1336 = !{!1337, !1338}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1334, file: !1335, line: 39, baseType: !1333, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !1334, file: !1335, line: 40, baseType: !1021, size: 64, offset: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !1329, file: !1296, line: 344, baseType: !1340, size: 64, offset: 320)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !1335, line: 45, size: 320, elements: !1342)
!1342 = !{!1343, !1344}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1341, file: !1335, line: 47, baseType: !1340, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !1341, file: !1335, line: 48, baseType: !1345, size: 256, offset: 64)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !21, line: 1883, size: 256, elements: !1346)
!1346 = !{!1347, !1349, !1350, !1355}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1345, file: !21, line: 1884, baseType: !1348, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1345, file: !21, line: 1885, baseType: !1348, size: 64, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1345, file: !21, line: 1891, baseType: !1351, size: 64, offset: 128)
!1351 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1345, file: !21, line: 1891, size: 64, elements: !1352)
!1352 = !{!1353, !1354}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1351, file: !21, line: 1891, baseType: !1304, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1351, file: !21, line: 1891, baseType: !1022, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1345, file: !21, line: 1892, baseType: !1021, size: 64, offset: 192)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1326, file: !1296, line: 359, baseType: !1357, size: 64, offset: 384)
!1357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1022, size: 64, elements: !358)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !1306, file: !1296, line: 740, baseType: !1359, size: 512)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !1296, line: 365, size: 512, elements: !1360)
!1360 = !{!1361, !1362, !1363}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1359, file: !1296, line: 368, baseType: !1329, size: 384)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !1359, file: !1296, line: 373, baseType: !1022, size: 64, offset: 384)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !1359, file: !1296, line: 374, baseType: !1022, size: 64, offset: 448)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !1306, file: !1296, line: 741, baseType: !1365, size: 576)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !1296, line: 380, size: 576, elements: !1366)
!1366 = !{!1367, !1368}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1365, file: !1296, line: 383, baseType: !1359, size: 512)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1365, file: !1296, line: 389, baseType: !1357, size: 64, offset: 512)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1306, file: !1296, line: 742, baseType: !1370, size: 320)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !1296, line: 395, size: 320, elements: !1371)
!1371 = !{!1372, !1373}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1370, file: !1296, line: 397, baseType: !1309, size: 256)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1370, file: !1296, line: 400, baseType: !1293, size: 64, offset: 256)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !1306, file: !1296, line: 743, baseType: !1375, size: 448)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !1296, line: 406, size: 448, elements: !1376)
!1376 = !{!1377, !1378, !1379, !1380}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1375, file: !1296, line: 408, baseType: !1309, size: 256)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1375, file: !1296, line: 412, baseType: !1022, size: 64, offset: 256)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1375, file: !1296, line: 420, baseType: !1022, size: 64, offset: 320)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1375, file: !1296, line: 423, baseType: !1293, size: 64, offset: 384)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !1306, file: !1296, line: 744, baseType: !1382, size: 384)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !1296, line: 429, size: 384, elements: !1383)
!1383 = !{!1384, !1385, !1386}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1382, file: !1296, line: 431, baseType: !1309, size: 256)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1382, file: !1296, line: 434, baseType: !1022, size: 64, offset: 256)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1382, file: !1296, line: 437, baseType: !1293, size: 64, offset: 320)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !1306, file: !1296, line: 745, baseType: !1388, size: 384)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !1296, line: 443, size: 384, elements: !1389)
!1389 = !{!1390, !1391, !1392}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1388, file: !1296, line: 445, baseType: !1309, size: 256)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1388, file: !1296, line: 449, baseType: !1022, size: 64, offset: 256)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1388, file: !1296, line: 453, baseType: !1293, size: 64, offset: 320)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !1306, file: !1296, line: 746, baseType: !1394, size: 320)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !1296, line: 459, size: 320, elements: !1395)
!1395 = !{!1396, !1397}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1394, file: !1296, line: 461, baseType: !1309, size: 256)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1394, file: !1296, line: 464, baseType: !1022, size: 64, offset: 256)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !1306, file: !1296, line: 747, baseType: !1399, size: 768)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !1296, line: 469, size: 768, elements: !1400)
!1400 = !{!1401, !1402, !1403, !1404, !1405}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1399, file: !1296, line: 471, baseType: !1309, size: 256)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1399, file: !1296, line: 474, baseType: !7, size: 32, offset: 256)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1399, file: !1296, line: 475, baseType: !7, size: 32, offset: 288)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1399, file: !1296, line: 478, baseType: !1022, size: 64, offset: 320)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1399, file: !1296, line: 481, baseType: !1406, size: 384, offset: 384)
!1406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1407, size: 384, elements: !358)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !21, line: 1917, size: 384, elements: !1408)
!1408 = !{!1409, !1410, !1411}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1407, file: !21, line: 1920, baseType: !1345, size: 256)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1407, file: !21, line: 1921, baseType: !1022, size: 64, offset: 256)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1407, file: !21, line: 1922, baseType: !1126, size: 32, offset: 320)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !1306, file: !1296, line: 748, baseType: !1413, size: 320)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !1296, line: 487, size: 320, elements: !1414)
!1414 = !{!1415, !1416}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1413, file: !1296, line: 490, baseType: !1309, size: 256)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1413, file: !1296, line: 494, baseType: !297, size: 32, offset: 256)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !1306, file: !1296, line: 749, baseType: !1418, size: 384)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !1296, line: 500, size: 384, elements: !1419)
!1419 = !{!1420, !1421, !1422}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1418, file: !1296, line: 502, baseType: !1309, size: 256)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1418, file: !1296, line: 506, baseType: !1293, size: 64, offset: 256)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1418, file: !1296, line: 510, baseType: !1293, size: 64, offset: 320)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !1306, file: !1296, line: 750, baseType: !1424, size: 320)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !1296, line: 529, size: 320, elements: !1425)
!1425 = !{!1426, !1427}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1424, file: !1296, line: 531, baseType: !1309, size: 256)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1424, file: !1296, line: 540, baseType: !1293, size: 64, offset: 256)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !1306, file: !1296, line: 751, baseType: !1429, size: 704)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !1296, line: 546, size: 704, elements: !1430)
!1430 = !{!1431, !1432, !1433, !1434, !1435, !1436, !1437}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1429, file: !1296, line: 549, baseType: !1359, size: 512)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1429, file: !1296, line: 553, baseType: !302, size: 64, offset: 512)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1429, file: !1296, line: 557, baseType: !296, size: 8, offset: 576)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1429, file: !1296, line: 558, baseType: !296, size: 8, offset: 584)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1429, file: !1296, line: 559, baseType: !296, size: 8, offset: 592)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1429, file: !1296, line: 560, baseType: !296, size: 8, offset: 600)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1429, file: !1296, line: 566, baseType: !1357, size: 64, offset: 640)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !1306, file: !1296, line: 752, baseType: !1439, size: 384)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !1296, line: 571, size: 384, elements: !1440)
!1440 = !{!1441, !1442}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1439, file: !1296, line: 573, baseType: !1370, size: 320)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1439, file: !1296, line: 577, baseType: !1022, size: 64, offset: 320)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !1306, file: !1296, line: 753, baseType: !1444, size: 576)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !1296, line: 600, size: 576, elements: !1445)
!1445 = !{!1446, !1447, !1448, !1449, !1458}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1444, file: !1296, line: 602, baseType: !1370, size: 320)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1444, file: !1296, line: 605, baseType: !1022, size: 64, offset: 320)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1444, file: !1296, line: 609, baseType: !353, size: 64, offset: 384)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1444, file: !1296, line: 612, baseType: !1450, size: 64, offset: 448)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !1296, line: 581, size: 320, elements: !1452)
!1452 = !{!1453, !1454, !1455, !1456, !1457}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1451, file: !1296, line: 583, baseType: !20, size: 32)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1451, file: !1296, line: 586, baseType: !1022, size: 64, offset: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1451, file: !1296, line: 589, baseType: !1022, size: 64, offset: 128)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1451, file: !1296, line: 592, baseType: !1022, size: 64, offset: 192)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1451, file: !1296, line: 595, baseType: !1022, size: 64, offset: 256)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1444, file: !1296, line: 616, baseType: !1293, size: 64, offset: 512)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !1306, file: !1296, line: 754, baseType: !1460, size: 512)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !1296, line: 622, size: 512, elements: !1461)
!1461 = !{!1462, !1463, !1464, !1465}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1460, file: !1296, line: 624, baseType: !1370, size: 320)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1460, file: !1296, line: 628, baseType: !1022, size: 64, offset: 320)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1460, file: !1296, line: 632, baseType: !1022, size: 64, offset: 384)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1460, file: !1296, line: 636, baseType: !1022, size: 64, offset: 448)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !1306, file: !1296, line: 755, baseType: !1467, size: 704)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !1296, line: 642, size: 704, elements: !1468)
!1468 = !{!1469, !1470, !1471, !1472}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1467, file: !1296, line: 644, baseType: !1460, size: 512)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1467, file: !1296, line: 648, baseType: !1022, size: 64, offset: 512)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1467, file: !1296, line: 652, baseType: !1022, size: 64, offset: 576)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1467, file: !1296, line: 653, baseType: !1022, size: 64, offset: 640)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !1306, file: !1296, line: 756, baseType: !1474, size: 448)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !1296, line: 663, size: 448, elements: !1475)
!1475 = !{!1476, !1477, !1478}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1474, file: !1296, line: 665, baseType: !1370, size: 320)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1474, file: !1296, line: 668, baseType: !1022, size: 64, offset: 320)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1474, file: !1296, line: 673, baseType: !1022, size: 64, offset: 384)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !1306, file: !1296, line: 757, baseType: !1480, size: 384)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !1296, line: 694, size: 384, elements: !1481)
!1481 = !{!1482, !1483}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1480, file: !1296, line: 696, baseType: !1370, size: 320)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1480, file: !1296, line: 699, baseType: !1022, size: 64, offset: 320)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !1306, file: !1296, line: 758, baseType: !1485, size: 384)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !1296, line: 681, size: 384, elements: !1486)
!1486 = !{!1487, !1488, !1489}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1485, file: !1296, line: 683, baseType: !1309, size: 256)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1485, file: !1296, line: 686, baseType: !1022, size: 64, offset: 256)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1485, file: !1296, line: 689, baseType: !1022, size: 64, offset: 320)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !1306, file: !1296, line: 759, baseType: !1491, size: 384)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !1296, line: 707, size: 384, elements: !1492)
!1492 = !{!1493, !1494, !1495}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1491, file: !1296, line: 709, baseType: !1309, size: 256)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1491, file: !1296, line: 712, baseType: !1022, size: 64, offset: 256)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1491, file: !1296, line: 712, baseType: !1022, size: 64, offset: 320)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !1306, file: !1296, line: 760, baseType: !1497, size: 320)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !1296, line: 718, size: 320, elements: !1498)
!1498 = !{!1499, !1500}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1497, file: !1296, line: 720, baseType: !1309, size: 256)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1497, file: !1296, line: 723, baseType: !1022, size: 64, offset: 256)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1301, file: !1296, line: 138, baseType: !1300, size: 64, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1301, file: !1296, line: 139, baseType: !1300, size: 64, offset: 128)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1295, file: !1296, line: 146, baseType: !1299, size: 64, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !1295, file: !1296, line: 152, baseType: !1293, size: 64, offset: 128)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1290, file: !216, line: 130, baseType: !1176, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1285, file: !216, line: 134, baseType: !301, size: 64, offset: 192)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !1285, file: !216, line: 137, baseType: !1022, size: 64, offset: 256)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !1285, file: !216, line: 138, baseType: !1126, size: 32, offset: 320)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !1285, file: !216, line: 142, baseType: !7, size: 32, offset: 352)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1285, file: !216, line: 144, baseType: !297, size: 32, offset: 384)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !1285, file: !216, line: 145, baseType: !297, size: 32, offset: 416)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1285, file: !216, line: 146, baseType: !1513, size: 64, offset: 448)
!1513 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !216, line: 119, baseType: !423)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !1268, file: !216, line: 220, baseType: !1271, size: 64, offset: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1268, file: !216, line: 223, baseType: !301, size: 64, offset: 128)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !1268, file: !216, line: 226, baseType: !1517, size: 64, offset: 192)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !216, line: 185, flags: DIFlagFwdDecl)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !1268, file: !216, line: 229, baseType: !1520, size: 128, offset: 256)
!1520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1521, size: 128, elements: !1523)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !216, line: 229, flags: DIFlagFwdDecl)
!1523 = !{!1524}
!1524 = !DISubrange(count: 2)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !1268, file: !216, line: 232, baseType: !1267, size: 64, offset: 384)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !1268, file: !216, line: 233, baseType: !1267, size: 64, offset: 448)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !1268, file: !216, line: 238, baseType: !1528, size: 64, offset: 512)
!1528 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !216, line: 235, size: 64, elements: !1529)
!1529 = !{!1530, !1536}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1528, file: !216, line: 236, baseType: !1531, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !216, line: 273, size: 128, elements: !1533)
!1533 = !{!1534, !1535}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1532, file: !216, line: 275, baseType: !1293, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1532, file: !216, line: 278, baseType: !1293, size: 64, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1528, file: !216, line: 237, baseType: !1537, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !216, line: 259, size: 320, elements: !1539)
!1539 = !{!1540, !1541, !1542, !1543, !1544}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1538, file: !216, line: 261, baseType: !1176, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1538, file: !216, line: 262, baseType: !1176, size: 64, offset: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1538, file: !216, line: 266, baseType: !1176, size: 64, offset: 128)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1538, file: !216, line: 267, baseType: !1176, size: 64, offset: 192)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1538, file: !216, line: 270, baseType: !297, size: 32, offset: 256)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1268, file: !216, line: 241, baseType: !1513, size: 64, offset: 576)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1268, file: !216, line: 244, baseType: !297, size: 32, offset: 640)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !1268, file: !216, line: 247, baseType: !297, size: 32, offset: 672)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !1268, file: !216, line: 250, baseType: !297, size: 32, offset: 704)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !1268, file: !216, line: 253, baseType: !297, size: 32, offset: 736)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1268, file: !216, line: 256, baseType: !297, size: 32, offset: 768)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1263, file: !216, line: 378, baseType: !1266, size: 64, offset: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1263, file: !216, line: 381, baseType: !1553, size: 64, offset: 128)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !216, line: 282, baseType: !1555)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !216, line: 282, size: 128, elements: !1556)
!1556 = !{!1557}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1555, file: !216, line: 282, baseType: !1558, size: 128)
!1558 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !216, line: 281, baseType: !1559)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !216, line: 281, size: 128, elements: !1560)
!1560 = !{!1561, !1562, !1563}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1559, file: !216, line: 281, baseType: !7, size: 32)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1559, file: !216, line: 281, baseType: !7, size: 32, offset: 32)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1559, file: !216, line: 281, baseType: !1564, size: 64, offset: 64)
!1564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1266, size: 64, elements: !358)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1263, file: !216, line: 384, baseType: !297, size: 32, offset: 192)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1263, file: !216, line: 387, baseType: !297, size: 32, offset: 224)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1263, file: !216, line: 390, baseType: !297, size: 32, offset: 256)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1263, file: !216, line: 394, baseType: !1553, size: 64, offset: 320)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1263, file: !216, line: 396, baseType: !215, size: 32, offset: 384)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1263, file: !216, line: 399, baseType: !1571, size: 64, offset: 416)
!1571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 64, elements: !1523)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1263, file: !216, line: 402, baseType: !1573, size: 64, offset: 480)
!1573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !1523)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1263, file: !216, line: 406, baseType: !297, size: 32, offset: 544)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1263, file: !216, line: 409, baseType: !297, size: 32, offset: 576)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1255, file: !1256, line: 470, baseType: !1294, size: 64, offset: 128)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1255, file: !1256, line: 473, baseType: !1578, size: 64, offset: 192)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1256, line: 166, flags: DIFlagFwdDecl)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1255, file: !1256, line: 476, baseType: !1581, size: 64, offset: 256)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1256, line: 476, flags: DIFlagFwdDecl)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1255, file: !1256, line: 479, baseType: !1584, size: 64, offset: 320)
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1585, line: 144, baseType: !1586)
!1585 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1585, line: 100, size: 896, elements: !1588)
!1588 = !{!1589, !1595, !1597, !1602, !1604, !1605, !1606, !1607, !1608, !1609, !1614, !1616, !1617, !1622, !1627}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1587, file: !1585, line: 102, baseType: !1590, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1585, line: 52, baseType: !1591)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!1594, !570}
!1594 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1585, line: 47, baseType: !7)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1587, file: !1585, line: 105, baseType: !1596, size: 64, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1585, line: 59, baseType: !573)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1587, file: !1585, line: 108, baseType: !1598, size: 64, offset: 128)
!1598 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1585, line: 63, baseType: !1599)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{null, !301}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1587, file: !1585, line: 111, baseType: !1603, size: 64, offset: 192)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1587, file: !1585, line: 114, baseType: !353, size: 64, offset: 256)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1587, file: !1585, line: 117, baseType: !353, size: 64, offset: 320)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1587, file: !1585, line: 120, baseType: !353, size: 64, offset: 384)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1587, file: !1585, line: 124, baseType: !7, size: 32, offset: 448)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1587, file: !1585, line: 128, baseType: !7, size: 32, offset: 480)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1587, file: !1585, line: 131, baseType: !1610, size: 64, offset: 512)
!1610 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1585, line: 75, baseType: !1611)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!301, !353, !353}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1587, file: !1585, line: 132, baseType: !1615, size: 64, offset: 576)
!1615 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1585, line: 78, baseType: !1599)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1587, file: !1585, line: 135, baseType: !301, size: 64, offset: 640)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1587, file: !1585, line: 136, baseType: !1618, size: 64, offset: 704)
!1618 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1585, line: 82, baseType: !1619)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!301, !301, !353, !353}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1587, file: !1585, line: 137, baseType: !1623, size: 64, offset: 768)
!1623 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1585, line: 83, baseType: !1624)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{null, !301, !301}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1587, file: !1585, line: 141, baseType: !7, size: 32, offset: 832)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1255, file: !1256, line: 484, baseType: !1022, size: 64, offset: 384)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1255, file: !1256, line: 488, baseType: !1022, size: 64, offset: 448)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1255, file: !1256, line: 493, baseType: !1022, size: 64, offset: 512)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1255, file: !1256, line: 496, baseType: !1022, size: 64, offset: 576)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1255, file: !1256, line: 501, baseType: !1633, size: 64, offset: 640)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !227, line: 2355, size: 576, elements: !1635)
!1635 = !{!1636, !1639, !1640, !1641, !1642, !1646, !1647, !1652, !1653, !1654, !1655, !1656, !1657}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1634, file: !227, line: 2356, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !227, line: 2356, flags: DIFlagFwdDecl)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1634, file: !227, line: 2357, baseType: !302, size: 64, offset: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1634, file: !227, line: 2358, baseType: !297, size: 32, offset: 128)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1634, file: !227, line: 2359, baseType: !297, size: 32, offset: 160)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1634, file: !227, line: 2360, baseType: !1643, size: 128, offset: 192)
!1643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 128, elements: !1644)
!1644 = !{!1645}
!1645 = !DISubrange(count: 4)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1634, file: !227, line: 2364, baseType: !297, size: 32, offset: 320)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1634, file: !227, line: 2367, baseType: !1648, size: 128, offset: 384)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !227, line: 2349, size: 128, elements: !1649)
!1649 = !{!1650, !1651}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1648, file: !227, line: 2351, baseType: !1176, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1648, file: !227, line: 2352, baseType: !423, size: 64, offset: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1634, file: !227, line: 2371, baseType: !226, size: 32, offset: 512)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1634, file: !227, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1634, file: !227, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1634, file: !227, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1634, file: !227, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1634, file: !227, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1255, file: !1256, line: 504, baseType: !1659, size: 64, offset: 704)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1256, line: 504, flags: DIFlagFwdDecl)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1255, file: !1256, line: 507, baseType: !1584, size: 64, offset: 768)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1255, file: !1256, line: 510, baseType: !297, size: 32, offset: 832)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1255, file: !1256, line: 513, baseType: !297, size: 32, offset: 864)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1255, file: !1256, line: 516, baseType: !1126, size: 32, offset: 896)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1255, file: !1256, line: 519, baseType: !1126, size: 32, offset: 928)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1255, file: !1256, line: 522, baseType: !7, size: 32, offset: 960)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1255, file: !1256, line: 523, baseType: !7, size: 32, offset: 992)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1255, file: !1256, line: 528, baseType: !302, size: 64, offset: 1024)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1255, file: !1256, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1255, file: !1256, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1255, file: !1256, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1255, file: !1256, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1255, file: !1256, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1255, file: !1256, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1255, file: !1256, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1255, file: !1256, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1255, file: !1256, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1255, file: !1256, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1255, file: !1256, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1255, file: !1256, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1255, file: !1256, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1255, file: !1256, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1255, file: !1256, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1255, file: !1256, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1250, file: !21, line: 3254, baseType: !1022, size: 64, offset: 1536)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1250, file: !21, line: 3257, baseType: !1022, size: 64, offset: 1600)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1250, file: !21, line: 3258, baseType: !1022, size: 64, offset: 1664)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1250, file: !21, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1250, file: !21, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1250, file: !21, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1250, file: !21, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1250, file: !21, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1250, file: !21, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1250, file: !21, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1250, file: !21, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1250, file: !21, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1250, file: !21, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1250, file: !21, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1250, file: !21, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1250, file: !21, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1250, file: !21, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1250, file: !21, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1250, file: !21, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1250, file: !21, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1250, file: !21, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1025, file: !21, line: 3394, baseType: !1707, size: 1344)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !21, line: 2279, size: 1344, elements: !1708)
!1708 = !{!1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1734, !1735, !1736, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1707, file: !21, line: 2280, baseType: !1061, size: 192)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1707, file: !21, line: 2281, baseType: !1022, size: 64, offset: 192)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1707, file: !21, line: 2282, baseType: !1022, size: 64, offset: 256)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1707, file: !21, line: 2283, baseType: !1022, size: 64, offset: 320)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1707, file: !21, line: 2284, baseType: !1022, size: 64, offset: 384)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1707, file: !21, line: 2285, baseType: !7, size: 32, offset: 448)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1707, file: !21, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1707, file: !21, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1707, file: !21, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1707, file: !21, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1707, file: !21, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1707, file: !21, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1707, file: !21, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1707, file: !21, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1707, file: !21, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1707, file: !21, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1707, file: !21, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1707, file: !21, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1707, file: !21, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1707, file: !21, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1707, file: !21, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1707, file: !21, line: 2305, baseType: !7, size: 32, offset: 512)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1707, file: !21, line: 2306, baseType: !1732, size: 32, offset: 544)
!1732 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1733, line: 31, baseType: !297)
!1733 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1707, file: !21, line: 2307, baseType: !1022, size: 64, offset: 576)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1707, file: !21, line: 2308, baseType: !1022, size: 64, offset: 640)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1707, file: !21, line: 2314, baseType: !1737, size: 64, offset: 704)
!1737 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !21, line: 2309, size: 64, elements: !1738)
!1738 = !{!1739, !1740, !1741}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1737, file: !21, line: 2310, baseType: !297, size: 32)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1737, file: !21, line: 2311, baseType: !302, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1737, file: !21, line: 2312, baseType: !1742, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !21, line: 2277, flags: DIFlagFwdDecl)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1707, file: !21, line: 2315, baseType: !1022, size: 64, offset: 768)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1707, file: !21, line: 2316, baseType: !1022, size: 64, offset: 832)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1707, file: !21, line: 2317, baseType: !1022, size: 64, offset: 896)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1707, file: !21, line: 2318, baseType: !1022, size: 64, offset: 960)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1707, file: !21, line: 2319, baseType: !1022, size: 64, offset: 1024)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1707, file: !21, line: 2320, baseType: !1022, size: 64, offset: 1088)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1707, file: !21, line: 2321, baseType: !1022, size: 64, offset: 1152)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1707, file: !21, line: 2322, baseType: !1022, size: 64, offset: 1216)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1707, file: !21, line: 2324, baseType: !1753, size: 64, offset: 1280)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !21, line: 2324, flags: DIFlagFwdDecl)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1025, file: !21, line: 3395, baseType: !1756, size: 320)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !21, line: 1469, size: 320, elements: !1757)
!1757 = !{!1758, !1759, !1760}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1756, file: !21, line: 1470, baseType: !1061, size: 192)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1756, file: !21, line: 1471, baseType: !1022, size: 64, offset: 192)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1756, file: !21, line: 1472, baseType: !1022, size: 64, offset: 256)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1025, file: !21, line: 3396, baseType: !1762, size: 320)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !21, line: 1482, size: 320, elements: !1763)
!1763 = !{!1764, !1765, !1766}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1762, file: !21, line: 1483, baseType: !1061, size: 192)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1762, file: !21, line: 1484, baseType: !297, size: 32, offset: 192)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1762, file: !21, line: 1485, baseType: !1357, size: 64, offset: 256)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !1025, file: !21, line: 3397, baseType: !1768, size: 384)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !21, line: 1829, size: 384, elements: !1769)
!1769 = !{!1770, !1771, !1772, !1773}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1768, file: !21, line: 1830, baseType: !1061, size: 192)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1768, file: !21, line: 1831, baseType: !1126, size: 32, offset: 192)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1768, file: !21, line: 1832, baseType: !1022, size: 64, offset: 256)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1768, file: !21, line: 1835, baseType: !1357, size: 64, offset: 320)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1025, file: !21, line: 3398, baseType: !1775, size: 704)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !21, line: 1898, size: 704, elements: !1776)
!1776 = !{!1777, !1778, !1779, !1780, !1781, !1784}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1775, file: !21, line: 1899, baseType: !1061, size: 192)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1775, file: !21, line: 1902, baseType: !1022, size: 64, offset: 192)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1775, file: !21, line: 1905, baseType: !1304, size: 64, offset: 256)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1775, file: !21, line: 1908, baseType: !7, size: 32, offset: 320)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1775, file: !21, line: 1911, baseType: !1782, size: 64, offset: 384)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !21, line: 1876, flags: DIFlagFwdDecl)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1775, file: !21, line: 1914, baseType: !1345, size: 256, offset: 448)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1025, file: !21, line: 3399, baseType: !1786, size: 704)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !21, line: 2008, size: 704, elements: !1787)
!1787 = !{!1788, !1789, !1790, !1791, !1792, !1793, !1805, !1806, !1807, !1808, !1809}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1786, file: !21, line: 2009, baseType: !1061, size: 192)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1786, file: !21, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1786, file: !21, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1786, file: !21, line: 2014, baseType: !1126, size: 32, offset: 224)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1786, file: !21, line: 2016, baseType: !1022, size: 64, offset: 256)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1786, file: !21, line: 2017, baseType: !1794, size: 64, offset: 320)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !21, line: 183, baseType: !1796)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !21, line: 183, size: 128, elements: !1797)
!1797 = !{!1798}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1796, file: !21, line: 183, baseType: !1799, size: 128)
!1799 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !21, line: 182, baseType: !1800)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !21, line: 182, size: 128, elements: !1801)
!1801 = !{!1802, !1803, !1804}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1800, file: !21, line: 182, baseType: !7, size: 32)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1800, file: !21, line: 182, baseType: !7, size: 32, offset: 32)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1800, file: !21, line: 182, baseType: !1357, size: 64, offset: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1786, file: !21, line: 2019, baseType: !1022, size: 64, offset: 384)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1786, file: !21, line: 2020, baseType: !1022, size: 64, offset: 448)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1786, file: !21, line: 2021, baseType: !1022, size: 64, offset: 512)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1786, file: !21, line: 2022, baseType: !1022, size: 64, offset: 576)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1786, file: !21, line: 2023, baseType: !1022, size: 64, offset: 640)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1025, file: !21, line: 3400, baseType: !1811, size: 832)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !21, line: 2430, size: 832, elements: !1812)
!1812 = !{!1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1811, file: !21, line: 2431, baseType: !1061, size: 192)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1811, file: !21, line: 2433, baseType: !1022, size: 64, offset: 192)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1811, file: !21, line: 2434, baseType: !1022, size: 64, offset: 256)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1811, file: !21, line: 2435, baseType: !1022, size: 64, offset: 320)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1811, file: !21, line: 2436, baseType: !1022, size: 64, offset: 384)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1811, file: !21, line: 2437, baseType: !1794, size: 64, offset: 448)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1811, file: !21, line: 2438, baseType: !1022, size: 64, offset: 512)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1811, file: !21, line: 2440, baseType: !1022, size: 64, offset: 576)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1811, file: !21, line: 2441, baseType: !1022, size: 64, offset: 640)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1811, file: !21, line: 2443, baseType: !1823, size: 128, offset: 704)
!1823 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !21, line: 182, baseType: !1824)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !21, line: 182, size: 128, elements: !1825)
!1825 = !{!1826}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1824, file: !21, line: 182, baseType: !1799, size: 128)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !1025, file: !21, line: 3401, baseType: !1828, size: 320)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !21, line: 3327, size: 320, elements: !1829)
!1829 = !{!1830, !1831, !1838}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1828, file: !21, line: 3329, baseType: !1061, size: 192)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1828, file: !21, line: 3330, baseType: !1832, size: 64, offset: 192)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !21, line: 3320, size: 192, elements: !1834)
!1834 = !{!1835, !1836, !1837}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1833, file: !21, line: 3322, baseType: !1832, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1833, file: !21, line: 3323, baseType: !1832, size: 64, offset: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1833, file: !21, line: 3324, baseType: !1022, size: 64, offset: 128)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1828, file: !21, line: 3331, baseType: !1832, size: 64, offset: 256)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !1025, file: !21, line: 3402, baseType: !1840, size: 256)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !21, line: 1540, size: 256, elements: !1841)
!1841 = !{!1842, !1843}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1840, file: !21, line: 1541, baseType: !1061, size: 192)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1840, file: !21, line: 1542, baseType: !1844, size: 64, offset: 192)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !21, line: 1538, baseType: !1846)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !21, line: 1538, size: 192, elements: !1847)
!1847 = !{!1848}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1846, file: !21, line: 1538, baseType: !1849, size: 192)
!1849 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !21, line: 1537, baseType: !1850)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !21, line: 1537, size: 192, elements: !1851)
!1851 = !{!1852, !1853, !1854}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1850, file: !21, line: 1537, baseType: !7, size: 32)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1850, file: !21, line: 1537, baseType: !7, size: 32, offset: 32)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1850, file: !21, line: 1537, baseType: !1855, size: 128, offset: 64)
!1855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1856, size: 128, elements: !358)
!1856 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !21, line: 1535, baseType: !1857)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !21, line: 1532, size: 128, elements: !1858)
!1858 = !{!1859, !1860}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1857, file: !21, line: 1533, baseType: !1022, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1857, file: !21, line: 1534, baseType: !1022, size: 64, offset: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !1025, file: !21, line: 3403, baseType: !1862, size: 512)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !21, line: 1938, size: 512, elements: !1863)
!1863 = !{!1864, !1865, !1866, !1867, !1873, !1874, !1875}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1862, file: !21, line: 1939, baseType: !1061, size: 192)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1862, file: !21, line: 1940, baseType: !1126, size: 32, offset: 192)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1862, file: !21, line: 1941, baseType: !231, size: 32, offset: 224)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1862, file: !21, line: 1946, baseType: !1868, size: 32, offset: 256)
!1868 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !21, line: 1942, size: 32, elements: !1869)
!1869 = !{!1870, !1871, !1872}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1868, file: !21, line: 1943, baseType: !249, size: 32)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1868, file: !21, line: 1944, baseType: !256, size: 32)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1868, file: !21, line: 1945, baseType: !20, size: 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1862, file: !21, line: 1950, baseType: !1293, size: 64, offset: 320)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1862, file: !21, line: 1951, baseType: !1293, size: 64, offset: 384)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1862, file: !21, line: 1953, baseType: !1357, size: 64, offset: 448)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !1025, file: !21, line: 3404, baseType: !1877, size: 1664)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !21, line: 3337, size: 1664, elements: !1878)
!1878 = !{!1879, !1880}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1877, file: !21, line: 3338, baseType: !1061, size: 192)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1877, file: !21, line: 3341, baseType: !1881, size: 1472, offset: 192)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1882, line: 410, size: 1472, elements: !1883)
!1882 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1883 = !{!1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1881, file: !1882, line: 412, baseType: !297, size: 32)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1881, file: !1882, line: 413, baseType: !297, size: 32, offset: 32)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1881, file: !1882, line: 414, baseType: !297, size: 32, offset: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1881, file: !1882, line: 415, baseType: !297, size: 32, offset: 96)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1881, file: !1882, line: 416, baseType: !297, size: 32, offset: 128)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1881, file: !1882, line: 417, baseType: !297, size: 32, offset: 160)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1881, file: !1882, line: 418, baseType: !296, size: 8, offset: 192)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1881, file: !1882, line: 419, baseType: !296, size: 8, offset: 200)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1881, file: !1882, line: 420, baseType: !427, size: 8, offset: 208)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1881, file: !1882, line: 421, baseType: !427, size: 8, offset: 216)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1881, file: !1882, line: 422, baseType: !427, size: 8, offset: 224)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1881, file: !1882, line: 423, baseType: !427, size: 8, offset: 232)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1881, file: !1882, line: 424, baseType: !427, size: 8, offset: 240)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1881, file: !1882, line: 425, baseType: !427, size: 8, offset: 248)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1881, file: !1882, line: 426, baseType: !427, size: 8, offset: 256)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1881, file: !1882, line: 427, baseType: !427, size: 8, offset: 264)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1881, file: !1882, line: 428, baseType: !427, size: 8, offset: 272)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1881, file: !1882, line: 429, baseType: !427, size: 8, offset: 280)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1881, file: !1882, line: 430, baseType: !427, size: 8, offset: 288)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1881, file: !1882, line: 431, baseType: !427, size: 8, offset: 296)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1881, file: !1882, line: 432, baseType: !427, size: 8, offset: 304)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1881, file: !1882, line: 433, baseType: !427, size: 8, offset: 312)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1881, file: !1882, line: 434, baseType: !427, size: 8, offset: 320)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1881, file: !1882, line: 435, baseType: !427, size: 8, offset: 328)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1881, file: !1882, line: 436, baseType: !427, size: 8, offset: 336)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1881, file: !1882, line: 437, baseType: !427, size: 8, offset: 344)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1881, file: !1882, line: 438, baseType: !427, size: 8, offset: 352)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1881, file: !1882, line: 439, baseType: !427, size: 8, offset: 360)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1881, file: !1882, line: 440, baseType: !427, size: 8, offset: 368)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1881, file: !1882, line: 441, baseType: !427, size: 8, offset: 376)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1881, file: !1882, line: 442, baseType: !427, size: 8, offset: 384)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1881, file: !1882, line: 443, baseType: !427, size: 8, offset: 392)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1881, file: !1882, line: 444, baseType: !427, size: 8, offset: 400)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1881, file: !1882, line: 445, baseType: !427, size: 8, offset: 408)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1881, file: !1882, line: 446, baseType: !427, size: 8, offset: 416)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1881, file: !1882, line: 447, baseType: !427, size: 8, offset: 424)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1881, file: !1882, line: 448, baseType: !427, size: 8, offset: 432)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1881, file: !1882, line: 449, baseType: !427, size: 8, offset: 440)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1881, file: !1882, line: 450, baseType: !427, size: 8, offset: 448)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1881, file: !1882, line: 451, baseType: !427, size: 8, offset: 456)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1881, file: !1882, line: 452, baseType: !427, size: 8, offset: 464)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1881, file: !1882, line: 453, baseType: !427, size: 8, offset: 472)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1881, file: !1882, line: 454, baseType: !427, size: 8, offset: 480)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1881, file: !1882, line: 455, baseType: !427, size: 8, offset: 488)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1881, file: !1882, line: 456, baseType: !427, size: 8, offset: 496)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1881, file: !1882, line: 457, baseType: !427, size: 8, offset: 504)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1881, file: !1882, line: 458, baseType: !427, size: 8, offset: 512)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1881, file: !1882, line: 459, baseType: !427, size: 8, offset: 520)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1881, file: !1882, line: 460, baseType: !427, size: 8, offset: 528)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1881, file: !1882, line: 461, baseType: !427, size: 8, offset: 536)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1881, file: !1882, line: 462, baseType: !427, size: 8, offset: 544)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1881, file: !1882, line: 463, baseType: !427, size: 8, offset: 552)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1881, file: !1882, line: 464, baseType: !427, size: 8, offset: 560)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1881, file: !1882, line: 465, baseType: !427, size: 8, offset: 568)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1881, file: !1882, line: 466, baseType: !427, size: 8, offset: 576)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1881, file: !1882, line: 467, baseType: !427, size: 8, offset: 584)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1881, file: !1882, line: 468, baseType: !427, size: 8, offset: 592)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1881, file: !1882, line: 469, baseType: !427, size: 8, offset: 600)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1881, file: !1882, line: 470, baseType: !427, size: 8, offset: 608)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1881, file: !1882, line: 471, baseType: !427, size: 8, offset: 616)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1881, file: !1882, line: 472, baseType: !427, size: 8, offset: 624)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1881, file: !1882, line: 473, baseType: !427, size: 8, offset: 632)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1881, file: !1882, line: 474, baseType: !427, size: 8, offset: 640)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1881, file: !1882, line: 475, baseType: !427, size: 8, offset: 648)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1881, file: !1882, line: 476, baseType: !427, size: 8, offset: 656)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1881, file: !1882, line: 477, baseType: !427, size: 8, offset: 664)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1881, file: !1882, line: 478, baseType: !427, size: 8, offset: 672)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1881, file: !1882, line: 479, baseType: !427, size: 8, offset: 680)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1881, file: !1882, line: 480, baseType: !427, size: 8, offset: 688)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1881, file: !1882, line: 481, baseType: !427, size: 8, offset: 696)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1881, file: !1882, line: 482, baseType: !427, size: 8, offset: 704)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1881, file: !1882, line: 483, baseType: !427, size: 8, offset: 712)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1881, file: !1882, line: 484, baseType: !427, size: 8, offset: 720)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1881, file: !1882, line: 485, baseType: !427, size: 8, offset: 728)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1881, file: !1882, line: 486, baseType: !427, size: 8, offset: 736)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1881, file: !1882, line: 487, baseType: !427, size: 8, offset: 744)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1881, file: !1882, line: 488, baseType: !427, size: 8, offset: 752)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1881, file: !1882, line: 489, baseType: !427, size: 8, offset: 760)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1881, file: !1882, line: 490, baseType: !427, size: 8, offset: 768)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1881, file: !1882, line: 491, baseType: !427, size: 8, offset: 776)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1881, file: !1882, line: 492, baseType: !427, size: 8, offset: 784)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1881, file: !1882, line: 493, baseType: !427, size: 8, offset: 792)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1881, file: !1882, line: 494, baseType: !427, size: 8, offset: 800)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1881, file: !1882, line: 495, baseType: !427, size: 8, offset: 808)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1881, file: !1882, line: 496, baseType: !427, size: 8, offset: 816)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1881, file: !1882, line: 497, baseType: !427, size: 8, offset: 824)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1881, file: !1882, line: 498, baseType: !427, size: 8, offset: 832)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1881, file: !1882, line: 499, baseType: !427, size: 8, offset: 840)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1881, file: !1882, line: 500, baseType: !427, size: 8, offset: 848)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1881, file: !1882, line: 501, baseType: !427, size: 8, offset: 856)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1881, file: !1882, line: 502, baseType: !427, size: 8, offset: 864)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1881, file: !1882, line: 503, baseType: !427, size: 8, offset: 872)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1881, file: !1882, line: 504, baseType: !427, size: 8, offset: 880)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1881, file: !1882, line: 505, baseType: !427, size: 8, offset: 888)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1881, file: !1882, line: 506, baseType: !427, size: 8, offset: 896)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1881, file: !1882, line: 507, baseType: !427, size: 8, offset: 904)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1881, file: !1882, line: 508, baseType: !427, size: 8, offset: 912)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1881, file: !1882, line: 509, baseType: !427, size: 8, offset: 920)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1881, file: !1882, line: 510, baseType: !427, size: 8, offset: 928)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1881, file: !1882, line: 511, baseType: !427, size: 8, offset: 936)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1881, file: !1882, line: 512, baseType: !427, size: 8, offset: 944)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1881, file: !1882, line: 513, baseType: !427, size: 8, offset: 952)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1881, file: !1882, line: 514, baseType: !427, size: 8, offset: 960)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1881, file: !1882, line: 515, baseType: !427, size: 8, offset: 968)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1881, file: !1882, line: 516, baseType: !427, size: 8, offset: 976)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1881, file: !1882, line: 517, baseType: !427, size: 8, offset: 984)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1881, file: !1882, line: 518, baseType: !427, size: 8, offset: 992)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1881, file: !1882, line: 519, baseType: !427, size: 8, offset: 1000)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1881, file: !1882, line: 520, baseType: !427, size: 8, offset: 1008)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1881, file: !1882, line: 521, baseType: !427, size: 8, offset: 1016)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1881, file: !1882, line: 522, baseType: !427, size: 8, offset: 1024)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1881, file: !1882, line: 523, baseType: !427, size: 8, offset: 1032)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1881, file: !1882, line: 524, baseType: !427, size: 8, offset: 1040)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1881, file: !1882, line: 525, baseType: !427, size: 8, offset: 1048)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1881, file: !1882, line: 526, baseType: !427, size: 8, offset: 1056)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1881, file: !1882, line: 527, baseType: !427, size: 8, offset: 1064)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1881, file: !1882, line: 528, baseType: !427, size: 8, offset: 1072)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1881, file: !1882, line: 529, baseType: !427, size: 8, offset: 1080)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1881, file: !1882, line: 530, baseType: !427, size: 8, offset: 1088)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1881, file: !1882, line: 531, baseType: !427, size: 8, offset: 1096)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1881, file: !1882, line: 532, baseType: !427, size: 8, offset: 1104)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1881, file: !1882, line: 533, baseType: !427, size: 8, offset: 1112)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1881, file: !1882, line: 534, baseType: !427, size: 8, offset: 1120)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1881, file: !1882, line: 535, baseType: !427, size: 8, offset: 1128)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1881, file: !1882, line: 536, baseType: !427, size: 8, offset: 1136)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1881, file: !1882, line: 537, baseType: !427, size: 8, offset: 1144)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1881, file: !1882, line: 538, baseType: !427, size: 8, offset: 1152)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1881, file: !1882, line: 539, baseType: !427, size: 8, offset: 1160)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1881, file: !1882, line: 540, baseType: !427, size: 8, offset: 1168)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1881, file: !1882, line: 541, baseType: !427, size: 8, offset: 1176)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1881, file: !1882, line: 542, baseType: !427, size: 8, offset: 1184)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1881, file: !1882, line: 543, baseType: !427, size: 8, offset: 1192)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1881, file: !1882, line: 544, baseType: !427, size: 8, offset: 1200)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1881, file: !1882, line: 545, baseType: !427, size: 8, offset: 1208)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1881, file: !1882, line: 546, baseType: !427, size: 8, offset: 1216)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1881, file: !1882, line: 547, baseType: !427, size: 8, offset: 1224)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1881, file: !1882, line: 548, baseType: !427, size: 8, offset: 1232)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1881, file: !1882, line: 549, baseType: !427, size: 8, offset: 1240)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1881, file: !1882, line: 550, baseType: !427, size: 8, offset: 1248)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1881, file: !1882, line: 551, baseType: !427, size: 8, offset: 1256)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1881, file: !1882, line: 552, baseType: !427, size: 8, offset: 1264)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1881, file: !1882, line: 553, baseType: !427, size: 8, offset: 1272)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1881, file: !1882, line: 554, baseType: !427, size: 8, offset: 1280)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1881, file: !1882, line: 555, baseType: !427, size: 8, offset: 1288)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1881, file: !1882, line: 556, baseType: !427, size: 8, offset: 1296)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1881, file: !1882, line: 557, baseType: !427, size: 8, offset: 1304)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1881, file: !1882, line: 558, baseType: !427, size: 8, offset: 1312)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1881, file: !1882, line: 559, baseType: !427, size: 8, offset: 1320)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1881, file: !1882, line: 560, baseType: !427, size: 8, offset: 1328)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1881, file: !1882, line: 561, baseType: !427, size: 8, offset: 1336)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1881, file: !1882, line: 562, baseType: !427, size: 8, offset: 1344)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1881, file: !1882, line: 563, baseType: !427, size: 8, offset: 1352)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1881, file: !1882, line: 564, baseType: !427, size: 8, offset: 1360)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1881, file: !1882, line: 565, baseType: !427, size: 8, offset: 1368)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1881, file: !1882, line: 566, baseType: !427, size: 8, offset: 1376)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1881, file: !1882, line: 567, baseType: !427, size: 8, offset: 1384)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1881, file: !1882, line: 568, baseType: !427, size: 8, offset: 1392)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1881, file: !1882, line: 569, baseType: !427, size: 8, offset: 1400)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1881, file: !1882, line: 570, baseType: !427, size: 8, offset: 1408)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1881, file: !1882, line: 571, baseType: !427, size: 8, offset: 1416)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1881, file: !1882, line: 572, baseType: !427, size: 8, offset: 1424)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1881, file: !1882, line: 573, baseType: !427, size: 8, offset: 1432)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1881, file: !1882, line: 574, baseType: !427, size: 8, offset: 1440)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !1025, file: !21, line: 3405, baseType: !2048, size: 384)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !21, line: 3352, size: 384, elements: !2049)
!2049 = !{!2050, !2051}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2048, file: !21, line: 3353, baseType: !1061, size: 192)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !2048, file: !21, line: 3356, baseType: !2052, size: 192, offset: 192)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1882, line: 578, size: 192, elements: !2053)
!2053 = !{!2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !2052, file: !1882, line: 580, baseType: !297, size: 32)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !2052, file: !1882, line: 581, baseType: !297, size: 32, offset: 32)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !2052, file: !1882, line: 582, baseType: !297, size: 32, offset: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !2052, file: !1882, line: 583, baseType: !297, size: 32, offset: 96)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2052, file: !1882, line: 584, baseType: !296, size: 8, offset: 128)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !2052, file: !1882, line: 585, baseType: !296, size: 8, offset: 136)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !2052, file: !1882, line: 586, baseType: !296, size: 8, offset: 144)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !2052, file: !1882, line: 587, baseType: !296, size: 8, offset: 152)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !2052, file: !1882, line: 588, baseType: !296, size: 8, offset: 160)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !2052, file: !1882, line: 589, baseType: !296, size: 8, offset: 168)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !2052, file: !1882, line: 590, baseType: !296, size: 8, offset: 176)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1018, file: !6, line: 479, baseType: !7, size: 32, offset: 64)
!2066 = !{!2067}
!2067 = !DISubrange(count: 7)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "fn_decl", scope: !1014, file: !6, line: 509, baseType: !1022, size: 64, offset: 896)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "global_decl_state", scope: !1010, file: !6, line: 547, baseType: !1013, size: 64, offset: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "cgraph_node_encoder", scope: !1010, file: !6, line: 550, baseType: !2071, size: 64, offset: 128)
!2071 = !DIDerivedType(tag: DW_TAG_typedef, name: "lto_cgraph_encoder_t", file: !6, line: 470, baseType: !2072)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_cgraph_encoder_d", file: !6, line: 461, size: 128, elements: !2074)
!2074 = !{!2075, !2079}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !2073, file: !6, line: 464, baseType: !2076, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !2078, line: 33, flags: DIFlagFwdDecl)
!2078 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !2073, file: !6, line: 467, baseType: !2080, size: 64, offset: 64)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_heap", file: !264, line: 271, baseType: !2082)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_heap", file: !264, line: 271, size: 128, elements: !2083)
!2083 = !{!2084}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2082, file: !264, line: 271, baseType: !2085, size: 128)
!2085 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_base", file: !264, line: 270, baseType: !2086)
!2086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_base", file: !264, line: 270, size: 128, elements: !2087)
!2087 = !{!2088, !2089, !2090}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2086, file: !264, line: 270, baseType: !7, size: 32)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2086, file: !264, line: 270, baseType: !7, size: 32, offset: 32)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2086, file: !264, line: 270, baseType: !2091, size: 64, offset: 64)
!2091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2092, size: 64, elements: !358)
!2092 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_node_ptr", file: !264, line: 268, baseType: !2093)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_node", file: !264, line: 181, size: 2496, elements: !2095)
!2095 = !{!2096, !2097, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2150, !2170, !2180, !2184, !2266, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !2094, file: !264, line: 182, baseType: !1022, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "callees", scope: !2094, file: !264, line: 183, baseType: !2098, size: 64, offset: 64)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_edge", file: !264, line: 314, size: 768, elements: !2100)
!2100 = !{!2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2112, !2113, !2114, !2115, !2116, !2117, !2118}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2099, file: !264, line: 316, baseType: !1513, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2099, file: !264, line: 317, baseType: !2093, size: 64, offset: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "callee", scope: !2099, file: !264, line: 318, baseType: !2093, size: 64, offset: 128)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "prev_caller", scope: !2099, file: !264, line: 319, baseType: !2098, size: 64, offset: 192)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "next_caller", scope: !2099, file: !264, line: 320, baseType: !2098, size: 64, offset: 256)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "prev_callee", scope: !2099, file: !264, line: 321, baseType: !2098, size: 64, offset: 320)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "next_callee", scope: !2099, file: !264, line: 322, baseType: !2098, size: 64, offset: 384)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "call_stmt", scope: !2099, file: !264, line: 323, baseType: !1304, size: 64, offset: 448)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !2099, file: !264, line: 324, baseType: !301, size: 64, offset: 512)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "inline_failed", scope: !2099, file: !264, line: 327, baseType: !2111, size: 32, offset: 576)
!2111 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_inline_failed_t", file: !264, line: 312, baseType: !263)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "lto_stmt_uid", scope: !2099, file: !264, line: 330, baseType: !7, size: 32, offset: 608)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !2099, file: !264, line: 334, baseType: !297, size: 32, offset: 640)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2099, file: !264, line: 336, baseType: !297, size: 32, offset: 672)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "loop_nest", scope: !2099, file: !264, line: 338, baseType: !425, size: 16, offset: 704)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "indirect_call", scope: !2099, file: !264, line: 340, baseType: !7, size: 1, offset: 720, flags: DIFlagBitField, extraData: i64 720)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "call_stmt_cannot_inline_p", scope: !2099, file: !264, line: 342, baseType: !7, size: 1, offset: 721, flags: DIFlagBitField, extraData: i64 720)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "can_throw_external", scope: !2099, file: !264, line: 344, baseType: !7, size: 1, offset: 722, flags: DIFlagBitField, extraData: i64 720)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "callers", scope: !2094, file: !264, line: 184, baseType: !2098, size: 64, offset: 128)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2094, file: !264, line: 185, baseType: !2093, size: 64, offset: 192)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !2094, file: !264, line: 186, baseType: !2093, size: 64, offset: 256)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !2094, file: !264, line: 188, baseType: !2093, size: 64, offset: 320)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2094, file: !264, line: 190, baseType: !2093, size: 64, offset: 384)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "next_nested", scope: !2094, file: !264, line: 192, baseType: !2093, size: 64, offset: 448)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "next_needed", scope: !2094, file: !264, line: 194, baseType: !2093, size: 64, offset: 512)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "next_sibling_clone", scope: !2094, file: !264, line: 196, baseType: !2093, size: 64, offset: 576)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sibling_clone", scope: !2094, file: !264, line: 197, baseType: !2093, size: 64, offset: 640)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "clones", scope: !2094, file: !264, line: 198, baseType: !2093, size: 64, offset: 704)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "clone_of", scope: !2094, file: !264, line: 199, baseType: !2093, size: 64, offset: 768)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "same_body", scope: !2094, file: !264, line: 202, baseType: !2093, size: 64, offset: 832)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "same_comdat_group", scope: !2094, file: !264, line: 204, baseType: !2093, size: 64, offset: 896)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "call_site_hash", scope: !2094, file: !264, line: 207, baseType: !1584, size: 64, offset: 960)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !2094, file: !264, line: 209, baseType: !301, size: 64, offset: 1024)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "ipa_transforms_to_apply", scope: !2094, file: !264, line: 214, baseType: !2135, size: 64, offset: 1088)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_opt_pass_heap", file: !1256, line: 177, baseType: !2137)
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_opt_pass_heap", file: !1256, line: 177, size: 128, elements: !2138)
!2138 = !{!2139}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2137, file: !1256, line: 177, baseType: !2140, size: 128)
!2140 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_opt_pass_base", file: !1256, line: 176, baseType: !2141)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_opt_pass_base", file: !1256, line: 176, size: 128, elements: !2142)
!2142 = !{!2143, !2144, !2145}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2141, file: !1256, line: 176, baseType: !7, size: 32)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2141, file: !1256, line: 176, baseType: !7, size: 32, offset: 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2141, file: !1256, line: 176, baseType: !2146, size: 64, offset: 64)
!2146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2147, size: 64, elements: !358)
!2147 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_opt_pass", file: !1256, line: 174, baseType: !2148)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_opt_pass_d", file: !1256, line: 173, flags: DIFlagFwdDecl)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !2094, file: !264, line: 216, baseType: !2151, size: 320, offset: 1152)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_local_info", file: !264, line: 88, size: 320, elements: !2152)
!2152 = !{!2153, !2154, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "lto_file_data", scope: !2151, file: !264, line: 90, baseType: !1009, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "inline_summary", scope: !2151, file: !264, line: 92, baseType: !2155, size: 192, offset: 64)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inline_summary", file: !264, line: 57, size: 192, elements: !2156)
!2156 = !{!2157, !2158, !2159, !2160, !2161}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_self_stack_size", scope: !2155, file: !264, line: 60, baseType: !423, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "self_size", scope: !2155, file: !264, line: 63, baseType: !297, size: 32, offset: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "size_inlining_benefit", scope: !2155, file: !264, line: 65, baseType: !297, size: 32, offset: 96)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "self_time", scope: !2155, file: !264, line: 67, baseType: !297, size: 32, offset: 128)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "time_inlining_benefit", scope: !2155, file: !264, line: 69, baseType: !297, size: 32, offset: 160)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !2151, file: !264, line: 96, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "externally_visible", scope: !2151, file: !264, line: 99, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "finalized", scope: !2151, file: !264, line: 102, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "inlinable", scope: !2151, file: !264, line: 105, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !2151, file: !264, line: 108, baseType: !7, size: 1, offset: 260, flags: DIFlagBitField, extraData: i64 256)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "redefined_extern_inline", scope: !2151, file: !264, line: 112, baseType: !7, size: 1, offset: 261, flags: DIFlagBitField, extraData: i64 256)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "for_functions_valid", scope: !2151, file: !264, line: 116, baseType: !7, size: 1, offset: 262, flags: DIFlagBitField, extraData: i64 256)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "vtable_method", scope: !2151, file: !264, line: 120, baseType: !7, size: 1, offset: 263, flags: DIFlagBitField, extraData: i64 256)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !2094, file: !264, line: 217, baseType: !2171, size: 320, offset: 1472)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_global_info", file: !264, line: 126, size: 320, elements: !2172)
!2172 = !{!2173, !2174, !2175, !2176, !2177, !2178, !2179}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_stack_size", scope: !2171, file: !264, line: 128, baseType: !423, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "stack_frame_offset", scope: !2171, file: !264, line: 130, baseType: !423, size: 64, offset: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "inlined_to", scope: !2171, file: !264, line: 134, baseType: !2093, size: 64, offset: 128)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2171, file: !264, line: 137, baseType: !297, size: 32, offset: 192)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2171, file: !264, line: 138, baseType: !297, size: 32, offset: 224)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_growth", scope: !2171, file: !264, line: 141, baseType: !297, size: 32, offset: 256)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "inlined", scope: !2171, file: !264, line: 144, baseType: !296, size: 8, offset: 288)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !2094, file: !264, line: 218, baseType: !2181, size: 32, offset: 1792)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_rtl_info", file: !264, line: 150, size: 32, elements: !2182)
!2182 = !{!2183}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_incoming_stack_boundary", scope: !2181, file: !264, line: 151, baseType: !7, size: 32)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "clone", scope: !2094, file: !264, line: 219, baseType: !2185, size: 192, offset: 1856)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_clone_info", file: !264, line: 171, size: 192, elements: !2186)
!2186 = !{!2187, !2208, !2265}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "tree_map", scope: !2185, file: !264, line: 173, baseType: !2188, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_replace_map_p_gc", file: !264, line: 169, baseType: !2190)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_replace_map_p_gc", file: !264, line: 169, size: 128, elements: !2191)
!2191 = !{!2192}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2190, file: !264, line: 169, baseType: !2193, size: 128)
!2193 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_replace_map_p_base", file: !264, line: 168, baseType: !2194)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_replace_map_p_base", file: !264, line: 168, size: 128, elements: !2195)
!2195 = !{!2196, !2197, !2198}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2194, file: !264, line: 168, baseType: !7, size: 32)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2194, file: !264, line: 168, baseType: !7, size: 32, offset: 32)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2194, file: !264, line: 168, baseType: !2199, size: 64, offset: 64)
!2199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2200, size: 64, elements: !358)
!2200 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_replace_map_p", file: !264, line: 167, baseType: !2201)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_replace_map", file: !264, line: 156, size: 192, elements: !2203)
!2203 = !{!2204, !2205, !2206, !2207}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "old_tree", scope: !2202, file: !264, line: 159, baseType: !1022, size: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "new_tree", scope: !2202, file: !264, line: 161, baseType: !1022, size: 64, offset: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "replace_p", scope: !2202, file: !264, line: 163, baseType: !296, size: 8, offset: 128)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "ref_p", scope: !2202, file: !264, line: 165, baseType: !296, size: 8, offset: 136)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "args_to_skip", scope: !2185, file: !264, line: 174, baseType: !2209, size: 64, offset: 64)
!2209 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !1023, line: 47, baseType: !2210)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !2212, line: 75, size: 256, elements: !2213)
!2212 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2213 = !{!2214, !2226, !2227, !2228}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2211, file: !2212, line: 76, baseType: !2215, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !2212, line: 68, baseType: !2217)
!2217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !2212, line: 63, size: 320, elements: !2218)
!2218 = !{!2219, !2221, !2222, !2223}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2217, file: !2212, line: 64, baseType: !2220, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !2217, file: !2212, line: 65, baseType: !2220, size: 64, offset: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !2217, file: !2212, line: 66, baseType: !7, size: 32, offset: 128)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2217, file: !2212, line: 67, baseType: !2224, size: 128, offset: 192)
!2224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2225, size: 128, elements: !1523)
!2225 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !2212, line: 29, baseType: !355)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !2211, file: !2212, line: 77, baseType: !2215, size: 64, offset: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !2211, file: !2212, line: 78, baseType: !7, size: 32, offset: 128)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !2211, file: !2212, line: 79, baseType: !2229, size: 64, offset: 192)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !2212, line: 49, baseType: !2231)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !2212, line: 45, size: 832, elements: !2232)
!2232 = !{!2233, !2234, !2235}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2231, file: !2212, line: 46, baseType: !2220, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !2231, file: !2212, line: 47, baseType: !2210, size: 64, offset: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !2231, file: !2212, line: 48, baseType: !2236, size: 704, offset: 128)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !2237, line: 164, size: 704, elements: !2238)
!2237 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2238 = !{!2239, !2240, !2248, !2249, !2250, !2251, !2252, !2253, !2257, !2261, !2262, !2263, !2264}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !2236, file: !2237, line: 166, baseType: !423, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !2236, file: !2237, line: 167, baseType: !2241, size: 64, offset: 64)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !2237, line: 157, size: 192, elements: !2243)
!2243 = !{!2244, !2245, !2246}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !2242, file: !2237, line: 159, baseType: !299, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !2242, file: !2237, line: 160, baseType: !2241, size: 64, offset: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !2242, file: !2237, line: 161, baseType: !2247, size: 32, offset: 128)
!2247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 32, elements: !1644)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !2236, file: !2237, line: 168, baseType: !299, size: 64, offset: 128)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !2236, file: !2237, line: 169, baseType: !299, size: 64, offset: 192)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !2236, file: !2237, line: 170, baseType: !299, size: 64, offset: 256)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !2236, file: !2237, line: 171, baseType: !423, size: 64, offset: 320)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !2236, file: !2237, line: 172, baseType: !297, size: 32, offset: 384)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !2236, file: !2237, line: 176, baseType: !2254, size: 64, offset: 448)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{!2241, !301, !423}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !2236, file: !2237, line: 177, baseType: !2258, size: 64, offset: 512)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{null, !301, !2241}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !2236, file: !2237, line: 178, baseType: !301, size: 64, offset: 576)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !2236, file: !2237, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !2236, file: !2237, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !2236, file: !2237, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "combined_args_to_skip", scope: !2185, file: !264, line: 175, baseType: !2209, size: 64, offset: 128)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "thunk", scope: !2094, file: !264, line: 220, baseType: !2267, size: 256, offset: 2048)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_thunk_info", file: !264, line: 74, size: 256, elements: !2268)
!2268 = !{!2269, !2270, !2271, !2272, !2273, !2274}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_offset", scope: !2267, file: !264, line: 76, baseType: !423, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_value", scope: !2267, file: !264, line: 77, baseType: !423, size: 64, offset: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !2267, file: !264, line: 78, baseType: !1022, size: 64, offset: 128)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "this_adjusting", scope: !2267, file: !264, line: 79, baseType: !296, size: 8, offset: 192)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_offset_p", scope: !2267, file: !264, line: 80, baseType: !296, size: 8, offset: 200)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "thunk_p", scope: !2267, file: !264, line: 82, baseType: !296, size: 8, offset: 208)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2094, file: !264, line: 223, baseType: !1513, size: 64, offset: 2304)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2094, file: !264, line: 225, baseType: !297, size: 32, offset: 2368)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !2094, file: !264, line: 227, baseType: !297, size: 32, offset: 2400)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2094, file: !264, line: 231, baseType: !297, size: 32, offset: 2432)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "needed", scope: !2094, file: !264, line: 238, baseType: !7, size: 1, offset: 2464, flags: DIFlagBitField, extraData: i64 2464)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "address_taken", scope: !2094, file: !264, line: 241, baseType: !7, size: 1, offset: 2465, flags: DIFlagBitField, extraData: i64 2464)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_and_needed", scope: !2094, file: !264, line: 244, baseType: !7, size: 1, offset: 2466, flags: DIFlagBitField, extraData: i64 2464)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "reachable", scope: !2094, file: !264, line: 251, baseType: !7, size: 1, offset: 2467, flags: DIFlagBitField, extraData: i64 2464)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "lowered", scope: !2094, file: !264, line: 253, baseType: !7, size: 1, offset: 2468, flags: DIFlagBitField, extraData: i64 2464)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "analyzed", scope: !2094, file: !264, line: 256, baseType: !7, size: 1, offset: 2469, flags: DIFlagBitField, extraData: i64 2464)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !2094, file: !264, line: 258, baseType: !7, size: 1, offset: 2470, flags: DIFlagBitField, extraData: i64 2464)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !2094, file: !264, line: 260, baseType: !7, size: 1, offset: 2471, flags: DIFlagBitField, extraData: i64 2464)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "finalized_by_frontend", scope: !2094, file: !264, line: 262, baseType: !7, size: 1, offset: 2472, flags: DIFlagBitField, extraData: i64 2464)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "same_body_alias", scope: !2094, file: !264, line: 265, baseType: !7, size: 1, offset: 2473, flags: DIFlagBitField, extraData: i64 2464)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl_states", scope: !1010, file: !6, line: 553, baseType: !1584, size: 64, offset: 192)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "file_name", scope: !1010, file: !6, line: 556, baseType: !302, size: 64, offset: 256)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "needs_ltrans_p", scope: !1010, file: !6, line: 559, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "section_hash_table", scope: !1010, file: !6, line: 562, baseType: !1584, size: 64, offset: 384)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "renaming_hash_table", scope: !1010, file: !6, line: 565, baseType: !1584, size: 64, offset: 448)
!2294 = !{!2295, !2296, !2297, !2298, !2299, !2300}
!2295 = !DILocalVariable(name: "file_data", arg: 1, scope: !1006, file: !3, line: 349, type: !1009)
!2296 = !DILocalVariable(name: "len", scope: !1006, file: !3, line: 351, type: !353)
!2297 = !DILocalVariable(name: "data", scope: !1006, file: !3, line: 352, type: !302)
!2298 = !DILocalVariable(name: "header", scope: !1006, file: !3, line: 353, type: !317)
!2299 = !DILocalVariable(name: "opts_offset", scope: !1006, file: !3, line: 354, type: !333)
!2300 = !DILocalVariable(name: "ib", scope: !1006, file: !3, line: 355, type: !2301)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_input_block", file: !6, line: 363, size: 128, elements: !2302)
!2302 = !{!2303, !2304, !2305}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2301, file: !6, line: 365, baseType: !302, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2301, file: !6, line: 366, baseType: !7, size: 32, offset: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2301, file: !6, line: 367, baseType: !7, size: 32, offset: 96)
!2306 = !DILocation(line: 0, scope: !1006)
!2307 = !DILocation(line: 351, column: 3, scope: !1006)
!2308 = !DILocation(line: 355, column: 3, scope: !1006)
!2309 = !DILocation(line: 357, column: 10, scope: !1006)
!2310 = !DILocation(line: 361, column: 41, scope: !1006)
!2311 = !DILocation(line: 361, column: 22, scope: !1006)
!2312 = !DILocation(line: 362, column: 27, scope: !1006)
!2313 = !DILocation(line: 362, column: 8, scope: !1006)
!2314 = !DILocation(line: 361, column: 3, scope: !1006)
!2315 = !DILocation(line: 364, column: 3, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 364, column: 3)
!2317 = !DILocation(line: 365, column: 3, scope: !1006)
!2318 = !DILocation(line: 367, column: 64, scope: !1006)
!2319 = !DILocation(line: 367, column: 3, scope: !1006)
!2320 = !DILocation(line: 368, column: 1, scope: !1006)
!2321 = distinct !DISubprogram(name: "input_options", scope: !3, file: !3, line: 328, type: !2322, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2325)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{null, !2324}
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2325 = !{!2326, !2327, !2328, !2329}
!2326 = !DILocalVariable(name: "ib", arg: 1, scope: !2321, file: !3, line: 328, type: !2324)
!2327 = !DILocalVariable(name: "length", scope: !2321, file: !3, line: 330, type: !353)
!2328 = !DILocalVariable(name: "i", scope: !2321, file: !3, line: 330, type: !353)
!2329 = !DILocalVariable(name: "o", scope: !2330, file: !3, line: 336, type: !348)
!2330 = distinct !DILexicalBlock(scope: !2331, file: !3, line: 335, column: 5)
!2331 = distinct !DILexicalBlock(scope: !2332, file: !3, line: 334, column: 3)
!2332 = distinct !DILexicalBlock(scope: !2321, file: !3, line: 334, column: 3)
!2333 = !DILocation(line: 0, scope: !2321)
!2334 = !DILocation(line: 330, column: 3, scope: !2321)
!2335 = !DILocation(line: 332, column: 3, scope: !2321)
!2336 = !DILocation(line: 0, scope: !2330)
!2337 = !DILocation(line: 334, column: 8, scope: !2332)
!2338 = !DILocation(line: 0, scope: !2332)
!2339 = !DILocation(line: 334, column: 19, scope: !2331)
!2340 = !DILocation(line: 334, column: 17, scope: !2331)
!2341 = !DILocation(line: 334, column: 3, scope: !2332)
!2342 = !DILocation(line: 336, column: 7, scope: !2330)
!2343 = !DILocation(line: 338, column: 7, scope: !2330)
!2344 = !DILocation(line: 339, column: 7, scope: !2330)
!2345 = !DILocation(line: 340, column: 15, scope: !2330)
!2346 = !DILocation(line: 340, column: 13, scope: !2330)
!2347 = !DILocation(line: 341, column: 7, scope: !2330)
!2348 = !DILocation(line: 342, column: 7, scope: !2330)
!2349 = !DILocation(line: 343, column: 5, scope: !2331)
!2350 = !DILocation(line: 334, column: 28, scope: !2331)
!2351 = !DILocation(line: 334, column: 3, scope: !2331)
!2352 = distinct !{!2352, !2341, !2353}
!2353 = !DILocation(line: 343, column: 5, scope: !2332)
!2354 = !DILocation(line: 344, column: 1, scope: !2321)
!2355 = distinct !DISubprogram(name: "lto_reissue_options", scope: !3, file: !3, line: 375, type: !890, scopeLine: 376, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2356)
!2356 = !{!2357, !2358, !2359, !2360}
!2357 = !DILocalVariable(name: "opts", scope: !2355, file: !3, line: 377, type: !336)
!2358 = !DILocalVariable(name: "i", scope: !2355, file: !3, line: 378, type: !297)
!2359 = !DILocalVariable(name: "o", scope: !2355, file: !3, line: 379, type: !880)
!2360 = !DILocalVariable(name: "option", scope: !2361, file: !3, line: 383, type: !2364)
!2361 = distinct !DILexicalBlock(scope: !2362, file: !3, line: 382, column: 5)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !3, line: 381, column: 3)
!2363 = distinct !DILexicalBlock(scope: !2355, file: !3, line: 381, column: 3)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2366)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_option", file: !287, line: 43, size: 384, elements: !2367)
!2367 = !{!2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "opt_text", scope: !2366, file: !287, line: 45, baseType: !302, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "help", scope: !2366, file: !287, line: 46, baseType: !302, size: 64, offset: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "back_chain", scope: !2366, file: !287, line: 47, baseType: !425, size: 16, offset: 128)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "opt_len", scope: !2366, file: !287, line: 48, baseType: !296, size: 8, offset: 144)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "neg_index", scope: !2366, file: !287, line: 49, baseType: !297, size: 32, offset: 160)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2366, file: !287, line: 50, baseType: !7, size: 32, offset: 192)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var", scope: !2366, file: !287, line: 51, baseType: !301, size: 64, offset: 256)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "var_type", scope: !2366, file: !287, line: 52, baseType: !286, size: 32, offset: 320)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "var_value", scope: !2366, file: !287, line: 53, baseType: !297, size: 32, offset: 352)
!2377 = !DILocation(line: 377, column: 3, scope: !2355)
!2378 = !DILocation(line: 377, column: 49, scope: !2355)
!2379 = !DILocation(line: 377, column: 63, scope: !2355)
!2380 = !DILocation(line: 377, column: 28, scope: !2355)
!2381 = !DILocation(line: 0, scope: !2355)
!2382 = !DILocation(line: 377, column: 21, scope: !2355)
!2383 = !DILocation(line: 379, column: 3, scope: !2355)
!2384 = !DILocation(line: 381, column: 8, scope: !2363)
!2385 = !DILocation(line: 381, column: 15, scope: !2362)
!2386 = !DILocation(line: 0, scope: !2363)
!2387 = !DILocation(line: 381, column: 3, scope: !2363)
!2388 = !DILocation(line: 383, column: 52, scope: !2361)
!2389 = !DILocation(line: 383, column: 55, scope: !2361)
!2390 = !DILocation(line: 0, scope: !2361)
!2391 = !DILocation(line: 385, column: 19, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2361, file: !3, line: 385, column: 11)
!2393 = !DILocation(line: 385, column: 11, scope: !2392)
!2394 = !DILocation(line: 385, column: 11, scope: !2361)
!2395 = !DILocation(line: 383, column: 41, scope: !2361)
!2396 = !DILocation(line: 386, column: 25, scope: !2392)
!2397 = !DILocation(line: 386, column: 35, scope: !2392)
!2398 = !DILocation(line: 386, column: 2, scope: !2392)
!2399 = !DILocation(line: 388, column: 11, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2361, file: !3, line: 388, column: 11)
!2401 = !DILocation(line: 388, column: 14, scope: !2400)
!2402 = !DILocation(line: 388, column: 19, scope: !2400)
!2403 = !DILocation(line: 388, column: 11, scope: !2361)
!2404 = !DILocation(line: 389, column: 10, scope: !2400)
!2405 = !DILocation(line: 389, column: 28, scope: !2400)
!2406 = !DILocation(line: 389, column: 37, scope: !2400)
!2407 = !DILocation(line: 389, column: 45, scope: !2400)
!2408 = !DILocation(line: 389, column: 2, scope: !2400)
!2409 = !DILocation(line: 390, column: 24, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2400, file: !3, line: 390, column: 16)
!2411 = !DILocation(line: 390, column: 16, scope: !2400)
!2412 = !DILocation(line: 391, column: 2, scope: !2410)
!2413 = !DILocation(line: 393, column: 2, scope: !2410)
!2414 = !DILocation(line: 381, column: 49, scope: !2362)
!2415 = !DILocation(line: 381, column: 3, scope: !2362)
!2416 = distinct !{!2416, !2387, !2417}
!2417 = !DILocation(line: 394, column: 5, scope: !2363)
!2418 = !DILocation(line: 396, column: 3, scope: !2355)
!2419 = !DILocation(line: 397, column: 1, scope: !2355)
!2420 = distinct !DISubprogram(name: "concatenate_options", scope: !3, file: !3, line: 110, type: !2421, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2423)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!336, !336, !336}
!2423 = !{!2424, !2425, !2426, !2427}
!2424 = !DILocalVariable(name: "first", arg: 1, scope: !2420, file: !3, line: 110, type: !336)
!2425 = !DILocalVariable(name: "second", arg: 2, scope: !2420, file: !3, line: 110, type: !336)
!2426 = !DILocalVariable(name: "results", scope: !2420, file: !3, line: 112, type: !336)
!2427 = !DILocalVariable(name: "codes", scope: !2420, file: !3, line: 113, type: !2209)
!2428 = !DILocation(line: 0, scope: !2420)
!2429 = !DILocation(line: 112, column: 3, scope: !2420)
!2430 = !DILocation(line: 112, column: 21, scope: !2420)
!2431 = !DILocation(line: 113, column: 18, scope: !2420)
!2432 = !DILocation(line: 115, column: 3, scope: !2420)
!2433 = !DILocation(line: 116, column: 3, scope: !2420)
!2434 = !DILocation(line: 118, column: 3, scope: !2420)
!2435 = !DILocation(line: 119, column: 10, scope: !2420)
!2436 = !DILocation(line: 120, column: 1, scope: !2420)
!2437 = !DILocation(line: 119, column: 3, scope: !2420)
!2438 = distinct !DISubprogram(name: "VEC_opt_t_base_iterate", scope: !3, file: !3, line: 78, type: !2439, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2443)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!297, !2441, !7, !2442}
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!2443 = !{!2444, !2445, !2446}
!2444 = !DILocalVariable(name: "vec_", arg: 1, scope: !2438, file: !3, line: 78, type: !2441)
!2445 = !DILocalVariable(name: "ix_", arg: 2, scope: !2438, file: !3, line: 78, type: !7)
!2446 = !DILocalVariable(name: "ptr", arg: 3, scope: !2438, file: !3, line: 78, type: !2442)
!2447 = !DILocation(line: 0, scope: !2438)
!2448 = !DILocation(line: 78, column: 1, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 78, column: 1)
!2450 = !DILocation(line: 78, column: 1, scope: !2438)
!2451 = !DILocation(line: 78, column: 1, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2449, file: !3, line: 78, column: 1)
!2453 = !DILocation(line: 78, column: 1, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2449, file: !3, line: 78, column: 1)
!2455 = !DILocation(line: 0, scope: !2449)
!2456 = distinct !DISubprogram(name: "VEC_opt_t_heap_free", scope: !3, file: !3, line: 79, type: !895, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2457)
!2457 = !{!2458}
!2458 = !DILocalVariable(name: "vec_", arg: 1, scope: !2456, file: !3, line: 79, type: !881)
!2459 = !DILocation(line: 0, scope: !2456)
!2460 = !DILocation(line: 79, column: 1, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 79, column: 1)
!2462 = !DILocation(line: 79, column: 1, scope: !2456)
!2463 = distinct !DISubprogram(name: "VEC_opt_t_heap_reserve", scope: !3, file: !3, line: 79, type: !2464, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2466)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!297, !881, !297}
!2466 = !{!2467, !2468, !2469}
!2467 = !DILocalVariable(name: "vec_", arg: 1, scope: !2463, file: !3, line: 79, type: !881)
!2468 = !DILocalVariable(name: "alloc_", arg: 2, scope: !2463, file: !3, line: 79, type: !297)
!2469 = !DILocalVariable(name: "extend", scope: !2463, file: !3, line: 79, type: !297)
!2470 = !DILocation(line: 0, scope: !2463)
!2471 = !DILocation(line: 79, column: 1, scope: !2463)
!2472 = !DILocation(line: 79, column: 1, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 79, column: 1)
!2474 = distinct !DISubprogram(name: "VEC_opt_t_base_quick_push", scope: !3, file: !3, line: 78, type: !2475, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2477)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!880, !2441, !882}
!2477 = !{!2478, !2479, !2480}
!2478 = !DILocalVariable(name: "vec_", arg: 1, scope: !2474, file: !3, line: 78, type: !2441)
!2479 = !DILocalVariable(name: "obj_", arg: 2, scope: !2474, file: !3, line: 78, type: !882)
!2480 = !DILocalVariable(name: "slot_", scope: !2474, file: !3, line: 78, type: !880)
!2481 = !DILocation(line: 0, scope: !2474)
!2482 = !DILocation(line: 78, column: 1, scope: !2474)
!2483 = !DILocation(line: 78, column: 1, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 78, column: 1)
!2485 = distinct !DISubprogram(name: "VEC_opt_t_base_space", scope: !3, file: !3, line: 78, type: !2486, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2488)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!297, !2441, !297}
!2488 = !{!2489, !2490}
!2489 = !DILocalVariable(name: "vec_", arg: 1, scope: !2485, file: !3, line: 78, type: !2441)
!2490 = !DILocalVariable(name: "alloc_", arg: 2, scope: !2485, file: !3, line: 78, type: !297)
!2491 = !DILocation(line: 0, scope: !2485)
!2492 = !DILocation(line: 78, column: 1, scope: !2485)
!2493 = distinct !DISubprogram(name: "VEC_opt_t_base_length", scope: !3, file: !3, line: 78, type: !2494, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2498)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!7, !2496}
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !341)
!2498 = !{!2499}
!2499 = !DILocalVariable(name: "vec_", arg: 1, scope: !2493, file: !3, line: 78, type: !2496)
!2500 = !DILocation(line: 0, scope: !2493)
!2501 = !DILocation(line: 78, column: 1, scope: !2493)
!2502 = distinct !DISubprogram(name: "output_data_stream", scope: !3, file: !3, line: 139, type: !2503, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2505)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{null, !304, !570, !353}
!2505 = !{!2506, !2507, !2508}
!2506 = !DILocalVariable(name: "stream", arg: 1, scope: !2502, file: !3, line: 139, type: !304)
!2507 = !DILocalVariable(name: "addr", arg: 2, scope: !2502, file: !3, line: 140, type: !570)
!2508 = !DILocalVariable(name: "length", arg: 3, scope: !2502, file: !3, line: 140, type: !353)
!2509 = !DILocation(line: 0, scope: !2502)
!2510 = !DILocation(line: 142, column: 3, scope: !2502)
!2511 = !DILocation(line: 143, column: 1, scope: !2502)
!2512 = distinct !DISubprogram(name: "output_string_stream", scope: !3, file: !3, line: 148, type: !2513, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2515)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{null, !304, !302}
!2515 = !{!2516, !2517, !2518, !2519}
!2516 = !DILocalVariable(name: "stream", arg: 1, scope: !2512, file: !3, line: 148, type: !304)
!2517 = !DILocalVariable(name: "string", arg: 2, scope: !2512, file: !3, line: 148, type: !302)
!2518 = !DILocalVariable(name: "flag", scope: !2512, file: !3, line: 150, type: !296)
!2519 = !DILocalVariable(name: "length", scope: !2520, file: !3, line: 154, type: !965)
!2520 = distinct !DILexicalBlock(scope: !2521, file: !3, line: 153, column: 5)
!2521 = distinct !DILexicalBlock(scope: !2512, file: !3, line: 152, column: 7)
!2522 = !DILocation(line: 0, scope: !2512)
!2523 = !DILocation(line: 150, column: 3, scope: !2512)
!2524 = !DILocation(line: 150, column: 8, scope: !2512)
!2525 = !DILocation(line: 152, column: 14, scope: !2521)
!2526 = !DILocation(line: 152, column: 7, scope: !2512)
!2527 = !DILocation(line: 154, column: 7, scope: !2520)
!2528 = !DILocation(line: 154, column: 29, scope: !2520)
!2529 = !DILocation(line: 0, scope: !2520)
!2530 = !DILocation(line: 154, column: 20, scope: !2520)
!2531 = !DILocation(line: 156, column: 12, scope: !2520)
!2532 = !DILocation(line: 157, column: 7, scope: !2520)
!2533 = !DILocation(line: 158, column: 7, scope: !2520)
!2534 = !DILocation(line: 159, column: 43, scope: !2520)
!2535 = !DILocation(line: 159, column: 7, scope: !2520)
!2536 = !DILocation(line: 160, column: 5, scope: !2521)
!2537 = !DILocation(line: 160, column: 5, scope: !2520)
!2538 = !DILocation(line: 162, column: 5, scope: !2521)
!2539 = !DILocation(line: 163, column: 1, scope: !2512)
!2540 = distinct !DISubprogram(name: "input_data_block", scope: !3, file: !3, line: 168, type: !2541, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2543)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{null, !2324, !301, !353}
!2543 = !{!2544, !2545, !2546, !2547, !2548}
!2544 = !DILocalVariable(name: "ib", arg: 1, scope: !2540, file: !3, line: 168, type: !2324)
!2545 = !DILocalVariable(name: "addr", arg: 2, scope: !2540, file: !3, line: 168, type: !301)
!2546 = !DILocalVariable(name: "length", arg: 3, scope: !2540, file: !3, line: 168, type: !353)
!2547 = !DILocalVariable(name: "i", scope: !2540, file: !3, line: 170, type: !353)
!2548 = !DILocalVariable(name: "buffer", scope: !2540, file: !3, line: 171, type: !2549)
!2549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !295)
!2550 = !DILocation(line: 0, scope: !2540)
!2551 = !DILocation(line: 173, column: 8, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2540, file: !3, line: 173, column: 3)
!2553 = !DILocation(line: 0, scope: !2552)
!2554 = !DILocation(line: 173, column: 17, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2552, file: !3, line: 173, column: 3)
!2556 = !DILocation(line: 173, column: 3, scope: !2552)
!2557 = !DILocation(line: 174, column: 17, scope: !2555)
!2558 = !DILocation(line: 174, column: 5, scope: !2555)
!2559 = !DILocation(line: 174, column: 15, scope: !2555)
!2560 = !DILocation(line: 173, column: 28, scope: !2555)
!2561 = !DILocation(line: 173, column: 3, scope: !2555)
!2562 = distinct !{!2562, !2556, !2563}
!2563 = !DILocation(line: 174, column: 41, scope: !2552)
!2564 = !DILocation(line: 175, column: 1, scope: !2540)
!2565 = distinct !DISubprogram(name: "input_string_block", scope: !3, file: !3, line: 181, type: !2566, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2568)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!299, !2324}
!2568 = !{!2569, !2570, !2571, !2574}
!2569 = !DILocalVariable(name: "ib", arg: 1, scope: !2565, file: !3, line: 181, type: !2324)
!2570 = !DILocalVariable(name: "flag", scope: !2565, file: !3, line: 183, type: !296)
!2571 = !DILocalVariable(name: "length", scope: !2572, file: !3, line: 188, type: !353)
!2572 = distinct !DILexicalBlock(scope: !2573, file: !3, line: 187, column: 5)
!2573 = distinct !DILexicalBlock(scope: !2565, file: !3, line: 186, column: 7)
!2574 = !DILocalVariable(name: "string", scope: !2572, file: !3, line: 189, type: !299)
!2575 = !DILocation(line: 0, scope: !2565)
!2576 = !DILocation(line: 183, column: 3, scope: !2565)
!2577 = !DILocation(line: 185, column: 3, scope: !2565)
!2578 = !DILocation(line: 186, column: 7, scope: !2573)
!2579 = !DILocation(line: 186, column: 7, scope: !2565)
!2580 = !DILocation(line: 188, column: 7, scope: !2572)
!2581 = !DILocation(line: 191, column: 7, scope: !2572)
!2582 = !DILocation(line: 192, column: 37, scope: !2572)
!2583 = !DILocation(line: 0, scope: !2572)
!2584 = !DILocation(line: 192, column: 44, scope: !2572)
!2585 = !DILocation(line: 192, column: 25, scope: !2572)
!2586 = !DILocation(line: 193, column: 37, scope: !2572)
!2587 = !DILocation(line: 193, column: 7, scope: !2572)
!2588 = !DILocation(line: 196, column: 5, scope: !2573)
!2589 = !DILocation(line: 0, scope: !2573)
!2590 = !DILocation(line: 199, column: 1, scope: !2565)
!2591 = distinct !DISubprogram(name: "reverse_iterate_options", scope: !3, file: !3, line: 92, type: !2592, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2594)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{null, !336, !881, !2209}
!2594 = !{!2595, !2596, !2597, !2598, !2599}
!2595 = !DILocalVariable(name: "from", arg: 1, scope: !2591, file: !3, line: 92, type: !336)
!2596 = !DILocalVariable(name: "to", arg: 2, scope: !2591, file: !3, line: 92, type: !881)
!2597 = !DILocalVariable(name: "codes", arg: 3, scope: !2591, file: !3, line: 93, type: !2209)
!2598 = !DILocalVariable(name: "i", scope: !2591, file: !3, line: 95, type: !297)
!2599 = !DILocalVariable(name: "o", scope: !2600, file: !3, line: 99, type: !2603)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !3, line: 98, column: 5)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !3, line: 97, column: 3)
!2602 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 97, column: 3)
!2603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !882)
!2604 = !DILocation(line: 0, scope: !2591)
!2605 = !DILocation(line: 97, column: 12, scope: !2602)
!2606 = !DILocation(line: 97, column: 8, scope: !2602)
!2607 = !DILocation(line: 0, scope: !2602)
!2608 = !DILocation(line: 97, column: 40, scope: !2601)
!2609 = !DILocation(line: 97, column: 3, scope: !2602)
!2610 = !DILocation(line: 99, column: 30, scope: !2600)
!2611 = !DILocation(line: 0, scope: !2600)
!2612 = !DILocation(line: 101, column: 37, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2600, file: !3, line: 101, column: 11)
!2614 = !DILocation(line: 101, column: 34, scope: !2613)
!2615 = !DILocation(line: 101, column: 11, scope: !2613)
!2616 = !DILocation(line: 101, column: 11, scope: !2600)
!2617 = !DILocation(line: 102, column: 2, scope: !2613)
!2618 = !DILocation(line: 97, column: 3, scope: !2601)
!2619 = distinct !{!2619, !2609, !2620}
!2620 = !DILocation(line: 103, column: 5, scope: !2602)
!2621 = !DILocation(line: 104, column: 1, scope: !2591)
!2622 = distinct !DISubprogram(name: "VEC_opt_t_base_index", scope: !3, file: !3, line: 78, type: !2623, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2625)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{!880, !2441, !7}
!2625 = !{!2626, !2627}
!2626 = !DILocalVariable(name: "vec_", arg: 1, scope: !2622, file: !3, line: 78, type: !2441)
!2627 = !DILocalVariable(name: "ix_", arg: 2, scope: !2622, file: !3, line: 78, type: !7)
!2628 = !DILocation(line: 0, scope: !2622)
!2629 = !DILocation(line: 78, column: 1, scope: !2622)
