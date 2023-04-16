; ModuleID = 'integrate.bc'
source_filename = "integrate.c"
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
%struct.gimple_seq_d = type opaque
%struct.gimple_df = type opaque
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
%union.gimple_statement_d = type opaque
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
%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, %struct.rtx_def*, %struct.initial_value_struct*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i64, %struct.rtx_def*, %struct.VEC_temp_slot_p_gc*, %struct.temp_slot*, i32, i32, i32, i32, i32, i32, %struct.rtx_def*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def* }
%struct.emit_status = type { i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.sequence_stack*, i32, i32, i32, i32, i8* }
%struct.sequence_stack = type { %struct.rtx_def*, %struct.rtx_def*, %struct.sequence_stack* }
%struct.varasm_status = type { %struct.rtx_constant_pool*, i32 }
%struct.rtx_constant_pool = type opaque
%struct.incoming_args = type { i32, i32, i32, %struct.rtx_def*, %struct.ix86_args, %struct.rtx_def* }
%struct.function_subsections = type { i8*, i8*, i8*, i8*, i8* }
%struct.rtl_eh = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.VEC_uchar_gc*, [2 x %struct.VEC_call_site_record_gc*] }
%struct.VEC_uchar_gc = type { %struct.VEC_uchar_base }
%struct.VEC_uchar_base = type { i32, i32, [1 x i8] }
%struct.VEC_call_site_record_gc = type { %struct.VEC_call_site_record_base }
%struct.VEC_call_site_record_base = type { i32, i32, [1 x %struct.call_site_record_d*] }
%struct.call_site_record_d = type opaque
%struct.initial_value_struct = type { i32, i32, %struct.initial_value_pair* }
%struct.initial_value_pair = type { %struct.rtx_def*, %struct.rtx_def* }
%struct.VEC_temp_slot_p_gc = type { %struct.VEC_temp_slot_p_base }
%struct.VEC_temp_slot_p_base = type { i32, i32, [1 x %struct.temp_slot*] }
%struct.temp_slot = type opaque
%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
%struct.regstat_n_sets_and_refs_t = type { i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@targetm = external dso_local local_unnamed_addr global %struct.gcc_target, align 8
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@x_rtl = external dso_local local_unnamed_addr global %struct.rtl_data, align 8
@.str = private unnamed_addr constant [9 x i8] c"initvals\00", align 1
@pass_initial_value_sets = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8 ()* null, i32 ()* @emit_initial_value_sets, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1 } }, align 8, !dbg !0
@.str.1 = private unnamed_addr constant [12 x i8] c"integrate.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@reg_renumber = external dso_local local_unnamed_addr global i16*, align 8
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@regstat_n_sets_and_refs = external dso_local local_unnamed_addr global %struct.regstat_n_sets_and_refs_t*, align 8

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1933 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1946, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1947, metadata !DIExpression()), !dbg !1948
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1949
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !1950
  ret i32 %call, !dbg !1951
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1952 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1956
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !1957
  ret i32 %call, !dbg !1958
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1959 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2014, metadata !DIExpression()), !dbg !2015
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2016
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2016
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2016
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2016
  %cmp = icmp uge i8* %0, %1, !dbg !2016
  %conv1 = zext i1 %cmp to i64, !dbg !2016
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2016
  %tobool = icmp eq i64 %expval, 0, !dbg !2016
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2016

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !2016
  br label %cond.end, !dbg !2016

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2016
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2016
  %2 = load i8, i8* %0, align 1, !dbg !2016
  %conv3 = zext i8 %2 to i32, !dbg !2016
  br label %cond.end, !dbg !2016

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2016
  ret i32 %cond, !dbg !2017
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2018 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2020, metadata !DIExpression()), !dbg !2021
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2022
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2022
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2022
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2022
  %cmp = icmp uge i8* %0, %1, !dbg !2022
  %conv1 = zext i1 %cmp to i64, !dbg !2022
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2022
  %tobool = icmp eq i64 %expval, 0, !dbg !2022
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2022

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !2022
  br label %cond.end, !dbg !2022

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2022
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2022
  %2 = load i8, i8* %0, align 1, !dbg !2022
  %conv3 = zext i8 %2 to i32, !dbg !2022
  br label %cond.end, !dbg !2022

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2022
  ret i32 %cond, !dbg !2023
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2024 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2025
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2025
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2025
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2025
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2025
  %cmp = icmp uge i8* %1, %2, !dbg !2025
  %conv1 = zext i1 %cmp to i64, !dbg !2025
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2025
  %tobool = icmp eq i64 %expval, 0, !dbg !2025
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2025

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #5, !dbg !2025
  br label %cond.end, !dbg !2025

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2025
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2025
  %3 = load i8, i8* %1, align 1, !dbg !2025
  %conv3 = zext i8 %3 to i32, !dbg !2025
  br label %cond.end, !dbg !2025

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2025
  ret i32 %cond, !dbg !2026
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2027 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2031, metadata !DIExpression()), !dbg !2032
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2033
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #5, !dbg !2034
  ret i32 %call, !dbg !2035
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2036 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2040, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2041, metadata !DIExpression()), !dbg !2042
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2043
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2043
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2043
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2043
  %cmp = icmp uge i8* %0, %1, !dbg !2043
  %conv1 = zext i1 %cmp to i64, !dbg !2043
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2043
  %tobool = icmp eq i64 %expval, 0, !dbg !2043
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2043

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2043
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !2043
  br label %cond.end, !dbg !2043

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2043
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2043
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2043
  store i8 %conv2, i8* %0, align 1, !dbg !2043
  %conv6 = and i32 %__c, 255, !dbg !2043
  br label %cond.end, !dbg !2043

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2043
  ret i32 %cond, !dbg !2044
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2045 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2047, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2048, metadata !DIExpression()), !dbg !2049
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2050
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2050
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2050
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2050
  %cmp = icmp uge i8* %0, %1, !dbg !2050
  %conv1 = zext i1 %cmp to i64, !dbg !2050
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2050
  %tobool = icmp eq i64 %expval, 0, !dbg !2050
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2050

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2050
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !2050
  br label %cond.end, !dbg !2050

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2050
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2050
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2050
  store i8 %conv2, i8* %0, align 1, !dbg !2050
  %conv6 = and i32 %__c, 255, !dbg !2050
  br label %cond.end, !dbg !2050

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2050
  ret i32 %cond, !dbg !2051
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2052 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2054, metadata !DIExpression()), !dbg !2055
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2056
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2056
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2056
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2056
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2056
  %cmp = icmp uge i8* %1, %2, !dbg !2056
  %conv1 = zext i1 %cmp to i64, !dbg !2056
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2056
  %tobool = icmp eq i64 %expval, 0, !dbg !2056
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2056

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2056
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #5, !dbg !2056
  br label %cond.end, !dbg !2056

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2056
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2056
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2056
  store i8 %conv4, i8* %1, align 1, !dbg !2056
  %conv6 = and i32 %__c, 255, !dbg !2056
  br label %cond.end, !dbg !2056

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2056
  ret i32 %cond, !dbg !2057
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2058 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2064, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2065, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2066, metadata !DIExpression()), !dbg !2067
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #5, !dbg !2068
  ret i64 %call, !dbg !2069
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2070 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2072, metadata !DIExpression()), !dbg !2073
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2074
  %0 = load i32, i32* %_flags, align 8, !dbg !2074
  %and = lshr i32 %0, 4, !dbg !2074
  %and.lobit = and i32 %and, 1, !dbg !2074
  ret i32 %and.lobit, !dbg !2075
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2076 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2078, metadata !DIExpression()), !dbg !2079
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2080
  %0 = load i32, i32* %_flags, align 8, !dbg !2080
  %and = lshr i32 %0, 5, !dbg !2080
  %and.lobit = and i32 %and, 1, !dbg !2080
  ret i32 %and.lobit, !dbg !2081
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2082 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2085, metadata !DIExpression()), !dbg !2086
  %__c.off = add i32 %__c, 128, !dbg !2087
  %0 = icmp ult i32 %__c.off, 384, !dbg !2087
  br i1 %0, label %cond.true, label %cond.end, !dbg !2087

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #5, !dbg !2088
  %1 = load i32*, i32** %call, align 8, !dbg !2089
  %idxprom = sext i32 %__c to i64, !dbg !2090
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2090
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2090
  br label %cond.end, !dbg !2091

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2091
  ret i32 %cond, !dbg !2092
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2093 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2095, metadata !DIExpression()), !dbg !2096
  %__c.off = add i32 %__c, 128, !dbg !2097
  %0 = icmp ult i32 %__c.off, 384, !dbg !2097
  br i1 %0, label %cond.true, label %cond.end, !dbg !2097

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #5, !dbg !2098
  %1 = load i32*, i32** %call, align 8, !dbg !2099
  %idxprom = sext i32 %__c to i64, !dbg !2100
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2100
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2100
  br label %cond.end, !dbg !2101

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2101
  ret i32 %cond, !dbg !2102
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2103 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2108, metadata !DIExpression()), !dbg !2109
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !2110
  %conv = trunc i64 %call to i32, !dbg !2111
  ret i32 %conv, !dbg !2112
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2113 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2117, metadata !DIExpression()), !dbg !2118
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !2119
  ret i64 %call, !dbg !2120
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2121 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2126, metadata !DIExpression()), !dbg !2127
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #5, !dbg !2128
  ret i64 %call, !dbg !2129
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2130 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2136, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2137, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2138, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2139, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2140, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i64 0, metadata !2141, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2142, metadata !DIExpression()), !dbg !2146
  br label %while.cond, !dbg !2147

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2148
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2146
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2142, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2141, metadata !DIExpression()), !dbg !2146
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2149
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2147

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2150
  %div = lshr i64 %add, 1, !dbg !2152
  call void @llvm.dbg.value(metadata i64 %div, metadata !2143, metadata !DIExpression()), !dbg !2146
  %mul = mul i64 %div, %__size, !dbg !2153
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2154
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2144, metadata !DIExpression()), !dbg !2146
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #5, !dbg !2155
  call void @llvm.dbg.value(metadata i32 %call, metadata !2145, metadata !DIExpression()), !dbg !2146
  %cmp1 = icmp slt i32 %call, 0, !dbg !2156
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2158

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2159
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2161

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2162
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2141, metadata !DIExpression()), !dbg !2146
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2146
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2146
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2142, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2141, metadata !DIExpression()), !dbg !2146
  br label %while.cond, !dbg !2147, !llvm.loop !2163

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2146
  ret i8* %retval.0, !dbg !2165
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2166 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2172, metadata !DIExpression()), !dbg !2173
  %call = tail call double @strtod(i8* %__nptr, i8** null) #5, !dbg !2174
  ret double %call, !dbg !2175
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2176 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2185, metadata !DIExpression()), !dbg !2188
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2186, metadata !DIExpression()), !dbg !2188
  call void @llvm.dbg.value(metadata i32 %base, metadata !2187, metadata !DIExpression()), !dbg !2188
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !2189
  ret i64 %call, !dbg !2190
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2191 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2197, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2198, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i32 %base, metadata !2199, metadata !DIExpression()), !dbg !2200
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !2201
  ret i64 %call, !dbg !2202
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2203 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2214, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2215, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i32 %base, metadata !2216, metadata !DIExpression()), !dbg !2217
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !2218
  ret i64 %call, !dbg !2219
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2220 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2224, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2225, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata i32 %base, metadata !2226, metadata !DIExpression()), !dbg !2227
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !2228
  ret i64 %call, !dbg !2229
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2230 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2270, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2271, metadata !DIExpression()), !dbg !2272
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !2273
  ret i32 %call, !dbg !2274
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2275 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2277, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2278, metadata !DIExpression()), !dbg !2279
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !2280
  ret i32 %call, !dbg !2281
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2282 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2286, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2287, metadata !DIExpression()), !dbg !2288
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #5, !dbg !2289
  ret i32 %call, !dbg !2290
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2291 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2295, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2296, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2297, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2298, metadata !DIExpression()), !dbg !2299
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #5, !dbg !2300
  ret i32 %call, !dbg !2301
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2302 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2306, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2307, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2308, metadata !DIExpression()), !dbg !2309
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2308, metadata !DIExpression(DW_OP_deref)), !dbg !2309
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !2310
  ret i32 %call, !dbg !2311
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2312 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2316, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2317, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2318, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2319, metadata !DIExpression()), !dbg !2320
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2319, metadata !DIExpression(DW_OP_deref)), !dbg !2320
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !2321
  ret i32 %call, !dbg !2322
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2323 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2347, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2348, metadata !DIExpression()), !dbg !2349
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !2350
  ret i32 %call, !dbg !2351
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2352 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2354, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2355, metadata !DIExpression()), !dbg !2356
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !2357
  ret i32 %call, !dbg !2358
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2359 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2363, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2364, metadata !DIExpression()), !dbg !2365
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #5, !dbg !2366
  ret i32 %call, !dbg !2367
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2368 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2372, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2373, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2374, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2375, metadata !DIExpression()), !dbg !2376
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #5, !dbg !2377
  ret i32 %call, !dbg !2378
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @function_attribute_inlinable_p(%union.tree_node* %fndecl) local_unnamed_addr #3 !dbg !2379 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %fndecl, metadata !2386, metadata !DIExpression()), !dbg !2395
  %0 = load %struct.attribute_spec*, %struct.attribute_spec** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 13), align 8, !dbg !2396
  %tobool = icmp eq %struct.attribute_spec* %0, null, !dbg !2397
  br i1 %tobool, label %if.end17, label %if.then, !dbg !2398

if.then:                                          ; preds = %entry
  %attributes = getelementptr inbounds %union.tree_node, %union.tree_node* %fndecl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6, !dbg !2399
  br label %for.cond, !dbg !2400

for.cond:                                         ; preds = %for.inc12, %if.then
  %a.0.in = phi %union.tree_node** [ %attributes, %if.then ], [ %chain, %for.inc12 ]
  %retval.0 = phi i8 [ undef, %if.then ], [ %retval.1, %for.inc12 ]
  %a.0 = load %union.tree_node*, %union.tree_node** %a.0.in, align 8, !dbg !2401
  call void @llvm.dbg.value(metadata %union.tree_node* %a.0, metadata !2387, metadata !DIExpression()), !dbg !2402
  %tobool1 = icmp eq %union.tree_node* %a.0, null, !dbg !2403
  br i1 %tobool1, label %cleanup14, label %for.body, !dbg !2403

for.body:                                         ; preds = %for.cond
  %purpose = getelementptr inbounds %union.tree_node, %union.tree_node* %a.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2404
  %1 = bitcast i32* %purpose to %union.tree_node**, !dbg !2404
  %2 = load %union.tree_node*, %union.tree_node** %1, align 8, !dbg !2404
  call void @llvm.dbg.value(metadata %union.tree_node* %2, metadata !2390, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i32 0, metadata !2394, metadata !DIExpression()), !dbg !2405
  br label %for.cond2, !dbg !2406

for.cond2:                                        ; preds = %for.inc, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.body ], !dbg !2408
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2394, metadata !DIExpression()), !dbg !2405
  %3 = load %struct.attribute_spec*, %struct.attribute_spec** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 13), align 8, !dbg !2409
  %name3 = getelementptr inbounds %struct.attribute_spec, %struct.attribute_spec* %3, i64 %indvars.iv, i32 0, !dbg !2411
  %4 = load i8*, i8** %name3, align 8, !dbg !2411
  %cmp = icmp eq i8* %4, null, !dbg !2412
  br i1 %cmp, label %cleanup.loopexit, label %for.body4, !dbg !2413

for.body4:                                        ; preds = %for.cond2
  %call = tail call i32 @is_attribute_p(i8* nonnull %4, %union.tree_node* %2) #5, !dbg !2414
  %tobool8 = icmp eq i32 %call, 0, !dbg !2414
  br i1 %tobool8, label %for.inc, label %if.then9, !dbg !2416

if.then9:                                         ; preds = %for.body4
  %5 = load i8 (%union.tree_node*)*, i8 (%union.tree_node*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 17), align 8, !dbg !2417
  %call10 = tail call zeroext i8 %5(%union.tree_node* %fndecl) #5, !dbg !2418
  br label %cleanup, !dbg !2419

for.inc:                                          ; preds = %for.body4
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !2420
  call void @llvm.dbg.value(metadata i32 undef, metadata !2394, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2405
  br label %for.cond2, !dbg !2421, !llvm.loop !2422

cleanup.loopexit:                                 ; preds = %for.cond2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.then9
  %cleanup.dest.slot.0 = phi i32 [ 1, %if.then9 ], [ 0, %cleanup.loopexit ]
  %retval.1 = phi i8 [ %call10, %if.then9 ], [ %retval.0, %cleanup.loopexit ]
  %cond = icmp eq i32 %cleanup.dest.slot.0, 0
  br i1 %cond, label %for.inc12, label %cleanup14

for.inc12:                                        ; preds = %cleanup
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %a.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2424
  br label %for.cond, !dbg !2425, !llvm.loop !2426

cleanup14:                                        ; preds = %for.cond, %cleanup
  %cleanup.dest.slot.1 = phi i32 [ %cleanup.dest.slot.0, %cleanup ], [ 0, %for.cond ]
  %retval.2 = phi i8 [ %retval.1, %cleanup ], [ %retval.0, %for.cond ]
  %switch = icmp eq i32 %cleanup.dest.slot.1, 0
  br i1 %switch, label %if.end17, label %return

if.end17:                                         ; preds = %entry, %cleanup14
  br label %return, !dbg !2428

return:                                           ; preds = %cleanup14, %if.end17
  %retval.3 = phi i8 [ %retval.2, %cleanup14 ], [ 1, %if.end17 ], !dbg !2395
  ret i8 %retval.3, !dbg !2429
}

declare dso_local i32 @is_attribute_p(i8*, %union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @set_decl_origin_self(%union.tree_node* %decl) local_unnamed_addr #3 !dbg !2430 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !2434, metadata !DIExpression()), !dbg !2440
  %abstract_origin = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, !dbg !2441
  %0 = load %union.tree_node*, %union.tree_node** %abstract_origin, align 8, !dbg !2441
  %cmp = icmp eq %union.tree_node* %0, null, !dbg !2442
  br i1 %cmp, label %if.then, label %if.end16, !dbg !2443

if.then:                                          ; preds = %entry
  store %union.tree_node* %decl, %union.tree_node** %abstract_origin, align 8, !dbg !2444
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2445
  %bf.load = load i64, i64* %1, align 8, !dbg !2445
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2446
  %cmp3 = icmp eq i64 %bf.cast1, 29, !dbg !2446
  br i1 %cmp3, label %if.then4, label %if.end16, !dbg !2447

if.then4:                                         ; preds = %if.then
  %arguments = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 2, !dbg !2448
  br label %for.cond, !dbg !2450

for.cond:                                         ; preds = %for.body, %if.then4
  %arg.0.in = phi %union.tree_node** [ %arguments, %if.then4 ], [ %chain, %for.body ]
  %arg.0 = load %union.tree_node*, %union.tree_node** %arg.0.in, align 8, !dbg !2451
  call void @llvm.dbg.value(metadata %union.tree_node* %arg.0, metadata !2435, metadata !DIExpression()), !dbg !2452
  %tobool = icmp eq %union.tree_node* %arg.0, null, !dbg !2453
  br i1 %tobool, label %for.end, label %for.body, !dbg !2453

for.body:                                         ; preds = %for.cond
  %abstract_origin6 = getelementptr inbounds %union.tree_node, %union.tree_node* %arg.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, !dbg !2454
  store %union.tree_node* %arg.0, %union.tree_node** %abstract_origin6, align 8, !dbg !2456
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %arg.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2457
  br label %for.cond, !dbg !2458, !llvm.loop !2459

for.end:                                          ; preds = %for.cond
  %initial = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, !dbg !2461
  %2 = load %union.tree_node*, %union.tree_node** %initial, align 8, !dbg !2461
  %cmp8 = icmp eq %union.tree_node* %2, null, !dbg !2463
  br i1 %cmp8, label %if.end16, label %land.lhs.true, !dbg !2464

land.lhs.true:                                    ; preds = %for.end
  %3 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16, !dbg !2465
  %cmp11 = icmp eq %union.tree_node* %2, %3, !dbg !2466
  br i1 %cmp11, label %if.end16, label %if.then12, !dbg !2467

if.then12:                                        ; preds = %land.lhs.true
  tail call fastcc void @set_block_origin_self(%union.tree_node* nonnull %2) #6, !dbg !2468
  br label %if.end16, !dbg !2468

if.end16:                                         ; preds = %land.lhs.true, %for.end, %if.then, %if.then12, %entry
  ret void, !dbg !2469
}

; Function Attrs: nounwind uwtable
define internal fastcc void @set_block_origin_self(%union.tree_node* %stmt) unnamed_addr #3 !dbg !2470 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %stmt, metadata !2472, metadata !DIExpression()), !dbg !2479
  %abstract_origin = getelementptr inbounds %union.tree_node, %union.tree_node* %stmt, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2480
  %0 = bitcast i32* %abstract_origin to %union.tree_node**, !dbg !2480
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !2480
  %cmp = icmp eq %union.tree_node* %1, null, !dbg !2481
  br i1 %cmp, label %if.then, label %if.end, !dbg !2482

if.then:                                          ; preds = %entry
  store %union.tree_node* %stmt, %union.tree_node** %0, align 8, !dbg !2483
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %stmt, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2484
  br label %for.cond, !dbg !2486

for.cond:                                         ; preds = %for.body, %if.then
  %local_decl.0.in = phi %union.tree_node** [ %2, %if.then ], [ %chain, %for.body ]
  %local_decl.0 = load %union.tree_node*, %union.tree_node** %local_decl.0.in, align 8, !dbg !2487
  call void @llvm.dbg.value(metadata %union.tree_node* %local_decl.0, metadata !2473, metadata !DIExpression()), !dbg !2488
  %cmp4 = icmp eq %union.tree_node* %local_decl.0, null, !dbg !2489
  br i1 %cmp4, label %for.end, label %for.body, !dbg !2491

for.body:                                         ; preds = %for.cond
  tail call void @set_decl_origin_self(%union.tree_node* nonnull %local_decl.0) #6, !dbg !2492
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %local_decl.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2493
  br label %for.cond, !dbg !2494, !llvm.loop !2495

for.end:                                          ; preds = %for.cond
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %stmt, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2497
  br label %for.cond6, !dbg !2499

for.cond6:                                        ; preds = %for.body8, %for.end
  %subblock.0.in = phi %union.tree_node** [ %3, %for.end ], [ %chain11, %for.body8 ]
  %subblock.0 = load %union.tree_node*, %union.tree_node** %subblock.0.in, align 8, !dbg !2500
  call void @llvm.dbg.value(metadata %union.tree_node* %subblock.0, metadata !2477, metadata !DIExpression()), !dbg !2501
  %cmp7 = icmp eq %union.tree_node* %subblock.0, null, !dbg !2502
  br i1 %cmp7, label %if.end.loopexit, label %for.body8, !dbg !2504

for.body8:                                        ; preds = %for.cond6
  tail call fastcc void @set_block_origin_self(%union.tree_node* nonnull %subblock.0) #6, !dbg !2505
  %chain11 = getelementptr inbounds %union.tree_node, %union.tree_node* %subblock.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2506
  br label %for.cond6, !dbg !2507, !llvm.loop !2508

if.end.loopexit:                                  ; preds = %for.cond6
  br label %if.end, !dbg !2510

if.end:                                           ; preds = %if.end.loopexit, %entry
  ret void, !dbg !2510
}

; Function Attrs: nounwind uwtable
define dso_local void @set_decl_abstract_flags(%union.tree_node* %decl, i32 %setting) local_unnamed_addr #3 !dbg !2511 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !2515, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata i32 %setting, metadata !2516, metadata !DIExpression()), !dbg !2520
  %abstract_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2521
  %0 = bitcast i40* %abstract_flag to i64*, !dbg !2521
  %bf.load = load i64, i64* %0, align 8, !dbg !2522
  %1 = shl i32 %setting, 11, !dbg !2522
  %2 = and i32 %1, 2048, !dbg !2522
  %bf.shl = zext i32 %2 to i64, !dbg !2522
  %bf.clear = and i64 %bf.load, -2049, !dbg !2522
  %bf.set = or i64 %bf.clear, %bf.shl, !dbg !2522
  store i64 %bf.set, i64* %0, align 8, !dbg !2522
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2523
  %bf.load1 = load i64, i64* %3, align 8, !dbg !2523
  %bf.cast1 = and i64 %bf.load1, 65535, !dbg !2524
  %cmp = icmp eq i64 %bf.cast1, 29, !dbg !2524
  br i1 %cmp, label %if.then, label %if.end19, !dbg !2525

if.then:                                          ; preds = %entry
  %arguments = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 2, !dbg !2526
  br label %for.cond, !dbg !2528

for.cond:                                         ; preds = %for.body, %if.then
  %arg.0.in = phi %union.tree_node** [ %arguments, %if.then ], [ %chain, %for.body ]
  %arg.0 = load %union.tree_node*, %union.tree_node** %arg.0.in, align 8, !dbg !2529
  call void @llvm.dbg.value(metadata %union.tree_node* %arg.0, metadata !2517, metadata !DIExpression()), !dbg !2530
  %tobool = icmp eq %union.tree_node* %arg.0, null, !dbg !2531
  br i1 %tobool, label %for.end, label %for.body, !dbg !2531

for.body:                                         ; preds = %for.cond
  %abstract_flag4 = getelementptr inbounds %union.tree_node, %union.tree_node* %arg.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2532
  %4 = bitcast i40* %abstract_flag4 to i64*, !dbg !2532
  %bf.load5 = load i64, i64* %4, align 8, !dbg !2534
  %bf.clear8 = and i64 %bf.load5, -2049, !dbg !2534
  %bf.set9 = or i64 %bf.clear8, %bf.shl, !dbg !2534
  store i64 %bf.set9, i64* %4, align 8, !dbg !2534
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %arg.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2535
  br label %for.cond, !dbg !2536, !llvm.loop !2537

for.end:                                          ; preds = %for.cond
  %initial = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, !dbg !2539
  %5 = load %union.tree_node*, %union.tree_node** %initial, align 8, !dbg !2539
  %cmp12 = icmp eq %union.tree_node* %5, null, !dbg !2541
  br i1 %cmp12, label %if.end19, label %land.lhs.true, !dbg !2542

land.lhs.true:                                    ; preds = %for.end
  %6 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16, !dbg !2543
  %cmp15 = icmp eq %union.tree_node* %5, %6, !dbg !2544
  br i1 %cmp15, label %if.end19, label %if.then16, !dbg !2545

if.then16:                                        ; preds = %land.lhs.true
  tail call fastcc void @set_block_abstract_flags(%union.tree_node* nonnull %5, i32 %setting) #6, !dbg !2546
  br label %if.end19, !dbg !2546

if.end19:                                         ; preds = %land.lhs.true, %for.end, %if.then16, %entry
  ret void, !dbg !2547
}

; Function Attrs: nounwind uwtable
define internal fastcc void @set_block_abstract_flags(%union.tree_node* %stmt, i32 %setting) unnamed_addr #3 !dbg !2548 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %stmt, metadata !2550, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i32 %setting, metadata !2551, metadata !DIExpression()), !dbg !2555
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %stmt, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2556
  %bf.load = load i32, i32* %0, align 8, !dbg !2557
  %bf.value = and i32 %setting, 1, !dbg !2557
  %bf.clear = and i32 %bf.load, -2, !dbg !2557
  %bf.set = or i32 %bf.clear, %bf.value, !dbg !2557
  store i32 %bf.set, i32* %0, align 8, !dbg !2557
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %stmt, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2558
  br label %for.cond, !dbg !2560

for.cond:                                         ; preds = %for.body, %entry
  %local_decl.0.in = phi %union.tree_node** [ %1, %entry ], [ %chain, %for.body ]
  %local_decl.0 = load %union.tree_node*, %union.tree_node** %local_decl.0.in, align 8, !dbg !2561
  call void @llvm.dbg.value(metadata %union.tree_node* %local_decl.0, metadata !2552, metadata !DIExpression()), !dbg !2555
  %cmp = icmp eq %union.tree_node* %local_decl.0, null, !dbg !2562
  br i1 %cmp, label %for.cond2.preheader, label %for.body, !dbg !2564

for.cond2.preheader:                              ; preds = %for.cond
  %nonlocalized_vars = getelementptr inbounds %union.tree_node, %union.tree_node* %stmt, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2565
  %2 = bitcast %union.tree_node** %nonlocalized_vars to %struct.VEC_tree_gc**, !dbg !2565
  br label %for.cond2, !dbg !2568

for.body:                                         ; preds = %for.cond
  tail call void @set_decl_abstract_flags(%union.tree_node* nonnull %local_decl.0, i32 %setting) #6, !dbg !2569
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %local_decl.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2570
  br label %for.cond, !dbg !2571, !llvm.loop !2572

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc33
  %i.0 = phi i32 [ %inc, %for.inc33 ], [ 0, %for.cond2.preheader ], !dbg !2574
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2554, metadata !DIExpression()), !dbg !2555
  %3 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %2, align 8, !dbg !2575
  %tobool = icmp eq %struct.VEC_tree_gc* %3, null, !dbg !2575
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2575

cond.true:                                        ; preds = %for.cond2
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %3, i64 0, i32 0, !dbg !2575
  br label %cond.end, !dbg !2575

cond.end:                                         ; preds = %for.cond2, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %for.cond2 ], !dbg !2575
  %call = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond) #6, !dbg !2575
  %cmp6 = icmp ult i32 %i.0, %call, !dbg !2576
  br i1 %cmp6, label %for.body7, label %for.end34, !dbg !2568

for.body7:                                        ; preds = %cond.end
  %4 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %2, align 8, !dbg !2577
  %tobool10 = icmp eq %struct.VEC_tree_gc* %4, null, !dbg !2577
  br i1 %tobool10, label %cond.end16, label %cond.true11, !dbg !2577

cond.true11:                                      ; preds = %for.body7
  %base14 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %4, i64 0, i32 0, !dbg !2577
  br label %cond.end16, !dbg !2577

cond.end16:                                       ; preds = %for.body7, %cond.true11
  %cond17 = phi %struct.VEC_tree_base* [ %base14, %cond.true11 ], [ null, %for.body7 ], !dbg !2577
  %call18 = tail call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %cond17, i32 %i.0) #6, !dbg !2577
  call void @llvm.dbg.value(metadata %union.tree_node* %call18, metadata !2552, metadata !DIExpression()), !dbg !2555
  %5 = getelementptr inbounds %union.tree_node, %union.tree_node* %call18, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2579
  %bf.load20 = load i64, i64* %5, align 8, !dbg !2579
  %bf.cast1 = and i64 %bf.load20, 65535, !dbg !2581
  %cmp22 = icmp eq i64 %bf.cast1, 32, !dbg !2581
  br i1 %cmp22, label %land.lhs.true, label %lor.lhs.false, !dbg !2582

land.lhs.true:                                    ; preds = %cond.end16
  %bf.cast263 = and i64 %bf.load20, 67108864, !dbg !2583
  %tobool27 = icmp eq i64 %bf.cast263, 0, !dbg !2583
  br i1 %tobool27, label %if.then, label %lor.lhs.false, !dbg !2584

lor.lhs.false:                                    ; preds = %land.lhs.true, %cond.end16
  %cmp32 = icmp eq i64 %bf.cast1, 34, !dbg !2585
  br i1 %cmp32, label %if.then, label %for.inc33, !dbg !2586

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false
  tail call void @set_decl_abstract_flags(%union.tree_node* %call18, i32 %setting) #6, !dbg !2587
  br label %for.inc33, !dbg !2587

for.inc33:                                        ; preds = %lor.lhs.false, %if.then
  %inc = add i32 %i.0, 1, !dbg !2588
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2554, metadata !DIExpression()), !dbg !2555
  br label %for.cond2, !dbg !2589, !llvm.loop !2590

for.end34:                                        ; preds = %cond.end
  %6 = getelementptr inbounds %union.tree_node, %union.tree_node* %stmt, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2592
  br label %for.cond36, !dbg !2594

for.cond36:                                       ; preds = %for.body38, %for.end34
  %subblock.0.in = phi %union.tree_node** [ %6, %for.end34 ], [ %chain41, %for.body38 ]
  %subblock.0 = load %union.tree_node*, %union.tree_node** %subblock.0.in, align 8, !dbg !2595
  call void @llvm.dbg.value(metadata %union.tree_node* %subblock.0, metadata !2553, metadata !DIExpression()), !dbg !2555
  %cmp37 = icmp eq %union.tree_node* %subblock.0, null, !dbg !2596
  br i1 %cmp37, label %for.end42, label %for.body38, !dbg !2598

for.body38:                                       ; preds = %for.cond36
  tail call fastcc void @set_block_abstract_flags(%union.tree_node* nonnull %subblock.0, i32 %setting) #6, !dbg !2599
  %chain41 = getelementptr inbounds %union.tree_node, %union.tree_node* %subblock.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2600
  br label %for.cond36, !dbg !2601, !llvm.loop !2602

for.end42:                                        ; preds = %for.cond36
  ret void, !dbg !2604
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @get_hard_reg_initial_reg(%struct.rtx_def* %reg) local_unnamed_addr #3 !dbg !2605 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg, metadata !2609, metadata !DIExpression()), !dbg !2612
  %0 = load %struct.initial_value_struct*, %struct.initial_value_struct** getelementptr inbounds (%struct.rtl_data, %struct.rtl_data* @x_rtl, i64 0, i32 8), align 8, !dbg !2613
  call void @llvm.dbg.value(metadata %struct.initial_value_struct* %0, metadata !2610, metadata !DIExpression()), !dbg !2612
  %cmp = icmp eq %struct.initial_value_struct* %0, null, !dbg !2614
  br i1 %cmp, label %cleanup, label %for.cond.preheader, !dbg !2616

for.cond.preheader:                               ; preds = %entry
  %num_entries = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %0, i64 0, i32 0, !dbg !2617
  %entries = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %0, i64 0, i32 2, !dbg !2620
  br label %for.cond, !dbg !2622

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ], !dbg !2623
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2611, metadata !DIExpression()), !dbg !2612
  %1 = load i32, i32* %num_entries, align 8, !dbg !2624
  %2 = sext i32 %1 to i64, !dbg !2625
  %cmp1 = icmp slt i64 %indvars.iv, %2, !dbg !2625
  br i1 %cmp1, label %for.body, label %cleanup.loopexit, !dbg !2622

for.body:                                         ; preds = %for.cond
  %3 = load %struct.initial_value_pair*, %struct.initial_value_pair** %entries, align 8, !dbg !2626
  %pseudo = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %3, i64 %indvars.iv, i32 1, !dbg !2627
  %4 = load %struct.rtx_def*, %struct.rtx_def** %pseudo, align 8, !dbg !2627
  %call = tail call i32 @rtx_equal_p(%struct.rtx_def* %4, %struct.rtx_def* %reg) #5, !dbg !2628
  %tobool = icmp eq i32 %call, 0, !dbg !2628
  br i1 %tobool, label %for.inc, label %if.then2, !dbg !2629

if.then2:                                         ; preds = %for.body
  %indvars.iv.lcssa2 = phi i64 [ %indvars.iv, %for.body ], !dbg !2623
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa2, metadata !2611, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa2, metadata !2611, metadata !DIExpression()), !dbg !2612
  %5 = load %struct.initial_value_pair*, %struct.initial_value_pair** %entries, align 8, !dbg !2630
  %hard_reg = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %5, i64 %indvars.iv.lcssa2, i32 0, !dbg !2631
  %6 = load %struct.rtx_def*, %struct.rtx_def** %hard_reg, align 8, !dbg !2631
  br label %cleanup, !dbg !2632

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2633
  call void @llvm.dbg.value(metadata i32 undef, metadata !2611, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2612
  br label %for.cond, !dbg !2634, !llvm.loop !2635

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup, !dbg !2637

cleanup:                                          ; preds = %cleanup.loopexit, %entry, %if.then2
  %retval.0 = phi %struct.rtx_def* [ %6, %if.then2 ], [ null, %entry ], [ null, %cleanup.loopexit ], !dbg !2612
  ret %struct.rtx_def* %retval.0, !dbg !2637
}

declare dso_local i32 @rtx_equal_p(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @get_hard_reg_initial_val(i32 %mode, i32 %regno) local_unnamed_addr #3 !dbg !2638 {
entry:
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2642, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i32 %regno, metadata !2643, metadata !DIExpression()), !dbg !2646
  %call = tail call %struct.rtx_def* @has_hard_reg_initial_val(i32 %mode, i32 %regno) #6, !dbg !2647
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !2645, metadata !DIExpression()), !dbg !2646
  %tobool = icmp eq %struct.rtx_def* %call, null, !dbg !2648
  br i1 %tobool, label %if.end, label %cleanup, !dbg !2650

if.end:                                           ; preds = %entry
  %0 = load %struct.initial_value_struct*, %struct.initial_value_struct** getelementptr inbounds (%struct.rtl_data, %struct.rtl_data* @x_rtl, i64 0, i32 8), align 8, !dbg !2651
  call void @llvm.dbg.value(metadata %struct.initial_value_struct* %0, metadata !2644, metadata !DIExpression()), !dbg !2646
  %cmp = icmp eq %struct.initial_value_struct* %0, null, !dbg !2652
  br i1 %cmp, label %if.then1, label %if.end4, !dbg !2654

if.then1:                                         ; preds = %if.end
  %call2 = tail call i8* @ggc_alloc_stat(i64 16) #5, !dbg !2655
  %1 = bitcast i8* %call2 to %struct.initial_value_struct*, !dbg !2655
  call void @llvm.dbg.value(metadata %struct.initial_value_struct* %1, metadata !2644, metadata !DIExpression()), !dbg !2646
  %num_entries = bitcast i8* %call2 to i32*, !dbg !2657
  store i32 0, i32* %num_entries, align 8, !dbg !2658
  %max_entries = getelementptr inbounds i8, i8* %call2, i64 4, !dbg !2659
  %2 = bitcast i8* %max_entries to i32*, !dbg !2659
  store i32 5, i32* %2, align 4, !dbg !2660
  %call3 = tail call i8* @ggc_alloc_stat(i64 80) #5, !dbg !2661
  %entries = getelementptr inbounds i8, i8* %call2, i64 8, !dbg !2662
  %3 = bitcast i8* %entries to i8**, !dbg !2663
  store i8* %call3, i8** %3, align 8, !dbg !2663
  store i8* %call2, i8** bitcast (%struct.initial_value_struct** getelementptr inbounds (%struct.rtl_data, %struct.rtl_data* @x_rtl, i64 0, i32 8) to i8**), align 8, !dbg !2664
  br label %if.end4, !dbg !2665

if.end4:                                          ; preds = %if.then1, %if.end
  %ivs.0 = phi %struct.initial_value_struct* [ %1, %if.then1 ], [ %0, %if.end ], !dbg !2646
  call void @llvm.dbg.value(metadata %struct.initial_value_struct* %ivs.0, metadata !2644, metadata !DIExpression()), !dbg !2646
  %num_entries5 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %ivs.0, i64 0, i32 0, !dbg !2666
  %4 = load i32, i32* %num_entries5, align 8, !dbg !2666
  %max_entries6 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %ivs.0, i64 0, i32 1, !dbg !2668
  %5 = load i32, i32* %max_entries6, align 4, !dbg !2668
  %cmp7 = icmp slt i32 %4, %5, !dbg !2669
  br i1 %cmp7, label %if.end14, label %if.then8, !dbg !2670

if.then8:                                         ; preds = %if.end4
  %add = add nsw i32 %5, 5, !dbg !2671
  store i32 %add, i32* %max_entries6, align 4, !dbg !2671
  %entries10 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %ivs.0, i64 0, i32 2, !dbg !2673
  %6 = bitcast %struct.initial_value_pair** %entries10 to i8**, !dbg !2673
  %7 = load i8*, i8** %6, align 8, !dbg !2673
  %conv = sext i32 %add to i64, !dbg !2673
  %mul = shl nsw i64 %conv, 4, !dbg !2673
  %call12 = tail call i8* @ggc_realloc_stat(i8* %7, i64 %mul) #5, !dbg !2673
  store i8* %call12, i8** %6, align 8, !dbg !2674
  br label %if.end14, !dbg !2675

if.end14:                                         ; preds = %if.end4, %if.then8
  %call15 = tail call %struct.rtx_def* @gen_rtx_REG(i32 %mode, i32 %regno) #5, !dbg !2676
  %entries16 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %ivs.0, i64 0, i32 2, !dbg !2677
  %8 = load %struct.initial_value_pair*, %struct.initial_value_pair** %entries16, align 8, !dbg !2677
  %9 = load i32, i32* %num_entries5, align 8, !dbg !2678
  %idxprom = sext i32 %9 to i64, !dbg !2679
  %hard_reg = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %8, i64 %idxprom, i32 0, !dbg !2680
  store %struct.rtx_def* %call15, %struct.rtx_def** %hard_reg, align 8, !dbg !2681
  %call18 = tail call %struct.rtx_def* @gen_reg_rtx(i32 %mode) #5, !dbg !2682
  %10 = load %struct.initial_value_pair*, %struct.initial_value_pair** %entries16, align 8, !dbg !2683
  %11 = load i32, i32* %num_entries5, align 8, !dbg !2684
  %idxprom21 = sext i32 %11 to i64, !dbg !2685
  %pseudo = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %10, i64 %idxprom21, i32 1, !dbg !2686
  store %struct.rtx_def* %call18, %struct.rtx_def** %pseudo, align 8, !dbg !2687
  %12 = load %struct.initial_value_pair*, %struct.initial_value_pair** %entries16, align 8, !dbg !2688
  %13 = load i32, i32* %num_entries5, align 8, !dbg !2689
  %inc = add nsw i32 %13, 1, !dbg !2689
  store i32 %inc, i32* %num_entries5, align 8, !dbg !2689
  %idxprom25 = sext i32 %13 to i64, !dbg !2690
  %pseudo27 = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %12, i64 %idxprom25, i32 1, !dbg !2691
  %14 = load %struct.rtx_def*, %struct.rtx_def** %pseudo27, align 8, !dbg !2691
  br label %cleanup, !dbg !2692

cleanup:                                          ; preds = %entry, %if.end14
  %retval.0 = phi %struct.rtx_def* [ %14, %if.end14 ], [ %call, %entry ], !dbg !2646
  ret %struct.rtx_def* %retval.0, !dbg !2693
}

; Function Attrs: nounwind uwtable
define dso_local %struct.rtx_def* @has_hard_reg_initial_val(i32 %mode, i32 %regno) local_unnamed_addr #3 !dbg !2694 {
entry:
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2696, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i32 %regno, metadata !2697, metadata !DIExpression()), !dbg !2700
  %0 = load %struct.initial_value_struct*, %struct.initial_value_struct** getelementptr inbounds (%struct.rtl_data, %struct.rtl_data* @x_rtl, i64 0, i32 8), align 8, !dbg !2701
  call void @llvm.dbg.value(metadata %struct.initial_value_struct* %0, metadata !2698, metadata !DIExpression()), !dbg !2700
  %cmp = icmp eq %struct.initial_value_struct* %0, null, !dbg !2702
  br i1 %cmp, label %cleanup, label %for.cond.preheader, !dbg !2704

for.cond.preheader:                               ; preds = %entry
  %num_entries = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %0, i64 0, i32 0, !dbg !2705
  %entries = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %0, i64 0, i32 2, !dbg !2708
  br label %for.cond, !dbg !2710

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ], !dbg !2711
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2699, metadata !DIExpression()), !dbg !2700
  %1 = load i32, i32* %num_entries, align 8, !dbg !2712
  %2 = sext i32 %1 to i64, !dbg !2713
  %cmp1 = icmp slt i64 %indvars.iv, %2, !dbg !2713
  br i1 %cmp1, label %for.body, label %cleanup.loopexit, !dbg !2710

for.body:                                         ; preds = %for.cond
  %3 = load %struct.initial_value_pair*, %struct.initial_value_pair** %entries, align 8, !dbg !2714
  %hard_reg = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %3, i64 %indvars.iv, i32 0, !dbg !2714
  %4 = bitcast %struct.rtx_def** %hard_reg to i32**, !dbg !2714
  %5 = load i32*, i32** %4, align 8, !dbg !2714
  %bf.load = load i32, i32* %5, align 8, !dbg !2714
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !2714
  %bf.clear = and i32 %bf.lshr, 255, !dbg !2714
  %cmp2 = icmp eq i32 %bf.clear, %mode, !dbg !2715
  br i1 %cmp2, label %land.lhs.true, label %for.inc, !dbg !2716

land.lhs.true:                                    ; preds = %for.body
  %6 = bitcast i32* %5 to %struct.rtx_def*, !dbg !2716
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %6) #6, !dbg !2717
  %cmp7 = icmp eq i32 %call, %regno, !dbg !2718
  br i1 %cmp7, label %if.then8, label %for.inc, !dbg !2719

if.then8:                                         ; preds = %land.lhs.true
  %indvars.iv.lcssa2 = phi i64 [ %indvars.iv, %land.lhs.true ], !dbg !2711
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa2, metadata !2699, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa2, metadata !2699, metadata !DIExpression()), !dbg !2700
  %7 = load %struct.initial_value_pair*, %struct.initial_value_pair** %entries, align 8, !dbg !2720
  %pseudo = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %7, i64 %indvars.iv.lcssa2, i32 1, !dbg !2721
  %8 = load %struct.rtx_def*, %struct.rtx_def** %pseudo, align 8, !dbg !2721
  br label %cleanup, !dbg !2722

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2723
  call void @llvm.dbg.value(metadata i32 undef, metadata !2699, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2700
  br label %for.cond, !dbg !2724, !llvm.loop !2725

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup, !dbg !2727

cleanup:                                          ; preds = %cleanup.loopexit, %entry, %if.then8
  %retval.0 = phi %struct.rtx_def* [ %8, %if.then8 ], [ null, %entry ], [ null, %cleanup.loopexit ], !dbg !2700
  ret %struct.rtx_def* %retval.0, !dbg !2727
}

declare dso_local i8* @ggc_alloc_stat(i64) local_unnamed_addr #1

declare dso_local i8* @ggc_realloc_stat(i8*, i64) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @gen_rtx_REG(i32, i32) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @gen_reg_rtx(i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @rhs_regno(%struct.rtx_def* %x) unnamed_addr #0 !dbg !2728 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !2735, metadata !DIExpression()), !dbg !2736
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2737
  %rt_uint = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !2737
  %0 = load i32, i32* %rt_uint, align 8, !dbg !2737
  ret i32 %0, !dbg !2738
}

; Function Attrs: nounwind uwtable
define dso_local i32 @emit_initial_value_sets() #3 !dbg !2739 {
entry:
  %0 = load %struct.initial_value_struct*, %struct.initial_value_struct** getelementptr inbounds (%struct.rtl_data, %struct.rtl_data* @x_rtl, i64 0, i32 8), align 8, !dbg !2744
  call void @llvm.dbg.value(metadata %struct.initial_value_struct* %0, metadata !2741, metadata !DIExpression()), !dbg !2745
  %cmp = icmp eq %struct.initial_value_struct* %0, null, !dbg !2746
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2748

if.end:                                           ; preds = %entry
  tail call void @start_sequence() #5, !dbg !2749
  call void @llvm.dbg.value(metadata i32 0, metadata !2742, metadata !DIExpression()), !dbg !2745
  %num_entries = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %0, i64 0, i32 0, !dbg !2750
  %entries = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %0, i64 0, i32 2, !dbg !2750
  br label %for.cond, !dbg !2753

for.cond:                                         ; preds = %for.body, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end ], !dbg !2754
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2742, metadata !DIExpression()), !dbg !2745
  %1 = load i32, i32* %num_entries, align 8, !dbg !2755
  %2 = sext i32 %1 to i64, !dbg !2756
  %cmp1 = icmp slt i64 %indvars.iv, %2, !dbg !2756
  br i1 %cmp1, label %for.body, label %for.end, !dbg !2757

for.body:                                         ; preds = %for.cond
  %3 = load %struct.initial_value_pair*, %struct.initial_value_pair** %entries, align 8, !dbg !2758
  %pseudo = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %3, i64 %indvars.iv, i32 1, !dbg !2759
  %4 = load %struct.rtx_def*, %struct.rtx_def** %pseudo, align 8, !dbg !2759
  %hard_reg = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %3, i64 %indvars.iv, i32 0, !dbg !2760
  %5 = load %struct.rtx_def*, %struct.rtx_def** %hard_reg, align 8, !dbg !2760
  %call = tail call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %4, %struct.rtx_def* %5) #5, !dbg !2761
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2762
  call void @llvm.dbg.value(metadata i32 undef, metadata !2742, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2745
  br label %for.cond, !dbg !2763, !llvm.loop !2764

for.end:                                          ; preds = %for.cond
  %call5 = tail call %struct.rtx_def* @get_insns() #5, !dbg !2766
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call5, metadata !2743, metadata !DIExpression()), !dbg !2745
  tail call void @end_sequence() #5, !dbg !2767
  tail call void @emit_insn_at_entry(%struct.rtx_def* %call5) #5, !dbg !2768
  br label %cleanup, !dbg !2769

cleanup:                                          ; preds = %entry, %for.end
  ret i32 0, !dbg !2770
}

declare dso_local void @start_sequence() local_unnamed_addr #1

declare dso_local %struct.rtx_def* @emit_move_insn(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @get_insns() local_unnamed_addr #1

declare dso_local void @end_sequence() local_unnamed_addr #1

declare dso_local void @emit_insn_at_entry(%struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @allocate_initial_values(%struct.rtx_def** %reg_equiv_memory_loc) local_unnamed_addr #3 !dbg !2771 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def** %reg_equiv_memory_loc, metadata !2776, metadata !DIExpression()), !dbg !2792
  %0 = load %struct.rtx_def* (%struct.rtx_def*)*, %struct.rtx_def* (%struct.rtx_def*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 62), align 8, !dbg !2793
  %tobool = icmp eq %struct.rtx_def* (%struct.rtx_def*)* %0, null, !dbg !2794
  br i1 %tobool, label %if.end66, label %if.then, !dbg !2795

if.then:                                          ; preds = %entry
  %1 = load %struct.initial_value_struct*, %struct.initial_value_struct** getelementptr inbounds (%struct.rtl_data, %struct.rtl_data* @x_rtl, i64 0, i32 8), align 8, !dbg !2796
  call void @llvm.dbg.value(metadata %struct.initial_value_struct* %1, metadata !2777, metadata !DIExpression()), !dbg !2797
  %cmp = icmp eq %struct.initial_value_struct* %1, null, !dbg !2798
  br i1 %cmp, label %cleanup, label %for.cond.preheader, !dbg !2800

for.cond.preheader:                               ; preds = %if.then
  %num_entries = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %1, i64 0, i32 0, !dbg !2801
  %entries = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %1, i64 0, i32 2, !dbg !2802
  br label %for.cond, !dbg !2803

for.cond:                                         ; preds = %for.cond.preheader, %for.inc63
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc63 ], !dbg !2804
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2780, metadata !DIExpression()), !dbg !2797
  %2 = load i32, i32* %num_entries, align 8, !dbg !2805
  %3 = sext i32 %2 to i64, !dbg !2806
  %cmp2 = icmp slt i64 %indvars.iv, %3, !dbg !2806
  br i1 %cmp2, label %for.body, label %cleanup.loopexit, !dbg !2803

for.body:                                         ; preds = %for.cond
  %4 = load %struct.initial_value_pair*, %struct.initial_value_pair** %entries, align 8, !dbg !2807
  %pseudo = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %4, i64 %indvars.iv, i32 1, !dbg !2807
  %5 = load %struct.rtx_def*, %struct.rtx_def** %pseudo, align 8, !dbg !2807
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %5) #6, !dbg !2807
  call void @llvm.dbg.value(metadata i32 %call, metadata !2781, metadata !DIExpression()), !dbg !2802
  %6 = load %struct.rtx_def* (%struct.rtx_def*)*, %struct.rtx_def* (%struct.rtx_def*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 62), align 8, !dbg !2808
  %7 = load %struct.initial_value_pair*, %struct.initial_value_pair** %entries, align 8, !dbg !2809
  %hard_reg = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %7, i64 %indvars.iv, i32 0, !dbg !2810
  %8 = load %struct.rtx_def*, %struct.rtx_def** %hard_reg, align 8, !dbg !2810
  %call6 = tail call %struct.rtx_def* %6(%struct.rtx_def* %8) #5, !dbg !2811
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call6, metadata !2785, metadata !DIExpression()), !dbg !2802
  %tobool7 = icmp eq %struct.rtx_def* %call6, null, !dbg !2812
  br i1 %tobool7, label %for.inc63, label %land.lhs.true, !dbg !2813

land.lhs.true:                                    ; preds = %for.body
  %9 = load %struct.initial_value_pair*, %struct.initial_value_pair** %entries, align 8, !dbg !2814
  %pseudo11 = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %9, i64 %indvars.iv, i32 1, !dbg !2814
  %10 = load %struct.rtx_def*, %struct.rtx_def** %pseudo11, align 8, !dbg !2814
  %call12 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %10) #6, !dbg !2814
  %call13 = tail call fastcc i32 @REG_N_SETS(i32 %call12) #6, !dbg !2815
  %cmp14 = icmp slt i32 %call13, 2, !dbg !2816
  br i1 %cmp14, label %if.then15, label %for.inc63, !dbg !2817

if.then15:                                        ; preds = %land.lhs.true
  %11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call6, i64 0, i32 0, !dbg !2818
  %bf.load = load i32, i32* %11, align 8, !dbg !2818
  %bf.clear = and i32 %bf.load, 65535, !dbg !2818
  %cmp16 = icmp eq i32 %bf.clear, 43, !dbg !2818
  br i1 %cmp16, label %if.then17, label %if.else, !dbg !2819

if.then17:                                        ; preds = %if.then15
  %idxprom18 = sext i32 %call to i64, !dbg !2820
  %arrayidx19 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %reg_equiv_memory_loc, i64 %idxprom18, !dbg !2820
  store %struct.rtx_def* %call6, %struct.rtx_def** %arrayidx19, align 8, !dbg !2821
  br label %for.inc63, !dbg !2820

if.else:                                          ; preds = %if.then15
  %cmp22 = icmp eq i32 %bf.clear, 37, !dbg !2822
  br i1 %cmp22, label %cond.end, label %cond.true, !dbg !2822

cond.true:                                        ; preds = %if.else
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 356, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !2822
  br label %cond.end, !dbg !2822

cond.end:                                         ; preds = %if.else, %cond.true
  %call23 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* nonnull %call6) #6, !dbg !2823
  call void @llvm.dbg.value(metadata i32 %call23, metadata !2791, metadata !DIExpression()), !dbg !2824
  %conv = trunc i32 %call23 to i16, !dbg !2825
  %12 = load i16*, i16** @reg_renumber, align 8, !dbg !2826
  %idxprom24 = sext i32 %call to i64, !dbg !2826
  %arrayidx25 = getelementptr inbounds i16, i16* %12, i64 %idxprom24, !dbg !2826
  store i16 %conv, i16* %arrayidx25, align 2, !dbg !2827
  %13 = load %struct.initial_value_pair*, %struct.initial_value_pair** %entries, align 8, !dbg !2828
  %pseudo29 = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %13, i64 %indvars.iv, i32 1, !dbg !2828
  %14 = load %struct.rtx_def*, %struct.rtx_def** %pseudo29, align 8, !dbg !2828
  %call30 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %14) #6, !dbg !2828
  %15 = load %struct.initial_value_pair*, %struct.initial_value_pair** %entries, align 8, !dbg !2828
  %pseudo34 = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %15, i64 %indvars.iv, i32 1, !dbg !2828
  %16 = load %struct.rtx_def*, %struct.rtx_def** %pseudo34, align 8, !dbg !2828
  tail call void @df_ref_change_reg_with_loc(i32 %call30, i32 %call23, %struct.rtx_def* %16) #5, !dbg !2828
  %17 = load %struct.initial_value_pair*, %struct.initial_value_pair** %entries, align 8, !dbg !2828
  %pseudo38 = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %17, i64 %indvars.iv, i32 1, !dbg !2828
  %18 = load %struct.rtx_def*, %struct.rtx_def** %pseudo38, align 8, !dbg !2828
  %arrayidx39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2828
  %rt_uint = bitcast %union.rtunion_def* %arrayidx39 to i32*, !dbg !2828
  store i32 %call23, i32* %rt_uint, align 8, !dbg !2828
  %19 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2829
  %cfg = getelementptr inbounds %struct.function, %struct.function* %19, i64 0, i32 1, !dbg !2829
  %20 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2829
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %20, i64 0, i32 0, !dbg !2829
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2829
  br label %for.cond40, !dbg !2829

for.cond40:                                       ; preds = %for.inc, %cond.end
  %22 = phi %struct.control_flow_graph* [ %20, %cond.end ], [ %.pre1, %for.inc ], !dbg !2831
  %.pn = phi %struct.basic_block_def* [ %21, %cond.end ], [ %bb.0, %for.inc ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2833
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2833
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2786, metadata !DIExpression()), !dbg !2824
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %22, i64 0, i32 1, !dbg !2831
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2831
  %cmp43 = icmp eq %struct.basic_block_def* %bb.0, %23, !dbg !2831
  br i1 %cmp43, label %for.inc63.loopexit, label %for.body45, !dbg !2829

for.body45:                                       ; preds = %for.cond40
  %call46 = tail call %struct.bitmap_head_def* @df_get_live_in(%struct.basic_block_def* %bb.0) #5, !dbg !2834
  %call47 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %call46, i32 %call) #5, !dbg !2834
  %tobool48 = icmp eq i32 %call47, 0, !dbg !2834
  br i1 %tobool48, label %if.end52, label %if.then49, !dbg !2837

if.then49:                                        ; preds = %for.body45
  %call50 = tail call %struct.bitmap_head_def* @df_get_live_in(%struct.basic_block_def* %bb.0) #5, !dbg !2838
  %call51 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call50, i32 %call23) #5, !dbg !2838
  br label %if.end52, !dbg !2838

if.end52:                                         ; preds = %for.body45, %if.then49
  %call53 = tail call %struct.bitmap_head_def* @df_get_live_out(%struct.basic_block_def* %bb.0) #5, !dbg !2839
  %call54 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %call53, i32 %call) #5, !dbg !2839
  %tobool55 = icmp eq i32 %call54, 0, !dbg !2839
  br i1 %tobool55, label %for.inc, label %if.then56, !dbg !2841

if.then56:                                        ; preds = %if.end52
  %call57 = tail call %struct.bitmap_head_def* @df_get_live_out(%struct.basic_block_def* %bb.0) #5, !dbg !2842
  %call58 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call57, i32 %call23) #5, !dbg !2842
  br label %for.inc, !dbg !2842

for.inc:                                          ; preds = %if.end52, %if.then56
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2831
  %cfg42.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2843
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg42.phi.trans.insert, align 8, !dbg !2831
  br label %for.cond40, !dbg !2831, !llvm.loop !2844

for.inc63.loopexit:                               ; preds = %for.cond40
  br label %for.inc63, !dbg !2846

for.inc63:                                        ; preds = %for.inc63.loopexit, %for.body, %land.lhs.true, %if.then17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2846
  call void @llvm.dbg.value(metadata i32 undef, metadata !2780, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2797
  br label %for.cond, !dbg !2847, !llvm.loop !2848

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.then
  ret void

if.end66:                                         ; preds = %entry
  ret void, !dbg !2850
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @REG_N_SETS(i32 %regno) unnamed_addr #0 !dbg !2851 {
entry:
  call void @llvm.dbg.value(metadata i32 %regno, metadata !2854, metadata !DIExpression()), !dbg !2855
  %0 = load %struct.regstat_n_sets_and_refs_t*, %struct.regstat_n_sets_and_refs_t** @regstat_n_sets_and_refs, align 8, !dbg !2856
  %idxprom = sext i32 %regno to i64, !dbg !2856
  %sets = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, %struct.regstat_n_sets_and_refs_t* %0, i64 %idxprom, i32 0, !dbg !2857
  %1 = load i32, i32* %sets, align 4, !dbg !2857
  ret i32 %1, !dbg !2858
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

declare dso_local void @df_ref_change_reg_with_loc(i32, i32, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) local_unnamed_addr #1

declare dso_local %struct.bitmap_head_def* @df_get_live_in(%struct.basic_block_def*) local_unnamed_addr #1

declare dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #1

declare dso_local %struct.bitmap_head_def* @df_get_live_out(%struct.basic_block_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @gt_ggc_mx_initial_value_struct(i8* %x_p) local_unnamed_addr #3 !dbg !2859 {
entry:
  call void @llvm.dbg.value(metadata i8* %x_p, metadata !2862, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i8* %x_p, metadata !2863, metadata !DIExpression()), !dbg !2873
  %cmp = icmp ne i8* %x_p, null, !dbg !2874
  %cmp1 = icmp ne i8* %x_p, inttoptr (i64 1 to i8*), !dbg !2874
  %or.cond = and i1 %cmp, %cmp1, !dbg !2874
  br i1 %or.cond, label %land.lhs.true2, label %if.end39, !dbg !2874

land.lhs.true2:                                   ; preds = %entry
  %call = tail call i32 @ggc_set_mark(i8* nonnull %x_p) #5, !dbg !2874
  %tobool = icmp eq i32 %call, 0, !dbg !2874
  br i1 %tobool, label %if.then, label %if.end39, !dbg !2875

if.then:                                          ; preds = %land.lhs.true2
  %entries = getelementptr inbounds i8, i8* %x_p, i64 8, !dbg !2876
  %0 = bitcast i8* %entries to %struct.initial_value_pair**, !dbg !2876
  %1 = load %struct.initial_value_pair*, %struct.initial_value_pair** %0, align 8, !dbg !2876
  %cmp3 = icmp eq %struct.initial_value_pair* %1, null, !dbg !2877
  br i1 %cmp3, label %if.end39, label %for.cond.preheader, !dbg !2878

for.cond.preheader:                               ; preds = %if.then
  %num_entries = bitcast i8* %x_p to i32*, !dbg !2879
  br label %for.cond, !dbg !2882

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %.pre3 = phi %struct.initial_value_pair* [ %.pre, %for.inc ], [ %1, %for.cond.preheader ]
  %2 = phi %struct.initial_value_pair* [ %.pre, %for.inc ], [ %1, %for.cond.preheader ], !dbg !2883
  %i0.0 = phi i64 [ %inc, %for.inc ], [ 0, %for.cond.preheader ], !dbg !2884
  call void @llvm.dbg.value(metadata i64 %i0.0, metadata !2865, metadata !DIExpression()), !dbg !2883
  %3 = load i32, i32* %num_entries, align 8, !dbg !2885
  %conv = sext i32 %3 to i64, !dbg !2886
  %cmp5 = icmp eq i64 %i0.0, %conv, !dbg !2887
  br i1 %cmp5, label %do.body26, label %do.body, !dbg !2882

do.body:                                          ; preds = %for.cond
  %hard_reg = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %2, i64 %i0.0, i32 0, !dbg !2888
  %4 = load %struct.rtx_def*, %struct.rtx_def** %hard_reg, align 8, !dbg !2888
  %cmp8 = icmp eq %struct.rtx_def* %4, null, !dbg !2888
  br i1 %cmp8, label %do.body14, label %if.then10, !dbg !2892

if.then10:                                        ; preds = %do.body
  %5 = bitcast %struct.rtx_def* %4 to i8*, !dbg !2892
  tail call void @gt_ggc_mx_rtx_def(i8* nonnull %5) #5, !dbg !2888
  %.pre1 = load %struct.initial_value_pair*, %struct.initial_value_pair** %0, align 8, !dbg !2893
  br label %do.body14, !dbg !2888

do.body14:                                        ; preds = %do.body, %if.then10
  %.pre2 = phi %struct.initial_value_pair* [ %.pre3, %do.body ], [ %.pre1, %if.then10 ]
  %6 = phi %struct.initial_value_pair* [ %2, %do.body ], [ %.pre1, %if.then10 ], !dbg !2893
  %pseudo = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %6, i64 %i0.0, i32 1, !dbg !2893
  %7 = load %struct.rtx_def*, %struct.rtx_def** %pseudo, align 8, !dbg !2893
  %cmp17 = icmp eq %struct.rtx_def* %7, null, !dbg !2893
  br i1 %cmp17, label %for.inc, label %if.then19, !dbg !2896

if.then19:                                        ; preds = %do.body14
  %8 = bitcast %struct.rtx_def* %7 to i8*, !dbg !2896
  tail call void @gt_ggc_mx_rtx_def(i8* nonnull %8) #5, !dbg !2893
  %.pre.pre = load %struct.initial_value_pair*, %struct.initial_value_pair** %0, align 8, !dbg !2883
  br label %for.inc, !dbg !2893

for.inc:                                          ; preds = %do.body14, %if.then19
  %.pre = phi %struct.initial_value_pair* [ %.pre2, %do.body14 ], [ %.pre.pre, %if.then19 ], !dbg !2883
  %inc = add i64 %i0.0, 1, !dbg !2897
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2865, metadata !DIExpression()), !dbg !2883
  br label %for.cond, !dbg !2898, !llvm.loop !2899

do.body26:                                        ; preds = %for.cond
  %.lcssa = phi %struct.initial_value_pair* [ %2, %for.cond ], !dbg !2883
  call void @llvm.dbg.value(metadata %struct.initial_value_pair* %.lcssa, metadata !2870, metadata !DIExpression()), !dbg !2901
  %switch = icmp ult %struct.initial_value_pair* %.lcssa, inttoptr (i64 2 to %struct.initial_value_pair*), !dbg !2902
  br i1 %switch, label %if.end39, label %if.then33, !dbg !2902

if.then33:                                        ; preds = %do.body26
  %9 = bitcast %struct.initial_value_pair* %.lcssa to i8*, !dbg !2904
  call void @llvm.dbg.value(metadata i8* %9, metadata !2870, metadata !DIExpression()), !dbg !2901
  %call34 = tail call i32 @ggc_set_mark(i8* %9) #5, !dbg !2902
  br label %if.end39, !dbg !2902

if.end39:                                         ; preds = %if.then, %land.lhs.true2, %do.body26, %if.then33, %entry
  ret void, !dbg !2905
}

declare dso_local i32 @ggc_set_mark(i8*) local_unnamed_addr #1

declare dso_local void @gt_ggc_mx_rtx_def(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @gt_pch_nx_initial_value_struct(i8* %x_p) local_unnamed_addr #3 !dbg !2906 {
entry:
  call void @llvm.dbg.value(metadata i8* %x_p, metadata !2908, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata i8* %x_p, metadata !2909, metadata !DIExpression()), !dbg !2915
  %call = tail call i32 @gt_pch_note_object(i8* %x_p, i8* %x_p, void (i8*, i8*, void (i8*, i8*)*, i8*)* nonnull @gt_pch_p_20initial_value_struct, i32 121) #5, !dbg !2916
  %tobool = icmp eq i32 %call, 0, !dbg !2916
  br i1 %tobool, label %if.end26, label %if.then, !dbg !2917

if.then:                                          ; preds = %entry
  %entries = getelementptr inbounds i8, i8* %x_p, i64 8, !dbg !2918
  %0 = bitcast i8* %entries to %struct.initial_value_pair**, !dbg !2918
  %1 = load %struct.initial_value_pair*, %struct.initial_value_pair** %0, align 8, !dbg !2918
  %cmp = icmp eq %struct.initial_value_pair* %1, null, !dbg !2919
  br i1 %cmp, label %if.end26, label %for.cond.preheader, !dbg !2920

for.cond.preheader:                               ; preds = %if.then
  %num_entries = bitcast i8* %x_p to i32*, !dbg !2921
  br label %for.cond, !dbg !2924

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %.pre3 = phi %struct.initial_value_pair* [ %.pre, %for.inc ], [ %1, %for.cond.preheader ]
  %2 = phi %struct.initial_value_pair* [ %.pre, %for.inc ], [ %1, %for.cond.preheader ], !dbg !2925
  %i0.0 = phi i64 [ %inc, %for.inc ], [ 0, %for.cond.preheader ], !dbg !2926
  call void @llvm.dbg.value(metadata i64 %i0.0, metadata !2910, metadata !DIExpression()), !dbg !2925
  %3 = load i32, i32* %num_entries, align 8, !dbg !2927
  %conv = sext i32 %3 to i64, !dbg !2928
  %cmp2 = icmp eq i64 %i0.0, %conv, !dbg !2929
  br i1 %cmp2, label %for.end, label %do.body, !dbg !2924

do.body:                                          ; preds = %for.cond
  %hard_reg = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %2, i64 %i0.0, i32 0, !dbg !2930
  %4 = load %struct.rtx_def*, %struct.rtx_def** %hard_reg, align 8, !dbg !2930
  %cmp5 = icmp eq %struct.rtx_def* %4, null, !dbg !2930
  br i1 %cmp5, label %do.body11, label %if.then7, !dbg !2934

if.then7:                                         ; preds = %do.body
  %5 = bitcast %struct.rtx_def* %4 to i8*, !dbg !2934
  tail call void @gt_pch_nx_rtx_def(i8* nonnull %5) #5, !dbg !2930
  %.pre1 = load %struct.initial_value_pair*, %struct.initial_value_pair** %0, align 8, !dbg !2935
  br label %do.body11, !dbg !2930

do.body11:                                        ; preds = %do.body, %if.then7
  %.pre2 = phi %struct.initial_value_pair* [ %.pre3, %do.body ], [ %.pre1, %if.then7 ]
  %6 = phi %struct.initial_value_pair* [ %2, %do.body ], [ %.pre1, %if.then7 ], !dbg !2935
  %pseudo = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %6, i64 %i0.0, i32 1, !dbg !2935
  %7 = load %struct.rtx_def*, %struct.rtx_def** %pseudo, align 8, !dbg !2935
  %cmp14 = icmp eq %struct.rtx_def* %7, null, !dbg !2935
  br i1 %cmp14, label %for.inc, label %if.then16, !dbg !2938

if.then16:                                        ; preds = %do.body11
  %8 = bitcast %struct.rtx_def* %7 to i8*, !dbg !2938
  tail call void @gt_pch_nx_rtx_def(i8* nonnull %8) #5, !dbg !2935
  %.pre.pre = load %struct.initial_value_pair*, %struct.initial_value_pair** %0, align 8, !dbg !2925
  br label %for.inc, !dbg !2935

for.inc:                                          ; preds = %do.body11, %if.then16
  %.pre = phi %struct.initial_value_pair* [ %.pre2, %do.body11 ], [ %.pre.pre, %if.then16 ], !dbg !2925
  %inc = add i64 %i0.0, 1, !dbg !2939
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2910, metadata !DIExpression()), !dbg !2925
  br label %for.cond, !dbg !2940, !llvm.loop !2941

for.end:                                          ; preds = %for.cond
  %.lcssa = phi %struct.initial_value_pair* [ %2, %for.cond ], !dbg !2925
  %9 = bitcast %struct.initial_value_pair* %.lcssa to i8*, !dbg !2943
  %call24 = tail call i32 @gt_pch_note_object(i8* %9, i8* %x_p, void (i8*, i8*, void (i8*, i8*)*, i8*)* nonnull @gt_pch_p_20initial_value_struct, i32 217) #5, !dbg !2944
  br label %if.end26, !dbg !2945

if.end26:                                         ; preds = %if.then, %entry, %for.end
  ret void, !dbg !2946
}

declare dso_local i32 @gt_pch_note_object(i8*, i8*, void (i8*, i8*, void (i8*, i8*)*, i8*)*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @gt_pch_p_20initial_value_struct(i8* %this_obj, i8* %x_p, void (i8*, i8*)* %op, i8* %cookie) #3 !dbg !2947 {
entry:
  call void @llvm.dbg.value(metadata i8* %this_obj, metadata !2953, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i8* %x_p, metadata !2954, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata void (i8*, i8*)* %op, metadata !2955, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i8* %cookie, metadata !2956, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i8* %x_p, metadata !2957, metadata !DIExpression()), !dbg !2961
  %entries = getelementptr inbounds i8, i8* %x_p, i64 8, !dbg !2962
  %0 = bitcast i8* %entries to %struct.initial_value_pair**, !dbg !2962
  %1 = load %struct.initial_value_pair*, %struct.initial_value_pair** %0, align 8, !dbg !2962
  %cmp = icmp eq %struct.initial_value_pair* %1, null, !dbg !2963
  br i1 %cmp, label %if.end20, label %for.cond.preheader, !dbg !2964

for.cond.preheader:                               ; preds = %entry
  %num_entries = bitcast i8* %x_p to i32*, !dbg !2965
  %2 = bitcast i8* %entries to i8**, !dbg !2968
  br label %for.cond, !dbg !2971

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %i0.0 = phi i64 [ %inc, %for.inc ], [ 0, %for.cond.preheader ], !dbg !2972
  call void @llvm.dbg.value(metadata i64 %i0.0, metadata !2958, metadata !DIExpression()), !dbg !2973
  %3 = load i32, i32* %num_entries, align 8, !dbg !2974
  %conv = sext i32 %3 to i64, !dbg !2975
  %cmp1 = icmp eq i64 %i0.0, %conv, !dbg !2976
  br i1 %cmp1, label %for.end, label %for.body, !dbg !2971

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %2, align 8, !dbg !2977
  %cmp4 = icmp eq i8* %4, %this_obj, !dbg !2978
  %5 = bitcast i8* %4 to %struct.initial_value_pair*, !dbg !2979
  br i1 %cmp4, label %if.then6, label %if.end, !dbg !2979

if.then6:                                         ; preds = %for.body
  %hard_reg = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %5, i64 %i0.0, i32 0, !dbg !2980
  %6 = bitcast %struct.rtx_def** %hard_reg to i8*, !dbg !2981
  tail call void %op(i8* %6, i8* %cookie) #5, !dbg !2982
  %.pre = load i8*, i8** %2, align 8, !dbg !2983
  %7 = bitcast i8* %.pre to %struct.initial_value_pair*, !dbg !2982
  br label %if.end, !dbg !2982

if.end:                                           ; preds = %if.then6, %for.body
  %8 = phi %struct.initial_value_pair* [ %7, %if.then6 ], [ %5, %for.body ]
  %9 = phi i8* [ %.pre, %if.then6 ], [ %4, %for.body ], !dbg !2983
  %cmp9 = icmp eq i8* %9, %this_obj, !dbg !2985
  br i1 %cmp9, label %if.then11, label %for.inc, !dbg !2986

if.then11:                                        ; preds = %if.end
  %pseudo = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %8, i64 %i0.0, i32 1, !dbg !2987
  %10 = bitcast %struct.rtx_def** %pseudo to i8*, !dbg !2988
  tail call void %op(i8* nonnull %10, i8* %cookie) #5, !dbg !2989
  br label %for.inc, !dbg !2989

for.inc:                                          ; preds = %if.end, %if.then11
  %inc = add i64 %i0.0, 1, !dbg !2990
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2958, metadata !DIExpression()), !dbg !2973
  br label %for.cond, !dbg !2991, !llvm.loop !2992

for.end:                                          ; preds = %for.cond
  %cmp15 = icmp eq i8* %x_p, %this_obj, !dbg !2994
  br i1 %cmp15, label %if.then17, label %if.end20, !dbg !2996

if.then17:                                        ; preds = %for.end
  tail call void %op(i8* nonnull %entries, i8* %cookie) #5, !dbg !2997
  br label %if.end20, !dbg !2997

if.end20:                                         ; preds = %entry, %for.end, %if.then17
  ret void, !dbg !2998
}

declare dso_local void @gt_pch_nx_rtx_def(i8*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %vec_) unnamed_addr #0 !dbg !2999 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !3005, metadata !DIExpression()), !dbg !3006
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !3007
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3007

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !3007
  %0 = load i32, i32* %num, align 8, !dbg !3007
  br label %cond.end, !dbg !3007

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3007
  ret i32 %cond, !dbg !3007
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3008 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !3012, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3013, metadata !DIExpression()), !dbg !3014
  br label %land.end, !dbg !3015

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3015
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3015
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3015
  ret %union.tree_node* %0, !dbg !3015
}

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
!llvm.module.flags = !{!1929, !1930, !1931}
!llvm.ident = !{!1932}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_initial_value_sets", scope: !2, file: !3, line: 310, type: !1903, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !710, globals: !1902, nameTableKind: None)
!3 = !DIFile(filename: "integrate.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !141, !147, !152, !157, !176, !183, !190, !384, !391, !567}
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
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "eh_region_type", file: !135, line: 30, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./except.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!136 = !{!137, !138, !139, !140}
!137 = !DIEnumerator(name: "ERT_CLEANUP", value: 0, isUnsigned: true)
!138 = !DIEnumerator(name: "ERT_TRY", value: 1, isUnsigned: true)
!139 = !DIEnumerator(name: "ERT_ALLOWED_EXCEPTIONS", value: 2, isUnsigned: true)
!140 = !DIEnumerator(name: "ERT_MUST_NOT_THROW", value: 3, isUnsigned: true)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !142, line: 363, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!143 = !{!144, !145, !146}
!144 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!145 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!146 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !142, line: 355, baseType: !7, size: 32, elements: !148)
!148 = !{!149, !150, !151}
!149 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!150 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!151 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !153, line: 474, baseType: !7, size: 32, elements: !154)
!153 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!154 = !{!155, !156}
!155 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!156 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !158, line: 280, baseType: !7, size: 32, elements: !159)
!158 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!159 = !{!160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175}
!160 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!161 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!162 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!163 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!164 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!165 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!166 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!167 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!168 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!169 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!170 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!171 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!172 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!173 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!174 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!175 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !158, line: 1817, baseType: !7, size: 32, elements: !177)
!177 = !{!178, !179, !180, !181, !182}
!178 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!179 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!180 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!181 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!182 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !158, line: 1805, baseType: !7, size: 32, elements: !184)
!184 = !{!185, !186, !187, !188, !189}
!185 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!186 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!187 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!188 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!189 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !158, line: 39, baseType: !7, size: 32, elements: !191)
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
!384 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "opt_pass_type", file: !385, line: 104, baseType: !7, size: 32, elements: !386)
!385 = !DIFile(filename: "./tree-pass.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!386 = !{!387, !388, !389, !390}
!387 = !DIEnumerator(name: "GIMPLE_PASS", value: 0, isUnsigned: true)
!388 = !DIEnumerator(name: "RTL_PASS", value: 1, isUnsigned: true)
!389 = !DIEnumerator(name: "SIMPLE_IPA_PASS", value: 2, isUnsigned: true)
!390 = !DIEnumerator(name: "IPA_PASS", value: 3, isUnsigned: true)
!391 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !392, line: 74, baseType: !7, size: 32, elements: !393)
!392 = !DIFile(filename: "./timevar.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!393 = !{!394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566}
!394 = !DIEnumerator(name: "TV_NONE", value: 0, isUnsigned: true)
!395 = !DIEnumerator(name: "TV_TOTAL", value: 1, isUnsigned: true)
!396 = !DIEnumerator(name: "TV_GC", value: 2, isUnsigned: true)
!397 = !DIEnumerator(name: "TV_DUMP", value: 3, isUnsigned: true)
!398 = !DIEnumerator(name: "TV_CGRAPH", value: 4, isUnsigned: true)
!399 = !DIEnumerator(name: "TV_CGRAPHOPT", value: 5, isUnsigned: true)
!400 = !DIEnumerator(name: "TV_IPA_CONSTANT_PROP", value: 6, isUnsigned: true)
!401 = !DIEnumerator(name: "TV_IPA_LTO_GIMPLE_IO", value: 7, isUnsigned: true)
!402 = !DIEnumerator(name: "TV_IPA_LTO_DECL_IO", value: 8, isUnsigned: true)
!403 = !DIEnumerator(name: "TV_IPA_LTO_CGRAPH_IO", value: 9, isUnsigned: true)
!404 = !DIEnumerator(name: "TV_LTO", value: 10, isUnsigned: true)
!405 = !DIEnumerator(name: "TV_WHOPR_WPA", value: 11, isUnsigned: true)
!406 = !DIEnumerator(name: "TV_WHOPR_WPA_IO", value: 12, isUnsigned: true)
!407 = !DIEnumerator(name: "TV_WHOPR_LTRANS", value: 13, isUnsigned: true)
!408 = !DIEnumerator(name: "TV_WHOPR_WPA_FIXUP", value: 14, isUnsigned: true)
!409 = !DIEnumerator(name: "TV_WHOPR_WPA_LTRANS_EXEC", value: 15, isUnsigned: true)
!410 = !DIEnumerator(name: "TV_IPA_REFERENCE", value: 16, isUnsigned: true)
!411 = !DIEnumerator(name: "TV_IPA_PURE_CONST", value: 17, isUnsigned: true)
!412 = !DIEnumerator(name: "TV_IPA_TYPE_ESCAPE", value: 18, isUnsigned: true)
!413 = !DIEnumerator(name: "TV_IPA_PTA", value: 19, isUnsigned: true)
!414 = !DIEnumerator(name: "TV_IPA_SRA", value: 20, isUnsigned: true)
!415 = !DIEnumerator(name: "TV_IPA_FREE_LANG_DATA", value: 21, isUnsigned: true)
!416 = !DIEnumerator(name: "TV_CFG", value: 22, isUnsigned: true)
!417 = !DIEnumerator(name: "TV_CLEANUP_CFG", value: 23, isUnsigned: true)
!418 = !DIEnumerator(name: "TV_CFG_VERIFY", value: 24, isUnsigned: true)
!419 = !DIEnumerator(name: "TV_DELETE_TRIVIALLY_DEAD", value: 25, isUnsigned: true)
!420 = !DIEnumerator(name: "TV_LIFE", value: 26, isUnsigned: true)
!421 = !DIEnumerator(name: "TV_LIFE_UPDATE", value: 27, isUnsigned: true)
!422 = !DIEnumerator(name: "TV_DF_SCAN", value: 28, isUnsigned: true)
!423 = !DIEnumerator(name: "TV_DF_MD", value: 29, isUnsigned: true)
!424 = !DIEnumerator(name: "TV_DF_RD", value: 30, isUnsigned: true)
!425 = !DIEnumerator(name: "TV_DF_LR", value: 31, isUnsigned: true)
!426 = !DIEnumerator(name: "TV_DF_LIVE", value: 32, isUnsigned: true)
!427 = !DIEnumerator(name: "TV_DF_UREC", value: 33, isUnsigned: true)
!428 = !DIEnumerator(name: "TV_DF_CHAIN", value: 34, isUnsigned: true)
!429 = !DIEnumerator(name: "TV_DF_BYTE_LR", value: 35, isUnsigned: true)
!430 = !DIEnumerator(name: "TV_DF_NOTE", value: 36, isUnsigned: true)
!431 = !DIEnumerator(name: "TV_REG_STATS", value: 37, isUnsigned: true)
!432 = !DIEnumerator(name: "TV_ALIAS_ANALYSIS", value: 38, isUnsigned: true)
!433 = !DIEnumerator(name: "TV_ALIAS_STMT_WALK", value: 39, isUnsigned: true)
!434 = !DIEnumerator(name: "TV_REG_SCAN", value: 40, isUnsigned: true)
!435 = !DIEnumerator(name: "TV_REBUILD_JUMP", value: 41, isUnsigned: true)
!436 = !DIEnumerator(name: "TV_CPP", value: 42, isUnsigned: true)
!437 = !DIEnumerator(name: "TV_LEX", value: 43, isUnsigned: true)
!438 = !DIEnumerator(name: "TV_PARSE", value: 44, isUnsigned: true)
!439 = !DIEnumerator(name: "TV_NAME_LOOKUP", value: 45, isUnsigned: true)
!440 = !DIEnumerator(name: "TV_INLINE_HEURISTICS", value: 46, isUnsigned: true)
!441 = !DIEnumerator(name: "TV_INTEGRATION", value: 47, isUnsigned: true)
!442 = !DIEnumerator(name: "TV_TREE_GIMPLIFY", value: 48, isUnsigned: true)
!443 = !DIEnumerator(name: "TV_TREE_EH", value: 49, isUnsigned: true)
!444 = !DIEnumerator(name: "TV_TREE_CFG", value: 50, isUnsigned: true)
!445 = !DIEnumerator(name: "TV_TREE_CLEANUP_CFG", value: 51, isUnsigned: true)
!446 = !DIEnumerator(name: "TV_TREE_VRP", value: 52, isUnsigned: true)
!447 = !DIEnumerator(name: "TV_TREE_COPY_PROP", value: 53, isUnsigned: true)
!448 = !DIEnumerator(name: "TV_TREE_STORE_COPY_PROP", value: 54, isUnsigned: true)
!449 = !DIEnumerator(name: "TV_FIND_REFERENCED_VARS", value: 55, isUnsigned: true)
!450 = !DIEnumerator(name: "TV_TREE_PTA", value: 56, isUnsigned: true)
!451 = !DIEnumerator(name: "TV_TREE_INSERT_PHI_NODES", value: 57, isUnsigned: true)
!452 = !DIEnumerator(name: "TV_TREE_SSA_REWRITE_BLOCKS", value: 58, isUnsigned: true)
!453 = !DIEnumerator(name: "TV_TREE_SSA_OTHER", value: 59, isUnsigned: true)
!454 = !DIEnumerator(name: "TV_TREE_SSA_INCREMENTAL", value: 60, isUnsigned: true)
!455 = !DIEnumerator(name: "TV_TREE_OPS", value: 61, isUnsigned: true)
!456 = !DIEnumerator(name: "TV_TREE_SSA_DOMINATOR_OPTS", value: 62, isUnsigned: true)
!457 = !DIEnumerator(name: "TV_TREE_SRA", value: 63, isUnsigned: true)
!458 = !DIEnumerator(name: "TV_TREE_STORE_CCP", value: 64, isUnsigned: true)
!459 = !DIEnumerator(name: "TV_TREE_CCP", value: 65, isUnsigned: true)
!460 = !DIEnumerator(name: "TV_TREE_PHI_CPROP", value: 66, isUnsigned: true)
!461 = !DIEnumerator(name: "TV_TREE_SPLIT_EDGES", value: 67, isUnsigned: true)
!462 = !DIEnumerator(name: "TV_TREE_REASSOC", value: 68, isUnsigned: true)
!463 = !DIEnumerator(name: "TV_TREE_PRE", value: 69, isUnsigned: true)
!464 = !DIEnumerator(name: "TV_TREE_REDPHI", value: 70, isUnsigned: true)
!465 = !DIEnumerator(name: "TV_TREE_FRE", value: 71, isUnsigned: true)
!466 = !DIEnumerator(name: "TV_TREE_SINK", value: 72, isUnsigned: true)
!467 = !DIEnumerator(name: "TV_TREE_PHIOPT", value: 73, isUnsigned: true)
!468 = !DIEnumerator(name: "TV_TREE_FORWPROP", value: 74, isUnsigned: true)
!469 = !DIEnumerator(name: "TV_TREE_PHIPROP", value: 75, isUnsigned: true)
!470 = !DIEnumerator(name: "TV_TREE_DCE", value: 76, isUnsigned: true)
!471 = !DIEnumerator(name: "TV_TREE_CD_DCE", value: 77, isUnsigned: true)
!472 = !DIEnumerator(name: "TV_TREE_CALL_CDCE", value: 78, isUnsigned: true)
!473 = !DIEnumerator(name: "TV_TREE_DSE", value: 79, isUnsigned: true)
!474 = !DIEnumerator(name: "TV_TREE_MERGE_PHI", value: 80, isUnsigned: true)
!475 = !DIEnumerator(name: "TV_TREE_LOOP", value: 81, isUnsigned: true)
!476 = !DIEnumerator(name: "TV_TREE_LOOP_BOUNDS", value: 82, isUnsigned: true)
!477 = !DIEnumerator(name: "TV_LIM", value: 83, isUnsigned: true)
!478 = !DIEnumerator(name: "TV_TREE_LOOP_IVCANON", value: 84, isUnsigned: true)
!479 = !DIEnumerator(name: "TV_SCEV_CONST", value: 85, isUnsigned: true)
!480 = !DIEnumerator(name: "TV_TREE_LOOP_UNSWITCH", value: 86, isUnsigned: true)
!481 = !DIEnumerator(name: "TV_COMPLETE_UNROLL", value: 87, isUnsigned: true)
!482 = !DIEnumerator(name: "TV_TREE_PARALLELIZE_LOOPS", value: 88, isUnsigned: true)
!483 = !DIEnumerator(name: "TV_TREE_VECTORIZATION", value: 89, isUnsigned: true)
!484 = !DIEnumerator(name: "TV_TREE_SLP_VECTORIZATION", value: 90, isUnsigned: true)
!485 = !DIEnumerator(name: "TV_GRAPHITE_TRANSFORMS", value: 91, isUnsigned: true)
!486 = !DIEnumerator(name: "TV_GRAPHITE_DATA_DEPS", value: 92, isUnsigned: true)
!487 = !DIEnumerator(name: "TV_GRAPHITE_CODE_GEN", value: 93, isUnsigned: true)
!488 = !DIEnumerator(name: "TV_TREE_LINEAR_TRANSFORM", value: 94, isUnsigned: true)
!489 = !DIEnumerator(name: "TV_TREE_LOOP_DISTRIBUTION", value: 95, isUnsigned: true)
!490 = !DIEnumerator(name: "TV_CHECK_DATA_DEPS", value: 96, isUnsigned: true)
!491 = !DIEnumerator(name: "TV_TREE_PREFETCH", value: 97, isUnsigned: true)
!492 = !DIEnumerator(name: "TV_TREE_LOOP_IVOPTS", value: 98, isUnsigned: true)
!493 = !DIEnumerator(name: "TV_PREDCOM", value: 99, isUnsigned: true)
!494 = !DIEnumerator(name: "TV_TREE_LOOP_INIT", value: 100, isUnsigned: true)
!495 = !DIEnumerator(name: "TV_TREE_LOOP_FINI", value: 101, isUnsigned: true)
!496 = !DIEnumerator(name: "TV_TREE_CH", value: 102, isUnsigned: true)
!497 = !DIEnumerator(name: "TV_TREE_SSA_UNCPROP", value: 103, isUnsigned: true)
!498 = !DIEnumerator(name: "TV_TREE_SSA_TO_NORMAL", value: 104, isUnsigned: true)
!499 = !DIEnumerator(name: "TV_TREE_NRV", value: 105, isUnsigned: true)
!500 = !DIEnumerator(name: "TV_TREE_COPY_RENAME", value: 106, isUnsigned: true)
!501 = !DIEnumerator(name: "TV_TREE_SSA_VERIFY", value: 107, isUnsigned: true)
!502 = !DIEnumerator(name: "TV_TREE_STMT_VERIFY", value: 108, isUnsigned: true)
!503 = !DIEnumerator(name: "TV_TREE_SWITCH_CONVERSION", value: 109, isUnsigned: true)
!504 = !DIEnumerator(name: "TV_CGRAPH_VERIFY", value: 110, isUnsigned: true)
!505 = !DIEnumerator(name: "TV_DOM_FRONTIERS", value: 111, isUnsigned: true)
!506 = !DIEnumerator(name: "TV_DOMINANCE", value: 112, isUnsigned: true)
!507 = !DIEnumerator(name: "TV_CONTROL_DEPENDENCES", value: 113, isUnsigned: true)
!508 = !DIEnumerator(name: "TV_OVERLOAD", value: 114, isUnsigned: true)
!509 = !DIEnumerator(name: "TV_TEMPLATE_INSTANTIATION", value: 115, isUnsigned: true)
!510 = !DIEnumerator(name: "TV_EXPAND", value: 116, isUnsigned: true)
!511 = !DIEnumerator(name: "TV_VARCONST", value: 117, isUnsigned: true)
!512 = !DIEnumerator(name: "TV_LOWER_SUBREG", value: 118, isUnsigned: true)
!513 = !DIEnumerator(name: "TV_JUMP", value: 119, isUnsigned: true)
!514 = !DIEnumerator(name: "TV_FWPROP", value: 120, isUnsigned: true)
!515 = !DIEnumerator(name: "TV_CSE", value: 121, isUnsigned: true)
!516 = !DIEnumerator(name: "TV_DCE", value: 122, isUnsigned: true)
!517 = !DIEnumerator(name: "TV_DSE1", value: 123, isUnsigned: true)
!518 = !DIEnumerator(name: "TV_DSE2", value: 124, isUnsigned: true)
!519 = !DIEnumerator(name: "TV_LOOP", value: 125, isUnsigned: true)
!520 = !DIEnumerator(name: "TV_LOOP_MOVE_INVARIANTS", value: 126, isUnsigned: true)
!521 = !DIEnumerator(name: "TV_LOOP_UNSWITCH", value: 127, isUnsigned: true)
!522 = !DIEnumerator(name: "TV_LOOP_UNROLL", value: 128, isUnsigned: true)
!523 = !DIEnumerator(name: "TV_LOOP_DOLOOP", value: 129, isUnsigned: true)
!524 = !DIEnumerator(name: "TV_CPROP", value: 130, isUnsigned: true)
!525 = !DIEnumerator(name: "TV_PRE", value: 131, isUnsigned: true)
!526 = !DIEnumerator(name: "TV_HOIST", value: 132, isUnsigned: true)
!527 = !DIEnumerator(name: "TV_LSM", value: 133, isUnsigned: true)
!528 = !DIEnumerator(name: "TV_TRACER", value: 134, isUnsigned: true)
!529 = !DIEnumerator(name: "TV_WEB", value: 135, isUnsigned: true)
!530 = !DIEnumerator(name: "TV_AUTO_INC_DEC", value: 136, isUnsigned: true)
!531 = !DIEnumerator(name: "TV_CSE2", value: 137, isUnsigned: true)
!532 = !DIEnumerator(name: "TV_BRANCH_PROB", value: 138, isUnsigned: true)
!533 = !DIEnumerator(name: "TV_VPT", value: 139, isUnsigned: true)
!534 = !DIEnumerator(name: "TV_COMBINE", value: 140, isUnsigned: true)
!535 = !DIEnumerator(name: "TV_IFCVT", value: 141, isUnsigned: true)
!536 = !DIEnumerator(name: "TV_REGMOVE", value: 142, isUnsigned: true)
!537 = !DIEnumerator(name: "TV_MODE_SWITCH", value: 143, isUnsigned: true)
!538 = !DIEnumerator(name: "TV_SMS", value: 144, isUnsigned: true)
!539 = !DIEnumerator(name: "TV_SCHED", value: 145, isUnsigned: true)
!540 = !DIEnumerator(name: "TV_LOCAL_ALLOC", value: 146, isUnsigned: true)
!541 = !DIEnumerator(name: "TV_GLOBAL_ALLOC", value: 147, isUnsigned: true)
!542 = !DIEnumerator(name: "TV_IRA", value: 148, isUnsigned: true)
!543 = !DIEnumerator(name: "TV_RELOAD", value: 149, isUnsigned: true)
!544 = !DIEnumerator(name: "TV_RELOAD_CSE_REGS", value: 150, isUnsigned: true)
!545 = !DIEnumerator(name: "TV_SEQABSTR", value: 151, isUnsigned: true)
!546 = !DIEnumerator(name: "TV_GCSE_AFTER_RELOAD", value: 152, isUnsigned: true)
!547 = !DIEnumerator(name: "TV_THREAD_PROLOGUE_AND_EPILOGUE", value: 153, isUnsigned: true)
!548 = !DIEnumerator(name: "TV_IFCVT2", value: 154, isUnsigned: true)
!549 = !DIEnumerator(name: "TV_COMBINE_STACK_ADJUST", value: 155, isUnsigned: true)
!550 = !DIEnumerator(name: "TV_PEEPHOLE2", value: 156, isUnsigned: true)
!551 = !DIEnumerator(name: "TV_RENAME_REGISTERS", value: 157, isUnsigned: true)
!552 = !DIEnumerator(name: "TV_CPROP_REGISTERS", value: 158, isUnsigned: true)
!553 = !DIEnumerator(name: "TV_SCHED2", value: 159, isUnsigned: true)
!554 = !DIEnumerator(name: "TV_MACH_DEP", value: 160, isUnsigned: true)
!555 = !DIEnumerator(name: "TV_DBR_SCHED", value: 161, isUnsigned: true)
!556 = !DIEnumerator(name: "TV_REORDER_BLOCKS", value: 162, isUnsigned: true)
!557 = !DIEnumerator(name: "TV_SHORTEN_BRANCH", value: 163, isUnsigned: true)
!558 = !DIEnumerator(name: "TV_REG_STACK", value: 164, isUnsigned: true)
!559 = !DIEnumerator(name: "TV_FINAL", value: 165, isUnsigned: true)
!560 = !DIEnumerator(name: "TV_SYMOUT", value: 166, isUnsigned: true)
!561 = !DIEnumerator(name: "TV_VAR_TRACKING", value: 167, isUnsigned: true)
!562 = !DIEnumerator(name: "TV_TREE_IFCOMBINE", value: 168, isUnsigned: true)
!563 = !DIEnumerator(name: "TV_PLUGIN_INIT", value: 169, isUnsigned: true)
!564 = !DIEnumerator(name: "TV_PLUGIN_RUN", value: 170, isUnsigned: true)
!565 = !DIEnumerator(name: "TV_REST_OF_COMPILATION", value: 171, isUnsigned: true)
!566 = !DIEnumerator(name: "TIMEVAR_LAST", value: 172, isUnsigned: true)
!567 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rtx_code", file: !568, line: 45, baseType: !7, size: 32, elements: !569)
!568 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!569 = !{!570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709}
!570 = !DIEnumerator(name: "UNKNOWN", value: 0, isUnsigned: true)
!571 = !DIEnumerator(name: "VALUE", value: 1, isUnsigned: true)
!572 = !DIEnumerator(name: "DEBUG_EXPR", value: 2, isUnsigned: true)
!573 = !DIEnumerator(name: "EXPR_LIST", value: 3, isUnsigned: true)
!574 = !DIEnumerator(name: "INSN_LIST", value: 4, isUnsigned: true)
!575 = !DIEnumerator(name: "SEQUENCE", value: 5, isUnsigned: true)
!576 = !DIEnumerator(name: "ADDRESS", value: 6, isUnsigned: true)
!577 = !DIEnumerator(name: "DEBUG_INSN", value: 7, isUnsigned: true)
!578 = !DIEnumerator(name: "INSN", value: 8, isUnsigned: true)
!579 = !DIEnumerator(name: "JUMP_INSN", value: 9, isUnsigned: true)
!580 = !DIEnumerator(name: "CALL_INSN", value: 10, isUnsigned: true)
!581 = !DIEnumerator(name: "BARRIER", value: 11, isUnsigned: true)
!582 = !DIEnumerator(name: "CODE_LABEL", value: 12, isUnsigned: true)
!583 = !DIEnumerator(name: "NOTE", value: 13, isUnsigned: true)
!584 = !DIEnumerator(name: "COND_EXEC", value: 14, isUnsigned: true)
!585 = !DIEnumerator(name: "PARALLEL", value: 15, isUnsigned: true)
!586 = !DIEnumerator(name: "ASM_INPUT", value: 16, isUnsigned: true)
!587 = !DIEnumerator(name: "ASM_OPERANDS", value: 17, isUnsigned: true)
!588 = !DIEnumerator(name: "UNSPEC", value: 18, isUnsigned: true)
!589 = !DIEnumerator(name: "UNSPEC_VOLATILE", value: 19, isUnsigned: true)
!590 = !DIEnumerator(name: "ADDR_VEC", value: 20, isUnsigned: true)
!591 = !DIEnumerator(name: "ADDR_DIFF_VEC", value: 21, isUnsigned: true)
!592 = !DIEnumerator(name: "PREFETCH", value: 22, isUnsigned: true)
!593 = !DIEnumerator(name: "SET", value: 23, isUnsigned: true)
!594 = !DIEnumerator(name: "USE", value: 24, isUnsigned: true)
!595 = !DIEnumerator(name: "CLOBBER", value: 25, isUnsigned: true)
!596 = !DIEnumerator(name: "CALL", value: 26, isUnsigned: true)
!597 = !DIEnumerator(name: "RETURN", value: 27, isUnsigned: true)
!598 = !DIEnumerator(name: "EH_RETURN", value: 28, isUnsigned: true)
!599 = !DIEnumerator(name: "TRAP_IF", value: 29, isUnsigned: true)
!600 = !DIEnumerator(name: "CONST_INT", value: 30, isUnsigned: true)
!601 = !DIEnumerator(name: "CONST_FIXED", value: 31, isUnsigned: true)
!602 = !DIEnumerator(name: "CONST_DOUBLE", value: 32, isUnsigned: true)
!603 = !DIEnumerator(name: "CONST_VECTOR", value: 33, isUnsigned: true)
!604 = !DIEnumerator(name: "CONST_STRING", value: 34, isUnsigned: true)
!605 = !DIEnumerator(name: "CONST", value: 35, isUnsigned: true)
!606 = !DIEnumerator(name: "PC", value: 36, isUnsigned: true)
!607 = !DIEnumerator(name: "REG", value: 37, isUnsigned: true)
!608 = !DIEnumerator(name: "SCRATCH", value: 38, isUnsigned: true)
!609 = !DIEnumerator(name: "SUBREG", value: 39, isUnsigned: true)
!610 = !DIEnumerator(name: "STRICT_LOW_PART", value: 40, isUnsigned: true)
!611 = !DIEnumerator(name: "CONCAT", value: 41, isUnsigned: true)
!612 = !DIEnumerator(name: "CONCATN", value: 42, isUnsigned: true)
!613 = !DIEnumerator(name: "MEM", value: 43, isUnsigned: true)
!614 = !DIEnumerator(name: "LABEL_REF", value: 44, isUnsigned: true)
!615 = !DIEnumerator(name: "SYMBOL_REF", value: 45, isUnsigned: true)
!616 = !DIEnumerator(name: "CC0", value: 46, isUnsigned: true)
!617 = !DIEnumerator(name: "IF_THEN_ELSE", value: 47, isUnsigned: true)
!618 = !DIEnumerator(name: "COMPARE", value: 48, isUnsigned: true)
!619 = !DIEnumerator(name: "PLUS", value: 49, isUnsigned: true)
!620 = !DIEnumerator(name: "MINUS", value: 50, isUnsigned: true)
!621 = !DIEnumerator(name: "NEG", value: 51, isUnsigned: true)
!622 = !DIEnumerator(name: "MULT", value: 52, isUnsigned: true)
!623 = !DIEnumerator(name: "SS_MULT", value: 53, isUnsigned: true)
!624 = !DIEnumerator(name: "US_MULT", value: 54, isUnsigned: true)
!625 = !DIEnumerator(name: "DIV", value: 55, isUnsigned: true)
!626 = !DIEnumerator(name: "SS_DIV", value: 56, isUnsigned: true)
!627 = !DIEnumerator(name: "US_DIV", value: 57, isUnsigned: true)
!628 = !DIEnumerator(name: "MOD", value: 58, isUnsigned: true)
!629 = !DIEnumerator(name: "UDIV", value: 59, isUnsigned: true)
!630 = !DIEnumerator(name: "UMOD", value: 60, isUnsigned: true)
!631 = !DIEnumerator(name: "AND", value: 61, isUnsigned: true)
!632 = !DIEnumerator(name: "IOR", value: 62, isUnsigned: true)
!633 = !DIEnumerator(name: "XOR", value: 63, isUnsigned: true)
!634 = !DIEnumerator(name: "NOT", value: 64, isUnsigned: true)
!635 = !DIEnumerator(name: "ASHIFT", value: 65, isUnsigned: true)
!636 = !DIEnumerator(name: "ROTATE", value: 66, isUnsigned: true)
!637 = !DIEnumerator(name: "ASHIFTRT", value: 67, isUnsigned: true)
!638 = !DIEnumerator(name: "LSHIFTRT", value: 68, isUnsigned: true)
!639 = !DIEnumerator(name: "ROTATERT", value: 69, isUnsigned: true)
!640 = !DIEnumerator(name: "SMIN", value: 70, isUnsigned: true)
!641 = !DIEnumerator(name: "SMAX", value: 71, isUnsigned: true)
!642 = !DIEnumerator(name: "UMIN", value: 72, isUnsigned: true)
!643 = !DIEnumerator(name: "UMAX", value: 73, isUnsigned: true)
!644 = !DIEnumerator(name: "PRE_DEC", value: 74, isUnsigned: true)
!645 = !DIEnumerator(name: "PRE_INC", value: 75, isUnsigned: true)
!646 = !DIEnumerator(name: "POST_DEC", value: 76, isUnsigned: true)
!647 = !DIEnumerator(name: "POST_INC", value: 77, isUnsigned: true)
!648 = !DIEnumerator(name: "PRE_MODIFY", value: 78, isUnsigned: true)
!649 = !DIEnumerator(name: "POST_MODIFY", value: 79, isUnsigned: true)
!650 = !DIEnumerator(name: "NE", value: 80, isUnsigned: true)
!651 = !DIEnumerator(name: "EQ", value: 81, isUnsigned: true)
!652 = !DIEnumerator(name: "GE", value: 82, isUnsigned: true)
!653 = !DIEnumerator(name: "GT", value: 83, isUnsigned: true)
!654 = !DIEnumerator(name: "LE", value: 84, isUnsigned: true)
!655 = !DIEnumerator(name: "LT", value: 85, isUnsigned: true)
!656 = !DIEnumerator(name: "GEU", value: 86, isUnsigned: true)
!657 = !DIEnumerator(name: "GTU", value: 87, isUnsigned: true)
!658 = !DIEnumerator(name: "LEU", value: 88, isUnsigned: true)
!659 = !DIEnumerator(name: "LTU", value: 89, isUnsigned: true)
!660 = !DIEnumerator(name: "UNORDERED", value: 90, isUnsigned: true)
!661 = !DIEnumerator(name: "ORDERED", value: 91, isUnsigned: true)
!662 = !DIEnumerator(name: "UNEQ", value: 92, isUnsigned: true)
!663 = !DIEnumerator(name: "UNGE", value: 93, isUnsigned: true)
!664 = !DIEnumerator(name: "UNGT", value: 94, isUnsigned: true)
!665 = !DIEnumerator(name: "UNLE", value: 95, isUnsigned: true)
!666 = !DIEnumerator(name: "UNLT", value: 96, isUnsigned: true)
!667 = !DIEnumerator(name: "LTGT", value: 97, isUnsigned: true)
!668 = !DIEnumerator(name: "SIGN_EXTEND", value: 98, isUnsigned: true)
!669 = !DIEnumerator(name: "ZERO_EXTEND", value: 99, isUnsigned: true)
!670 = !DIEnumerator(name: "TRUNCATE", value: 100, isUnsigned: true)
!671 = !DIEnumerator(name: "FLOAT_EXTEND", value: 101, isUnsigned: true)
!672 = !DIEnumerator(name: "FLOAT_TRUNCATE", value: 102, isUnsigned: true)
!673 = !DIEnumerator(name: "FLOAT", value: 103, isUnsigned: true)
!674 = !DIEnumerator(name: "FIX", value: 104, isUnsigned: true)
!675 = !DIEnumerator(name: "UNSIGNED_FLOAT", value: 105, isUnsigned: true)
!676 = !DIEnumerator(name: "UNSIGNED_FIX", value: 106, isUnsigned: true)
!677 = !DIEnumerator(name: "FRACT_CONVERT", value: 107, isUnsigned: true)
!678 = !DIEnumerator(name: "UNSIGNED_FRACT_CONVERT", value: 108, isUnsigned: true)
!679 = !DIEnumerator(name: "SAT_FRACT", value: 109, isUnsigned: true)
!680 = !DIEnumerator(name: "UNSIGNED_SAT_FRACT", value: 110, isUnsigned: true)
!681 = !DIEnumerator(name: "ABS", value: 111, isUnsigned: true)
!682 = !DIEnumerator(name: "SQRT", value: 112, isUnsigned: true)
!683 = !DIEnumerator(name: "BSWAP", value: 113, isUnsigned: true)
!684 = !DIEnumerator(name: "FFS", value: 114, isUnsigned: true)
!685 = !DIEnumerator(name: "CLZ", value: 115, isUnsigned: true)
!686 = !DIEnumerator(name: "CTZ", value: 116, isUnsigned: true)
!687 = !DIEnumerator(name: "POPCOUNT", value: 117, isUnsigned: true)
!688 = !DIEnumerator(name: "PARITY", value: 118, isUnsigned: true)
!689 = !DIEnumerator(name: "SIGN_EXTRACT", value: 119, isUnsigned: true)
!690 = !DIEnumerator(name: "ZERO_EXTRACT", value: 120, isUnsigned: true)
!691 = !DIEnumerator(name: "HIGH", value: 121, isUnsigned: true)
!692 = !DIEnumerator(name: "LO_SUM", value: 122, isUnsigned: true)
!693 = !DIEnumerator(name: "VEC_MERGE", value: 123, isUnsigned: true)
!694 = !DIEnumerator(name: "VEC_SELECT", value: 124, isUnsigned: true)
!695 = !DIEnumerator(name: "VEC_CONCAT", value: 125, isUnsigned: true)
!696 = !DIEnumerator(name: "VEC_DUPLICATE", value: 126, isUnsigned: true)
!697 = !DIEnumerator(name: "SS_PLUS", value: 127, isUnsigned: true)
!698 = !DIEnumerator(name: "US_PLUS", value: 128, isUnsigned: true)
!699 = !DIEnumerator(name: "SS_MINUS", value: 129, isUnsigned: true)
!700 = !DIEnumerator(name: "SS_NEG", value: 130, isUnsigned: true)
!701 = !DIEnumerator(name: "US_NEG", value: 131, isUnsigned: true)
!702 = !DIEnumerator(name: "SS_ABS", value: 132, isUnsigned: true)
!703 = !DIEnumerator(name: "SS_ASHIFT", value: 133, isUnsigned: true)
!704 = !DIEnumerator(name: "US_ASHIFT", value: 134, isUnsigned: true)
!705 = !DIEnumerator(name: "US_MINUS", value: 135, isUnsigned: true)
!706 = !DIEnumerator(name: "SS_TRUNCATE", value: 136, isUnsigned: true)
!707 = !DIEnumerator(name: "US_TRUNCATE", value: 137, isUnsigned: true)
!708 = !DIEnumerator(name: "VAR_LOCATION", value: 138, isUnsigned: true)
!709 = !DIEnumerator(name: "LAST_AND_UNUSED_RTX_CODE", value: 139, isUnsigned: true)
!710 = !{!711, !712, !713, !714, !717, !718, !720, !190, !895, !1888, !1895, !5, !567, !1901, !1354}
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!713 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !716)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !721, line: 56, baseType: !722)
!721 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !158, line: 3371, size: 1792, elements: !724)
!724 = !{!725, !758, !764, !777, !796, !807, !812, !821, !827, !840, !852, !890, !1170, !1198, !1206, !1207, !1212, !1221, !1227, !1232, !1236, !1240, !1526, !1573, !1579, !1585, !1592, !1618, !1632, !1649, !1661, !1683, !1698, !1870}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !723, file: !158, line: 3372, baseType: !726, size: 64)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !158, line: 360, size: 64, elements: !727)
!727 = !{!728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !726, file: !158, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !726, file: !158, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !726, file: !158, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !726, file: !158, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !726, file: !158, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !726, file: !158, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !726, file: !158, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !726, file: !158, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !726, file: !158, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !726, file: !158, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !726, file: !158, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !726, file: !158, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !726, file: !158, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !726, file: !158, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !726, file: !158, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !726, file: !158, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !726, file: !158, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !726, file: !158, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !726, file: !158, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !726, file: !158, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !726, file: !158, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !726, file: !158, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !726, file: !158, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !726, file: !158, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !726, file: !158, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !726, file: !158, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !726, file: !158, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !726, file: !158, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !726, file: !158, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !726, file: !158, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !723, file: !158, line: 3373, baseType: !759, size: 192)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !158, line: 402, size: 192, elements: !760)
!760 = !{!761, !762, !763}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !759, file: !158, line: 403, baseType: !726, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !759, file: !158, line: 404, baseType: !720, size: 64, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !759, file: !158, line: 405, baseType: !720, size: 64, offset: 128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !723, file: !158, line: 3374, baseType: !765, size: 320)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !158, line: 1384, size: 320, elements: !766)
!766 = !{!767, !768}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !765, file: !158, line: 1385, baseType: !759, size: 192)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !765, file: !158, line: 1386, baseType: !769, size: 128, offset: 192)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !770, line: 58, baseType: !771)
!770 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !770, line: 54, size: 128, elements: !772)
!772 = !{!773, !775}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !771, file: !770, line: 56, baseType: !774, size: 64)
!774 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !771, file: !770, line: 57, baseType: !776, size: 64, offset: 64)
!776 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !723, file: !158, line: 3375, baseType: !778, size: 256)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !158, line: 1397, size: 256, elements: !779)
!779 = !{!780, !781}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !778, file: !158, line: 1398, baseType: !759, size: 192)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !778, file: !158, line: 1399, baseType: !782, size: 64, offset: 192)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !784, line: 52, size: 256, elements: !785)
!784 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!785 = !{!786, !787, !788, !789, !790, !791, !792}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !783, file: !784, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !783, file: !784, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !783, file: !784, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !783, file: !784, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !783, file: !784, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !783, file: !784, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !783, file: !784, line: 62, baseType: !793, size: 192, offset: 64)
!793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !774, size: 192, elements: !794)
!794 = !{!795}
!795 = !DISubrange(count: 3)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !723, file: !158, line: 3376, baseType: !797, size: 256)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !158, line: 1408, size: 256, elements: !798)
!798 = !{!799, !800}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !797, file: !158, line: 1409, baseType: !759, size: 192)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !797, file: !158, line: 1410, baseType: !801, size: 64, offset: 192)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !803, line: 27, size: 192, elements: !804)
!803 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!804 = !{!805, !806}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !802, file: !803, line: 29, baseType: !769, size: 128)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !802, file: !803, line: 30, baseType: !5, size: 32, offset: 128)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !723, file: !158, line: 3377, baseType: !808, size: 256)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !158, line: 1437, size: 256, elements: !809)
!809 = !{!810, !811}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !808, file: !158, line: 1438, baseType: !759, size: 192)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !808, file: !158, line: 1439, baseType: !720, size: 64, offset: 192)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !723, file: !158, line: 3378, baseType: !813, size: 256)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !158, line: 1418, size: 256, elements: !814)
!814 = !{!815, !816, !817}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !813, file: !158, line: 1419, baseType: !759, size: 192)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !813, file: !158, line: 1420, baseType: !713, size: 32, offset: 192)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !813, file: !158, line: 1421, baseType: !818, size: 8, offset: 224)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !716, size: 8, elements: !819)
!819 = !{!820}
!820 = !DISubrange(count: 1)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !723, file: !158, line: 3379, baseType: !822, size: 320)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !158, line: 1428, size: 320, elements: !823)
!823 = !{!824, !825, !826}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !822, file: !158, line: 1429, baseType: !759, size: 192)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !822, file: !158, line: 1430, baseType: !720, size: 64, offset: 192)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !822, file: !158, line: 1431, baseType: !720, size: 64, offset: 256)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !723, file: !158, line: 3380, baseType: !828, size: 320)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !158, line: 1460, size: 320, elements: !829)
!829 = !{!830, !831}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !828, file: !158, line: 1461, baseType: !759, size: 192)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !828, file: !158, line: 1462, baseType: !832, size: 128, offset: 192)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !833, line: 31, size: 128, elements: !834)
!833 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!834 = !{!835, !838, !839}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !832, file: !833, line: 32, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !712)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !832, file: !833, line: 33, baseType: !7, size: 32, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !832, file: !833, line: 34, baseType: !7, size: 32, offset: 96)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !723, file: !158, line: 3381, baseType: !841, size: 384)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !158, line: 2507, size: 384, elements: !842)
!842 = !{!843, !844, !849, !850, !851}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !841, file: !158, line: 2508, baseType: !759, size: 192)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !841, file: !158, line: 2509, baseType: !845, size: 32, offset: 192)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !846, line: 58, baseType: !847)
!846 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !848, line: 44, baseType: !7)
!848 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!849 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !841, file: !158, line: 2510, baseType: !7, size: 32, offset: 224)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !841, file: !158, line: 2511, baseType: !720, size: 64, offset: 256)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !841, file: !158, line: 2512, baseType: !720, size: 64, offset: 320)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !723, file: !158, line: 3382, baseType: !853, size: 896)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !158, line: 2652, size: 896, elements: !854)
!854 = !{!855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !853, file: !158, line: 2653, baseType: !841, size: 384)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !853, file: !158, line: 2654, baseType: !720, size: 64, offset: 384)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !853, file: !158, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !853, file: !158, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !853, file: !158, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !853, file: !158, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !853, file: !158, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !853, file: !158, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !853, file: !158, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !853, file: !158, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !853, file: !158, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !853, file: !158, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !853, file: !158, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !853, file: !158, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !853, file: !158, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !853, file: !158, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !853, file: !158, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !853, file: !158, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !853, file: !158, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !853, file: !158, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !853, file: !158, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !853, file: !158, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !853, file: !158, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !853, file: !158, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !853, file: !158, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !853, file: !158, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !853, file: !158, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !853, file: !158, line: 2703, baseType: !7, size: 32, offset: 512)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !853, file: !158, line: 2705, baseType: !720, size: 64, offset: 576)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !853, file: !158, line: 2706, baseType: !720, size: 64, offset: 640)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !853, file: !158, line: 2707, baseType: !720, size: 64, offset: 704)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !853, file: !158, line: 2708, baseType: !720, size: 64, offset: 768)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !853, file: !158, line: 2711, baseType: !888, size: 64, offset: 832)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !158, line: 2711, flags: DIFlagFwdDecl)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !723, file: !158, line: 3383, baseType: !891, size: 960)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !158, line: 2756, size: 960, elements: !892)
!892 = !{!893, !894}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !891, file: !158, line: 2757, baseType: !853, size: 896)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !891, file: !158, line: 2758, baseType: !895, size: 64, offset: 896)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !721, line: 50, baseType: !896)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !568, line: 240, size: 384, elements: !898)
!898 = !{!899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !897, file: !568, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !897, file: !568, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !897, file: !568, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !897, file: !568, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !897, file: !568, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !897, file: !568, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !897, file: !568, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !897, file: !568, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !897, file: !568, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !897, file: !568, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !897, file: !568, line: 321, baseType: !910, size: 320, offset: 64)
!910 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !568, line: 315, size: 320, elements: !911)
!911 = !{!912, !1103, !1105, !1168, !1169}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !910, file: !568, line: 316, baseType: !913, size: 64)
!913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !914, size: 64, elements: !819)
!914 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !568, line: 183, baseType: !915)
!915 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !568, line: 166, size: 64, elements: !916)
!916 = !{!917, !918, !919, !920, !921, !929, !930, !942, !945, !1005, !1006, !1080, !1093, !1100}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !915, file: !568, line: 168, baseType: !713, size: 32)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !915, file: !568, line: 169, baseType: !7, size: 32)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !915, file: !568, line: 170, baseType: !718, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !915, file: !568, line: 171, baseType: !895, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !915, file: !568, line: 172, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !721, line: 53, baseType: !923)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !568, line: 359, size: 128, elements: !925)
!925 = !{!926, !927}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !924, file: !568, line: 360, baseType: !713, size: 32)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !924, file: !568, line: 361, baseType: !928, size: 64, offset: 64)
!928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !895, size: 64, elements: !819)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !915, file: !568, line: 173, baseType: !5, size: 32)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !915, file: !568, line: 174, baseType: !931, size: 32)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !568, line: 133, baseType: !932)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !568, line: 115, size: 32, elements: !933)
!933 = !{!934, !935, !936, !937, !938, !939, !940, !941}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !932, file: !568, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !932, file: !568, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !932, file: !568, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !932, file: !568, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !932, file: !568, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !932, file: !568, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !932, file: !568, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !932, file: !568, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !915, file: !568, line: 175, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !568, line: 175, flags: DIFlagFwdDecl)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !915, file: !568, line: 176, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !948, line: 75, size: 256, elements: !949)
!948 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!949 = !{!950, !964, !965, !966}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !947, file: !948, line: 76, baseType: !951, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !948, line: 68, baseType: !953)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !948, line: 63, size: 320, elements: !954)
!954 = !{!955, !957, !958, !959}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !953, file: !948, line: 64, baseType: !956, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !953, file: !948, line: 65, baseType: !956, size: 64, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !953, file: !948, line: 66, baseType: !7, size: 32, offset: 128)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !953, file: !948, line: 67, baseType: !960, size: 128, offset: 192)
!960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !961, size: 128, elements: !962)
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !948, line: 29, baseType: !774)
!962 = !{!963}
!963 = !DISubrange(count: 2)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !947, file: !948, line: 77, baseType: !951, size: 64, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !947, file: !948, line: 78, baseType: !7, size: 32, offset: 128)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !947, file: !948, line: 79, baseType: !967, size: 64, offset: 192)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !948, line: 49, baseType: !969)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !948, line: 45, size: 832, elements: !970)
!970 = !{!971, !972, !973}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !969, file: !948, line: 46, baseType: !956, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !969, file: !948, line: 47, baseType: !946, size: 64, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !969, file: !948, line: 48, baseType: !974, size: 704, offset: 128)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !975, line: 164, size: 704, elements: !976)
!975 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!976 = !{!977, !978, !988, !989, !990, !991, !992, !993, !997, !1001, !1002, !1003, !1004}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !974, file: !975, line: 166, baseType: !776, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !974, file: !975, line: 167, baseType: !979, size: 64, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !975, line: 157, size: 192, elements: !981)
!981 = !{!982, !983, !984}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !980, file: !975, line: 159, baseType: !715, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !980, file: !975, line: 160, baseType: !979, size: 64, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !980, file: !975, line: 161, baseType: !985, size: 32, offset: 128)
!985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !716, size: 32, elements: !986)
!986 = !{!987}
!987 = !DISubrange(count: 4)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !974, file: !975, line: 168, baseType: !715, size: 64, offset: 128)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !974, file: !975, line: 169, baseType: !715, size: 64, offset: 192)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !974, file: !975, line: 170, baseType: !715, size: 64, offset: 256)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !974, file: !975, line: 171, baseType: !776, size: 64, offset: 320)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !974, file: !975, line: 172, baseType: !713, size: 32, offset: 384)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !974, file: !975, line: 176, baseType: !994, size: 64, offset: 448)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DISubroutineType(types: !996)
!996 = !{!979, !717, !776}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !974, file: !975, line: 177, baseType: !998, size: 64, offset: 512)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DISubroutineType(types: !1000)
!1000 = !{null, !717, !979}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !974, file: !975, line: 178, baseType: !717, size: 64, offset: 576)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !974, file: !975, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !974, file: !975, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !974, file: !975, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !915, file: !568, line: 177, baseType: !720, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !915, file: !568, line: 178, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !142, line: 217, size: 832, elements: !1009)
!1009 = !{!1010, !1045, !1046, !1047, !1050, !1054, !1055, !1056, !1074, !1075, !1076, !1077, !1078, !1079}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !1008, file: !142, line: 219, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !142, line: 151, baseType: !1013)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !142, line: 151, size: 128, elements: !1014)
!1014 = !{!1015}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1013, file: !142, line: 151, baseType: !1016, size: 128)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !142, line: 150, baseType: !1017)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !142, line: 150, size: 128, elements: !1018)
!1018 = !{!1019, !1020, !1021}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1017, file: !142, line: 150, baseType: !7, size: 32)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1017, file: !142, line: 150, baseType: !7, size: 32, offset: 32)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1017, file: !142, line: 150, baseType: !1022, size: 64, offset: 64)
!1022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1023, size: 64, elements: !819)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !721, line: 108, baseType: !1024)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !142, line: 122, size: 512, elements: !1026)
!1026 = !{!1027, !1028, !1029, !1037, !1038, !1039, !1040, !1041, !1042, !1043}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1025, file: !142, line: 124, baseType: !1007, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !1025, file: !142, line: 125, baseType: !1007, size: 64, offset: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !1025, file: !142, line: 131, baseType: !1030, size: 64, offset: 128)
!1030 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !142, line: 128, size: 64, elements: !1031)
!1031 = !{!1032, !1036}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1030, file: !142, line: 129, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !721, line: 66, baseType: !1034)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !721, line: 65, flags: DIFlagFwdDecl)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1030, file: !142, line: 130, baseType: !895, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1025, file: !142, line: 134, baseType: !717, size: 64, offset: 192)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !1025, file: !142, line: 137, baseType: !720, size: 64, offset: 256)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !1025, file: !142, line: 138, baseType: !845, size: 32, offset: 320)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !1025, file: !142, line: 142, baseType: !7, size: 32, offset: 352)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1025, file: !142, line: 144, baseType: !713, size: 32, offset: 384)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !1025, file: !142, line: 145, baseType: !713, size: 32, offset: 416)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1025, file: !142, line: 146, baseType: !1044, size: 64, offset: 448)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !142, line: 119, baseType: !776)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !1008, file: !142, line: 220, baseType: !1011, size: 64, offset: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1008, file: !142, line: 223, baseType: !717, size: 64, offset: 128)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !1008, file: !142, line: 226, baseType: !1048, size: 64, offset: 192)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !142, line: 185, flags: DIFlagFwdDecl)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !1008, file: !142, line: 229, baseType: !1051, size: 128, offset: 256)
!1051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1052, size: 128, elements: !962)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !142, line: 229, flags: DIFlagFwdDecl)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !1008, file: !142, line: 232, baseType: !1007, size: 64, offset: 384)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !1008, file: !142, line: 233, baseType: !1007, size: 64, offset: 448)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !1008, file: !142, line: 238, baseType: !1057, size: 64, offset: 512)
!1057 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !142, line: 235, size: 64, elements: !1058)
!1058 = !{!1059, !1065}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1057, file: !142, line: 236, baseType: !1060, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !142, line: 273, size: 128, elements: !1062)
!1062 = !{!1063, !1064}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1061, file: !142, line: 275, baseType: !1033, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1061, file: !142, line: 278, baseType: !1033, size: 64, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1057, file: !142, line: 237, baseType: !1066, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !142, line: 259, size: 320, elements: !1068)
!1068 = !{!1069, !1070, !1071, !1072, !1073}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1067, file: !142, line: 261, baseType: !895, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1067, file: !142, line: 262, baseType: !895, size: 64, offset: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1067, file: !142, line: 266, baseType: !895, size: 64, offset: 128)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1067, file: !142, line: 267, baseType: !895, size: 64, offset: 192)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1067, file: !142, line: 270, baseType: !713, size: 32, offset: 256)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1008, file: !142, line: 241, baseType: !1044, size: 64, offset: 576)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1008, file: !142, line: 244, baseType: !713, size: 32, offset: 640)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !1008, file: !142, line: 247, baseType: !713, size: 32, offset: 672)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !1008, file: !142, line: 250, baseType: !713, size: 32, offset: 704)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !1008, file: !142, line: 253, baseType: !713, size: 32, offset: 736)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1008, file: !142, line: 256, baseType: !713, size: 32, offset: 768)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !915, file: !568, line: 179, baseType: !1081, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !568, line: 150, baseType: !1083)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !568, line: 142, size: 320, elements: !1084)
!1084 = !{!1085, !1086, !1087, !1088, !1091, !1092}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1083, file: !568, line: 144, baseType: !720, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1083, file: !568, line: 145, baseType: !895, size: 64, offset: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1083, file: !568, line: 146, baseType: !895, size: 64, offset: 128)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1083, file: !568, line: 147, baseType: !1089, size: 32, offset: 192)
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1090, line: 31, baseType: !713)
!1090 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1083, file: !568, line: 148, baseType: !7, size: 32, offset: 224)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1083, file: !568, line: 149, baseType: !712, size: 8, offset: 256)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !915, file: !568, line: 180, baseType: !1094, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !568, line: 162, baseType: !1096)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !568, line: 159, size: 128, elements: !1097)
!1097 = !{!1098, !1099}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1096, file: !568, line: 160, baseType: !720, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1096, file: !568, line: 161, baseType: !776, size: 64, offset: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !915, file: !568, line: 181, baseType: !1101, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !568, line: 181, flags: DIFlagFwdDecl)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !910, file: !568, line: 317, baseType: !1104, size: 64)
!1104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !776, size: 64, elements: !819)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !910, file: !568, line: 318, baseType: !1106, size: 320)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !568, line: 188, size: 320, elements: !1107)
!1107 = !{!1108, !1110, !1167}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1106, file: !568, line: 190, baseType: !1109, size: 192)
!1109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !914, size: 192, elements: !794)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1106, file: !568, line: 193, baseType: !1111, size: 64, offset: 192)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !568, line: 206, size: 320, elements: !1113)
!1113 = !{!1114, !1152, !1153, !1154, !1166}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1112, file: !568, line: 208, baseType: !1115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !721, line: 62, baseType: !1117)
!1117 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1118, line: 538, size: 256, elements: !1119)
!1118 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1119 = !{!1120, !1124, !1130, !1143}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1117, file: !1118, line: 539, baseType: !1121, size: 32)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1118, line: 482, size: 32, elements: !1122)
!1122 = !{!1123}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1121, file: !1118, line: 484, baseType: !7, size: 32)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1117, file: !1118, line: 540, baseType: !1125, size: 192)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1118, line: 488, size: 192, elements: !1126)
!1126 = !{!1127, !1128, !1129}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1125, file: !1118, line: 489, baseType: !1121, size: 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1125, file: !1118, line: 492, baseType: !718, size: 64, offset: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1125, file: !1118, line: 496, baseType: !720, size: 64, offset: 128)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1117, file: !1118, line: 541, baseType: !1131, size: 256)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1118, line: 504, size: 256, elements: !1132)
!1132 = !{!1133, !1134, !1141, !1142}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1131, file: !1118, line: 505, baseType: !1121, size: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1131, file: !1118, line: 509, baseType: !1135, size: 64, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1118, line: 501, baseType: !1136)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{null, !1139}
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1131, file: !1118, line: 510, baseType: !1139, size: 64, offset: 128)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1131, file: !1118, line: 513, baseType: !1115, size: 64, offset: 192)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1117, file: !1118, line: 542, baseType: !1144, size: 128)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1118, line: 530, size: 128, elements: !1145)
!1145 = !{!1146, !1147}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1144, file: !1118, line: 531, baseType: !1121, size: 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1144, file: !1118, line: 534, baseType: !1148, size: 64, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1118, line: 525, baseType: !1149)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!712, !720, !718, !774, !774}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1112, file: !568, line: 211, baseType: !7, size: 32, offset: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1112, file: !568, line: 214, baseType: !776, size: 64, offset: 128)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1112, file: !568, line: 224, baseType: !1155, size: 64, offset: 192)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !568, line: 202, baseType: !1157)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !568, line: 202, size: 128, elements: !1158)
!1158 = !{!1159}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1157, file: !568, line: 202, baseType: !1160, size: 128)
!1160 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !568, line: 200, baseType: !1161)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !568, line: 200, size: 128, elements: !1162)
!1162 = !{!1163, !1164, !1165}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1161, file: !568, line: 200, baseType: !7, size: 32)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1161, file: !568, line: 200, baseType: !7, size: 32, offset: 32)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1161, file: !568, line: 200, baseType: !928, size: 64, offset: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1112, file: !568, line: 234, baseType: !1155, size: 64, offset: 256)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1106, file: !568, line: 197, baseType: !776, size: 64, offset: 256)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !910, file: !568, line: 319, baseType: !783, size: 256)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !910, file: !568, line: 320, baseType: !802, size: 192)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !723, file: !158, line: 3384, baseType: !1171, size: 1472)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !158, line: 3114, size: 1472, elements: !1172)
!1172 = !{!1173, !1194, !1195, !1196, !1197}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1171, file: !158, line: 3115, baseType: !1174, size: 1216)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !158, line: 2984, size: 1216, elements: !1175)
!1175 = !{!1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1174, file: !158, line: 2985, baseType: !891, size: 960)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1174, file: !158, line: 2986, baseType: !720, size: 64, offset: 960)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1174, file: !158, line: 2987, baseType: !720, size: 64, offset: 1024)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1174, file: !158, line: 2988, baseType: !720, size: 64, offset: 1088)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1174, file: !158, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1174, file: !158, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1174, file: !158, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1174, file: !158, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1174, file: !158, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1174, file: !158, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1174, file: !158, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1174, file: !158, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1174, file: !158, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1174, file: !158, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1174, file: !158, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1174, file: !158, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1174, file: !158, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1174, file: !158, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1171, file: !158, line: 3117, baseType: !720, size: 64, offset: 1216)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1171, file: !158, line: 3119, baseType: !720, size: 64, offset: 1280)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1171, file: !158, line: 3121, baseType: !720, size: 64, offset: 1344)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1171, file: !158, line: 3123, baseType: !720, size: 64, offset: 1408)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !723, file: !158, line: 3385, baseType: !1199, size: 1088)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !158, line: 2874, size: 1088, elements: !1200)
!1200 = !{!1201, !1202, !1203}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1199, file: !158, line: 2875, baseType: !891, size: 960)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1199, file: !158, line: 2876, baseType: !895, size: 64, offset: 960)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1199, file: !158, line: 2877, baseType: !1204, size: 64, offset: 1024)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !158, line: 2856, flags: DIFlagFwdDecl)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !723, file: !158, line: 3386, baseType: !1174, size: 1216)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !723, file: !158, line: 3387, baseType: !1208, size: 1280)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !158, line: 3093, size: 1280, elements: !1209)
!1209 = !{!1210, !1211}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1208, file: !158, line: 3094, baseType: !1174, size: 1216)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1208, file: !158, line: 3095, baseType: !1204, size: 64, offset: 1216)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !723, file: !158, line: 3388, baseType: !1213, size: 1216)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !158, line: 2824, size: 1216, elements: !1214)
!1214 = !{!1215, !1216, !1217, !1218, !1219, !1220}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1213, file: !158, line: 2825, baseType: !853, size: 896)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1213, file: !158, line: 2827, baseType: !720, size: 64, offset: 896)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1213, file: !158, line: 2828, baseType: !720, size: 64, offset: 960)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1213, file: !158, line: 2829, baseType: !720, size: 64, offset: 1024)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1213, file: !158, line: 2830, baseType: !720, size: 64, offset: 1088)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1213, file: !158, line: 2831, baseType: !720, size: 64, offset: 1152)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !723, file: !158, line: 3389, baseType: !1222, size: 1024)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !158, line: 2850, size: 1024, elements: !1223)
!1223 = !{!1224, !1225, !1226}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1222, file: !158, line: 2851, baseType: !891, size: 960)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1222, file: !158, line: 2852, baseType: !713, size: 32, offset: 960)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1222, file: !158, line: 2853, baseType: !713, size: 32, offset: 992)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !723, file: !158, line: 3390, baseType: !1228, size: 1024)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !158, line: 2857, size: 1024, elements: !1229)
!1229 = !{!1230, !1231}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1228, file: !158, line: 2858, baseType: !891, size: 960)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1228, file: !158, line: 2859, baseType: !1204, size: 64, offset: 960)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !723, file: !158, line: 3391, baseType: !1233, size: 960)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !158, line: 2862, size: 960, elements: !1234)
!1234 = !{!1235}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1233, file: !158, line: 2863, baseType: !891, size: 960)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !723, file: !158, line: 3392, baseType: !1237, size: 1472)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !158, line: 3304, size: 1472, elements: !1238)
!1238 = !{!1239}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1237, file: !158, line: 3305, baseType: !1171, size: 1472)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !723, file: !158, line: 3393, baseType: !1241, size: 1792)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !158, line: 3248, size: 1792, elements: !1242)
!1242 = !{!1243, !1244, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1241, file: !158, line: 3249, baseType: !1171, size: 1472)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1241, file: !158, line: 3251, baseType: !1245, size: 64, offset: 1472)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1247, line: 463, size: 1152, elements: !1248)
!1247 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1248 = !{!1249, !1411, !1442, !1443, !1446, !1449, !1450, !1451, !1452, !1453, !1454, !1478, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1246, file: !1247, line: 464, baseType: !1250, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !135, line: 194, size: 384, elements: !1252)
!1252 = !{!1253, !1302, !1315, !1329, !1379, !1392}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "region_tree", scope: !1251, file: !135, line: 197, baseType: !1254, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_region", file: !135, line: 182, baseType: !1255)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_d", file: !135, line: 116, size: 704, elements: !1257)
!1257 = !{!1258, !1259, !1260, !1261, !1262, !1263, !1290, !1299, !1300, !1301}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "outer", scope: !1256, file: !135, line: 119, baseType: !1255, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1256, file: !135, line: 122, baseType: !1255, size: 64, offset: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "next_peer", scope: !1256, file: !135, line: 123, baseType: !1255, size: 64, offset: 128)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1256, file: !135, line: 126, baseType: !713, size: 32, offset: 192)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1256, file: !135, line: 129, baseType: !134, size: 32, offset: 224)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1256, file: !135, line: 165, baseType: !1264, size: 192, offset: 256)
!1264 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_region_u", file: !135, line: 132, size: 192, elements: !1265)
!1265 = !{!1266, !1279, !1285}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "eh_try", scope: !1264, file: !135, line: 137, baseType: !1267, size: 128)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_try", file: !135, line: 133, size: 128, elements: !1268)
!1268 = !{!1269, !1278}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "first_catch", scope: !1267, file: !135, line: 135, baseType: !1270, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_catch_d", file: !135, line: 93, size: 320, elements: !1272)
!1272 = !{!1273, !1274, !1275, !1276, !1277}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "next_catch", scope: !1271, file: !135, line: 96, baseType: !1270, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "prev_catch", scope: !1271, file: !135, line: 97, baseType: !1270, size: 64, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1271, file: !135, line: 101, baseType: !720, size: 64, offset: 128)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "filter_list", scope: !1271, file: !135, line: 106, baseType: !720, size: 64, offset: 192)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1271, file: !135, line: 111, baseType: !720, size: 64, offset: 256)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "last_catch", scope: !1267, file: !135, line: 136, baseType: !1270, size: 64, offset: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !1264, file: !135, line: 151, baseType: !1280, size: 192)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_allowed", file: !135, line: 139, size: 192, elements: !1281)
!1281 = !{!1282, !1283, !1284}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1280, file: !135, line: 141, baseType: !720, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1280, file: !135, line: 145, baseType: !720, size: 64, offset: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1280, file: !135, line: 150, baseType: !713, size: 32, offset: 128)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "must_not_throw", scope: !1264, file: !135, line: 164, baseType: !1286, size: 128)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_must_not_throw", file: !135, line: 153, size: 128, elements: !1287)
!1287 = !{!1288, !1289}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "failure_decl", scope: !1286, file: !135, line: 161, baseType: !720, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "failure_loc", scope: !1286, file: !135, line: 163, baseType: !845, size: 32, offset: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pads", scope: !1256, file: !135, line: 168, baseType: !1291, size: 64, offset: 448)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_landing_pad_d", file: !135, line: 67, size: 320, elements: !1293)
!1293 = !{!1294, !1295, !1296, !1297, !1298}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "next_lp", scope: !1292, file: !135, line: 70, baseType: !1291, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1292, file: !135, line: 73, baseType: !1255, size: 64, offset: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "post_landing_pad", scope: !1292, file: !135, line: 78, baseType: !720, size: 64, offset: 128)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pad", scope: !1292, file: !135, line: 85, baseType: !895, size: 64, offset: 192)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1292, file: !135, line: 88, baseType: !713, size: 32, offset: 256)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "exc_ptr_reg", scope: !1256, file: !135, line: 173, baseType: !895, size: 64, offset: 512)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "filter_reg", scope: !1256, file: !135, line: 173, baseType: !895, size: 64, offset: 576)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "use_cxa_end_cleanup", scope: !1256, file: !135, line: 177, baseType: !712, size: 8, offset: 640)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "region_array", scope: !1251, file: !135, line: 200, baseType: !1303, size: 64, offset: 64)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_gc", file: !135, line: 185, baseType: !1305)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_gc", file: !135, line: 185, size: 128, elements: !1306)
!1306 = !{!1307}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1305, file: !135, line: 185, baseType: !1308, size: 128)
!1308 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_base", file: !135, line: 184, baseType: !1309)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_base", file: !135, line: 184, size: 128, elements: !1310)
!1310 = !{!1311, !1312, !1313}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1309, file: !135, line: 184, baseType: !7, size: 32)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1309, file: !135, line: 184, baseType: !7, size: 32, offset: 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1309, file: !135, line: 184, baseType: !1314, size: 64, offset: 64)
!1314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1254, size: 64, elements: !819)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "lp_array", scope: !1251, file: !135, line: 203, baseType: !1316, size: 64, offset: 128)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_gc", file: !135, line: 189, baseType: !1318)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_gc", file: !135, line: 189, size: 128, elements: !1319)
!1319 = !{!1320}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1318, file: !135, line: 189, baseType: !1321, size: 128)
!1321 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_base", file: !135, line: 188, baseType: !1322)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_base", file: !135, line: 188, size: 128, elements: !1323)
!1323 = !{!1324, !1325, !1326}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1322, file: !135, line: 188, baseType: !7, size: 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1322, file: !135, line: 188, baseType: !7, size: 32, offset: 32)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1322, file: !135, line: 188, baseType: !1327, size: 64, offset: 64)
!1327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1328, size: 64, elements: !819)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_landing_pad", file: !135, line: 180, baseType: !1291)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "throw_stmt_table", scope: !1251, file: !135, line: 207, baseType: !1330, size: 64, offset: 192)
!1330 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1331, line: 144, baseType: !1332)
!1331 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1331, line: 100, size: 896, elements: !1334)
!1334 = !{!1335, !1341, !1346, !1351, !1353, !1356, !1357, !1358, !1359, !1360, !1365, !1367, !1368, !1373, !1378}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1333, file: !1331, line: 102, baseType: !1336, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1331, line: 52, baseType: !1337)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!1340, !1139}
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1331, line: 47, baseType: !7)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1333, file: !1331, line: 105, baseType: !1342, size: 64, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1331, line: 59, baseType: !1343)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!713, !1139, !1139}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1333, file: !1331, line: 108, baseType: !1347, size: 64, offset: 128)
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1331, line: 63, baseType: !1348)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{null, !717}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1333, file: !1331, line: 111, baseType: !1352, size: 64, offset: 192)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1333, file: !1331, line: 114, baseType: !1354, size: 64, offset: 256)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1355, line: 46, baseType: !774)
!1355 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1333, file: !1331, line: 117, baseType: !1354, size: 64, offset: 320)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1333, file: !1331, line: 120, baseType: !1354, size: 64, offset: 384)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1333, file: !1331, line: 124, baseType: !7, size: 32, offset: 448)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1333, file: !1331, line: 128, baseType: !7, size: 32, offset: 480)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1333, file: !1331, line: 131, baseType: !1361, size: 64, offset: 512)
!1361 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1331, line: 75, baseType: !1362)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!717, !1354, !1354}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1333, file: !1331, line: 132, baseType: !1366, size: 64, offset: 576)
!1366 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1331, line: 78, baseType: !1348)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1333, file: !1331, line: 135, baseType: !717, size: 64, offset: 640)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1333, file: !1331, line: 136, baseType: !1369, size: 64, offset: 704)
!1369 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1331, line: 82, baseType: !1370)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!717, !717, !1354, !1354}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1333, file: !1331, line: 137, baseType: !1374, size: 64, offset: 768)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1331, line: 83, baseType: !1375)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{null, !717, !717}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1333, file: !1331, line: 141, baseType: !7, size: 32, offset: 832)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "ttype_data", scope: !1251, file: !135, line: 211, baseType: !1380, size: 64, offset: 256)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !158, line: 183, baseType: !1382)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !158, line: 183, size: 128, elements: !1383)
!1383 = !{!1384}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1382, file: !158, line: 183, baseType: !1385, size: 128)
!1385 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !158, line: 182, baseType: !1386)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !158, line: 182, size: 128, elements: !1387)
!1387 = !{!1388, !1389, !1390}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1386, file: !158, line: 182, baseType: !7, size: 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1386, file: !158, line: 182, baseType: !7, size: 32, offset: 32)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1386, file: !158, line: 182, baseType: !1391, size: 64, offset: 64)
!1391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !720, size: 64, elements: !819)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "ehspec_data", scope: !1251, file: !135, line: 220, baseType: !1393, size: 64, offset: 320)
!1393 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_status_u", file: !135, line: 217, size: 64, elements: !1394)
!1394 = !{!1395, !1396}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "arm_eabi", scope: !1393, file: !135, line: 218, baseType: !1380, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !1393, file: !135, line: 219, baseType: !1397, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_gc", file: !1399, line: 29, baseType: !1400)
!1399 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_gc", file: !1399, line: 29, size: 96, elements: !1401)
!1401 = !{!1402}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1400, file: !1399, line: 29, baseType: !1403, size: 96)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_base", file: !1399, line: 27, baseType: !1404)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_base", file: !1399, line: 27, size: 96, elements: !1405)
!1405 = !{!1406, !1407, !1408}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1404, file: !1399, line: 27, baseType: !7, size: 32)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1404, file: !1399, line: 27, baseType: !7, size: 32, offset: 32)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1404, file: !1399, line: 27, baseType: !1409, size: 8, offset: 64)
!1409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1410, size: 8, elements: !819)
!1410 = !DIDerivedType(tag: DW_TAG_typedef, name: "uchar", file: !1399, line: 26, baseType: !712)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1246, file: !1247, line: 467, baseType: !1412, size: 64, offset: 64)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !142, line: 374, size: 640, elements: !1414)
!1414 = !{!1415, !1417, !1418, !1431, !1432, !1433, !1434, !1435, !1436, !1438, !1440, !1441}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1413, file: !142, line: 377, baseType: !1416, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !721, line: 111, baseType: !1007)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1413, file: !142, line: 378, baseType: !1416, size: 64, offset: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1413, file: !142, line: 381, baseType: !1419, size: 64, offset: 128)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !142, line: 282, baseType: !1421)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !142, line: 282, size: 128, elements: !1422)
!1422 = !{!1423}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1421, file: !142, line: 282, baseType: !1424, size: 128)
!1424 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !142, line: 281, baseType: !1425)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !142, line: 281, size: 128, elements: !1426)
!1426 = !{!1427, !1428, !1429}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1425, file: !142, line: 281, baseType: !7, size: 32)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1425, file: !142, line: 281, baseType: !7, size: 32, offset: 32)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1425, file: !142, line: 281, baseType: !1430, size: 64, offset: 64)
!1430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1416, size: 64, elements: !819)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1413, file: !142, line: 384, baseType: !713, size: 32, offset: 192)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1413, file: !142, line: 387, baseType: !713, size: 32, offset: 224)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1413, file: !142, line: 390, baseType: !713, size: 32, offset: 256)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1413, file: !142, line: 394, baseType: !1419, size: 64, offset: 320)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1413, file: !142, line: 396, baseType: !141, size: 32, offset: 384)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1413, file: !142, line: 399, baseType: !1437, size: 64, offset: 416)
!1437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 64, elements: !962)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1413, file: !142, line: 402, baseType: !1439, size: 64, offset: 480)
!1439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !962)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1413, file: !142, line: 406, baseType: !713, size: 32, offset: 544)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1413, file: !142, line: 409, baseType: !713, size: 32, offset: 576)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1246, file: !1247, line: 470, baseType: !1034, size: 64, offset: 128)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1246, file: !1247, line: 473, baseType: !1444, size: 64, offset: 192)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1247, line: 166, flags: DIFlagFwdDecl)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1246, file: !1247, line: 476, baseType: !1447, size: 64, offset: 256)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1247, line: 476, flags: DIFlagFwdDecl)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1246, file: !1247, line: 479, baseType: !1330, size: 64, offset: 320)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1246, file: !1247, line: 484, baseType: !720, size: 64, offset: 384)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1246, file: !1247, line: 488, baseType: !720, size: 64, offset: 448)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1246, file: !1247, line: 493, baseType: !720, size: 64, offset: 512)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1246, file: !1247, line: 496, baseType: !720, size: 64, offset: 576)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1246, file: !1247, line: 501, baseType: !1455, size: 64, offset: 640)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !153, line: 2355, size: 576, elements: !1457)
!1457 = !{!1458, !1461, !1462, !1463, !1464, !1466, !1467, !1472, !1473, !1474, !1475, !1476, !1477}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1456, file: !153, line: 2356, baseType: !1459, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !153, line: 2356, flags: DIFlagFwdDecl)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1456, file: !153, line: 2357, baseType: !718, size: 64, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1456, file: !153, line: 2358, baseType: !713, size: 32, offset: 128)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1456, file: !153, line: 2359, baseType: !713, size: 32, offset: 160)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1456, file: !153, line: 2360, baseType: !1465, size: 128, offset: 192)
!1465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !713, size: 128, elements: !986)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1456, file: !153, line: 2364, baseType: !713, size: 32, offset: 320)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1456, file: !153, line: 2367, baseType: !1468, size: 128, offset: 384)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !153, line: 2349, size: 128, elements: !1469)
!1469 = !{!1470, !1471}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1468, file: !153, line: 2351, baseType: !895, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1468, file: !153, line: 2352, baseType: !776, size: 64, offset: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1456, file: !153, line: 2371, baseType: !152, size: 32, offset: 512)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1456, file: !153, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1456, file: !153, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1456, file: !153, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1456, file: !153, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1456, file: !153, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1246, file: !1247, line: 504, baseType: !1479, size: 64, offset: 704)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1247, line: 504, flags: DIFlagFwdDecl)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1246, file: !1247, line: 507, baseType: !1330, size: 64, offset: 768)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1246, file: !1247, line: 510, baseType: !713, size: 32, offset: 832)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1246, file: !1247, line: 513, baseType: !713, size: 32, offset: 864)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1246, file: !1247, line: 516, baseType: !845, size: 32, offset: 896)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1246, file: !1247, line: 519, baseType: !845, size: 32, offset: 928)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1246, file: !1247, line: 522, baseType: !7, size: 32, offset: 960)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1246, file: !1247, line: 523, baseType: !7, size: 32, offset: 992)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1246, file: !1247, line: 528, baseType: !718, size: 64, offset: 1024)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1246, file: !1247, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1246, file: !1247, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1246, file: !1247, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1246, file: !1247, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1246, file: !1247, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1246, file: !1247, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1246, file: !1247, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1246, file: !1247, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1246, file: !1247, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1246, file: !1247, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1246, file: !1247, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1246, file: !1247, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1246, file: !1247, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1246, file: !1247, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1246, file: !1247, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1246, file: !1247, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1241, file: !158, line: 3254, baseType: !720, size: 64, offset: 1536)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1241, file: !158, line: 3257, baseType: !720, size: 64, offset: 1600)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1241, file: !158, line: 3258, baseType: !720, size: 64, offset: 1664)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1241, file: !158, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1241, file: !158, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1241, file: !158, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1241, file: !158, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1241, file: !158, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1241, file: !158, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1241, file: !158, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1241, file: !158, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1241, file: !158, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1241, file: !158, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1241, file: !158, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1241, file: !158, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1241, file: !158, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1241, file: !158, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1241, file: !158, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1241, file: !158, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1241, file: !158, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1241, file: !158, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !723, file: !158, line: 3394, baseType: !1527, size: 1344)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !158, line: 2279, size: 1344, elements: !1528)
!1528 = !{!1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1527, file: !158, line: 2280, baseType: !759, size: 192)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1527, file: !158, line: 2281, baseType: !720, size: 64, offset: 192)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1527, file: !158, line: 2282, baseType: !720, size: 64, offset: 256)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1527, file: !158, line: 2283, baseType: !720, size: 64, offset: 320)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1527, file: !158, line: 2284, baseType: !720, size: 64, offset: 384)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1527, file: !158, line: 2285, baseType: !7, size: 32, offset: 448)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1527, file: !158, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1527, file: !158, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1527, file: !158, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1527, file: !158, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1527, file: !158, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1527, file: !158, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1527, file: !158, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1527, file: !158, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1527, file: !158, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1527, file: !158, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1527, file: !158, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1527, file: !158, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1527, file: !158, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1527, file: !158, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1527, file: !158, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1527, file: !158, line: 2305, baseType: !7, size: 32, offset: 512)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1527, file: !158, line: 2306, baseType: !1089, size: 32, offset: 544)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1527, file: !158, line: 2307, baseType: !720, size: 64, offset: 576)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1527, file: !158, line: 2308, baseType: !720, size: 64, offset: 640)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1527, file: !158, line: 2314, baseType: !1555, size: 64, offset: 704)
!1555 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !158, line: 2309, size: 64, elements: !1556)
!1556 = !{!1557, !1558, !1559}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1555, file: !158, line: 2310, baseType: !713, size: 32)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1555, file: !158, line: 2311, baseType: !718, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1555, file: !158, line: 2312, baseType: !1560, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !158, line: 2277, flags: DIFlagFwdDecl)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1527, file: !158, line: 2315, baseType: !720, size: 64, offset: 768)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1527, file: !158, line: 2316, baseType: !720, size: 64, offset: 832)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1527, file: !158, line: 2317, baseType: !720, size: 64, offset: 896)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1527, file: !158, line: 2318, baseType: !720, size: 64, offset: 960)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1527, file: !158, line: 2319, baseType: !720, size: 64, offset: 1024)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1527, file: !158, line: 2320, baseType: !720, size: 64, offset: 1088)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1527, file: !158, line: 2321, baseType: !720, size: 64, offset: 1152)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1527, file: !158, line: 2322, baseType: !720, size: 64, offset: 1216)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1527, file: !158, line: 2324, baseType: !1571, size: 64, offset: 1280)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !158, line: 2324, flags: DIFlagFwdDecl)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !723, file: !158, line: 3395, baseType: !1574, size: 320)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !158, line: 1469, size: 320, elements: !1575)
!1575 = !{!1576, !1577, !1578}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1574, file: !158, line: 1470, baseType: !759, size: 192)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1574, file: !158, line: 1471, baseType: !720, size: 64, offset: 192)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1574, file: !158, line: 1472, baseType: !720, size: 64, offset: 256)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !723, file: !158, line: 3396, baseType: !1580, size: 320)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !158, line: 1482, size: 320, elements: !1581)
!1581 = !{!1582, !1583, !1584}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1580, file: !158, line: 1483, baseType: !759, size: 192)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1580, file: !158, line: 1484, baseType: !713, size: 32, offset: 192)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1580, file: !158, line: 1485, baseType: !1391, size: 64, offset: 256)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !723, file: !158, line: 3397, baseType: !1586, size: 384)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !158, line: 1829, size: 384, elements: !1587)
!1587 = !{!1588, !1589, !1590, !1591}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1586, file: !158, line: 1830, baseType: !759, size: 192)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1586, file: !158, line: 1831, baseType: !845, size: 32, offset: 192)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1586, file: !158, line: 1832, baseType: !720, size: 64, offset: 256)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1586, file: !158, line: 1835, baseType: !1391, size: 64, offset: 320)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !723, file: !158, line: 3398, baseType: !1593, size: 704)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !158, line: 1898, size: 704, elements: !1594)
!1594 = !{!1595, !1596, !1597, !1601, !1602, !1605}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1593, file: !158, line: 1899, baseType: !759, size: 192)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1593, file: !158, line: 1902, baseType: !720, size: 64, offset: 192)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1593, file: !158, line: 1905, baseType: !1598, size: 64, offset: 256)
!1598 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !721, line: 58, baseType: !1599)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !721, line: 57, flags: DIFlagFwdDecl)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1593, file: !158, line: 1908, baseType: !7, size: 32, offset: 320)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1593, file: !158, line: 1911, baseType: !1603, size: 64, offset: 384)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !158, line: 1876, flags: DIFlagFwdDecl)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1593, file: !158, line: 1914, baseType: !1606, size: 256, offset: 448)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !158, line: 1883, size: 256, elements: !1607)
!1607 = !{!1608, !1610, !1611, !1616}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1606, file: !158, line: 1884, baseType: !1609, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1606, file: !158, line: 1885, baseType: !1609, size: 64, offset: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1606, file: !158, line: 1891, baseType: !1612, size: 64, offset: 128)
!1612 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1606, file: !158, line: 1891, size: 64, elements: !1613)
!1613 = !{!1614, !1615}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1612, file: !158, line: 1891, baseType: !1598, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1612, file: !158, line: 1891, baseType: !720, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1606, file: !158, line: 1892, baseType: !1617, size: 64, offset: 192)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !723, file: !158, line: 3399, baseType: !1619, size: 704)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !158, line: 2008, size: 704, elements: !1620)
!1620 = !{!1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1619, file: !158, line: 2009, baseType: !759, size: 192)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1619, file: !158, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1619, file: !158, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1619, file: !158, line: 2014, baseType: !845, size: 32, offset: 224)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1619, file: !158, line: 2016, baseType: !720, size: 64, offset: 256)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1619, file: !158, line: 2017, baseType: !1380, size: 64, offset: 320)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1619, file: !158, line: 2019, baseType: !720, size: 64, offset: 384)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1619, file: !158, line: 2020, baseType: !720, size: 64, offset: 448)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1619, file: !158, line: 2021, baseType: !720, size: 64, offset: 512)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1619, file: !158, line: 2022, baseType: !720, size: 64, offset: 576)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1619, file: !158, line: 2023, baseType: !720, size: 64, offset: 640)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !723, file: !158, line: 3400, baseType: !1633, size: 832)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !158, line: 2430, size: 832, elements: !1634)
!1634 = !{!1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1633, file: !158, line: 2431, baseType: !759, size: 192)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1633, file: !158, line: 2433, baseType: !720, size: 64, offset: 192)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1633, file: !158, line: 2434, baseType: !720, size: 64, offset: 256)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1633, file: !158, line: 2435, baseType: !720, size: 64, offset: 320)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1633, file: !158, line: 2436, baseType: !720, size: 64, offset: 384)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1633, file: !158, line: 2437, baseType: !1380, size: 64, offset: 448)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1633, file: !158, line: 2438, baseType: !720, size: 64, offset: 512)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1633, file: !158, line: 2440, baseType: !720, size: 64, offset: 576)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1633, file: !158, line: 2441, baseType: !720, size: 64, offset: 640)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1633, file: !158, line: 2443, baseType: !1645, size: 128, offset: 704)
!1645 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !158, line: 182, baseType: !1646)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !158, line: 182, size: 128, elements: !1647)
!1647 = !{!1648}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1646, file: !158, line: 182, baseType: !1385, size: 128)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !723, file: !158, line: 3401, baseType: !1650, size: 320)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !158, line: 3327, size: 320, elements: !1651)
!1651 = !{!1652, !1653, !1660}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1650, file: !158, line: 3329, baseType: !759, size: 192)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1650, file: !158, line: 3330, baseType: !1654, size: 64, offset: 192)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !158, line: 3320, size: 192, elements: !1656)
!1656 = !{!1657, !1658, !1659}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1655, file: !158, line: 3322, baseType: !1654, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1655, file: !158, line: 3323, baseType: !1654, size: 64, offset: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1655, file: !158, line: 3324, baseType: !720, size: 64, offset: 128)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1650, file: !158, line: 3331, baseType: !1654, size: 64, offset: 256)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !723, file: !158, line: 3402, baseType: !1662, size: 256)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !158, line: 1540, size: 256, elements: !1663)
!1663 = !{!1664, !1665}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1662, file: !158, line: 1541, baseType: !759, size: 192)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1662, file: !158, line: 1542, baseType: !1666, size: 64, offset: 192)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !158, line: 1538, baseType: !1668)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !158, line: 1538, size: 192, elements: !1669)
!1669 = !{!1670}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1668, file: !158, line: 1538, baseType: !1671, size: 192)
!1671 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !158, line: 1537, baseType: !1672)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !158, line: 1537, size: 192, elements: !1673)
!1673 = !{!1674, !1675, !1676}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1672, file: !158, line: 1537, baseType: !7, size: 32)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1672, file: !158, line: 1537, baseType: !7, size: 32, offset: 32)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1672, file: !158, line: 1537, baseType: !1677, size: 128, offset: 64)
!1677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1678, size: 128, elements: !819)
!1678 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !158, line: 1535, baseType: !1679)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !158, line: 1532, size: 128, elements: !1680)
!1680 = !{!1681, !1682}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1679, file: !158, line: 1533, baseType: !720, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1679, file: !158, line: 1534, baseType: !720, size: 64, offset: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !723, file: !158, line: 3403, baseType: !1684, size: 512)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !158, line: 1938, size: 512, elements: !1685)
!1685 = !{!1686, !1687, !1688, !1689, !1695, !1696, !1697}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1684, file: !158, line: 1939, baseType: !759, size: 192)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1684, file: !158, line: 1940, baseType: !845, size: 32, offset: 192)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1684, file: !158, line: 1941, baseType: !157, size: 32, offset: 224)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1684, file: !158, line: 1946, baseType: !1690, size: 32, offset: 256)
!1690 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !158, line: 1942, size: 32, elements: !1691)
!1691 = !{!1692, !1693, !1694}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1690, file: !158, line: 1943, baseType: !176, size: 32)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1690, file: !158, line: 1944, baseType: !183, size: 32)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1690, file: !158, line: 1945, baseType: !190, size: 32)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1684, file: !158, line: 1950, baseType: !1033, size: 64, offset: 320)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1684, file: !158, line: 1951, baseType: !1033, size: 64, offset: 384)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1684, file: !158, line: 1953, baseType: !1391, size: 64, offset: 448)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !723, file: !158, line: 3404, baseType: !1699, size: 1664)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !158, line: 3337, size: 1664, elements: !1700)
!1700 = !{!1701, !1702}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1699, file: !158, line: 3338, baseType: !759, size: 192)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1699, file: !158, line: 3341, baseType: !1703, size: 1472, offset: 192)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1704, line: 410, size: 1472, elements: !1705)
!1704 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1705 = !{!1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1703, file: !1704, line: 412, baseType: !713, size: 32)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1703, file: !1704, line: 413, baseType: !713, size: 32, offset: 32)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1703, file: !1704, line: 414, baseType: !713, size: 32, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1703, file: !1704, line: 415, baseType: !713, size: 32, offset: 96)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1703, file: !1704, line: 416, baseType: !713, size: 32, offset: 128)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1703, file: !1704, line: 417, baseType: !713, size: 32, offset: 160)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1703, file: !1704, line: 418, baseType: !712, size: 8, offset: 192)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1703, file: !1704, line: 419, baseType: !712, size: 8, offset: 200)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1703, file: !1704, line: 420, baseType: !1715, size: 8, offset: 208)
!1715 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1703, file: !1704, line: 421, baseType: !1715, size: 8, offset: 216)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1703, file: !1704, line: 422, baseType: !1715, size: 8, offset: 224)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1703, file: !1704, line: 423, baseType: !1715, size: 8, offset: 232)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1703, file: !1704, line: 424, baseType: !1715, size: 8, offset: 240)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1703, file: !1704, line: 425, baseType: !1715, size: 8, offset: 248)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1703, file: !1704, line: 426, baseType: !1715, size: 8, offset: 256)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1703, file: !1704, line: 427, baseType: !1715, size: 8, offset: 264)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1703, file: !1704, line: 428, baseType: !1715, size: 8, offset: 272)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1703, file: !1704, line: 429, baseType: !1715, size: 8, offset: 280)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1703, file: !1704, line: 430, baseType: !1715, size: 8, offset: 288)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1703, file: !1704, line: 431, baseType: !1715, size: 8, offset: 296)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1703, file: !1704, line: 432, baseType: !1715, size: 8, offset: 304)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1703, file: !1704, line: 433, baseType: !1715, size: 8, offset: 312)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1703, file: !1704, line: 434, baseType: !1715, size: 8, offset: 320)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1703, file: !1704, line: 435, baseType: !1715, size: 8, offset: 328)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1703, file: !1704, line: 436, baseType: !1715, size: 8, offset: 336)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1703, file: !1704, line: 437, baseType: !1715, size: 8, offset: 344)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1703, file: !1704, line: 438, baseType: !1715, size: 8, offset: 352)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1703, file: !1704, line: 439, baseType: !1715, size: 8, offset: 360)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1703, file: !1704, line: 440, baseType: !1715, size: 8, offset: 368)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1703, file: !1704, line: 441, baseType: !1715, size: 8, offset: 376)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1703, file: !1704, line: 442, baseType: !1715, size: 8, offset: 384)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1703, file: !1704, line: 443, baseType: !1715, size: 8, offset: 392)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1703, file: !1704, line: 444, baseType: !1715, size: 8, offset: 400)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1703, file: !1704, line: 445, baseType: !1715, size: 8, offset: 408)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1703, file: !1704, line: 446, baseType: !1715, size: 8, offset: 416)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1703, file: !1704, line: 447, baseType: !1715, size: 8, offset: 424)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1703, file: !1704, line: 448, baseType: !1715, size: 8, offset: 432)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1703, file: !1704, line: 449, baseType: !1715, size: 8, offset: 440)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1703, file: !1704, line: 450, baseType: !1715, size: 8, offset: 448)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1703, file: !1704, line: 451, baseType: !1715, size: 8, offset: 456)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1703, file: !1704, line: 452, baseType: !1715, size: 8, offset: 464)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1703, file: !1704, line: 453, baseType: !1715, size: 8, offset: 472)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1703, file: !1704, line: 454, baseType: !1715, size: 8, offset: 480)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1703, file: !1704, line: 455, baseType: !1715, size: 8, offset: 488)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1703, file: !1704, line: 456, baseType: !1715, size: 8, offset: 496)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1703, file: !1704, line: 457, baseType: !1715, size: 8, offset: 504)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1703, file: !1704, line: 458, baseType: !1715, size: 8, offset: 512)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1703, file: !1704, line: 459, baseType: !1715, size: 8, offset: 520)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1703, file: !1704, line: 460, baseType: !1715, size: 8, offset: 528)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1703, file: !1704, line: 461, baseType: !1715, size: 8, offset: 536)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1703, file: !1704, line: 462, baseType: !1715, size: 8, offset: 544)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1703, file: !1704, line: 463, baseType: !1715, size: 8, offset: 552)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1703, file: !1704, line: 464, baseType: !1715, size: 8, offset: 560)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1703, file: !1704, line: 465, baseType: !1715, size: 8, offset: 568)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1703, file: !1704, line: 466, baseType: !1715, size: 8, offset: 576)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1703, file: !1704, line: 467, baseType: !1715, size: 8, offset: 584)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1703, file: !1704, line: 468, baseType: !1715, size: 8, offset: 592)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1703, file: !1704, line: 469, baseType: !1715, size: 8, offset: 600)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1703, file: !1704, line: 470, baseType: !1715, size: 8, offset: 608)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1703, file: !1704, line: 471, baseType: !1715, size: 8, offset: 616)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1703, file: !1704, line: 472, baseType: !1715, size: 8, offset: 624)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1703, file: !1704, line: 473, baseType: !1715, size: 8, offset: 632)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1703, file: !1704, line: 474, baseType: !1715, size: 8, offset: 640)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1703, file: !1704, line: 475, baseType: !1715, size: 8, offset: 648)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1703, file: !1704, line: 476, baseType: !1715, size: 8, offset: 656)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1703, file: !1704, line: 477, baseType: !1715, size: 8, offset: 664)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1703, file: !1704, line: 478, baseType: !1715, size: 8, offset: 672)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1703, file: !1704, line: 479, baseType: !1715, size: 8, offset: 680)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1703, file: !1704, line: 480, baseType: !1715, size: 8, offset: 688)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1703, file: !1704, line: 481, baseType: !1715, size: 8, offset: 696)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1703, file: !1704, line: 482, baseType: !1715, size: 8, offset: 704)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1703, file: !1704, line: 483, baseType: !1715, size: 8, offset: 712)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1703, file: !1704, line: 484, baseType: !1715, size: 8, offset: 720)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1703, file: !1704, line: 485, baseType: !1715, size: 8, offset: 728)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1703, file: !1704, line: 486, baseType: !1715, size: 8, offset: 736)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1703, file: !1704, line: 487, baseType: !1715, size: 8, offset: 744)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1703, file: !1704, line: 488, baseType: !1715, size: 8, offset: 752)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1703, file: !1704, line: 489, baseType: !1715, size: 8, offset: 760)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1703, file: !1704, line: 490, baseType: !1715, size: 8, offset: 768)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1703, file: !1704, line: 491, baseType: !1715, size: 8, offset: 776)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1703, file: !1704, line: 492, baseType: !1715, size: 8, offset: 784)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1703, file: !1704, line: 493, baseType: !1715, size: 8, offset: 792)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1703, file: !1704, line: 494, baseType: !1715, size: 8, offset: 800)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1703, file: !1704, line: 495, baseType: !1715, size: 8, offset: 808)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1703, file: !1704, line: 496, baseType: !1715, size: 8, offset: 816)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1703, file: !1704, line: 497, baseType: !1715, size: 8, offset: 824)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1703, file: !1704, line: 498, baseType: !1715, size: 8, offset: 832)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1703, file: !1704, line: 499, baseType: !1715, size: 8, offset: 840)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1703, file: !1704, line: 500, baseType: !1715, size: 8, offset: 848)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1703, file: !1704, line: 501, baseType: !1715, size: 8, offset: 856)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1703, file: !1704, line: 502, baseType: !1715, size: 8, offset: 864)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1703, file: !1704, line: 503, baseType: !1715, size: 8, offset: 872)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1703, file: !1704, line: 504, baseType: !1715, size: 8, offset: 880)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1703, file: !1704, line: 505, baseType: !1715, size: 8, offset: 888)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1703, file: !1704, line: 506, baseType: !1715, size: 8, offset: 896)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1703, file: !1704, line: 507, baseType: !1715, size: 8, offset: 904)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1703, file: !1704, line: 508, baseType: !1715, size: 8, offset: 912)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1703, file: !1704, line: 509, baseType: !1715, size: 8, offset: 920)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1703, file: !1704, line: 510, baseType: !1715, size: 8, offset: 928)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1703, file: !1704, line: 511, baseType: !1715, size: 8, offset: 936)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1703, file: !1704, line: 512, baseType: !1715, size: 8, offset: 944)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1703, file: !1704, line: 513, baseType: !1715, size: 8, offset: 952)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1703, file: !1704, line: 514, baseType: !1715, size: 8, offset: 960)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1703, file: !1704, line: 515, baseType: !1715, size: 8, offset: 968)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1703, file: !1704, line: 516, baseType: !1715, size: 8, offset: 976)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1703, file: !1704, line: 517, baseType: !1715, size: 8, offset: 984)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1703, file: !1704, line: 518, baseType: !1715, size: 8, offset: 992)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1703, file: !1704, line: 519, baseType: !1715, size: 8, offset: 1000)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1703, file: !1704, line: 520, baseType: !1715, size: 8, offset: 1008)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1703, file: !1704, line: 521, baseType: !1715, size: 8, offset: 1016)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1703, file: !1704, line: 522, baseType: !1715, size: 8, offset: 1024)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1703, file: !1704, line: 523, baseType: !1715, size: 8, offset: 1032)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1703, file: !1704, line: 524, baseType: !1715, size: 8, offset: 1040)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1703, file: !1704, line: 525, baseType: !1715, size: 8, offset: 1048)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1703, file: !1704, line: 526, baseType: !1715, size: 8, offset: 1056)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1703, file: !1704, line: 527, baseType: !1715, size: 8, offset: 1064)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1703, file: !1704, line: 528, baseType: !1715, size: 8, offset: 1072)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1703, file: !1704, line: 529, baseType: !1715, size: 8, offset: 1080)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1703, file: !1704, line: 530, baseType: !1715, size: 8, offset: 1088)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1703, file: !1704, line: 531, baseType: !1715, size: 8, offset: 1096)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1703, file: !1704, line: 532, baseType: !1715, size: 8, offset: 1104)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1703, file: !1704, line: 533, baseType: !1715, size: 8, offset: 1112)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1703, file: !1704, line: 534, baseType: !1715, size: 8, offset: 1120)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1703, file: !1704, line: 535, baseType: !1715, size: 8, offset: 1128)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1703, file: !1704, line: 536, baseType: !1715, size: 8, offset: 1136)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1703, file: !1704, line: 537, baseType: !1715, size: 8, offset: 1144)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1703, file: !1704, line: 538, baseType: !1715, size: 8, offset: 1152)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1703, file: !1704, line: 539, baseType: !1715, size: 8, offset: 1160)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1703, file: !1704, line: 540, baseType: !1715, size: 8, offset: 1168)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1703, file: !1704, line: 541, baseType: !1715, size: 8, offset: 1176)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1703, file: !1704, line: 542, baseType: !1715, size: 8, offset: 1184)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1703, file: !1704, line: 543, baseType: !1715, size: 8, offset: 1192)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1703, file: !1704, line: 544, baseType: !1715, size: 8, offset: 1200)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1703, file: !1704, line: 545, baseType: !1715, size: 8, offset: 1208)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1703, file: !1704, line: 546, baseType: !1715, size: 8, offset: 1216)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1703, file: !1704, line: 547, baseType: !1715, size: 8, offset: 1224)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1703, file: !1704, line: 548, baseType: !1715, size: 8, offset: 1232)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1703, file: !1704, line: 549, baseType: !1715, size: 8, offset: 1240)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1703, file: !1704, line: 550, baseType: !1715, size: 8, offset: 1248)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1703, file: !1704, line: 551, baseType: !1715, size: 8, offset: 1256)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1703, file: !1704, line: 552, baseType: !1715, size: 8, offset: 1264)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1703, file: !1704, line: 553, baseType: !1715, size: 8, offset: 1272)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1703, file: !1704, line: 554, baseType: !1715, size: 8, offset: 1280)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1703, file: !1704, line: 555, baseType: !1715, size: 8, offset: 1288)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1703, file: !1704, line: 556, baseType: !1715, size: 8, offset: 1296)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1703, file: !1704, line: 557, baseType: !1715, size: 8, offset: 1304)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1703, file: !1704, line: 558, baseType: !1715, size: 8, offset: 1312)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1703, file: !1704, line: 559, baseType: !1715, size: 8, offset: 1320)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1703, file: !1704, line: 560, baseType: !1715, size: 8, offset: 1328)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1703, file: !1704, line: 561, baseType: !1715, size: 8, offset: 1336)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1703, file: !1704, line: 562, baseType: !1715, size: 8, offset: 1344)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1703, file: !1704, line: 563, baseType: !1715, size: 8, offset: 1352)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1703, file: !1704, line: 564, baseType: !1715, size: 8, offset: 1360)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1703, file: !1704, line: 565, baseType: !1715, size: 8, offset: 1368)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1703, file: !1704, line: 566, baseType: !1715, size: 8, offset: 1376)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1703, file: !1704, line: 567, baseType: !1715, size: 8, offset: 1384)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1703, file: !1704, line: 568, baseType: !1715, size: 8, offset: 1392)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1703, file: !1704, line: 569, baseType: !1715, size: 8, offset: 1400)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1703, file: !1704, line: 570, baseType: !1715, size: 8, offset: 1408)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1703, file: !1704, line: 571, baseType: !1715, size: 8, offset: 1416)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1703, file: !1704, line: 572, baseType: !1715, size: 8, offset: 1424)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1703, file: !1704, line: 573, baseType: !1715, size: 8, offset: 1432)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1703, file: !1704, line: 574, baseType: !1715, size: 8, offset: 1440)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !723, file: !158, line: 3405, baseType: !1871, size: 384)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !158, line: 3352, size: 384, elements: !1872)
!1872 = !{!1873, !1874}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1871, file: !158, line: 3353, baseType: !759, size: 192)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1871, file: !158, line: 3356, baseType: !1875, size: 192, offset: 192)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1704, line: 578, size: 192, elements: !1876)
!1876 = !{!1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1875, file: !1704, line: 580, baseType: !713, size: 32)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1875, file: !1704, line: 581, baseType: !713, size: 32, offset: 32)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1875, file: !1704, line: 582, baseType: !713, size: 32, offset: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1875, file: !1704, line: 583, baseType: !713, size: 32, offset: 96)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1875, file: !1704, line: 584, baseType: !712, size: 8, offset: 128)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1875, file: !1704, line: 585, baseType: !712, size: 8, offset: 136)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1875, file: !1704, line: 586, baseType: !712, size: 8, offset: 144)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1875, file: !1704, line: 587, baseType: !712, size: 8, offset: 152)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1875, file: !1704, line: 588, baseType: !712, size: 8, offset: 160)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1875, file: !1704, line: 589, baseType: !712, size: 8, offset: 168)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1875, file: !1704, line: 590, baseType: !712, size: 8, offset: 176)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_typedef, name: "initial_value_struct", file: !3, line: 64, baseType: !1890)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "initial_value_struct", file: !3, line: 60, size: 128, elements: !1891)
!1891 = !{!1892, !1893, !1894}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "num_entries", scope: !1890, file: !3, line: 61, baseType: !713, size: 32)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "max_entries", scope: !1890, file: !3, line: 62, baseType: !713, size: 32, offset: 32)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1890, file: !3, line: 63, baseType: !1895, size: 64, offset: 64)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_typedef, name: "initial_value_pair", file: !3, line: 59, baseType: !1897)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "initial_value_pair", file: !3, line: 56, size: 128, elements: !1898)
!1898 = !{!1899, !1900}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "hard_reg", scope: !1897, file: !3, line: 57, baseType: !895, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "pseudo", scope: !1897, file: !3, line: 58, baseType: !895, size: 64, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1902 = !{!0}
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_opt_pass", file: !385, line: 162, size: 640, elements: !1904)
!1904 = !{!1905}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !1903, file: !385, line: 164, baseType: !1906, size: 640)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !385, line: 114, size: 640, elements: !1907)
!1907 = !{!1908, !1909, !1910, !1914, !1918, !1920, !1921, !1922, !1924, !1925, !1926, !1927, !1928}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1906, file: !385, line: 117, baseType: !384, size: 32)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1906, file: !385, line: 121, baseType: !718, size: 64, offset: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !1906, file: !385, line: 125, baseType: !1911, size: 64, offset: 128)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!712}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !1906, file: !385, line: 130, baseType: !1915, size: 64, offset: 192)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!7}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !1906, file: !385, line: 133, baseType: !1919, size: 64, offset: 256)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1906, file: !385, line: 136, baseType: !1919, size: 64, offset: 320)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !1906, file: !385, line: 139, baseType: !713, size: 32, offset: 384)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !1906, file: !385, line: 143, baseType: !1923, size: 32, offset: 416)
!1923 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !392, line: 80, baseType: !391)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !1906, file: !385, line: 146, baseType: !7, size: 32, offset: 448)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !1906, file: !385, line: 147, baseType: !7, size: 32, offset: 480)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !1906, file: !385, line: 148, baseType: !7, size: 32, offset: 512)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !1906, file: !385, line: 151, baseType: !7, size: 32, offset: 544)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !1906, file: !385, line: 152, baseType: !7, size: 32, offset: 576)
!1929 = !{i32 2, !"Dwarf Version", i32 4}
!1930 = !{i32 2, !"Debug Info Version", i32 3}
!1931 = !{i32 1, !"wchar_size", i32 4}
!1932 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1933 = distinct !DISubprogram(name: "vprintf", scope: !1934, file: !1934, line: 39, type: !1935, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1945)
!1934 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!713, !1937, !1938}
!1937 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !718)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1940)
!1940 = !{!1941, !1942, !1943, !1944}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1939, file: !3, baseType: !7, size: 32)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1939, file: !3, baseType: !7, size: 32, offset: 32)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1939, file: !3, baseType: !717, size: 64, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1939, file: !3, baseType: !717, size: 64, offset: 128)
!1945 = !{!1946, !1947}
!1946 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1933, file: !1934, line: 39, type: !1937)
!1947 = !DILocalVariable(name: "__arg", arg: 2, scope: !1933, file: !1934, line: 39, type: !1938)
!1948 = !DILocation(line: 0, scope: !1933)
!1949 = !DILocation(line: 41, column: 20, scope: !1933)
!1950 = !DILocation(line: 41, column: 10, scope: !1933)
!1951 = !DILocation(line: 41, column: 3, scope: !1933)
!1952 = distinct !DISubprogram(name: "getchar", scope: !1934, file: !1934, line: 47, type: !1953, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1955)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!713}
!1955 = !{}
!1956 = !DILocation(line: 49, column: 16, scope: !1952)
!1957 = !DILocation(line: 49, column: 10, scope: !1952)
!1958 = !DILocation(line: 49, column: 3, scope: !1952)
!1959 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1934, file: !1934, line: 56, type: !1960, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2013)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!713, !1962}
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1964, line: 7, baseType: !1965)
!1964 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1966, line: 49, size: 1728, elements: !1967)
!1966 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1967 = !{!1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1983, !1985, !1986, !1987, !1990, !1992, !1993, !1994, !1997, !1999, !2002, !2005, !2006, !2007, !2008, !2009}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1965, file: !1966, line: 51, baseType: !713, size: 32)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1965, file: !1966, line: 54, baseType: !715, size: 64, offset: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1965, file: !1966, line: 55, baseType: !715, size: 64, offset: 128)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1965, file: !1966, line: 56, baseType: !715, size: 64, offset: 192)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1965, file: !1966, line: 57, baseType: !715, size: 64, offset: 256)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1965, file: !1966, line: 58, baseType: !715, size: 64, offset: 320)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1965, file: !1966, line: 59, baseType: !715, size: 64, offset: 384)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1965, file: !1966, line: 60, baseType: !715, size: 64, offset: 448)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1965, file: !1966, line: 61, baseType: !715, size: 64, offset: 512)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1965, file: !1966, line: 64, baseType: !715, size: 64, offset: 576)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1965, file: !1966, line: 65, baseType: !715, size: 64, offset: 640)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1965, file: !1966, line: 66, baseType: !715, size: 64, offset: 704)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1965, file: !1966, line: 68, baseType: !1981, size: 64, offset: 768)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1966, line: 36, flags: DIFlagFwdDecl)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1965, file: !1966, line: 70, baseType: !1984, size: 64, offset: 832)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1965, file: !1966, line: 72, baseType: !713, size: 32, offset: 896)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1965, file: !1966, line: 73, baseType: !713, size: 32, offset: 928)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1965, file: !1966, line: 74, baseType: !1988, size: 64, offset: 960)
!1988 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1989, line: 152, baseType: !776)
!1989 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1965, file: !1966, line: 77, baseType: !1991, size: 16, offset: 1024)
!1991 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1965, file: !1966, line: 78, baseType: !1715, size: 8, offset: 1040)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1965, file: !1966, line: 79, baseType: !818, size: 8, offset: 1048)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1965, file: !1966, line: 81, baseType: !1995, size: 64, offset: 1088)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1966, line: 43, baseType: null)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1965, file: !1966, line: 89, baseType: !1998, size: 64, offset: 1152)
!1998 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1989, line: 153, baseType: !776)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1965, file: !1966, line: 91, baseType: !2000, size: 64, offset: 1216)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1966, line: 37, flags: DIFlagFwdDecl)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1965, file: !1966, line: 92, baseType: !2003, size: 64, offset: 1280)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1966, line: 38, flags: DIFlagFwdDecl)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1965, file: !1966, line: 93, baseType: !1984, size: 64, offset: 1344)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1965, file: !1966, line: 94, baseType: !717, size: 64, offset: 1408)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1965, file: !1966, line: 95, baseType: !1354, size: 64, offset: 1472)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1965, file: !1966, line: 96, baseType: !713, size: 32, offset: 1536)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1965, file: !1966, line: 98, baseType: !2010, size: 160, offset: 1568)
!2010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !716, size: 160, elements: !2011)
!2011 = !{!2012}
!2012 = !DISubrange(count: 20)
!2013 = !{!2014}
!2014 = !DILocalVariable(name: "__fp", arg: 1, scope: !1959, file: !1934, line: 56, type: !1962)
!2015 = !DILocation(line: 0, scope: !1959)
!2016 = !DILocation(line: 58, column: 10, scope: !1959)
!2017 = !DILocation(line: 58, column: 3, scope: !1959)
!2018 = distinct !DISubprogram(name: "getc_unlocked", scope: !1934, file: !1934, line: 66, type: !1960, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2019)
!2019 = !{!2020}
!2020 = !DILocalVariable(name: "__fp", arg: 1, scope: !2018, file: !1934, line: 66, type: !1962)
!2021 = !DILocation(line: 0, scope: !2018)
!2022 = !DILocation(line: 68, column: 10, scope: !2018)
!2023 = !DILocation(line: 68, column: 3, scope: !2018)
!2024 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1934, file: !1934, line: 73, type: !1953, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1955)
!2025 = !DILocation(line: 75, column: 10, scope: !2024)
!2026 = !DILocation(line: 75, column: 3, scope: !2024)
!2027 = distinct !DISubprogram(name: "putchar", scope: !1934, file: !1934, line: 82, type: !2028, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2030)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!713, !713}
!2030 = !{!2031}
!2031 = !DILocalVariable(name: "__c", arg: 1, scope: !2027, file: !1934, line: 82, type: !713)
!2032 = !DILocation(line: 0, scope: !2027)
!2033 = !DILocation(line: 84, column: 21, scope: !2027)
!2034 = !DILocation(line: 84, column: 10, scope: !2027)
!2035 = !DILocation(line: 84, column: 3, scope: !2027)
!2036 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1934, file: !1934, line: 91, type: !2037, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2039)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!713, !713, !1962}
!2039 = !{!2040, !2041}
!2040 = !DILocalVariable(name: "__c", arg: 1, scope: !2036, file: !1934, line: 91, type: !713)
!2041 = !DILocalVariable(name: "__stream", arg: 2, scope: !2036, file: !1934, line: 91, type: !1962)
!2042 = !DILocation(line: 0, scope: !2036)
!2043 = !DILocation(line: 93, column: 10, scope: !2036)
!2044 = !DILocation(line: 93, column: 3, scope: !2036)
!2045 = distinct !DISubprogram(name: "putc_unlocked", scope: !1934, file: !1934, line: 101, type: !2037, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2046)
!2046 = !{!2047, !2048}
!2047 = !DILocalVariable(name: "__c", arg: 1, scope: !2045, file: !1934, line: 101, type: !713)
!2048 = !DILocalVariable(name: "__stream", arg: 2, scope: !2045, file: !1934, line: 101, type: !1962)
!2049 = !DILocation(line: 0, scope: !2045)
!2050 = !DILocation(line: 103, column: 10, scope: !2045)
!2051 = !DILocation(line: 103, column: 3, scope: !2045)
!2052 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1934, file: !1934, line: 108, type: !2028, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2053)
!2053 = !{!2054}
!2054 = !DILocalVariable(name: "__c", arg: 1, scope: !2052, file: !1934, line: 108, type: !713)
!2055 = !DILocation(line: 0, scope: !2052)
!2056 = !DILocation(line: 110, column: 10, scope: !2052)
!2057 = !DILocation(line: 110, column: 3, scope: !2052)
!2058 = distinct !DISubprogram(name: "getline", scope: !1934, file: !1934, line: 118, type: !2059, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2063)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!2061, !714, !2062, !1962}
!2061 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1989, line: 193, baseType: !776)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!2063 = !{!2064, !2065, !2066}
!2064 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2058, file: !1934, line: 118, type: !714)
!2065 = !DILocalVariable(name: "__n", arg: 2, scope: !2058, file: !1934, line: 118, type: !2062)
!2066 = !DILocalVariable(name: "__stream", arg: 3, scope: !2058, file: !1934, line: 118, type: !1962)
!2067 = !DILocation(line: 0, scope: !2058)
!2068 = !DILocation(line: 120, column: 10, scope: !2058)
!2069 = !DILocation(line: 120, column: 3, scope: !2058)
!2070 = distinct !DISubprogram(name: "feof_unlocked", scope: !1934, file: !1934, line: 128, type: !1960, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2071)
!2071 = !{!2072}
!2072 = !DILocalVariable(name: "__stream", arg: 1, scope: !2070, file: !1934, line: 128, type: !1962)
!2073 = !DILocation(line: 0, scope: !2070)
!2074 = !DILocation(line: 130, column: 10, scope: !2070)
!2075 = !DILocation(line: 130, column: 3, scope: !2070)
!2076 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1934, file: !1934, line: 135, type: !1960, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2077)
!2077 = !{!2078}
!2078 = !DILocalVariable(name: "__stream", arg: 1, scope: !2076, file: !1934, line: 135, type: !1962)
!2079 = !DILocation(line: 0, scope: !2076)
!2080 = !DILocation(line: 137, column: 10, scope: !2076)
!2081 = !DILocation(line: 137, column: 3, scope: !2076)
!2082 = distinct !DISubprogram(name: "tolower", scope: !2083, file: !2083, line: 207, type: !2028, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2084)
!2083 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2084 = !{!2085}
!2085 = !DILocalVariable(name: "__c", arg: 1, scope: !2082, file: !2083, line: 207, type: !713)
!2086 = !DILocation(line: 0, scope: !2082)
!2087 = !DILocation(line: 209, column: 22, scope: !2082)
!2088 = !DILocation(line: 209, column: 39, scope: !2082)
!2089 = !DILocation(line: 209, column: 38, scope: !2082)
!2090 = !DILocation(line: 209, column: 37, scope: !2082)
!2091 = !DILocation(line: 209, column: 10, scope: !2082)
!2092 = !DILocation(line: 209, column: 3, scope: !2082)
!2093 = distinct !DISubprogram(name: "toupper", scope: !2083, file: !2083, line: 213, type: !2028, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2094)
!2094 = !{!2095}
!2095 = !DILocalVariable(name: "__c", arg: 1, scope: !2093, file: !2083, line: 213, type: !713)
!2096 = !DILocation(line: 0, scope: !2093)
!2097 = !DILocation(line: 215, column: 22, scope: !2093)
!2098 = !DILocation(line: 215, column: 39, scope: !2093)
!2099 = !DILocation(line: 215, column: 38, scope: !2093)
!2100 = !DILocation(line: 215, column: 37, scope: !2093)
!2101 = !DILocation(line: 215, column: 10, scope: !2093)
!2102 = !DILocation(line: 215, column: 3, scope: !2093)
!2103 = distinct !DISubprogram(name: "atoi", scope: !2104, file: !2104, line: 361, type: !2105, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2107)
!2104 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!713, !718}
!2107 = !{!2108}
!2108 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2103, file: !2104, line: 361, type: !718)
!2109 = !DILocation(line: 0, scope: !2103)
!2110 = !DILocation(line: 363, column: 16, scope: !2103)
!2111 = !DILocation(line: 363, column: 10, scope: !2103)
!2112 = !DILocation(line: 363, column: 3, scope: !2103)
!2113 = distinct !DISubprogram(name: "atol", scope: !2104, file: !2104, line: 366, type: !2114, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2116)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!776, !718}
!2116 = !{!2117}
!2117 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2113, file: !2104, line: 366, type: !718)
!2118 = !DILocation(line: 0, scope: !2113)
!2119 = !DILocation(line: 368, column: 10, scope: !2113)
!2120 = !DILocation(line: 368, column: 3, scope: !2113)
!2121 = distinct !DISubprogram(name: "atoll", scope: !2104, file: !2104, line: 373, type: !2122, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2125)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!2124, !718}
!2124 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2125 = !{!2126}
!2126 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2121, file: !2104, line: 373, type: !718)
!2127 = !DILocation(line: 0, scope: !2121)
!2128 = !DILocation(line: 375, column: 10, scope: !2121)
!2129 = !DILocation(line: 375, column: 3, scope: !2121)
!2130 = distinct !DISubprogram(name: "bsearch", scope: !2131, file: !2131, line: 20, type: !2132, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2135)
!2131 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!717, !1139, !1139, !1354, !1354, !2134}
!2134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2104, line: 808, baseType: !1343)
!2135 = !{!2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145}
!2136 = !DILocalVariable(name: "__key", arg: 1, scope: !2130, file: !2131, line: 20, type: !1139)
!2137 = !DILocalVariable(name: "__base", arg: 2, scope: !2130, file: !2131, line: 20, type: !1139)
!2138 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2130, file: !2131, line: 20, type: !1354)
!2139 = !DILocalVariable(name: "__size", arg: 4, scope: !2130, file: !2131, line: 20, type: !1354)
!2140 = !DILocalVariable(name: "__compar", arg: 5, scope: !2130, file: !2131, line: 21, type: !2134)
!2141 = !DILocalVariable(name: "__l", scope: !2130, file: !2131, line: 23, type: !1354)
!2142 = !DILocalVariable(name: "__u", scope: !2130, file: !2131, line: 23, type: !1354)
!2143 = !DILocalVariable(name: "__idx", scope: !2130, file: !2131, line: 23, type: !1354)
!2144 = !DILocalVariable(name: "__p", scope: !2130, file: !2131, line: 24, type: !1139)
!2145 = !DILocalVariable(name: "__comparison", scope: !2130, file: !2131, line: 25, type: !713)
!2146 = !DILocation(line: 0, scope: !2130)
!2147 = !DILocation(line: 29, column: 3, scope: !2130)
!2148 = !DILocation(line: 27, column: 7, scope: !2130)
!2149 = !DILocation(line: 29, column: 14, scope: !2130)
!2150 = !DILocation(line: 31, column: 20, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2130, file: !2131, line: 30, column: 5)
!2152 = !DILocation(line: 31, column: 27, scope: !2151)
!2153 = !DILocation(line: 32, column: 56, scope: !2151)
!2154 = !DILocation(line: 32, column: 47, scope: !2151)
!2155 = !DILocation(line: 33, column: 22, scope: !2151)
!2156 = !DILocation(line: 34, column: 24, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2151, file: !2131, line: 34, column: 11)
!2158 = !DILocation(line: 34, column: 11, scope: !2151)
!2159 = !DILocation(line: 36, column: 29, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2157, file: !2131, line: 36, column: 16)
!2161 = !DILocation(line: 36, column: 16, scope: !2157)
!2162 = !DILocation(line: 37, column: 14, scope: !2160)
!2163 = distinct !{!2163, !2147, !2164}
!2164 = !DILocation(line: 40, column: 5, scope: !2130)
!2165 = !DILocation(line: 43, column: 1, scope: !2130)
!2166 = distinct !DISubprogram(name: "atof", scope: !2167, file: !2167, line: 25, type: !2168, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2171)
!2167 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2168 = !DISubroutineType(types: !2169)
!2169 = !{!2170, !718}
!2170 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2171 = !{!2172}
!2172 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2166, file: !2167, line: 25, type: !718)
!2173 = !DILocation(line: 0, scope: !2166)
!2174 = !DILocation(line: 27, column: 10, scope: !2166)
!2175 = !DILocation(line: 27, column: 3, scope: !2166)
!2176 = distinct !DISubprogram(name: "strtoimax", scope: !2177, file: !2177, line: 324, type: !2178, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2184)
!2177 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!2180, !1937, !2183, !713}
!2180 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2181, line: 101, baseType: !2182)
!2181 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1989, line: 72, baseType: !776)
!2183 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !714)
!2184 = !{!2185, !2186, !2187}
!2185 = !DILocalVariable(name: "nptr", arg: 1, scope: !2176, file: !2177, line: 324, type: !1937)
!2186 = !DILocalVariable(name: "endptr", arg: 2, scope: !2176, file: !2177, line: 324, type: !2183)
!2187 = !DILocalVariable(name: "base", arg: 3, scope: !2176, file: !2177, line: 324, type: !713)
!2188 = !DILocation(line: 0, scope: !2176)
!2189 = !DILocation(line: 327, column: 10, scope: !2176)
!2190 = !DILocation(line: 327, column: 3, scope: !2176)
!2191 = distinct !DISubprogram(name: "strtoumax", scope: !2177, file: !2177, line: 336, type: !2192, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2196)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!2194, !1937, !2183, !713}
!2194 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2181, line: 102, baseType: !2195)
!2195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1989, line: 73, baseType: !774)
!2196 = !{!2197, !2198, !2199}
!2197 = !DILocalVariable(name: "nptr", arg: 1, scope: !2191, file: !2177, line: 336, type: !1937)
!2198 = !DILocalVariable(name: "endptr", arg: 2, scope: !2191, file: !2177, line: 336, type: !2183)
!2199 = !DILocalVariable(name: "base", arg: 3, scope: !2191, file: !2177, line: 336, type: !713)
!2200 = !DILocation(line: 0, scope: !2191)
!2201 = !DILocation(line: 339, column: 10, scope: !2191)
!2202 = !DILocation(line: 339, column: 3, scope: !2191)
!2203 = distinct !DISubprogram(name: "wcstoimax", scope: !2177, file: !2177, line: 348, type: !2204, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2213)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!2180, !2206, !2210, !713}
!2206 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2207)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2209)
!2209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2177, line: 34, baseType: !713)
!2210 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2211)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2213 = !{!2214, !2215, !2216}
!2214 = !DILocalVariable(name: "nptr", arg: 1, scope: !2203, file: !2177, line: 348, type: !2206)
!2215 = !DILocalVariable(name: "endptr", arg: 2, scope: !2203, file: !2177, line: 348, type: !2210)
!2216 = !DILocalVariable(name: "base", arg: 3, scope: !2203, file: !2177, line: 348, type: !713)
!2217 = !DILocation(line: 0, scope: !2203)
!2218 = !DILocation(line: 351, column: 10, scope: !2203)
!2219 = !DILocation(line: 351, column: 3, scope: !2203)
!2220 = distinct !DISubprogram(name: "wcstoumax", scope: !2177, file: !2177, line: 362, type: !2221, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2223)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!2194, !2206, !2210, !713}
!2223 = !{!2224, !2225, !2226}
!2224 = !DILocalVariable(name: "nptr", arg: 1, scope: !2220, file: !2177, line: 362, type: !2206)
!2225 = !DILocalVariable(name: "endptr", arg: 2, scope: !2220, file: !2177, line: 362, type: !2210)
!2226 = !DILocalVariable(name: "base", arg: 3, scope: !2220, file: !2177, line: 362, type: !713)
!2227 = !DILocation(line: 0, scope: !2220)
!2228 = !DILocation(line: 365, column: 10, scope: !2220)
!2229 = !DILocation(line: 365, column: 3, scope: !2220)
!2230 = distinct !DISubprogram(name: "stat", scope: !2231, file: !2231, line: 453, type: !2232, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2269)
!2231 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!713, !718, !2234}
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2236, line: 46, size: 1152, elements: !2237)
!2236 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2237 = !{!2238, !2240, !2242, !2244, !2246, !2248, !2250, !2251, !2252, !2253, !2255, !2257, !2265, !2266, !2267}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2235, file: !2236, line: 48, baseType: !2239, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1989, line: 145, baseType: !774)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2235, file: !2236, line: 53, baseType: !2241, size: 64, offset: 64)
!2241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1989, line: 148, baseType: !774)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2235, file: !2236, line: 61, baseType: !2243, size: 64, offset: 128)
!2243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1989, line: 151, baseType: !774)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2235, file: !2236, line: 62, baseType: !2245, size: 32, offset: 192)
!2245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1989, line: 150, baseType: !7)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2235, file: !2236, line: 64, baseType: !2247, size: 32, offset: 224)
!2247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1989, line: 146, baseType: !7)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2235, file: !2236, line: 65, baseType: !2249, size: 32, offset: 256)
!2249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1989, line: 147, baseType: !7)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2235, file: !2236, line: 67, baseType: !713, size: 32, offset: 288)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2235, file: !2236, line: 69, baseType: !2239, size: 64, offset: 320)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2235, file: !2236, line: 74, baseType: !1988, size: 64, offset: 384)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2235, file: !2236, line: 78, baseType: !2254, size: 64, offset: 448)
!2254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1989, line: 174, baseType: !776)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2235, file: !2236, line: 80, baseType: !2256, size: 64, offset: 512)
!2256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1989, line: 179, baseType: !776)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2235, file: !2236, line: 91, baseType: !2258, size: 128, offset: 576)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2259, line: 10, size: 128, elements: !2260)
!2259 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2260 = !{!2261, !2263}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2258, file: !2259, line: 12, baseType: !2262, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1989, line: 160, baseType: !776)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2258, file: !2259, line: 16, baseType: !2264, size: 64, offset: 64)
!2264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1989, line: 196, baseType: !776)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2235, file: !2236, line: 92, baseType: !2258, size: 128, offset: 704)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2235, file: !2236, line: 93, baseType: !2258, size: 128, offset: 832)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2235, file: !2236, line: 106, baseType: !2268, size: 192, offset: 960)
!2268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2264, size: 192, elements: !794)
!2269 = !{!2270, !2271}
!2270 = !DILocalVariable(name: "__path", arg: 1, scope: !2230, file: !2231, line: 453, type: !718)
!2271 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2230, file: !2231, line: 453, type: !2234)
!2272 = !DILocation(line: 0, scope: !2230)
!2273 = !DILocation(line: 455, column: 10, scope: !2230)
!2274 = !DILocation(line: 455, column: 3, scope: !2230)
!2275 = distinct !DISubprogram(name: "lstat", scope: !2231, file: !2231, line: 460, type: !2232, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2276)
!2276 = !{!2277, !2278}
!2277 = !DILocalVariable(name: "__path", arg: 1, scope: !2275, file: !2231, line: 460, type: !718)
!2278 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2275, file: !2231, line: 460, type: !2234)
!2279 = !DILocation(line: 0, scope: !2275)
!2280 = !DILocation(line: 462, column: 10, scope: !2275)
!2281 = !DILocation(line: 462, column: 3, scope: !2275)
!2282 = distinct !DISubprogram(name: "fstat", scope: !2231, file: !2231, line: 467, type: !2283, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2285)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!713, !713, !2234}
!2285 = !{!2286, !2287}
!2286 = !DILocalVariable(name: "__fd", arg: 1, scope: !2282, file: !2231, line: 467, type: !713)
!2287 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2282, file: !2231, line: 467, type: !2234)
!2288 = !DILocation(line: 0, scope: !2282)
!2289 = !DILocation(line: 469, column: 10, scope: !2282)
!2290 = !DILocation(line: 469, column: 3, scope: !2282)
!2291 = distinct !DISubprogram(name: "fstatat", scope: !2231, file: !2231, line: 474, type: !2292, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2294)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{!713, !713, !718, !2234, !713}
!2294 = !{!2295, !2296, !2297, !2298}
!2295 = !DILocalVariable(name: "__fd", arg: 1, scope: !2291, file: !2231, line: 474, type: !713)
!2296 = !DILocalVariable(name: "__filename", arg: 2, scope: !2291, file: !2231, line: 474, type: !718)
!2297 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2291, file: !2231, line: 474, type: !2234)
!2298 = !DILocalVariable(name: "__flag", arg: 4, scope: !2291, file: !2231, line: 474, type: !713)
!2299 = !DILocation(line: 0, scope: !2291)
!2300 = !DILocation(line: 477, column: 10, scope: !2291)
!2301 = !DILocation(line: 477, column: 3, scope: !2291)
!2302 = distinct !DISubprogram(name: "mknod", scope: !2231, file: !2231, line: 483, type: !2303, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2305)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{!713, !718, !2245, !2239}
!2305 = !{!2306, !2307, !2308}
!2306 = !DILocalVariable(name: "__path", arg: 1, scope: !2302, file: !2231, line: 483, type: !718)
!2307 = !DILocalVariable(name: "__mode", arg: 2, scope: !2302, file: !2231, line: 483, type: !2245)
!2308 = !DILocalVariable(name: "__dev", arg: 3, scope: !2302, file: !2231, line: 483, type: !2239)
!2309 = !DILocation(line: 0, scope: !2302)
!2310 = !DILocation(line: 485, column: 10, scope: !2302)
!2311 = !DILocation(line: 485, column: 3, scope: !2302)
!2312 = distinct !DISubprogram(name: "mknodat", scope: !2231, file: !2231, line: 491, type: !2313, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2315)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!713, !713, !718, !2245, !2239}
!2315 = !{!2316, !2317, !2318, !2319}
!2316 = !DILocalVariable(name: "__fd", arg: 1, scope: !2312, file: !2231, line: 491, type: !713)
!2317 = !DILocalVariable(name: "__path", arg: 2, scope: !2312, file: !2231, line: 491, type: !718)
!2318 = !DILocalVariable(name: "__mode", arg: 3, scope: !2312, file: !2231, line: 491, type: !2245)
!2319 = !DILocalVariable(name: "__dev", arg: 4, scope: !2312, file: !2231, line: 491, type: !2239)
!2320 = !DILocation(line: 0, scope: !2312)
!2321 = !DILocation(line: 494, column: 10, scope: !2312)
!2322 = !DILocation(line: 494, column: 3, scope: !2312)
!2323 = distinct !DISubprogram(name: "stat64", scope: !2231, file: !2231, line: 502, type: !2324, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2346)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!713, !718, !2326}
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2236, line: 119, size: 1152, elements: !2328)
!2328 = !{!2329, !2330, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2342, !2343, !2344, !2345}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2327, file: !2236, line: 121, baseType: !2239, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2327, file: !2236, line: 123, baseType: !2331, size: 64, offset: 64)
!2331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1989, line: 149, baseType: !774)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2327, file: !2236, line: 124, baseType: !2243, size: 64, offset: 128)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2327, file: !2236, line: 125, baseType: !2245, size: 32, offset: 192)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2327, file: !2236, line: 132, baseType: !2247, size: 32, offset: 224)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2327, file: !2236, line: 133, baseType: !2249, size: 32, offset: 256)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2327, file: !2236, line: 135, baseType: !713, size: 32, offset: 288)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2327, file: !2236, line: 136, baseType: !2239, size: 64, offset: 320)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2327, file: !2236, line: 137, baseType: !1988, size: 64, offset: 384)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2327, file: !2236, line: 143, baseType: !2254, size: 64, offset: 448)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2327, file: !2236, line: 144, baseType: !2341, size: 64, offset: 512)
!2341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1989, line: 180, baseType: !776)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2327, file: !2236, line: 152, baseType: !2258, size: 128, offset: 576)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2327, file: !2236, line: 153, baseType: !2258, size: 128, offset: 704)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2327, file: !2236, line: 154, baseType: !2258, size: 128, offset: 832)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2327, file: !2236, line: 164, baseType: !2268, size: 192, offset: 960)
!2346 = !{!2347, !2348}
!2347 = !DILocalVariable(name: "__path", arg: 1, scope: !2323, file: !2231, line: 502, type: !718)
!2348 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2323, file: !2231, line: 502, type: !2326)
!2349 = !DILocation(line: 0, scope: !2323)
!2350 = !DILocation(line: 504, column: 10, scope: !2323)
!2351 = !DILocation(line: 504, column: 3, scope: !2323)
!2352 = distinct !DISubprogram(name: "lstat64", scope: !2231, file: !2231, line: 509, type: !2324, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2353)
!2353 = !{!2354, !2355}
!2354 = !DILocalVariable(name: "__path", arg: 1, scope: !2352, file: !2231, line: 509, type: !718)
!2355 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2352, file: !2231, line: 509, type: !2326)
!2356 = !DILocation(line: 0, scope: !2352)
!2357 = !DILocation(line: 511, column: 10, scope: !2352)
!2358 = !DILocation(line: 511, column: 3, scope: !2352)
!2359 = distinct !DISubprogram(name: "fstat64", scope: !2231, file: !2231, line: 516, type: !2360, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2362)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!713, !713, !2326}
!2362 = !{!2363, !2364}
!2363 = !DILocalVariable(name: "__fd", arg: 1, scope: !2359, file: !2231, line: 516, type: !713)
!2364 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2359, file: !2231, line: 516, type: !2326)
!2365 = !DILocation(line: 0, scope: !2359)
!2366 = !DILocation(line: 518, column: 10, scope: !2359)
!2367 = !DILocation(line: 518, column: 3, scope: !2359)
!2368 = distinct !DISubprogram(name: "fstatat64", scope: !2231, file: !2231, line: 523, type: !2369, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2371)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!713, !713, !718, !2326, !713}
!2371 = !{!2372, !2373, !2374, !2375}
!2372 = !DILocalVariable(name: "__fd", arg: 1, scope: !2368, file: !2231, line: 523, type: !713)
!2373 = !DILocalVariable(name: "__filename", arg: 2, scope: !2368, file: !2231, line: 523, type: !718)
!2374 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2368, file: !2231, line: 523, type: !2326)
!2375 = !DILocalVariable(name: "__flag", arg: 4, scope: !2368, file: !2231, line: 523, type: !713)
!2376 = !DILocation(line: 0, scope: !2368)
!2377 = !DILocation(line: 526, column: 10, scope: !2368)
!2378 = !DILocation(line: 526, column: 3, scope: !2368)
!2379 = distinct !DISubprogram(name: "function_attribute_inlinable_p", scope: !3, file: !3, line: 73, type: !2380, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2385)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!712, !2382}
!2382 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_tree", file: !721, line: 59, baseType: !2383)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !723)
!2385 = !{!2386, !2387, !2390, !2394}
!2386 = !DILocalVariable(name: "fndecl", arg: 1, scope: !2379, file: !3, line: 73, type: !2382)
!2387 = !DILocalVariable(name: "a", scope: !2388, file: !3, line: 77, type: !2382)
!2388 = distinct !DILexicalBlock(scope: !2389, file: !3, line: 76, column: 5)
!2389 = distinct !DILexicalBlock(scope: !2379, file: !3, line: 75, column: 7)
!2390 = !DILocalVariable(name: "name", scope: !2391, file: !3, line: 81, type: !2382)
!2391 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 80, column: 2)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 79, column: 7)
!2393 = distinct !DILexicalBlock(scope: !2388, file: !3, line: 79, column: 7)
!2394 = !DILocalVariable(name: "i", scope: !2391, file: !3, line: 82, type: !713)
!2395 = !DILocation(line: 0, scope: !2379)
!2396 = !DILocation(line: 75, column: 15, scope: !2389)
!2397 = !DILocation(line: 75, column: 7, scope: !2389)
!2398 = !DILocation(line: 75, column: 7, scope: !2379)
!2399 = !DILocation(line: 79, column: 16, scope: !2393)
!2400 = !DILocation(line: 79, column: 12, scope: !2393)
!2401 = !DILocation(line: 0, scope: !2393)
!2402 = !DILocation(line: 0, scope: !2388)
!2403 = !DILocation(line: 79, column: 7, scope: !2393)
!2404 = !DILocation(line: 81, column: 22, scope: !2391)
!2405 = !DILocation(line: 0, scope: !2391)
!2406 = !DILocation(line: 84, column: 9, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2391, file: !3, line: 84, column: 4)
!2408 = !DILocation(line: 0, scope: !2407)
!2409 = !DILocation(line: 84, column: 24, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2407, file: !3, line: 84, column: 4)
!2411 = !DILocation(line: 84, column: 43, scope: !2410)
!2412 = !DILocation(line: 84, column: 48, scope: !2410)
!2413 = !DILocation(line: 84, column: 4, scope: !2407)
!2414 = !DILocation(line: 85, column: 10, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2410, file: !3, line: 85, column: 10)
!2416 = !DILocation(line: 85, column: 10, scope: !2410)
!2417 = !DILocation(line: 86, column: 23, scope: !2415)
!2418 = !DILocation(line: 86, column: 15, scope: !2415)
!2419 = !DILocation(line: 86, column: 8, scope: !2415)
!2420 = !DILocation(line: 84, column: 58, scope: !2410)
!2421 = !DILocation(line: 84, column: 4, scope: !2410)
!2422 = distinct !{!2422, !2413, !2423}
!2423 = !DILocation(line: 86, column: 61, scope: !2407)
!2424 = !DILocation(line: 79, column: 49, scope: !2392)
!2425 = !DILocation(line: 79, column: 7, scope: !2392)
!2426 = distinct !{!2426, !2403, !2427}
!2427 = !DILocation(line: 87, column: 2, scope: !2393)
!2428 = !DILocation(line: 90, column: 3, scope: !2379)
!2429 = !DILocation(line: 91, column: 1, scope: !2379)
!2430 = distinct !DISubprogram(name: "set_decl_origin_self", scope: !3, file: !3, line: 142, type: !2431, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2433)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{null, !720}
!2433 = !{!2434, !2435}
!2434 = !DILocalVariable(name: "decl", arg: 1, scope: !2430, file: !3, line: 142, type: !720)
!2435 = !DILocalVariable(name: "arg", scope: !2436, file: !3, line: 149, type: !720)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !3, line: 148, column: 2)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 147, column: 11)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !3, line: 145, column: 5)
!2439 = distinct !DILexicalBlock(scope: !2430, file: !3, line: 144, column: 7)
!2440 = !DILocation(line: 0, scope: !2430)
!2441 = !DILocation(line: 144, column: 7, scope: !2439)
!2442 = !DILocation(line: 144, column: 35, scope: !2439)
!2443 = !DILocation(line: 144, column: 7, scope: !2430)
!2444 = !DILocation(line: 146, column: 35, scope: !2438)
!2445 = !DILocation(line: 147, column: 11, scope: !2437)
!2446 = !DILocation(line: 147, column: 28, scope: !2437)
!2447 = !DILocation(line: 147, column: 11, scope: !2438)
!2448 = !DILocation(line: 151, column: 15, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2436, file: !3, line: 151, column: 4)
!2450 = !DILocation(line: 151, column: 9, scope: !2449)
!2451 = !DILocation(line: 0, scope: !2449)
!2452 = !DILocation(line: 0, scope: !2436)
!2453 = !DILocation(line: 151, column: 4, scope: !2449)
!2454 = !DILocation(line: 152, column: 6, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2449, file: !3, line: 151, column: 4)
!2456 = !DILocation(line: 152, column: 33, scope: !2455)
!2457 = !DILocation(line: 151, column: 49, scope: !2455)
!2458 = !DILocation(line: 151, column: 4, scope: !2455)
!2459 = distinct !{!2459, !2453, !2460}
!2460 = !DILocation(line: 152, column: 35, scope: !2449)
!2461 = !DILocation(line: 153, column: 8, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2436, file: !3, line: 153, column: 8)
!2463 = !DILocation(line: 153, column: 28, scope: !2462)
!2464 = !DILocation(line: 154, column: 8, scope: !2462)
!2465 = !DILocation(line: 154, column: 34, scope: !2462)
!2466 = !DILocation(line: 154, column: 31, scope: !2462)
!2467 = !DILocation(line: 153, column: 8, scope: !2436)
!2468 = !DILocation(line: 155, column: 6, scope: !2462)
!2469 = !DILocation(line: 158, column: 1, scope: !2430)
!2470 = distinct !DISubprogram(name: "set_block_origin_self", scope: !3, file: !3, line: 104, type: !2431, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2471)
!2471 = !{!2472, !2473, !2477}
!2472 = !DILocalVariable(name: "stmt", arg: 1, scope: !2470, file: !3, line: 104, type: !720)
!2473 = !DILocalVariable(name: "local_decl", scope: !2474, file: !3, line: 111, type: !720)
!2474 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 110, column: 7)
!2475 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 107, column: 5)
!2476 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 106, column: 7)
!2477 = !DILocalVariable(name: "subblock", scope: !2478, file: !3, line: 120, type: !720)
!2478 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 119, column: 7)
!2479 = !DILocation(line: 0, scope: !2470)
!2480 = !DILocation(line: 106, column: 7, scope: !2476)
!2481 = !DILocation(line: 106, column: 36, scope: !2476)
!2482 = !DILocation(line: 106, column: 7, scope: !2470)
!2483 = !DILocation(line: 108, column: 36, scope: !2475)
!2484 = !DILocation(line: 113, column: 20, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 113, column: 2)
!2486 = !DILocation(line: 113, column: 7, scope: !2485)
!2487 = !DILocation(line: 0, scope: !2485)
!2488 = !DILocation(line: 0, scope: !2474)
!2489 = !DILocation(line: 114, column: 18, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2485, file: !3, line: 113, column: 2)
!2491 = !DILocation(line: 113, column: 2, scope: !2485)
!2492 = !DILocation(line: 116, column: 4, scope: !2490)
!2493 = !DILocation(line: 115, column: 20, scope: !2490)
!2494 = !DILocation(line: 113, column: 2, scope: !2490)
!2495 = distinct !{!2495, !2491, !2496}
!2496 = !DILocation(line: 116, column: 36, scope: !2485)
!2497 = !DILocation(line: 122, column: 18, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 122, column: 2)
!2499 = !DILocation(line: 122, column: 7, scope: !2498)
!2500 = !DILocation(line: 0, scope: !2498)
!2501 = !DILocation(line: 0, scope: !2478)
!2502 = !DILocation(line: 123, column: 16, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2498, file: !3, line: 122, column: 2)
!2504 = !DILocation(line: 122, column: 2, scope: !2498)
!2505 = !DILocation(line: 125, column: 4, scope: !2503)
!2506 = !DILocation(line: 124, column: 18, scope: !2503)
!2507 = !DILocation(line: 122, column: 2, scope: !2503)
!2508 = distinct !{!2508, !2504, !2509}
!2509 = !DILocation(line: 125, column: 35, scope: !2498)
!2510 = !DILocation(line: 128, column: 1, scope: !2470)
!2511 = distinct !DISubprogram(name: "set_decl_abstract_flags", scope: !3, file: !3, line: 200, type: !2512, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2514)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{null, !720, !713}
!2514 = !{!2515, !2516, !2517}
!2515 = !DILocalVariable(name: "decl", arg: 1, scope: !2511, file: !3, line: 200, type: !720)
!2516 = !DILocalVariable(name: "setting", arg: 2, scope: !2511, file: !3, line: 200, type: !713)
!2517 = !DILocalVariable(name: "arg", scope: !2518, file: !3, line: 205, type: !720)
!2518 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 204, column: 5)
!2519 = distinct !DILexicalBlock(scope: !2511, file: !3, line: 203, column: 7)
!2520 = !DILocation(line: 0, scope: !2511)
!2521 = !DILocation(line: 202, column: 3, scope: !2511)
!2522 = !DILocation(line: 202, column: 24, scope: !2511)
!2523 = !DILocation(line: 203, column: 7, scope: !2519)
!2524 = !DILocation(line: 203, column: 24, scope: !2519)
!2525 = !DILocation(line: 203, column: 7, scope: !2511)
!2526 = !DILocation(line: 207, column: 18, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2518, file: !3, line: 207, column: 7)
!2528 = !DILocation(line: 207, column: 12, scope: !2527)
!2529 = !DILocation(line: 0, scope: !2527)
!2530 = !DILocation(line: 0, scope: !2518)
!2531 = !DILocation(line: 207, column: 7, scope: !2527)
!2532 = !DILocation(line: 208, column: 2, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2527, file: !3, line: 207, column: 7)
!2534 = !DILocation(line: 208, column: 22, scope: !2533)
!2535 = !DILocation(line: 207, column: 52, scope: !2533)
!2536 = !DILocation(line: 207, column: 7, scope: !2533)
!2537 = distinct !{!2537, !2531, !2538}
!2538 = !DILocation(line: 208, column: 24, scope: !2527)
!2539 = !DILocation(line: 209, column: 11, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2518, file: !3, line: 209, column: 11)
!2541 = !DILocation(line: 209, column: 31, scope: !2540)
!2542 = !DILocation(line: 210, column: 4, scope: !2540)
!2543 = !DILocation(line: 210, column: 30, scope: !2540)
!2544 = !DILocation(line: 210, column: 27, scope: !2540)
!2545 = !DILocation(line: 209, column: 11, scope: !2518)
!2546 = !DILocation(line: 211, column: 2, scope: !2540)
!2547 = !DILocation(line: 213, column: 1, scope: !2511)
!2548 = distinct !DISubprogram(name: "set_block_abstract_flags", scope: !3, file: !3, line: 166, type: !2512, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2549)
!2549 = !{!2550, !2551, !2552, !2553, !2554}
!2550 = !DILocalVariable(name: "stmt", arg: 1, scope: !2548, file: !3, line: 166, type: !720)
!2551 = !DILocalVariable(name: "setting", arg: 2, scope: !2548, file: !3, line: 166, type: !713)
!2552 = !DILocalVariable(name: "local_decl", scope: !2548, file: !3, line: 168, type: !720)
!2553 = !DILocalVariable(name: "subblock", scope: !2548, file: !3, line: 169, type: !720)
!2554 = !DILocalVariable(name: "i", scope: !2548, file: !3, line: 170, type: !7)
!2555 = !DILocation(line: 0, scope: !2548)
!2556 = !DILocation(line: 172, column: 3, scope: !2548)
!2557 = !DILocation(line: 172, column: 25, scope: !2548)
!2558 = !DILocation(line: 174, column: 21, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2548, file: !3, line: 174, column: 3)
!2560 = !DILocation(line: 174, column: 8, scope: !2559)
!2561 = !DILocation(line: 0, scope: !2559)
!2562 = !DILocation(line: 175, column: 19, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2559, file: !3, line: 174, column: 3)
!2564 = !DILocation(line: 174, column: 3, scope: !2559)
!2565 = !DILocation(line: 0, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2567, file: !3, line: 179, column: 3)
!2567 = distinct !DILexicalBlock(scope: !2548, file: !3, line: 179, column: 3)
!2568 = !DILocation(line: 179, column: 3, scope: !2567)
!2569 = !DILocation(line: 177, column: 5, scope: !2563)
!2570 = !DILocation(line: 176, column: 21, scope: !2563)
!2571 = !DILocation(line: 174, column: 3, scope: !2563)
!2572 = distinct !{!2572, !2564, !2573}
!2573 = !DILocation(line: 177, column: 49, scope: !2559)
!2574 = !DILocation(line: 0, scope: !2567)
!2575 = !DILocation(line: 179, column: 19, scope: !2566)
!2576 = !DILocation(line: 179, column: 17, scope: !2566)
!2577 = !DILocation(line: 181, column: 20, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2566, file: !3, line: 180, column: 5)
!2579 = !DILocation(line: 182, column: 12, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2578, file: !3, line: 182, column: 11)
!2581 = !DILocation(line: 182, column: 35, scope: !2580)
!2582 = !DILocation(line: 182, column: 47, scope: !2580)
!2583 = !DILocation(line: 182, column: 51, scope: !2580)
!2584 = !DILocation(line: 183, column: 4, scope: !2580)
!2585 = !DILocation(line: 183, column: 30, scope: !2580)
!2586 = !DILocation(line: 182, column: 11, scope: !2578)
!2587 = !DILocation(line: 184, column: 2, scope: !2580)
!2588 = !DILocation(line: 179, column: 56, scope: !2566)
!2589 = !DILocation(line: 179, column: 3, scope: !2566)
!2590 = distinct !{!2590, !2568, !2591}
!2591 = !DILocation(line: 185, column: 5, scope: !2567)
!2592 = !DILocation(line: 187, column: 19, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2548, file: !3, line: 187, column: 3)
!2594 = !DILocation(line: 187, column: 8, scope: !2593)
!2595 = !DILocation(line: 0, scope: !2593)
!2596 = !DILocation(line: 188, column: 17, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2593, file: !3, line: 187, column: 3)
!2598 = !DILocation(line: 187, column: 3, scope: !2593)
!2599 = !DILocation(line: 190, column: 5, scope: !2597)
!2600 = !DILocation(line: 189, column: 19, scope: !2597)
!2601 = !DILocation(line: 187, column: 3, scope: !2597)
!2602 = distinct !{!2602, !2598, !2603}
!2603 = !DILocation(line: 190, column: 48, scope: !2593)
!2604 = !DILocation(line: 191, column: 1, scope: !2548)
!2605 = distinct !DISubprogram(name: "get_hard_reg_initial_reg", scope: !3, file: !3, line: 219, type: !2606, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2608)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!895, !895}
!2608 = !{!2609, !2610, !2611}
!2609 = !DILocalVariable(name: "reg", arg: 1, scope: !2605, file: !3, line: 219, type: !895)
!2610 = !DILocalVariable(name: "ivs", scope: !2605, file: !3, line: 221, type: !1901)
!2611 = !DILocalVariable(name: "i", scope: !2605, file: !3, line: 222, type: !713)
!2612 = !DILocation(line: 0, scope: !2605)
!2613 = !DILocation(line: 221, column: 44, scope: !2605)
!2614 = !DILocation(line: 224, column: 11, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2605, file: !3, line: 224, column: 7)
!2616 = !DILocation(line: 224, column: 7, scope: !2605)
!2617 = !DILocation(line: 0, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2619, file: !3, line: 227, column: 3)
!2619 = distinct !DILexicalBlock(scope: !2605, file: !3, line: 227, column: 3)
!2620 = !DILocation(line: 0, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2618, file: !3, line: 228, column: 9)
!2622 = !DILocation(line: 227, column: 3, scope: !2619)
!2623 = !DILocation(line: 0, scope: !2619)
!2624 = !DILocation(line: 227, column: 24, scope: !2618)
!2625 = !DILocation(line: 227, column: 17, scope: !2618)
!2626 = !DILocation(line: 228, column: 27, scope: !2621)
!2627 = !DILocation(line: 228, column: 38, scope: !2621)
!2628 = !DILocation(line: 228, column: 9, scope: !2621)
!2629 = !DILocation(line: 228, column: 9, scope: !2618)
!2630 = !DILocation(line: 229, column: 19, scope: !2621)
!2631 = !DILocation(line: 229, column: 30, scope: !2621)
!2632 = !DILocation(line: 229, column: 7, scope: !2621)
!2633 = !DILocation(line: 227, column: 38, scope: !2618)
!2634 = !DILocation(line: 227, column: 3, scope: !2618)
!2635 = distinct !{!2635, !2622, !2636}
!2636 = !DILocation(line: 229, column: 30, scope: !2619)
!2637 = !DILocation(line: 232, column: 1, scope: !2605)
!2638 = distinct !DISubprogram(name: "get_hard_reg_initial_val", scope: !3, file: !3, line: 238, type: !2639, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2641)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{!895, !5, !7}
!2641 = !{!2642, !2643, !2644, !2645}
!2642 = !DILocalVariable(name: "mode", arg: 1, scope: !2638, file: !3, line: 238, type: !5)
!2643 = !DILocalVariable(name: "regno", arg: 2, scope: !2638, file: !3, line: 238, type: !7)
!2644 = !DILocalVariable(name: "ivs", scope: !2638, file: !3, line: 240, type: !1901)
!2645 = !DILocalVariable(name: "rv", scope: !2638, file: !3, line: 241, type: !895)
!2646 = !DILocation(line: 0, scope: !2638)
!2647 = !DILocation(line: 243, column: 8, scope: !2638)
!2648 = !DILocation(line: 244, column: 7, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2638, file: !3, line: 244, column: 7)
!2650 = !DILocation(line: 244, column: 7, scope: !2638)
!2651 = !DILocation(line: 247, column: 15, scope: !2638)
!2652 = !DILocation(line: 248, column: 11, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2638, file: !3, line: 248, column: 7)
!2654 = !DILocation(line: 248, column: 7, scope: !2638)
!2655 = !DILocation(line: 250, column: 13, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2653, file: !3, line: 249, column: 5)
!2657 = !DILocation(line: 251, column: 12, scope: !2656)
!2658 = !DILocation(line: 251, column: 24, scope: !2656)
!2659 = !DILocation(line: 252, column: 12, scope: !2656)
!2660 = !DILocation(line: 252, column: 24, scope: !2656)
!2661 = !DILocation(line: 253, column: 22, scope: !2656)
!2662 = !DILocation(line: 253, column: 12, scope: !2656)
!2663 = !DILocation(line: 253, column: 20, scope: !2656)
!2664 = !DILocation(line: 254, column: 35, scope: !2656)
!2665 = !DILocation(line: 255, column: 5, scope: !2656)
!2666 = !DILocation(line: 257, column: 12, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2638, file: !3, line: 257, column: 7)
!2668 = !DILocation(line: 257, column: 32, scope: !2667)
!2669 = !DILocation(line: 257, column: 24, scope: !2667)
!2670 = !DILocation(line: 257, column: 7, scope: !2638)
!2671 = !DILocation(line: 259, column: 24, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2667, file: !3, line: 258, column: 5)
!2673 = !DILocation(line: 260, column: 22, scope: !2672)
!2674 = !DILocation(line: 260, column: 20, scope: !2672)
!2675 = !DILocation(line: 262, column: 5, scope: !2672)
!2676 = !DILocation(line: 264, column: 45, scope: !2638)
!2677 = !DILocation(line: 264, column: 8, scope: !2638)
!2678 = !DILocation(line: 264, column: 21, scope: !2638)
!2679 = !DILocation(line: 264, column: 3, scope: !2638)
!2680 = !DILocation(line: 264, column: 34, scope: !2638)
!2681 = !DILocation(line: 264, column: 43, scope: !2638)
!2682 = !DILocation(line: 265, column: 43, scope: !2638)
!2683 = !DILocation(line: 265, column: 8, scope: !2638)
!2684 = !DILocation(line: 265, column: 21, scope: !2638)
!2685 = !DILocation(line: 265, column: 3, scope: !2638)
!2686 = !DILocation(line: 265, column: 34, scope: !2638)
!2687 = !DILocation(line: 265, column: 41, scope: !2638)
!2688 = !DILocation(line: 267, column: 15, scope: !2638)
!2689 = !DILocation(line: 267, column: 39, scope: !2638)
!2690 = !DILocation(line: 267, column: 10, scope: !2638)
!2691 = !DILocation(line: 267, column: 43, scope: !2638)
!2692 = !DILocation(line: 267, column: 3, scope: !2638)
!2693 = !DILocation(line: 268, column: 1, scope: !2638)
!2694 = distinct !DISubprogram(name: "has_hard_reg_initial_val", scope: !3, file: !3, line: 275, type: !2639, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2695)
!2695 = !{!2696, !2697, !2698, !2699}
!2696 = !DILocalVariable(name: "mode", arg: 1, scope: !2694, file: !3, line: 275, type: !5)
!2697 = !DILocalVariable(name: "regno", arg: 2, scope: !2694, file: !3, line: 275, type: !7)
!2698 = !DILocalVariable(name: "ivs", scope: !2694, file: !3, line: 277, type: !1901)
!2699 = !DILocalVariable(name: "i", scope: !2694, file: !3, line: 278, type: !713)
!2700 = !DILocation(line: 0, scope: !2694)
!2701 = !DILocation(line: 280, column: 15, scope: !2694)
!2702 = !DILocation(line: 281, column: 11, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 281, column: 7)
!2704 = !DILocation(line: 281, column: 7, scope: !2694)
!2705 = !DILocation(line: 0, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2707, file: !3, line: 282, column: 5)
!2707 = distinct !DILexicalBlock(scope: !2703, file: !3, line: 282, column: 5)
!2708 = !DILocation(line: 0, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2706, file: !3, line: 283, column: 11)
!2710 = !DILocation(line: 282, column: 5, scope: !2707)
!2711 = !DILocation(line: 0, scope: !2707)
!2712 = !DILocation(line: 282, column: 26, scope: !2706)
!2713 = !DILocation(line: 282, column: 19, scope: !2706)
!2714 = !DILocation(line: 283, column: 11, scope: !2709)
!2715 = !DILocation(line: 283, column: 47, scope: !2709)
!2716 = !DILocation(line: 284, column: 4, scope: !2709)
!2717 = !DILocation(line: 284, column: 7, scope: !2709)
!2718 = !DILocation(line: 284, column: 40, scope: !2709)
!2719 = !DILocation(line: 283, column: 11, scope: !2706)
!2720 = !DILocation(line: 285, column: 14, scope: !2709)
!2721 = !DILocation(line: 285, column: 25, scope: !2709)
!2722 = !DILocation(line: 285, column: 2, scope: !2709)
!2723 = !DILocation(line: 282, column: 40, scope: !2706)
!2724 = !DILocation(line: 282, column: 5, scope: !2706)
!2725 = distinct !{!2725, !2710, !2726}
!2726 = !DILocation(line: 285, column: 25, scope: !2707)
!2727 = !DILocation(line: 288, column: 1, scope: !2694)
!2728 = distinct !DISubprogram(name: "rhs_regno", scope: !568, file: !568, line: 1051, type: !2729, scopeLine: 1052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2734)
!2729 = !DISubroutineType(types: !2730)
!2730 = !{!7, !2731}
!2731 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_rtx", file: !721, line: 51, baseType: !2732)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !897)
!2734 = !{!2735}
!2735 = !DILocalVariable(name: "x", arg: 1, scope: !2728, file: !568, line: 1051, type: !2731)
!2736 = !DILocation(line: 0, scope: !2728)
!2737 = !DILocation(line: 1053, column: 10, scope: !2728)
!2738 = !DILocation(line: 1053, column: 3, scope: !2728)
!2739 = distinct !DISubprogram(name: "emit_initial_value_sets", scope: !3, file: !3, line: 291, type: !1916, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2740)
!2740 = !{!2741, !2742, !2743}
!2741 = !DILocalVariable(name: "ivs", scope: !2739, file: !3, line: 293, type: !1901)
!2742 = !DILocalVariable(name: "i", scope: !2739, file: !3, line: 294, type: !713)
!2743 = !DILocalVariable(name: "seq", scope: !2739, file: !3, line: 295, type: !895)
!2744 = !DILocation(line: 293, column: 44, scope: !2739)
!2745 = !DILocation(line: 0, scope: !2739)
!2746 = !DILocation(line: 297, column: 11, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 297, column: 7)
!2748 = !DILocation(line: 297, column: 7, scope: !2739)
!2749 = !DILocation(line: 300, column: 3, scope: !2739)
!2750 = !DILocation(line: 0, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2752, file: !3, line: 301, column: 3)
!2752 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 301, column: 3)
!2753 = !DILocation(line: 301, column: 8, scope: !2752)
!2754 = !DILocation(line: 0, scope: !2752)
!2755 = !DILocation(line: 301, column: 24, scope: !2751)
!2756 = !DILocation(line: 301, column: 17, scope: !2751)
!2757 = !DILocation(line: 301, column: 3, scope: !2752)
!2758 = !DILocation(line: 302, column: 26, scope: !2751)
!2759 = !DILocation(line: 302, column: 37, scope: !2751)
!2760 = !DILocation(line: 302, column: 61, scope: !2751)
!2761 = !DILocation(line: 302, column: 5, scope: !2751)
!2762 = !DILocation(line: 301, column: 38, scope: !2751)
!2763 = !DILocation(line: 301, column: 3, scope: !2751)
!2764 = distinct !{!2764, !2757, !2765}
!2765 = !DILocation(line: 302, column: 69, scope: !2752)
!2766 = !DILocation(line: 303, column: 9, scope: !2739)
!2767 = !DILocation(line: 304, column: 3, scope: !2739)
!2768 = !DILocation(line: 306, column: 3, scope: !2739)
!2769 = !DILocation(line: 307, column: 3, scope: !2739)
!2770 = !DILocation(line: 308, column: 1, scope: !2739)
!2771 = distinct !DISubprogram(name: "allocate_initial_values", scope: !3, file: !3, line: 332, type: !2772, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2775)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{null, !2774}
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!2775 = !{!2776, !2777, !2780, !2781, !2785, !2786, !2791}
!2776 = !DILocalVariable(name: "reg_equiv_memory_loc", arg: 1, scope: !2771, file: !3, line: 332, type: !2774)
!2777 = !DILocalVariable(name: "ivs", scope: !2778, file: !3, line: 336, type: !1901)
!2778 = distinct !DILexicalBlock(scope: !2779, file: !3, line: 335, column: 5)
!2779 = distinct !DILexicalBlock(scope: !2771, file: !3, line: 334, column: 7)
!2780 = !DILocalVariable(name: "i", scope: !2778, file: !3, line: 337, type: !713)
!2781 = !DILocalVariable(name: "regno", scope: !2782, file: !3, line: 344, type: !713)
!2782 = distinct !DILexicalBlock(scope: !2783, file: !3, line: 343, column: 2)
!2783 = distinct !DILexicalBlock(scope: !2784, file: !3, line: 342, column: 7)
!2784 = distinct !DILexicalBlock(scope: !2778, file: !3, line: 342, column: 7)
!2785 = !DILocalVariable(name: "x", scope: !2782, file: !3, line: 345, type: !895)
!2786 = !DILocalVariable(name: "bb", scope: !2787, file: !3, line: 353, type: !1416)
!2787 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 352, column: 3)
!2788 = distinct !DILexicalBlock(scope: !2789, file: !3, line: 349, column: 12)
!2789 = distinct !DILexicalBlock(scope: !2790, file: !3, line: 348, column: 6)
!2790 = distinct !DILexicalBlock(scope: !2782, file: !3, line: 347, column: 8)
!2791 = !DILocalVariable(name: "new_regno", scope: !2787, file: !3, line: 354, type: !713)
!2792 = !DILocation(line: 0, scope: !2771)
!2793 = !DILocation(line: 334, column: 15, scope: !2779)
!2794 = !DILocation(line: 334, column: 7, scope: !2779)
!2795 = !DILocation(line: 334, column: 7, scope: !2771)
!2796 = !DILocation(line: 336, column: 48, scope: !2778)
!2797 = !DILocation(line: 0, scope: !2778)
!2798 = !DILocation(line: 339, column: 15, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2778, file: !3, line: 339, column: 11)
!2800 = !DILocation(line: 339, column: 11, scope: !2778)
!2801 = !DILocation(line: 0, scope: !2783)
!2802 = !DILocation(line: 0, scope: !2782)
!2803 = !DILocation(line: 342, column: 7, scope: !2784)
!2804 = !DILocation(line: 0, scope: !2784)
!2805 = !DILocation(line: 342, column: 28, scope: !2783)
!2806 = !DILocation(line: 342, column: 21, scope: !2783)
!2807 = !DILocation(line: 344, column: 16, scope: !2782)
!2808 = !DILocation(line: 345, column: 20, scope: !2782)
!2809 = !DILocation(line: 345, column: 49, scope: !2782)
!2810 = !DILocation(line: 345, column: 60, scope: !2782)
!2811 = !DILocation(line: 345, column: 12, scope: !2782)
!2812 = !DILocation(line: 347, column: 8, scope: !2790)
!2813 = !DILocation(line: 347, column: 10, scope: !2790)
!2814 = !DILocation(line: 347, column: 25, scope: !2790)
!2815 = !DILocation(line: 347, column: 13, scope: !2790)
!2816 = !DILocation(line: 347, column: 57, scope: !2790)
!2817 = !DILocation(line: 347, column: 8, scope: !2782)
!2818 = !DILocation(line: 349, column: 12, scope: !2788)
!2819 = !DILocation(line: 349, column: 12, scope: !2789)
!2820 = !DILocation(line: 350, column: 3, scope: !2788)
!2821 = !DILocation(line: 350, column: 31, scope: !2788)
!2822 = !DILocation(line: 356, column: 5, scope: !2787)
!2823 = !DILocation(line: 357, column: 17, scope: !2787)
!2824 = !DILocation(line: 0, scope: !2787)
!2825 = !DILocation(line: 358, column: 27, scope: !2787)
!2826 = !DILocation(line: 358, column: 5, scope: !2787)
!2827 = !DILocation(line: 358, column: 25, scope: !2787)
!2828 = !DILocation(line: 361, column: 5, scope: !2787)
!2829 = !DILocation(line: 363, column: 5, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2787, file: !3, line: 363, column: 5)
!2831 = !DILocation(line: 363, column: 5, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2830, file: !3, line: 363, column: 5)
!2833 = !DILocation(line: 0, scope: !2830)
!2834 = !DILocation(line: 365, column: 13, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2836, file: !3, line: 365, column: 13)
!2836 = distinct !DILexicalBlock(scope: !2832, file: !3, line: 364, column: 7)
!2837 = !DILocation(line: 365, column: 13, scope: !2836)
!2838 = !DILocation(line: 366, column: 4, scope: !2835)
!2839 = !DILocation(line: 367, column: 13, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2836, file: !3, line: 367, column: 13)
!2841 = !DILocation(line: 367, column: 13, scope: !2836)
!2842 = !DILocation(line: 368, column: 4, scope: !2840)
!2843 = !DILocation(line: 0, scope: !2832)
!2844 = distinct !{!2844, !2829, !2845}
!2845 = !DILocation(line: 369, column: 7, scope: !2830)
!2846 = !DILocation(line: 342, column: 42, scope: !2783)
!2847 = !DILocation(line: 342, column: 7, scope: !2783)
!2848 = distinct !{!2848, !2803, !2849}
!2849 = !DILocation(line: 372, column: 2, scope: !2784)
!2850 = !DILocation(line: 374, column: 1, scope: !2771)
!2851 = distinct !DISubprogram(name: "REG_N_SETS", scope: !2852, file: !2852, line: 90, type: !2028, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2853)
!2852 = !DIFile(filename: "./regs.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2853 = !{!2854}
!2854 = !DILocalVariable(name: "regno", arg: 1, scope: !2851, file: !2852, line: 90, type: !713)
!2855 = !DILocation(line: 0, scope: !2851)
!2856 = !DILocation(line: 92, column: 10, scope: !2851)
!2857 = !DILocation(line: 92, column: 41, scope: !2851)
!2858 = !DILocation(line: 92, column: 3, scope: !2851)
!2859 = distinct !DISubprogram(name: "gt_ggc_mx_initial_value_struct", scope: !2860, file: !2860, line: 23, type: !1349, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2861)
!2860 = !DIFile(filename: "./gt-integrate.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2861 = !{!2862, !2863, !2865, !2870}
!2862 = !DILocalVariable(name: "x_p", arg: 1, scope: !2859, file: !2860, line: 23, type: !717)
!2863 = !DILocalVariable(name: "x", scope: !2859, file: !2860, line: 25, type: !2864)
!2864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1901)
!2865 = !DILocalVariable(name: "i0", scope: !2866, file: !2860, line: 29, type: !1354)
!2866 = distinct !DILexicalBlock(scope: !2867, file: !2860, line: 28, column: 33)
!2867 = distinct !DILexicalBlock(scope: !2868, file: !2860, line: 28, column: 11)
!2868 = distinct !DILexicalBlock(scope: !2869, file: !2860, line: 27, column: 5)
!2869 = distinct !DILexicalBlock(scope: !2859, file: !2860, line: 26, column: 7)
!2870 = !DILocalVariable(name: "a__", scope: !2871, file: !2860, line: 34, type: !2872)
!2871 = distinct !DILexicalBlock(scope: !2866, file: !2860, line: 34, column: 9)
!2872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1139)
!2873 = !DILocation(line: 0, scope: !2859)
!2874 = !DILocation(line: 26, column: 7, scope: !2869)
!2875 = !DILocation(line: 26, column: 7, scope: !2859)
!2876 = !DILocation(line: 28, column: 16, scope: !2867)
!2877 = !DILocation(line: 28, column: 24, scope: !2867)
!2878 = !DILocation(line: 28, column: 11, scope: !2868)
!2879 = !DILocation(line: 0, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2881, file: !2860, line: 30, column: 9)
!2881 = distinct !DILexicalBlock(scope: !2866, file: !2860, line: 30, column: 9)
!2882 = !DILocation(line: 30, column: 9, scope: !2881)
!2883 = !DILocation(line: 0, scope: !2866)
!2884 = !DILocation(line: 0, scope: !2881)
!2885 = !DILocation(line: 30, column: 44, scope: !2880)
!2886 = !DILocation(line: 30, column: 28, scope: !2880)
!2887 = !DILocation(line: 30, column: 25, scope: !2880)
!2888 = !DILocation(line: 31, column: 11, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2890, file: !2860, line: 31, column: 11)
!2890 = distinct !DILexicalBlock(scope: !2891, file: !2860, line: 31, column: 11)
!2891 = distinct !DILexicalBlock(scope: !2880, file: !2860, line: 30, column: 64)
!2892 = !DILocation(line: 31, column: 11, scope: !2890)
!2893 = !DILocation(line: 32, column: 11, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2895, file: !2860, line: 32, column: 11)
!2895 = distinct !DILexicalBlock(scope: !2891, file: !2860, line: 32, column: 11)
!2896 = !DILocation(line: 32, column: 11, scope: !2895)
!2897 = !DILocation(line: 30, column: 60, scope: !2880)
!2898 = !DILocation(line: 30, column: 9, scope: !2880)
!2899 = distinct !{!2899, !2882, !2900}
!2900 = !DILocation(line: 33, column: 9, scope: !2881)
!2901 = !DILocation(line: 0, scope: !2871)
!2902 = !DILocation(line: 34, column: 9, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2871, file: !2860, line: 34, column: 9)
!2904 = !DILocation(line: 34, column: 9, scope: !2871)
!2905 = !DILocation(line: 37, column: 1, scope: !2859)
!2906 = distinct !DISubprogram(name: "gt_pch_nx_initial_value_struct", scope: !2860, file: !2860, line: 40, type: !1349, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2907)
!2907 = !{!2908, !2909, !2910}
!2908 = !DILocalVariable(name: "x_p", arg: 1, scope: !2906, file: !2860, line: 40, type: !717)
!2909 = !DILocalVariable(name: "x", scope: !2906, file: !2860, line: 42, type: !2864)
!2910 = !DILocalVariable(name: "i0", scope: !2911, file: !2860, line: 46, type: !1354)
!2911 = distinct !DILexicalBlock(scope: !2912, file: !2860, line: 45, column: 33)
!2912 = distinct !DILexicalBlock(scope: !2913, file: !2860, line: 45, column: 11)
!2913 = distinct !DILexicalBlock(scope: !2914, file: !2860, line: 44, column: 5)
!2914 = distinct !DILexicalBlock(scope: !2906, file: !2860, line: 43, column: 7)
!2915 = !DILocation(line: 0, scope: !2906)
!2916 = !DILocation(line: 43, column: 7, scope: !2914)
!2917 = !DILocation(line: 43, column: 7, scope: !2906)
!2918 = !DILocation(line: 45, column: 16, scope: !2912)
!2919 = !DILocation(line: 45, column: 24, scope: !2912)
!2920 = !DILocation(line: 45, column: 11, scope: !2913)
!2921 = !DILocation(line: 0, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2923, file: !2860, line: 47, column: 9)
!2923 = distinct !DILexicalBlock(scope: !2911, file: !2860, line: 47, column: 9)
!2924 = !DILocation(line: 47, column: 9, scope: !2923)
!2925 = !DILocation(line: 0, scope: !2911)
!2926 = !DILocation(line: 0, scope: !2923)
!2927 = !DILocation(line: 47, column: 44, scope: !2922)
!2928 = !DILocation(line: 47, column: 28, scope: !2922)
!2929 = !DILocation(line: 47, column: 25, scope: !2922)
!2930 = !DILocation(line: 48, column: 11, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2932, file: !2860, line: 48, column: 11)
!2932 = distinct !DILexicalBlock(scope: !2933, file: !2860, line: 48, column: 11)
!2933 = distinct !DILexicalBlock(scope: !2922, file: !2860, line: 47, column: 64)
!2934 = !DILocation(line: 48, column: 11, scope: !2932)
!2935 = !DILocation(line: 49, column: 11, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2937, file: !2860, line: 49, column: 11)
!2937 = distinct !DILexicalBlock(scope: !2933, file: !2860, line: 49, column: 11)
!2938 = !DILocation(line: 49, column: 11, scope: !2937)
!2939 = !DILocation(line: 47, column: 60, scope: !2922)
!2940 = !DILocation(line: 47, column: 9, scope: !2922)
!2941 = distinct !{!2941, !2924, !2942}
!2942 = !DILocation(line: 50, column: 9, scope: !2923)
!2943 = !DILocation(line: 51, column: 29, scope: !2911)
!2944 = !DILocation(line: 51, column: 9, scope: !2911)
!2945 = !DILocation(line: 52, column: 7, scope: !2911)
!2946 = !DILocation(line: 54, column: 1, scope: !2906)
!2947 = distinct !DISubprogram(name: "gt_pch_p_20initial_value_struct", scope: !2860, file: !2860, line: 57, type: !2948, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2952)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{null, !717, !717, !2950, !717}
!2950 = !DIDerivedType(tag: DW_TAG_typedef, name: "gt_pointer_operator", file: !2951, line: 38, baseType: !1375)
!2951 = !DIFile(filename: "./ggc.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2952 = !{!2953, !2954, !2955, !2956, !2957, !2958}
!2953 = !DILocalVariable(name: "this_obj", arg: 1, scope: !2947, file: !2860, line: 57, type: !717)
!2954 = !DILocalVariable(name: "x_p", arg: 2, scope: !2947, file: !2860, line: 58, type: !717)
!2955 = !DILocalVariable(name: "op", arg: 3, scope: !2947, file: !2860, line: 59, type: !2950)
!2956 = !DILocalVariable(name: "cookie", arg: 4, scope: !2947, file: !2860, line: 60, type: !717)
!2957 = !DILocalVariable(name: "x", scope: !2947, file: !2860, line: 62, type: !2864)
!2958 = !DILocalVariable(name: "i0", scope: !2959, file: !2860, line: 64, type: !1354)
!2959 = distinct !DILexicalBlock(scope: !2960, file: !2860, line: 63, column: 29)
!2960 = distinct !DILexicalBlock(scope: !2947, file: !2860, line: 63, column: 7)
!2961 = !DILocation(line: 0, scope: !2947)
!2962 = !DILocation(line: 63, column: 12, scope: !2960)
!2963 = !DILocation(line: 63, column: 20, scope: !2960)
!2964 = !DILocation(line: 63, column: 7, scope: !2947)
!2965 = !DILocation(line: 0, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2967, file: !2860, line: 65, column: 5)
!2967 = distinct !DILexicalBlock(scope: !2959, file: !2860, line: 65, column: 5)
!2968 = !DILocation(line: 0, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2970, file: !2860, line: 66, column: 11)
!2970 = distinct !DILexicalBlock(scope: !2966, file: !2860, line: 65, column: 60)
!2971 = !DILocation(line: 65, column: 5, scope: !2967)
!2972 = !DILocation(line: 0, scope: !2967)
!2973 = !DILocation(line: 0, scope: !2959)
!2974 = !DILocation(line: 65, column: 40, scope: !2966)
!2975 = !DILocation(line: 65, column: 24, scope: !2966)
!2976 = !DILocation(line: 65, column: 21, scope: !2966)
!2977 = !DILocation(line: 66, column: 25, scope: !2969)
!2978 = !DILocation(line: 66, column: 34, scope: !2969)
!2979 = !DILocation(line: 66, column: 11, scope: !2970)
!2980 = !DILocation(line: 67, column: 32, scope: !2969)
!2981 = !DILocation(line: 67, column: 13, scope: !2969)
!2982 = !DILocation(line: 67, column: 9, scope: !2969)
!2983 = !DILocation(line: 68, column: 25, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2970, file: !2860, line: 68, column: 11)
!2985 = !DILocation(line: 68, column: 34, scope: !2984)
!2986 = !DILocation(line: 68, column: 11, scope: !2970)
!2987 = !DILocation(line: 69, column: 32, scope: !2984)
!2988 = !DILocation(line: 69, column: 13, scope: !2984)
!2989 = !DILocation(line: 69, column: 9, scope: !2984)
!2990 = !DILocation(line: 65, column: 56, scope: !2966)
!2991 = !DILocation(line: 65, column: 5, scope: !2966)
!2992 = distinct !{!2992, !2971, !2993}
!2993 = !DILocation(line: 70, column: 5, scope: !2967)
!2994 = !DILocation(line: 71, column: 21, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2959, file: !2860, line: 71, column: 9)
!2996 = !DILocation(line: 71, column: 9, scope: !2959)
!2997 = !DILocation(line: 72, column: 7, scope: !2995)
!2998 = !DILocation(line: 74, column: 1, scope: !2947)
!2999 = distinct !DISubprogram(name: "VEC_tree_base_length", scope: !158, file: !158, line: 182, type: !3000, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3004)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!7, !3002}
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1385)
!3004 = !{!3005}
!3005 = !DILocalVariable(name: "vec_", arg: 1, scope: !2999, file: !158, line: 182, type: !3002)
!3006 = !DILocation(line: 0, scope: !2999)
!3007 = !DILocation(line: 182, column: 1, scope: !2999)
!3008 = distinct !DISubprogram(name: "VEC_tree_base_index", scope: !158, file: !158, line: 182, type: !3009, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3011)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{!720, !3002, !7}
!3011 = !{!3012, !3013}
!3012 = !DILocalVariable(name: "vec_", arg: 1, scope: !3008, file: !158, line: 182, type: !3002)
!3013 = !DILocalVariable(name: "ix_", arg: 2, scope: !3008, file: !158, line: 182, type: !7)
!3014 = !DILocation(line: 0, scope: !3008)
!3015 = !DILocation(line: 182, column: 1, scope: !3008)
