; ModuleID = 'c-pragma.bc'
source_filename = "c-pragma.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
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
%struct.eh_status = type opaque
%struct.control_flow_graph = type opaque
%struct.gimple_seq_d = type opaque
%struct.gimple_df = type opaque
%struct.loops = type opaque
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
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
%union.gimple_statement_d = type opaque
%struct.calls = type { i32 (%union.tree_node*, i32, i32*, %union.tree_node*, i32)*, i8 (%union.tree_node*)*, %struct.rtx_def* (%union.tree_node*, i32)*, i8 (%union.tree_node*, %union.tree_node*)*, i8 (%union.tree_node*)*, i8 (%struct.ix86_args*, i32, %union.tree_node*, i8)*, %struct.rtx_def* ()*, void (%struct.ix86_args*, i32, %union.tree_node*, i32*, i32)*, i8 (%struct.ix86_args*)*, i8 (%struct.ix86_args*)*, i8 (%union.tree_node*)*, i8 (i32, %union.tree_node*)*, i8 (%struct.ix86_args*, i32, %union.tree_node*, i8)*, i32 (%struct.ix86_args*, i32, %union.tree_node*, i8)*, i8* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %struct.rtx_def* (%union.tree_node*, %union.tree_node*, i8)*, %struct.rtx_def* (i32, %struct.rtx_def*)*, %struct.rtx_def* ()*, void ()*, %struct.rtx_def* ()*, i8 ()*, %struct.rtx_def* (%union.tree_node*, i8)*, void (%struct.rtx_def*, %union.tree_node*, %struct.rtx_def*)*, %struct.rtx_def* (%struct.rtx_def*)* }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.secondary_reload_info = type { i32, i32, %struct.secondary_reload_info*, i32 }
%struct.c = type { i32 (i8)* }
%struct.cxx = type { %union.tree_node* ()*, i8 ()*, %union.tree_node* (%union.tree_node*)*, i8 ()*, i32 (%union.tree_node*, i32)*, i8 ()*, i8 ()*, void (%union.tree_node*)*, i8 ()*, i8 ()*, i8 ()*, i8 ()*, void (%union.tree_node*)* }
%struct.emutls = type { i8*, i8*, i8*, i8*, i8*, i8*, %union.tree_node* (%union.tree_node*, %union.tree_node**)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, i8, i8 }
%struct.target_option_hooks = type { i8 (%union.tree_node*, %union.tree_node*, %union.tree_node*, i32)*, void (%struct.cl_target_option*)*, void (%struct.cl_target_option*)*, void (%struct._IO_FILE*, i32, %struct.cl_target_option*)*, i8 (%union.tree_node*, %union.tree_node*)*, i8 (%union.tree_node*, %union.tree_node*)* }
%struct.cl_target_option = type { i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.bitmap_head_def = type opaque
%struct.VEC_int_heap = type { %struct.VEC_int_base }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.visibility_flags = type { i8, [3 x i8] }
%struct.omp_pragma_def = type { i8*, i32 }
%struct.VEC_pragma_ns_name_heap = type { %struct.VEC_pragma_ns_name_base }
%struct.VEC_pragma_ns_name_base = type { i32, i32, [1 x %struct.pragma_ns_name] }
%struct.pragma_ns_name = type { i8*, i8* }
%struct.VEC_pragma_handler_heap = type { %struct.VEC_pragma_handler_base }
%struct.VEC_pragma_handler_base = type { i32, i32, [1 x void (%struct.cpp_reader*)*] }
%struct.cpp_reader = type opaque
%struct.opt_stack = type { %struct.opt_stack*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node* }
%struct.align_stack = type { i32, %union.tree_node*, %struct.align_stack* }
%struct.ggc_root_tab = type { i8*, i64, i64, void (i8*)*, void (i8*)* }
%struct.cl_option = type { i8*, i8*, i16, i8, i32, i32, i8*, i32, i32 }
%struct.diagnostic_context = type { %struct.pretty_print_info*, [12 x i32], i8, i8, [870 x i32], i8, i8, void (%struct.diagnostic_context*, %struct.diagnostic_info*)*, void (%struct.diagnostic_context*, %struct.diagnostic_info*)*, void (i8*, [1 x %struct.__va_list_tag]*)*, %union.tree_node*, %struct.line_map*, i32, i8 }
%struct.pretty_print_info = type { %struct.output_buffer*, i8*, i32, i32, i32, %struct.pp_wrapping_mode_t, i8 (%struct.pretty_print_info*, %struct.text_info*, i8*, i32, i8, i8, i8)*, i8, i8, i8 }
%struct.output_buffer = type { %struct.obstack, %struct.obstack, %struct.obstack*, %struct.chunk_info*, %struct._IO_FILE*, i32, [128 x i8] }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.chunk_info = type { %struct.chunk_info*, [60 x i8*] }
%struct.pp_wrapping_mode_t = type { i32, i32 }
%struct.text_info = type { i8*, [1 x %struct.__va_list_tag]*, i32, i32*, %union.tree_node** }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.diagnostic_info = type { %struct.text_info, i32, i32, %union.tree_node*, i32, i32 }
%struct.line_map = type { i8*, i32, i32, i32, i8, i8, i8 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { i8*, i32, i32 }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.cl_optimization = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expanded_location = type { i8*, i32, i32, i8 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@pending_weaks = internal global %union.tree_node* null, align 8, !dbg !0
@c_global_trees = external dso_local local_unnamed_addr global [55 x %union.tree_node*], align 16
@pending_redefine_extname = internal global %union.tree_node* null, align 8, !dbg !1526
@.str = private unnamed_addr constant [88 x i8] c"#pragma redefine_extname ignored due to conflict with previous #pragma redefine_extname\00", align 1
@tree_contains_struct = external dso_local local_unnamed_addr global [191 x [64 x i8]], align 16
@targetm = external dso_local local_unnamed_addr global %struct.gcc_target, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"asm declaration ignored due to conflict with previous rename\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"#pragma redefine_extname ignored due to conflict with previous rename\00", align 1
@.str.3 = private unnamed_addr constant [74 x i8] c"#pragma redefine_extname ignored due to conflict with __asm__ declaration\00", align 1
@pragma_extern_prefix = internal global %union.tree_node* null, align 8, !dbg !1528
@visstack = internal global %struct.VEC_int_heap* null, align 8, !dbg !1530
@default_visibility = external dso_local local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"hidden\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"protected\00", align 1
@.str.8 = private unnamed_addr constant [82 x i8] c"#pragma GCC visibility push() must specify default, internal, hidden or protected\00", align 1
@visibility_options = external dso_local local_unnamed_addr global %struct.visibility_flags, align 4
@valid_location_for_stdc_pragma = internal unnamed_addr global i8 0, align 1, !dbg !1534
@omp_pragmas = internal unnamed_addr constant [14 x %struct.omp_pragma_def] [%struct.omp_pragma_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i32 1 }, %struct.omp_pragma_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), i32 2 }, %struct.omp_pragma_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i32 3 }, %struct.omp_pragma_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 4 }, %struct.omp_pragma_def { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), i32 5 }, %struct.omp_pragma_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i32 6 }, %struct.omp_pragma_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i32 7 }, %struct.omp_pragma_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i32 8 }, %struct.omp_pragma_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i32 11 }, %struct.omp_pragma_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i32 12 }, %struct.omp_pragma_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 13 }, %struct.omp_pragma_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i32 14 }, %struct.omp_pragma_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i32 15 }, %struct.omp_pragma_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), i32 16 }], align 16, !dbg !1540
@.str.9 = private unnamed_addr constant [4 x i8] c"omp\00", align 1
@registered_pp_pragmas = internal global %struct.VEC_pragma_ns_name_heap* null, align 8, !dbg !1538
@.str.10 = private unnamed_addr constant [11 x i8] c"c-pragma.c\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@registered_pragmas = internal global %struct.VEC_pragma_handler_heap* null, align 8, !dbg !1536
@parse_in = external dso_local local_unnamed_addr global %struct.cpp_reader*, align 8
@flag_openmp = external dso_local local_unnamed_addr global i32, align 4
@flag_preprocess_only = external dso_local local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"GCC\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"pch_preprocess\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"pack\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"weak\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"visibility\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"diagnostic\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"optimize\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"push_options\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"pop_options\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"reset_options\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"STDC\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"FLOAT_CONST_DECIMAL64\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"redefine_extname\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"extern_prefix\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@options_stack = internal global %struct.opt_stack* null, align 8, !dbg !1532
@alignment_stack = internal global %struct.align_stack* null, align 8, !dbg !1524
@gt_ggc_r_gt_c_pragma_h = dso_local local_unnamed_addr constant [6 x %struct.ggc_root_tab] [%struct.ggc_root_tab { i8* bitcast (%struct.opt_stack** @options_stack to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_opt_stack, void (i8*)* @gt_pch_nx_opt_stack }, %struct.ggc_root_tab { i8* bitcast (%union.tree_node** @pragma_extern_prefix to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_lang_tree_node, void (i8*)* @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { i8* bitcast (%union.tree_node** @pending_redefine_extname to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_lang_tree_node, void (i8*)* @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { i8* bitcast (%union.tree_node** @pending_weaks to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_lang_tree_node, void (i8*)* @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { i8* bitcast (%struct.align_stack** @alignment_stack to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_align_stack, void (i8*)* @gt_pch_nx_align_stack }, %struct.ggc_root_tab zeroinitializer], align 16, !dbg !1508
@.str.28 = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@.str.29 = private unnamed_addr constant [75 x i8] c"applying #pragma weak %q+D after first use results in unspecified behavior\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"atomic\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"barrier\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"critical\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"ordered\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"parallel\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"section\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"sections\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"single\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"task\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"taskwait\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"threadprivate\00", align 1
@.str.44 = private unnamed_addr constant [47 x i8] c"missing %<(%> after %<#pragma pack%> - ignored\00", align 1
@initial_max_fld_align = external dso_local local_unnamed_addr global i32, align 4
@.str.45 = private unnamed_addr constant [47 x i8] c"invalid constant in %<#pragma pack%> - ignored\00", align 1
@.str.46 = private unnamed_addr constant [37 x i8] c"malformed %<#pragma pack%> - ignored\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"push\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@.str.49 = private unnamed_addr constant [50 x i8] c"unknown action %qE for %<#pragma pack%> - ignored\00", align 1
@.str.50 = private unnamed_addr constant [56 x i8] c"malformed %<#pragma pack(push[, id][, <n>])%> - ignored\00", align 1
@.str.51 = private unnamed_addr constant [48 x i8] c"malformed %<#pragma pack(pop[, id])%> - ignored\00", align 1
@.str.52 = private unnamed_addr constant [32 x i8] c"junk at end of %<#pragma pack%>\00", align 1
@flag_pack_struct = external dso_local local_unnamed_addr global i32, align 4
@.str.53 = private unnamed_addr constant [56 x i8] c"#pragma pack has no effect with -fpack-struct - ignored\00", align 1
@maximum_field_alignment = external dso_local local_unnamed_addr global i32, align 4
@.str.54 = private unnamed_addr constant [47 x i8] c"alignment must be a small power of two, not %d\00", align 1
@default_alignment = internal unnamed_addr global i32 0, align 4, !dbg !1550
@.str.55 = private unnamed_addr constant [68 x i8] c"#pragma pack (pop) encountered without matching #pragma pack (push)\00", align 1
@.str.56 = private unnamed_addr constant [74 x i8] c"#pragma pack(pop, %E) encountered without matching #pragma pack(push, %E)\00", align 1
@.str.57 = private unnamed_addr constant [32 x i8] c"malformed #pragma weak, ignored\00", align 1
@.str.58 = private unnamed_addr constant [32 x i8] c"junk at end of %<#pragma weak%>\00", align 1
@tree_code_type = external dso_local local_unnamed_addr constant [0 x i32], align 4
@.str.59 = private unnamed_addr constant [55 x i8] c"#pragma GCC visibility must be followed by push or pop\00", align 1
@.str.60 = private unnamed_addr constant [52 x i8] c"no matching push for %<#pragma GCC visibility pop%>\00", align 1
@.str.61 = private unnamed_addr constant [62 x i8] c"missing %<(%> after %<#pragma GCC visibility push%> - ignored\00", align 1
@.str.62 = private unnamed_addr constant [38 x i8] c"malformed #pragma GCC visibility push\00", align 1
@.str.63 = private unnamed_addr constant [42 x i8] c"junk at end of %<#pragma GCC visibility%>\00", align 1
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@.str.64 = private unnamed_addr constant [52 x i8] c"#pragma GCC diagnostic not allowed inside functions\00", align 1
@.str.65 = private unnamed_addr constant [65 x i8] c"missing [error|warning|ignored] after %<#pragma GCC diagnostic%>\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"ignored\00", align 1
@.str.69 = private unnamed_addr constant [66 x i8] c"expected [error|warning|ignored] after %<#pragma GCC diagnostic%>\00", align 1
@.str.70 = private unnamed_addr constant [53 x i8] c"missing option after %<#pragma GCC diagnostic%> kind\00", align 1
@cl_options_count = external dso_local local_unnamed_addr constant i32, align 4
@cl_options = external dso_local local_unnamed_addr constant [0 x %struct.cl_option], align 8
@global_dc = external dso_local local_unnamed_addr global %struct.diagnostic_context*, align 8
@.str.71 = private unnamed_addr constant [53 x i8] c"unknown option after %<#pragma GCC diagnostic%> kind\00", align 1
@.str.72 = private unnamed_addr constant [51 x i8] c"#pragma GCC option is not allowed inside functions\00", align 1
@.str.73 = private unnamed_addr constant [39 x i8] c"%<#pragma GCC option%> is not a string\00", align 1
@.str.74 = private unnamed_addr constant [74 x i8] c"%<#pragma GCC target (string [,string]...)%> does not have a final %<)%>.\00", align 1
@.str.75 = private unnamed_addr constant [45 x i8] c"#pragma GCC target string... is badly formed\00", align 1
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@.str.76 = private unnamed_addr constant [53 x i8] c"#pragma GCC optimize is not allowed inside functions\00", align 1
@.str.77 = private unnamed_addr constant [51 x i8] c"%<#pragma GCC optimize%> is not a string or number\00", align 1
@.str.78 = private unnamed_addr constant [76 x i8] c"%<#pragma GCC optimize (string [,string]...)%> does not have a final %<)%>.\00", align 1
@.str.79 = private unnamed_addr constant [47 x i8] c"#pragma GCC optimize string... is badly formed\00", align 1
@.str.80 = private unnamed_addr constant [40 x i8] c"junk at end of %<#pragma push_options%>\00", align 1
@.str.81 = private unnamed_addr constant [39 x i8] c"junk at end of %<#pragma pop_options%>\00", align 1
@.str.82 = private unnamed_addr constant [81 x i8] c"%<#pragma GCC pop_options%> without a corresponding %<#pragma GCC push_options%>\00", align 1
@.str.83 = private unnamed_addr constant [41 x i8] c"junk at end of %<#pragma reset_options%>\00", align 1
@c_language = external dso_local local_unnamed_addr global i32, align 4
@warn_unknown_pragmas = external dso_local local_unnamed_addr global i32, align 4
@input_location = external dso_local local_unnamed_addr global i32, align 4
@.str.84 = private unnamed_addr constant [64 x i8] c"%<#pragma STDC FLOAT_CONST_DECIMAL64%> is not supported for C++\00", align 1
@.str.85 = private unnamed_addr constant [71 x i8] c"%<#pragma STDC FLOAT_CONST_DECIMAL64%> is not supported on this target\00", align 1
@.str.86 = private unnamed_addr constant [62 x i8] c"ISO C does not support %<#pragma STDC FLOAT_CONST_DECIMAL64%>\00", align 1
@.str.87 = private unnamed_addr constant [27 x i8] c"STDC FLOAT_CONST_DECIMAL64\00", align 1
@.str.88 = private unnamed_addr constant [44 x i8] c"invalid location for %<pragma %s%>, ignored\00", align 1
@.str.89 = private unnamed_addr constant [34 x i8] c"malformed %<#pragma %s%>, ignored\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.92 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1
@.str.93 = private unnamed_addr constant [30 x i8] c"junk at end of %<#pragma %s%>\00", align 1
@.str.94 = private unnamed_addr constant [44 x i8] c"malformed #pragma redefine_extname, ignored\00", align 1
@.str.95 = private unnamed_addr constant [44 x i8] c"junk at end of %<#pragma redefine_extname%>\00", align 1
@.str.96 = private unnamed_addr constant [41 x i8] c"malformed #pragma extern_prefix, ignored\00", align 1
@.str.97 = private unnamed_addr constant [41 x i8] c"junk at end of %<#pragma extern_prefix%>\00", align 1
@.str.98 = private unnamed_addr constant [51 x i8] c"#pragma extern_prefix not supported on this target\00", align 1
@.str.99 = private unnamed_addr constant [44 x i8] c"expected a string after %<#pragma message%>\00", align 1
@.str.100 = private unnamed_addr constant [39 x i8] c"malformed %<#pragma message%>, ignored\00", align 1
@.str.101 = private unnamed_addr constant [35 x i8] c"junk at end of %<#pragma message%>\00", align 1
@.str.102 = private unnamed_addr constant [20 x i8] c"#pragma message: %s\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1556 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1569, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1570, metadata !DIExpression()), !dbg !1571
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1572
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1573
  ret i32 %call, !dbg !1574
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1575 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1579
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1580
  ret i32 %call, !dbg !1581
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1582 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1637, metadata !DIExpression()), !dbg !1638
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1639
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1639
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1639
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1639
  %cmp = icmp uge i8* %0, %1, !dbg !1639
  %conv1 = zext i1 %cmp to i64, !dbg !1639
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1639
  %tobool = icmp eq i64 %expval, 0, !dbg !1639
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1639

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1639
  br label %cond.end, !dbg !1639

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1639
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1639
  %2 = load i8, i8* %0, align 1, !dbg !1639
  %conv3 = zext i8 %2 to i32, !dbg !1639
  br label %cond.end, !dbg !1639

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1639
  ret i32 %cond, !dbg !1640
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1641 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1643, metadata !DIExpression()), !dbg !1644
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1645
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1645
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1645
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1645
  %cmp = icmp uge i8* %0, %1, !dbg !1645
  %conv1 = zext i1 %cmp to i64, !dbg !1645
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1645
  %tobool = icmp eq i64 %expval, 0, !dbg !1645
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1645

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1645
  br label %cond.end, !dbg !1645

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1645
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1645
  %2 = load i8, i8* %0, align 1, !dbg !1645
  %conv3 = zext i8 %2 to i32, !dbg !1645
  br label %cond.end, !dbg !1645

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1645
  ret i32 %cond, !dbg !1646
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1647 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1648
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1648
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1648
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1648
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1648
  %cmp = icmp uge i8* %1, %2, !dbg !1648
  %conv1 = zext i1 %cmp to i64, !dbg !1648
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1648
  %tobool = icmp eq i64 %expval, 0, !dbg !1648
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1648

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1648
  br label %cond.end, !dbg !1648

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1648
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1648
  %3 = load i8, i8* %1, align 1, !dbg !1648
  %conv3 = zext i8 %3 to i32, !dbg !1648
  br label %cond.end, !dbg !1648

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1648
  ret i32 %cond, !dbg !1649
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1650 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1654, metadata !DIExpression()), !dbg !1655
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1656
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1657
  ret i32 %call, !dbg !1658
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1659 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1663, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1664, metadata !DIExpression()), !dbg !1665
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1666
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1666
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1666
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1666
  %cmp = icmp uge i8* %0, %1, !dbg !1666
  %conv1 = zext i1 %cmp to i64, !dbg !1666
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1666
  %tobool = icmp eq i64 %expval, 0, !dbg !1666
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1666

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1666
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1666
  br label %cond.end, !dbg !1666

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1666
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1666
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1666
  store i8 %conv2, i8* %0, align 1, !dbg !1666
  %conv6 = and i32 %__c, 255, !dbg !1666
  br label %cond.end, !dbg !1666

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1666
  ret i32 %cond, !dbg !1667
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1668 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1670, metadata !DIExpression()), !dbg !1672
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1671, metadata !DIExpression()), !dbg !1672
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1673
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1673
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1673
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1673
  %cmp = icmp uge i8* %0, %1, !dbg !1673
  %conv1 = zext i1 %cmp to i64, !dbg !1673
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1673
  %tobool = icmp eq i64 %expval, 0, !dbg !1673
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1673

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1673
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1673
  br label %cond.end, !dbg !1673

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1673
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1673
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1673
  store i8 %conv2, i8* %0, align 1, !dbg !1673
  %conv6 = and i32 %__c, 255, !dbg !1673
  br label %cond.end, !dbg !1673

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1673
  ret i32 %cond, !dbg !1674
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1675 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1677, metadata !DIExpression()), !dbg !1678
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1679
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1679
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1679
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1679
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1679
  %cmp = icmp uge i8* %1, %2, !dbg !1679
  %conv1 = zext i1 %cmp to i64, !dbg !1679
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1679
  %tobool = icmp eq i64 %expval, 0, !dbg !1679
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1679

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1679
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1679
  br label %cond.end, !dbg !1679

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1679
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1679
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1679
  store i8 %conv4, i8* %1, align 1, !dbg !1679
  %conv6 = and i32 %__c, 255, !dbg !1679
  br label %cond.end, !dbg !1679

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1679
  ret i32 %cond, !dbg !1680
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1681 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1687, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1688, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1689, metadata !DIExpression()), !dbg !1690
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1691
  ret i64 %call, !dbg !1692
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1693 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1695, metadata !DIExpression()), !dbg !1696
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1697
  %0 = load i32, i32* %_flags, align 8, !dbg !1697
  %and = lshr i32 %0, 4, !dbg !1697
  %and.lobit = and i32 %and, 1, !dbg !1697
  ret i32 %and.lobit, !dbg !1698
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1699 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1701, metadata !DIExpression()), !dbg !1702
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1703
  %0 = load i32, i32* %_flags, align 8, !dbg !1703
  %and = lshr i32 %0, 5, !dbg !1703
  %and.lobit = and i32 %and, 1, !dbg !1703
  ret i32 %and.lobit, !dbg !1704
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1705 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1708, metadata !DIExpression()), !dbg !1709
  %__c.off = add i32 %__c, 128, !dbg !1710
  %0 = icmp ult i32 %__c.off, 384, !dbg !1710
  br i1 %0, label %cond.true, label %cond.end, !dbg !1710

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !1711
  %1 = load i32*, i32** %call, align 8, !dbg !1712
  %idxprom = sext i32 %__c to i64, !dbg !1713
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1713
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1713
  br label %cond.end, !dbg !1714

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1714
  ret i32 %cond, !dbg !1715
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1716 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1718, metadata !DIExpression()), !dbg !1719
  %__c.off = add i32 %__c, 128, !dbg !1720
  %0 = icmp ult i32 %__c.off, 384, !dbg !1720
  br i1 %0, label %cond.true, label %cond.end, !dbg !1720

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !1721
  %1 = load i32*, i32** %call, align 8, !dbg !1722
  %idxprom = sext i32 %__c to i64, !dbg !1723
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1723
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1723
  br label %cond.end, !dbg !1724

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1724
  ret i32 %cond, !dbg !1725
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1726 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1731, metadata !DIExpression()), !dbg !1732
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1733
  %conv = trunc i64 %call to i32, !dbg !1734
  ret i32 %conv, !dbg !1735
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1736 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1740, metadata !DIExpression()), !dbg !1741
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1742
  ret i64 %call, !dbg !1743
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1744 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1749, metadata !DIExpression()), !dbg !1750
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !1751
  ret i64 %call, !dbg !1752
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1753 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1759, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1760, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1761, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1762, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1763, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i64 0, metadata !1764, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1765, metadata !DIExpression()), !dbg !1769
  br label %while.cond, !dbg !1770

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1771
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1769
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1765, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1764, metadata !DIExpression()), !dbg !1769
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1772
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1770

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1773
  %div = lshr i64 %add, 1, !dbg !1775
  call void @llvm.dbg.value(metadata i64 %div, metadata !1766, metadata !DIExpression()), !dbg !1769
  %mul = mul i64 %div, %__size, !dbg !1776
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1777
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1767, metadata !DIExpression()), !dbg !1769
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !1778
  call void @llvm.dbg.value(metadata i32 %call, metadata !1768, metadata !DIExpression()), !dbg !1769
  %cmp1 = icmp slt i32 %call, 0, !dbg !1779
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1781

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1782
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1784

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1785
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1764, metadata !DIExpression()), !dbg !1769
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1769
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1769
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1765, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1764, metadata !DIExpression()), !dbg !1769
  br label %while.cond, !dbg !1770, !llvm.loop !1786

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1769
  ret i8* %retval.0, !dbg !1788
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1789 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1795, metadata !DIExpression()), !dbg !1796
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !1797
  ret double %call, !dbg !1798
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1799 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1808, metadata !DIExpression()), !dbg !1811
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1809, metadata !DIExpression()), !dbg !1811
  call void @llvm.dbg.value(metadata i32 %base, metadata !1810, metadata !DIExpression()), !dbg !1811
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1812
  ret i64 %call, !dbg !1813
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1814 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1820, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1821, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i32 %base, metadata !1822, metadata !DIExpression()), !dbg !1823
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1824
  ret i64 %call, !dbg !1825
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1826 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1837, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1838, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 %base, metadata !1839, metadata !DIExpression()), !dbg !1840
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1841
  ret i64 %call, !dbg !1842
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1843 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1847, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1848, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i32 %base, metadata !1849, metadata !DIExpression()), !dbg !1850
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1851
  ret i64 %call, !dbg !1852
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1853 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1893, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1894, metadata !DIExpression()), !dbg !1895
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !1896
  ret i32 %call, !dbg !1897
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1898 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1900, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1901, metadata !DIExpression()), !dbg !1902
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !1903
  ret i32 %call, !dbg !1904
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1905 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1909, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1910, metadata !DIExpression()), !dbg !1911
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !1912
  ret i32 %call, !dbg !1913
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1914 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1918, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1919, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1920, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1921, metadata !DIExpression()), !dbg !1922
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !1923
  ret i32 %call, !dbg !1924
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1925 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1929, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1930, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1931, metadata !DIExpression()), !dbg !1932
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1931, metadata !DIExpression(DW_OP_deref)), !dbg !1932
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !1933
  ret i32 %call, !dbg !1934
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1935 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1939, metadata !DIExpression()), !dbg !1943
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1940, metadata !DIExpression()), !dbg !1943
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1941, metadata !DIExpression()), !dbg !1943
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1942, metadata !DIExpression()), !dbg !1943
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1942, metadata !DIExpression(DW_OP_deref)), !dbg !1943
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !1944
  ret i32 %call, !dbg !1945
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1946 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1970, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1971, metadata !DIExpression()), !dbg !1972
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !1973
  ret i32 %call, !dbg !1974
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1975 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1977, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1978, metadata !DIExpression()), !dbg !1979
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !1980
  ret i32 %call, !dbg !1981
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1982 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1986, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1987, metadata !DIExpression()), !dbg !1988
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !1989
  ret i32 %call, !dbg !1990
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1991 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1995, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1996, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1997, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1998, metadata !DIExpression()), !dbg !1999
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2000
  ret i32 %call, !dbg !2001
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @maybe_apply_pragma_weak(%union.tree_node* %decl) local_unnamed_addr #4 !dbg !2002 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !2006, metadata !DIExpression()), !dbg !2010
  %0 = load %union.tree_node*, %union.tree_node** @pending_weaks, align 8, !dbg !2011
  %tobool = icmp eq %union.tree_node* %0, null, !dbg !2011
  br i1 %tobool, label %cleanup.cont, label %if.end, !dbg !2013

if.end:                                           ; preds = %entry
  %decl_flag_1 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2014
  %1 = bitcast i40* %decl_flag_1 to i64*, !dbg !2014
  %bf.load = load i64, i64* %1, align 8, !dbg !2014
  %bf.cast1 = and i64 %bf.load, 33554432, !dbg !2014
  %tobool1 = icmp eq i64 %bf.cast1, 0, !dbg !2014
  br i1 %tobool1, label %land.lhs.true, label %if.end.if.end8_crit_edge, !dbg !2016

if.end.if.end8_crit_edge:                         ; preds = %if.end
  %.phi.trans.insert = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2017
  %bf.load10.pre = load i64, i64* %.phi.trans.insert, align 8, !dbg !2019
  br label %if.end8, !dbg !2016

land.lhs.true:                                    ; preds = %if.end
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2020
  %bf.load2 = load i64, i64* %2, align 8, !dbg !2020
  %bf.cast52 = and i64 %bf.load2, 134217728, !dbg !2020
  %tobool6 = icmp eq i64 %bf.cast52, 0, !dbg !2020
  br i1 %tobool6, label %cleanup.cont, label %if.end8, !dbg !2021

if.end8:                                          ; preds = %if.end.if.end8_crit_edge, %land.lhs.true
  %bf.load15 = phi i64 [ %bf.load10.pre, %if.end.if.end8_crit_edge ], [ %bf.load2, %land.lhs.true ], !dbg !2019
  %bf.cast123 = and i64 %bf.load15, 65535, !dbg !2022
  %cmp = icmp eq i64 %bf.cast123, 29, !dbg !2022
  br i1 %cmp, label %if.end20, label %land.lhs.true13, !dbg !2023

land.lhs.true13:                                  ; preds = %if.end8
  %cmp18 = icmp eq i64 %bf.cast123, 32, !dbg !2024
  br i1 %cmp18, label %if.end20, label %cleanup.cont, !dbg !2025

if.end20:                                         ; preds = %land.lhs.true13, %if.end8
  %call = tail call %union.tree_node* @decl_assembler_name(%union.tree_node* %decl) #6, !dbg !2026
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2009, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.value(metadata %union.tree_node** @pending_weaks, metadata !2007, metadata !DIExpression()), !dbg !2010
  br label %for.cond, !dbg !2027

for.cond:                                         ; preds = %for.inc, %if.end20
  %p.0 = phi %union.tree_node** [ @pending_weaks, %if.end20 ], [ %chain27, %for.inc ], !dbg !2029
  call void @llvm.dbg.value(metadata %union.tree_node** %p.0, metadata !2007, metadata !DIExpression()), !dbg !2010
  %3 = load %union.tree_node*, %union.tree_node** %p.0, align 8, !dbg !2030
  call void @llvm.dbg.value(metadata %union.tree_node* %3, metadata !2008, metadata !DIExpression()), !dbg !2010
  %tobool21 = icmp eq %union.tree_node* %3, null, !dbg !2032
  br i1 %tobool21, label %cleanup.cont.loopexit, label %for.body, !dbg !2032

for.body:                                         ; preds = %for.cond
  %purpose = getelementptr inbounds %union.tree_node, %union.tree_node* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2033
  %4 = bitcast i32* %purpose to %union.tree_node**, !dbg !2033
  %5 = load %union.tree_node*, %union.tree_node** %4, align 8, !dbg !2033
  %cmp22 = icmp eq %union.tree_node* %call, %5, !dbg !2035
  br i1 %cmp22, label %if.then23, label %for.inc, !dbg !2036

if.then23:                                        ; preds = %for.body
  %p.0.lcssa11 = phi %union.tree_node** [ %p.0, %for.body ], !dbg !2029
  %.lcssa10 = phi %union.tree_node* [ %3, %for.body ], !dbg !2030
  call void @llvm.dbg.value(metadata %union.tree_node** %p.0.lcssa11, metadata !2007, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.value(metadata %union.tree_node** %p.0.lcssa11, metadata !2007, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.value(metadata %union.tree_node** %p.0.lcssa11, metadata !2007, metadata !DIExpression()), !dbg !2010
  %6 = getelementptr inbounds %union.tree_node, %union.tree_node* %.lcssa10, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2037
  %7 = load %union.tree_node*, %union.tree_node** %6, align 8, !dbg !2037
  tail call fastcc void @apply_pragma_weak(%union.tree_node* %decl, %union.tree_node* %7) #7, !dbg !2039
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %.lcssa10, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2040
  %8 = bitcast %union.tree_node** %chain to i64*, !dbg !2040
  %9 = load i64, i64* %8, align 8, !dbg !2040
  %10 = bitcast %union.tree_node** %p.0.lcssa11 to i64*, !dbg !2041
  store i64 %9, i64* %10, align 8, !dbg !2041
  br label %cleanup.cont, !dbg !2042

for.inc:                                          ; preds = %for.body
  %chain27 = getelementptr inbounds %union.tree_node, %union.tree_node* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2043
  call void @llvm.dbg.value(metadata %union.tree_node** %chain27, metadata !2007, metadata !DIExpression()), !dbg !2010
  br label %for.cond, !dbg !2044, !llvm.loop !2045

cleanup.cont.loopexit:                            ; preds = %for.cond
  br label %cleanup.cont, !dbg !2047

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit, %land.lhs.true13, %land.lhs.true, %entry, %if.then23
  ret void, !dbg !2047
}

declare dso_local %union.tree_node* @decl_assembler_name(%union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @apply_pragma_weak(%union.tree_node* %decl, %union.tree_node* %value) unnamed_addr #4 !dbg !2048 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !2052, metadata !DIExpression()), !dbg !2054
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %value, metadata !2053, metadata !DIExpression()), !dbg !2054
  %tobool = icmp eq %union.tree_node* %value, null, !dbg !2055
  br i1 %tobool, label %entry.if.end_crit_edge, label %if.then, !dbg !2057

entry.if.end_crit_edge:                           ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, !dbg !2057
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2057
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2057
  br label %if.end, !dbg !2057

if.then:                                          ; preds = %entry
  %id = getelementptr inbounds %union.tree_node, %union.tree_node* %value, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2058
  %3 = getelementptr inbounds i32, i32* %id, i64 2, !dbg !2058
  %4 = load i32, i32* %3, align 8, !dbg !2058
  %str = bitcast i32* %id to i8**, !dbg !2060
  %5 = load i8*, i8** %str, align 8, !dbg !2060
  %call = tail call %union.tree_node* @build_string(i32 %4, i8* %5) #6, !dbg !2061
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2053, metadata !DIExpression()), !dbg !2054
  %call3 = tail call %union.tree_node* @get_identifier(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0)) #6, !dbg !2062
  %call4 = tail call %union.tree_node* @build_tree_list_stat(%union.tree_node* null, %union.tree_node* %call) #6, !dbg !2062
  %call5 = tail call %union.tree_node* @build_tree_list_stat(%union.tree_node* %call3, %union.tree_node* %call4) #6, !dbg !2062
  call void @llvm.dbg.value(metadata %union.tree_node** %decl.addr, metadata !2052, metadata !DIExpression(DW_OP_deref)), !dbg !2054
  %call6 = call %union.tree_node* @decl_attributes(%union.tree_node** nonnull %decl.addr, %union.tree_node* %call5, i32 0) #6, !dbg !2063
  %.phi.trans.insert = bitcast %union.tree_node** %decl.addr to %struct.tree_decl_common**, !dbg !2064
  %.pre = load %struct.tree_decl_common*, %struct.tree_decl_common** %.phi.trans.insert, align 8, !dbg !2066
  %6 = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %.pre, i64 0, i32 0, i32 0, i32 0, i32 0, !dbg !2067
  %7 = bitcast %struct.tree_decl_common* %.pre to %struct.tree_decl_with_vis*, !dbg !2067
  %8 = bitcast %struct.tree_decl_common* %.pre to %union.tree_node*, !dbg !2067
  br label %if.end, !dbg !2067

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %9 = phi %union.tree_node* [ %decl, %entry.if.end_crit_edge ], [ %8, %if.then ]
  %10 = phi %struct.tree_decl_with_vis* [ %0, %entry.if.end_crit_edge ], [ %7, %if.then ]
  %11 = phi i64* [ %1, %entry.if.end_crit_edge ], [ %6, %if.then ]
  %12 = phi %struct.tree_decl_common* [ %2, %entry.if.end_crit_edge ], [ %.pre, %if.then ], !dbg !2066
  %decl_flag_1 = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %12, i64 0, i32 2, !dbg !2066
  %13 = bitcast i40* %decl_flag_1 to i64*, !dbg !2066
  %bf.load = load i64, i64* %13, align 8, !dbg !2066
  %bf.cast1 = and i64 %bf.load, 33554432, !dbg !2066
  %tobool7 = icmp eq i64 %bf.cast1, 0, !dbg !2066
  br i1 %tobool7, label %if.end28, label %land.lhs.true, !dbg !2068

land.lhs.true:                                    ; preds = %if.end
  %bf.load8 = load i64, i64* %11, align 8, !dbg !2069
  %bf.cast112 = and i64 %bf.load8, 16777216, !dbg !2069
  %tobool12 = icmp eq i64 %bf.cast112, 0, !dbg !2069
  br i1 %tobool12, label %if.end28, label %land.lhs.true13, !dbg !2070

land.lhs.true13:                                  ; preds = %land.lhs.true
  %weak_flag = getelementptr inbounds %struct.tree_decl_with_vis, %struct.tree_decl_with_vis* %10, i64 0, i32 4, !dbg !2071
  %14 = bitcast i24* %weak_flag to i32*, !dbg !2071
  %bf.load14 = load i32, i32* %14, align 8, !dbg !2071
  %15 = trunc i32 %bf.load14 to i8, !dbg !2071
  %tobool17 = icmp slt i8 %15, 0, !dbg !2071
  br i1 %tobool17, label %if.end28, label %land.lhs.true18, !dbg !2072

land.lhs.true18:                                  ; preds = %land.lhs.true13
  call void @llvm.dbg.value(metadata %union.tree_node* %9, metadata !2052, metadata !DIExpression()), !dbg !2054
  %call19 = call %union.tree_node* @decl_assembler_name(%union.tree_node* %9) #6, !dbg !2073
  %16 = getelementptr inbounds %union.tree_node, %union.tree_node* %call19, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2073
  %bf.load21 = load i64, i64* %16, align 8, !dbg !2073
  %bf.cast243 = and i64 %bf.load21, 67108864, !dbg !2073
  %tobool25 = icmp eq i64 %bf.cast243, 0, !dbg !2073
  br i1 %tobool25, label %if.end28, label %if.then26, !dbg !2074

if.then26:                                        ; preds = %land.lhs.true18
  %17 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8, !dbg !2075
  call void @llvm.dbg.value(metadata %union.tree_node* %17, metadata !2052, metadata !DIExpression()), !dbg !2054
  %call27 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.29, i64 0, i64 0), %union.tree_node* %17) #6, !dbg !2076
  br label %if.end28, !dbg !2076

if.end28:                                         ; preds = %land.lhs.true18, %land.lhs.true, %if.end, %if.then26, %land.lhs.true13
  %18 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8, !dbg !2077
  call void @llvm.dbg.value(metadata %union.tree_node* %18, metadata !2052, metadata !DIExpression()), !dbg !2054
  call void @declare_weak(%union.tree_node* %18) #6, !dbg !2078
  ret void, !dbg !2079
}

; Function Attrs: nounwind uwtable
define dso_local void @maybe_apply_pending_pragma_weaks() local_unnamed_addr #4 !dbg !2080 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** @pending_weaks, metadata !2084, metadata !DIExpression()), !dbg !2090
  br label %for.cond, !dbg !2091

for.cond:                                         ; preds = %for.inc, %entry
  %p.0 = phi %union.tree_node** [ @pending_weaks, %entry ], [ %chain, %for.inc ], !dbg !2093
  call void @llvm.dbg.value(metadata %union.tree_node** %p.0, metadata !2084, metadata !DIExpression()), !dbg !2090
  %0 = load %union.tree_node*, %union.tree_node** %p.0, align 8, !dbg !2094
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !2085, metadata !DIExpression()), !dbg !2090
  %tobool = icmp eq %union.tree_node* %0, null, !dbg !2096
  br i1 %tobool, label %for.end, label %for.body, !dbg !2096

for.body:                                         ; preds = %for.cond
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2097
  call void @llvm.dbg.value(metadata %union.tree_node** %chain, metadata !2089, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata %union.tree_node* undef, metadata !2086, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata %union.tree_node* undef, metadata !2087, metadata !DIExpression()), !dbg !2090
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2099
  %2 = load %union.tree_node*, %union.tree_node** %1, align 8, !dbg !2099
  %cmp = icmp eq %union.tree_node* %2, null, !dbg !2101
  br i1 %cmp, label %for.inc, label %if.end, !dbg !2102

if.end:                                           ; preds = %for.body
  call void @llvm.dbg.value(metadata %union.tree_node* %2, metadata !2087, metadata !DIExpression()), !dbg !2090
  %purpose = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2103
  %3 = bitcast i32* %purpose to %union.tree_node**, !dbg !2103
  %4 = load %union.tree_node*, %union.tree_node** %3, align 8, !dbg !2103
  call void @llvm.dbg.value(metadata %union.tree_node* %4, metadata !2086, metadata !DIExpression()), !dbg !2090
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 48), align 16, !dbg !2104
  %call = tail call %union.tree_node* @build_decl_stat(i32 0, i32 29, %union.tree_node* %4, %union.tree_node* %5) #6, !dbg !2104
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2088, metadata !DIExpression()), !dbg !2090
  %artificial_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2105
  %6 = bitcast i40* %artificial_flag to i64*, !dbg !2105
  %bf.load = load i64, i64* %6, align 8, !dbg !2106
  %7 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2107
  %bf.load4 = load i64, i64* %7, align 8, !dbg !2108
  %bf.set6 = or i64 %bf.load4, 134217728, !dbg !2108
  store i64 %bf.set6, i64* %7, align 8, !dbg !2108
  %bf.set10 = or i64 %bf.load, 33558528, !dbg !2109
  store i64 %bf.set10, i64* %6, align 8, !dbg !2109
  %weak_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 4, !dbg !2110
  %8 = bitcast i24* %weak_flag to i32*, !dbg !2110
  %bf.load11 = load i32, i32* %8, align 8, !dbg !2111
  %bf.set13 = or i32 %bf.load11, 128, !dbg !2111
  store i32 %bf.set13, i32* %8, align 8, !dbg !2111
  tail call void @assemble_alias(%union.tree_node* %call, %union.tree_node* nonnull %2) #6, !dbg !2112
  br label %for.inc, !dbg !2113

for.inc:                                          ; preds = %for.body, %if.end
  call void @llvm.dbg.value(metadata %union.tree_node** %chain, metadata !2084, metadata !DIExpression()), !dbg !2090
  br label %for.cond, !dbg !2114, !llvm.loop !2115

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2117
}

declare dso_local %union.tree_node* @build_decl_stat(i32, i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #1

declare dso_local void @assemble_alias(%union.tree_node*, %union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @add_to_renaming_pragma_list(%union.tree_node* %oldname, %union.tree_node* %newname) local_unnamed_addr #4 !dbg !2118 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %oldname, metadata !2120, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata %union.tree_node* %newname, metadata !2121, metadata !DIExpression()), !dbg !2123
  %0 = load %union.tree_node*, %union.tree_node** @pending_redefine_extname, align 8, !dbg !2124
  %call = tail call %union.tree_node* @purpose_member(%union.tree_node* %oldname, %union.tree_node* %0) #6, !dbg !2125
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2122, metadata !DIExpression()), !dbg !2123
  %tobool = icmp eq %union.tree_node* %call, null, !dbg !2126
  br i1 %tobool, label %if.end3, label %if.then, !dbg !2128

if.then:                                          ; preds = %entry
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2129
  %2 = load %union.tree_node*, %union.tree_node** %1, align 8, !dbg !2129
  %cmp = icmp eq %union.tree_node* %2, %newname, !dbg !2132
  br i1 %cmp, label %cleanup.cont, label %if.then1, !dbg !2133

if.then1:                                         ; preds = %if.then
  %call2 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0)) #6, !dbg !2134
  br label %cleanup.cont, !dbg !2134

if.end3:                                          ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** @pending_redefine_extname, align 8, !dbg !2135
  %call4 = tail call %union.tree_node* @tree_cons_stat(%union.tree_node* %oldname, %union.tree_node* %newname, %union.tree_node* %3) #6, !dbg !2135
  store %union.tree_node* %call4, %union.tree_node** @pending_redefine_extname, align 8, !dbg !2136
  br label %cleanup.cont, !dbg !2137

cleanup.cont:                                     ; preds = %if.then, %if.end3, %if.then1
  ret void, !dbg !2137
}

declare dso_local %union.tree_node* @purpose_member(%union.tree_node*, %union.tree_node*) local_unnamed_addr #1

declare dso_local zeroext i8 @warning(i32, i8*, ...) local_unnamed_addr #1

declare dso_local %union.tree_node* @tree_cons_stat(%union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @maybe_apply_renaming_pragma(%union.tree_node* %decl, %union.tree_node* %asmname) local_unnamed_addr #4 !dbg !2138 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !2142, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata %union.tree_node* %asmname, metadata !2143, metadata !DIExpression()), !dbg !2161
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2162
  %bf.load = load i64, i64* %0, align 8, !dbg !2162
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2164
  %cmp = icmp eq i64 %bf.cast1, 29, !dbg !2164
  br i1 %cmp, label %lor.lhs.false, label %land.lhs.true, !dbg !2165

land.lhs.true:                                    ; preds = %entry
  %cmp5 = icmp eq i64 %bf.cast1, 32, !dbg !2166
  br i1 %cmp5, label %lor.lhs.false, label %cleanup131, !dbg !2167

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %bf.cast92 = and i64 %bf.load, 134217728, !dbg !2168
  %tobool = icmp eq i64 %bf.cast92, 0, !dbg !2168
  br i1 %tobool, label %land.lhs.true10, label %lor.lhs.false16, !dbg !2169

land.lhs.true10:                                  ; preds = %lor.lhs.false
  %decl_flag_1 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2170
  %1 = bitcast i40* %decl_flag_1 to i64*, !dbg !2170
  %bf.load11 = load i64, i64* %1, align 8, !dbg !2170
  %bf.cast143 = and i64 %bf.load11, 33554432, !dbg !2170
  %tobool15 = icmp eq i64 %bf.cast143, 0, !dbg !2170
  br i1 %tobool15, label %cleanup131, label %lor.lhs.false16, !dbg !2171

lor.lhs.false16:                                  ; preds = %land.lhs.true10, %lor.lhs.false
  %call = tail call zeroext i8 @has_c_linkage(%union.tree_node* %decl) #6, !dbg !2172
  %tobool17 = icmp eq i8 %call, 0, !dbg !2172
  br i1 %tobool17, label %cleanup131, label %if.end, !dbg !2173

if.end:                                           ; preds = %lor.lhs.false16
  %bf.load19 = load i64, i64* %0, align 8, !dbg !2174
  %bf.cast21 = and i64 %bf.load19, 65535, !dbg !2174
  %arrayidx22 = getelementptr inbounds [191 x [64 x i8]], [191 x [64 x i8]]* @tree_contains_struct, i64 0, i64 %bf.cast21, i64 13, !dbg !2174
  %2 = load i8, i8* %arrayidx22, align 1, !dbg !2174
  %tobool23 = icmp eq i8 %2, 0, !dbg !2174
  br i1 %tobool23, label %if.end54, label %land.lhs.true24, !dbg !2174

land.lhs.true24:                                  ; preds = %if.end
  %assembler_name = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !2174
  %3 = load %union.tree_node*, %union.tree_node** %assembler_name, align 8, !dbg !2174
  %cmp25 = icmp eq %union.tree_node* %3, null, !dbg !2174
  br i1 %cmp25, label %if.end54, label %if.then27, !dbg !2175

if.then27:                                        ; preds = %land.lhs.true24
  %call28 = tail call %union.tree_node* @decl_assembler_name(%union.tree_node* %decl) #6, !dbg !2176
  %id = getelementptr inbounds %union.tree_node, %union.tree_node* %call28, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2176
  %str = bitcast i32* %id to i8**, !dbg !2176
  %4 = load i8*, i8** %str, align 8, !dbg !2176
  call void @llvm.dbg.value(metadata i8* %4, metadata !2146, metadata !DIExpression()), !dbg !2177
  %5 = load i8* (i8*)*, i8* (i8*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 52), align 8, !dbg !2178
  %call29 = tail call i8* %5(i8* %4) #6, !dbg !2179
  call void @llvm.dbg.value(metadata i8* %call29, metadata !2146, metadata !DIExpression()), !dbg !2177
  %tobool30 = icmp eq %union.tree_node* %asmname, null, !dbg !2180
  br i1 %tobool30, label %if.end37, label %land.lhs.true31, !dbg !2182

land.lhs.true31:                                  ; preds = %if.then27
  %str32 = getelementptr inbounds %union.tree_node, %union.tree_node* %asmname, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2183
  %arraydecay = bitcast i32* %str32 to i8*, !dbg !2183
  %call33 = tail call i32 @strcmp(i8* nonnull %arraydecay, i8* %call29) #6, !dbg !2184
  %tobool34 = icmp eq i32 %call33, 0, !dbg !2184
  br i1 %tobool34, label %if.end37, label %if.then35, !dbg !2185

if.then35:                                        ; preds = %land.lhs.true31
  %call36 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2186
  br label %if.end37, !dbg !2186

if.end37:                                         ; preds = %land.lhs.true31, %if.then27, %if.then35
  call void @llvm.dbg.value(metadata %union.tree_node** @pending_redefine_extname, metadata !2144, metadata !DIExpression()), !dbg !2161
  %name = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2187
  br label %for.cond, !dbg !2191

for.cond:                                         ; preds = %for.inc, %if.end37
  %p.0 = phi %union.tree_node** [ @pending_redefine_extname, %if.end37 ], [ %chain53, %for.inc ], !dbg !2192
  call void @llvm.dbg.value(metadata %union.tree_node** %p.0, metadata !2144, metadata !DIExpression()), !dbg !2161
  %6 = load %union.tree_node*, %union.tree_node** %p.0, align 8, !dbg !2193
  call void @llvm.dbg.value(metadata %union.tree_node* %6, metadata !2145, metadata !DIExpression()), !dbg !2161
  %tobool38 = icmp eq %union.tree_node* %6, null, !dbg !2194
  br i1 %tobool38, label %cleanup131.loopexit, label %for.body, !dbg !2194

for.body:                                         ; preds = %for.cond
  %7 = load %union.tree_node*, %union.tree_node** %name, align 8, !dbg !2195
  %purpose = getelementptr inbounds %union.tree_node, %union.tree_node* %6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2196
  %8 = bitcast i32* %purpose to %union.tree_node**, !dbg !2196
  %9 = load %union.tree_node*, %union.tree_node** %8, align 8, !dbg !2196
  %cmp39 = icmp eq %union.tree_node* %7, %9, !dbg !2197
  br i1 %cmp39, label %if.then41, label %for.inc, !dbg !2198

if.then41:                                        ; preds = %for.body
  %p.0.lcssa17 = phi %union.tree_node** [ %p.0, %for.body ], !dbg !2192
  %.lcssa16 = phi %union.tree_node* [ %6, %for.body ], !dbg !2193
  call void @llvm.dbg.value(metadata %union.tree_node** %p.0.lcssa17, metadata !2144, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata %union.tree_node** %p.0.lcssa17, metadata !2144, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata %union.tree_node** %p.0.lcssa17, metadata !2144, metadata !DIExpression()), !dbg !2161
  %10 = getelementptr inbounds %union.tree_node, %union.tree_node* %.lcssa16, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2199
  %11 = bitcast %union.tree_node** %10 to %struct.tree_identifier**, !dbg !2199
  %12 = load %struct.tree_identifier*, %struct.tree_identifier** %11, align 8, !dbg !2199
  %str45 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %12, i64 0, i32 1, i32 0, !dbg !2199
  %13 = load i8*, i8** %str45, align 8, !dbg !2199
  %call46 = tail call i32 @strcmp(i8* %13, i8* %call29) #6, !dbg !2202
  %tobool47 = icmp eq i32 %call46, 0, !dbg !2202
  br i1 %tobool47, label %if.end50, label %if.then48, !dbg !2203

if.then48:                                        ; preds = %if.then41
  %call49 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2204
  br label %if.end50, !dbg !2204

if.end50:                                         ; preds = %if.then41, %if.then48
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %.lcssa16, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2205
  %14 = bitcast %union.tree_node** %chain to i64*, !dbg !2205
  %15 = load i64, i64* %14, align 8, !dbg !2205
  %16 = bitcast %union.tree_node** %p.0.lcssa17 to i64*, !dbg !2206
  store i64 %15, i64* %16, align 8, !dbg !2206
  br label %cleanup131, !dbg !2207

for.inc:                                          ; preds = %for.body
  %chain53 = getelementptr inbounds %union.tree_node, %union.tree_node* %6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2208
  call void @llvm.dbg.value(metadata %union.tree_node** %chain53, metadata !2144, metadata !DIExpression()), !dbg !2161
  br label %for.cond, !dbg !2209, !llvm.loop !2210

if.end54:                                         ; preds = %land.lhs.true24, %if.end
  call void @llvm.dbg.value(metadata %union.tree_node** @pending_redefine_extname, metadata !2144, metadata !DIExpression()), !dbg !2161
  %name59 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2212
  br label %for.cond55, !dbg !2213

for.cond55:                                       ; preds = %for.inc91, %if.end54
  %p.1 = phi %union.tree_node** [ @pending_redefine_extname, %if.end54 ], [ %chain93, %for.inc91 ], !dbg !2214
  call void @llvm.dbg.value(metadata %union.tree_node** %p.1, metadata !2144, metadata !DIExpression()), !dbg !2161
  %17 = load %union.tree_node*, %union.tree_node** %p.1, align 8, !dbg !2215
  call void @llvm.dbg.value(metadata %union.tree_node* %17, metadata !2145, metadata !DIExpression()), !dbg !2161
  %tobool56 = icmp eq %union.tree_node* %17, null, !dbg !2216
  br i1 %tobool56, label %for.end94, label %for.body57, !dbg !2216

for.body57:                                       ; preds = %for.cond55
  %18 = load %union.tree_node*, %union.tree_node** %name59, align 8, !dbg !2217
  %purpose61 = getelementptr inbounds %union.tree_node, %union.tree_node* %17, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2218
  %19 = bitcast i32* %purpose61 to %union.tree_node**, !dbg !2218
  %20 = load %union.tree_node*, %union.tree_node** %19, align 8, !dbg !2218
  %cmp62 = icmp eq %union.tree_node* %18, %20, !dbg !2219
  br i1 %cmp62, label %if.then64, label %for.inc91, !dbg !2220

if.then64:                                        ; preds = %for.body57
  %p.1.lcssa15 = phi %union.tree_node** [ %p.1, %for.body57 ], !dbg !2214
  %.lcssa14 = phi %union.tree_node* [ %17, %for.body57 ], !dbg !2215
  call void @llvm.dbg.value(metadata %union.tree_node** %p.1.lcssa15, metadata !2144, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata %union.tree_node** %p.1.lcssa15, metadata !2144, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata %union.tree_node** %p.1.lcssa15, metadata !2144, metadata !DIExpression()), !dbg !2161
  %21 = getelementptr inbounds %union.tree_node, %union.tree_node* %.lcssa14, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2221
  %22 = load %union.tree_node*, %union.tree_node** %21, align 8, !dbg !2221
  call void @llvm.dbg.value(metadata %union.tree_node* %22, metadata !2149, metadata !DIExpression()), !dbg !2222
  %chain68 = getelementptr inbounds %union.tree_node, %union.tree_node* %.lcssa14, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2223
  %23 = bitcast %union.tree_node** %chain68 to i64*, !dbg !2223
  %24 = load i64, i64* %23, align 8, !dbg !2223
  %25 = bitcast %union.tree_node** %p.1.lcssa15 to i64*, !dbg !2224
  store i64 %24, i64* %25, align 8, !dbg !2224
  %tobool69 = icmp eq %union.tree_node* %asmname, null, !dbg !2225
  br i1 %tobool69, label %if.end83, label %if.then70, !dbg !2227

if.then70:                                        ; preds = %if.then64
  %str72 = getelementptr inbounds %union.tree_node, %union.tree_node* %asmname, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2228
  %arraydecay73 = bitcast i32* %str72 to i8*, !dbg !2228
  %id75 = getelementptr inbounds %union.tree_node, %union.tree_node* %22, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2231
  %str76 = bitcast i32* %id75 to i8**, !dbg !2231
  %26 = load i8*, i8** %str76, align 8, !dbg !2231
  %call77 = tail call i32 @strcmp(i8* nonnull %arraydecay73, i8* %26) #6, !dbg !2232
  %cmp78 = icmp eq i32 %call77, 0, !dbg !2233
  br i1 %cmp78, label %cleanup131, label %if.then80, !dbg !2234

if.then80:                                        ; preds = %if.then70
  %call81 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !2235
  br label %cleanup131, !dbg !2235

if.end83:                                         ; preds = %if.then64
  %id85 = getelementptr inbounds %union.tree_node, %union.tree_node* %22, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2236
  %27 = getelementptr inbounds i32, i32* %id85, i64 2, !dbg !2236
  %28 = load i32, i32* %27, align 8, !dbg !2236
  %str88 = bitcast i32* %id85 to i8**, !dbg !2237
  %29 = load i8*, i8** %str88, align 8, !dbg !2237
  %call89 = tail call %union.tree_node* @build_string(i32 %28, i8* %29) #6, !dbg !2238
  br label %cleanup131, !dbg !2239

for.inc91:                                        ; preds = %for.body57
  %chain93 = getelementptr inbounds %union.tree_node, %union.tree_node* %17, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2240
  call void @llvm.dbg.value(metadata %union.tree_node** %chain93, metadata !2144, metadata !DIExpression()), !dbg !2161
  br label %for.cond55, !dbg !2241, !llvm.loop !2242

for.end94:                                        ; preds = %for.cond55
  %tobool95 = icmp eq %union.tree_node* %asmname, null, !dbg !2244
  br i1 %tobool95, label %if.end97, label %cleanup131, !dbg !2246

if.end97:                                         ; preds = %for.end94
  %30 = load %union.tree_node*, %union.tree_node** @pragma_extern_prefix, align 8, !dbg !2247
  %tobool98 = icmp eq %union.tree_node* %30, null, !dbg !2247
  br i1 %tobool98, label %cleanup131, label %if.then99, !dbg !2248

if.then99:                                        ; preds = %if.end97
  %arraydecay102 = getelementptr inbounds %union.tree_node, %union.tree_node* %30, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2249
  %31 = bitcast i32* %arraydecay102 to i8*, !dbg !2249
  call void @llvm.dbg.value(metadata i8* %31, metadata !2154, metadata !DIExpression()), !dbg !2250
  %32 = getelementptr inbounds %union.tree_node, %union.tree_node* %30, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2251
  %33 = load i32, i32* %32, align 8, !dbg !2251
  %sub = add nsw i32 %33, -1, !dbg !2252
  %conv104 = sext i32 %sub to i64, !dbg !2251
  call void @llvm.dbg.value(metadata i64 %conv104, metadata !2157, metadata !DIExpression()), !dbg !2250
  %34 = bitcast %union.tree_node** %name59 to %struct.tree_identifier**, !dbg !2253
  %35 = load %struct.tree_identifier*, %struct.tree_identifier** %34, align 8, !dbg !2253
  %str110 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %35, i64 0, i32 1, i32 0, !dbg !2253
  %36 = load i8*, i8** %str110, align 8, !dbg !2253
  call void @llvm.dbg.value(metadata i8* %36, metadata !2158, metadata !DIExpression()), !dbg !2250
  %len115 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %35, i64 0, i32 1, i32 1, !dbg !2254
  %37 = load i32, i32* %len115, align 8, !dbg !2254
  %conv116 = zext i32 %37 to i64, !dbg !2254
  call void @llvm.dbg.value(metadata i64 %conv116, metadata !2159, metadata !DIExpression()), !dbg !2250
  %add = add nsw i64 %conv104, %conv116, !dbg !2255
  %add118 = add nsw i64 %add, 1, !dbg !2255
  %38 = alloca i8, i64 %add118, align 16, !dbg !2255
  call void @llvm.dbg.value(metadata i8* %38, metadata !2160, metadata !DIExpression()), !dbg !2250
  %call119 = call i8* @memcpy(i8* nonnull %38, i8* nonnull %31, i64 %conv104) #6, !dbg !2256
  %add.ptr = getelementptr inbounds i8, i8* %38, i64 %conv104, !dbg !2257
  %add120 = add nuw nsw i64 %conv116, 1, !dbg !2258
  %call121 = call i8* @memcpy(i8* nonnull %add.ptr, i8* %36, i64 %add120) #6, !dbg !2259
  %add122 = add i32 %sub, %37, !dbg !2260
  %call124 = call %union.tree_node* @build_string(i32 %add122, i8* nonnull %38) #6, !dbg !2261
  br label %cleanup131

cleanup131.loopexit:                              ; preds = %for.cond
  br label %cleanup131, !dbg !2262

cleanup131:                                       ; preds = %cleanup131.loopexit, %land.lhs.true, %if.then70, %if.end97, %for.end94, %lor.lhs.false16, %land.lhs.true10, %if.end83, %if.then80, %if.end50, %if.then99
  %retval.1 = phi %union.tree_node* [ %call124, %if.then99 ], [ %asmname, %lor.lhs.false16 ], [ %asmname, %land.lhs.true10 ], [ %asmname, %land.lhs.true ], [ null, %if.end50 ], [ %call89, %if.end83 ], [ %asmname, %if.then80 ], [ %asmname, %if.then70 ], [ %asmname, %for.end94 ], [ null, %if.end97 ], [ null, %cleanup131.loopexit ], !dbg !2161
  ret %union.tree_node* %retval.1, !dbg !2262
}

declare dso_local zeroext i8 @has_c_linkage(%union.tree_node*) local_unnamed_addr #1

declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #1

declare dso_local %union.tree_node* @build_string(i32, i8*) local_unnamed_addr #1

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @push_visibility(i8* %str, i32 %kind) local_unnamed_addr #4 !dbg !2263 {
entry:
  call void @llvm.dbg.value(metadata i8* %str, metadata !2267, metadata !DIExpression()), !dbg !2269
  call void @llvm.dbg.value(metadata i32 %kind, metadata !2268, metadata !DIExpression()), !dbg !2269
  %0 = load i32, i32* @default_visibility, align 4, !dbg !2270
  %shl = shl i32 %kind, 8, !dbg !2270
  %or = or i32 %0, %shl, !dbg !2270
  %call = tail call fastcc i32* @VEC_int_heap_safe_push(%struct.VEC_int_heap** nonnull @visstack, i32 %or) #7, !dbg !2270
  %call1 = tail call i32 @strcmp(i8* %str, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !2271
  %tobool = icmp eq i32 %call1, 0, !dbg !2271
  br i1 %tobool, label %if.then, label %if.else, !dbg !2273

if.then:                                          ; preds = %entry
  store i32 0, i32* @default_visibility, align 4, !dbg !2274
  br label %if.end17, !dbg !2275

if.else:                                          ; preds = %entry
  %call2 = tail call i32 @strcmp(i8* %str, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2276
  %tobool3 = icmp eq i32 %call2, 0, !dbg !2276
  br i1 %tobool3, label %if.then4, label %if.else5, !dbg !2278

if.then4:                                         ; preds = %if.else
  store i32 3, i32* @default_visibility, align 4, !dbg !2279
  br label %if.end17, !dbg !2280

if.else5:                                         ; preds = %if.else
  %call6 = tail call i32 @strcmp(i8* %str, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !2281
  %tobool7 = icmp eq i32 %call6, 0, !dbg !2281
  br i1 %tobool7, label %if.then8, label %if.else9, !dbg !2283

if.then8:                                         ; preds = %if.else5
  store i32 2, i32* @default_visibility, align 4, !dbg !2284
  br label %if.end17, !dbg !2285

if.else9:                                         ; preds = %if.else5
  %call10 = tail call i32 @strcmp(i8* %str, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !2286
  %tobool11 = icmp eq i32 %call10, 0, !dbg !2286
  br i1 %tobool11, label %if.then12, label %do.body, !dbg !2288

if.then12:                                        ; preds = %if.else9
  store i32 1, i32* @default_visibility, align 4, !dbg !2289
  br label %if.end17

do.body:                                          ; preds = %if.else9
  %call14 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !2290
  br label %return, !dbg !2290

if.end17:                                         ; preds = %if.then4, %if.then12, %if.then8, %if.then
  %bf.load = load i8, i8* getelementptr inbounds (%struct.visibility_flags, %struct.visibility_flags* @visibility_options, i64 0, i32 0), align 4, !dbg !2292
  %bf.set = or i8 %bf.load, 1, !dbg !2292
  store i8 %bf.set, i8* getelementptr inbounds (%struct.visibility_flags, %struct.visibility_flags* @visibility_options, i64 0, i32 0), align 4, !dbg !2292
  br label %return, !dbg !2293

return:                                           ; preds = %if.end17, %do.body
  ret void, !dbg !2293
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32* @VEC_int_heap_safe_push(%struct.VEC_int_heap** %vec_, i32 %obj_) unnamed_addr #0 !dbg !2294 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** @visstack, metadata !2300, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i32 %obj_, metadata !2301, metadata !DIExpression()), !dbg !2302
  %call = tail call fastcc i32 @VEC_int_heap_reserve(%struct.VEC_int_heap** nonnull @visstack, i32 1) #7, !dbg !2303
  %0 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** @visstack, align 8, !dbg !2303
  %tobool = icmp eq %struct.VEC_int_heap* %0, null, !dbg !2303
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2303

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %0, i64 0, i32 0, !dbg !2303
  br label %cond.end, !dbg !2303

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_int_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2303
  %call1 = tail call fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %cond, i32 %obj_) #7, !dbg !2303
  ret i32* %call1, !dbg !2303
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @pop_visibility(i32 %kind) local_unnamed_addr #4 !dbg !2304 {
entry:
  call void @llvm.dbg.value(metadata i32 %kind, metadata !2308, metadata !DIExpression()), !dbg !2309
  %0 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** @visstack, align 8, !dbg !2310
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %0, i64 0, i32 0, !dbg !2310
  %call = tail call fastcc i32 @VEC_int_base_length(%struct.VEC_int_base* %base) #7, !dbg !2310
  %tobool1 = icmp eq i32 %call, 0, !dbg !2310
  br i1 %tobool1, label %return, label %if.end, !dbg !2312

if.end:                                           ; preds = %entry
  %1 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** @visstack, align 8, !dbg !2313
  %base4 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %1, i64 0, i32 0, !dbg !2313
  %call8 = tail call fastcc i32 @VEC_int_base_last(%struct.VEC_int_base* %base4) #7, !dbg !2313
  %shr = ashr i32 %call8, 8, !dbg !2315
  %cmp = icmp eq i32 %shr, %kind, !dbg !2316
  br i1 %cmp, label %if.end10, label %return, !dbg !2317

if.end10:                                         ; preds = %if.end
  %2 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** @visstack, align 8, !dbg !2318
  %base13 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %2, i64 0, i32 0, !dbg !2318
  %call17 = tail call fastcc i32 @VEC_int_base_pop(%struct.VEC_int_base* %base13) #7, !dbg !2318
  %and = and i32 %call17, 255, !dbg !2319
  store i32 %and, i32* @default_visibility, align 4, !dbg !2320
  %3 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** @visstack, align 8, !dbg !2321
  %base20 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %3, i64 0, i32 0, !dbg !2321
  %call24 = tail call fastcc i32 @VEC_int_base_length(%struct.VEC_int_base* %base20) #7, !dbg !2321
  %cmp25 = icmp ne i32 %call24, 0, !dbg !2322
  %4 = zext i1 %cmp25 to i8, !dbg !2323
  %bf.load = load i8, i8* getelementptr inbounds (%struct.visibility_flags, %struct.visibility_flags* @visibility_options, i64 0, i32 0), align 4, !dbg !2323
  %bf.clear = and i8 %bf.load, -2, !dbg !2323
  %bf.set = or i8 %bf.clear, %4, !dbg !2323
  store i8 %bf.set, i8* getelementptr inbounds (%struct.visibility_flags, %struct.visibility_flags* @visibility_options, i64 0, i32 0), align 4, !dbg !2323
  br label %return, !dbg !2324

return:                                           ; preds = %if.end, %entry, %if.end10
  %retval.0 = phi i8 [ 1, %if.end10 ], [ 0, %entry ], [ 0, %if.end ], !dbg !2309
  ret i8 %retval.0, !dbg !2325
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_base_length(%struct.VEC_int_base* %vec_) unnamed_addr #0 !dbg !2326 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !2332, metadata !DIExpression()), !dbg !2333
  %tobool = icmp eq %struct.VEC_int_base* %vec_, null, !dbg !2334
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2334

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !2334
  %0 = load i32, i32* %num, align 4, !dbg !2334
  br label %cond.end, !dbg !2334

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2334
  ret i32 %cond, !dbg !2334
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_base_last(%struct.VEC_int_base* %vec_) unnamed_addr #0 !dbg !2335 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !2339, metadata !DIExpression()), !dbg !2340
  br label %land.end, !dbg !2341

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %num2 = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !2341
  %0 = load i32, i32* %num2, align 4, !dbg !2341
  %sub = add i32 %0, -1, !dbg !2341
  %idxprom = zext i32 %sub to i64, !dbg !2341
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2341
  %1 = load i32, i32* %arrayidx, align 4, !dbg !2341
  ret i32 %1, !dbg !2341
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_base_pop(%struct.VEC_int_base* %vec_) unnamed_addr #0 !dbg !2342 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !2347, metadata !DIExpression()), !dbg !2349
  %num1 = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !2350
  %0 = load i32, i32* %num1, align 4, !dbg !2350
  %dec = add i32 %0, -1, !dbg !2350
  store i32 %dec, i32* %num1, align 4, !dbg !2350
  %idxprom = zext i32 %dec to i64, !dbg !2350
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2350
  %1 = load i32, i32* %arrayidx, align 4, !dbg !2350
  call void @llvm.dbg.value(metadata i32 %1, metadata !2348, metadata !DIExpression()), !dbg !2349
  ret i32 %1, !dbg !2350
}

; Function Attrs: nounwind uwtable
define dso_local void @mark_valid_location_for_stdc_pragma(i8 zeroext %flag) local_unnamed_addr #4 !dbg !2351 {
entry:
  call void @llvm.dbg.value(metadata i8 %flag, metadata !2355, metadata !DIExpression()), !dbg !2356
  store i8 %flag, i8* @valid_location_for_stdc_pragma, align 1, !dbg !2357
  ret void, !dbg !2358
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @valid_location_for_stdc_pragma_p() local_unnamed_addr #4 !dbg !2359 {
entry:
  %0 = load i8, i8* @valid_location_for_stdc_pragma, align 1, !dbg !2362
  ret i8 %0, !dbg !2363
}

; Function Attrs: nounwind uwtable
define dso_local void @c_pp_lookup_pragma(i32 %id, i8** %space, i8** %name) local_unnamed_addr #4 !dbg !2364 {
entry:
  call void @llvm.dbg.value(metadata i32 %id, metadata !2369, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata i8** %space, metadata !2370, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata i8** %name, metadata !2371, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata i32 14, metadata !2372, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata i32 0, metadata !2373, metadata !DIExpression()), !dbg !2374
  br label %for.cond, !dbg !2375

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ], !dbg !2377
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2373, metadata !DIExpression()), !dbg !2374
  %exitcond = icmp eq i64 %indvars.iv, 14, !dbg !2378
  br i1 %exitcond, label %for.end, label %for.body, !dbg !2380

for.body:                                         ; preds = %for.cond
  %id1 = getelementptr inbounds [14 x %struct.omp_pragma_def], [14 x %struct.omp_pragma_def]* @omp_pragmas, i64 0, i64 %indvars.iv, i32 1, !dbg !2381
  %0 = load i32, i32* %id1, align 8, !dbg !2381
  %cmp2 = icmp eq i32 %0, %id, !dbg !2383
  br i1 %cmp2, label %if.then, label %for.inc, !dbg !2384

if.then:                                          ; preds = %for.body
  %indvars.iv.lcssa2 = phi i64 [ %indvars.iv, %for.body ], !dbg !2377
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa2, metadata !2373, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa2, metadata !2373, metadata !DIExpression()), !dbg !2374
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8** %space, align 8, !dbg !2385
  %name5 = getelementptr inbounds [14 x %struct.omp_pragma_def], [14 x %struct.omp_pragma_def]* @omp_pragmas, i64 0, i64 %indvars.iv.lcssa2, i32 0, !dbg !2387
  %1 = bitcast i8** %name5 to i64*, !dbg !2387
  %2 = load i64, i64* %1, align 16, !dbg !2387
  %3 = bitcast i8** %name to i64*, !dbg !2388
  store i64 %2, i64* %3, align 8, !dbg !2388
  br label %cleanup.cont, !dbg !2389

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2390
  call void @llvm.dbg.value(metadata i32 undef, metadata !2373, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2374
  br label %for.cond, !dbg !2391, !llvm.loop !2392

for.end:                                          ; preds = %for.cond
  %cmp6 = icmp ugt i32 %id, 17, !dbg !2394
  br i1 %cmp6, label %land.lhs.true, label %if.end26, !dbg !2396

land.lhs.true:                                    ; preds = %for.end
  %4 = load %struct.VEC_pragma_ns_name_heap*, %struct.VEC_pragma_ns_name_heap** @registered_pp_pragmas, align 8, !dbg !2397
  %base = getelementptr inbounds %struct.VEC_pragma_ns_name_heap, %struct.VEC_pragma_ns_name_heap* %4, i64 0, i32 0, !dbg !2397
  %call = tail call fastcc i32 @VEC_pragma_ns_name_base_length(%struct.VEC_pragma_ns_name_base* %base) #7, !dbg !2397
  %add = add i32 %call, 18, !dbg !2398
  %cmp7 = icmp ugt i32 %add, %id, !dbg !2399
  br i1 %cmp7, label %if.then8, label %if.end26, !dbg !2400

if.then8:                                         ; preds = %land.lhs.true
  %5 = load %struct.VEC_pragma_ns_name_heap*, %struct.VEC_pragma_ns_name_heap** @registered_pp_pragmas, align 8, !dbg !2401
  %base11 = getelementptr inbounds %struct.VEC_pragma_ns_name_heap, %struct.VEC_pragma_ns_name_heap* %5, i64 0, i32 0, !dbg !2401
  %sub = add i32 %id, -18, !dbg !2401
  %call15 = tail call fastcc %struct.pragma_ns_name* @VEC_pragma_ns_name_base_index(%struct.VEC_pragma_ns_name_base* %base11, i32 %sub) #7, !dbg !2401
  %6 = bitcast %struct.pragma_ns_name* %call15 to i64*, !dbg !2403
  %7 = load i64, i64* %6, align 8, !dbg !2403
  %8 = bitcast i8** %space to i64*, !dbg !2404
  store i64 %7, i64* %8, align 8, !dbg !2404
  %9 = load %struct.VEC_pragma_ns_name_heap*, %struct.VEC_pragma_ns_name_heap** @registered_pp_pragmas, align 8, !dbg !2405
  %base19 = getelementptr inbounds %struct.VEC_pragma_ns_name_heap, %struct.VEC_pragma_ns_name_heap* %9, i64 0, i32 0, !dbg !2405
  %call24 = tail call fastcc %struct.pragma_ns_name* @VEC_pragma_ns_name_base_index(%struct.VEC_pragma_ns_name_base* %base19, i32 %sub) #7, !dbg !2405
  %name25 = getelementptr inbounds %struct.pragma_ns_name, %struct.pragma_ns_name* %call24, i64 0, i32 1, !dbg !2406
  %10 = bitcast i8** %name25 to i64*, !dbg !2406
  %11 = load i64, i64* %10, align 8, !dbg !2406
  %12 = bitcast i8** %name to i64*, !dbg !2407
  store i64 %11, i64* %12, align 8, !dbg !2407
  br label %cleanup.cont, !dbg !2408

if.end26:                                         ; preds = %land.lhs.true, %for.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 1198, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !2409
  br label %cleanup.cont, !dbg !2410

cleanup.cont:                                     ; preds = %if.then, %if.then8, %if.end26
  ret void, !dbg !2410
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_pragma_ns_name_base_length(%struct.VEC_pragma_ns_name_base* %vec_) unnamed_addr #0 !dbg !2411 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_pragma_ns_name_base* %vec_, metadata !2417, metadata !DIExpression()), !dbg !2418
  %tobool = icmp eq %struct.VEC_pragma_ns_name_base* %vec_, null, !dbg !2419
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2419

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_pragma_ns_name_base, %struct.VEC_pragma_ns_name_base* %vec_, i64 0, i32 0, !dbg !2419
  %0 = load i32, i32* %num, align 8, !dbg !2419
  br label %cond.end, !dbg !2419

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2419
  ret i32 %cond, !dbg !2419
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.pragma_ns_name* @VEC_pragma_ns_name_base_index(%struct.VEC_pragma_ns_name_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2420 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_pragma_ns_name_base* %vec_, metadata !2426, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2427, metadata !DIExpression()), !dbg !2428
  br label %land.end, !dbg !2429

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !2429
  %arrayidx = getelementptr inbounds %struct.VEC_pragma_ns_name_base, %struct.VEC_pragma_ns_name_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2429
  ret %struct.pragma_ns_name* %arrayidx, !dbg !2429
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @c_register_pragma(i8* %space, i8* %name, void (%struct.cpp_reader*)* %handler) local_unnamed_addr #4 !dbg !2430 {
entry:
  call void @llvm.dbg.value(metadata i8* %space, metadata !2434, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i8* %name, metadata !2435, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata void (%struct.cpp_reader*)* %handler, metadata !2436, metadata !DIExpression()), !dbg !2437
  tail call fastcc void @c_register_pragma_1(i8* %space, i8* %name, void (%struct.cpp_reader*)* %handler, i8 zeroext 0) #7, !dbg !2438
  ret void, !dbg !2439
}

; Function Attrs: nounwind uwtable
define internal fastcc void @c_register_pragma_1(i8* %space, i8* %name, void (%struct.cpp_reader*)* %handler, i8 zeroext %allow_expansion) unnamed_addr #4 !dbg !2440 {
entry:
  %handler.addr = alloca void (%struct.cpp_reader*)*, align 8
  %ns_name = alloca %struct.pragma_ns_name, align 8
  call void @llvm.dbg.value(metadata i8* %space, metadata !2444, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8* %name, metadata !2445, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata void (%struct.cpp_reader*)* %handler, metadata !2446, metadata !DIExpression()), !dbg !2452
  store void (%struct.cpp_reader*)* %handler, void (%struct.cpp_reader*)** %handler.addr, align 8
  call void @llvm.dbg.value(metadata i8 %allow_expansion, metadata !2447, metadata !DIExpression()), !dbg !2452
  %0 = load i32, i32* @flag_preprocess_only, align 4, !dbg !2453
  %tobool = icmp eq i32 %0, 0, !dbg !2453
  br i1 %tobool, label %if.else, label %if.then, !dbg !2454

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.pragma_ns_name* %ns_name to i8*, !dbg !2455
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2455
  %tobool1 = icmp eq i8 %allow_expansion, 0, !dbg !2456
  br i1 %tobool1, label %cleanup, label %if.end, !dbg !2458

if.end:                                           ; preds = %if.then
  %space3 = getelementptr inbounds %struct.pragma_ns_name, %struct.pragma_ns_name* %ns_name, i64 0, i32 0, !dbg !2459
  store i8* %space, i8** %space3, align 8, !dbg !2460
  %name4 = getelementptr inbounds %struct.pragma_ns_name, %struct.pragma_ns_name* %ns_name, i64 0, i32 1, !dbg !2461
  store i8* %name, i8** %name4, align 8, !dbg !2462
  call void @llvm.dbg.value(metadata %struct.pragma_ns_name* %ns_name, metadata !2449, metadata !DIExpression(DW_OP_deref)), !dbg !2463
  %call = call fastcc %struct.pragma_ns_name* @VEC_pragma_ns_name_heap_safe_push(%struct.VEC_pragma_ns_name_heap** nonnull @registered_pp_pragmas, %struct.pragma_ns_name* nonnull %ns_name) #7, !dbg !2464
  %2 = load %struct.VEC_pragma_ns_name_heap*, %struct.VEC_pragma_ns_name_heap** @registered_pp_pragmas, align 8, !dbg !2465
  %base = getelementptr inbounds %struct.VEC_pragma_ns_name_heap, %struct.VEC_pragma_ns_name_heap* %2, i64 0, i32 0, !dbg !2465
  %call6 = call fastcc i32 @VEC_pragma_ns_name_base_length(%struct.VEC_pragma_ns_name_base* %base) #7, !dbg !2465
  call void @llvm.dbg.value(metadata i32 %call6, metadata !2448, metadata !DIExpression()), !dbg !2452
  %add = add i32 %call6, 17, !dbg !2466
  call void @llvm.dbg.value(metadata i32 %add, metadata !2448, metadata !DIExpression()), !dbg !2452
  br label %cleanup, !dbg !2467

cleanup:                                          ; preds = %if.then, %if.end
  %id.0 = phi i32 [ %add, %if.end ], [ undef, %if.then ]
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end ], [ false, %if.then ]
  call void @llvm.dbg.value(metadata i32 %id.0, metadata !2448, metadata !DIExpression()), !dbg !2452
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2467
  br i1 %cleanup.dest.slot.0, label %if.end20, label %cleanup.cont23

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata void (%struct.cpp_reader*)** %handler.addr, metadata !2446, metadata !DIExpression(DW_OP_deref)), !dbg !2452
  %call7 = call fastcc void (%struct.cpp_reader*)** @VEC_pragma_handler_heap_safe_push(%struct.VEC_pragma_handler_heap** nonnull @registered_pragmas, void (%struct.cpp_reader*)** nonnull %handler.addr) #7, !dbg !2468
  %3 = load %struct.VEC_pragma_handler_heap*, %struct.VEC_pragma_handler_heap** @registered_pragmas, align 8, !dbg !2470
  %base10 = getelementptr inbounds %struct.VEC_pragma_handler_heap, %struct.VEC_pragma_handler_heap* %3, i64 0, i32 0, !dbg !2470
  %call14 = call fastcc i32 @VEC_pragma_handler_base_length(%struct.VEC_pragma_handler_base* %base10) #7, !dbg !2470
  call void @llvm.dbg.value(metadata i32 %call14, metadata !2448, metadata !DIExpression()), !dbg !2452
  %add15 = add i32 %call14, 17, !dbg !2471
  call void @llvm.dbg.value(metadata i32 %add15, metadata !2448, metadata !DIExpression()), !dbg !2452
  %cmp = icmp ult i32 %add15, 64, !dbg !2472
  br i1 %cmp, label %if.end20, label %cond.true16, !dbg !2472

cond.true16:                                      ; preds = %if.else
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 1231, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !2472
  br label %if.end20, !dbg !2472

if.end20:                                         ; preds = %cond.true16, %if.else, %cleanup
  %id.1 = phi i32 [ %id.0, %cleanup ], [ %add15, %if.else ], [ %add15, %cond.true16 ], !dbg !2473
  call void @llvm.dbg.value(metadata i32 %id.1, metadata !2448, metadata !DIExpression()), !dbg !2452
  %4 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !2474
  call void @cpp_register_deferred_pragma(%struct.cpp_reader* %4, i8* %space, i8* %name, i32 %id.1, i8 zeroext %allow_expansion, i8 zeroext 0) #6, !dbg !2475
  br label %cleanup.cont23, !dbg !2476

cleanup.cont23:                                   ; preds = %if.end20, %cleanup
  ret void, !dbg !2476
}

; Function Attrs: nounwind uwtable
define dso_local void @c_register_pragma_with_expansion(i8* %space, i8* %name, void (%struct.cpp_reader*)* %handler) local_unnamed_addr #4 !dbg !2477 {
entry:
  call void @llvm.dbg.value(metadata i8* %space, metadata !2479, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i8* %name, metadata !2480, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata void (%struct.cpp_reader*)* %handler, metadata !2481, metadata !DIExpression()), !dbg !2482
  tail call fastcc void @c_register_pragma_1(i8* %space, i8* %name, void (%struct.cpp_reader*)* %handler, i8 zeroext 1) #7, !dbg !2483
  ret void, !dbg !2484
}

; Function Attrs: nounwind uwtable
define dso_local void @c_invoke_pragma_handler(i32 %id) local_unnamed_addr #4 !dbg !2485 {
entry:
  call void @llvm.dbg.value(metadata i32 %id, metadata !2489, metadata !DIExpression()), !dbg !2491
  %sub = add i32 %id, -18, !dbg !2492
  call void @llvm.dbg.value(metadata i32 %sub, metadata !2489, metadata !DIExpression()), !dbg !2491
  %0 = load %struct.VEC_pragma_handler_heap*, %struct.VEC_pragma_handler_heap** @registered_pragmas, align 8, !dbg !2493
  %base = getelementptr inbounds %struct.VEC_pragma_handler_heap, %struct.VEC_pragma_handler_heap* %0, i64 0, i32 0, !dbg !2493
  %call = tail call fastcc void (%struct.cpp_reader*)** @VEC_pragma_handler_base_index(%struct.VEC_pragma_handler_base* %base, i32 %sub) #7, !dbg !2493
  %1 = load void (%struct.cpp_reader*)*, void (%struct.cpp_reader*)** %call, align 8, !dbg !2494
  call void @llvm.dbg.value(metadata void (%struct.cpp_reader*)* %1, metadata !2490, metadata !DIExpression()), !dbg !2491
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !2495
  tail call void %1(%struct.cpp_reader* %2) #6, !dbg !2496
  ret void, !dbg !2497
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void (%struct.cpp_reader*)** @VEC_pragma_handler_base_index(%struct.VEC_pragma_handler_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2498 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_pragma_handler_base* %vec_, metadata !2504, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2505, metadata !DIExpression()), !dbg !2506
  br label %land.end, !dbg !2507

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !2507
  %arrayidx = getelementptr inbounds %struct.VEC_pragma_handler_base, %struct.VEC_pragma_handler_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2507
  ret void (%struct.cpp_reader*)** %arrayidx, !dbg !2507
}

; Function Attrs: nounwind uwtable
define dso_local void @init_pragma() local_unnamed_addr #4 !dbg !2508 {
entry:
  %0 = load i32, i32* @flag_openmp, align 4, !dbg !2514
  %tobool = icmp eq i32 %0, 0, !dbg !2514
  br i1 %tobool, label %if.end, label %for.cond.preheader, !dbg !2515

for.cond.preheader:                               ; preds = %entry
  br label %for.cond, !dbg !2516

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.body ], !dbg !2518
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2513, metadata !DIExpression()), !dbg !2519
  %exitcond = icmp eq i64 %indvars.iv, 14, !dbg !2520
  br i1 %exitcond, label %if.end.loopexit, label %for.body, !dbg !2516

for.body:                                         ; preds = %for.cond
  %1 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !2522
  %name = getelementptr inbounds [14 x %struct.omp_pragma_def], [14 x %struct.omp_pragma_def]* @omp_pragmas, i64 0, i64 %indvars.iv, i32 0, !dbg !2523
  %2 = load i8*, i8** %name, align 16, !dbg !2523
  %id = getelementptr inbounds [14 x %struct.omp_pragma_def], [14 x %struct.omp_pragma_def]* @omp_pragmas, i64 0, i64 %indvars.iv, i32 1, !dbg !2524
  %3 = load i32, i32* %id, align 8, !dbg !2524
  tail call void @cpp_register_deferred_pragma(%struct.cpp_reader* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %2, i32 %3, i8 zeroext 1, i8 zeroext 1) #6, !dbg !2525
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2526
  call void @llvm.dbg.value(metadata i32 undef, metadata !2513, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2519
  br label %for.cond, !dbg !2527, !llvm.loop !2528

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !2530

if.end:                                           ; preds = %if.end.loopexit, %entry
  %4 = load i32, i32* @flag_preprocess_only, align 4, !dbg !2530
  %tobool3 = icmp eq i32 %4, 0, !dbg !2530
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2532

if.then4:                                         ; preds = %if.end
  %5 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !2533
  tail call void @cpp_register_deferred_pragma(%struct.cpp_reader* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32 17, i8 zeroext 0, i8 zeroext 0) #6, !dbg !2534
  br label %if.end5, !dbg !2534

if.end5:                                          ; preds = %if.end, %if.then4
  tail call void @c_register_pragma(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), void (%struct.cpp_reader*)* nonnull @handle_pragma_pack) #7, !dbg !2535
  tail call void @c_register_pragma(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), void (%struct.cpp_reader*)* nonnull @handle_pragma_weak) #7, !dbg !2536
  tail call void @c_register_pragma(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), void (%struct.cpp_reader*)* nonnull @handle_pragma_visibility) #7, !dbg !2537
  tail call void @c_register_pragma(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), void (%struct.cpp_reader*)* nonnull @handle_pragma_diagnostic) #7, !dbg !2538
  tail call void @c_register_pragma(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), void (%struct.cpp_reader*)* nonnull @handle_pragma_target) #7, !dbg !2539
  tail call void @c_register_pragma(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), void (%struct.cpp_reader*)* nonnull @handle_pragma_optimize) #7, !dbg !2540
  tail call void @c_register_pragma(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), void (%struct.cpp_reader*)* nonnull @handle_pragma_push_options) #7, !dbg !2541
  tail call void @c_register_pragma(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), void (%struct.cpp_reader*)* nonnull @handle_pragma_pop_options) #7, !dbg !2542
  tail call void @c_register_pragma(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), void (%struct.cpp_reader*)* nonnull @handle_pragma_reset_options) #7, !dbg !2543
  tail call void @c_register_pragma(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i64 0, i64 0), void (%struct.cpp_reader*)* nonnull @handle_pragma_float_const_decimal64) #7, !dbg !2544
  tail call void @c_register_pragma_with_expansion(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0), void (%struct.cpp_reader*)* nonnull @handle_pragma_redefine_extname) #7, !dbg !2545
  tail call void @c_register_pragma(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), void (%struct.cpp_reader*)* nonnull @handle_pragma_extern_prefix) #7, !dbg !2546
  tail call void @c_register_pragma_with_expansion(i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), void (%struct.cpp_reader*)* nonnull @handle_pragma_message) #7, !dbg !2547
  tail call void @ix86_register_pragmas() #6, !dbg !2548
  %call = tail call i32 @invoke_plugin_callbacks(i32 13, i8* null) #6, !dbg !2549
  ret void, !dbg !2550
}

declare dso_local void @cpp_register_deferred_pragma(%struct.cpp_reader*, i8*, i8*, i32, i8 zeroext, i8 zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @handle_pragma_pack(%struct.cpp_reader* %dummy) #4 !dbg !454 {
entry:
  %x = alloca %union.tree_node*, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %dummy, metadata !462, metadata !DIExpression()), !dbg !2551
  %0 = bitcast %union.tree_node** %x to i8*, !dbg !2552
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2552
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !1389, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 -1, metadata !1390, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata %union.tree_node** %x, metadata !463, metadata !DIExpression(DW_OP_deref)), !dbg !2551
  %call = call i32 @pragma_lex(%union.tree_node** nonnull %x) #6, !dbg !2553
  %cmp = icmp eq i32 %call, 20, !dbg !2555
  br i1 %cmp, label %if.end, label %do.body, !dbg !2556

do.body:                                          ; preds = %entry
  %call1 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.44, i64 0, i64 0)) #6, !dbg !2557
  br label %cleanup160, !dbg !2557

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %union.tree_node** %x, metadata !463, metadata !DIExpression(DW_OP_deref)), !dbg !2551
  %call2 = call i32 @pragma_lex(%union.tree_node** nonnull %x) #6, !dbg !2559
  call void @llvm.dbg.value(metadata i32 %call2, metadata !1391, metadata !DIExpression()), !dbg !2551
  switch i32 %call2, label %do.body121 [
    i32 21, label %if.then4
    i32 55, label %if.then6
    i32 53, label %if.then27
  ], !dbg !2560

if.then4:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 0, metadata !1392, metadata !DIExpression()), !dbg !2551
  %1 = load i32, i32* @initial_max_fld_align, align 4, !dbg !2561
  call void @llvm.dbg.value(metadata i32 %1, metadata !1390, metadata !DIExpression()), !dbg !2551
  br label %if.end127, !dbg !2563

if.then6:                                         ; preds = %if.end
  %2 = bitcast %union.tree_node** %x to i64**, !dbg !2564
  %3 = load i64*, i64** %2, align 8, !dbg !2564
  %bf.load = load i64, i64* %3, align 8, !dbg !2564
  %bf.cast5 = and i64 %bf.load, 65535, !dbg !2567
  %cmp7 = icmp eq i64 %bf.cast5, 23, !dbg !2567
  br i1 %cmp7, label %if.end13, label %do.body9, !dbg !2568

do.body9:                                         ; preds = %if.then6
  %call10 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.45, i64 0, i64 0)) #6, !dbg !2569
  br label %cleanup160, !dbg !2569

if.end13:                                         ; preds = %if.then6
  %4 = getelementptr inbounds i64, i64* %3, i64 3, !dbg !2571
  %5 = load i64, i64* %4, align 8, !dbg !2571
  %conv = trunc i64 %5 to i32, !dbg !2571
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1390, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 0, metadata !1392, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata %union.tree_node** %x, metadata !463, metadata !DIExpression(DW_OP_deref)), !dbg !2551
  %call15 = call i32 @pragma_lex(%union.tree_node** nonnull %x) #6, !dbg !2572
  %cmp16 = icmp eq i32 %call15, 21, !dbg !2574
  br i1 %cmp16, label %if.end127, label %do.body19, !dbg !2575

do.body19:                                        ; preds = %if.end13
  %call20 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.46, i64 0, i64 0)) #6, !dbg !2576
  br label %cleanup160, !dbg !2576

if.then27:                                        ; preds = %if.end
  %6 = bitcast %union.tree_node** %x to %struct.tree_identifier**, !dbg !2578
  %7 = load %struct.tree_identifier*, %struct.tree_identifier** %6, align 8, !dbg !2578
  %str = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %7, i64 0, i32 1, i32 0, !dbg !2578
  %8 = load i8*, i8** %str, align 8, !dbg !2578
  call void @llvm.dbg.value(metadata i8* %8, metadata !1393, metadata !DIExpression()), !dbg !2579
  %call29 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0)) #6, !dbg !2580
  %tobool = icmp eq i32 %call29, 0, !dbg !2580
  br i1 %tobool, label %if.end41, label %if.else31, !dbg !2582

if.else31:                                        ; preds = %if.then27
  %call32 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0)) #6, !dbg !2583
  %tobool33 = icmp eq i32 %call32, 0, !dbg !2583
  br i1 %tobool33, label %if.end41, label %do.body36, !dbg !2585

do.body36:                                        ; preds = %if.else31
  %9 = load %union.tree_node*, %union.tree_node** %x, align 8, !dbg !2586
  call void @llvm.dbg.value(metadata %union.tree_node* %9, metadata !463, metadata !DIExpression()), !dbg !2551
  %call37 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.49, i64 0, i64 0), %union.tree_node* %9) #6, !dbg !2586
  br label %cleanup, !dbg !2586

if.end41:                                         ; preds = %if.else31, %if.then27
  %action.0 = phi i32 [ 1, %if.then27 ], [ 2, %if.else31 ], !dbg !2588
  call void @llvm.dbg.value(metadata i32 %action.0, metadata !1392, metadata !DIExpression()), !dbg !2551
  %10 = bitcast %union.tree_node** %x to i64**, !dbg !2589
  br label %while.cond, !dbg !2595

while.cond:                                       ; preds = %if.end99, %if.end41
  %action.1 = phi i32 [ %action.0, %if.end41 ], [ %action.3, %if.end99 ], !dbg !2596
  %align.0 = phi i32 [ -1, %if.end41 ], [ %align.1, %if.end99 ], !dbg !2597
  %id.0 = phi %union.tree_node* [ null, %if.end41 ], [ %id.1, %if.end99 ], !dbg !2551
  call void @llvm.dbg.value(metadata %union.tree_node* %id.0, metadata !1389, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 %align.0, metadata !1390, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 %action.1, metadata !1392, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata %union.tree_node** %x, metadata !463, metadata !DIExpression(DW_OP_deref)), !dbg !2551
  %call42 = call i32 @pragma_lex(%union.tree_node** nonnull %x) #6, !dbg !2598
  call void @llvm.dbg.value(metadata i32 %call42, metadata !1391, metadata !DIExpression()), !dbg !2551
  switch i32 %call42, label %do.body103 [
    i32 19, label %while.body
    i32 21, label %cleanup.loopexit
  ], !dbg !2595

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata %union.tree_node** %x, metadata !463, metadata !DIExpression(DW_OP_deref)), !dbg !2551
  %call45 = call i32 @pragma_lex(%union.tree_node** nonnull %x) #6, !dbg !2599
  call void @llvm.dbg.value(metadata i32 %call45, metadata !1391, metadata !DIExpression()), !dbg !2551
  %cmp46 = icmp eq i32 %call45, 53, !dbg !2600
  %cmp48 = icmp eq %union.tree_node* %id.0, null, !dbg !2601
  %or.cond = and i1 %cmp46, %cmp48, !dbg !2602
  br i1 %or.cond, label %if.then50, label %if.else51, !dbg !2602

if.then50:                                        ; preds = %while.body
  %11 = load %union.tree_node*, %union.tree_node** %x, align 8, !dbg !2603
  call void @llvm.dbg.value(metadata %union.tree_node* %11, metadata !463, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata %union.tree_node* %11, metadata !1389, metadata !DIExpression()), !dbg !2551
  br label %if.end99, !dbg !2605

if.else51:                                        ; preds = %while.body
  %cmp52 = icmp eq i32 %call45, 55, !dbg !2606
  %cmp55 = icmp eq i32 %action.1, 1, !dbg !2607
  %or.cond2 = and i1 %cmp52, %cmp55, !dbg !2608
  %cmp58 = icmp eq i32 %align.0, -1, !dbg !2609
  %or.cond3 = and i1 %or.cond2, %cmp58, !dbg !2608
  br i1 %or.cond3, label %if.then60, label %do.body82, !dbg !2608

if.then60:                                        ; preds = %if.else51
  %12 = load i64*, i64** %10, align 8, !dbg !2610
  %bf.load62 = load i64, i64* %12, align 8, !dbg !2610
  %bf.cast644 = and i64 %bf.load62, 65535, !dbg !2611
  %cmp65 = icmp eq i64 %bf.cast644, 23, !dbg !2611
  br i1 %cmp65, label %if.end72, label %do.body68, !dbg !2612

do.body68:                                        ; preds = %if.then60
  %id.0.lcssa26 = phi %union.tree_node* [ %id.0, %if.then60 ], !dbg !2551
  call void @llvm.dbg.value(metadata %union.tree_node* %id.0.lcssa26, metadata !1389, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata %union.tree_node* %id.0.lcssa26, metadata !1389, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata %union.tree_node* %id.0.lcssa26, metadata !1389, metadata !DIExpression()), !dbg !2551
  %call69 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.45, i64 0, i64 0)) #6, !dbg !2613
  br label %cleanup, !dbg !2613

if.end72:                                         ; preds = %if.then60
  %13 = getelementptr inbounds i64, i64* %12, i64 3, !dbg !2615
  %14 = load i64, i64* %13, align 8, !dbg !2615
  %conv76 = trunc i64 %14 to i32, !dbg !2615
  call void @llvm.dbg.value(metadata i32 %conv76, metadata !1390, metadata !DIExpression()), !dbg !2551
  %cmp77 = icmp ne i32 %conv76, -1, !dbg !2616
  %spec.select = zext i1 %cmp77 to i32, !dbg !2618
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !1392, metadata !DIExpression()), !dbg !2551
  br label %if.end99

do.body82:                                        ; preds = %if.else51
  %action.1.lcssa31 = phi i32 [ %action.1, %if.else51 ], !dbg !2596
  %align.0.lcssa28 = phi i32 [ %align.0, %if.else51 ], !dbg !2597
  %id.0.lcssa25 = phi %union.tree_node* [ %id.0, %if.else51 ], !dbg !2551
  call void @llvm.dbg.value(metadata i32 %action.1.lcssa31, metadata !1392, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 %align.0.lcssa28, metadata !1390, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata %union.tree_node* %id.0.lcssa25, metadata !1389, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 %action.1.lcssa31, metadata !1392, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 %align.0.lcssa28, metadata !1390, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata %union.tree_node* %id.0.lcssa25, metadata !1389, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 %action.1.lcssa31, metadata !1392, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 %align.0.lcssa28, metadata !1390, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata %union.tree_node* %id.0.lcssa25, metadata !1389, metadata !DIExpression()), !dbg !2551
  %cmp83 = icmp eq i32 %action.1.lcssa31, 2, !dbg !2619
  br i1 %cmp83, label %do.body91, label %do.body86, !dbg !2622

do.body86:                                        ; preds = %do.body82
  %call87 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.50, i64 0, i64 0)) #6, !dbg !2623
  br label %cleanup, !dbg !2623

do.body91:                                        ; preds = %do.body82
  %call92 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.51, i64 0, i64 0)) #6, !dbg !2625
  br label %cleanup, !dbg !2625

if.end99:                                         ; preds = %if.end72, %if.then50
  %action.3 = phi i32 [ %action.1, %if.then50 ], [ %spec.select, %if.end72 ], !dbg !2579
  %align.1 = phi i32 [ %align.0, %if.then50 ], [ %conv76, %if.end72 ], !dbg !2551
  %id.1 = phi %union.tree_node* [ %11, %if.then50 ], [ %id.0, %if.end72 ], !dbg !2551
  call void @llvm.dbg.value(metadata %union.tree_node* %id.1, metadata !1389, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 %align.1, metadata !1390, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 %action.3, metadata !1392, metadata !DIExpression()), !dbg !2551
  br label %while.cond, !dbg !2595, !llvm.loop !2627

do.body103:                                       ; preds = %while.cond
  %action.1.lcssa = phi i32 [ %action.1, %while.cond ], !dbg !2596
  %align.0.lcssa = phi i32 [ %align.0, %while.cond ], !dbg !2597
  %id.0.lcssa = phi %union.tree_node* [ %id.0, %while.cond ], !dbg !2551
  call void @llvm.dbg.value(metadata i32 %action.1.lcssa, metadata !1392, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 %align.0.lcssa, metadata !1390, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata %union.tree_node* %id.0.lcssa, metadata !1389, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 %action.1.lcssa, metadata !1392, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 %align.0.lcssa, metadata !1390, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata %union.tree_node* %id.0.lcssa, metadata !1389, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 %action.1.lcssa, metadata !1392, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 %align.0.lcssa, metadata !1390, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata %union.tree_node* %id.0.lcssa, metadata !1389, metadata !DIExpression()), !dbg !2551
  %cmp104 = icmp eq i32 %action.1.lcssa, 2, !dbg !2629
  br i1 %cmp104, label %do.body112, label %do.body107, !dbg !2633

do.body107:                                       ; preds = %do.body103
  %call108 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.50, i64 0, i64 0)) #6, !dbg !2634
  br label %cleanup, !dbg !2634

do.body112:                                       ; preds = %do.body103
  %call113 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.51, i64 0, i64 0)) #6, !dbg !2636
  br label %cleanup, !dbg !2636

cleanup.loopexit:                                 ; preds = %while.cond
  %action.1.lcssa30 = phi i32 [ %action.1, %while.cond ], !dbg !2596
  %align.0.lcssa27 = phi i32 [ %align.0, %while.cond ], !dbg !2597
  %id.0.lcssa24 = phi %union.tree_node* [ %id.0, %while.cond ], !dbg !2551
  call void @llvm.dbg.value(metadata i32 %action.1.lcssa30, metadata !1392, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 %align.0.lcssa27, metadata !1390, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata %union.tree_node* %id.0.lcssa24, metadata !1389, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 %action.1.lcssa30, metadata !1392, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 %align.0.lcssa27, metadata !1390, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata %union.tree_node* %id.0.lcssa24, metadata !1389, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 %action.1.lcssa30, metadata !1392, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 %align.0.lcssa27, metadata !1390, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata %union.tree_node* %id.0.lcssa24, metadata !1389, metadata !DIExpression()), !dbg !2551
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %do.body112, %do.body107, %do.body91, %do.body86, %do.body68, %do.body36
  %action.4 = phi i32 [ undef, %do.body36 ], [ 1, %do.body68 ], [ %action.1.lcssa31, %do.body86 ], [ 2, %do.body91 ], [ %action.1.lcssa, %do.body107 ], [ 2, %do.body112 ], [ %action.1.lcssa30, %cleanup.loopexit ]
  %align.2 = phi i32 [ -1, %do.body36 ], [ -1, %do.body68 ], [ %align.0.lcssa28, %do.body86 ], [ %align.0.lcssa28, %do.body91 ], [ %align.0.lcssa, %do.body107 ], [ %align.0.lcssa, %do.body112 ], [ %align.0.lcssa27, %cleanup.loopexit ], !dbg !2597
  %id.2 = phi %union.tree_node* [ null, %do.body36 ], [ %id.0.lcssa26, %do.body68 ], [ %id.0.lcssa25, %do.body86 ], [ %id.0.lcssa25, %do.body91 ], [ %id.0.lcssa, %do.body107 ], [ %id.0.lcssa, %do.body112 ], [ %id.0.lcssa24, %cleanup.loopexit ], !dbg !2638
  %cleanup.dest.slot.0 = phi i1 [ false, %do.body36 ], [ false, %do.body68 ], [ false, %do.body86 ], [ false, %do.body91 ], [ false, %do.body107 ], [ false, %do.body112 ], [ true, %cleanup.loopexit ]
  call void @llvm.dbg.value(metadata %union.tree_node* %id.2, metadata !1389, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 %align.2, metadata !1390, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 %action.4, metadata !1392, metadata !DIExpression()), !dbg !2551
  br i1 %cleanup.dest.slot.0, label %if.end127, label %cleanup160

do.body121:                                       ; preds = %if.end
  %call122 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.46, i64 0, i64 0)) #6, !dbg !2639
  br label %cleanup160, !dbg !2639

if.end127:                                        ; preds = %if.end13, %cleanup, %if.then4
  %action.6 = phi i32 [ 0, %if.then4 ], [ 0, %if.end13 ], [ %action.4, %cleanup ], !dbg !2641
  %align.4 = phi i32 [ %1, %if.then4 ], [ %conv, %if.end13 ], [ %align.2, %cleanup ], !dbg !2641
  %id.4 = phi %union.tree_node* [ null, %if.then4 ], [ null, %if.end13 ], [ %id.2, %cleanup ], !dbg !2638
  call void @llvm.dbg.value(metadata %union.tree_node* %id.4, metadata !1389, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 %align.4, metadata !1390, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 %action.6, metadata !1392, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata %union.tree_node** %x, metadata !463, metadata !DIExpression(DW_OP_deref)), !dbg !2551
  %call128 = call i32 @pragma_lex(%union.tree_node** nonnull %x) #6, !dbg !2642
  %cmp129 = icmp eq i32 %call128, 22, !dbg !2644
  br i1 %cmp129, label %if.end133, label %if.then131, !dbg !2645

if.then131:                                       ; preds = %if.end127
  %call132 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.52, i64 0, i64 0)) #6, !dbg !2646
  br label %if.end133, !dbg !2646

if.end133:                                        ; preds = %if.end127, %if.then131
  %15 = load i32, i32* @flag_pack_struct, align 4, !dbg !2647
  %tobool134 = icmp eq i32 %15, 0, !dbg !2647
  br i1 %tobool134, label %if.end140, label %do.body136, !dbg !2649

do.body136:                                       ; preds = %if.end133
  %call137 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.53, i64 0, i64 0)) #6, !dbg !2650
  br label %cleanup160, !dbg !2650

if.end140:                                        ; preds = %if.end133
  %cmp141 = icmp eq i32 %action.6, 2, !dbg !2652
  br i1 %cmp141, label %if.end153, label %if.then143, !dbg !2654

if.then143:                                       ; preds = %if.end140
  switch i32 %align.4, label %do.body149 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 4, label %sw.bb
    i32 8, label %sw.bb
    i32 16, label %sw.bb
    i32 -1, label %sw.bb144
  ], !dbg !2655

sw.bb:                                            ; preds = %if.then143, %if.then143, %if.then143, %if.then143, %if.then143, %if.then143
  %mul = shl nsw i32 %align.4, 3, !dbg !2656
  call void @llvm.dbg.value(metadata i32 %mul, metadata !1390, metadata !DIExpression()), !dbg !2551
  br label %if.end153, !dbg !2658

sw.bb144:                                         ; preds = %if.then143
  %cmp145 = icmp eq i32 %action.6, 1, !dbg !2659
  br i1 %cmp145, label %if.then147, label %do.body149, !dbg !2661

if.then147:                                       ; preds = %sw.bb144
  %16 = load i32, i32* @maximum_field_alignment, align 4, !dbg !2662
  call void @llvm.dbg.value(metadata i32 %16, metadata !1390, metadata !DIExpression()), !dbg !2551
  br label %if.end153, !dbg !2664

do.body149:                                       ; preds = %if.then143, %sw.bb144
  %call150 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.54, i64 0, i64 0), i32 %align.4) #6, !dbg !2665
  br label %cleanup160, !dbg !2665

if.end153:                                        ; preds = %if.end140, %sw.bb, %if.then147
  %align.6 = phi i32 [ %align.4, %if.end140 ], [ %16, %if.then147 ], [ %mul, %sw.bb ], !dbg !2551
  call void @llvm.dbg.value(metadata i32 %align.6, metadata !1390, metadata !DIExpression()), !dbg !2551
  switch i32 %action.6, label %cleanup160 [
    i32 0, label %sw.bb154
    i32 1, label %sw.bb157
    i32 2, label %sw.bb158
  ], !dbg !2667

sw.bb154:                                         ; preds = %if.end153
  %17 = load %struct.align_stack*, %struct.align_stack** @alignment_stack, align 8, !dbg !2668
  %cmp155 = icmp eq %struct.align_stack* %17, null, !dbg !2668
  %alignment = getelementptr inbounds %struct.align_stack, %struct.align_stack* %17, i64 0, i32 0, !dbg !2668
  %cond = select i1 %cmp155, i32* @default_alignment, i32* %alignment, !dbg !2668
  store i32 %align.6, i32* %cond, align 4, !dbg !2668
  store i32 %align.6, i32* @maximum_field_alignment, align 4, !dbg !2668
  br label %cleanup160, !dbg !2670

sw.bb157:                                         ; preds = %if.end153
  call fastcc void @push_alignment(i32 %align.6, %union.tree_node* %id.4) #7, !dbg !2671
  br label %cleanup160, !dbg !2672

sw.bb158:                                         ; preds = %if.end153
  call fastcc void @pop_alignment(%union.tree_node* %id.4) #7, !dbg !2673
  br label %cleanup160, !dbg !2674

cleanup160:                                       ; preds = %sw.bb154, %sw.bb157, %sw.bb158, %if.end153, %cleanup, %do.body149, %do.body136, %do.body121, %do.body19, %do.body9, %do.body
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2675
  ret void, !dbg !2675
}

; Function Attrs: nounwind uwtable
define internal void @handle_pragma_weak(%struct.cpp_reader* %dummy) #4 !dbg !2676 {
entry:
  %name = alloca %union.tree_node*, align 8
  %value = alloca %union.tree_node*, align 8
  %x = alloca %union.tree_node*, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %dummy, metadata !2678, metadata !DIExpression()), !dbg !2684
  %0 = bitcast %union.tree_node** %name to i8*, !dbg !2685
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2685
  %1 = bitcast %union.tree_node** %value to i8*, !dbg !2685
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2685
  %2 = bitcast %union.tree_node** %x to i8*, !dbg !2685
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8, !dbg !2685
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !2680, metadata !DIExpression()), !dbg !2684
  store %union.tree_node* null, %union.tree_node** %value, align 8, !dbg !2686
  call void @llvm.dbg.value(metadata %union.tree_node** %name, metadata !2679, metadata !DIExpression(DW_OP_deref)), !dbg !2684
  %call = call i32 @pragma_lex(%union.tree_node** nonnull %name) #6, !dbg !2687
  %cmp = icmp eq i32 %call, 53, !dbg !2689
  br i1 %cmp, label %if.end, label %do.body, !dbg !2690

do.body:                                          ; preds = %entry
  %call1 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.57, i64 0, i64 0)) #6, !dbg !2691
  br label %cleanup, !dbg !2691

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %union.tree_node** %x, metadata !2681, metadata !DIExpression(DW_OP_deref)), !dbg !2684
  %call2 = call i32 @pragma_lex(%union.tree_node** nonnull %x) #6, !dbg !2693
  call void @llvm.dbg.value(metadata i32 %call2, metadata !2683, metadata !DIExpression()), !dbg !2684
  %cmp3 = icmp eq i32 %call2, 0, !dbg !2694
  br i1 %cmp3, label %if.then4, label %if.end14, !dbg !2696

if.then4:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata %union.tree_node** %value, metadata !2680, metadata !DIExpression(DW_OP_deref)), !dbg !2684
  %call5 = call i32 @pragma_lex(%union.tree_node** nonnull %value) #6, !dbg !2697
  %cmp6 = icmp eq i32 %call5, 53, !dbg !2700
  br i1 %cmp6, label %if.end12, label %do.body8, !dbg !2701

do.body8:                                         ; preds = %if.then4
  %call9 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.57, i64 0, i64 0)) #6, !dbg !2702
  br label %cleanup, !dbg !2702

if.end12:                                         ; preds = %if.then4
  call void @llvm.dbg.value(metadata %union.tree_node** %x, metadata !2681, metadata !DIExpression(DW_OP_deref)), !dbg !2684
  %call13 = call i32 @pragma_lex(%union.tree_node** nonnull %x) #6, !dbg !2704
  call void @llvm.dbg.value(metadata i32 %call13, metadata !2683, metadata !DIExpression()), !dbg !2684
  br label %if.end14, !dbg !2705

if.end14:                                         ; preds = %if.end12, %if.end
  %t.0 = phi i32 [ %call13, %if.end12 ], [ %call2, %if.end ], !dbg !2684
  call void @llvm.dbg.value(metadata i32 %t.0, metadata !2683, metadata !DIExpression()), !dbg !2684
  %cmp15 = icmp eq i32 %t.0, 22, !dbg !2706
  br i1 %cmp15, label %if.end18, label %if.then16, !dbg !2708

if.then16:                                        ; preds = %if.end14
  %call17 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.58, i64 0, i64 0)) #6, !dbg !2709
  br label %if.end18, !dbg !2709

if.end18:                                         ; preds = %if.end14, %if.then16
  %3 = load %union.tree_node*, %union.tree_node** %name, align 8, !dbg !2710
  call void @llvm.dbg.value(metadata %union.tree_node* %3, metadata !2679, metadata !DIExpression()), !dbg !2684
  %call19 = call %union.tree_node* @identifier_global_value(%union.tree_node* %3) #6, !dbg !2711
  call void @llvm.dbg.value(metadata %union.tree_node* %call19, metadata !2682, metadata !DIExpression()), !dbg !2684
  %tobool = icmp eq %union.tree_node* %call19, null, !dbg !2712
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !2714

land.lhs.true:                                    ; preds = %if.end18
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %call19, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2715
  %bf.load = load i64, i64* %4, align 8, !dbg !2715
  %bf.cast = and i64 %bf.load, 65535, !dbg !2715
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast, !dbg !2715
  %5 = load i32, i32* %arrayidx, align 4, !dbg !2715
  %cmp20 = icmp eq i32 %5, 3, !dbg !2715
  br i1 %cmp20, label %if.then21, label %if.else, !dbg !2716

if.then21:                                        ; preds = %land.lhs.true
  %6 = load %union.tree_node*, %union.tree_node** %value, align 8, !dbg !2717
  call void @llvm.dbg.value(metadata %union.tree_node* %6, metadata !2680, metadata !DIExpression()), !dbg !2684
  call fastcc void @apply_pragma_weak(%union.tree_node* nonnull %call19, %union.tree_node* %6) #7, !dbg !2719
  %7 = load %union.tree_node*, %union.tree_node** %value, align 8, !dbg !2720
  call void @llvm.dbg.value(metadata %union.tree_node* %7, metadata !2680, metadata !DIExpression()), !dbg !2684
  %tobool22 = icmp eq %union.tree_node* %7, null, !dbg !2720
  br i1 %tobool22, label %cleanup, label %if.then23, !dbg !2722

if.then23:                                        ; preds = %if.then21
  call void @llvm.dbg.value(metadata %union.tree_node* %7, metadata !2680, metadata !DIExpression()), !dbg !2684
  call void @assemble_alias(%union.tree_node* nonnull %call19, %union.tree_node* nonnull %7) #6, !dbg !2723
  br label %cleanup, !dbg !2723

if.else:                                          ; preds = %if.end18, %land.lhs.true
  %8 = load %union.tree_node*, %union.tree_node** %name, align 8, !dbg !2724
  call void @llvm.dbg.value(metadata %union.tree_node* %8, metadata !2679, metadata !DIExpression()), !dbg !2684
  %9 = load %union.tree_node*, %union.tree_node** %value, align 8, !dbg !2724
  call void @llvm.dbg.value(metadata %union.tree_node* %9, metadata !2680, metadata !DIExpression()), !dbg !2684
  %10 = load %union.tree_node*, %union.tree_node** @pending_weaks, align 8, !dbg !2724
  %call25 = call %union.tree_node* @tree_cons_stat(%union.tree_node* %8, %union.tree_node* %9, %union.tree_node* %10) #6, !dbg !2724
  store %union.tree_node* %call25, %union.tree_node** @pending_weaks, align 8, !dbg !2725
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.else, %if.then23, %do.body8, %do.body
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8, !dbg !2726
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2726
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2726
  ret void, !dbg !2726
}

; Function Attrs: nounwind uwtable
define internal void @handle_pragma_visibility(%struct.cpp_reader* %dummy) #4 !dbg !1403 {
entry:
  %x = alloca %union.tree_node*, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %dummy, metadata !1405, metadata !DIExpression()), !dbg !2727
  %0 = bitcast %union.tree_node** %x to i8*, !dbg !2728
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2728
  call void @llvm.dbg.value(metadata i32 0, metadata !1408, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata %union.tree_node** %x, metadata !1406, metadata !DIExpression(DW_OP_deref)), !dbg !2727
  %call = call i32 @pragma_lex(%union.tree_node** nonnull %x) #6, !dbg !2729
  call void @llvm.dbg.value(metadata i32 %call, metadata !1407, metadata !DIExpression()), !dbg !2727
  %cmp = icmp eq i32 %call, 53, !dbg !2730
  br i1 %cmp, label %if.then, label %if.end7, !dbg !2731

if.then:                                          ; preds = %entry
  %1 = bitcast %union.tree_node** %x to %struct.tree_identifier**, !dbg !2732
  %2 = load %struct.tree_identifier*, %struct.tree_identifier** %1, align 8, !dbg !2732
  %str = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %2, i64 0, i32 1, i32 0, !dbg !2732
  %3 = load i8*, i8** %str, align 8, !dbg !2732
  call void @llvm.dbg.value(metadata i8* %3, metadata !1409, metadata !DIExpression()), !dbg !2733
  %call1 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0)) #6, !dbg !2734
  %tobool = icmp eq i32 %call1, 0, !dbg !2734
  br i1 %tobool, label %if.end7, label %if.else, !dbg !2736

if.else:                                          ; preds = %if.then
  %call3 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0)) #6, !dbg !2737
  %tobool4 = icmp eq i32 %call3, 0, !dbg !2737
  %spec.select = select i1 %tobool4, i32 2, i32 0, !dbg !2739
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !1408, metadata !DIExpression()), !dbg !2727
  br label %if.end7

if.end7:                                          ; preds = %if.then, %if.else, %entry
  %action.2 = phi i32 [ 0, %entry ], [ %spec.select, %if.else ], [ 1, %if.then ], !dbg !2740
  call void @llvm.dbg.value(metadata i32 %action.2, metadata !1408, metadata !DIExpression()), !dbg !2727
  %cmp8 = icmp eq i32 %action.2, 0, !dbg !2741
  br i1 %cmp8, label %do.body, label %if.else11, !dbg !2743

do.body:                                          ; preds = %if.end7
  %call10 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.59, i64 0, i64 0)) #6, !dbg !2744
  br label %cleanup, !dbg !2744

if.else11:                                        ; preds = %if.end7
  %cmp12 = icmp eq i32 %action.2, 2, !dbg !2746
  br i1 %cmp12, label %if.then13, label %if.else22, !dbg !2749

if.then13:                                        ; preds = %if.else11
  %call14 = call zeroext i8 @pop_visibility(i32 0) #7, !dbg !2750
  %tobool15 = icmp eq i8 %call14, 0, !dbg !2750
  br i1 %tobool15, label %do.body17, label %if.end52, !dbg !2753

do.body17:                                        ; preds = %if.then13
  %call18 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.60, i64 0, i64 0)) #6, !dbg !2754
  br label %cleanup, !dbg !2754

if.else22:                                        ; preds = %if.else11
  call void @llvm.dbg.value(metadata %union.tree_node** %x, metadata !1406, metadata !DIExpression(DW_OP_deref)), !dbg !2727
  %call23 = call i32 @pragma_lex(%union.tree_node** nonnull %x) #6, !dbg !2756
  %cmp24 = icmp eq i32 %call23, 20, !dbg !2759
  br i1 %cmp24, label %if.end30, label %do.body26, !dbg !2760

do.body26:                                        ; preds = %if.else22
  %call27 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.61, i64 0, i64 0)) #6, !dbg !2761
  br label %cleanup, !dbg !2761

if.end30:                                         ; preds = %if.else22
  call void @llvm.dbg.value(metadata %union.tree_node** %x, metadata !1406, metadata !DIExpression(DW_OP_deref)), !dbg !2727
  %call31 = call i32 @pragma_lex(%union.tree_node** nonnull %x) #6, !dbg !2763
  call void @llvm.dbg.value(metadata i32 %call31, metadata !1407, metadata !DIExpression()), !dbg !2727
  %cmp32 = icmp eq i32 %call31, 53, !dbg !2764
  br i1 %cmp32, label %if.else38, label %do.body34, !dbg !2766

do.body34:                                        ; preds = %if.end30
  %call35 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.62, i64 0, i64 0)) #6, !dbg !2767
  br label %cleanup, !dbg !2767

if.else38:                                        ; preds = %if.end30
  %4 = bitcast %union.tree_node** %x to %struct.tree_identifier**, !dbg !2769
  %5 = load %struct.tree_identifier*, %struct.tree_identifier** %4, align 8, !dbg !2769
  %str41 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %5, i64 0, i32 1, i32 0, !dbg !2769
  %6 = load i8*, i8** %str41, align 8, !dbg !2769
  call void @push_visibility(i8* %6, i32 0) #7, !dbg !2770
  call void @llvm.dbg.value(metadata %union.tree_node** %x, metadata !1406, metadata !DIExpression(DW_OP_deref)), !dbg !2727
  %call43 = call i32 @pragma_lex(%union.tree_node** nonnull %x) #6, !dbg !2771
  %cmp44 = icmp eq i32 %call43, 21, !dbg !2773
  br i1 %cmp44, label %if.end52, label %do.body46, !dbg !2774

do.body46:                                        ; preds = %if.else38
  %call47 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.61, i64 0, i64 0)) #6, !dbg !2775
  br label %cleanup, !dbg !2775

if.end52:                                         ; preds = %if.then13, %if.else38
  call void @llvm.dbg.value(metadata %union.tree_node** %x, metadata !1406, metadata !DIExpression(DW_OP_deref)), !dbg !2727
  %call53 = call i32 @pragma_lex(%union.tree_node** nonnull %x) #6, !dbg !2777
  %cmp54 = icmp eq i32 %call53, 22, !dbg !2779
  br i1 %cmp54, label %cleanup, label %if.then55, !dbg !2780

if.then55:                                        ; preds = %if.end52
  %call56 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.63, i64 0, i64 0)) #6, !dbg !2781
  br label %cleanup, !dbg !2781

cleanup:                                          ; preds = %if.end52, %if.then55, %do.body46, %do.body34, %do.body26, %do.body17, %do.body
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2782
  ret void, !dbg !2782
}

; Function Attrs: nounwind uwtable
define internal void @handle_pragma_diagnostic(%struct.cpp_reader* %dummy) #4 !dbg !2783 {
entry:
  %x = alloca %union.tree_node*, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %dummy, metadata !2785, metadata !DIExpression()), !dbg !2793
  %0 = bitcast %union.tree_node** %x to i8*, !dbg !2794
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2794
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2795
  %tobool = icmp eq %struct.function* %1, null, !dbg !2795
  br i1 %tobool, label %if.end, label %if.then, !dbg !2797

if.then:                                          ; preds = %entry
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.64, i64 0, i64 0)) #6, !dbg !2798
  br label %cleanup, !dbg !2800

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %union.tree_node** %x, metadata !2792, metadata !DIExpression(DW_OP_deref)), !dbg !2793
  %call = call i32 @pragma_lex(%union.tree_node** nonnull %x) #6, !dbg !2801
  call void @llvm.dbg.value(metadata i32 %call, metadata !2789, metadata !DIExpression()), !dbg !2793
  %cmp = icmp eq i32 %call, 53, !dbg !2802
  br i1 %cmp, label %if.end3, label %do.body, !dbg !2804

do.body:                                          ; preds = %if.end
  %call2 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.65, i64 0, i64 0)) #6, !dbg !2805
  br label %cleanup, !dbg !2805

if.end3:                                          ; preds = %if.end
  %2 = bitcast %union.tree_node** %x to %struct.tree_identifier**, !dbg !2807
  %3 = load %struct.tree_identifier*, %struct.tree_identifier** %2, align 8, !dbg !2807
  %str = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %3, i64 0, i32 1, i32 0, !dbg !2807
  %4 = load i8*, i8** %str, align 8, !dbg !2807
  call void @llvm.dbg.value(metadata i8* %4, metadata !2786, metadata !DIExpression()), !dbg !2793
  %call4 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i64 0, i64 0)) #6, !dbg !2808
  %cmp5 = icmp eq i32 %call4, 0, !dbg !2810
  br i1 %cmp5, label %if.end21, label %if.else, !dbg !2811

if.else:                                          ; preds = %if.end3
  %call7 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i64 0, i64 0)) #6, !dbg !2812
  %cmp8 = icmp eq i32 %call7, 0, !dbg !2814
  br i1 %cmp8, label %if.end21, label %if.else10, !dbg !2815

if.else10:                                        ; preds = %if.else
  %call11 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i64 0, i64 0)) #6, !dbg !2816
  %cmp12 = icmp eq i32 %call11, 0, !dbg !2818
  br i1 %cmp12, label %if.end21, label %do.body15, !dbg !2819

do.body15:                                        ; preds = %if.else10
  %call16 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.69, i64 0, i64 0)) #6, !dbg !2820
  br label %cleanup, !dbg !2820

if.end21:                                         ; preds = %if.else, %if.else10, %if.end3
  %kind.1 = phi i32 [ 4, %if.end3 ], [ 6, %if.else ], [ 1, %if.else10 ], !dbg !2822
  call void @llvm.dbg.value(metadata i32 %kind.1, metadata !2790, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata %union.tree_node** %x, metadata !2792, metadata !DIExpression(DW_OP_deref)), !dbg !2793
  %call22 = call i32 @pragma_lex(%union.tree_node** nonnull %x) #6, !dbg !2823
  call void @llvm.dbg.value(metadata i32 %call22, metadata !2789, metadata !DIExpression()), !dbg !2793
  %cmp23 = icmp eq i32 %call22, 61, !dbg !2824
  br i1 %cmp23, label %if.end29, label %do.body25, !dbg !2826

do.body25:                                        ; preds = %if.end21
  %call26 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.70, i64 0, i64 0)) #6, !dbg !2827
  br label %cleanup, !dbg !2827

if.end29:                                         ; preds = %if.end21
  %5 = bitcast %union.tree_node** %x to %struct.tree_string**, !dbg !2829
  %6 = load %struct.tree_string*, %struct.tree_string** %5, align 8, !dbg !2829
  %arraydecay = getelementptr inbounds %struct.tree_string, %struct.tree_string* %6, i64 0, i32 2, i64 0, !dbg !2829
  call void @llvm.dbg.value(metadata i8* %arraydecay, metadata !2787, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i32 0, metadata !2788, metadata !DIExpression()), !dbg !2793
  %7 = load i32, i32* @cl_options_count, align 4, !dbg !2830
  %wide.trip.count = zext i32 %7 to i64, !dbg !2833
  br label %for.cond, !dbg !2834

for.cond:                                         ; preds = %for.inc, %if.end29
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.end29 ], !dbg !2835
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2788, metadata !DIExpression()), !dbg !2793
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count, !dbg !2833
  br i1 %exitcond, label %do.body50, label %for.body, !dbg !2836

for.body:                                         ; preds = %for.cond
  %opt_text = getelementptr inbounds [0 x %struct.cl_option], [0 x %struct.cl_option]* @cl_options, i64 0, i64 %indvars.iv, i32 0, !dbg !2837
  %8 = load i8*, i8** %opt_text, align 8, !dbg !2837
  %call32 = call i32 @strcmp(i8* %8, i8* nonnull %arraydecay) #6, !dbg !2839
  %cmp33 = icmp eq i32 %call32, 0, !dbg !2840
  br i1 %cmp33, label %if.then34, label %for.inc, !dbg !2841

if.then34:                                        ; preds = %for.body
  %indvars.iv.lcssa3 = phi i64 [ %indvars.iv, %for.body ], !dbg !2835
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa3, metadata !2788, metadata !DIExpression()), !dbg !2793
  %9 = trunc i64 %indvars.iv.lcssa3 to i32, !dbg !2793
  call void @llvm.dbg.value(metadata i32 %9, metadata !2788, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i32 %9, metadata !2788, metadata !DIExpression()), !dbg !2793
  %10 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !2842
  %call35 = call i32 @diagnostic_classify_diagnostic(%struct.diagnostic_context* %10, i32 %9, i32 %kind.1) #6, !dbg !2844
  %var_type = getelementptr inbounds [0 x %struct.cl_option], [0 x %struct.cl_option]* @cl_options, i64 0, i64 %indvars.iv.lcssa3, i32 7, !dbg !2845
  %11 = load i32, i32* %var_type, align 8, !dbg !2845
  %cmp38 = icmp eq i32 %11, 0, !dbg !2847
  br i1 %cmp38, label %land.lhs.true, label %cleanup, !dbg !2848

land.lhs.true:                                    ; preds = %if.then34
  %flag_var = getelementptr inbounds [0 x %struct.cl_option], [0 x %struct.cl_option]* @cl_options, i64 0, i64 %indvars.iv.lcssa3, i32 6, !dbg !2849
  %12 = load i8*, i8** %flag_var, align 8, !dbg !2849
  %tobool41 = icmp ne i8* %12, null, !dbg !2850
  %cmp43 = icmp ne i32 %kind.1, 1, !dbg !2851
  %or.cond = and i1 %tobool41, %cmp43, !dbg !2852
  br i1 %or.cond, label %if.then44, label %cleanup, !dbg !2852

if.then44:                                        ; preds = %land.lhs.true
  %13 = bitcast i8* %12 to i32*, !dbg !2852
  store i32 1, i32* %13, align 4, !dbg !2853
  br label %cleanup, !dbg !2854

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2855
  br label %for.cond, !dbg !2856, !llvm.loop !2857

do.body50:                                        ; preds = %for.cond
  %call51 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.71, i64 0, i64 0)) #6, !dbg !2859
  br label %cleanup, !dbg !2859

cleanup:                                          ; preds = %if.then34, %land.lhs.true, %if.then44, %do.body50, %do.body25, %do.body15, %do.body, %if.then
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2861
  ret void, !dbg !2861
}

; Function Attrs: nounwind uwtable
define internal void @handle_pragma_target(%struct.cpp_reader* %dummy) #4 !dbg !2862 {
entry:
  %x = alloca %union.tree_node*, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %dummy, metadata !2864, metadata !DIExpression()), !dbg !2871
  %0 = bitcast %union.tree_node** %x to i8*, !dbg !2872
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2872
  call void @llvm.dbg.value(metadata i8 0, metadata !2867, metadata !DIExpression()), !dbg !2871
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2873
  %tobool = icmp eq %struct.function* %1, null, !dbg !2873
  br i1 %tobool, label %if.end, label %if.then, !dbg !2875

if.then:                                          ; preds = %entry
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.72, i64 0, i64 0)) #6, !dbg !2876
  br label %cleanup39, !dbg !2878

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %union.tree_node** %x, metadata !2866, metadata !DIExpression(DW_OP_deref)), !dbg !2871
  %call = call i32 @pragma_lex(%union.tree_node** nonnull %x) #6, !dbg !2879
  call void @llvm.dbg.value(metadata i32 %call, metadata !2865, metadata !DIExpression()), !dbg !2871
  %cmp = icmp eq i32 %call, 20, !dbg !2880
  br i1 %cmp, label %if.then1, label %if.end3, !dbg !2882

if.then1:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i8 1, metadata !2867, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata %union.tree_node** %x, metadata !2866, metadata !DIExpression(DW_OP_deref)), !dbg !2871
  %call2 = call i32 @pragma_lex(%union.tree_node** nonnull %x) #6, !dbg !2883
  call void @llvm.dbg.value(metadata i32 %call2, metadata !2865, metadata !DIExpression()), !dbg !2871
  br label %if.end3, !dbg !2885

if.end3:                                          ; preds = %if.then1, %if.end
  %close_paren_needed_p.0 = phi i8 [ 1, %if.then1 ], [ 0, %if.end ], !dbg !2871
  %token.0 = phi i32 [ %call2, %if.then1 ], [ %call, %if.end ], !dbg !2871
  call void @llvm.dbg.value(metadata i32 %token.0, metadata !2865, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i8 %close_paren_needed_p.0, metadata !2867, metadata !DIExpression()), !dbg !2871
  %cmp4 = icmp eq i32 %token.0, 61, !dbg !2886
  br i1 %cmp4, label %do.body7.preheader, label %do.body, !dbg !2887

do.body7.preheader:                               ; preds = %if.end3
  %2 = bitcast %union.tree_node** %x to %struct.tree_string**, !dbg !2888
  br label %do.body7, !dbg !2891

do.body:                                          ; preds = %if.end3
  %call6 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.73, i64 0, i64 0)) #6, !dbg !2892
  br label %cleanup39, !dbg !2892

do.body7.loopexit:                                ; preds = %while.cond
  br label %do.body7, !dbg !2891

do.body7:                                         ; preds = %do.body7.preheader, %do.body7.loopexit
  %args.0 = phi %union.tree_node* [ %args.1, %do.body7.loopexit ], [ null, %do.body7.preheader ], !dbg !2895
  call void @llvm.dbg.value(metadata %union.tree_node* %args.0, metadata !2868, metadata !DIExpression()), !dbg !2895
  %3 = load %struct.tree_string*, %struct.tree_string** %2, align 8, !dbg !2896
  %length = getelementptr inbounds %struct.tree_string, %struct.tree_string* %3, i64 0, i32 1, !dbg !2896
  %4 = load i32, i32* %length, align 8, !dbg !2896
  %cmp8 = icmp sgt i32 %4, 0, !dbg !2897
  br i1 %cmp8, label %if.then9, label %if.end11, !dbg !2891

if.then9:                                         ; preds = %do.body7
  %5 = bitcast %struct.tree_string* %3 to %union.tree_node*, !dbg !2891
  call void @llvm.dbg.value(metadata %union.tree_node* %5, metadata !2866, metadata !DIExpression()), !dbg !2871
  %call10 = call %union.tree_node* @tree_cons_stat(%union.tree_node* null, %union.tree_node* %5, %union.tree_node* %args.0) #6, !dbg !2898
  call void @llvm.dbg.value(metadata %union.tree_node* %call10, metadata !2868, metadata !DIExpression()), !dbg !2895
  br label %if.end11, !dbg !2899

if.end11:                                         ; preds = %if.then9, %do.body7
  %args.1 = phi %union.tree_node* [ %call10, %if.then9 ], [ %args.0, %do.body7 ], !dbg !2895
  call void @llvm.dbg.value(metadata %union.tree_node* %args.1, metadata !2868, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata %union.tree_node** %x, metadata !2866, metadata !DIExpression(DW_OP_deref)), !dbg !2871
  %call12 = call i32 @pragma_lex(%union.tree_node** nonnull %x) #6, !dbg !2900
  call void @llvm.dbg.value(metadata i32 %call12, metadata !2865, metadata !DIExpression()), !dbg !2871
  br label %while.cond, !dbg !2901

while.cond:                                       ; preds = %while.body, %if.end11
  %token.1 = phi i32 [ %call12, %if.end11 ], [ %call14, %while.body ], !dbg !2902
  call void @llvm.dbg.value(metadata i32 %token.1, metadata !2865, metadata !DIExpression()), !dbg !2871
  switch i32 %token.1, label %do.end17 [
    i32 19, label %while.body
    i32 61, label %do.body7.loopexit
  ], !dbg !2901

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata %union.tree_node** %x, metadata !2866, metadata !DIExpression(DW_OP_deref)), !dbg !2871
  %call14 = call i32 @pragma_lex(%union.tree_node** nonnull %x) #6, !dbg !2903
  call void @llvm.dbg.value(metadata i32 %call14, metadata !2865, metadata !DIExpression()), !dbg !2871
  br label %while.cond, !dbg !2901, !llvm.loop !2904

do.end17:                                         ; preds = %while.cond
  %args.1.lcssa = phi %union.tree_node* [ %args.1, %while.cond ], !dbg !2895
  %token.1.lcssa = phi i32 [ %token.1, %while.cond ], !dbg !2902
  call void @llvm.dbg.value(metadata %union.tree_node* %args.1.lcssa, metadata !2868, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i32 %token.1.lcssa, metadata !2865, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata %union.tree_node* %args.1.lcssa, metadata !2868, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i32 %token.1.lcssa, metadata !2865, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata %union.tree_node* %args.1.lcssa, metadata !2868, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i32 %token.1.lcssa, metadata !2865, metadata !DIExpression()), !dbg !2871
  %tobool18 = icmp eq i8 %close_paren_needed_p.0, 0, !dbg !2906
  br i1 %tobool18, label %if.end29, label %if.then19, !dbg !2908

if.then19:                                        ; preds = %do.end17
  %cmp20 = icmp eq i32 %token.1.lcssa, 21, !dbg !2909
  br i1 %cmp20, label %if.then21, label %do.body24, !dbg !2912

if.then21:                                        ; preds = %if.then19
  call void @llvm.dbg.value(metadata %union.tree_node** %x, metadata !2866, metadata !DIExpression(DW_OP_deref)), !dbg !2871
  %call22 = call i32 @pragma_lex(%union.tree_node** nonnull %x) #6, !dbg !2913
  call void @llvm.dbg.value(metadata i32 %call22, metadata !2865, metadata !DIExpression()), !dbg !2871
  br label %if.end29, !dbg !2914

do.body24:                                        ; preds = %if.then19
  %call25 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.74, i64 0, i64 0)) #6, !dbg !2915
  br label %cleanup39, !dbg !2915

if.end29:                                         ; preds = %do.end17, %if.then21
  %token.2 = phi i32 [ %call22, %if.then21 ], [ %token.1.lcssa, %do.end17 ], !dbg !2895
  call void @llvm.dbg.value(metadata i32 %token.2, metadata !2865, metadata !DIExpression()), !dbg !2871
  %cmp30 = icmp eq i32 %token.2, 22, !dbg !2917
  br i1 %cmp30, label %if.end32, label %if.then31, !dbg !2919

if.then31:                                        ; preds = %if.end29
  call void (i8*, ...) @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.75, i64 0, i64 0)) #6, !dbg !2920
  br label %cleanup39, !dbg !2922

if.end32:                                         ; preds = %if.end29
  %call33 = call %union.tree_node* @nreverse(%union.tree_node* %args.1.lcssa) #6, !dbg !2923
  call void @llvm.dbg.value(metadata %union.tree_node* %call33, metadata !2868, metadata !DIExpression()), !dbg !2895
  %6 = load i8 (%union.tree_node*, %union.tree_node*)*, i8 (%union.tree_node*, %union.tree_node*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 107, i32 4), align 8, !dbg !2924
  %call34 = call zeroext i8 %6(%union.tree_node* %call33, %union.tree_node* null) #6, !dbg !2926
  %tobool35 = icmp eq i8 %call34, 0, !dbg !2926
  br i1 %tobool35, label %cleanup39, label %if.then36, !dbg !2927

if.then36:                                        ; preds = %if.end32
  store %union.tree_node* %call33, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 129), align 8, !dbg !2928
  br label %cleanup39, !dbg !2929

cleanup39:                                        ; preds = %if.end32, %do.body24, %if.then31, %if.then36, %do.body, %if.then
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2930
  ret void, !dbg !2930
}

; Function Attrs: nounwind uwtable
define internal void @handle_pragma_optimize(%struct.cpp_reader* %dummy) #4 !dbg !2931 {
entry:
  %x = alloca %union.tree_node*, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %dummy, metadata !2933, metadata !DIExpression()), !dbg !2941
  %0 = bitcast %union.tree_node** %x to i8*, !dbg !2942
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2942
  call void @llvm.dbg.value(metadata i8 0, metadata !2936, metadata !DIExpression()), !dbg !2941
  %1 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 126), align 16, !dbg !2943
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !2937, metadata !DIExpression()), !dbg !2941
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2944
  %tobool = icmp eq %struct.function* %2, null, !dbg !2944
  br i1 %tobool, label %if.end, label %if.then, !dbg !2946

if.then:                                          ; preds = %entry
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.76, i64 0, i64 0)) #6, !dbg !2947
  br label %cleanup41, !dbg !2949

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %union.tree_node** %x, metadata !2935, metadata !DIExpression(DW_OP_deref)), !dbg !2941
  %call = call i32 @pragma_lex(%union.tree_node** nonnull %x) #6, !dbg !2950
  call void @llvm.dbg.value(metadata i32 %call, metadata !2934, metadata !DIExpression()), !dbg !2941
  %cmp = icmp eq i32 %call, 20, !dbg !2951
  br i1 %cmp, label %if.then1, label %if.end3, !dbg !2953

if.then1:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i8 1, metadata !2936, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata %union.tree_node** %x, metadata !2935, metadata !DIExpression(DW_OP_deref)), !dbg !2941
  %call2 = call i32 @pragma_lex(%union.tree_node** nonnull %x) #6, !dbg !2954
  call void @llvm.dbg.value(metadata i32 %call2, metadata !2934, metadata !DIExpression()), !dbg !2941
  br label %if.end3, !dbg !2956

if.end3:                                          ; preds = %if.then1, %if.end
  %close_paren_needed_p.0 = phi i8 [ 1, %if.then1 ], [ 0, %if.end ], !dbg !2941
  %token.0 = phi i32 [ %call2, %if.then1 ], [ %call, %if.end ], !dbg !2941
  call void @llvm.dbg.value(metadata i32 %token.0, metadata !2934, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i8 %close_paren_needed_p.0, metadata !2936, metadata !DIExpression()), !dbg !2941
  switch i32 %token.0, label %do.body [
    i32 61, label %if.else
    i32 55, label %if.else
  ], !dbg !2957

do.body:                                          ; preds = %if.end3
  %call7 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.77, i64 0, i64 0)) #6, !dbg !2958
  br label %cleanup41, !dbg !2958

if.else:                                          ; preds = %if.end3, %if.end3
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !2938, metadata !DIExpression()), !dbg !2961
  %3 = bitcast %union.tree_node** %x to %struct.tree_string**, !dbg !2962
  br label %do.body8, !dbg !2965

do.body8:                                         ; preds = %lor.end, %if.else
  %token.1 = phi i32 [ %token.0, %if.else ], [ %token.2.lcssa3, %lor.end ], !dbg !2941
  %args.0 = phi %union.tree_node* [ null, %if.else ], [ %args.1, %lor.end ], !dbg !2961
  call void @llvm.dbg.value(metadata %union.tree_node* %args.0, metadata !2938, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i32 %token.1, metadata !2934, metadata !DIExpression()), !dbg !2941
  %cmp9 = icmp eq i32 %token.1, 61, !dbg !2966
  br i1 %cmp9, label %lor.lhs.false, label %do.body8.if.then11_crit_edge, !dbg !2967

do.body8.if.then11_crit_edge:                     ; preds = %do.body8
  %.pre = load %union.tree_node*, %union.tree_node** %x, align 8, !dbg !2968
  br label %if.then11, !dbg !2967

lor.lhs.false:                                    ; preds = %do.body8
  %4 = load %struct.tree_string*, %struct.tree_string** %3, align 8, !dbg !2969
  %length = getelementptr inbounds %struct.tree_string, %struct.tree_string* %4, i64 0, i32 1, !dbg !2969
  %5 = load i32, i32* %length, align 8, !dbg !2969
  %cmp10 = icmp sgt i32 %5, 0, !dbg !2970
  %6 = bitcast %struct.tree_string* %4 to %union.tree_node*, !dbg !2971
  br i1 %cmp10, label %if.then11, label %if.end13, !dbg !2971

if.then11:                                        ; preds = %do.body8.if.then11_crit_edge, %lor.lhs.false
  %7 = phi %union.tree_node* [ %.pre, %do.body8.if.then11_crit_edge ], [ %6, %lor.lhs.false ], !dbg !2968
  call void @llvm.dbg.value(metadata %union.tree_node* %7, metadata !2935, metadata !DIExpression()), !dbg !2941
  %call12 = call %union.tree_node* @tree_cons_stat(%union.tree_node* null, %union.tree_node* %7, %union.tree_node* %args.0) #6, !dbg !2968
  call void @llvm.dbg.value(metadata %union.tree_node* %call12, metadata !2938, metadata !DIExpression()), !dbg !2961
  br label %if.end13, !dbg !2972

if.end13:                                         ; preds = %if.then11, %lor.lhs.false
  %args.1 = phi %union.tree_node* [ %call12, %if.then11 ], [ %args.0, %lor.lhs.false ], !dbg !2961
  call void @llvm.dbg.value(metadata %union.tree_node* %args.1, metadata !2938, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata %union.tree_node** %x, metadata !2935, metadata !DIExpression(DW_OP_deref)), !dbg !2941
  %call14 = call i32 @pragma_lex(%union.tree_node** nonnull %x) #6, !dbg !2973
  call void @llvm.dbg.value(metadata i32 %call14, metadata !2934, metadata !DIExpression()), !dbg !2941
  br label %while.cond, !dbg !2974

while.cond:                                       ; preds = %while.body, %if.end13
  %token.2 = phi i32 [ %call14, %if.end13 ], [ %call16, %while.body ], !dbg !2975
  call void @llvm.dbg.value(metadata i32 %token.2, metadata !2934, metadata !DIExpression()), !dbg !2941
  switch i32 %token.2, label %do.end20.critedge [
    i32 19, label %while.body
    i32 61, label %lor.end
    i32 55, label %lor.end
  ], !dbg !2974

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata %union.tree_node** %x, metadata !2935, metadata !DIExpression(DW_OP_deref)), !dbg !2941
  %call16 = call i32 @pragma_lex(%union.tree_node** nonnull %x) #6, !dbg !2976
  call void @llvm.dbg.value(metadata i32 %call16, metadata !2934, metadata !DIExpression()), !dbg !2941
  br label %while.cond, !dbg !2974, !llvm.loop !2977

lor.end:                                          ; preds = %while.cond, %while.cond
  %token.2.lcssa3 = phi i32 [ %token.2, %while.cond ], [ %token.2, %while.cond ], !dbg !2975
  call void @llvm.dbg.value(metadata i32 %token.2.lcssa3, metadata !2934, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i32 %token.2.lcssa3, metadata !2934, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i32 %token.2.lcssa3, metadata !2934, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i32 %token.2.lcssa3, metadata !2934, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i32 %token.2.lcssa3, metadata !2934, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i32 %token.2.lcssa3, metadata !2934, metadata !DIExpression()), !dbg !2941
  br label %do.body8, !dbg !2979

do.end20.critedge:                                ; preds = %while.cond
  %args.1.lcssa = phi %union.tree_node* [ %args.1, %while.cond ], !dbg !2961
  %token.2.lcssa = phi i32 [ %token.2, %while.cond ], !dbg !2975
  call void @llvm.dbg.value(metadata %union.tree_node* %args.1.lcssa, metadata !2938, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i32 %token.2.lcssa, metadata !2934, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata %union.tree_node* %args.1.lcssa, metadata !2938, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i32 %token.2.lcssa, metadata !2934, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata %union.tree_node* %args.1.lcssa, metadata !2938, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i32 %token.2.lcssa, metadata !2934, metadata !DIExpression()), !dbg !2941
  %tobool21 = icmp eq i8 %close_paren_needed_p.0, 0, !dbg !2980
  br i1 %tobool21, label %if.end32, label %if.then22, !dbg !2982

if.then22:                                        ; preds = %do.end20.critedge
  %cmp23 = icmp eq i32 %token.2.lcssa, 21, !dbg !2983
  br i1 %cmp23, label %if.then24, label %do.body27, !dbg !2986

if.then24:                                        ; preds = %if.then22
  call void @llvm.dbg.value(metadata %union.tree_node** %x, metadata !2935, metadata !DIExpression(DW_OP_deref)), !dbg !2941
  %call25 = call i32 @pragma_lex(%union.tree_node** nonnull %x) #6, !dbg !2987
  call void @llvm.dbg.value(metadata i32 %call25, metadata !2934, metadata !DIExpression()), !dbg !2941
  br label %if.end32, !dbg !2988

do.body27:                                        ; preds = %if.then22
  %call28 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.78, i64 0, i64 0)) #6, !dbg !2989
  br label %cleanup41, !dbg !2989

if.end32:                                         ; preds = %do.end20.critedge, %if.then24
  %token.3 = phi i32 [ %call25, %if.then24 ], [ %token.2.lcssa, %do.end20.critedge ], !dbg !2961
  call void @llvm.dbg.value(metadata i32 %token.3, metadata !2934, metadata !DIExpression()), !dbg !2941
  %cmp33 = icmp eq i32 %token.3, 22, !dbg !2991
  br i1 %cmp33, label %if.end35, label %if.then34, !dbg !2993

if.then34:                                        ; preds = %if.end32
  call void (i8*, ...) @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.79, i64 0, i64 0)) #6, !dbg !2994
  br label %cleanup41, !dbg !2996

if.end35:                                         ; preds = %if.end32
  %call36 = call %union.tree_node* @nreverse(%union.tree_node* %args.1.lcssa) #6, !dbg !2997
  call void @llvm.dbg.value(metadata %union.tree_node* %call36, metadata !2938, metadata !DIExpression()), !dbg !2961
  %call37 = call zeroext i8 @parse_optimize_options(%union.tree_node* %call36, i8 zeroext 0) #6, !dbg !2998
  %8 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 130), align 16, !dbg !2999
  %call38 = call %union.tree_node* @chainon(%union.tree_node* %8, %union.tree_node* %call36) #6, !dbg !3000
  store %union.tree_node* %call38, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 130), align 16, !dbg !3001
  %call39 = call %union.tree_node* @build_optimization_node() #6, !dbg !3002
  store %union.tree_node* %call39, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 126), align 16, !dbg !3003
  %9 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !3004
  call void @c_cpp_builtins_optimize_pragma(%struct.cpp_reader* %9, %union.tree_node* %1, %union.tree_node* %call39) #6, !dbg !3005
  br label %cleanup41, !dbg !3006

cleanup41:                                        ; preds = %do.body27, %if.then34, %if.end35, %do.body, %if.then
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3007
  ret void, !dbg !3007
}

; Function Attrs: nounwind uwtable
define internal void @handle_pragma_push_options(%struct.cpp_reader* %dummy) #4 !dbg !3008 {
entry:
  %x = alloca %union.tree_node*, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %dummy, metadata !3010, metadata !DIExpression()), !dbg !3014
  %0 = bitcast %union.tree_node** %x to i8*, !dbg !3015
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3015
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !3012, metadata !DIExpression()), !dbg !3014
  store %union.tree_node* null, %union.tree_node** %x, align 8, !dbg !3016
  call void @llvm.dbg.value(metadata %union.tree_node** %x, metadata !3012, metadata !DIExpression(DW_OP_deref)), !dbg !3014
  %call = call i32 @pragma_lex(%union.tree_node** nonnull %x) #6, !dbg !3017
  call void @llvm.dbg.value(metadata i32 %call, metadata !3011, metadata !DIExpression()), !dbg !3014
  %cmp = icmp eq i32 %call, 22, !dbg !3018
  br i1 %cmp, label %if.end, label %if.then, !dbg !3020

if.then:                                          ; preds = %entry
  %call1 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.80, i64 0, i64 0)) #6, !dbg !3021
  br label %cleanup, !dbg !3023

if.end:                                           ; preds = %entry
  %call2 = call i8* @ggc_alloc_stat(i64 40) #6, !dbg !3024
  call void @llvm.dbg.value(metadata i8* %call2, metadata !3013, metadata !DIExpression()), !dbg !3014
  %1 = load i64, i64* bitcast (%struct.opt_stack** @options_stack to i64*), align 8, !dbg !3025
  %2 = bitcast i8* %call2 to i64*, !dbg !3026
  store i64 %1, i64* %2, align 8, !dbg !3026
  store i8* %call2, i8** bitcast (%struct.opt_stack** @options_stack to i8**), align 8, !dbg !3027
  %call3 = call %union.tree_node* @build_optimization_node() #6, !dbg !3028
  %optimize_binary = getelementptr inbounds i8, i8* %call2, i64 24, !dbg !3029
  %3 = bitcast i8* %optimize_binary to %union.tree_node**, !dbg !3029
  store %union.tree_node* %call3, %union.tree_node** %3, align 8, !dbg !3030
  %call4 = call %union.tree_node* @build_target_option_node() #6, !dbg !3031
  %target_binary = getelementptr inbounds i8, i8* %call2, i64 8, !dbg !3032
  %4 = bitcast i8* %target_binary to %union.tree_node**, !dbg !3032
  store %union.tree_node* %call4, %union.tree_node** %4, align 8, !dbg !3033
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 130), align 16, !dbg !3034
  %call5 = call %union.tree_node* @copy_list(%union.tree_node* %5) #6, !dbg !3035
  %optimize_strings = getelementptr inbounds i8, i8* %call2, i64 32, !dbg !3036
  %6 = bitcast i8* %optimize_strings to %union.tree_node**, !dbg !3036
  store %union.tree_node* %call5, %union.tree_node** %6, align 8, !dbg !3037
  %7 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 129), align 8, !dbg !3038
  %call6 = call %union.tree_node* @copy_list(%union.tree_node* %7) #6, !dbg !3039
  %target_strings = getelementptr inbounds i8, i8* %call2, i64 16, !dbg !3040
  %8 = bitcast i8* %target_strings to %union.tree_node**, !dbg !3040
  store %union.tree_node* %call6, %union.tree_node** %8, align 8, !dbg !3041
  br label %cleanup, !dbg !3042

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3042
  ret void, !dbg !3042
}

; Function Attrs: nounwind uwtable
define internal void @handle_pragma_pop_options(%struct.cpp_reader* %dummy) #4 !dbg !3043 {
entry:
  %x = alloca %union.tree_node*, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %dummy, metadata !3045, metadata !DIExpression()), !dbg !3052
  %0 = bitcast %union.tree_node** %x to i8*, !dbg !3053
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3053
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !3047, metadata !DIExpression()), !dbg !3052
  store %union.tree_node* null, %union.tree_node** %x, align 8, !dbg !3054
  call void @llvm.dbg.value(metadata %union.tree_node** %x, metadata !3047, metadata !DIExpression(DW_OP_deref)), !dbg !3052
  %call = call i32 @pragma_lex(%union.tree_node** nonnull %x) #6, !dbg !3055
  call void @llvm.dbg.value(metadata i32 %call, metadata !3046, metadata !DIExpression()), !dbg !3052
  %cmp = icmp eq i32 %call, 22, !dbg !3056
  br i1 %cmp, label %if.end, label %if.then, !dbg !3058

if.then:                                          ; preds = %entry
  %call1 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.81, i64 0, i64 0)) #6, !dbg !3059
  br label %cleanup, !dbg !3061

if.end:                                           ; preds = %entry
  %1 = load %struct.opt_stack*, %struct.opt_stack** @options_stack, align 8, !dbg !3062
  %tobool = icmp eq %struct.opt_stack* %1, null, !dbg !3062
  br i1 %tobool, label %if.then2, label %if.end4, !dbg !3064

if.then2:                                         ; preds = %if.end
  %call3 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.82, i64 0, i64 0)) #6, !dbg !3065
  br label %cleanup, !dbg !3067

if.end4:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct.opt_stack* %1, metadata !3048, metadata !DIExpression()), !dbg !3052
  %2 = bitcast %struct.opt_stack* %1 to i64*, !dbg !3068
  %3 = load i64, i64* %2, align 8, !dbg !3068
  store i64 %3, i64* bitcast (%struct.opt_stack** @options_stack to i64*), align 8, !dbg !3069
  %target_binary = getelementptr inbounds %struct.opt_stack, %struct.opt_stack* %1, i64 0, i32 1, !dbg !3070
  %4 = load %union.tree_node*, %union.tree_node** %target_binary, align 8, !dbg !3070
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 128), align 16, !dbg !3072
  %cmp5 = icmp eq %union.tree_node* %4, %5, !dbg !3073
  br i1 %cmp5, label %if.end10, label %if.then6, !dbg !3074

if.then6:                                         ; preds = %if.end4
  %6 = load i8 (%union.tree_node*, %union.tree_node*)*, i8 (%union.tree_node*, %union.tree_node*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 107, i32 4), align 8, !dbg !3075
  %call8 = call zeroext i8 %6(%union.tree_node* null, %union.tree_node* %4) #6, !dbg !3077
  %7 = bitcast %union.tree_node** %target_binary to i64*, !dbg !3078
  %8 = load i64, i64* %7, align 8, !dbg !3078
  store i64 %8, i64* bitcast (%union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 128) to i64*), align 16, !dbg !3079
  br label %if.end10, !dbg !3080

if.end10:                                         ; preds = %if.end4, %if.then6
  %optimize_binary = getelementptr inbounds %struct.opt_stack, %struct.opt_stack* %1, i64 0, i32 3, !dbg !3081
  %9 = load %union.tree_node*, %union.tree_node** %optimize_binary, align 8, !dbg !3081
  %10 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 126), align 16, !dbg !3082
  %cmp11 = icmp eq %union.tree_node* %9, %10, !dbg !3083
  br i1 %cmp11, label %if.end16, label %if.then12, !dbg !3084

if.then12:                                        ; preds = %if.end10
  call void @llvm.dbg.value(metadata %union.tree_node* %10, metadata !3049, metadata !DIExpression()), !dbg !3085
  %opts = getelementptr inbounds %union.tree_node, %union.tree_node* %9, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3086
  %11 = bitcast i32* %opts to %struct.cl_optimization*, !dbg !3086
  call void @cl_optimization_restore(%struct.cl_optimization* nonnull %11) #6, !dbg !3087
  %12 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !3088
  %13 = load %union.tree_node*, %union.tree_node** %optimize_binary, align 8, !dbg !3089
  call void @c_cpp_builtins_optimize_pragma(%struct.cpp_reader* %12, %union.tree_node* %10, %union.tree_node* %13) #6, !dbg !3090
  %14 = bitcast %union.tree_node** %optimize_binary to i64*, !dbg !3091
  %15 = load i64, i64* %14, align 8, !dbg !3091
  store i64 %15, i64* bitcast (%union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 126) to i64*), align 16, !dbg !3092
  br label %if.end16, !dbg !3093

if.end16:                                         ; preds = %if.end10, %if.then12
  %target_strings = getelementptr inbounds %struct.opt_stack, %struct.opt_stack* %1, i64 0, i32 2, !dbg !3094
  %16 = bitcast %union.tree_node** %target_strings to i64*, !dbg !3094
  %17 = load i64, i64* %16, align 8, !dbg !3094
  store i64 %17, i64* bitcast (%union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 129) to i64*), align 8, !dbg !3095
  %optimize_strings = getelementptr inbounds %struct.opt_stack, %struct.opt_stack* %1, i64 0, i32 4, !dbg !3096
  %18 = bitcast %union.tree_node** %optimize_strings to i64*, !dbg !3096
  %19 = load i64, i64* %18, align 8, !dbg !3096
  store i64 %19, i64* bitcast (%union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 130) to i64*), align 16, !dbg !3097
  br label %cleanup, !dbg !3098

cleanup:                                          ; preds = %if.end16, %if.then2, %if.then
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3098
  ret void, !dbg !3098
}

; Function Attrs: nounwind uwtable
define internal void @handle_pragma_reset_options(%struct.cpp_reader* %dummy) #4 !dbg !3099 {
entry:
  %x = alloca %union.tree_node*, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %dummy, metadata !3101, metadata !DIExpression()), !dbg !3109
  %0 = bitcast %union.tree_node** %x to i8*, !dbg !3110
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3110
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !3103, metadata !DIExpression()), !dbg !3109
  store %union.tree_node* null, %union.tree_node** %x, align 8, !dbg !3111
  %1 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 125), align 8, !dbg !3112
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !3104, metadata !DIExpression()), !dbg !3109
  %2 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 127), align 8, !dbg !3113
  call void @llvm.dbg.value(metadata %union.tree_node* %2, metadata !3105, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata %union.tree_node** %x, metadata !3103, metadata !DIExpression(DW_OP_deref)), !dbg !3109
  %call = call i32 @pragma_lex(%union.tree_node** nonnull %x) #6, !dbg !3114
  call void @llvm.dbg.value(metadata i32 %call, metadata !3102, metadata !DIExpression()), !dbg !3109
  %cmp = icmp eq i32 %call, 22, !dbg !3115
  br i1 %cmp, label %if.end, label %if.then, !dbg !3117

if.then:                                          ; preds = %entry
  %call1 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.83, i64 0, i64 0)) #6, !dbg !3118
  br label %cleanup, !dbg !3120

if.end:                                           ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 128), align 16, !dbg !3121
  %cmp2 = icmp eq %union.tree_node* %2, %3, !dbg !3123
  br i1 %cmp2, label %if.end5, label %if.then3, !dbg !3124

if.then3:                                         ; preds = %if.end
  %4 = load i8 (%union.tree_node*, %union.tree_node*)*, i8 (%union.tree_node*, %union.tree_node*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 107, i32 4), align 8, !dbg !3125
  %call4 = call zeroext i8 %4(%union.tree_node* null, %union.tree_node* %2) #6, !dbg !3127
  store %union.tree_node* %2, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 128), align 16, !dbg !3128
  br label %if.end5, !dbg !3129

if.end5:                                          ; preds = %if.end, %if.then3
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 126), align 16, !dbg !3130
  %cmp6 = icmp eq %union.tree_node* %1, %5, !dbg !3131
  br i1 %cmp6, label %if.end8, label %if.then7, !dbg !3132

if.then7:                                         ; preds = %if.end5
  call void @llvm.dbg.value(metadata %union.tree_node* %5, metadata !3106, metadata !DIExpression()), !dbg !3133
  %opts = getelementptr inbounds %union.tree_node, %union.tree_node* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3134
  %6 = bitcast i32* %opts to %struct.cl_optimization*, !dbg !3134
  call void @cl_optimization_restore(%struct.cl_optimization* nonnull %6) #6, !dbg !3135
  %7 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !3136
  call void @c_cpp_builtins_optimize_pragma(%struct.cpp_reader* %7, %union.tree_node* %5, %union.tree_node* %1) #6, !dbg !3137
  store %union.tree_node* %1, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 126), align 16, !dbg !3138
  br label %if.end8, !dbg !3139

if.end8:                                          ; preds = %if.end5, %if.then7
  store %union.tree_node* null, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 129), align 8, !dbg !3140
  store %union.tree_node* null, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 130), align 16, !dbg !3141
  br label %cleanup, !dbg !3142

cleanup:                                          ; preds = %if.end8, %if.then
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3142
  ret void, !dbg !3142
}

; Function Attrs: nounwind uwtable
define internal void @handle_pragma_float_const_decimal64(%struct.cpp_reader* %dummy) #4 !dbg !3143 {
entry:
  %tmp = alloca %struct.expanded_location, align 8
  %tmp9 = alloca %struct.expanded_location, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %dummy, metadata !3145, metadata !DIExpression()), !dbg !3146
  %0 = load i32, i32* @c_language, align 4, !dbg !3147
  %and = and i32 %0, 2, !dbg !3147
  %cmp = icmp eq i32 %and, 0, !dbg !3147
  br i1 %cmp, label %if.end6, label %if.then, !dbg !3149

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @warn_unknown_pragmas, align 4, !dbg !3150
  %2 = load i32, i32* @input_location, align 4, !dbg !3153
  call void @expand_location(%struct.expanded_location* nonnull sret %tmp, i32 %2) #6, !dbg !3153
  %sysp = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %tmp, i64 0, i32 3, !dbg !3153
  %3 = load i8, i8* %sysp, align 8, !dbg !3153
  %cmp1 = icmp ne i8 %3, 0, !dbg !3153
  %conv2 = zext i1 %cmp1 to i32, !dbg !3153
  %cmp3 = icmp sgt i32 %1, %conv2, !dbg !3154
  br i1 %cmp3, label %if.then5, label %sw.epilog, !dbg !3155

if.then5:                                         ; preds = %if.then
  %call = call zeroext i8 (i32, i8*, ...) @warning(i32 212, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.84, i64 0, i64 0)) #6, !dbg !3156
  br label %sw.epilog, !dbg !3156

if.end6:                                          ; preds = %entry
  %4 = load i8 ()*, i8 ()** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 19), align 8, !dbg !3157
  %call7 = tail call zeroext i8 %4() #6, !dbg !3159
  %tobool = icmp eq i8 %call7, 0, !dbg !3159
  br i1 %tobool, label %if.then8, label %if.end19, !dbg !3160

if.then8:                                         ; preds = %if.end6
  %5 = load i32, i32* @warn_unknown_pragmas, align 4, !dbg !3161
  %6 = load i32, i32* @input_location, align 4, !dbg !3164
  call void @expand_location(%struct.expanded_location* nonnull sret %tmp9, i32 %6) #6, !dbg !3164
  %sysp10 = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %tmp9, i64 0, i32 3, !dbg !3164
  %7 = load i8, i8* %sysp10, align 8, !dbg !3164
  %cmp12 = icmp ne i8 %7, 0, !dbg !3164
  %conv13 = zext i1 %cmp12 to i32, !dbg !3164
  %cmp14 = icmp sgt i32 %5, %conv13, !dbg !3165
  br i1 %cmp14, label %if.then16, label %sw.epilog, !dbg !3166

if.then16:                                        ; preds = %if.then8
  %call17 = call zeroext i8 (i32, i8*, ...) @warning(i32 212, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.85, i64 0, i64 0)) #6, !dbg !3167
  br label %sw.epilog, !dbg !3167

if.end19:                                         ; preds = %if.end6
  %8 = load i32, i32* @input_location, align 4, !dbg !3168
  %call20 = tail call zeroext i8 (i32, i32, i8*, ...) @pedwarn(i32 %8, i32 834, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.86, i64 0, i64 0)) #6, !dbg !3169
  %call21 = tail call fastcc i32 @handle_stdc_pragma(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.87, i64 0, i64 0)) #7, !dbg !3170
  switch i32 %call21, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb22
    i32 2, label %sw.bb22
  ], !dbg !3171

sw.bb:                                            ; preds = %if.end19
  tail call void @set_float_const_decimal64() #6, !dbg !3172
  br label %sw.epilog, !dbg !3174

sw.bb22:                                          ; preds = %if.end19, %if.end19
  tail call void @clear_float_const_decimal64() #6, !dbg !3175
  br label %sw.epilog, !dbg !3176

sw.epilog:                                        ; preds = %if.then8, %if.then16, %if.then, %if.then5, %if.end19, %sw.bb22, %sw.bb
  ret void, !dbg !3177
}

; Function Attrs: nounwind uwtable
define internal void @handle_pragma_redefine_extname(%struct.cpp_reader* %dummy) #4 !dbg !3178 {
entry:
  %oldname = alloca %union.tree_node*, align 8
  %newname = alloca %union.tree_node*, align 8
  %x = alloca %union.tree_node*, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %dummy, metadata !3180, metadata !DIExpression()), !dbg !3191
  %0 = bitcast %union.tree_node** %oldname to i8*, !dbg !3192
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3192
  %1 = bitcast %union.tree_node** %newname to i8*, !dbg !3192
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3192
  %2 = bitcast %union.tree_node** %x to i8*, !dbg !3192
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8, !dbg !3192
  call void @llvm.dbg.value(metadata %union.tree_node** %oldname, metadata !3181, metadata !DIExpression(DW_OP_deref)), !dbg !3191
  %call = call i32 @pragma_lex(%union.tree_node** nonnull %oldname) #6, !dbg !3193
  %cmp = icmp eq i32 %call, 53, !dbg !3195
  br i1 %cmp, label %if.end, label %do.body, !dbg !3196

do.body:                                          ; preds = %entry
  %call1 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.94, i64 0, i64 0)) #6, !dbg !3197
  br label %cleanup, !dbg !3197

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %union.tree_node** %newname, metadata !3182, metadata !DIExpression(DW_OP_deref)), !dbg !3191
  %call2 = call i32 @pragma_lex(%union.tree_node** nonnull %newname) #6, !dbg !3199
  %cmp3 = icmp eq i32 %call2, 53, !dbg !3201
  br i1 %cmp3, label %if.end9, label %do.body5, !dbg !3202

do.body5:                                         ; preds = %if.end
  %call6 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.94, i64 0, i64 0)) #6, !dbg !3203
  br label %cleanup, !dbg !3203

if.end9:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata %union.tree_node** %x, metadata !3184, metadata !DIExpression(DW_OP_deref)), !dbg !3191
  %call10 = call i32 @pragma_lex(%union.tree_node** nonnull %x) #6, !dbg !3205
  call void @llvm.dbg.value(metadata i32 %call10, metadata !3185, metadata !DIExpression()), !dbg !3191
  %cmp11 = icmp eq i32 %call10, 22, !dbg !3206
  br i1 %cmp11, label %if.end14, label %if.then12, !dbg !3208

if.then12:                                        ; preds = %if.end9
  %call13 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.95, i64 0, i64 0)) #6, !dbg !3209
  br label %if.end14, !dbg !3209

if.end14:                                         ; preds = %if.end9, %if.then12
  %3 = load %union.tree_node*, %union.tree_node** %oldname, align 8, !dbg !3210
  call void @llvm.dbg.value(metadata %union.tree_node* %3, metadata !3181, metadata !DIExpression()), !dbg !3191
  %call15 = call %union.tree_node* @identifier_global_value(%union.tree_node* %3) #6, !dbg !3211
  call void @llvm.dbg.value(metadata %union.tree_node* %call15, metadata !3183, metadata !DIExpression()), !dbg !3191
  %tobool = icmp eq %union.tree_node* %call15, null, !dbg !3212
  br i1 %tobool, label %if.else60, label %land.lhs.true, !dbg !3213

land.lhs.true:                                    ; preds = %if.end14
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %call15, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3214
  %bf.load = load i64, i64* %4, align 8, !dbg !3214
  %bf.cast1 = and i64 %bf.load, 134217728, !dbg !3214
  %tobool16 = icmp eq i64 %bf.cast1, 0, !dbg !3214
  br i1 %tobool16, label %lor.lhs.false, label %land.lhs.true22, !dbg !3215

lor.lhs.false:                                    ; preds = %land.lhs.true
  %decl_flag_1 = getelementptr inbounds %union.tree_node, %union.tree_node* %call15, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3216
  %5 = bitcast i40* %decl_flag_1 to i64*, !dbg !3216
  %bf.load17 = load i64, i64* %5, align 8, !dbg !3216
  %bf.cast202 = and i64 %bf.load17, 33554432, !dbg !3216
  %tobool21 = icmp eq i64 %bf.cast202, 0, !dbg !3216
  br i1 %tobool21, label %if.else60, label %land.lhs.true22, !dbg !3217

land.lhs.true22:                                  ; preds = %lor.lhs.false, %land.lhs.true
  %bf.cast263 = and i64 %bf.load, 65535, !dbg !3218
  %cmp27 = icmp eq i64 %bf.cast263, 29, !dbg !3218
  br i1 %cmp27, label %land.lhs.true34, label %lor.lhs.false28, !dbg !3219

lor.lhs.false28:                                  ; preds = %land.lhs.true22
  %cmp33 = icmp eq i64 %bf.cast263, 32, !dbg !3220
  br i1 %cmp33, label %land.lhs.true34, label %if.else60, !dbg !3221

land.lhs.true34:                                  ; preds = %lor.lhs.false28, %land.lhs.true22
  %call35 = call zeroext i8 @has_c_linkage(%union.tree_node* nonnull %call15) #6, !dbg !3222
  %tobool36 = icmp eq i8 %call35, 0, !dbg !3222
  br i1 %tobool36, label %if.else60, label %if.then37, !dbg !3223

if.then37:                                        ; preds = %land.lhs.true34
  %bf.load39 = load i64, i64* %4, align 8, !dbg !3224
  %bf.cast41 = and i64 %bf.load39, 65535, !dbg !3224
  %arrayidx42 = getelementptr inbounds [191 x [64 x i8]], [191 x [64 x i8]]* @tree_contains_struct, i64 0, i64 %bf.cast41, i64 13, !dbg !3224
  %6 = load i8, i8* %arrayidx42, align 1, !dbg !3224
  %tobool44 = icmp eq i8 %6, 0, !dbg !3224
  br i1 %tobool44, label %if.else, label %land.lhs.true45, !dbg !3224

land.lhs.true45:                                  ; preds = %if.then37
  %assembler_name = getelementptr inbounds %union.tree_node, %union.tree_node* %call15, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !3224
  %7 = load %union.tree_node*, %union.tree_node** %assembler_name, align 8, !dbg !3224
  %cmp46 = icmp eq %union.tree_node* %7, null, !dbg !3224
  br i1 %cmp46, label %if.else, label %if.then48, !dbg !3225

if.then48:                                        ; preds = %land.lhs.true45
  %call49 = call %union.tree_node* @decl_assembler_name(%union.tree_node* nonnull %call15) #6, !dbg !3226
  %id = getelementptr inbounds %union.tree_node, %union.tree_node* %call49, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3226
  %str = bitcast i32* %id to i8**, !dbg !3226
  %8 = load i8*, i8** %str, align 8, !dbg !3226
  call void @llvm.dbg.value(metadata i8* %8, metadata !3186, metadata !DIExpression()), !dbg !3227
  %9 = load i8* (i8*)*, i8* (i8*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 52), align 8, !dbg !3228
  %call50 = call i8* %9(i8* %8) #6, !dbg !3229
  call void @llvm.dbg.value(metadata i8* %call50, metadata !3186, metadata !DIExpression()), !dbg !3227
  %10 = bitcast %union.tree_node** %newname to %struct.tree_identifier**, !dbg !3230
  %11 = load %struct.tree_identifier*, %struct.tree_identifier** %10, align 8, !dbg !3230
  %str53 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %11, i64 0, i32 1, i32 0, !dbg !3230
  %12 = load i8*, i8** %str53, align 8, !dbg !3230
  %call54 = call i32 @strcmp(i8* %call50, i8* %12) #6, !dbg !3232
  %tobool55 = icmp eq i32 %call54, 0, !dbg !3232
  br i1 %tobool55, label %cleanup, label %if.then56, !dbg !3233

if.then56:                                        ; preds = %if.then48
  %call57 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3234
  br label %cleanup, !dbg !3234

if.else:                                          ; preds = %land.lhs.true45, %if.then37
  %13 = load %union.tree_node*, %union.tree_node** %newname, align 8, !dbg !3235
  call void @llvm.dbg.value(metadata %union.tree_node* %13, metadata !3182, metadata !DIExpression()), !dbg !3191
  call void @change_decl_assembler_name(%union.tree_node* nonnull %call15, %union.tree_node* %13) #6, !dbg !3236
  br label %cleanup

if.else60:                                        ; preds = %land.lhs.true34, %lor.lhs.false, %if.end14, %lor.lhs.false28
  %14 = load %union.tree_node*, %union.tree_node** %oldname, align 8, !dbg !3237
  call void @llvm.dbg.value(metadata %union.tree_node* %14, metadata !3181, metadata !DIExpression()), !dbg !3191
  %15 = load %union.tree_node*, %union.tree_node** %newname, align 8, !dbg !3238
  call void @llvm.dbg.value(metadata %union.tree_node* %15, metadata !3182, metadata !DIExpression()), !dbg !3191
  call void @add_to_renaming_pragma_list(%union.tree_node* %14, %union.tree_node* %15) #7, !dbg !3239
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %if.else60, %if.then56, %if.else, %do.body5, %do.body
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8, !dbg !3240
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3240
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3240
  ret void, !dbg !3240
}

; Function Attrs: nounwind uwtable
define internal void @handle_pragma_extern_prefix(%struct.cpp_reader* %dummy) #4 !dbg !3241 {
entry:
  %prefix = alloca %union.tree_node*, align 8
  %x = alloca %union.tree_node*, align 8
  %tmp = alloca %struct.expanded_location, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %dummy, metadata !3243, metadata !DIExpression()), !dbg !3247
  %0 = bitcast %union.tree_node** %prefix to i8*, !dbg !3248
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3248
  %1 = bitcast %union.tree_node** %x to i8*, !dbg !3248
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3248
  call void @llvm.dbg.value(metadata %union.tree_node** %prefix, metadata !3244, metadata !DIExpression(DW_OP_deref)), !dbg !3247
  %call = call i32 @pragma_lex(%union.tree_node** nonnull %prefix) #6, !dbg !3249
  %cmp = icmp eq i32 %call, 61, !dbg !3251
  br i1 %cmp, label %if.end, label %do.body, !dbg !3252

do.body:                                          ; preds = %entry
  %call1 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.96, i64 0, i64 0)) #6, !dbg !3253
  br label %cleanup, !dbg !3253

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %union.tree_node** %x, metadata !3245, metadata !DIExpression(DW_OP_deref)), !dbg !3247
  %call2 = call i32 @pragma_lex(%union.tree_node** nonnull %x) #6, !dbg !3255
  call void @llvm.dbg.value(metadata i32 %call2, metadata !3246, metadata !DIExpression()), !dbg !3247
  %cmp3 = icmp eq i32 %call2, 22, !dbg !3256
  br i1 %cmp3, label %if.end6, label %if.then4, !dbg !3258

if.then4:                                         ; preds = %if.end
  %call5 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.97, i64 0, i64 0)) #6, !dbg !3259
  br label %if.end6, !dbg !3259

if.end6:                                          ; preds = %if.end, %if.then4
  %2 = load i8, i8* getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 118), align 1, !dbg !3260
  %tobool = icmp eq i8 %2, 0, !dbg !3262
  br i1 %tobool, label %if.else, label %if.then7, !dbg !3263

if.then7:                                         ; preds = %if.end6
  %3 = bitcast %union.tree_node** %prefix to %struct.tree_string**, !dbg !3264
  %4 = load %struct.tree_string*, %struct.tree_string** %3, align 8, !dbg !3264
  %length = getelementptr inbounds %struct.tree_string, %struct.tree_string* %4, i64 0, i32 1, !dbg !3264
  %5 = load i32, i32* %length, align 8, !dbg !3264
  %cmp8 = icmp sgt i32 %5, 1, !dbg !3265
  %.cast = bitcast %struct.tree_string* %4 to %union.tree_node*, !dbg !3264
  call void @llvm.dbg.value(metadata %union.tree_node* %.cast, metadata !3244, metadata !DIExpression()), !dbg !3247
  %cond = select i1 %cmp8, %union.tree_node* %.cast, %union.tree_node* null, !dbg !3264
  store %union.tree_node* %cond, %union.tree_node** @pragma_extern_prefix, align 8, !dbg !3266
  br label %cleanup, !dbg !3267

if.else:                                          ; preds = %if.end6
  %6 = load i32, i32* @warn_unknown_pragmas, align 4, !dbg !3268
  %7 = load i32, i32* @input_location, align 4, !dbg !3270
  call void @expand_location(%struct.expanded_location* nonnull sret %tmp, i32 %7) #6, !dbg !3270
  %sysp = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %tmp, i64 0, i32 3, !dbg !3270
  %8 = load i8, i8* %sysp, align 8, !dbg !3270
  %cmp9 = icmp ne i8 %8, 0, !dbg !3270
  %conv10 = zext i1 %cmp9 to i32, !dbg !3270
  %cmp11 = icmp sgt i32 %6, %conv10, !dbg !3271
  br i1 %cmp11, label %if.then13, label %cleanup, !dbg !3272

if.then13:                                        ; preds = %if.else
  %call14 = call zeroext i8 (i32, i8*, ...) @warning(i32 212, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.98, i64 0, i64 0)) #6, !dbg !3273
  br label %cleanup, !dbg !3273

cleanup:                                          ; preds = %if.then7, %if.then13, %if.else, %do.body
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3274
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3274
  ret void, !dbg !3274
}

; Function Attrs: nounwind uwtable
define internal void @handle_pragma_message(%struct.cpp_reader* %dummy) #4 !dbg !3275 {
entry:
  %x = alloca %union.tree_node*, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %dummy, metadata !3277, metadata !DIExpression()), !dbg !3281
  %0 = bitcast %union.tree_node** %x to i8*, !dbg !3282
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3282
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !3280, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata %union.tree_node** %x, metadata !3279, metadata !DIExpression(DW_OP_deref)), !dbg !3281
  %call = call i32 @pragma_lex(%union.tree_node** nonnull %x) #6, !dbg !3283
  call void @llvm.dbg.value(metadata i32 %call, metadata !3278, metadata !DIExpression()), !dbg !3281
  switch i32 %call, label %do.body17 [
    i32 20, label %if.then
    i32 61, label %if.then15
  ], !dbg !3284

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %union.tree_node** %x, metadata !3279, metadata !DIExpression(DW_OP_deref)), !dbg !3281
  %call1 = call i32 @pragma_lex(%union.tree_node** nonnull %x) #6, !dbg !3285
  call void @llvm.dbg.value(metadata i32 %call1, metadata !3278, metadata !DIExpression()), !dbg !3281
  %cmp2 = icmp eq i32 %call1, 61, !dbg !3288
  br i1 %cmp2, label %if.then3, label %do.body, !dbg !3290

if.then3:                                         ; preds = %if.then
  %1 = load %union.tree_node*, %union.tree_node** %x, align 8, !dbg !3291
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !3279, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !3280, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata %union.tree_node** %x, metadata !3279, metadata !DIExpression(DW_OP_deref)), !dbg !3281
  %call5 = call i32 @pragma_lex(%union.tree_node** nonnull %x) #6, !dbg !3292
  %cmp6 = icmp eq i32 %call5, 21, !dbg !3294
  br i1 %cmp6, label %if.end22, label %do.body8, !dbg !3295

do.body:                                          ; preds = %if.then
  %call4 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.99, i64 0, i64 0)) #6, !dbg !3296
  br label %cleanup, !dbg !3296

do.body8:                                         ; preds = %if.then3
  %call9 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.100, i64 0, i64 0)) #6, !dbg !3298
  br label %cleanup, !dbg !3298

if.then15:                                        ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** %x, align 8, !dbg !3300
  call void @llvm.dbg.value(metadata %union.tree_node* %2, metadata !3279, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata %union.tree_node* %2, metadata !3280, metadata !DIExpression()), !dbg !3281
  br label %if.end22

do.body17:                                        ; preds = %entry
  %call18 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.99, i64 0, i64 0)) #6, !dbg !3302
  br label %cleanup, !dbg !3302

if.end22:                                         ; preds = %if.then3, %if.then15
  %.in = phi %union.tree_node* [ %2, %if.then15 ], [ %1, %if.then3 ]
  %message.0 = phi %union.tree_node* [ %2, %if.then15 ], [ %1, %if.then3 ], !dbg !3304
  call void @llvm.dbg.value(metadata %union.tree_node* %message.0, metadata !3280, metadata !DIExpression()), !dbg !3281
  %tobool = icmp eq %union.tree_node* %message.0, null, !dbg !3305
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3305

cond.true:                                        ; preds = %if.end22
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 1018, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !3305
  br label %cond.end, !dbg !3305

cond.end:                                         ; preds = %if.end22, %cond.true
  call void @llvm.dbg.value(metadata %union.tree_node** %x, metadata !3279, metadata !DIExpression(DW_OP_deref)), !dbg !3281
  %call23 = call i32 @pragma_lex(%union.tree_node** nonnull %x) #6, !dbg !3306
  %cmp24 = icmp eq i32 %call23, 22, !dbg !3308
  br i1 %cmp24, label %if.end27, label %if.then25, !dbg !3309

if.then25:                                        ; preds = %cond.end
  %call26 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.101, i64 0, i64 0)) #6, !dbg !3310
  br label %if.end27, !dbg !3310

if.end27:                                         ; preds = %cond.end, %if.then25
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %.in, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3311
  %4 = load i32, i32* %3, align 8, !dbg !3311
  %cmp28 = icmp sgt i32 %4, 1, !dbg !3313
  br i1 %cmp28, label %if.then29, label %cleanup, !dbg !3314

if.then29:                                        ; preds = %if.end27
  %5 = load i32, i32* @input_location, align 4, !dbg !3315
  %str = getelementptr inbounds %union.tree_node, %union.tree_node* %.in, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3316
  call void (i32, i8*, ...) @inform(i32 %5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.102, i64 0, i64 0), i32* nonnull %str) #6, !dbg !3317
  br label %cleanup, !dbg !3317

cleanup:                                          ; preds = %if.end27, %if.then29, %do.body17, %do.body8, %do.body
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3318
  ret void, !dbg !3318
}

declare dso_local void @ix86_register_pragmas() local_unnamed_addr #1

declare dso_local i32 @invoke_plugin_callbacks(i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @gt_ggc_mx_opt_stack(i8* %x_p) #4 !dbg !3319 {
entry:
  call void @llvm.dbg.value(metadata i8* %x_p, metadata !3321, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata i8* %x_p, metadata !3322, metadata !DIExpression()), !dbg !3324
  %cmp = icmp ne i8* %x_p, null, !dbg !3325
  %cmp1 = icmp ne i8* %x_p, inttoptr (i64 1 to i8*), !dbg !3325
  %or.cond = and i1 %cmp, %cmp1, !dbg !3325
  br i1 %or.cond, label %land.lhs.true2, label %if.end34, !dbg !3325

land.lhs.true2:                                   ; preds = %entry
  %call = tail call i32 @ggc_set_mark(i8* nonnull %x_p) #6, !dbg !3325
  %tobool = icmp eq i32 %call, 0, !dbg !3325
  br i1 %tobool, label %do.body, label %if.end34, !dbg !3327

do.body:                                          ; preds = %land.lhs.true2
  %prev = bitcast i8* %x_p to %struct.opt_stack**, !dbg !3328
  %0 = load %struct.opt_stack*, %struct.opt_stack** %prev, align 8, !dbg !3328
  %cmp3 = icmp eq %struct.opt_stack* %0, null, !dbg !3328
  br i1 %cmp3, label %do.body6, label %if.then4, !dbg !3332

if.then4:                                         ; preds = %do.body
  %1 = bitcast %struct.opt_stack* %0 to i8*, !dbg !3332
  tail call void @gt_ggc_mx_opt_stack(i8* nonnull %1) #7, !dbg !3328
  br label %do.body6, !dbg !3328

do.body6:                                         ; preds = %do.body, %if.then4
  %target_binary = getelementptr inbounds i8, i8* %x_p, i64 8, !dbg !3333
  %2 = bitcast i8* %target_binary to %union.tree_node**, !dbg !3333
  %3 = load %union.tree_node*, %union.tree_node** %2, align 8, !dbg !3333
  %cmp7 = icmp eq %union.tree_node* %3, null, !dbg !3333
  br i1 %cmp7, label %do.body13, label %if.then8, !dbg !3336

if.then8:                                         ; preds = %do.body6
  %4 = bitcast %union.tree_node* %3 to i8*, !dbg !3336
  tail call void @gt_ggc_mx_lang_tree_node(i8* nonnull %4) #6, !dbg !3333
  br label %do.body13, !dbg !3333

do.body13:                                        ; preds = %do.body6, %if.then8
  %target_strings = getelementptr inbounds i8, i8* %x_p, i64 16, !dbg !3337
  %5 = bitcast i8* %target_strings to %union.tree_node**, !dbg !3337
  %6 = load %union.tree_node*, %union.tree_node** %5, align 8, !dbg !3337
  %cmp14 = icmp eq %union.tree_node* %6, null, !dbg !3337
  br i1 %cmp14, label %do.body20, label %if.then15, !dbg !3340

if.then15:                                        ; preds = %do.body13
  %7 = bitcast %union.tree_node* %6 to i8*, !dbg !3340
  tail call void @gt_ggc_mx_lang_tree_node(i8* nonnull %7) #6, !dbg !3337
  br label %do.body20, !dbg !3337

do.body20:                                        ; preds = %do.body13, %if.then15
  %optimize_binary = getelementptr inbounds i8, i8* %x_p, i64 24, !dbg !3341
  %8 = bitcast i8* %optimize_binary to %union.tree_node**, !dbg !3341
  %9 = load %union.tree_node*, %union.tree_node** %8, align 8, !dbg !3341
  %cmp21 = icmp eq %union.tree_node* %9, null, !dbg !3341
  br i1 %cmp21, label %do.body27, label %if.then22, !dbg !3344

if.then22:                                        ; preds = %do.body20
  %10 = bitcast %union.tree_node* %9 to i8*, !dbg !3344
  tail call void @gt_ggc_mx_lang_tree_node(i8* nonnull %10) #6, !dbg !3341
  br label %do.body27, !dbg !3341

do.body27:                                        ; preds = %do.body20, %if.then22
  %optimize_strings = getelementptr inbounds i8, i8* %x_p, i64 32, !dbg !3345
  %11 = bitcast i8* %optimize_strings to %union.tree_node**, !dbg !3345
  %12 = load %union.tree_node*, %union.tree_node** %11, align 8, !dbg !3345
  %cmp28 = icmp eq %union.tree_node* %12, null, !dbg !3345
  br i1 %cmp28, label %if.end34, label %if.then29, !dbg !3348

if.then29:                                        ; preds = %do.body27
  %13 = bitcast %union.tree_node* %12 to i8*, !dbg !3348
  tail call void @gt_ggc_mx_lang_tree_node(i8* nonnull %13) #6, !dbg !3345
  br label %if.end34, !dbg !3345

if.end34:                                         ; preds = %do.body27, %land.lhs.true2, %if.then29, %entry
  ret void, !dbg !3349
}

declare dso_local i32 @ggc_set_mark(i8*) local_unnamed_addr #1

declare dso_local void @gt_ggc_mx_lang_tree_node(i8*) #1

; Function Attrs: nounwind uwtable
define dso_local void @gt_ggc_mx_align_stack(i8* %x_p) #4 !dbg !3350 {
entry:
  br label %tailrecurse, !dbg !3355

tailrecurse:                                      ; preds = %if.then8, %entry
  %x_p.tr = phi i8* [ %x_p, %entry ], [ %5, %if.then8 ]
  call void @llvm.dbg.value(metadata i8* %x_p.tr, metadata !3352, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i8* %x_p.tr, metadata !3353, metadata !DIExpression()), !dbg !3360
  %cmp = icmp ne i8* %x_p.tr, null, !dbg !3361
  %cmp1 = icmp ne i8* %x_p.tr, inttoptr (i64 1 to i8*), !dbg !3361
  %or.cond = and i1 %cmp, %cmp1, !dbg !3361
  br i1 %or.cond, label %land.lhs.true2, label %if.end13, !dbg !3361

land.lhs.true2:                                   ; preds = %tailrecurse
  %call = tail call i32 @ggc_set_mark(i8* nonnull %x_p.tr) #6, !dbg !3361
  %tobool = icmp eq i32 %call, 0, !dbg !3361
  br i1 %tobool, label %do.body, label %if.end13, !dbg !3362

do.body:                                          ; preds = %land.lhs.true2
  %id = getelementptr inbounds i8, i8* %x_p.tr, i64 8, !dbg !3363
  %0 = bitcast i8* %id to %union.tree_node**, !dbg !3363
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3363
  %cmp3 = icmp eq %union.tree_node* %1, null, !dbg !3363
  br i1 %cmp3, label %do.body6, label %if.then4, !dbg !3366

if.then4:                                         ; preds = %do.body
  %2 = bitcast %union.tree_node* %1 to i8*, !dbg !3366
  tail call void @gt_ggc_mx_lang_tree_node(i8* nonnull %2) #6, !dbg !3363
  br label %do.body6, !dbg !3363

do.body6:                                         ; preds = %do.body, %if.then4
  %prev = getelementptr inbounds i8, i8* %x_p.tr, i64 16, !dbg !3355
  %3 = bitcast i8* %prev to %struct.align_stack**, !dbg !3355
  %4 = load %struct.align_stack*, %struct.align_stack** %3, align 8, !dbg !3355
  %cmp7 = icmp eq %struct.align_stack* %4, null, !dbg !3355
  br i1 %cmp7, label %if.end13, label %if.then8, !dbg !3367

if.then8:                                         ; preds = %do.body6
  %5 = bitcast %struct.align_stack* %4 to i8*, !dbg !3367
  br label %tailrecurse, !dbg !3355

if.end13:                                         ; preds = %do.body6, %land.lhs.true2, %tailrecurse
  ret void, !dbg !3368
}

; Function Attrs: nounwind uwtable
define dso_local void @gt_pch_nx_opt_stack(i8* %x_p) #4 !dbg !3369 {
entry:
  call void @llvm.dbg.value(metadata i8* %x_p, metadata !3371, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata i8* %x_p, metadata !3372, metadata !DIExpression()), !dbg !3373
  %call = tail call i32 @gt_pch_note_object(i8* %x_p, i8* %x_p, void (i8*, i8*, void (i8*, i8*)*, i8*)* nonnull @gt_pch_p_9opt_stack, i32 19) #6, !dbg !3374
  %tobool = icmp eq i32 %call, 0, !dbg !3374
  br i1 %tobool, label %if.end31, label %do.body, !dbg !3376

do.body:                                          ; preds = %entry
  %prev = bitcast i8* %x_p to %struct.opt_stack**, !dbg !3377
  %0 = load %struct.opt_stack*, %struct.opt_stack** %prev, align 8, !dbg !3377
  %cmp = icmp eq %struct.opt_stack* %0, null, !dbg !3377
  br i1 %cmp, label %do.body3, label %if.then1, !dbg !3381

if.then1:                                         ; preds = %do.body
  %1 = bitcast %struct.opt_stack* %0 to i8*, !dbg !3381
  tail call void @gt_pch_nx_opt_stack(i8* nonnull %1) #7, !dbg !3377
  br label %do.body3, !dbg !3377

do.body3:                                         ; preds = %do.body, %if.then1
  %target_binary = getelementptr inbounds i8, i8* %x_p, i64 8, !dbg !3382
  %2 = bitcast i8* %target_binary to %union.tree_node**, !dbg !3382
  %3 = load %union.tree_node*, %union.tree_node** %2, align 8, !dbg !3382
  %cmp4 = icmp eq %union.tree_node* %3, null, !dbg !3382
  br i1 %cmp4, label %do.body10, label %if.then5, !dbg !3385

if.then5:                                         ; preds = %do.body3
  %4 = bitcast %union.tree_node* %3 to i8*, !dbg !3385
  tail call void @gt_pch_nx_lang_tree_node(i8* nonnull %4) #6, !dbg !3382
  br label %do.body10, !dbg !3382

do.body10:                                        ; preds = %do.body3, %if.then5
  %target_strings = getelementptr inbounds i8, i8* %x_p, i64 16, !dbg !3386
  %5 = bitcast i8* %target_strings to %union.tree_node**, !dbg !3386
  %6 = load %union.tree_node*, %union.tree_node** %5, align 8, !dbg !3386
  %cmp11 = icmp eq %union.tree_node* %6, null, !dbg !3386
  br i1 %cmp11, label %do.body17, label %if.then12, !dbg !3389

if.then12:                                        ; preds = %do.body10
  %7 = bitcast %union.tree_node* %6 to i8*, !dbg !3389
  tail call void @gt_pch_nx_lang_tree_node(i8* nonnull %7) #6, !dbg !3386
  br label %do.body17, !dbg !3386

do.body17:                                        ; preds = %do.body10, %if.then12
  %optimize_binary = getelementptr inbounds i8, i8* %x_p, i64 24, !dbg !3390
  %8 = bitcast i8* %optimize_binary to %union.tree_node**, !dbg !3390
  %9 = load %union.tree_node*, %union.tree_node** %8, align 8, !dbg !3390
  %cmp18 = icmp eq %union.tree_node* %9, null, !dbg !3390
  br i1 %cmp18, label %do.body24, label %if.then19, !dbg !3393

if.then19:                                        ; preds = %do.body17
  %10 = bitcast %union.tree_node* %9 to i8*, !dbg !3393
  tail call void @gt_pch_nx_lang_tree_node(i8* nonnull %10) #6, !dbg !3390
  br label %do.body24, !dbg !3390

do.body24:                                        ; preds = %do.body17, %if.then19
  %optimize_strings = getelementptr inbounds i8, i8* %x_p, i64 32, !dbg !3394
  %11 = bitcast i8* %optimize_strings to %union.tree_node**, !dbg !3394
  %12 = load %union.tree_node*, %union.tree_node** %11, align 8, !dbg !3394
  %cmp25 = icmp eq %union.tree_node* %12, null, !dbg !3394
  br i1 %cmp25, label %if.end31, label %if.then26, !dbg !3397

if.then26:                                        ; preds = %do.body24
  %13 = bitcast %union.tree_node* %12 to i8*, !dbg !3397
  tail call void @gt_pch_nx_lang_tree_node(i8* nonnull %13) #6, !dbg !3394
  br label %if.end31, !dbg !3394

if.end31:                                         ; preds = %do.body24, %entry, %if.then26
  ret void, !dbg !3398
}

declare dso_local i32 @gt_pch_note_object(i8*, i8*, void (i8*, i8*, void (i8*, i8*)*, i8*)*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @gt_pch_p_9opt_stack(i8* %this_obj, i8* %x_p, void (i8*, i8*)* %op, i8* %cookie) #4 !dbg !3399 {
entry:
  call void @llvm.dbg.value(metadata i8* %this_obj, metadata !3404, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i8* %x_p, metadata !3405, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata void (i8*, i8*)* %op, metadata !3406, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i8* %cookie, metadata !3407, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i8* %x_p, metadata !3408, metadata !DIExpression()), !dbg !3409
  %cmp = icmp eq i8* %x_p, %this_obj, !dbg !3410
  br i1 %cmp, label %if.then, label %if.end, !dbg !3412

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %x_p, metadata !3408, metadata !DIExpression()), !dbg !3409
  tail call void %op(i8* %x_p, i8* %cookie) #6, !dbg !3413
  br label %if.end, !dbg !3413

if.end:                                           ; preds = %if.then, %entry
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3414

if.then2:                                         ; preds = %if.end
  %target_binary = getelementptr inbounds i8, i8* %x_p, i64 8, !dbg !3415
  tail call void %op(i8* nonnull %target_binary, i8* %cookie) #6, !dbg !3417
  br label %if.end3, !dbg !3417

if.end3:                                          ; preds = %if.then2, %if.end
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !3418

if.then5:                                         ; preds = %if.end3
  %target_strings = getelementptr inbounds i8, i8* %x_p, i64 16, !dbg !3419
  tail call void %op(i8* nonnull %target_strings, i8* %cookie) #6, !dbg !3421
  br label %if.end6, !dbg !3421

if.end6:                                          ; preds = %if.then5, %if.end3
  br i1 %cmp, label %if.then8, label %if.end9, !dbg !3422

if.then8:                                         ; preds = %if.end6
  %optimize_binary = getelementptr inbounds i8, i8* %x_p, i64 24, !dbg !3423
  tail call void %op(i8* nonnull %optimize_binary, i8* %cookie) #6, !dbg !3425
  br label %if.end9, !dbg !3425

if.end9:                                          ; preds = %if.then8, %if.end6
  br i1 %cmp, label %if.then11, label %if.end12, !dbg !3426

if.then11:                                        ; preds = %if.end9
  %optimize_strings = getelementptr inbounds i8, i8* %x_p, i64 32, !dbg !3427
  tail call void %op(i8* nonnull %optimize_strings, i8* %cookie) #6, !dbg !3429
  br label %if.end12, !dbg !3429

if.end12:                                         ; preds = %if.then11, %if.end9
  ret void, !dbg !3430
}

declare dso_local void @gt_pch_nx_lang_tree_node(i8*) #1

; Function Attrs: nounwind uwtable
define dso_local void @gt_pch_nx_align_stack(i8* %x_p) #4 !dbg !3431 {
entry:
  br label %tailrecurse, !dbg !3435

tailrecurse:                                      ; preds = %if.then5, %entry
  %x_p.tr = phi i8* [ %x_p, %entry ], [ %5, %if.then5 ]
  call void @llvm.dbg.value(metadata i8* %x_p.tr, metadata !3433, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i8* %x_p.tr, metadata !3434, metadata !DIExpression()), !dbg !3440
  %call = tail call i32 @gt_pch_note_object(i8* %x_p.tr, i8* %x_p.tr, void (i8*, i8*, void (i8*, i8*)*, i8*)* nonnull @gt_pch_p_11align_stack, i32 20) #6, !dbg !3441
  %tobool = icmp eq i32 %call, 0, !dbg !3441
  br i1 %tobool, label %if.end10, label %do.body, !dbg !3442

do.body:                                          ; preds = %tailrecurse
  %id = getelementptr inbounds i8, i8* %x_p.tr, i64 8, !dbg !3443
  %0 = bitcast i8* %id to %union.tree_node**, !dbg !3443
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3443
  %cmp = icmp eq %union.tree_node* %1, null, !dbg !3443
  br i1 %cmp, label %do.body3, label %if.then1, !dbg !3446

if.then1:                                         ; preds = %do.body
  %2 = bitcast %union.tree_node* %1 to i8*, !dbg !3446
  tail call void @gt_pch_nx_lang_tree_node(i8* nonnull %2) #6, !dbg !3443
  br label %do.body3, !dbg !3443

do.body3:                                         ; preds = %do.body, %if.then1
  %prev = getelementptr inbounds i8, i8* %x_p.tr, i64 16, !dbg !3435
  %3 = bitcast i8* %prev to %struct.align_stack**, !dbg !3435
  %4 = load %struct.align_stack*, %struct.align_stack** %3, align 8, !dbg !3435
  %cmp4 = icmp eq %struct.align_stack* %4, null, !dbg !3435
  br i1 %cmp4, label %if.end10, label %if.then5, !dbg !3447

if.then5:                                         ; preds = %do.body3
  %5 = bitcast %struct.align_stack* %4 to i8*, !dbg !3447
  br label %tailrecurse, !dbg !3435

if.end10:                                         ; preds = %do.body3, %tailrecurse
  ret void, !dbg !3448
}

; Function Attrs: nounwind uwtable
define dso_local void @gt_pch_p_11align_stack(i8* %this_obj, i8* %x_p, void (i8*, i8*)* %op, i8* %cookie) #4 !dbg !3449 {
entry:
  call void @llvm.dbg.value(metadata i8* %this_obj, metadata !3451, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i8* %x_p, metadata !3452, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata void (i8*, i8*)* %op, metadata !3453, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i8* %cookie, metadata !3454, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i8* %x_p, metadata !3455, metadata !DIExpression()), !dbg !3456
  %cmp = icmp eq i8* %x_p, %this_obj, !dbg !3457
  br i1 %cmp, label %if.then, label %if.end, !dbg !3459

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %x_p, metadata !3455, metadata !DIExpression()), !dbg !3456
  %id = getelementptr inbounds i8, i8* %x_p, i64 8, !dbg !3460
  tail call void %op(i8* nonnull %id, i8* %cookie) #6, !dbg !3461
  br label %if.end, !dbg !3461

if.end:                                           ; preds = %if.then, %entry
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3462

if.then2:                                         ; preds = %if.end
  %prev = getelementptr inbounds i8, i8* %x_p, i64 16, !dbg !3463
  tail call void %op(i8* nonnull %prev, i8* %cookie) #6, !dbg !3465
  br label %if.end3, !dbg !3465

if.end3:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !3466
}

declare dso_local %union.tree_node* @decl_attributes(%union.tree_node**, %union.tree_node*, i32) local_unnamed_addr #1

declare dso_local %union.tree_node* @build_tree_list_stat(%union.tree_node*, %union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @get_identifier(i8*) local_unnamed_addr #1

declare dso_local void @declare_weak(%union.tree_node*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_heap_reserve(%struct.VEC_int_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3467 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** @visstack, metadata !3471, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i32 1, metadata !3472, metadata !DIExpression()), !dbg !3474
  %0 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** @visstack, align 8, !dbg !3475
  %tobool = icmp eq %struct.VEC_int_heap* %0, null, !dbg !3475
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3475

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %0, i64 0, i32 0, !dbg !3475
  br label %cond.end, !dbg !3475

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_int_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3475
  %call = tail call fastcc i32 @VEC_int_base_space(%struct.VEC_int_base* %cond, i32 1) #7, !dbg !3475
  %tobool1 = icmp eq i32 %call, 0, !dbg !3475
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !3475
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !3473, metadata !DIExpression()), !dbg !3474
  br i1 %tobool1, label %if.then, label %if.end, !dbg !3475

if.then:                                          ; preds = %cond.end
  %1 = load i8*, i8** bitcast (%struct.VEC_int_heap** @visstack to i8**), align 8, !dbg !3476
  %call3 = tail call i8* @vec_heap_o_reserve(i8* %1, i32 1, i64 8, i64 4) #6, !dbg !3476
  store i8* %call3, i8** bitcast (%struct.VEC_int_heap** @visstack to i8**), align 8, !dbg !3476
  br label %if.end, !dbg !3476

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !3475
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %vec_, i32 %obj_) unnamed_addr #0 !dbg !3478 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !3482, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i32 %obj_, metadata !3483, metadata !DIExpression()), !dbg !3485
  %num1 = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !3486
  %0 = load i32, i32* %num1, align 4, !dbg !3486
  %inc = add i32 %0, 1, !dbg !3486
  store i32 %inc, i32* %num1, align 4, !dbg !3486
  %idxprom = zext i32 %0 to i64, !dbg !3486
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3486
  call void @llvm.dbg.value(metadata i32* %arrayidx, metadata !3484, metadata !DIExpression()), !dbg !3485
  store i32 %obj_, i32* %arrayidx, align 4, !dbg !3486
  ret i32* %arrayidx, !dbg !3486
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_base_space(%struct.VEC_int_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3487 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !3491, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata i32 1, metadata !3492, metadata !DIExpression()), !dbg !3493
  %tobool = icmp eq %struct.VEC_int_base* %vec_, null, !dbg !3494
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !3494

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 1, !dbg !3494
  %0 = load i32, i32* %alloc, align 4, !dbg !3494
  %num = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !3494
  %1 = load i32, i32* %num, align 4, !dbg !3494
  %cmp1 = icmp ne i32 %0, %1, !dbg !3494
  %phitmp = zext i1 %cmp1 to i32, !dbg !3494
  br label %cond.end, !dbg !3494

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3494

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !3494
}

declare dso_local i8* @vec_heap_o_reserve(i8*, i32, i64, i64) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.pragma_ns_name* @VEC_pragma_ns_name_heap_safe_push(%struct.VEC_pragma_ns_name_heap** %vec_, %struct.pragma_ns_name* %obj_) unnamed_addr #0 !dbg !3495 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_pragma_ns_name_heap** @registered_pp_pragmas, metadata !3502, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata %struct.pragma_ns_name* %obj_, metadata !3503, metadata !DIExpression()), !dbg !3504
  %call = tail call fastcc i32 @VEC_pragma_ns_name_heap_reserve(%struct.VEC_pragma_ns_name_heap** nonnull @registered_pp_pragmas, i32 1) #7, !dbg !3505
  %0 = load %struct.VEC_pragma_ns_name_heap*, %struct.VEC_pragma_ns_name_heap** @registered_pp_pragmas, align 8, !dbg !3505
  %tobool = icmp eq %struct.VEC_pragma_ns_name_heap* %0, null, !dbg !3505
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3505

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_pragma_ns_name_heap, %struct.VEC_pragma_ns_name_heap* %0, i64 0, i32 0, !dbg !3505
  br label %cond.end, !dbg !3505

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_pragma_ns_name_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3505
  %call1 = tail call fastcc %struct.pragma_ns_name* @VEC_pragma_ns_name_base_quick_push(%struct.VEC_pragma_ns_name_base* %cond, %struct.pragma_ns_name* %obj_) #7, !dbg !3505
  ret %struct.pragma_ns_name* %call1, !dbg !3505
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void (%struct.cpp_reader*)** @VEC_pragma_handler_heap_safe_push(%struct.VEC_pragma_handler_heap** %vec_, void (%struct.cpp_reader*)** %obj_) unnamed_addr #0 !dbg !3506 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_pragma_handler_heap** @registered_pragmas, metadata !3513, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata void (%struct.cpp_reader*)** %obj_, metadata !3514, metadata !DIExpression()), !dbg !3515
  %call = tail call fastcc i32 @VEC_pragma_handler_heap_reserve(%struct.VEC_pragma_handler_heap** nonnull @registered_pragmas, i32 1) #7, !dbg !3516
  %0 = load %struct.VEC_pragma_handler_heap*, %struct.VEC_pragma_handler_heap** @registered_pragmas, align 8, !dbg !3516
  %tobool = icmp eq %struct.VEC_pragma_handler_heap* %0, null, !dbg !3516
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3516

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_pragma_handler_heap, %struct.VEC_pragma_handler_heap* %0, i64 0, i32 0, !dbg !3516
  br label %cond.end, !dbg !3516

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_pragma_handler_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3516
  %call1 = tail call fastcc void (%struct.cpp_reader*)** @VEC_pragma_handler_base_quick_push(%struct.VEC_pragma_handler_base* %cond, void (%struct.cpp_reader*)** %obj_) #7, !dbg !3516
  ret void (%struct.cpp_reader*)** %call1, !dbg !3516
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_pragma_handler_base_length(%struct.VEC_pragma_handler_base* %vec_) unnamed_addr #0 !dbg !3517 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_pragma_handler_base* %vec_, metadata !3523, metadata !DIExpression()), !dbg !3524
  %tobool = icmp eq %struct.VEC_pragma_handler_base* %vec_, null, !dbg !3525
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3525

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_pragma_handler_base, %struct.VEC_pragma_handler_base* %vec_, i64 0, i32 0, !dbg !3525
  %0 = load i32, i32* %num, align 8, !dbg !3525
  br label %cond.end, !dbg !3525

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3525
  ret i32 %cond, !dbg !3525
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_pragma_ns_name_heap_reserve(%struct.VEC_pragma_ns_name_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3526 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_pragma_ns_name_heap** @registered_pp_pragmas, metadata !3530, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i32 1, metadata !3531, metadata !DIExpression()), !dbg !3533
  %0 = load %struct.VEC_pragma_ns_name_heap*, %struct.VEC_pragma_ns_name_heap** @registered_pp_pragmas, align 8, !dbg !3534
  %tobool = icmp eq %struct.VEC_pragma_ns_name_heap* %0, null, !dbg !3534
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3534

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_pragma_ns_name_heap, %struct.VEC_pragma_ns_name_heap* %0, i64 0, i32 0, !dbg !3534
  br label %cond.end, !dbg !3534

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_pragma_ns_name_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3534
  %call = tail call fastcc i32 @VEC_pragma_ns_name_base_space(%struct.VEC_pragma_ns_name_base* %cond, i32 1) #7, !dbg !3534
  %tobool1 = icmp eq i32 %call, 0, !dbg !3534
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !3534
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !3532, metadata !DIExpression()), !dbg !3533
  br i1 %tobool1, label %if.then, label %if.end, !dbg !3534

if.then:                                          ; preds = %cond.end
  %1 = load i8*, i8** bitcast (%struct.VEC_pragma_ns_name_heap** @registered_pp_pragmas to i8**), align 8, !dbg !3535
  %call3 = tail call i8* @vec_heap_o_reserve(i8* %1, i32 1, i64 8, i64 16) #6, !dbg !3535
  store i8* %call3, i8** bitcast (%struct.VEC_pragma_ns_name_heap** @registered_pp_pragmas to i8**), align 8, !dbg !3535
  br label %if.end, !dbg !3535

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !3534
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.pragma_ns_name* @VEC_pragma_ns_name_base_quick_push(%struct.VEC_pragma_ns_name_base* %vec_, %struct.pragma_ns_name* %obj_) unnamed_addr #0 !dbg !3537 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_pragma_ns_name_base* %vec_, metadata !3541, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata %struct.pragma_ns_name* %obj_, metadata !3542, metadata !DIExpression()), !dbg !3544
  %num1 = getelementptr inbounds %struct.VEC_pragma_ns_name_base, %struct.VEC_pragma_ns_name_base* %vec_, i64 0, i32 0, !dbg !3545
  %0 = load i32, i32* %num1, align 8, !dbg !3545
  %inc = add i32 %0, 1, !dbg !3545
  store i32 %inc, i32* %num1, align 8, !dbg !3545
  %idxprom = zext i32 %0 to i64, !dbg !3545
  %arrayidx = getelementptr inbounds %struct.VEC_pragma_ns_name_base, %struct.VEC_pragma_ns_name_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3545
  call void @llvm.dbg.value(metadata %struct.pragma_ns_name* %arrayidx, metadata !3543, metadata !DIExpression()), !dbg !3544
  %tobool = icmp eq %struct.pragma_ns_name* %obj_, null, !dbg !3546
  br i1 %tobool, label %if.end, label %if.then, !dbg !3545

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.pragma_ns_name* %arrayidx to i8*, !dbg !3546
  %2 = bitcast %struct.pragma_ns_name* %obj_ to i8*, !dbg !3546
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %2, i64 16, i1 false), !dbg !3546
  br label %if.end, !dbg !3546

if.end:                                           ; preds = %entry, %if.then
  ret %struct.pragma_ns_name* %arrayidx, !dbg !3545
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_pragma_ns_name_base_space(%struct.VEC_pragma_ns_name_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3548 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_pragma_ns_name_base* %vec_, metadata !3552, metadata !DIExpression()), !dbg !3554
  call void @llvm.dbg.value(metadata i32 1, metadata !3553, metadata !DIExpression()), !dbg !3554
  %tobool = icmp eq %struct.VEC_pragma_ns_name_base* %vec_, null, !dbg !3555
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !3555

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_pragma_ns_name_base, %struct.VEC_pragma_ns_name_base* %vec_, i64 0, i32 1, !dbg !3555
  %0 = load i32, i32* %alloc, align 4, !dbg !3555
  %num = getelementptr inbounds %struct.VEC_pragma_ns_name_base, %struct.VEC_pragma_ns_name_base* %vec_, i64 0, i32 0, !dbg !3555
  %1 = load i32, i32* %num, align 8, !dbg !3555
  %cmp1 = icmp ne i32 %0, %1, !dbg !3555
  %phitmp = zext i1 %cmp1 to i32, !dbg !3555
  br label %cond.end, !dbg !3555

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3555

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !3555
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_pragma_handler_heap_reserve(%struct.VEC_pragma_handler_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3556 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_pragma_handler_heap** @registered_pragmas, metadata !3560, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata i32 1, metadata !3561, metadata !DIExpression()), !dbg !3563
  %0 = load %struct.VEC_pragma_handler_heap*, %struct.VEC_pragma_handler_heap** @registered_pragmas, align 8, !dbg !3564
  %tobool = icmp eq %struct.VEC_pragma_handler_heap* %0, null, !dbg !3564
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3564

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_pragma_handler_heap, %struct.VEC_pragma_handler_heap* %0, i64 0, i32 0, !dbg !3564
  br label %cond.end, !dbg !3564

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_pragma_handler_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3564
  %call = tail call fastcc i32 @VEC_pragma_handler_base_space(%struct.VEC_pragma_handler_base* %cond, i32 1) #7, !dbg !3564
  %tobool1 = icmp eq i32 %call, 0, !dbg !3564
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !3564
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !3562, metadata !DIExpression()), !dbg !3563
  br i1 %tobool1, label %if.then, label %if.end, !dbg !3564

if.then:                                          ; preds = %cond.end
  %1 = load i8*, i8** bitcast (%struct.VEC_pragma_handler_heap** @registered_pragmas to i8**), align 8, !dbg !3565
  %call3 = tail call i8* @vec_heap_o_reserve(i8* %1, i32 1, i64 8, i64 8) #6, !dbg !3565
  store i8* %call3, i8** bitcast (%struct.VEC_pragma_handler_heap** @registered_pragmas to i8**), align 8, !dbg !3565
  br label %if.end, !dbg !3565

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !3564
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void (%struct.cpp_reader*)** @VEC_pragma_handler_base_quick_push(%struct.VEC_pragma_handler_base* %vec_, void (%struct.cpp_reader*)** %obj_) unnamed_addr #0 !dbg !3567 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_pragma_handler_base* %vec_, metadata !3571, metadata !DIExpression()), !dbg !3574
  call void @llvm.dbg.value(metadata void (%struct.cpp_reader*)** %obj_, metadata !3572, metadata !DIExpression()), !dbg !3574
  %num1 = getelementptr inbounds %struct.VEC_pragma_handler_base, %struct.VEC_pragma_handler_base* %vec_, i64 0, i32 0, !dbg !3575
  %0 = load i32, i32* %num1, align 8, !dbg !3575
  %inc = add i32 %0, 1, !dbg !3575
  store i32 %inc, i32* %num1, align 8, !dbg !3575
  %idxprom = zext i32 %0 to i64, !dbg !3575
  %arrayidx = getelementptr inbounds %struct.VEC_pragma_handler_base, %struct.VEC_pragma_handler_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3575
  call void @llvm.dbg.value(metadata void (%struct.cpp_reader*)** %arrayidx, metadata !3573, metadata !DIExpression()), !dbg !3574
  %tobool = icmp eq void (%struct.cpp_reader*)** %obj_, null, !dbg !3576
  br i1 %tobool, label %if.end, label %if.then, !dbg !3575

if.then:                                          ; preds = %entry
  %1 = bitcast void (%struct.cpp_reader*)** %obj_ to i64*, !dbg !3576
  %2 = load i64, i64* %1, align 8, !dbg !3576
  %3 = bitcast void (%struct.cpp_reader*)** %arrayidx to i64*, !dbg !3576
  store i64 %2, i64* %3, align 8, !dbg !3576
  br label %if.end, !dbg !3576

if.end:                                           ; preds = %entry, %if.then
  ret void (%struct.cpp_reader*)** %arrayidx, !dbg !3575
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_pragma_handler_base_space(%struct.VEC_pragma_handler_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3578 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_pragma_handler_base* %vec_, metadata !3582, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i32 1, metadata !3583, metadata !DIExpression()), !dbg !3584
  %tobool = icmp eq %struct.VEC_pragma_handler_base* %vec_, null, !dbg !3585
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !3585

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_pragma_handler_base, %struct.VEC_pragma_handler_base* %vec_, i64 0, i32 1, !dbg !3585
  %0 = load i32, i32* %alloc, align 4, !dbg !3585
  %num = getelementptr inbounds %struct.VEC_pragma_handler_base, %struct.VEC_pragma_handler_base* %vec_, i64 0, i32 0, !dbg !3585
  %1 = load i32, i32* %num, align 8, !dbg !3585
  %cmp1 = icmp ne i32 %0, %1, !dbg !3585
  %phitmp = zext i1 %cmp1 to i32, !dbg !3585
  br label %cond.end, !dbg !3585

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3585

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !3585
}

declare dso_local i32 @pragma_lex(%union.tree_node**) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @push_alignment(i32 %alignment, %union.tree_node* %id) unnamed_addr #4 !dbg !3586 {
entry:
  call void @llvm.dbg.value(metadata i32 %alignment, metadata !3590, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.value(metadata %union.tree_node* %id, metadata !3591, metadata !DIExpression()), !dbg !3593
  %call = tail call i8* @ggc_alloc_stat(i64 24) #6, !dbg !3594
  call void @llvm.dbg.value(metadata i8* %call, metadata !3592, metadata !DIExpression()), !dbg !3593
  %alignment2 = bitcast i8* %call to i32*, !dbg !3595
  store i32 %alignment, i32* %alignment2, align 8, !dbg !3596
  %id3 = getelementptr inbounds i8, i8* %call, i64 8, !dbg !3597
  %0 = bitcast i8* %id3 to %union.tree_node**, !dbg !3597
  store %union.tree_node* %id, %union.tree_node** %0, align 8, !dbg !3598
  %1 = load i64, i64* bitcast (%struct.align_stack** @alignment_stack to i64*), align 8, !dbg !3599
  %prev = getelementptr inbounds i8, i8* %call, i64 16, !dbg !3600
  %2 = bitcast i8* %prev to i64*, !dbg !3601
  store i64 %1, i64* %2, align 8, !dbg !3601
  %cmp = icmp eq i64 %1, 0, !dbg !3602
  br i1 %cmp, label %if.then, label %if.end, !dbg !3604

if.then:                                          ; preds = %entry
  %3 = load i32, i32* @maximum_field_alignment, align 4, !dbg !3605
  store i32 %3, i32* @default_alignment, align 4, !dbg !3606
  br label %if.end, !dbg !3607

if.end:                                           ; preds = %if.then, %entry
  store i8* %call, i8** bitcast (%struct.align_stack** @alignment_stack to i8**), align 8, !dbg !3608
  store i32 %alignment, i32* @maximum_field_alignment, align 4, !dbg !3609
  ret void, !dbg !3610
}

; Function Attrs: nounwind uwtable
define internal fastcc void @pop_alignment(%union.tree_node* %id) unnamed_addr #4 !dbg !3611 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %id, metadata !3613, metadata !DIExpression()), !dbg !3615
  %0 = load %struct.align_stack*, %struct.align_stack** @alignment_stack, align 8, !dbg !3616
  %cmp = icmp eq %struct.align_stack* %0, null, !dbg !3618
  br i1 %cmp, label %do.body, label %if.end, !dbg !3619

do.body:                                          ; preds = %entry
  %call = tail call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.55, i64 0, i64 0)) #6, !dbg !3620
  br label %cleanup.cont, !dbg !3620

if.end:                                           ; preds = %entry
  %tobool = icmp eq %union.tree_node* %id, null, !dbg !3622
  br i1 %tobool, label %if.end12, label %if.then2, !dbg !3624

if.then2:                                         ; preds = %if.end
  br label %for.cond, !dbg !3625

for.cond:                                         ; preds = %for.inc, %if.then2
  %entry1.0 = phi %struct.align_stack* [ %0, %if.then2 ], [ %entry1.0.pre, %for.inc ], !dbg !3628
  call void @llvm.dbg.value(metadata %struct.align_stack* %entry1.0, metadata !3614, metadata !DIExpression()), !dbg !3615
  %cond1 = icmp eq %struct.align_stack* %entry1.0, null, !dbg !3629
  br i1 %cond1, label %if.then9.loopexit, label %for.body, !dbg !3629

for.body:                                         ; preds = %for.cond
  %id4 = getelementptr inbounds %struct.align_stack, %struct.align_stack* %entry1.0, i64 0, i32 1, !dbg !3630
  %1 = load %union.tree_node*, %union.tree_node** %id4, align 8, !dbg !3630
  %cmp5 = icmp eq %union.tree_node* %1, %id, !dbg !3633
  br i1 %cmp5, label %if.then6, label %for.inc, !dbg !3634

if.then6:                                         ; preds = %for.body
  %entry1.0.lcssa5 = phi %struct.align_stack* [ %entry1.0, %for.body ], !dbg !3628
  call void @llvm.dbg.value(metadata %struct.align_stack* %entry1.0.lcssa5, metadata !3614, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata %struct.align_stack* %entry1.0.lcssa5, metadata !3614, metadata !DIExpression()), !dbg !3615
  store %struct.align_stack* %entry1.0.lcssa5, %struct.align_stack** @alignment_stack, align 8, !dbg !3635
  br label %if.end12, !dbg !3637

for.inc:                                          ; preds = %for.body
  %prev = getelementptr inbounds %struct.align_stack, %struct.align_stack* %entry1.0, i64 0, i32 2, !dbg !3638
  %entry1.0.pre = load %struct.align_stack*, %struct.align_stack** %prev, align 8, !dbg !3628
  br label %for.cond, !dbg !3639, !llvm.loop !3640

if.then9.loopexit:                                ; preds = %for.cond
  %call10 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.56, i64 0, i64 0), %union.tree_node* nonnull %id, %union.tree_node* nonnull %id) #6, !dbg !3642
  %.pre = load %struct.align_stack*, %struct.align_stack** @alignment_stack, align 8, !dbg !3644
  br label %if.end12, !dbg !3642

if.end12:                                         ; preds = %if.then6, %if.end, %if.then9.loopexit
  %2 = phi %struct.align_stack* [ %entry1.0.lcssa5, %if.then6 ], [ %0, %if.end ], [ %.pre, %if.then9.loopexit ], !dbg !3644
  %prev13 = getelementptr inbounds %struct.align_stack, %struct.align_stack* %2, i64 0, i32 2, !dbg !3645
  %3 = load %struct.align_stack*, %struct.align_stack** %prev13, align 8, !dbg !3645
  call void @llvm.dbg.value(metadata %struct.align_stack* %3, metadata !3614, metadata !DIExpression()), !dbg !3615
  %tobool14 = icmp eq %struct.align_stack* %3, null, !dbg !3646
  br i1 %tobool14, label %cond.false, label %cond.true, !dbg !3646

cond.true:                                        ; preds = %if.end12
  %alignment = getelementptr inbounds %struct.align_stack, %struct.align_stack* %3, i64 0, i32 0, !dbg !3647
  br label %cond.end, !dbg !3646

cond.false:                                       ; preds = %if.end12
  br label %cond.end, !dbg !3646

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32* [ %alignment, %cond.true ], [ @default_alignment, %cond.false ]
  %cond = load i32, i32* %cond.in, align 4, !dbg !3646
  store i32 %cond, i32* @maximum_field_alignment, align 4, !dbg !3648
  store %struct.align_stack* %3, %struct.align_stack** @alignment_stack, align 8, !dbg !3649
  br label %cleanup.cont, !dbg !3650

cleanup.cont:                                     ; preds = %do.body, %cond.end
  ret void, !dbg !3650
}

declare dso_local i8* @ggc_alloc_stat(i64) local_unnamed_addr #1

declare dso_local %union.tree_node* @identifier_global_value(%union.tree_node*) local_unnamed_addr #1

declare dso_local void @error(i8*, ...) local_unnamed_addr #1

declare dso_local i32 @diagnostic_classify_diagnostic(%struct.diagnostic_context*, i32, i32) local_unnamed_addr #1

declare dso_local %union.tree_node* @nreverse(%union.tree_node*) local_unnamed_addr #1

declare dso_local zeroext i8 @parse_optimize_options(%union.tree_node*, i8 zeroext) local_unnamed_addr #1

declare dso_local %union.tree_node* @chainon(%union.tree_node*, %union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @build_optimization_node() local_unnamed_addr #1

declare dso_local void @c_cpp_builtins_optimize_pragma(%struct.cpp_reader*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @build_target_option_node() local_unnamed_addr #1

declare dso_local %union.tree_node* @copy_list(%union.tree_node*) local_unnamed_addr #1

declare dso_local void @cl_optimization_restore(%struct.cl_optimization*) local_unnamed_addr #1

declare dso_local void @expand_location(%struct.expanded_location* sret, i32) local_unnamed_addr #1

declare dso_local zeroext i8 @pedwarn(i32, i32, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @handle_stdc_pragma(i8* %pname) unnamed_addr #4 !dbg !3651 {
entry:
  %t = alloca %union.tree_node*, align 8
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.87, i64 0, i64 0), metadata !3655, metadata !DIExpression()), !dbg !3659
  %0 = bitcast %union.tree_node** %t to i8*, !dbg !3660
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3660
  %call = tail call zeroext i8 @valid_location_for_stdc_pragma_p() #7, !dbg !3661
  %tobool = icmp eq i8 %call, 0, !dbg !3661
  br i1 %tobool, label %if.then, label %if.end, !dbg !3663

if.then:                                          ; preds = %entry
  %call1 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.88, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.87, i64 0, i64 0)) #6, !dbg !3664
  br label %cleanup, !dbg !3666

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %union.tree_node** %t, metadata !3657, metadata !DIExpression(DW_OP_deref)), !dbg !3659
  %call2 = call i32 @pragma_lex(%union.tree_node** nonnull %t) #6, !dbg !3667
  %cmp = icmp eq i32 %call2, 53, !dbg !3669
  br i1 %cmp, label %if.end5, label %if.then3, !dbg !3670

if.then3:                                         ; preds = %if.end
  %call4 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.89, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.87, i64 0, i64 0)) #6, !dbg !3671
  br label %cleanup, !dbg !3673

if.end5:                                          ; preds = %if.end
  %1 = bitcast %union.tree_node** %t to %struct.tree_identifier**, !dbg !3674
  %2 = load %struct.tree_identifier*, %struct.tree_identifier** %1, align 8, !dbg !3674
  %str = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %2, i64 0, i32 1, i32 0, !dbg !3674
  %3 = load i8*, i8** %str, align 8, !dbg !3674
  call void @llvm.dbg.value(metadata i8* %3, metadata !3656, metadata !DIExpression()), !dbg !3659
  %call6 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.90, i64 0, i64 0)) #6, !dbg !3675
  %tobool7 = icmp eq i32 %call6, 0, !dbg !3675
  br i1 %tobool7, label %if.end20, label %if.else, !dbg !3677

if.else:                                          ; preds = %if.end5
  %call9 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.91, i64 0, i64 0)) #6, !dbg !3678
  %tobool10 = icmp eq i32 %call9, 0, !dbg !3678
  br i1 %tobool10, label %if.end20, label %if.else12, !dbg !3680

if.else12:                                        ; preds = %if.else
  %call13 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.92, i64 0, i64 0)) #6, !dbg !3681
  %tobool14 = icmp eq i32 %call13, 0, !dbg !3681
  br i1 %tobool14, label %if.end20, label %if.else16, !dbg !3683

if.else16:                                        ; preds = %if.else12
  %call17 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.89, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.87, i64 0, i64 0)) #6, !dbg !3684
  br label %cleanup, !dbg !3686

if.end20:                                         ; preds = %if.else12, %if.else, %if.end5
  %ret.1 = phi i32 [ 0, %if.end5 ], [ 1, %if.else ], [ 2, %if.else12 ], !dbg !3687
  call void @llvm.dbg.value(metadata i32 %ret.1, metadata !3658, metadata !DIExpression()), !dbg !3659
  call void @llvm.dbg.value(metadata %union.tree_node** %t, metadata !3657, metadata !DIExpression(DW_OP_deref)), !dbg !3659
  %call21 = call i32 @pragma_lex(%union.tree_node** nonnull %t) #6, !dbg !3688
  %cmp22 = icmp eq i32 %call21, 22, !dbg !3690
  br i1 %cmp22, label %cleanup, label %if.then23, !dbg !3691

if.then23:                                        ; preds = %if.end20
  %call24 = call zeroext i8 (i32, i8*, ...) @warning(i32 165, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.93, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.87, i64 0, i64 0)) #6, !dbg !3692
  br label %cleanup, !dbg !3694

cleanup:                                          ; preds = %if.end20, %if.then23, %if.else16, %if.then3, %if.then
  %retval.0 = phi i32 [ 3, %if.then3 ], [ 3, %if.else16 ], [ 3, %if.then23 ], [ 3, %if.then ], [ %ret.1, %if.end20 ], !dbg !3659
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3695
  ret i32 %retval.0, !dbg !3695
}

declare dso_local void @set_float_const_decimal64() local_unnamed_addr #1

declare dso_local void @clear_float_const_decimal64() local_unnamed_addr #1

declare dso_local void @change_decl_assembler_name(%union.tree_node*, %union.tree_node*) local_unnamed_addr #1

declare dso_local void @inform(i32, i8*, ...) local_unnamed_addr #1

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
!llvm.module.flags = !{!1552, !1553, !1554}
!llvm.ident = !{!1555}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pending_weaks", scope: !2, file: !3, line: 247, type: !464, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1436, globals: !1507, nameTableKind: None)
!3 = !DIFile(filename: "c-pragma.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !139, !158, !165, !172, !366, !372, !453, !1402, !1414, !1430}
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
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !135, line: 474, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!136 = !{!137, !138}
!137 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!138 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !140, line: 280, baseType: !7, size: 32, elements: !141)
!140 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!141 = !{!142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157}
!142 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!143 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!144 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!145 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!146 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!147 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!148 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!149 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!150 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!151 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!152 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!153 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!154 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!155 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!156 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!157 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !140, line: 1817, baseType: !7, size: 32, elements: !159)
!159 = !{!160, !161, !162, !163, !164}
!160 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!161 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!162 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!163 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!164 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !140, line: 1805, baseType: !7, size: 32, elements: !166)
!166 = !{!167, !168, !169, !170, !171}
!167 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!168 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!169 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!170 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!171 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!172 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !140, line: 39, baseType: !7, size: 32, elements: !173)
!173 = !{!174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365}
!174 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!175 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!176 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!177 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!178 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!179 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!180 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!181 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!182 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!183 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!184 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!185 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!186 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!187 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!188 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!189 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!190 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!191 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!192 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!193 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!194 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!195 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!196 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!197 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!198 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!199 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!200 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!201 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!202 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!203 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!204 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!205 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!206 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!207 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!208 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!209 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!210 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!211 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!212 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!213 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!214 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!215 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!216 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!217 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!218 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!219 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!220 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!221 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!222 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!223 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!224 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!225 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!226 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!227 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!228 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!229 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!230 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!231 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!232 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!233 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!234 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!235 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!236 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!237 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!238 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!239 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!240 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!241 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!242 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!243 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!244 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!245 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!246 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!247 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!248 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!249 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!250 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!251 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!252 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!253 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!254 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!255 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!256 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!257 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!258 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!259 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!260 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!261 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!262 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!263 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!264 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!265 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!266 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!267 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!268 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!269 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!270 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!271 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!272 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!273 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!274 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!275 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!276 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!277 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!278 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!279 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!280 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!281 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!282 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!283 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!284 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!285 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!286 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!287 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!288 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!289 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!290 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!291 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!292 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!293 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!294 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!295 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!296 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!297 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!298 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!299 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!300 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!301 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!302 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!303 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!304 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!305 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!306 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!307 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!308 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!309 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!310 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!311 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!312 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!313 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!314 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!315 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!316 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!317 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!318 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!319 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!320 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!321 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!322 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!323 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!324 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!325 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!326 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!327 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!328 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!329 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!330 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!331 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!332 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!333 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!334 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!335 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!336 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!337 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!338 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!339 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!340 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!341 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!342 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!343 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!344 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!345 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!346 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!347 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!348 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!349 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!350 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!351 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!352 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!353 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!354 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!355 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!356 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!357 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!358 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!359 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!360 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!361 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!362 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!363 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!364 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!365 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!366 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "symbol_visibility", file: !140, line: 2465, baseType: !7, size: 32, elements: !367)
!367 = !{!368, !369, !370, !371}
!368 = !DIEnumerator(name: "VISIBILITY_DEFAULT", value: 0, isUnsigned: true)
!369 = !DIEnumerator(name: "VISIBILITY_PROTECTED", value: 1, isUnsigned: true)
!370 = !DIEnumerator(name: "VISIBILITY_HIDDEN", value: 2, isUnsigned: true)
!371 = !DIEnumerator(name: "VISIBILITY_INTERNAL", value: 3, isUnsigned: true)
!372 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpp_ttype", file: !373, line: 143, baseType: !7, size: 32, elements: !374)
!373 = !DIFile(filename: "./cpplib.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!374 = !{!375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452}
!375 = !DIEnumerator(name: "CPP_EQ", value: 0, isUnsigned: true)
!376 = !DIEnumerator(name: "CPP_NOT", value: 1, isUnsigned: true)
!377 = !DIEnumerator(name: "CPP_GREATER", value: 2, isUnsigned: true)
!378 = !DIEnumerator(name: "CPP_LESS", value: 3, isUnsigned: true)
!379 = !DIEnumerator(name: "CPP_PLUS", value: 4, isUnsigned: true)
!380 = !DIEnumerator(name: "CPP_MINUS", value: 5, isUnsigned: true)
!381 = !DIEnumerator(name: "CPP_MULT", value: 6, isUnsigned: true)
!382 = !DIEnumerator(name: "CPP_DIV", value: 7, isUnsigned: true)
!383 = !DIEnumerator(name: "CPP_MOD", value: 8, isUnsigned: true)
!384 = !DIEnumerator(name: "CPP_AND", value: 9, isUnsigned: true)
!385 = !DIEnumerator(name: "CPP_OR", value: 10, isUnsigned: true)
!386 = !DIEnumerator(name: "CPP_XOR", value: 11, isUnsigned: true)
!387 = !DIEnumerator(name: "CPP_RSHIFT", value: 12, isUnsigned: true)
!388 = !DIEnumerator(name: "CPP_LSHIFT", value: 13, isUnsigned: true)
!389 = !DIEnumerator(name: "CPP_COMPL", value: 14, isUnsigned: true)
!390 = !DIEnumerator(name: "CPP_AND_AND", value: 15, isUnsigned: true)
!391 = !DIEnumerator(name: "CPP_OR_OR", value: 16, isUnsigned: true)
!392 = !DIEnumerator(name: "CPP_QUERY", value: 17, isUnsigned: true)
!393 = !DIEnumerator(name: "CPP_COLON", value: 18, isUnsigned: true)
!394 = !DIEnumerator(name: "CPP_COMMA", value: 19, isUnsigned: true)
!395 = !DIEnumerator(name: "CPP_OPEN_PAREN", value: 20, isUnsigned: true)
!396 = !DIEnumerator(name: "CPP_CLOSE_PAREN", value: 21, isUnsigned: true)
!397 = !DIEnumerator(name: "CPP_EOF", value: 22, isUnsigned: true)
!398 = !DIEnumerator(name: "CPP_EQ_EQ", value: 23, isUnsigned: true)
!399 = !DIEnumerator(name: "CPP_NOT_EQ", value: 24, isUnsigned: true)
!400 = !DIEnumerator(name: "CPP_GREATER_EQ", value: 25, isUnsigned: true)
!401 = !DIEnumerator(name: "CPP_LESS_EQ", value: 26, isUnsigned: true)
!402 = !DIEnumerator(name: "CPP_PLUS_EQ", value: 27, isUnsigned: true)
!403 = !DIEnumerator(name: "CPP_MINUS_EQ", value: 28, isUnsigned: true)
!404 = !DIEnumerator(name: "CPP_MULT_EQ", value: 29, isUnsigned: true)
!405 = !DIEnumerator(name: "CPP_DIV_EQ", value: 30, isUnsigned: true)
!406 = !DIEnumerator(name: "CPP_MOD_EQ", value: 31, isUnsigned: true)
!407 = !DIEnumerator(name: "CPP_AND_EQ", value: 32, isUnsigned: true)
!408 = !DIEnumerator(name: "CPP_OR_EQ", value: 33, isUnsigned: true)
!409 = !DIEnumerator(name: "CPP_XOR_EQ", value: 34, isUnsigned: true)
!410 = !DIEnumerator(name: "CPP_RSHIFT_EQ", value: 35, isUnsigned: true)
!411 = !DIEnumerator(name: "CPP_LSHIFT_EQ", value: 36, isUnsigned: true)
!412 = !DIEnumerator(name: "CPP_HASH", value: 37, isUnsigned: true)
!413 = !DIEnumerator(name: "CPP_PASTE", value: 38, isUnsigned: true)
!414 = !DIEnumerator(name: "CPP_OPEN_SQUARE", value: 39, isUnsigned: true)
!415 = !DIEnumerator(name: "CPP_CLOSE_SQUARE", value: 40, isUnsigned: true)
!416 = !DIEnumerator(name: "CPP_OPEN_BRACE", value: 41, isUnsigned: true)
!417 = !DIEnumerator(name: "CPP_CLOSE_BRACE", value: 42, isUnsigned: true)
!418 = !DIEnumerator(name: "CPP_SEMICOLON", value: 43, isUnsigned: true)
!419 = !DIEnumerator(name: "CPP_ELLIPSIS", value: 44, isUnsigned: true)
!420 = !DIEnumerator(name: "CPP_PLUS_PLUS", value: 45, isUnsigned: true)
!421 = !DIEnumerator(name: "CPP_MINUS_MINUS", value: 46, isUnsigned: true)
!422 = !DIEnumerator(name: "CPP_DEREF", value: 47, isUnsigned: true)
!423 = !DIEnumerator(name: "CPP_DOT", value: 48, isUnsigned: true)
!424 = !DIEnumerator(name: "CPP_SCOPE", value: 49, isUnsigned: true)
!425 = !DIEnumerator(name: "CPP_DEREF_STAR", value: 50, isUnsigned: true)
!426 = !DIEnumerator(name: "CPP_DOT_STAR", value: 51, isUnsigned: true)
!427 = !DIEnumerator(name: "CPP_ATSIGN", value: 52, isUnsigned: true)
!428 = !DIEnumerator(name: "CPP_NAME", value: 53, isUnsigned: true)
!429 = !DIEnumerator(name: "CPP_AT_NAME", value: 54, isUnsigned: true)
!430 = !DIEnumerator(name: "CPP_NUMBER", value: 55, isUnsigned: true)
!431 = !DIEnumerator(name: "CPP_CHAR", value: 56, isUnsigned: true)
!432 = !DIEnumerator(name: "CPP_WCHAR", value: 57, isUnsigned: true)
!433 = !DIEnumerator(name: "CPP_CHAR16", value: 58, isUnsigned: true)
!434 = !DIEnumerator(name: "CPP_CHAR32", value: 59, isUnsigned: true)
!435 = !DIEnumerator(name: "CPP_OTHER", value: 60, isUnsigned: true)
!436 = !DIEnumerator(name: "CPP_STRING", value: 61, isUnsigned: true)
!437 = !DIEnumerator(name: "CPP_WSTRING", value: 62, isUnsigned: true)
!438 = !DIEnumerator(name: "CPP_STRING16", value: 63, isUnsigned: true)
!439 = !DIEnumerator(name: "CPP_STRING32", value: 64, isUnsigned: true)
!440 = !DIEnumerator(name: "CPP_UTF8STRING", value: 65, isUnsigned: true)
!441 = !DIEnumerator(name: "CPP_OBJC_STRING", value: 66, isUnsigned: true)
!442 = !DIEnumerator(name: "CPP_HEADER_NAME", value: 67, isUnsigned: true)
!443 = !DIEnumerator(name: "CPP_COMMENT", value: 68, isUnsigned: true)
!444 = !DIEnumerator(name: "CPP_MACRO_ARG", value: 69, isUnsigned: true)
!445 = !DIEnumerator(name: "CPP_PRAGMA", value: 70, isUnsigned: true)
!446 = !DIEnumerator(name: "CPP_PRAGMA_EOL", value: 71, isUnsigned: true)
!447 = !DIEnumerator(name: "CPP_PADDING", value: 72, isUnsigned: true)
!448 = !DIEnumerator(name: "N_TTYPES", value: 73, isUnsigned: true)
!449 = !DIEnumerator(name: "CPP_LAST_EQ", value: 13, isUnsigned: true)
!450 = !DIEnumerator(name: "CPP_FIRST_DIGRAPH", value: 37, isUnsigned: true)
!451 = !DIEnumerator(name: "CPP_LAST_PUNCTUATOR", value: 52, isUnsigned: true)
!452 = !DIEnumerator(name: "CPP_LAST_CPP_OP", value: 26, isUnsigned: true)
!453 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !454, file: !3, line: 149, baseType: !7, size: 32, elements: !1398)
!454 = distinct !DISubprogram(name: "handle_pragma_pack", scope: !3, file: !3, line: 144, type: !455, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !461)
!455 = !DISubroutineType(types: !456)
!456 = !{null, !457}
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_reader", file: !373, line: 31, baseType: !459)
!459 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_reader", file: !460, line: 91, flags: DIFlagFwdDecl)
!460 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!461 = !{!462, !463, !1389, !1390, !1391, !1392, !1393}
!462 = !DILocalVariable(name: "dummy", arg: 1, scope: !454, file: !3, line: 144, type: !457)
!463 = !DILocalVariable(name: "x", scope: !454, file: !3, line: 146, type: !464)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !460, line: 56, baseType: !465)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !140, line: 3371, size: 1792, elements: !467)
!467 = !{!468, !501, !507, !520, !539, !550, !555, !566, !572, !586, !598, !636, !791, !819, !827, !828, !833, !842, !848, !853, !857, !861, !1014, !1061, !1067, !1074, !1081, !1107, !1132, !1149, !1161, !1183, !1199, !1371}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !466, file: !140, line: 3372, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !140, line: 360, size: 64, elements: !470)
!470 = !{!471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !469, file: !140, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !469, file: !140, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !469, file: !140, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !469, file: !140, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !469, file: !140, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !469, file: !140, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !469, file: !140, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !469, file: !140, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !469, file: !140, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !469, file: !140, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !469, file: !140, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !469, file: !140, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !469, file: !140, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !469, file: !140, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !469, file: !140, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !469, file: !140, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !469, file: !140, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !469, file: !140, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !469, file: !140, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !469, file: !140, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !469, file: !140, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !469, file: !140, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !469, file: !140, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !469, file: !140, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !469, file: !140, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !469, file: !140, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !469, file: !140, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !469, file: !140, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !469, file: !140, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !469, file: !140, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !466, file: !140, line: 3373, baseType: !502, size: 192)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !140, line: 402, size: 192, elements: !503)
!503 = !{!504, !505, !506}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !502, file: !140, line: 403, baseType: !469, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !502, file: !140, line: 404, baseType: !464, size: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !502, file: !140, line: 405, baseType: !464, size: 64, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !466, file: !140, line: 3374, baseType: !508, size: 320)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !140, line: 1384, size: 320, elements: !509)
!509 = !{!510, !511}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !508, file: !140, line: 1385, baseType: !502, size: 192)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !508, file: !140, line: 1386, baseType: !512, size: 128, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !513, line: 58, baseType: !514)
!513 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !513, line: 54, size: 128, elements: !515)
!515 = !{!516, !518}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !514, file: !513, line: 56, baseType: !517, size: 64)
!517 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !514, file: !513, line: 57, baseType: !519, size: 64, offset: 64)
!519 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !466, file: !140, line: 3375, baseType: !521, size: 256)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !140, line: 1397, size: 256, elements: !522)
!522 = !{!523, !524}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !521, file: !140, line: 1398, baseType: !502, size: 192)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !521, file: !140, line: 1399, baseType: !525, size: 64, offset: 192)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !527, line: 52, size: 256, elements: !528)
!527 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!528 = !{!529, !530, !531, !532, !533, !534, !535}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !526, file: !527, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !526, file: !527, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !526, file: !527, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !526, file: !527, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !526, file: !527, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !526, file: !527, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !526, file: !527, line: 62, baseType: !536, size: 192, offset: 64)
!536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 192, elements: !537)
!537 = !{!538}
!538 = !DISubrange(count: 3)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !466, file: !140, line: 3376, baseType: !540, size: 256)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !140, line: 1408, size: 256, elements: !541)
!541 = !{!542, !543}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !540, file: !140, line: 1409, baseType: !502, size: 192)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !540, file: !140, line: 1410, baseType: !544, size: 64, offset: 192)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !546, line: 27, size: 192, elements: !547)
!546 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!547 = !{!548, !549}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !545, file: !546, line: 29, baseType: !512, size: 128)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !545, file: !546, line: 30, baseType: !5, size: 32, offset: 128)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !466, file: !140, line: 3377, baseType: !551, size: 256)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !140, line: 1437, size: 256, elements: !552)
!552 = !{!553, !554}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !551, file: !140, line: 1438, baseType: !502, size: 192)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !551, file: !140, line: 1439, baseType: !464, size: 64, offset: 192)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !466, file: !140, line: 3378, baseType: !556, size: 256)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !140, line: 1418, size: 256, elements: !557)
!557 = !{!558, !559, !561}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !556, file: !140, line: 1419, baseType: !502, size: 192)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !556, file: !140, line: 1420, baseType: !560, size: 32, offset: 192)
!560 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !556, file: !140, line: 1421, baseType: !562, size: 8, offset: 224)
!562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 8, elements: !564)
!563 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!564 = !{!565}
!565 = !DISubrange(count: 1)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !466, file: !140, line: 3379, baseType: !567, size: 320)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !140, line: 1428, size: 320, elements: !568)
!568 = !{!569, !570, !571}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !567, file: !140, line: 1429, baseType: !502, size: 192)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !567, file: !140, line: 1430, baseType: !464, size: 64, offset: 192)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !567, file: !140, line: 1431, baseType: !464, size: 64, offset: 256)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !466, file: !140, line: 3380, baseType: !573, size: 320)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !140, line: 1460, size: 320, elements: !574)
!574 = !{!575, !576}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !573, file: !140, line: 1461, baseType: !502, size: 192)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !573, file: !140, line: 1462, baseType: !577, size: 128, offset: 192)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !578, line: 31, size: 128, elements: !579)
!578 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!579 = !{!580, !584, !585}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !577, file: !578, line: 32, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !583)
!583 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !577, file: !578, line: 33, baseType: !7, size: 32, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !577, file: !578, line: 34, baseType: !7, size: 32, offset: 96)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !466, file: !140, line: 3381, baseType: !587, size: 384)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !140, line: 2507, size: 384, elements: !588)
!588 = !{!589, !590, !595, !596, !597}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !587, file: !140, line: 2508, baseType: !502, size: 192)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !587, file: !140, line: 2509, baseType: !591, size: 32, offset: 192)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !592, line: 58, baseType: !593)
!592 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !594, line: 44, baseType: !7)
!594 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!595 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !587, file: !140, line: 2510, baseType: !7, size: 32, offset: 224)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !587, file: !140, line: 2511, baseType: !464, size: 64, offset: 256)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !587, file: !140, line: 2512, baseType: !464, size: 64, offset: 320)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !466, file: !140, line: 3382, baseType: !599, size: 896)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !140, line: 2652, size: 896, elements: !600)
!600 = !{!601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !599, file: !140, line: 2653, baseType: !587, size: 384)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !599, file: !140, line: 2654, baseType: !464, size: 64, offset: 384)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !599, file: !140, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !599, file: !140, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !599, file: !140, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !599, file: !140, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !599, file: !140, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !599, file: !140, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !599, file: !140, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !599, file: !140, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !599, file: !140, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !599, file: !140, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !599, file: !140, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !599, file: !140, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !599, file: !140, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !599, file: !140, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !599, file: !140, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !599, file: !140, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !599, file: !140, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !599, file: !140, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !599, file: !140, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !599, file: !140, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !599, file: !140, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !599, file: !140, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !599, file: !140, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !599, file: !140, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !599, file: !140, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !599, file: !140, line: 2703, baseType: !7, size: 32, offset: 512)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !599, file: !140, line: 2705, baseType: !464, size: 64, offset: 576)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !599, file: !140, line: 2706, baseType: !464, size: 64, offset: 640)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !599, file: !140, line: 2707, baseType: !464, size: 64, offset: 704)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !599, file: !140, line: 2708, baseType: !464, size: 64, offset: 768)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !599, file: !140, line: 2711, baseType: !634, size: 64, offset: 832)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !140, line: 2711, flags: DIFlagFwdDecl)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !466, file: !140, line: 3383, baseType: !637, size: 960)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !140, line: 2756, size: 960, elements: !638)
!638 = !{!639, !640}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !637, file: !140, line: 2757, baseType: !599, size: 896)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !637, file: !140, line: 2758, baseType: !641, size: 64, offset: 896)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !460, line: 50, baseType: !642)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !644, line: 240, size: 384, elements: !645)
!644 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!645 = !{!646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !643, file: !644, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !643, file: !644, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !643, file: !644, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !643, file: !644, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !643, file: !644, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !643, file: !644, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !643, file: !644, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !643, file: !644, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !643, file: !644, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !643, file: !644, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !643, file: !644, line: 321, baseType: !657, size: 320, offset: 64)
!657 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !644, line: 315, size: 320, elements: !658)
!658 = !{!659, !724, !726, !789, !790}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !657, file: !644, line: 316, baseType: !660, size: 64)
!660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !661, size: 64, elements: !564)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !644, line: 183, baseType: !662)
!662 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !644, line: 166, size: 64, elements: !663)
!663 = !{!664, !665, !666, !669, !670, !678, !679, !691, !694, !697, !698, !701, !714, !721}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !662, file: !644, line: 168, baseType: !560, size: 32)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !662, file: !644, line: 169, baseType: !7, size: 32)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !662, file: !644, line: 170, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !563)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !662, file: !644, line: 171, baseType: !641, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !662, file: !644, line: 172, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !460, line: 53, baseType: !672)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !644, line: 359, size: 128, elements: !674)
!674 = !{!675, !676}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !673, file: !644, line: 360, baseType: !560, size: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !673, file: !644, line: 361, baseType: !677, size: 64, offset: 64)
!677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !641, size: 64, elements: !564)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !662, file: !644, line: 173, baseType: !5, size: 32)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !662, file: !644, line: 174, baseType: !680, size: 32)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !644, line: 133, baseType: !681)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !644, line: 115, size: 32, elements: !682)
!682 = !{!683, !684, !685, !686, !687, !688, !689, !690}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !681, file: !644, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !681, file: !644, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !681, file: !644, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !681, file: !644, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !681, file: !644, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !681, file: !644, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !681, file: !644, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !681, file: !644, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !662, file: !644, line: 175, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !644, line: 175, flags: DIFlagFwdDecl)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !662, file: !644, line: 176, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !460, line: 46, flags: DIFlagFwdDecl)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !662, file: !644, line: 177, baseType: !464, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !662, file: !644, line: 178, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !460, line: 110, flags: DIFlagFwdDecl)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !662, file: !644, line: 179, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !644, line: 150, baseType: !704)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !644, line: 142, size: 320, elements: !705)
!705 = !{!706, !707, !708, !709, !712, !713}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !704, file: !644, line: 144, baseType: !464, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !704, file: !644, line: 145, baseType: !641, size: 64, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !704, file: !644, line: 146, baseType: !641, size: 64, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !704, file: !644, line: 147, baseType: !710, size: 32, offset: 192)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !711, line: 31, baseType: !560)
!711 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!712 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !704, file: !644, line: 148, baseType: !7, size: 32, offset: 224)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !704, file: !644, line: 149, baseType: !583, size: 8, offset: 256)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !662, file: !644, line: 180, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !644, line: 162, baseType: !717)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !644, line: 159, size: 128, elements: !718)
!718 = !{!719, !720}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !717, file: !644, line: 160, baseType: !464, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !717, file: !644, line: 161, baseType: !519, size: 64, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !662, file: !644, line: 181, baseType: !722, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !644, line: 181, flags: DIFlagFwdDecl)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !657, file: !644, line: 317, baseType: !725, size: 64)
!725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !519, size: 64, elements: !564)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !657, file: !644, line: 318, baseType: !727, size: 320)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !644, line: 188, size: 320, elements: !728)
!728 = !{!729, !731, !788}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !727, file: !644, line: 190, baseType: !730, size: 192)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !661, size: 192, elements: !537)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !727, file: !644, line: 193, baseType: !732, size: 64, offset: 192)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !644, line: 206, size: 320, elements: !734)
!734 = !{!735, !773, !774, !775, !787}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !733, file: !644, line: 208, baseType: !736, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !460, line: 62, baseType: !738)
!738 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !739, line: 538, size: 256, elements: !740)
!739 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!740 = !{!741, !745, !751, !764}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !738, file: !739, line: 539, baseType: !742, size: 32)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !739, line: 482, size: 32, elements: !743)
!743 = !{!744}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !742, file: !739, line: 484, baseType: !7, size: 32)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !738, file: !739, line: 540, baseType: !746, size: 192)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !739, line: 488, size: 192, elements: !747)
!747 = !{!748, !749, !750}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !746, file: !739, line: 489, baseType: !742, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !746, file: !739, line: 492, baseType: !667, size: 64, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !746, file: !739, line: 496, baseType: !464, size: 64, offset: 128)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !738, file: !739, line: 541, baseType: !752, size: 256)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !739, line: 504, size: 256, elements: !753)
!753 = !{!754, !755, !762, !763}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !752, file: !739, line: 505, baseType: !742, size: 32)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !752, file: !739, line: 509, baseType: !756, size: 64, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !739, line: 501, baseType: !757)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{null, !760}
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !752, file: !739, line: 510, baseType: !760, size: 64, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !752, file: !739, line: 513, baseType: !736, size: 64, offset: 192)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !738, file: !739, line: 542, baseType: !765, size: 128)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !739, line: 530, size: 128, elements: !766)
!766 = !{!767, !768}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !765, file: !739, line: 531, baseType: !742, size: 32)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !765, file: !739, line: 534, baseType: !769, size: 64, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !739, line: 525, baseType: !770)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!583, !464, !667, !517, !517}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !733, file: !644, line: 211, baseType: !7, size: 32, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !733, file: !644, line: 214, baseType: !519, size: 64, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !733, file: !644, line: 224, baseType: !776, size: 64, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !644, line: 202, baseType: !778)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !644, line: 202, size: 128, elements: !779)
!779 = !{!780}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !778, file: !644, line: 202, baseType: !781, size: 128)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !644, line: 200, baseType: !782)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !644, line: 200, size: 128, elements: !783)
!783 = !{!784, !785, !786}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !782, file: !644, line: 200, baseType: !7, size: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !782, file: !644, line: 200, baseType: !7, size: 32, offset: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !782, file: !644, line: 200, baseType: !677, size: 64, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !733, file: !644, line: 234, baseType: !776, size: 64, offset: 256)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !727, file: !644, line: 197, baseType: !519, size: 64, offset: 256)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !657, file: !644, line: 319, baseType: !526, size: 256)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !657, file: !644, line: 320, baseType: !545, size: 192)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !466, file: !140, line: 3384, baseType: !792, size: 1472)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !140, line: 3114, size: 1472, elements: !793)
!793 = !{!794, !815, !816, !817, !818}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !792, file: !140, line: 3115, baseType: !795, size: 1216)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !140, line: 2984, size: 1216, elements: !796)
!796 = !{!797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !795, file: !140, line: 2985, baseType: !637, size: 960)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !795, file: !140, line: 2986, baseType: !464, size: 64, offset: 960)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !795, file: !140, line: 2987, baseType: !464, size: 64, offset: 1024)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !795, file: !140, line: 2988, baseType: !464, size: 64, offset: 1088)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !795, file: !140, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !795, file: !140, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !795, file: !140, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !795, file: !140, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !795, file: !140, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !795, file: !140, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !795, file: !140, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !795, file: !140, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !795, file: !140, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !795, file: !140, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !795, file: !140, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !795, file: !140, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !795, file: !140, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !795, file: !140, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !792, file: !140, line: 3117, baseType: !464, size: 64, offset: 1216)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !792, file: !140, line: 3119, baseType: !464, size: 64, offset: 1280)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !792, file: !140, line: 3121, baseType: !464, size: 64, offset: 1344)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !792, file: !140, line: 3123, baseType: !464, size: 64, offset: 1408)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !466, file: !140, line: 3385, baseType: !820, size: 1088)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !140, line: 2874, size: 1088, elements: !821)
!821 = !{!822, !823, !824}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !820, file: !140, line: 2875, baseType: !637, size: 960)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !820, file: !140, line: 2876, baseType: !641, size: 64, offset: 960)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !820, file: !140, line: 2877, baseType: !825, size: 64, offset: 1024)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !140, line: 2856, flags: DIFlagFwdDecl)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !466, file: !140, line: 3386, baseType: !795, size: 1216)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !466, file: !140, line: 3387, baseType: !829, size: 1280)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !140, line: 3093, size: 1280, elements: !830)
!830 = !{!831, !832}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !829, file: !140, line: 3094, baseType: !795, size: 1216)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !829, file: !140, line: 3095, baseType: !825, size: 64, offset: 1216)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !466, file: !140, line: 3388, baseType: !834, size: 1216)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !140, line: 2824, size: 1216, elements: !835)
!835 = !{!836, !837, !838, !839, !840, !841}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !834, file: !140, line: 2825, baseType: !599, size: 896)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !834, file: !140, line: 2827, baseType: !464, size: 64, offset: 896)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !834, file: !140, line: 2828, baseType: !464, size: 64, offset: 960)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !834, file: !140, line: 2829, baseType: !464, size: 64, offset: 1024)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !834, file: !140, line: 2830, baseType: !464, size: 64, offset: 1088)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !834, file: !140, line: 2831, baseType: !464, size: 64, offset: 1152)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !466, file: !140, line: 3389, baseType: !843, size: 1024)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !140, line: 2850, size: 1024, elements: !844)
!844 = !{!845, !846, !847}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !843, file: !140, line: 2851, baseType: !637, size: 960)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !843, file: !140, line: 2852, baseType: !560, size: 32, offset: 960)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !843, file: !140, line: 2853, baseType: !560, size: 32, offset: 992)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !466, file: !140, line: 3390, baseType: !849, size: 1024)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !140, line: 2857, size: 1024, elements: !850)
!850 = !{!851, !852}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !849, file: !140, line: 2858, baseType: !637, size: 960)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !849, file: !140, line: 2859, baseType: !825, size: 64, offset: 960)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !466, file: !140, line: 3391, baseType: !854, size: 960)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !140, line: 2862, size: 960, elements: !855)
!855 = !{!856}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !854, file: !140, line: 2863, baseType: !637, size: 960)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !466, file: !140, line: 3392, baseType: !858, size: 1472)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !140, line: 3304, size: 1472, elements: !859)
!859 = !{!860}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !858, file: !140, line: 3305, baseType: !792, size: 1472)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !466, file: !140, line: 3393, baseType: !862, size: 1792)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !140, line: 3248, size: 1792, elements: !863)
!863 = !{!864, !865, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !862, file: !140, line: 3249, baseType: !792, size: 1472)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !862, file: !140, line: 3251, baseType: !866, size: 64, offset: 1472)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !868, line: 463, size: 1152, elements: !869)
!868 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!869 = !{!870, !873, !876, !879, !882, !885, !936, !937, !938, !939, !940, !966, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !867, file: !868, line: 464, baseType: !871, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !868, line: 464, flags: DIFlagFwdDecl)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !867, file: !868, line: 467, baseType: !874, size: 64, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !868, line: 467, flags: DIFlagFwdDecl)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !867, file: !868, line: 470, baseType: !877, size: 64, offset: 128)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !460, line: 65, flags: DIFlagFwdDecl)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !867, file: !868, line: 473, baseType: !880, size: 64, offset: 192)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !868, line: 166, flags: DIFlagFwdDecl)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !867, file: !868, line: 476, baseType: !883, size: 64, offset: 256)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !868, line: 476, flags: DIFlagFwdDecl)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !867, file: !868, line: 479, baseType: !886, size: 64, offset: 320)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !887, line: 144, baseType: !888)
!887 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !887, line: 100, size: 896, elements: !890)
!890 = !{!891, !897, !902, !908, !910, !913, !914, !915, !916, !917, !922, !924, !925, !930, !935}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !889, file: !887, line: 102, baseType: !892, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !887, line: 52, baseType: !893)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DISubroutineType(types: !895)
!895 = !{!896, !760}
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !887, line: 47, baseType: !7)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !889, file: !887, line: 105, baseType: !898, size: 64, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !887, line: 59, baseType: !899)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{!560, !760, !760}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !889, file: !887, line: 108, baseType: !903, size: 64, offset: 128)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !887, line: 63, baseType: !904)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DISubroutineType(types: !906)
!906 = !{null, !907}
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !889, file: !887, line: 111, baseType: !909, size: 64, offset: 192)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !889, file: !887, line: 114, baseType: !911, size: 64, offset: 256)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !912, line: 46, baseType: !517)
!912 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!913 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !889, file: !887, line: 117, baseType: !911, size: 64, offset: 320)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !889, file: !887, line: 120, baseType: !911, size: 64, offset: 384)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !889, file: !887, line: 124, baseType: !7, size: 32, offset: 448)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !889, file: !887, line: 128, baseType: !7, size: 32, offset: 480)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !889, file: !887, line: 131, baseType: !918, size: 64, offset: 512)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !887, line: 75, baseType: !919)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DISubroutineType(types: !921)
!921 = !{!907, !911, !911}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !889, file: !887, line: 132, baseType: !923, size: 64, offset: 576)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !887, line: 78, baseType: !904)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !889, file: !887, line: 135, baseType: !907, size: 64, offset: 640)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !889, file: !887, line: 136, baseType: !926, size: 64, offset: 704)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !887, line: 82, baseType: !927)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{!907, !907, !911, !911}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !889, file: !887, line: 137, baseType: !931, size: 64, offset: 768)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !887, line: 83, baseType: !932)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{null, !907, !907}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !889, file: !887, line: 141, baseType: !7, size: 32, offset: 832)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !867, file: !868, line: 484, baseType: !464, size: 64, offset: 384)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !867, file: !868, line: 488, baseType: !464, size: 64, offset: 448)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !867, file: !868, line: 493, baseType: !464, size: 64, offset: 512)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !867, file: !868, line: 496, baseType: !464, size: 64, offset: 576)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !867, file: !868, line: 501, baseType: !941, size: 64, offset: 640)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !135, line: 2355, size: 576, elements: !943)
!943 = !{!944, !947, !948, !949, !950, !954, !955, !960, !961, !962, !963, !964, !965}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !942, file: !135, line: 2356, baseType: !945, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !135, line: 2356, flags: DIFlagFwdDecl)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !942, file: !135, line: 2357, baseType: !667, size: 64, offset: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !942, file: !135, line: 2358, baseType: !560, size: 32, offset: 128)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !942, file: !135, line: 2359, baseType: !560, size: 32, offset: 160)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !942, file: !135, line: 2360, baseType: !951, size: 128, offset: 192)
!951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !560, size: 128, elements: !952)
!952 = !{!953}
!953 = !DISubrange(count: 4)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !942, file: !135, line: 2364, baseType: !560, size: 32, offset: 320)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !942, file: !135, line: 2367, baseType: !956, size: 128, offset: 384)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !135, line: 2349, size: 128, elements: !957)
!957 = !{!958, !959}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !956, file: !135, line: 2351, baseType: !641, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !956, file: !135, line: 2352, baseType: !519, size: 64, offset: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !942, file: !135, line: 2371, baseType: !134, size: 32, offset: 512)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !942, file: !135, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !942, file: !135, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !942, file: !135, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !942, file: !135, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !942, file: !135, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !867, file: !868, line: 504, baseType: !967, size: 64, offset: 704)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !868, line: 504, flags: DIFlagFwdDecl)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !867, file: !868, line: 507, baseType: !886, size: 64, offset: 768)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !867, file: !868, line: 510, baseType: !560, size: 32, offset: 832)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !867, file: !868, line: 513, baseType: !560, size: 32, offset: 864)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !867, file: !868, line: 516, baseType: !591, size: 32, offset: 896)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !867, file: !868, line: 519, baseType: !591, size: 32, offset: 928)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !867, file: !868, line: 522, baseType: !7, size: 32, offset: 960)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !867, file: !868, line: 523, baseType: !7, size: 32, offset: 992)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !867, file: !868, line: 528, baseType: !667, size: 64, offset: 1024)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !867, file: !868, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !867, file: !868, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !867, file: !868, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !867, file: !868, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !867, file: !868, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !867, file: !868, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !867, file: !868, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !867, file: !868, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !867, file: !868, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !867, file: !868, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !867, file: !868, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !867, file: !868, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !867, file: !868, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !867, file: !868, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !867, file: !868, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !867, file: !868, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !862, file: !140, line: 3254, baseType: !464, size: 64, offset: 1536)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !862, file: !140, line: 3257, baseType: !464, size: 64, offset: 1600)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !862, file: !140, line: 3258, baseType: !464, size: 64, offset: 1664)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !862, file: !140, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !862, file: !140, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !862, file: !140, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !862, file: !140, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !862, file: !140, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !862, file: !140, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !862, file: !140, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !862, file: !140, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !862, file: !140, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !862, file: !140, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !862, file: !140, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !862, file: !140, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !862, file: !140, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !862, file: !140, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !862, file: !140, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !862, file: !140, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !862, file: !140, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !862, file: !140, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !466, file: !140, line: 3394, baseType: !1015, size: 1344)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !140, line: 2279, size: 1344, elements: !1016)
!1016 = !{!1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1015, file: !140, line: 2280, baseType: !502, size: 192)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1015, file: !140, line: 2281, baseType: !464, size: 64, offset: 192)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1015, file: !140, line: 2282, baseType: !464, size: 64, offset: 256)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1015, file: !140, line: 2283, baseType: !464, size: 64, offset: 320)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1015, file: !140, line: 2284, baseType: !464, size: 64, offset: 384)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1015, file: !140, line: 2285, baseType: !7, size: 32, offset: 448)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1015, file: !140, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1015, file: !140, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1015, file: !140, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1015, file: !140, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1015, file: !140, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1015, file: !140, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1015, file: !140, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1015, file: !140, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1015, file: !140, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1015, file: !140, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1015, file: !140, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1015, file: !140, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1015, file: !140, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1015, file: !140, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1015, file: !140, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1015, file: !140, line: 2305, baseType: !7, size: 32, offset: 512)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1015, file: !140, line: 2306, baseType: !710, size: 32, offset: 544)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1015, file: !140, line: 2307, baseType: !464, size: 64, offset: 576)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1015, file: !140, line: 2308, baseType: !464, size: 64, offset: 640)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1015, file: !140, line: 2314, baseType: !1043, size: 64, offset: 704)
!1043 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !140, line: 2309, size: 64, elements: !1044)
!1044 = !{!1045, !1046, !1047}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1043, file: !140, line: 2310, baseType: !560, size: 32)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1043, file: !140, line: 2311, baseType: !667, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1043, file: !140, line: 2312, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !140, line: 2277, flags: DIFlagFwdDecl)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1015, file: !140, line: 2315, baseType: !464, size: 64, offset: 768)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1015, file: !140, line: 2316, baseType: !464, size: 64, offset: 832)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1015, file: !140, line: 2317, baseType: !464, size: 64, offset: 896)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1015, file: !140, line: 2318, baseType: !464, size: 64, offset: 960)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1015, file: !140, line: 2319, baseType: !464, size: 64, offset: 1024)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1015, file: !140, line: 2320, baseType: !464, size: 64, offset: 1088)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1015, file: !140, line: 2321, baseType: !464, size: 64, offset: 1152)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1015, file: !140, line: 2322, baseType: !464, size: 64, offset: 1216)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1015, file: !140, line: 2324, baseType: !1059, size: 64, offset: 1280)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !140, line: 2324, flags: DIFlagFwdDecl)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !466, file: !140, line: 3395, baseType: !1062, size: 320)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !140, line: 1469, size: 320, elements: !1063)
!1063 = !{!1064, !1065, !1066}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1062, file: !140, line: 1470, baseType: !502, size: 192)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1062, file: !140, line: 1471, baseType: !464, size: 64, offset: 192)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1062, file: !140, line: 1472, baseType: !464, size: 64, offset: 256)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !466, file: !140, line: 3396, baseType: !1068, size: 320)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !140, line: 1482, size: 320, elements: !1069)
!1069 = !{!1070, !1071, !1072}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1068, file: !140, line: 1483, baseType: !502, size: 192)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1068, file: !140, line: 1484, baseType: !560, size: 32, offset: 192)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1068, file: !140, line: 1485, baseType: !1073, size: 64, offset: 256)
!1073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 64, elements: !564)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !466, file: !140, line: 3397, baseType: !1075, size: 384)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !140, line: 1829, size: 384, elements: !1076)
!1076 = !{!1077, !1078, !1079, !1080}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1075, file: !140, line: 1830, baseType: !502, size: 192)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1075, file: !140, line: 1831, baseType: !591, size: 32, offset: 192)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1075, file: !140, line: 1832, baseType: !464, size: 64, offset: 256)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1075, file: !140, line: 1835, baseType: !1073, size: 64, offset: 320)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !466, file: !140, line: 3398, baseType: !1082, size: 704)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !140, line: 1898, size: 704, elements: !1083)
!1083 = !{!1084, !1085, !1086, !1090, !1091, !1094}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1082, file: !140, line: 1899, baseType: !502, size: 192)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1082, file: !140, line: 1902, baseType: !464, size: 64, offset: 192)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1082, file: !140, line: 1905, baseType: !1087, size: 64, offset: 256)
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !460, line: 58, baseType: !1088)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !460, line: 57, flags: DIFlagFwdDecl)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1082, file: !140, line: 1908, baseType: !7, size: 32, offset: 320)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1082, file: !140, line: 1911, baseType: !1092, size: 64, offset: 384)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !140, line: 1876, flags: DIFlagFwdDecl)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1082, file: !140, line: 1914, baseType: !1095, size: 256, offset: 448)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !140, line: 1883, size: 256, elements: !1096)
!1096 = !{!1097, !1099, !1100, !1105}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1095, file: !140, line: 1884, baseType: !1098, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1095, file: !140, line: 1885, baseType: !1098, size: 64, offset: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1095, file: !140, line: 1891, baseType: !1101, size: 64, offset: 128)
!1101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1095, file: !140, line: 1891, size: 64, elements: !1102)
!1102 = !{!1103, !1104}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1101, file: !140, line: 1891, baseType: !1087, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1101, file: !140, line: 1891, baseType: !464, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1095, file: !140, line: 1892, baseType: !1106, size: 64, offset: 192)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !466, file: !140, line: 3399, baseType: !1108, size: 704)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !140, line: 2008, size: 704, elements: !1109)
!1109 = !{!1110, !1111, !1112, !1113, !1114, !1115, !1127, !1128, !1129, !1130, !1131}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1108, file: !140, line: 2009, baseType: !502, size: 192)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1108, file: !140, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1108, file: !140, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1108, file: !140, line: 2014, baseType: !591, size: 32, offset: 224)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1108, file: !140, line: 2016, baseType: !464, size: 64, offset: 256)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1108, file: !140, line: 2017, baseType: !1116, size: 64, offset: 320)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !140, line: 183, baseType: !1118)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !140, line: 183, size: 128, elements: !1119)
!1119 = !{!1120}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1118, file: !140, line: 183, baseType: !1121, size: 128)
!1121 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !140, line: 182, baseType: !1122)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !140, line: 182, size: 128, elements: !1123)
!1123 = !{!1124, !1125, !1126}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1122, file: !140, line: 182, baseType: !7, size: 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1122, file: !140, line: 182, baseType: !7, size: 32, offset: 32)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1122, file: !140, line: 182, baseType: !1073, size: 64, offset: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1108, file: !140, line: 2019, baseType: !464, size: 64, offset: 384)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1108, file: !140, line: 2020, baseType: !464, size: 64, offset: 448)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1108, file: !140, line: 2021, baseType: !464, size: 64, offset: 512)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1108, file: !140, line: 2022, baseType: !464, size: 64, offset: 576)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1108, file: !140, line: 2023, baseType: !464, size: 64, offset: 640)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !466, file: !140, line: 3400, baseType: !1133, size: 832)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !140, line: 2430, size: 832, elements: !1134)
!1134 = !{!1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1133, file: !140, line: 2431, baseType: !502, size: 192)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1133, file: !140, line: 2433, baseType: !464, size: 64, offset: 192)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1133, file: !140, line: 2434, baseType: !464, size: 64, offset: 256)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1133, file: !140, line: 2435, baseType: !464, size: 64, offset: 320)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1133, file: !140, line: 2436, baseType: !464, size: 64, offset: 384)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1133, file: !140, line: 2437, baseType: !1116, size: 64, offset: 448)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1133, file: !140, line: 2438, baseType: !464, size: 64, offset: 512)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1133, file: !140, line: 2440, baseType: !464, size: 64, offset: 576)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1133, file: !140, line: 2441, baseType: !464, size: 64, offset: 640)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1133, file: !140, line: 2443, baseType: !1145, size: 128, offset: 704)
!1145 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !140, line: 182, baseType: !1146)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !140, line: 182, size: 128, elements: !1147)
!1147 = !{!1148}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1146, file: !140, line: 182, baseType: !1121, size: 128)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !466, file: !140, line: 3401, baseType: !1150, size: 320)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !140, line: 3327, size: 320, elements: !1151)
!1151 = !{!1152, !1153, !1160}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1150, file: !140, line: 3329, baseType: !502, size: 192)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1150, file: !140, line: 3330, baseType: !1154, size: 64, offset: 192)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !140, line: 3320, size: 192, elements: !1156)
!1156 = !{!1157, !1158, !1159}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1155, file: !140, line: 3322, baseType: !1154, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1155, file: !140, line: 3323, baseType: !1154, size: 64, offset: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1155, file: !140, line: 3324, baseType: !464, size: 64, offset: 128)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1150, file: !140, line: 3331, baseType: !1154, size: 64, offset: 256)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !466, file: !140, line: 3402, baseType: !1162, size: 256)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !140, line: 1540, size: 256, elements: !1163)
!1163 = !{!1164, !1165}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1162, file: !140, line: 1541, baseType: !502, size: 192)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1162, file: !140, line: 1542, baseType: !1166, size: 64, offset: 192)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !140, line: 1538, baseType: !1168)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !140, line: 1538, size: 192, elements: !1169)
!1169 = !{!1170}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1168, file: !140, line: 1538, baseType: !1171, size: 192)
!1171 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !140, line: 1537, baseType: !1172)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !140, line: 1537, size: 192, elements: !1173)
!1173 = !{!1174, !1175, !1176}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1172, file: !140, line: 1537, baseType: !7, size: 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1172, file: !140, line: 1537, baseType: !7, size: 32, offset: 32)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1172, file: !140, line: 1537, baseType: !1177, size: 128, offset: 64)
!1177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1178, size: 128, elements: !564)
!1178 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !140, line: 1535, baseType: !1179)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !140, line: 1532, size: 128, elements: !1180)
!1180 = !{!1181, !1182}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1179, file: !140, line: 1533, baseType: !464, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1179, file: !140, line: 1534, baseType: !464, size: 64, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !466, file: !140, line: 3403, baseType: !1184, size: 512)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !140, line: 1938, size: 512, elements: !1185)
!1185 = !{!1186, !1187, !1188, !1189, !1195, !1197, !1198}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1184, file: !140, line: 1939, baseType: !502, size: 192)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1184, file: !140, line: 1940, baseType: !591, size: 32, offset: 192)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1184, file: !140, line: 1941, baseType: !139, size: 32, offset: 224)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1184, file: !140, line: 1946, baseType: !1190, size: 32, offset: 256)
!1190 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !140, line: 1942, size: 32, elements: !1191)
!1191 = !{!1192, !1193, !1194}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1190, file: !140, line: 1943, baseType: !158, size: 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1190, file: !140, line: 1944, baseType: !165, size: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1190, file: !140, line: 1945, baseType: !172, size: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1184, file: !140, line: 1950, baseType: !1196, size: 64, offset: 320)
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !460, line: 66, baseType: !877)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1184, file: !140, line: 1951, baseType: !1196, size: 64, offset: 384)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1184, file: !140, line: 1953, baseType: !1073, size: 64, offset: 448)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !466, file: !140, line: 3404, baseType: !1200, size: 1664)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !140, line: 3337, size: 1664, elements: !1201)
!1201 = !{!1202, !1203}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1200, file: !140, line: 3338, baseType: !502, size: 192)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1200, file: !140, line: 3341, baseType: !1204, size: 1472, offset: 192)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1205, line: 410, size: 1472, elements: !1206)
!1205 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1206 = !{!1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1204, file: !1205, line: 412, baseType: !560, size: 32)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1204, file: !1205, line: 413, baseType: !560, size: 32, offset: 32)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1204, file: !1205, line: 414, baseType: !560, size: 32, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1204, file: !1205, line: 415, baseType: !560, size: 32, offset: 96)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1204, file: !1205, line: 416, baseType: !560, size: 32, offset: 128)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1204, file: !1205, line: 417, baseType: !560, size: 32, offset: 160)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1204, file: !1205, line: 418, baseType: !583, size: 8, offset: 192)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1204, file: !1205, line: 419, baseType: !583, size: 8, offset: 200)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1204, file: !1205, line: 420, baseType: !1216, size: 8, offset: 208)
!1216 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1204, file: !1205, line: 421, baseType: !1216, size: 8, offset: 216)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1204, file: !1205, line: 422, baseType: !1216, size: 8, offset: 224)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1204, file: !1205, line: 423, baseType: !1216, size: 8, offset: 232)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1204, file: !1205, line: 424, baseType: !1216, size: 8, offset: 240)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1204, file: !1205, line: 425, baseType: !1216, size: 8, offset: 248)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1204, file: !1205, line: 426, baseType: !1216, size: 8, offset: 256)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1204, file: !1205, line: 427, baseType: !1216, size: 8, offset: 264)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1204, file: !1205, line: 428, baseType: !1216, size: 8, offset: 272)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1204, file: !1205, line: 429, baseType: !1216, size: 8, offset: 280)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1204, file: !1205, line: 430, baseType: !1216, size: 8, offset: 288)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1204, file: !1205, line: 431, baseType: !1216, size: 8, offset: 296)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1204, file: !1205, line: 432, baseType: !1216, size: 8, offset: 304)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1204, file: !1205, line: 433, baseType: !1216, size: 8, offset: 312)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1204, file: !1205, line: 434, baseType: !1216, size: 8, offset: 320)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1204, file: !1205, line: 435, baseType: !1216, size: 8, offset: 328)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1204, file: !1205, line: 436, baseType: !1216, size: 8, offset: 336)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1204, file: !1205, line: 437, baseType: !1216, size: 8, offset: 344)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1204, file: !1205, line: 438, baseType: !1216, size: 8, offset: 352)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1204, file: !1205, line: 439, baseType: !1216, size: 8, offset: 360)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1204, file: !1205, line: 440, baseType: !1216, size: 8, offset: 368)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1204, file: !1205, line: 441, baseType: !1216, size: 8, offset: 376)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1204, file: !1205, line: 442, baseType: !1216, size: 8, offset: 384)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1204, file: !1205, line: 443, baseType: !1216, size: 8, offset: 392)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1204, file: !1205, line: 444, baseType: !1216, size: 8, offset: 400)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1204, file: !1205, line: 445, baseType: !1216, size: 8, offset: 408)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1204, file: !1205, line: 446, baseType: !1216, size: 8, offset: 416)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1204, file: !1205, line: 447, baseType: !1216, size: 8, offset: 424)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1204, file: !1205, line: 448, baseType: !1216, size: 8, offset: 432)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1204, file: !1205, line: 449, baseType: !1216, size: 8, offset: 440)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1204, file: !1205, line: 450, baseType: !1216, size: 8, offset: 448)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1204, file: !1205, line: 451, baseType: !1216, size: 8, offset: 456)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1204, file: !1205, line: 452, baseType: !1216, size: 8, offset: 464)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1204, file: !1205, line: 453, baseType: !1216, size: 8, offset: 472)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1204, file: !1205, line: 454, baseType: !1216, size: 8, offset: 480)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1204, file: !1205, line: 455, baseType: !1216, size: 8, offset: 488)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1204, file: !1205, line: 456, baseType: !1216, size: 8, offset: 496)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1204, file: !1205, line: 457, baseType: !1216, size: 8, offset: 504)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1204, file: !1205, line: 458, baseType: !1216, size: 8, offset: 512)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1204, file: !1205, line: 459, baseType: !1216, size: 8, offset: 520)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1204, file: !1205, line: 460, baseType: !1216, size: 8, offset: 528)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1204, file: !1205, line: 461, baseType: !1216, size: 8, offset: 536)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1204, file: !1205, line: 462, baseType: !1216, size: 8, offset: 544)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1204, file: !1205, line: 463, baseType: !1216, size: 8, offset: 552)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1204, file: !1205, line: 464, baseType: !1216, size: 8, offset: 560)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1204, file: !1205, line: 465, baseType: !1216, size: 8, offset: 568)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1204, file: !1205, line: 466, baseType: !1216, size: 8, offset: 576)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1204, file: !1205, line: 467, baseType: !1216, size: 8, offset: 584)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1204, file: !1205, line: 468, baseType: !1216, size: 8, offset: 592)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1204, file: !1205, line: 469, baseType: !1216, size: 8, offset: 600)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1204, file: !1205, line: 470, baseType: !1216, size: 8, offset: 608)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1204, file: !1205, line: 471, baseType: !1216, size: 8, offset: 616)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1204, file: !1205, line: 472, baseType: !1216, size: 8, offset: 624)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1204, file: !1205, line: 473, baseType: !1216, size: 8, offset: 632)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1204, file: !1205, line: 474, baseType: !1216, size: 8, offset: 640)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1204, file: !1205, line: 475, baseType: !1216, size: 8, offset: 648)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1204, file: !1205, line: 476, baseType: !1216, size: 8, offset: 656)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1204, file: !1205, line: 477, baseType: !1216, size: 8, offset: 664)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1204, file: !1205, line: 478, baseType: !1216, size: 8, offset: 672)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1204, file: !1205, line: 479, baseType: !1216, size: 8, offset: 680)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1204, file: !1205, line: 480, baseType: !1216, size: 8, offset: 688)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1204, file: !1205, line: 481, baseType: !1216, size: 8, offset: 696)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1204, file: !1205, line: 482, baseType: !1216, size: 8, offset: 704)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1204, file: !1205, line: 483, baseType: !1216, size: 8, offset: 712)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1204, file: !1205, line: 484, baseType: !1216, size: 8, offset: 720)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1204, file: !1205, line: 485, baseType: !1216, size: 8, offset: 728)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1204, file: !1205, line: 486, baseType: !1216, size: 8, offset: 736)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1204, file: !1205, line: 487, baseType: !1216, size: 8, offset: 744)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1204, file: !1205, line: 488, baseType: !1216, size: 8, offset: 752)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1204, file: !1205, line: 489, baseType: !1216, size: 8, offset: 760)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1204, file: !1205, line: 490, baseType: !1216, size: 8, offset: 768)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1204, file: !1205, line: 491, baseType: !1216, size: 8, offset: 776)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1204, file: !1205, line: 492, baseType: !1216, size: 8, offset: 784)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1204, file: !1205, line: 493, baseType: !1216, size: 8, offset: 792)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1204, file: !1205, line: 494, baseType: !1216, size: 8, offset: 800)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1204, file: !1205, line: 495, baseType: !1216, size: 8, offset: 808)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1204, file: !1205, line: 496, baseType: !1216, size: 8, offset: 816)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1204, file: !1205, line: 497, baseType: !1216, size: 8, offset: 824)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1204, file: !1205, line: 498, baseType: !1216, size: 8, offset: 832)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1204, file: !1205, line: 499, baseType: !1216, size: 8, offset: 840)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1204, file: !1205, line: 500, baseType: !1216, size: 8, offset: 848)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1204, file: !1205, line: 501, baseType: !1216, size: 8, offset: 856)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1204, file: !1205, line: 502, baseType: !1216, size: 8, offset: 864)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1204, file: !1205, line: 503, baseType: !1216, size: 8, offset: 872)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1204, file: !1205, line: 504, baseType: !1216, size: 8, offset: 880)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1204, file: !1205, line: 505, baseType: !1216, size: 8, offset: 888)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1204, file: !1205, line: 506, baseType: !1216, size: 8, offset: 896)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1204, file: !1205, line: 507, baseType: !1216, size: 8, offset: 904)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1204, file: !1205, line: 508, baseType: !1216, size: 8, offset: 912)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1204, file: !1205, line: 509, baseType: !1216, size: 8, offset: 920)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1204, file: !1205, line: 510, baseType: !1216, size: 8, offset: 928)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1204, file: !1205, line: 511, baseType: !1216, size: 8, offset: 936)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1204, file: !1205, line: 512, baseType: !1216, size: 8, offset: 944)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1204, file: !1205, line: 513, baseType: !1216, size: 8, offset: 952)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1204, file: !1205, line: 514, baseType: !1216, size: 8, offset: 960)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1204, file: !1205, line: 515, baseType: !1216, size: 8, offset: 968)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1204, file: !1205, line: 516, baseType: !1216, size: 8, offset: 976)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1204, file: !1205, line: 517, baseType: !1216, size: 8, offset: 984)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1204, file: !1205, line: 518, baseType: !1216, size: 8, offset: 992)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1204, file: !1205, line: 519, baseType: !1216, size: 8, offset: 1000)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1204, file: !1205, line: 520, baseType: !1216, size: 8, offset: 1008)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1204, file: !1205, line: 521, baseType: !1216, size: 8, offset: 1016)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1204, file: !1205, line: 522, baseType: !1216, size: 8, offset: 1024)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1204, file: !1205, line: 523, baseType: !1216, size: 8, offset: 1032)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1204, file: !1205, line: 524, baseType: !1216, size: 8, offset: 1040)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1204, file: !1205, line: 525, baseType: !1216, size: 8, offset: 1048)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1204, file: !1205, line: 526, baseType: !1216, size: 8, offset: 1056)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1204, file: !1205, line: 527, baseType: !1216, size: 8, offset: 1064)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1204, file: !1205, line: 528, baseType: !1216, size: 8, offset: 1072)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1204, file: !1205, line: 529, baseType: !1216, size: 8, offset: 1080)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1204, file: !1205, line: 530, baseType: !1216, size: 8, offset: 1088)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1204, file: !1205, line: 531, baseType: !1216, size: 8, offset: 1096)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1204, file: !1205, line: 532, baseType: !1216, size: 8, offset: 1104)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1204, file: !1205, line: 533, baseType: !1216, size: 8, offset: 1112)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1204, file: !1205, line: 534, baseType: !1216, size: 8, offset: 1120)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1204, file: !1205, line: 535, baseType: !1216, size: 8, offset: 1128)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1204, file: !1205, line: 536, baseType: !1216, size: 8, offset: 1136)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1204, file: !1205, line: 537, baseType: !1216, size: 8, offset: 1144)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1204, file: !1205, line: 538, baseType: !1216, size: 8, offset: 1152)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1204, file: !1205, line: 539, baseType: !1216, size: 8, offset: 1160)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1204, file: !1205, line: 540, baseType: !1216, size: 8, offset: 1168)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1204, file: !1205, line: 541, baseType: !1216, size: 8, offset: 1176)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1204, file: !1205, line: 542, baseType: !1216, size: 8, offset: 1184)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1204, file: !1205, line: 543, baseType: !1216, size: 8, offset: 1192)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1204, file: !1205, line: 544, baseType: !1216, size: 8, offset: 1200)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1204, file: !1205, line: 545, baseType: !1216, size: 8, offset: 1208)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1204, file: !1205, line: 546, baseType: !1216, size: 8, offset: 1216)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1204, file: !1205, line: 547, baseType: !1216, size: 8, offset: 1224)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1204, file: !1205, line: 548, baseType: !1216, size: 8, offset: 1232)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1204, file: !1205, line: 549, baseType: !1216, size: 8, offset: 1240)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1204, file: !1205, line: 550, baseType: !1216, size: 8, offset: 1248)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1204, file: !1205, line: 551, baseType: !1216, size: 8, offset: 1256)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1204, file: !1205, line: 552, baseType: !1216, size: 8, offset: 1264)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1204, file: !1205, line: 553, baseType: !1216, size: 8, offset: 1272)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1204, file: !1205, line: 554, baseType: !1216, size: 8, offset: 1280)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1204, file: !1205, line: 555, baseType: !1216, size: 8, offset: 1288)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1204, file: !1205, line: 556, baseType: !1216, size: 8, offset: 1296)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1204, file: !1205, line: 557, baseType: !1216, size: 8, offset: 1304)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1204, file: !1205, line: 558, baseType: !1216, size: 8, offset: 1312)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1204, file: !1205, line: 559, baseType: !1216, size: 8, offset: 1320)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1204, file: !1205, line: 560, baseType: !1216, size: 8, offset: 1328)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1204, file: !1205, line: 561, baseType: !1216, size: 8, offset: 1336)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1204, file: !1205, line: 562, baseType: !1216, size: 8, offset: 1344)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1204, file: !1205, line: 563, baseType: !1216, size: 8, offset: 1352)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1204, file: !1205, line: 564, baseType: !1216, size: 8, offset: 1360)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1204, file: !1205, line: 565, baseType: !1216, size: 8, offset: 1368)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1204, file: !1205, line: 566, baseType: !1216, size: 8, offset: 1376)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1204, file: !1205, line: 567, baseType: !1216, size: 8, offset: 1384)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1204, file: !1205, line: 568, baseType: !1216, size: 8, offset: 1392)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1204, file: !1205, line: 569, baseType: !1216, size: 8, offset: 1400)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1204, file: !1205, line: 570, baseType: !1216, size: 8, offset: 1408)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1204, file: !1205, line: 571, baseType: !1216, size: 8, offset: 1416)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1204, file: !1205, line: 572, baseType: !1216, size: 8, offset: 1424)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1204, file: !1205, line: 573, baseType: !1216, size: 8, offset: 1432)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1204, file: !1205, line: 574, baseType: !1216, size: 8, offset: 1440)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !466, file: !140, line: 3405, baseType: !1372, size: 384)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !140, line: 3352, size: 384, elements: !1373)
!1373 = !{!1374, !1375}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1372, file: !140, line: 3353, baseType: !502, size: 192)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1372, file: !140, line: 3356, baseType: !1376, size: 192, offset: 192)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1205, line: 578, size: 192, elements: !1377)
!1377 = !{!1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1376, file: !1205, line: 580, baseType: !560, size: 32)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1376, file: !1205, line: 581, baseType: !560, size: 32, offset: 32)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1376, file: !1205, line: 582, baseType: !560, size: 32, offset: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1376, file: !1205, line: 583, baseType: !560, size: 32, offset: 96)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1376, file: !1205, line: 584, baseType: !583, size: 8, offset: 128)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1376, file: !1205, line: 585, baseType: !583, size: 8, offset: 136)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1376, file: !1205, line: 586, baseType: !583, size: 8, offset: 144)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1376, file: !1205, line: 587, baseType: !583, size: 8, offset: 152)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1376, file: !1205, line: 588, baseType: !583, size: 8, offset: 160)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1376, file: !1205, line: 589, baseType: !583, size: 8, offset: 168)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1376, file: !1205, line: 590, baseType: !583, size: 8, offset: 176)
!1389 = !DILocalVariable(name: "id", scope: !454, file: !3, line: 146, type: !464)
!1390 = !DILocalVariable(name: "align", scope: !454, file: !3, line: 147, type: !560)
!1391 = !DILocalVariable(name: "token", scope: !454, file: !3, line: 148, type: !372)
!1392 = !DILocalVariable(name: "action", scope: !454, file: !3, line: 149, type: !453)
!1393 = !DILocalVariable(name: "op", scope: !1394, file: !3, line: 177, type: !667)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 170, column: 5)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 169, column: 12)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 160, column: 12)
!1397 = distinct !DILexicalBlock(scope: !454, file: !3, line: 155, column: 7)
!1398 = !{!1399, !1400, !1401}
!1399 = !DIEnumerator(name: "set", value: 0, isUnsigned: true)
!1400 = !DIEnumerator(name: "push", value: 1, isUnsigned: true)
!1401 = !DIEnumerator(name: "pop", value: 2, isUnsigned: true)
!1402 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !1403, file: !3, line: 642, baseType: !7, size: 32, elements: !1412)
!1403 = distinct !DISubprogram(name: "handle_pragma_visibility", scope: !3, file: !3, line: 637, type: !455, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1404)
!1404 = !{!1405, !1406, !1407, !1408, !1409}
!1405 = !DILocalVariable(name: "dummy", arg: 1, scope: !1403, file: !3, line: 637, type: !457)
!1406 = !DILocalVariable(name: "x", scope: !1403, file: !3, line: 640, type: !464)
!1407 = !DILocalVariable(name: "token", scope: !1403, file: !3, line: 641, type: !372)
!1408 = !DILocalVariable(name: "action", scope: !1403, file: !3, line: 642, type: !1402)
!1409 = !DILocalVariable(name: "op", scope: !1410, file: !3, line: 647, type: !667)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 646, column: 5)
!1411 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 645, column: 7)
!1412 = !{!1413, !1400, !1401}
!1413 = !DIEnumerator(name: "bad", value: 0, isUnsigned: true)
!1414 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1415, line: 29, baseType: !7, size: 32, elements: !1416)
!1415 = !DIFile(filename: "./diagnostic.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1416 = !{!1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429}
!1417 = !DIEnumerator(name: "DK_UNSPECIFIED", value: 0, isUnsigned: true)
!1418 = !DIEnumerator(name: "DK_IGNORED", value: 1, isUnsigned: true)
!1419 = !DIEnumerator(name: "DK_FATAL", value: 2, isUnsigned: true)
!1420 = !DIEnumerator(name: "DK_ICE", value: 3, isUnsigned: true)
!1421 = !DIEnumerator(name: "DK_ERROR", value: 4, isUnsigned: true)
!1422 = !DIEnumerator(name: "DK_SORRY", value: 5, isUnsigned: true)
!1423 = !DIEnumerator(name: "DK_WARNING", value: 6, isUnsigned: true)
!1424 = !DIEnumerator(name: "DK_ANACHRONISM", value: 7, isUnsigned: true)
!1425 = !DIEnumerator(name: "DK_NOTE", value: 8, isUnsigned: true)
!1426 = !DIEnumerator(name: "DK_DEBUG", value: 9, isUnsigned: true)
!1427 = !DIEnumerator(name: "DK_PEDWARN", value: 10, isUnsigned: true)
!1428 = !DIEnumerator(name: "DK_PERMERROR", value: 11, isUnsigned: true)
!1429 = !DIEnumerator(name: "DK_LAST_DIAGNOSTIC_KIND", value: 12, isUnsigned: true)
!1430 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pragma_switch_t", file: !3, line: 1045, baseType: !7, size: 32, elements: !1431)
!1431 = !{!1432, !1433, !1434, !1435}
!1432 = !DIEnumerator(name: "PRAGMA_ON", value: 0, isUnsigned: true)
!1433 = !DIEnumerator(name: "PRAGMA_OFF", value: 1, isUnsigned: true)
!1434 = !DIEnumerator(name: "PRAGMA_DEFAULT", value: 2, isUnsigned: true)
!1435 = !DIEnumerator(name: "PRAGMA_BAD", value: 3, isUnsigned: true)
!1436 = !{!1437, !583, !560, !1438, !907, !667, !172, !593, !464, !1439, !366, !1440, !1448, !1454, !7, !1467, !1484, !1502, !1504, !1505}
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_stack", file: !3, line: 871, size: 320, elements: !1442)
!1442 = !{!1443, !1444, !1445, !1446, !1447}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1441, file: !3, line: 872, baseType: !1440, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "target_binary", scope: !1441, file: !3, line: 873, baseType: !464, size: 64, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "target_strings", scope: !1441, file: !3, line: 874, baseType: !464, size: 64, offset: 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_binary", scope: !1441, file: !3, line: 875, baseType: !464, size: 64, offset: 192)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_strings", scope: !1441, file: !3, line: 876, baseType: !464, size: 64, offset: 256)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "align_stack", file: !3, line: 47, size: 192, elements: !1450)
!1450 = !{!1451, !1452, !1453}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1449, file: !3, line: 48, baseType: !560, size: 32)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1449, file: !3, line: 49, baseType: !464, size: 64, offset: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1449, file: !3, line: 50, baseType: !1448, size: 64, offset: 128)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_int_heap", file: !1456, line: 32, baseType: !1457)
!1456 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_int_heap", file: !1456, line: 32, size: 96, elements: !1458)
!1458 = !{!1459}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1457, file: !1456, line: 32, baseType: !1460, size: 96)
!1460 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_int_base", file: !1456, line: 31, baseType: !1461)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_int_base", file: !1456, line: 31, size: 96, elements: !1462)
!1462 = !{!1463, !1464, !1465}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1461, file: !1456, line: 31, baseType: !7, size: 32)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1461, file: !1456, line: 31, baseType: !7, size: 32, offset: 32)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1461, file: !1456, line: 31, baseType: !1466, size: 32, offset: 64)
!1466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !560, size: 32, elements: !564)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_pragma_ns_name_heap", file: !3, line: 1151, baseType: !1469)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_pragma_ns_name_heap", file: !3, line: 1151, size: 192, elements: !1470)
!1470 = !{!1471}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1469, file: !3, line: 1151, baseType: !1472, size: 192)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_pragma_ns_name_base", file: !3, line: 1150, baseType: !1473)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_pragma_ns_name_base", file: !3, line: 1150, size: 192, elements: !1474)
!1474 = !{!1475, !1476, !1477}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1473, file: !3, line: 1150, baseType: !7, size: 32)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1473, file: !3, line: 1150, baseType: !7, size: 32, offset: 32)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1473, file: !3, line: 1150, baseType: !1478, size: 128, offset: 64)
!1478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1479, size: 128, elements: !564)
!1479 = !DIDerivedType(tag: DW_TAG_typedef, name: "pragma_ns_name", file: !3, line: 1148, baseType: !1480)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 1144, size: 128, elements: !1481)
!1481 = !{!1482, !1483}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "space", scope: !1480, file: !3, line: 1146, baseType: !667, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1480, file: !3, line: 1147, baseType: !667, size: 64, offset: 64)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_pragma_handler_heap", file: !3, line: 1140, baseType: !1486)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_pragma_handler_heap", file: !3, line: 1140, size: 128, elements: !1487)
!1487 = !{!1488}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1486, file: !3, line: 1140, baseType: !1489, size: 128)
!1489 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_pragma_handler_base", file: !3, line: 1139, baseType: !1490)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_pragma_handler_base", file: !3, line: 1139, size: 128, elements: !1491)
!1491 = !{!1492, !1493, !1494}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1490, file: !3, line: 1139, baseType: !7, size: 32)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1490, file: !3, line: 1139, baseType: !7, size: 32, offset: 32)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1490, file: !3, line: 1139, baseType: !1495, size: 64, offset: 64)
!1495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1496, size: 64, elements: !564)
!1496 = !DIDerivedType(tag: DW_TAG_typedef, name: "pragma_handler", file: !1497, line: 104, baseType: !1498)
!1497 = !DIFile(filename: "./c-pragma.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{null, !1501}
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "align_stack", file: !3, line: 51, baseType: !1449)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_typedef, name: "opt_stack", file: !3, line: 877, baseType: !1441)
!1507 = !{!1508, !1524, !0, !1526, !1528, !1530, !1532, !1534, !1536, !1538, !1540, !1550}
!1508 = !DIGlobalVariableExpression(var: !1509, expr: !DIExpression())
!1509 = distinct !DIGlobalVariable(name: "gt_ggc_r_gt_c_pragma_h", scope: !2, file: !1510, line: 106, type: !1511, isLocal: false, isDefinition: true)
!1510 = !DIFile(filename: "./gt-c-pragma.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1512, size: 1920, elements: !1522)
!1512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1513)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ggc_root_tab", file: !1514, line: 69, size: 320, elements: !1515)
!1514 = !DIFile(filename: "./ggc.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1515 = !{!1516, !1517, !1518, !1519, !1521}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1513, file: !1514, line: 70, baseType: !907, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "nelt", scope: !1513, file: !1514, line: 71, baseType: !911, size: 64, offset: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !1513, file: !1514, line: 72, baseType: !911, size: 64, offset: 128)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !1513, file: !1514, line: 73, baseType: !1520, size: 64, offset: 192)
!1520 = !DIDerivedType(tag: DW_TAG_typedef, name: "gt_pointer_walker", file: !1514, line: 65, baseType: !904)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "pchw", scope: !1513, file: !1514, line: 74, baseType: !1520, size: 64, offset: 256)
!1522 = !{!1523}
!1523 = !DISubrange(count: 6)
!1524 = !DIGlobalVariableExpression(var: !1525, expr: !DIExpression())
!1525 = distinct !DIGlobalVariable(name: "alignment_stack", scope: !2, file: !3, line: 53, type: !1448, isLocal: true, isDefinition: true)
!1526 = !DIGlobalVariableExpression(var: !1527, expr: !DIExpression())
!1527 = distinct !DIGlobalVariable(name: "pending_redefine_extname", scope: !2, file: !3, line: 408, type: !464, isLocal: true, isDefinition: true)
!1528 = !DIGlobalVariableExpression(var: !1529, expr: !DIExpression())
!1529 = distinct !DIGlobalVariable(name: "pragma_extern_prefix", scope: !2, file: !3, line: 472, type: !464, isLocal: true, isDefinition: true)
!1530 = !DIGlobalVariableExpression(var: !1531, expr: !DIExpression())
!1531 = distinct !DIGlobalVariable(name: "visstack", scope: !2, file: !3, line: 589, type: !1454, isLocal: true, isDefinition: true)
!1532 = !DIGlobalVariableExpression(var: !1533, expr: !DIExpression())
!1533 = distinct !DIGlobalVariable(name: "options_stack", scope: !2, file: !3, line: 879, type: !1440, isLocal: true, isDefinition: true)
!1534 = !DIGlobalVariableExpression(var: !1535, expr: !DIExpression())
!1535 = distinct !DIGlobalVariable(name: "valid_location_for_stdc_pragma", scope: !2, file: !3, line: 1029, type: !583, isLocal: true, isDefinition: true)
!1536 = !DIGlobalVariableExpression(var: !1537, expr: !DIExpression())
!1537 = distinct !DIGlobalVariable(name: "registered_pragmas", scope: !2, file: !3, line: 1142, type: !1484, isLocal: true, isDefinition: true)
!1538 = !DIGlobalVariableExpression(var: !1539, expr: !DIExpression())
!1539 = distinct !DIGlobalVariable(name: "registered_pp_pragmas", scope: !2, file: !3, line: 1153, type: !1467, isLocal: true, isDefinition: true)
!1540 = !DIGlobalVariableExpression(var: !1541, expr: !DIExpression())
!1541 = distinct !DIGlobalVariable(name: "omp_pragmas", scope: !2, file: !3, line: 1156, type: !1542, isLocal: true, isDefinition: true)
!1542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1543, size: 1792, elements: !1548)
!1543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1544)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "omp_pragma_def", file: !3, line: 1155, size: 128, elements: !1545)
!1545 = !{!1546, !1547}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1544, file: !3, line: 1155, baseType: !667, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1544, file: !3, line: 1155, baseType: !7, size: 32, offset: 64)
!1548 = !{!1549}
!1549 = !DISubrange(count: 14)
!1550 = !DIGlobalVariableExpression(var: !1551, expr: !DIExpression())
!1551 = distinct !DIGlobalVariable(name: "default_alignment", scope: !2, file: !3, line: 64, type: !560, isLocal: true, isDefinition: true)
!1552 = !{i32 2, !"Dwarf Version", i32 4}
!1553 = !{i32 2, !"Debug Info Version", i32 3}
!1554 = !{i32 1, !"wchar_size", i32 4}
!1555 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1556 = distinct !DISubprogram(name: "vprintf", scope: !1557, file: !1557, line: 39, type: !1558, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1568)
!1557 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!560, !1560, !1561}
!1560 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !667)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1563)
!1563 = !{!1564, !1565, !1566, !1567}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1562, file: !3, baseType: !7, size: 32)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1562, file: !3, baseType: !7, size: 32, offset: 32)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1562, file: !3, baseType: !907, size: 64, offset: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1562, file: !3, baseType: !907, size: 64, offset: 128)
!1568 = !{!1569, !1570}
!1569 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1556, file: !1557, line: 39, type: !1560)
!1570 = !DILocalVariable(name: "__arg", arg: 2, scope: !1556, file: !1557, line: 39, type: !1561)
!1571 = !DILocation(line: 0, scope: !1556)
!1572 = !DILocation(line: 41, column: 20, scope: !1556)
!1573 = !DILocation(line: 41, column: 10, scope: !1556)
!1574 = !DILocation(line: 41, column: 3, scope: !1556)
!1575 = distinct !DISubprogram(name: "getchar", scope: !1557, file: !1557, line: 47, type: !1576, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1578)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!560}
!1578 = !{}
!1579 = !DILocation(line: 49, column: 16, scope: !1575)
!1580 = !DILocation(line: 49, column: 10, scope: !1575)
!1581 = !DILocation(line: 49, column: 3, scope: !1575)
!1582 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1557, file: !1557, line: 56, type: !1583, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1636)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!560, !1585}
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1587, line: 7, baseType: !1588)
!1587 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1589, line: 49, size: 1728, elements: !1590)
!1589 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1590 = !{!1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1606, !1608, !1609, !1610, !1613, !1615, !1616, !1617, !1620, !1622, !1625, !1628, !1629, !1630, !1631, !1632}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1588, file: !1589, line: 51, baseType: !560, size: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1588, file: !1589, line: 54, baseType: !1439, size: 64, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1588, file: !1589, line: 55, baseType: !1439, size: 64, offset: 128)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1588, file: !1589, line: 56, baseType: !1439, size: 64, offset: 192)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1588, file: !1589, line: 57, baseType: !1439, size: 64, offset: 256)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1588, file: !1589, line: 58, baseType: !1439, size: 64, offset: 320)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1588, file: !1589, line: 59, baseType: !1439, size: 64, offset: 384)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1588, file: !1589, line: 60, baseType: !1439, size: 64, offset: 448)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1588, file: !1589, line: 61, baseType: !1439, size: 64, offset: 512)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1588, file: !1589, line: 64, baseType: !1439, size: 64, offset: 576)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1588, file: !1589, line: 65, baseType: !1439, size: 64, offset: 640)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1588, file: !1589, line: 66, baseType: !1439, size: 64, offset: 704)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1588, file: !1589, line: 68, baseType: !1604, size: 64, offset: 768)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1589, line: 36, flags: DIFlagFwdDecl)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1588, file: !1589, line: 70, baseType: !1607, size: 64, offset: 832)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1588, file: !1589, line: 72, baseType: !560, size: 32, offset: 896)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1588, file: !1589, line: 73, baseType: !560, size: 32, offset: 928)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1588, file: !1589, line: 74, baseType: !1611, size: 64, offset: 960)
!1611 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1612, line: 152, baseType: !519)
!1612 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1588, file: !1589, line: 77, baseType: !1614, size: 16, offset: 1024)
!1614 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1588, file: !1589, line: 78, baseType: !1216, size: 8, offset: 1040)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1588, file: !1589, line: 79, baseType: !562, size: 8, offset: 1048)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1588, file: !1589, line: 81, baseType: !1618, size: 64, offset: 1088)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1589, line: 43, baseType: null)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1588, file: !1589, line: 89, baseType: !1621, size: 64, offset: 1152)
!1621 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1612, line: 153, baseType: !519)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1588, file: !1589, line: 91, baseType: !1623, size: 64, offset: 1216)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1589, line: 37, flags: DIFlagFwdDecl)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1588, file: !1589, line: 92, baseType: !1626, size: 64, offset: 1280)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1589, line: 38, flags: DIFlagFwdDecl)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1588, file: !1589, line: 93, baseType: !1607, size: 64, offset: 1344)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1588, file: !1589, line: 94, baseType: !907, size: 64, offset: 1408)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1588, file: !1589, line: 95, baseType: !911, size: 64, offset: 1472)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1588, file: !1589, line: 96, baseType: !560, size: 32, offset: 1536)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1588, file: !1589, line: 98, baseType: !1633, size: 160, offset: 1568)
!1633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 160, elements: !1634)
!1634 = !{!1635}
!1635 = !DISubrange(count: 20)
!1636 = !{!1637}
!1637 = !DILocalVariable(name: "__fp", arg: 1, scope: !1582, file: !1557, line: 56, type: !1585)
!1638 = !DILocation(line: 0, scope: !1582)
!1639 = !DILocation(line: 58, column: 10, scope: !1582)
!1640 = !DILocation(line: 58, column: 3, scope: !1582)
!1641 = distinct !DISubprogram(name: "getc_unlocked", scope: !1557, file: !1557, line: 66, type: !1583, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1642)
!1642 = !{!1643}
!1643 = !DILocalVariable(name: "__fp", arg: 1, scope: !1641, file: !1557, line: 66, type: !1585)
!1644 = !DILocation(line: 0, scope: !1641)
!1645 = !DILocation(line: 68, column: 10, scope: !1641)
!1646 = !DILocation(line: 68, column: 3, scope: !1641)
!1647 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1557, file: !1557, line: 73, type: !1576, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1578)
!1648 = !DILocation(line: 75, column: 10, scope: !1647)
!1649 = !DILocation(line: 75, column: 3, scope: !1647)
!1650 = distinct !DISubprogram(name: "putchar", scope: !1557, file: !1557, line: 82, type: !1651, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1653)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!560, !560}
!1653 = !{!1654}
!1654 = !DILocalVariable(name: "__c", arg: 1, scope: !1650, file: !1557, line: 82, type: !560)
!1655 = !DILocation(line: 0, scope: !1650)
!1656 = !DILocation(line: 84, column: 21, scope: !1650)
!1657 = !DILocation(line: 84, column: 10, scope: !1650)
!1658 = !DILocation(line: 84, column: 3, scope: !1650)
!1659 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1557, file: !1557, line: 91, type: !1660, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1662)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!560, !560, !1585}
!1662 = !{!1663, !1664}
!1663 = !DILocalVariable(name: "__c", arg: 1, scope: !1659, file: !1557, line: 91, type: !560)
!1664 = !DILocalVariable(name: "__stream", arg: 2, scope: !1659, file: !1557, line: 91, type: !1585)
!1665 = !DILocation(line: 0, scope: !1659)
!1666 = !DILocation(line: 93, column: 10, scope: !1659)
!1667 = !DILocation(line: 93, column: 3, scope: !1659)
!1668 = distinct !DISubprogram(name: "putc_unlocked", scope: !1557, file: !1557, line: 101, type: !1660, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1669)
!1669 = !{!1670, !1671}
!1670 = !DILocalVariable(name: "__c", arg: 1, scope: !1668, file: !1557, line: 101, type: !560)
!1671 = !DILocalVariable(name: "__stream", arg: 2, scope: !1668, file: !1557, line: 101, type: !1585)
!1672 = !DILocation(line: 0, scope: !1668)
!1673 = !DILocation(line: 103, column: 10, scope: !1668)
!1674 = !DILocation(line: 103, column: 3, scope: !1668)
!1675 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1557, file: !1557, line: 108, type: !1651, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1676)
!1676 = !{!1677}
!1677 = !DILocalVariable(name: "__c", arg: 1, scope: !1675, file: !1557, line: 108, type: !560)
!1678 = !DILocation(line: 0, scope: !1675)
!1679 = !DILocation(line: 110, column: 10, scope: !1675)
!1680 = !DILocation(line: 110, column: 3, scope: !1675)
!1681 = distinct !DISubprogram(name: "getline", scope: !1557, file: !1557, line: 118, type: !1682, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1686)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!1684, !1438, !1685, !1585}
!1684 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1612, line: 193, baseType: !519)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!1686 = !{!1687, !1688, !1689}
!1687 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1681, file: !1557, line: 118, type: !1438)
!1688 = !DILocalVariable(name: "__n", arg: 2, scope: !1681, file: !1557, line: 118, type: !1685)
!1689 = !DILocalVariable(name: "__stream", arg: 3, scope: !1681, file: !1557, line: 118, type: !1585)
!1690 = !DILocation(line: 0, scope: !1681)
!1691 = !DILocation(line: 120, column: 10, scope: !1681)
!1692 = !DILocation(line: 120, column: 3, scope: !1681)
!1693 = distinct !DISubprogram(name: "feof_unlocked", scope: !1557, file: !1557, line: 128, type: !1583, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1694)
!1694 = !{!1695}
!1695 = !DILocalVariable(name: "__stream", arg: 1, scope: !1693, file: !1557, line: 128, type: !1585)
!1696 = !DILocation(line: 0, scope: !1693)
!1697 = !DILocation(line: 130, column: 10, scope: !1693)
!1698 = !DILocation(line: 130, column: 3, scope: !1693)
!1699 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1557, file: !1557, line: 135, type: !1583, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1700)
!1700 = !{!1701}
!1701 = !DILocalVariable(name: "__stream", arg: 1, scope: !1699, file: !1557, line: 135, type: !1585)
!1702 = !DILocation(line: 0, scope: !1699)
!1703 = !DILocation(line: 137, column: 10, scope: !1699)
!1704 = !DILocation(line: 137, column: 3, scope: !1699)
!1705 = distinct !DISubprogram(name: "tolower", scope: !1706, file: !1706, line: 207, type: !1651, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1707)
!1706 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1707 = !{!1708}
!1708 = !DILocalVariable(name: "__c", arg: 1, scope: !1705, file: !1706, line: 207, type: !560)
!1709 = !DILocation(line: 0, scope: !1705)
!1710 = !DILocation(line: 209, column: 22, scope: !1705)
!1711 = !DILocation(line: 209, column: 39, scope: !1705)
!1712 = !DILocation(line: 209, column: 38, scope: !1705)
!1713 = !DILocation(line: 209, column: 37, scope: !1705)
!1714 = !DILocation(line: 209, column: 10, scope: !1705)
!1715 = !DILocation(line: 209, column: 3, scope: !1705)
!1716 = distinct !DISubprogram(name: "toupper", scope: !1706, file: !1706, line: 213, type: !1651, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1717)
!1717 = !{!1718}
!1718 = !DILocalVariable(name: "__c", arg: 1, scope: !1716, file: !1706, line: 213, type: !560)
!1719 = !DILocation(line: 0, scope: !1716)
!1720 = !DILocation(line: 215, column: 22, scope: !1716)
!1721 = !DILocation(line: 215, column: 39, scope: !1716)
!1722 = !DILocation(line: 215, column: 38, scope: !1716)
!1723 = !DILocation(line: 215, column: 37, scope: !1716)
!1724 = !DILocation(line: 215, column: 10, scope: !1716)
!1725 = !DILocation(line: 215, column: 3, scope: !1716)
!1726 = distinct !DISubprogram(name: "atoi", scope: !1727, file: !1727, line: 361, type: !1728, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1730)
!1727 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!560, !667}
!1730 = !{!1731}
!1731 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1726, file: !1727, line: 361, type: !667)
!1732 = !DILocation(line: 0, scope: !1726)
!1733 = !DILocation(line: 363, column: 16, scope: !1726)
!1734 = !DILocation(line: 363, column: 10, scope: !1726)
!1735 = !DILocation(line: 363, column: 3, scope: !1726)
!1736 = distinct !DISubprogram(name: "atol", scope: !1727, file: !1727, line: 366, type: !1737, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1739)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!519, !667}
!1739 = !{!1740}
!1740 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1736, file: !1727, line: 366, type: !667)
!1741 = !DILocation(line: 0, scope: !1736)
!1742 = !DILocation(line: 368, column: 10, scope: !1736)
!1743 = !DILocation(line: 368, column: 3, scope: !1736)
!1744 = distinct !DISubprogram(name: "atoll", scope: !1727, file: !1727, line: 373, type: !1745, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1748)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!1747, !667}
!1747 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1748 = !{!1749}
!1749 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1744, file: !1727, line: 373, type: !667)
!1750 = !DILocation(line: 0, scope: !1744)
!1751 = !DILocation(line: 375, column: 10, scope: !1744)
!1752 = !DILocation(line: 375, column: 3, scope: !1744)
!1753 = distinct !DISubprogram(name: "bsearch", scope: !1754, file: !1754, line: 20, type: !1755, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1758)
!1754 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!907, !760, !760, !911, !911, !1757}
!1757 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1727, line: 808, baseType: !899)
!1758 = !{!1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768}
!1759 = !DILocalVariable(name: "__key", arg: 1, scope: !1753, file: !1754, line: 20, type: !760)
!1760 = !DILocalVariable(name: "__base", arg: 2, scope: !1753, file: !1754, line: 20, type: !760)
!1761 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1753, file: !1754, line: 20, type: !911)
!1762 = !DILocalVariable(name: "__size", arg: 4, scope: !1753, file: !1754, line: 20, type: !911)
!1763 = !DILocalVariable(name: "__compar", arg: 5, scope: !1753, file: !1754, line: 21, type: !1757)
!1764 = !DILocalVariable(name: "__l", scope: !1753, file: !1754, line: 23, type: !911)
!1765 = !DILocalVariable(name: "__u", scope: !1753, file: !1754, line: 23, type: !911)
!1766 = !DILocalVariable(name: "__idx", scope: !1753, file: !1754, line: 23, type: !911)
!1767 = !DILocalVariable(name: "__p", scope: !1753, file: !1754, line: 24, type: !760)
!1768 = !DILocalVariable(name: "__comparison", scope: !1753, file: !1754, line: 25, type: !560)
!1769 = !DILocation(line: 0, scope: !1753)
!1770 = !DILocation(line: 29, column: 3, scope: !1753)
!1771 = !DILocation(line: 27, column: 7, scope: !1753)
!1772 = !DILocation(line: 29, column: 14, scope: !1753)
!1773 = !DILocation(line: 31, column: 20, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1753, file: !1754, line: 30, column: 5)
!1775 = !DILocation(line: 31, column: 27, scope: !1774)
!1776 = !DILocation(line: 32, column: 56, scope: !1774)
!1777 = !DILocation(line: 32, column: 47, scope: !1774)
!1778 = !DILocation(line: 33, column: 22, scope: !1774)
!1779 = !DILocation(line: 34, column: 24, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1774, file: !1754, line: 34, column: 11)
!1781 = !DILocation(line: 34, column: 11, scope: !1774)
!1782 = !DILocation(line: 36, column: 29, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1780, file: !1754, line: 36, column: 16)
!1784 = !DILocation(line: 36, column: 16, scope: !1780)
!1785 = !DILocation(line: 37, column: 14, scope: !1783)
!1786 = distinct !{!1786, !1770, !1787}
!1787 = !DILocation(line: 40, column: 5, scope: !1753)
!1788 = !DILocation(line: 43, column: 1, scope: !1753)
!1789 = distinct !DISubprogram(name: "atof", scope: !1790, file: !1790, line: 25, type: !1791, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1794)
!1790 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!1793, !667}
!1793 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1794 = !{!1795}
!1795 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1789, file: !1790, line: 25, type: !667)
!1796 = !DILocation(line: 0, scope: !1789)
!1797 = !DILocation(line: 27, column: 10, scope: !1789)
!1798 = !DILocation(line: 27, column: 3, scope: !1789)
!1799 = distinct !DISubprogram(name: "strtoimax", scope: !1800, file: !1800, line: 324, type: !1801, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1807)
!1800 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1801 = !DISubroutineType(types: !1802)
!1802 = !{!1803, !1560, !1806, !560}
!1803 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1804, line: 101, baseType: !1805)
!1804 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1805 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1612, line: 72, baseType: !519)
!1806 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1438)
!1807 = !{!1808, !1809, !1810}
!1808 = !DILocalVariable(name: "nptr", arg: 1, scope: !1799, file: !1800, line: 324, type: !1560)
!1809 = !DILocalVariable(name: "endptr", arg: 2, scope: !1799, file: !1800, line: 324, type: !1806)
!1810 = !DILocalVariable(name: "base", arg: 3, scope: !1799, file: !1800, line: 324, type: !560)
!1811 = !DILocation(line: 0, scope: !1799)
!1812 = !DILocation(line: 327, column: 10, scope: !1799)
!1813 = !DILocation(line: 327, column: 3, scope: !1799)
!1814 = distinct !DISubprogram(name: "strtoumax", scope: !1800, file: !1800, line: 336, type: !1815, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1819)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!1817, !1560, !1806, !560}
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1804, line: 102, baseType: !1818)
!1818 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1612, line: 73, baseType: !517)
!1819 = !{!1820, !1821, !1822}
!1820 = !DILocalVariable(name: "nptr", arg: 1, scope: !1814, file: !1800, line: 336, type: !1560)
!1821 = !DILocalVariable(name: "endptr", arg: 2, scope: !1814, file: !1800, line: 336, type: !1806)
!1822 = !DILocalVariable(name: "base", arg: 3, scope: !1814, file: !1800, line: 336, type: !560)
!1823 = !DILocation(line: 0, scope: !1814)
!1824 = !DILocation(line: 339, column: 10, scope: !1814)
!1825 = !DILocation(line: 339, column: 3, scope: !1814)
!1826 = distinct !DISubprogram(name: "wcstoimax", scope: !1800, file: !1800, line: 348, type: !1827, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1836)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!1803, !1829, !1833, !560}
!1829 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1830)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1832)
!1832 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1800, line: 34, baseType: !560)
!1833 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1834)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1836 = !{!1837, !1838, !1839}
!1837 = !DILocalVariable(name: "nptr", arg: 1, scope: !1826, file: !1800, line: 348, type: !1829)
!1838 = !DILocalVariable(name: "endptr", arg: 2, scope: !1826, file: !1800, line: 348, type: !1833)
!1839 = !DILocalVariable(name: "base", arg: 3, scope: !1826, file: !1800, line: 348, type: !560)
!1840 = !DILocation(line: 0, scope: !1826)
!1841 = !DILocation(line: 351, column: 10, scope: !1826)
!1842 = !DILocation(line: 351, column: 3, scope: !1826)
!1843 = distinct !DISubprogram(name: "wcstoumax", scope: !1800, file: !1800, line: 362, type: !1844, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1846)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{!1817, !1829, !1833, !560}
!1846 = !{!1847, !1848, !1849}
!1847 = !DILocalVariable(name: "nptr", arg: 1, scope: !1843, file: !1800, line: 362, type: !1829)
!1848 = !DILocalVariable(name: "endptr", arg: 2, scope: !1843, file: !1800, line: 362, type: !1833)
!1849 = !DILocalVariable(name: "base", arg: 3, scope: !1843, file: !1800, line: 362, type: !560)
!1850 = !DILocation(line: 0, scope: !1843)
!1851 = !DILocation(line: 365, column: 10, scope: !1843)
!1852 = !DILocation(line: 365, column: 3, scope: !1843)
!1853 = distinct !DISubprogram(name: "stat", scope: !1854, file: !1854, line: 453, type: !1855, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1892)
!1854 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!560, !667, !1857}
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1859, line: 46, size: 1152, elements: !1860)
!1859 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!1860 = !{!1861, !1863, !1865, !1867, !1869, !1871, !1873, !1874, !1875, !1876, !1878, !1880, !1888, !1889, !1890}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1858, file: !1859, line: 48, baseType: !1862, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1612, line: 145, baseType: !517)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1858, file: !1859, line: 53, baseType: !1864, size: 64, offset: 64)
!1864 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1612, line: 148, baseType: !517)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1858, file: !1859, line: 61, baseType: !1866, size: 64, offset: 128)
!1866 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1612, line: 151, baseType: !517)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1858, file: !1859, line: 62, baseType: !1868, size: 32, offset: 192)
!1868 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1612, line: 150, baseType: !7)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1858, file: !1859, line: 64, baseType: !1870, size: 32, offset: 224)
!1870 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1612, line: 146, baseType: !7)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1858, file: !1859, line: 65, baseType: !1872, size: 32, offset: 256)
!1872 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1612, line: 147, baseType: !7)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1858, file: !1859, line: 67, baseType: !560, size: 32, offset: 288)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1858, file: !1859, line: 69, baseType: !1862, size: 64, offset: 320)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1858, file: !1859, line: 74, baseType: !1611, size: 64, offset: 384)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1858, file: !1859, line: 78, baseType: !1877, size: 64, offset: 448)
!1877 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1612, line: 174, baseType: !519)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1858, file: !1859, line: 80, baseType: !1879, size: 64, offset: 512)
!1879 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1612, line: 179, baseType: !519)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1858, file: !1859, line: 91, baseType: !1881, size: 128, offset: 576)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1882, line: 10, size: 128, elements: !1883)
!1882 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!1883 = !{!1884, !1886}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1881, file: !1882, line: 12, baseType: !1885, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1612, line: 160, baseType: !519)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1881, file: !1882, line: 16, baseType: !1887, size: 64, offset: 64)
!1887 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1612, line: 196, baseType: !519)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1858, file: !1859, line: 92, baseType: !1881, size: 128, offset: 704)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1858, file: !1859, line: 93, baseType: !1881, size: 128, offset: 832)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1858, file: !1859, line: 106, baseType: !1891, size: 192, offset: 960)
!1891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1887, size: 192, elements: !537)
!1892 = !{!1893, !1894}
!1893 = !DILocalVariable(name: "__path", arg: 1, scope: !1853, file: !1854, line: 453, type: !667)
!1894 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1853, file: !1854, line: 453, type: !1857)
!1895 = !DILocation(line: 0, scope: !1853)
!1896 = !DILocation(line: 455, column: 10, scope: !1853)
!1897 = !DILocation(line: 455, column: 3, scope: !1853)
!1898 = distinct !DISubprogram(name: "lstat", scope: !1854, file: !1854, line: 460, type: !1855, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1899)
!1899 = !{!1900, !1901}
!1900 = !DILocalVariable(name: "__path", arg: 1, scope: !1898, file: !1854, line: 460, type: !667)
!1901 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1898, file: !1854, line: 460, type: !1857)
!1902 = !DILocation(line: 0, scope: !1898)
!1903 = !DILocation(line: 462, column: 10, scope: !1898)
!1904 = !DILocation(line: 462, column: 3, scope: !1898)
!1905 = distinct !DISubprogram(name: "fstat", scope: !1854, file: !1854, line: 467, type: !1906, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1908)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{!560, !560, !1857}
!1908 = !{!1909, !1910}
!1909 = !DILocalVariable(name: "__fd", arg: 1, scope: !1905, file: !1854, line: 467, type: !560)
!1910 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1905, file: !1854, line: 467, type: !1857)
!1911 = !DILocation(line: 0, scope: !1905)
!1912 = !DILocation(line: 469, column: 10, scope: !1905)
!1913 = !DILocation(line: 469, column: 3, scope: !1905)
!1914 = distinct !DISubprogram(name: "fstatat", scope: !1854, file: !1854, line: 474, type: !1915, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1917)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!560, !560, !667, !1857, !560}
!1917 = !{!1918, !1919, !1920, !1921}
!1918 = !DILocalVariable(name: "__fd", arg: 1, scope: !1914, file: !1854, line: 474, type: !560)
!1919 = !DILocalVariable(name: "__filename", arg: 2, scope: !1914, file: !1854, line: 474, type: !667)
!1920 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1914, file: !1854, line: 474, type: !1857)
!1921 = !DILocalVariable(name: "__flag", arg: 4, scope: !1914, file: !1854, line: 474, type: !560)
!1922 = !DILocation(line: 0, scope: !1914)
!1923 = !DILocation(line: 477, column: 10, scope: !1914)
!1924 = !DILocation(line: 477, column: 3, scope: !1914)
!1925 = distinct !DISubprogram(name: "mknod", scope: !1854, file: !1854, line: 483, type: !1926, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1928)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!560, !667, !1868, !1862}
!1928 = !{!1929, !1930, !1931}
!1929 = !DILocalVariable(name: "__path", arg: 1, scope: !1925, file: !1854, line: 483, type: !667)
!1930 = !DILocalVariable(name: "__mode", arg: 2, scope: !1925, file: !1854, line: 483, type: !1868)
!1931 = !DILocalVariable(name: "__dev", arg: 3, scope: !1925, file: !1854, line: 483, type: !1862)
!1932 = !DILocation(line: 0, scope: !1925)
!1933 = !DILocation(line: 485, column: 10, scope: !1925)
!1934 = !DILocation(line: 485, column: 3, scope: !1925)
!1935 = distinct !DISubprogram(name: "mknodat", scope: !1854, file: !1854, line: 491, type: !1936, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1938)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!560, !560, !667, !1868, !1862}
!1938 = !{!1939, !1940, !1941, !1942}
!1939 = !DILocalVariable(name: "__fd", arg: 1, scope: !1935, file: !1854, line: 491, type: !560)
!1940 = !DILocalVariable(name: "__path", arg: 2, scope: !1935, file: !1854, line: 491, type: !667)
!1941 = !DILocalVariable(name: "__mode", arg: 3, scope: !1935, file: !1854, line: 491, type: !1868)
!1942 = !DILocalVariable(name: "__dev", arg: 4, scope: !1935, file: !1854, line: 491, type: !1862)
!1943 = !DILocation(line: 0, scope: !1935)
!1944 = !DILocation(line: 494, column: 10, scope: !1935)
!1945 = !DILocation(line: 494, column: 3, scope: !1935)
!1946 = distinct !DISubprogram(name: "stat64", scope: !1854, file: !1854, line: 502, type: !1947, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1969)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!560, !667, !1949}
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !1859, line: 119, size: 1152, elements: !1951)
!1951 = !{!1952, !1953, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1965, !1966, !1967, !1968}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1950, file: !1859, line: 121, baseType: !1862, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1950, file: !1859, line: 123, baseType: !1954, size: 64, offset: 64)
!1954 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1612, line: 149, baseType: !517)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1950, file: !1859, line: 124, baseType: !1866, size: 64, offset: 128)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1950, file: !1859, line: 125, baseType: !1868, size: 32, offset: 192)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1950, file: !1859, line: 132, baseType: !1870, size: 32, offset: 224)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1950, file: !1859, line: 133, baseType: !1872, size: 32, offset: 256)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1950, file: !1859, line: 135, baseType: !560, size: 32, offset: 288)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1950, file: !1859, line: 136, baseType: !1862, size: 64, offset: 320)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1950, file: !1859, line: 137, baseType: !1611, size: 64, offset: 384)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1950, file: !1859, line: 143, baseType: !1877, size: 64, offset: 448)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1950, file: !1859, line: 144, baseType: !1964, size: 64, offset: 512)
!1964 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1612, line: 180, baseType: !519)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1950, file: !1859, line: 152, baseType: !1881, size: 128, offset: 576)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1950, file: !1859, line: 153, baseType: !1881, size: 128, offset: 704)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1950, file: !1859, line: 154, baseType: !1881, size: 128, offset: 832)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1950, file: !1859, line: 164, baseType: !1891, size: 192, offset: 960)
!1969 = !{!1970, !1971}
!1970 = !DILocalVariable(name: "__path", arg: 1, scope: !1946, file: !1854, line: 502, type: !667)
!1971 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1946, file: !1854, line: 502, type: !1949)
!1972 = !DILocation(line: 0, scope: !1946)
!1973 = !DILocation(line: 504, column: 10, scope: !1946)
!1974 = !DILocation(line: 504, column: 3, scope: !1946)
!1975 = distinct !DISubprogram(name: "lstat64", scope: !1854, file: !1854, line: 509, type: !1947, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1976)
!1976 = !{!1977, !1978}
!1977 = !DILocalVariable(name: "__path", arg: 1, scope: !1975, file: !1854, line: 509, type: !667)
!1978 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1975, file: !1854, line: 509, type: !1949)
!1979 = !DILocation(line: 0, scope: !1975)
!1980 = !DILocation(line: 511, column: 10, scope: !1975)
!1981 = !DILocation(line: 511, column: 3, scope: !1975)
!1982 = distinct !DISubprogram(name: "fstat64", scope: !1854, file: !1854, line: 516, type: !1983, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1985)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!560, !560, !1949}
!1985 = !{!1986, !1987}
!1986 = !DILocalVariable(name: "__fd", arg: 1, scope: !1982, file: !1854, line: 516, type: !560)
!1987 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1982, file: !1854, line: 516, type: !1949)
!1988 = !DILocation(line: 0, scope: !1982)
!1989 = !DILocation(line: 518, column: 10, scope: !1982)
!1990 = !DILocation(line: 518, column: 3, scope: !1982)
!1991 = distinct !DISubprogram(name: "fstatat64", scope: !1854, file: !1854, line: 523, type: !1992, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1994)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!560, !560, !667, !1949, !560}
!1994 = !{!1995, !1996, !1997, !1998}
!1995 = !DILocalVariable(name: "__fd", arg: 1, scope: !1991, file: !1854, line: 523, type: !560)
!1996 = !DILocalVariable(name: "__filename", arg: 2, scope: !1991, file: !1854, line: 523, type: !667)
!1997 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1991, file: !1854, line: 523, type: !1949)
!1998 = !DILocalVariable(name: "__flag", arg: 4, scope: !1991, file: !1854, line: 523, type: !560)
!1999 = !DILocation(line: 0, scope: !1991)
!2000 = !DILocation(line: 526, column: 10, scope: !1991)
!2001 = !DILocation(line: 526, column: 3, scope: !1991)
!2002 = distinct !DISubprogram(name: "maybe_apply_pragma_weak", scope: !3, file: !3, line: 275, type: !2003, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2005)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{null, !464}
!2005 = !{!2006, !2007, !2008, !2009}
!2006 = !DILocalVariable(name: "decl", arg: 1, scope: !2002, file: !3, line: 275, type: !464)
!2007 = !DILocalVariable(name: "p", scope: !2002, file: !3, line: 277, type: !1106)
!2008 = !DILocalVariable(name: "t", scope: !2002, file: !3, line: 277, type: !464)
!2009 = !DILocalVariable(name: "id", scope: !2002, file: !3, line: 277, type: !464)
!2010 = !DILocation(line: 0, scope: !2002)
!2011 = !DILocation(line: 282, column: 8, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2002, file: !3, line: 282, column: 7)
!2013 = !DILocation(line: 282, column: 7, scope: !2002)
!2014 = !DILocation(line: 286, column: 8, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2002, file: !3, line: 286, column: 7)
!2016 = !DILocation(line: 286, column: 29, scope: !2015)
!2017 = !DILocation(line: 0, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2002, file: !3, line: 291, column: 7)
!2019 = !DILocation(line: 291, column: 7, scope: !2018)
!2020 = !DILocation(line: 286, column: 33, scope: !2015)
!2021 = !DILocation(line: 286, column: 7, scope: !2002)
!2022 = !DILocation(line: 291, column: 24, scope: !2018)
!2023 = !DILocation(line: 291, column: 41, scope: !2018)
!2024 = !DILocation(line: 291, column: 61, scope: !2018)
!2025 = !DILocation(line: 291, column: 7, scope: !2002)
!2026 = !DILocation(line: 294, column: 8, scope: !2002)
!2027 = !DILocation(line: 296, column: 8, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2002, file: !3, line: 296, column: 3)
!2029 = !DILocation(line: 0, scope: !2028)
!2030 = !DILocation(line: 296, column: 33, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2028, file: !3, line: 296, column: 3)
!2032 = !DILocation(line: 296, column: 3, scope: !2028)
!2033 = !DILocation(line: 297, column: 15, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2031, file: !3, line: 297, column: 9)
!2035 = !DILocation(line: 297, column: 12, scope: !2034)
!2036 = !DILocation(line: 297, column: 9, scope: !2031)
!2037 = !DILocation(line: 299, column: 27, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2034, file: !3, line: 298, column: 7)
!2039 = !DILocation(line: 299, column: 2, scope: !2038)
!2040 = !DILocation(line: 300, column: 7, scope: !2038)
!2041 = !DILocation(line: 300, column: 5, scope: !2038)
!2042 = !DILocation(line: 301, column: 2, scope: !2038)
!2043 = !DILocation(line: 296, column: 44, scope: !2031)
!2044 = !DILocation(line: 296, column: 3, scope: !2031)
!2045 = distinct !{!2045, !2032, !2046}
!2046 = !DILocation(line: 302, column: 7, scope: !2028)
!2047 = !DILocation(line: 303, column: 1, scope: !2002)
!2048 = distinct !DISubprogram(name: "apply_pragma_weak", scope: !3, file: !3, line: 254, type: !2049, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2051)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{null, !464, !464}
!2051 = !{!2052, !2053}
!2052 = !DILocalVariable(name: "decl", arg: 1, scope: !2048, file: !3, line: 254, type: !464)
!2053 = !DILocalVariable(name: "value", arg: 2, scope: !2048, file: !3, line: 254, type: !464)
!2054 = !DILocation(line: 0, scope: !2048)
!2055 = !DILocation(line: 256, column: 7, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2048, file: !3, line: 256, column: 7)
!2057 = !DILocation(line: 256, column: 7, scope: !2048)
!2058 = !DILocation(line: 258, column: 29, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2056, file: !3, line: 257, column: 5)
!2060 = !DILocation(line: 259, column: 8, scope: !2059)
!2061 = !DILocation(line: 258, column: 15, scope: !2059)
!2062 = !DILocation(line: 260, column: 31, scope: !2059)
!2063 = !DILocation(line: 260, column: 7, scope: !2059)
!2064 = !DILocation(line: 0, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2048, file: !3, line: 265, column: 7)
!2066 = !DILocation(line: 265, column: 24, scope: !2065)
!2067 = !DILocation(line: 263, column: 5, scope: !2059)
!2068 = !DILocation(line: 265, column: 45, scope: !2065)
!2069 = !DILocation(line: 265, column: 48, scope: !2065)
!2070 = !DILocation(line: 266, column: 7, scope: !2065)
!2071 = !DILocation(line: 266, column: 11, scope: !2065)
!2072 = !DILocation(line: 267, column: 7, scope: !2065)
!2073 = !DILocation(line: 267, column: 10, scope: !2065)
!2074 = !DILocation(line: 265, column: 7, scope: !2048)
!2075 = !DILocation(line: 269, column: 42, scope: !2065)
!2076 = !DILocation(line: 268, column: 5, scope: !2065)
!2077 = !DILocation(line: 271, column: 17, scope: !2048)
!2078 = !DILocation(line: 271, column: 3, scope: !2048)
!2079 = !DILocation(line: 272, column: 1, scope: !2048)
!2080 = distinct !DISubprogram(name: "maybe_apply_pending_pragma_weaks", scope: !3, file: !3, line: 308, type: !2081, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2083)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{null}
!2083 = !{!2084, !2085, !2086, !2087, !2088, !2089}
!2084 = !DILocalVariable(name: "p", scope: !2080, file: !3, line: 310, type: !1106)
!2085 = !DILocalVariable(name: "t", scope: !2080, file: !3, line: 310, type: !464)
!2086 = !DILocalVariable(name: "alias_id", scope: !2080, file: !3, line: 310, type: !464)
!2087 = !DILocalVariable(name: "id", scope: !2080, file: !3, line: 310, type: !464)
!2088 = !DILocalVariable(name: "decl", scope: !2080, file: !3, line: 310, type: !464)
!2089 = !DILocalVariable(name: "next", scope: !2080, file: !3, line: 310, type: !1106)
!2090 = !DILocation(line: 0, scope: !2080)
!2091 = !DILocation(line: 312, column: 8, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2080, file: !3, line: 312, column: 3)
!2093 = !DILocation(line: 0, scope: !2092)
!2094 = !DILocation(line: 312, column: 33, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2092, file: !3, line: 312, column: 3)
!2096 = !DILocation(line: 312, column: 3, scope: !2092)
!2097 = !DILocation(line: 314, column: 15, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2095, file: !3, line: 313, column: 5)
!2099 = !DILocation(line: 318, column: 11, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2098, file: !3, line: 318, column: 11)
!2101 = !DILocation(line: 318, column: 26, scope: !2100)
!2102 = !DILocation(line: 318, column: 11, scope: !2098)
!2103 = !DILocation(line: 315, column: 18, scope: !2098)
!2104 = !DILocation(line: 321, column: 14, scope: !2098)
!2105 = !DILocation(line: 324, column: 7, scope: !2098)
!2106 = !DILocation(line: 324, column: 30, scope: !2098)
!2107 = !DILocation(line: 325, column: 7, scope: !2098)
!2108 = !DILocation(line: 325, column: 26, scope: !2098)
!2109 = !DILocation(line: 326, column: 28, scope: !2098)
!2110 = !DILocation(line: 327, column: 7, scope: !2098)
!2111 = !DILocation(line: 327, column: 24, scope: !2098)
!2112 = !DILocation(line: 329, column: 7, scope: !2098)
!2113 = !DILocation(line: 330, column: 5, scope: !2098)
!2114 = !DILocation(line: 312, column: 3, scope: !2095)
!2115 = distinct !{!2115, !2096, !2116}
!2116 = !DILocation(line: 330, column: 5, scope: !2092)
!2117 = !DILocation(line: 331, column: 1, scope: !2080)
!2118 = distinct !DISubprogram(name: "add_to_renaming_pragma_list", scope: !3, file: !3, line: 457, type: !2049, scopeLine: 458, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2119)
!2119 = !{!2120, !2121, !2122}
!2120 = !DILocalVariable(name: "oldname", arg: 1, scope: !2118, file: !3, line: 457, type: !464)
!2121 = !DILocalVariable(name: "newname", arg: 2, scope: !2118, file: !3, line: 457, type: !464)
!2122 = !DILocalVariable(name: "previous", scope: !2118, file: !3, line: 459, type: !464)
!2123 = !DILocation(line: 0, scope: !2118)
!2124 = !DILocation(line: 459, column: 44, scope: !2118)
!2125 = !DILocation(line: 459, column: 19, scope: !2118)
!2126 = !DILocation(line: 460, column: 7, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2118, file: !3, line: 460, column: 7)
!2128 = !DILocation(line: 460, column: 7, scope: !2118)
!2129 = !DILocation(line: 462, column: 11, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !3, line: 462, column: 11)
!2131 = distinct !DILexicalBlock(scope: !2127, file: !3, line: 461, column: 5)
!2132 = !DILocation(line: 462, column: 33, scope: !2130)
!2133 = !DILocation(line: 462, column: 11, scope: !2131)
!2134 = !DILocation(line: 463, column: 2, scope: !2130)
!2135 = !DILocation(line: 469, column: 7, scope: !2118)
!2136 = !DILocation(line: 469, column: 5, scope: !2118)
!2137 = !DILocation(line: 470, column: 1, scope: !2118)
!2138 = distinct !DISubprogram(name: "maybe_apply_renaming_pragma", scope: !3, file: !3, line: 499, type: !2139, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2141)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!464, !464, !464}
!2141 = !{!2142, !2143, !2144, !2145, !2146, !2149, !2154, !2157, !2158, !2159, !2160}
!2142 = !DILocalVariable(name: "decl", arg: 1, scope: !2138, file: !3, line: 499, type: !464)
!2143 = !DILocalVariable(name: "asmname", arg: 2, scope: !2138, file: !3, line: 499, type: !464)
!2144 = !DILocalVariable(name: "p", scope: !2138, file: !3, line: 501, type: !1106)
!2145 = !DILocalVariable(name: "t", scope: !2138, file: !3, line: 501, type: !464)
!2146 = !DILocalVariable(name: "oldname", scope: !2147, file: !3, line: 514, type: !667)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !3, line: 513, column: 5)
!2148 = distinct !DILexicalBlock(scope: !2138, file: !3, line: 512, column: 7)
!2149 = !DILocalVariable(name: "newname", scope: !2150, file: !3, line: 540, type: !464)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !3, line: 539, column: 7)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !3, line: 538, column: 9)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !3, line: 537, column: 3)
!2153 = distinct !DILexicalBlock(scope: !2138, file: !3, line: 537, column: 3)
!2154 = !DILocalVariable(name: "prefix", scope: !2155, file: !3, line: 567, type: !667)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 566, column: 5)
!2156 = distinct !DILexicalBlock(scope: !2138, file: !3, line: 565, column: 7)
!2157 = !DILocalVariable(name: "plen", scope: !2155, file: !3, line: 568, type: !911)
!2158 = !DILocalVariable(name: "id", scope: !2155, file: !3, line: 570, type: !667)
!2159 = !DILocalVariable(name: "ilen", scope: !2155, file: !3, line: 571, type: !911)
!2160 = !DILocalVariable(name: "newname", scope: !2155, file: !3, line: 573, type: !1439)
!2161 = !DILocation(line: 0, scope: !2138)
!2162 = !DILocation(line: 505, column: 8, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2138, file: !3, line: 505, column: 7)
!2164 = !DILocation(line: 505, column: 25, scope: !2163)
!2165 = !DILocation(line: 505, column: 42, scope: !2163)
!2166 = !DILocation(line: 505, column: 62, scope: !2163)
!2167 = !DILocation(line: 506, column: 7, scope: !2163)
!2168 = !DILocation(line: 506, column: 12, scope: !2163)
!2169 = !DILocation(line: 506, column: 31, scope: !2163)
!2170 = !DILocation(line: 506, column: 35, scope: !2163)
!2171 = !DILocation(line: 507, column: 7, scope: !2163)
!2172 = !DILocation(line: 507, column: 11, scope: !2163)
!2173 = !DILocation(line: 505, column: 7, scope: !2138)
!2174 = !DILocation(line: 512, column: 7, scope: !2148)
!2175 = !DILocation(line: 512, column: 7, scope: !2138)
!2176 = !DILocation(line: 514, column: 29, scope: !2147)
!2177 = !DILocation(line: 0, scope: !2147)
!2178 = !DILocation(line: 515, column: 25, scope: !2147)
!2179 = !DILocation(line: 515, column: 17, scope: !2147)
!2180 = !DILocation(line: 517, column: 11, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2147, file: !3, line: 517, column: 11)
!2182 = !DILocation(line: 517, column: 19, scope: !2181)
!2183 = !DILocation(line: 517, column: 30, scope: !2181)
!2184 = !DILocation(line: 517, column: 22, scope: !2181)
!2185 = !DILocation(line: 517, column: 11, scope: !2147)
!2186 = !DILocation(line: 518, column: 4, scope: !2181)
!2187 = !DILocation(line: 0, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 523, column: 6)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !3, line: 522, column: 7)
!2190 = distinct !DILexicalBlock(scope: !2147, file: !3, line: 522, column: 7)
!2191 = !DILocation(line: 522, column: 12, scope: !2190)
!2192 = !DILocation(line: 0, scope: !2190)
!2193 = !DILocation(line: 522, column: 48, scope: !2189)
!2194 = !DILocation(line: 522, column: 7, scope: !2190)
!2195 = !DILocation(line: 523, column: 6, scope: !2188)
!2196 = !DILocation(line: 523, column: 26, scope: !2188)
!2197 = !DILocation(line: 523, column: 23, scope: !2188)
!2198 = !DILocation(line: 523, column: 6, scope: !2189)
!2199 = !DILocation(line: 526, column: 18, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !3, line: 526, column: 10)
!2201 = distinct !DILexicalBlock(scope: !2188, file: !3, line: 524, column: 4)
!2202 = !DILocation(line: 526, column: 10, scope: !2200)
!2203 = !DILocation(line: 526, column: 10, scope: !2201)
!2204 = !DILocation(line: 527, column: 8, scope: !2200)
!2205 = !DILocation(line: 530, column: 11, scope: !2201)
!2206 = !DILocation(line: 530, column: 9, scope: !2201)
!2207 = !DILocation(line: 531, column: 6, scope: !2201)
!2208 = !DILocation(line: 522, column: 58, scope: !2189)
!2209 = !DILocation(line: 522, column: 7, scope: !2189)
!2210 = distinct !{!2210, !2194, !2211}
!2211 = !DILocation(line: 532, column: 4, scope: !2190)
!2212 = !DILocation(line: 0, scope: !2151)
!2213 = !DILocation(line: 537, column: 8, scope: !2153)
!2214 = !DILocation(line: 0, scope: !2153)
!2215 = !DILocation(line: 537, column: 44, scope: !2152)
!2216 = !DILocation(line: 537, column: 3, scope: !2153)
!2217 = !DILocation(line: 538, column: 9, scope: !2151)
!2218 = !DILocation(line: 538, column: 29, scope: !2151)
!2219 = !DILocation(line: 538, column: 26, scope: !2151)
!2220 = !DILocation(line: 538, column: 9, scope: !2152)
!2221 = !DILocation(line: 540, column: 17, scope: !2150)
!2222 = !DILocation(line: 0, scope: !2150)
!2223 = !DILocation(line: 541, column: 7, scope: !2150)
!2224 = !DILocation(line: 541, column: 5, scope: !2150)
!2225 = !DILocation(line: 545, column: 6, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 545, column: 6)
!2227 = !DILocation(line: 545, column: 6, scope: !2150)
!2228 = !DILocation(line: 547, column: 18, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !3, line: 547, column: 10)
!2230 = distinct !DILexicalBlock(scope: !2226, file: !3, line: 546, column: 4)
!2231 = !DILocation(line: 548, column: 4, scope: !2229)
!2232 = !DILocation(line: 547, column: 10, scope: !2229)
!2233 = !DILocation(line: 548, column: 34, scope: !2229)
!2234 = !DILocation(line: 547, column: 10, scope: !2230)
!2235 = !DILocation(line: 549, column: 8, scope: !2229)
!2236 = !DILocation(line: 556, column: 23, scope: !2150)
!2237 = !DILocation(line: 557, column: 9, scope: !2150)
!2238 = !DILocation(line: 556, column: 9, scope: !2150)
!2239 = !DILocation(line: 556, column: 2, scope: !2150)
!2240 = !DILocation(line: 537, column: 54, scope: !2152)
!2241 = !DILocation(line: 537, column: 3, scope: !2152)
!2242 = distinct !{!2242, !2216, !2243}
!2243 = !DILocation(line: 558, column: 7, scope: !2153)
!2244 = !DILocation(line: 561, column: 7, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2138, file: !3, line: 561, column: 7)
!2246 = !DILocation(line: 561, column: 7, scope: !2138)
!2247 = !DILocation(line: 565, column: 7, scope: !2156)
!2248 = !DILocation(line: 565, column: 7, scope: !2138)
!2249 = !DILocation(line: 567, column: 28, scope: !2155)
!2250 = !DILocation(line: 0, scope: !2155)
!2251 = !DILocation(line: 568, column: 21, scope: !2155)
!2252 = !DILocation(line: 568, column: 63, scope: !2155)
!2253 = !DILocation(line: 570, column: 24, scope: !2155)
!2254 = !DILocation(line: 571, column: 21, scope: !2155)
!2255 = !DILocation(line: 573, column: 32, scope: !2155)
!2256 = !DILocation(line: 575, column: 7, scope: !2155)
!2257 = !DILocation(line: 576, column: 23, scope: !2155)
!2258 = !DILocation(line: 576, column: 40, scope: !2155)
!2259 = !DILocation(line: 576, column: 7, scope: !2155)
!2260 = !DILocation(line: 578, column: 33, scope: !2155)
!2261 = !DILocation(line: 578, column: 14, scope: !2155)
!2262 = !DILocation(line: 583, column: 1, scope: !2138)
!2263 = distinct !DISubprogram(name: "push_visibility", scope: !3, file: !3, line: 599, type: !2264, scopeLine: 600, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2266)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{null, !667, !560}
!2266 = !{!2267, !2268}
!2267 = !DILocalVariable(name: "str", arg: 1, scope: !2263, file: !3, line: 599, type: !667)
!2268 = !DILocalVariable(name: "kind", arg: 2, scope: !2263, file: !3, line: 599, type: !560)
!2269 = !DILocation(line: 0, scope: !2263)
!2270 = !DILocation(line: 601, column: 3, scope: !2263)
!2271 = !DILocation(line: 603, column: 8, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2263, file: !3, line: 603, column: 7)
!2273 = !DILocation(line: 603, column: 7, scope: !2263)
!2274 = !DILocation(line: 604, column: 24, scope: !2272)
!2275 = !DILocation(line: 604, column: 5, scope: !2272)
!2276 = !DILocation(line: 605, column: 13, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2272, file: !3, line: 605, column: 12)
!2278 = !DILocation(line: 605, column: 12, scope: !2272)
!2279 = !DILocation(line: 606, column: 24, scope: !2277)
!2280 = !DILocation(line: 606, column: 5, scope: !2277)
!2281 = !DILocation(line: 607, column: 13, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2277, file: !3, line: 607, column: 12)
!2283 = !DILocation(line: 607, column: 12, scope: !2277)
!2284 = !DILocation(line: 608, column: 24, scope: !2282)
!2285 = !DILocation(line: 608, column: 5, scope: !2282)
!2286 = !DILocation(line: 609, column: 13, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 609, column: 12)
!2288 = !DILocation(line: 609, column: 12, scope: !2282)
!2289 = !DILocation(line: 610, column: 24, scope: !2287)
!2290 = !DILocation(line: 612, column: 5, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2287, file: !3, line: 612, column: 5)
!2292 = !DILocation(line: 613, column: 31, scope: !2263)
!2293 = !DILocation(line: 614, column: 1, scope: !2263)
!2294 = distinct !DISubprogram(name: "VEC_int_heap_safe_push", scope: !1456, file: !1456, line: 32, type: !2295, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2299)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!1504, !2297, !2298}
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !560)
!2299 = !{!2300, !2301}
!2300 = !DILocalVariable(name: "vec_", arg: 1, scope: !2294, file: !1456, line: 32, type: !2297)
!2301 = !DILocalVariable(name: "obj_", arg: 2, scope: !2294, file: !1456, line: 32, type: !2298)
!2302 = !DILocation(line: 0, scope: !2294)
!2303 = !DILocation(line: 32, column: 1, scope: !2294)
!2304 = distinct !DISubprogram(name: "pop_visibility", scope: !3, file: !3, line: 620, type: !2305, scopeLine: 621, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2307)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!583, !560}
!2307 = !{!2308}
!2308 = !DILocalVariable(name: "kind", arg: 1, scope: !2304, file: !3, line: 620, type: !560)
!2309 = !DILocation(line: 0, scope: !2304)
!2310 = !DILocation(line: 622, column: 8, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2304, file: !3, line: 622, column: 7)
!2312 = !DILocation(line: 622, column: 7, scope: !2304)
!2313 = !DILocation(line: 624, column: 8, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2304, file: !3, line: 624, column: 7)
!2315 = !DILocation(line: 624, column: 33, scope: !2314)
!2316 = !DILocation(line: 624, column: 39, scope: !2314)
!2317 = !DILocation(line: 624, column: 7, scope: !2304)
!2318 = !DILocation(line: 627, column: 33, scope: !2304)
!2319 = !DILocation(line: 627, column: 57, scope: !2304)
!2320 = !DILocation(line: 627, column: 5, scope: !2304)
!2321 = !DILocation(line: 629, column: 7, scope: !2304)
!2322 = !DILocation(line: 629, column: 34, scope: !2304)
!2323 = !DILocation(line: 629, column: 5, scope: !2304)
!2324 = !DILocation(line: 630, column: 3, scope: !2304)
!2325 = !DILocation(line: 631, column: 1, scope: !2304)
!2326 = distinct !DISubprogram(name: "VEC_int_base_length", scope: !1456, file: !1456, line: 31, type: !2327, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2331)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!7, !2329}
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1460)
!2331 = !{!2332}
!2332 = !DILocalVariable(name: "vec_", arg: 1, scope: !2326, file: !1456, line: 31, type: !2329)
!2333 = !DILocation(line: 0, scope: !2326)
!2334 = !DILocation(line: 31, column: 1, scope: !2326)
!2335 = distinct !DISubprogram(name: "VEC_int_base_last", scope: !1456, file: !1456, line: 31, type: !2336, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2338)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!560, !2329}
!2338 = !{!2339}
!2339 = !DILocalVariable(name: "vec_", arg: 1, scope: !2335, file: !1456, line: 31, type: !2329)
!2340 = !DILocation(line: 0, scope: !2335)
!2341 = !DILocation(line: 31, column: 1, scope: !2335)
!2342 = distinct !DISubprogram(name: "VEC_int_base_pop", scope: !1456, file: !1456, line: 31, type: !2343, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2346)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!560, !2345}
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!2346 = !{!2347, !2348}
!2347 = !DILocalVariable(name: "vec_", arg: 1, scope: !2342, file: !1456, line: 31, type: !2345)
!2348 = !DILocalVariable(name: "obj_", scope: !2342, file: !1456, line: 31, type: !560)
!2349 = !DILocation(line: 0, scope: !2342)
!2350 = !DILocation(line: 31, column: 1, scope: !2342)
!2351 = distinct !DISubprogram(name: "mark_valid_location_for_stdc_pragma", scope: !3, file: !3, line: 1032, type: !2352, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2354)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{null, !583}
!2354 = !{!2355}
!2355 = !DILocalVariable(name: "flag", arg: 1, scope: !2351, file: !3, line: 1032, type: !583)
!2356 = !DILocation(line: 0, scope: !2351)
!2357 = !DILocation(line: 1034, column: 34, scope: !2351)
!2358 = !DILocation(line: 1035, column: 1, scope: !2351)
!2359 = distinct !DISubprogram(name: "valid_location_for_stdc_pragma_p", scope: !3, file: !3, line: 1040, type: !2360, scopeLine: 1041, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1578)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!583}
!2362 = !DILocation(line: 1042, column: 10, scope: !2359)
!2363 = !DILocation(line: 1042, column: 3, scope: !2359)
!2364 = distinct !DISubprogram(name: "c_pp_lookup_pragma", scope: !3, file: !3, line: 1174, type: !2365, scopeLine: 1175, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2368)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{null, !7, !2367, !2367}
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!2368 = !{!2369, !2370, !2371, !2372, !2373}
!2369 = !DILocalVariable(name: "id", arg: 1, scope: !2364, file: !3, line: 1174, type: !7)
!2370 = !DILocalVariable(name: "space", arg: 2, scope: !2364, file: !3, line: 1174, type: !2367)
!2371 = !DILocalVariable(name: "name", arg: 3, scope: !2364, file: !3, line: 1174, type: !2367)
!2372 = !DILocalVariable(name: "n_omp_pragmas", scope: !2364, file: !3, line: 1176, type: !2298)
!2373 = !DILocalVariable(name: "i", scope: !2364, file: !3, line: 1177, type: !560)
!2374 = !DILocation(line: 0, scope: !2364)
!2375 = !DILocation(line: 1179, column: 8, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2364, file: !3, line: 1179, column: 3)
!2377 = !DILocation(line: 0, scope: !2376)
!2378 = !DILocation(line: 1179, column: 17, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2376, file: !3, line: 1179, column: 3)
!2380 = !DILocation(line: 1179, column: 3, scope: !2376)
!2381 = !DILocation(line: 1180, column: 24, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2379, file: !3, line: 1180, column: 9)
!2383 = !DILocation(line: 1180, column: 27, scope: !2382)
!2384 = !DILocation(line: 1180, column: 9, scope: !2379)
!2385 = !DILocation(line: 1182, column: 9, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2382, file: !3, line: 1181, column: 7)
!2387 = !DILocation(line: 1183, column: 25, scope: !2386)
!2388 = !DILocation(line: 1183, column: 8, scope: !2386)
!2389 = !DILocation(line: 1184, column: 2, scope: !2386)
!2390 = !DILocation(line: 1179, column: 34, scope: !2379)
!2391 = !DILocation(line: 1179, column: 3, scope: !2379)
!2392 = distinct !{!2392, !2380, !2393}
!2393 = !DILocation(line: 1185, column: 7, scope: !2376)
!2394 = !DILocation(line: 1187, column: 10, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2364, file: !3, line: 1187, column: 7)
!2396 = !DILocation(line: 1188, column: 7, scope: !2395)
!2397 = !DILocation(line: 1189, column: 6, scope: !2395)
!2398 = !DILocation(line: 1189, column: 4, scope: !2395)
!2399 = !DILocation(line: 1188, column: 14, scope: !2395)
!2400 = !DILocation(line: 1187, column: 7, scope: !2364)
!2401 = !DILocation(line: 1191, column: 16, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2395, file: !3, line: 1190, column: 5)
!2403 = !DILocation(line: 1192, column: 35, scope: !2402)
!2404 = !DILocation(line: 1191, column: 14, scope: !2402)
!2405 = !DILocation(line: 1193, column: 15, scope: !2402)
!2406 = !DILocation(line: 1194, column: 34, scope: !2402)
!2407 = !DILocation(line: 1193, column: 13, scope: !2402)
!2408 = !DILocation(line: 1195, column: 7, scope: !2402)
!2409 = !DILocation(line: 1198, column: 3, scope: !2364)
!2410 = !DILocation(line: 1199, column: 1, scope: !2364)
!2411 = distinct !DISubprogram(name: "VEC_pragma_ns_name_base_length", scope: !3, file: !3, line: 1150, type: !2412, scopeLine: 1150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2416)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!7, !2414}
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1472)
!2416 = !{!2417}
!2417 = !DILocalVariable(name: "vec_", arg: 1, scope: !2411, file: !3, line: 1150, type: !2414)
!2418 = !DILocation(line: 0, scope: !2411)
!2419 = !DILocation(line: 1150, column: 1, scope: !2411)
!2420 = distinct !DISubprogram(name: "VEC_pragma_ns_name_base_index", scope: !3, file: !3, line: 1150, type: !2421, scopeLine: 1150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2425)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!2423, !2424, !7}
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!2425 = !{!2426, !2427}
!2426 = !DILocalVariable(name: "vec_", arg: 1, scope: !2420, file: !3, line: 1150, type: !2424)
!2427 = !DILocalVariable(name: "ix_", arg: 2, scope: !2420, file: !3, line: 1150, type: !7)
!2428 = !DILocation(line: 0, scope: !2420)
!2429 = !DILocation(line: 1150, column: 1, scope: !2420)
!2430 = distinct !DISubprogram(name: "c_register_pragma", scope: !3, file: !3, line: 1239, type: !2431, scopeLine: 1240, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2433)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{null, !667, !667, !1496}
!2433 = !{!2434, !2435, !2436}
!2434 = !DILocalVariable(name: "space", arg: 1, scope: !2430, file: !3, line: 1239, type: !667)
!2435 = !DILocalVariable(name: "name", arg: 2, scope: !2430, file: !3, line: 1239, type: !667)
!2436 = !DILocalVariable(name: "handler", arg: 3, scope: !2430, file: !3, line: 1239, type: !1496)
!2437 = !DILocation(line: 0, scope: !2430)
!2438 = !DILocation(line: 1241, column: 3, scope: !2430)
!2439 = !DILocation(line: 1242, column: 1, scope: !2430)
!2440 = distinct !DISubprogram(name: "c_register_pragma_1", scope: !3, file: !3, line: 1205, type: !2441, scopeLine: 1207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2443)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{null, !667, !667, !1496, !583}
!2443 = !{!2444, !2445, !2446, !2447, !2448, !2449}
!2444 = !DILocalVariable(name: "space", arg: 1, scope: !2440, file: !3, line: 1205, type: !667)
!2445 = !DILocalVariable(name: "name", arg: 2, scope: !2440, file: !3, line: 1205, type: !667)
!2446 = !DILocalVariable(name: "handler", arg: 3, scope: !2440, file: !3, line: 1206, type: !1496)
!2447 = !DILocalVariable(name: "allow_expansion", arg: 4, scope: !2440, file: !3, line: 1206, type: !583)
!2448 = !DILocalVariable(name: "id", scope: !2440, file: !3, line: 1208, type: !7)
!2449 = !DILocalVariable(name: "ns_name", scope: !2450, file: !3, line: 1212, type: !1479)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !3, line: 1211, column: 5)
!2451 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 1210, column: 7)
!2452 = !DILocation(line: 0, scope: !2440)
!2453 = !DILocation(line: 1210, column: 7, scope: !2451)
!2454 = !DILocation(line: 1210, column: 7, scope: !2440)
!2455 = !DILocation(line: 1212, column: 7, scope: !2450)
!2456 = !DILocation(line: 1214, column: 12, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2450, file: !3, line: 1214, column: 11)
!2458 = !DILocation(line: 1214, column: 11, scope: !2450)
!2459 = !DILocation(line: 1217, column: 15, scope: !2450)
!2460 = !DILocation(line: 1217, column: 21, scope: !2450)
!2461 = !DILocation(line: 1218, column: 15, scope: !2450)
!2462 = !DILocation(line: 1218, column: 20, scope: !2450)
!2463 = !DILocation(line: 0, scope: !2450)
!2464 = !DILocation(line: 1219, column: 7, scope: !2450)
!2465 = !DILocation(line: 1220, column: 12, scope: !2450)
!2466 = !DILocation(line: 1221, column: 10, scope: !2450)
!2467 = !DILocation(line: 1222, column: 5, scope: !2451)
!2468 = !DILocation(line: 1225, column: 7, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2451, file: !3, line: 1224, column: 5)
!2470 = !DILocation(line: 1226, column: 12, scope: !2469)
!2471 = !DILocation(line: 1227, column: 10, scope: !2469)
!2472 = !DILocation(line: 1231, column: 7, scope: !2469)
!2473 = !DILocation(line: 0, scope: !2451)
!2474 = !DILocation(line: 1234, column: 33, scope: !2440)
!2475 = !DILocation(line: 1234, column: 3, scope: !2440)
!2476 = !DILocation(line: 1236, column: 1, scope: !2440)
!2477 = distinct !DISubprogram(name: "c_register_pragma_with_expansion", scope: !3, file: !3, line: 1245, type: !2431, scopeLine: 1247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2478)
!2478 = !{!2479, !2480, !2481}
!2479 = !DILocalVariable(name: "space", arg: 1, scope: !2477, file: !3, line: 1245, type: !667)
!2480 = !DILocalVariable(name: "name", arg: 2, scope: !2477, file: !3, line: 1245, type: !667)
!2481 = !DILocalVariable(name: "handler", arg: 3, scope: !2477, file: !3, line: 1246, type: !1496)
!2482 = !DILocation(line: 0, scope: !2477)
!2483 = !DILocation(line: 1248, column: 3, scope: !2477)
!2484 = !DILocation(line: 1249, column: 1, scope: !2477)
!2485 = distinct !DISubprogram(name: "c_invoke_pragma_handler", scope: !3, file: !3, line: 1252, type: !2486, scopeLine: 1253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2488)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{null, !7}
!2488 = !{!2489, !2490}
!2489 = !DILocalVariable(name: "id", arg: 1, scope: !2485, file: !3, line: 1252, type: !7)
!2490 = !DILocalVariable(name: "handler", scope: !2485, file: !3, line: 1254, type: !1496)
!2491 = !DILocation(line: 0, scope: !2485)
!2492 = !DILocation(line: 1256, column: 6, scope: !2485)
!2493 = !DILocation(line: 1257, column: 14, scope: !2485)
!2494 = !DILocation(line: 1257, column: 13, scope: !2485)
!2495 = !DILocation(line: 1259, column: 12, scope: !2485)
!2496 = !DILocation(line: 1259, column: 3, scope: !2485)
!2497 = !DILocation(line: 1260, column: 1, scope: !2485)
!2498 = distinct !DISubprogram(name: "VEC_pragma_handler_base_index", scope: !3, file: !3, line: 1139, type: !2499, scopeLine: 1139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2503)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!2501, !2502, !7}
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!2503 = !{!2504, !2505}
!2504 = !DILocalVariable(name: "vec_", arg: 1, scope: !2498, file: !3, line: 1139, type: !2502)
!2505 = !DILocalVariable(name: "ix_", arg: 2, scope: !2498, file: !3, line: 1139, type: !7)
!2506 = !DILocation(line: 0, scope: !2498)
!2507 = !DILocation(line: 1139, column: 1, scope: !2498)
!2508 = distinct !DISubprogram(name: "init_pragma", scope: !3, file: !3, line: 1264, type: !2081, scopeLine: 1265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2509)
!2509 = !{!2510, !2513}
!2510 = !DILocalVariable(name: "n_omp_pragmas", scope: !2511, file: !3, line: 1268, type: !2298)
!2511 = distinct !DILexicalBlock(scope: !2512, file: !3, line: 1267, column: 5)
!2512 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 1266, column: 7)
!2513 = !DILocalVariable(name: "i", scope: !2511, file: !3, line: 1269, type: !560)
!2514 = !DILocation(line: 1266, column: 7, scope: !2512)
!2515 = !DILocation(line: 1266, column: 7, scope: !2508)
!2516 = !DILocation(line: 1271, column: 7, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2511, file: !3, line: 1271, column: 7)
!2518 = !DILocation(line: 0, scope: !2517)
!2519 = !DILocation(line: 0, scope: !2511)
!2520 = !DILocation(line: 1271, column: 21, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2517, file: !3, line: 1271, column: 7)
!2522 = !DILocation(line: 1272, column: 32, scope: !2521)
!2523 = !DILocation(line: 1272, column: 64, scope: !2521)
!2524 = !DILocation(line: 1273, column: 26, scope: !2521)
!2525 = !DILocation(line: 1272, column: 2, scope: !2521)
!2526 = !DILocation(line: 1271, column: 38, scope: !2521)
!2527 = !DILocation(line: 1271, column: 7, scope: !2521)
!2528 = distinct !{!2528, !2516, !2529}
!2529 = !DILocation(line: 1273, column: 40, scope: !2517)
!2530 = !DILocation(line: 1276, column: 8, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 1276, column: 7)
!2532 = !DILocation(line: 1276, column: 7, scope: !2508)
!2533 = !DILocation(line: 1277, column: 35, scope: !2531)
!2534 = !DILocation(line: 1277, column: 5, scope: !2531)
!2535 = !DILocation(line: 1284, column: 3, scope: !2508)
!2536 = !DILocation(line: 1288, column: 3, scope: !2508)
!2537 = !DILocation(line: 1291, column: 3, scope: !2508)
!2538 = !DILocation(line: 1294, column: 3, scope: !2508)
!2539 = !DILocation(line: 1295, column: 3, scope: !2508)
!2540 = !DILocation(line: 1296, column: 3, scope: !2508)
!2541 = !DILocation(line: 1297, column: 3, scope: !2508)
!2542 = !DILocation(line: 1298, column: 3, scope: !2508)
!2543 = !DILocation(line: 1299, column: 3, scope: !2508)
!2544 = !DILocation(line: 1301, column: 3, scope: !2508)
!2545 = !DILocation(line: 1304, column: 3, scope: !2508)
!2546 = !DILocation(line: 1305, column: 3, scope: !2508)
!2547 = !DILocation(line: 1307, column: 3, scope: !2508)
!2548 = !DILocation(line: 1310, column: 3, scope: !2508)
!2549 = !DILocation(line: 1314, column: 3, scope: !2508)
!2550 = !DILocation(line: 1315, column: 1, scope: !2508)
!2551 = !DILocation(line: 0, scope: !454)
!2552 = !DILocation(line: 146, column: 3, scope: !454)
!2553 = !DILocation(line: 151, column: 7, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !454, file: !3, line: 151, column: 7)
!2555 = !DILocation(line: 151, column: 23, scope: !2554)
!2556 = !DILocation(line: 151, column: 7, scope: !454)
!2557 = !DILocation(line: 152, column: 5, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2554, file: !3, line: 152, column: 5)
!2559 = !DILocation(line: 154, column: 11, scope: !454)
!2560 = !DILocation(line: 155, column: 7, scope: !454)
!2561 = !DILocation(line: 158, column: 15, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 156, column: 5)
!2563 = !DILocation(line: 159, column: 5, scope: !2562)
!2564 = !DILocation(line: 162, column: 11, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2566, file: !3, line: 162, column: 11)
!2566 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 161, column: 5)
!2567 = !DILocation(line: 162, column: 25, scope: !2565)
!2568 = !DILocation(line: 162, column: 11, scope: !2566)
!2569 = !DILocation(line: 163, column: 2, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2565, file: !3, line: 163, column: 2)
!2571 = !DILocation(line: 164, column: 15, scope: !2566)
!2572 = !DILocation(line: 166, column: 11, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2566, file: !3, line: 166, column: 11)
!2574 = !DILocation(line: 166, column: 27, scope: !2573)
!2575 = !DILocation(line: 166, column: 11, scope: !2566)
!2576 = !DILocation(line: 167, column: 2, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2573, file: !3, line: 167, column: 2)
!2578 = !DILocation(line: 177, column: 24, scope: !1394)
!2579 = !DILocation(line: 0, scope: !1394)
!2580 = !DILocation(line: 178, column: 12, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 178, column: 11)
!2582 = !DILocation(line: 178, column: 11, scope: !1394)
!2583 = !DILocation(line: 180, column: 17, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 180, column: 16)
!2585 = !DILocation(line: 180, column: 16, scope: !2581)
!2586 = !DILocation(line: 183, column: 2, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2584, file: !3, line: 183, column: 2)
!2588 = !DILocation(line: 0, scope: !2581)
!2589 = !DILocation(line: 0, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 194, column: 12)
!2591 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 193, column: 6)
!2592 = distinct !DILexicalBlock(scope: !2593, file: !3, line: 192, column: 13)
!2593 = distinct !DILexicalBlock(scope: !2594, file: !3, line: 188, column: 8)
!2594 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 186, column: 2)
!2595 = !DILocation(line: 185, column: 7, scope: !1394)
!2596 = !DILocation(line: 181, column: 9, scope: !2584)
!2597 = !DILocation(line: 147, column: 7, scope: !454)
!2598 = !DILocation(line: 185, column: 23, scope: !1394)
!2599 = !DILocation(line: 187, column: 12, scope: !2594)
!2600 = !DILocation(line: 188, column: 14, scope: !2593)
!2601 = !DILocation(line: 188, column: 32, scope: !2593)
!2602 = !DILocation(line: 188, column: 26, scope: !2593)
!2603 = !DILocation(line: 190, column: 13, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2593, file: !3, line: 189, column: 6)
!2605 = !DILocation(line: 191, column: 6, scope: !2604)
!2606 = !DILocation(line: 192, column: 19, scope: !2592)
!2607 = !DILocation(line: 192, column: 43, scope: !2592)
!2608 = !DILocation(line: 192, column: 33, scope: !2592)
!2609 = !DILocation(line: 192, column: 60, scope: !2592)
!2610 = !DILocation(line: 194, column: 12, scope: !2590)
!2611 = !DILocation(line: 194, column: 26, scope: !2590)
!2612 = !DILocation(line: 194, column: 12, scope: !2591)
!2613 = !DILocation(line: 195, column: 3, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 195, column: 3)
!2615 = !DILocation(line: 196, column: 16, scope: !2591)
!2616 = !DILocation(line: 197, column: 18, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 197, column: 12)
!2618 = !DILocation(line: 197, column: 12, scope: !2591)
!2619 = !DILocation(line: 201, column: 6, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2621, file: !3, line: 201, column: 6)
!2621 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 201, column: 6)
!2622 = !DILocation(line: 201, column: 6, scope: !2621)
!2623 = !DILocation(line: 201, column: 6, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2620, file: !3, line: 201, column: 6)
!2625 = !DILocation(line: 201, column: 6, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2620, file: !3, line: 201, column: 6)
!2627 = distinct !{!2627, !2595, !2628}
!2628 = !DILocation(line: 202, column: 2, scope: !1394)
!2629 = !DILocation(line: 205, column: 2, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2631, file: !3, line: 205, column: 2)
!2631 = distinct !DILexicalBlock(scope: !2632, file: !3, line: 205, column: 2)
!2632 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 204, column: 11)
!2633 = !DILocation(line: 205, column: 2, scope: !2631)
!2634 = !DILocation(line: 205, column: 2, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2630, file: !3, line: 205, column: 2)
!2636 = !DILocation(line: 205, column: 2, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2630, file: !3, line: 205, column: 2)
!2638 = !DILocation(line: 146, column: 11, scope: !454)
!2639 = !DILocation(line: 209, column: 5, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 209, column: 5)
!2641 = !DILocation(line: 0, scope: !1397)
!2642 = !DILocation(line: 211, column: 7, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !454, file: !3, line: 211, column: 7)
!2644 = !DILocation(line: 211, column: 23, scope: !2643)
!2645 = !DILocation(line: 211, column: 7, scope: !454)
!2646 = !DILocation(line: 212, column: 5, scope: !2643)
!2647 = !DILocation(line: 214, column: 7, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !454, file: !3, line: 214, column: 7)
!2649 = !DILocation(line: 214, column: 7, scope: !454)
!2650 = !DILocation(line: 215, column: 5, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2648, file: !3, line: 215, column: 5)
!2652 = !DILocation(line: 217, column: 14, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !454, file: !3, line: 217, column: 7)
!2654 = !DILocation(line: 217, column: 7, scope: !454)
!2655 = !DILocation(line: 218, column: 5, scope: !2653)
!2656 = !DILocation(line: 226, column: 8, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2653, file: !3, line: 219, column: 7)
!2658 = !DILocation(line: 227, column: 2, scope: !2657)
!2659 = !DILocation(line: 229, column: 13, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2657, file: !3, line: 229, column: 6)
!2661 = !DILocation(line: 229, column: 6, scope: !2657)
!2662 = !DILocation(line: 231, column: 14, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2660, file: !3, line: 230, column: 4)
!2664 = !DILocation(line: 232, column: 6, scope: !2663)
!2665 = !DILocation(line: 235, column: 2, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2657, file: !3, line: 235, column: 2)
!2667 = !DILocation(line: 238, column: 3, scope: !454)
!2668 = !DILocation(line: 240, column: 17, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !454, file: !3, line: 239, column: 5)
!2670 = !DILocation(line: 240, column: 48, scope: !2669)
!2671 = !DILocation(line: 241, column: 17, scope: !2669)
!2672 = !DILocation(line: 241, column: 48, scope: !2669)
!2673 = !DILocation(line: 242, column: 17, scope: !2669)
!2674 = !DILocation(line: 242, column: 44, scope: !2669)
!2675 = !DILocation(line: 244, column: 1, scope: !454)
!2676 = distinct !DISubprogram(name: "handle_pragma_weak", scope: !3, file: !3, line: 335, type: !455, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2677)
!2677 = !{!2678, !2679, !2680, !2681, !2682, !2683}
!2678 = !DILocalVariable(name: "dummy", arg: 1, scope: !2676, file: !3, line: 335, type: !457)
!2679 = !DILocalVariable(name: "name", scope: !2676, file: !3, line: 337, type: !464)
!2680 = !DILocalVariable(name: "value", scope: !2676, file: !3, line: 337, type: !464)
!2681 = !DILocalVariable(name: "x", scope: !2676, file: !3, line: 337, type: !464)
!2682 = !DILocalVariable(name: "decl", scope: !2676, file: !3, line: 337, type: !464)
!2683 = !DILocalVariable(name: "t", scope: !2676, file: !3, line: 338, type: !372)
!2684 = !DILocation(line: 0, scope: !2676)
!2685 = !DILocation(line: 337, column: 3, scope: !2676)
!2686 = !DILocation(line: 340, column: 9, scope: !2676)
!2687 = !DILocation(line: 342, column: 7, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2676, file: !3, line: 342, column: 7)
!2689 = !DILocation(line: 342, column: 26, scope: !2688)
!2690 = !DILocation(line: 342, column: 7, scope: !2676)
!2691 = !DILocation(line: 343, column: 5, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2688, file: !3, line: 343, column: 5)
!2693 = !DILocation(line: 344, column: 7, scope: !2676)
!2694 = !DILocation(line: 345, column: 9, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2676, file: !3, line: 345, column: 7)
!2696 = !DILocation(line: 345, column: 7, scope: !2676)
!2697 = !DILocation(line: 347, column: 11, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2699, file: !3, line: 347, column: 11)
!2699 = distinct !DILexicalBlock(scope: !2695, file: !3, line: 346, column: 5)
!2700 = !DILocation(line: 347, column: 31, scope: !2698)
!2701 = !DILocation(line: 347, column: 11, scope: !2699)
!2702 = !DILocation(line: 348, column: 2, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 348, column: 2)
!2704 = !DILocation(line: 349, column: 11, scope: !2699)
!2705 = !DILocation(line: 350, column: 5, scope: !2699)
!2706 = !DILocation(line: 351, column: 9, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2676, file: !3, line: 351, column: 7)
!2708 = !DILocation(line: 351, column: 7, scope: !2676)
!2709 = !DILocation(line: 352, column: 5, scope: !2707)
!2710 = !DILocation(line: 354, column: 35, scope: !2676)
!2711 = !DILocation(line: 354, column: 10, scope: !2676)
!2712 = !DILocation(line: 355, column: 7, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2676, file: !3, line: 355, column: 7)
!2714 = !DILocation(line: 355, column: 12, scope: !2713)
!2715 = !DILocation(line: 355, column: 15, scope: !2713)
!2716 = !DILocation(line: 355, column: 7, scope: !2676)
!2717 = !DILocation(line: 357, column: 32, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2713, file: !3, line: 356, column: 5)
!2719 = !DILocation(line: 357, column: 7, scope: !2718)
!2720 = !DILocation(line: 358, column: 11, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 358, column: 11)
!2722 = !DILocation(line: 358, column: 11, scope: !2718)
!2723 = !DILocation(line: 359, column: 2, scope: !2721)
!2724 = !DILocation(line: 362, column: 21, scope: !2713)
!2725 = !DILocation(line: 362, column: 19, scope: !2713)
!2726 = !DILocation(line: 363, column: 1, scope: !2676)
!2727 = !DILocation(line: 0, scope: !1403)
!2728 = !DILocation(line: 640, column: 3, scope: !1403)
!2729 = !DILocation(line: 644, column: 11, scope: !1403)
!2730 = !DILocation(line: 645, column: 13, scope: !1411)
!2731 = !DILocation(line: 645, column: 7, scope: !1403)
!2732 = !DILocation(line: 647, column: 24, scope: !1410)
!2733 = !DILocation(line: 0, scope: !1410)
!2734 = !DILocation(line: 648, column: 12, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !1410, file: !3, line: 648, column: 11)
!2736 = !DILocation(line: 648, column: 11, scope: !1410)
!2737 = !DILocation(line: 650, column: 17, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2735, file: !3, line: 650, column: 16)
!2739 = !DILocation(line: 650, column: 16, scope: !2735)
!2740 = !DILocation(line: 642, column: 27, scope: !1403)
!2741 = !DILocation(line: 653, column: 11, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 653, column: 7)
!2743 = !DILocation(line: 653, column: 7, scope: !1403)
!2744 = !DILocation(line: 654, column: 5, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2742, file: !3, line: 654, column: 5)
!2746 = !DILocation(line: 657, column: 15, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2748, file: !3, line: 657, column: 11)
!2748 = distinct !DILexicalBlock(scope: !2742, file: !3, line: 656, column: 5)
!2749 = !DILocation(line: 657, column: 11, scope: !2748)
!2750 = !DILocation(line: 659, column: 10, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2752, file: !3, line: 659, column: 8)
!2752 = distinct !DILexicalBlock(scope: !2747, file: !3, line: 658, column: 2)
!2753 = !DILocation(line: 659, column: 8, scope: !2752)
!2754 = !DILocation(line: 660, column: 6, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2751, file: !3, line: 660, column: 6)
!2756 = !DILocation(line: 664, column: 8, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2758, file: !3, line: 664, column: 8)
!2758 = distinct !DILexicalBlock(scope: !2747, file: !3, line: 663, column: 2)
!2759 = !DILocation(line: 664, column: 24, scope: !2757)
!2760 = !DILocation(line: 664, column: 8, scope: !2758)
!2761 = !DILocation(line: 665, column: 6, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2757, file: !3, line: 665, column: 6)
!2763 = !DILocation(line: 666, column: 12, scope: !2758)
!2764 = !DILocation(line: 667, column: 14, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2758, file: !3, line: 667, column: 8)
!2766 = !DILocation(line: 667, column: 8, scope: !2758)
!2767 = !DILocation(line: 668, column: 6, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2765, file: !3, line: 668, column: 6)
!2769 = !DILocation(line: 670, column: 23, scope: !2765)
!2770 = !DILocation(line: 670, column: 6, scope: !2765)
!2771 = !DILocation(line: 671, column: 8, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2758, file: !3, line: 671, column: 8)
!2773 = !DILocation(line: 671, column: 24, scope: !2772)
!2774 = !DILocation(line: 671, column: 8, scope: !2758)
!2775 = !DILocation(line: 672, column: 6, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2772, file: !3, line: 672, column: 6)
!2777 = !DILocation(line: 675, column: 7, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 675, column: 7)
!2779 = !DILocation(line: 675, column: 23, scope: !2778)
!2780 = !DILocation(line: 675, column: 7, scope: !1403)
!2781 = !DILocation(line: 676, column: 5, scope: !2778)
!2782 = !DILocation(line: 677, column: 1, scope: !1403)
!2783 = distinct !DISubprogram(name: "handle_pragma_diagnostic", scope: !3, file: !3, line: 682, type: !455, scopeLine: 683, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2784)
!2784 = !{!2785, !2786, !2787, !2788, !2789, !2790, !2792}
!2785 = !DILocalVariable(name: "dummy", arg: 1, scope: !2783, file: !3, line: 682, type: !457)
!2786 = !DILocalVariable(name: "kind_string", scope: !2783, file: !3, line: 684, type: !667)
!2787 = !DILocalVariable(name: "option_string", scope: !2783, file: !3, line: 684, type: !667)
!2788 = !DILocalVariable(name: "option_index", scope: !2783, file: !3, line: 685, type: !7)
!2789 = !DILocalVariable(name: "token", scope: !2783, file: !3, line: 686, type: !372)
!2790 = !DILocalVariable(name: "kind", scope: !2783, file: !3, line: 687, type: !2791)
!2791 = !DIDerivedType(tag: DW_TAG_typedef, name: "diagnostic_t", file: !1415, line: 35, baseType: !1414)
!2792 = !DILocalVariable(name: "x", scope: !2783, file: !3, line: 688, type: !464)
!2793 = !DILocation(line: 0, scope: !2783)
!2794 = !DILocation(line: 688, column: 3, scope: !2783)
!2795 = !DILocation(line: 690, column: 7, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2783, file: !3, line: 690, column: 7)
!2797 = !DILocation(line: 690, column: 7, scope: !2783)
!2798 = !DILocation(line: 692, column: 7, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2796, file: !3, line: 691, column: 5)
!2800 = !DILocation(line: 693, column: 7, scope: !2799)
!2801 = !DILocation(line: 696, column: 11, scope: !2783)
!2802 = !DILocation(line: 697, column: 13, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2783, file: !3, line: 697, column: 7)
!2804 = !DILocation(line: 697, column: 7, scope: !2783)
!2805 = !DILocation(line: 698, column: 5, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2803, file: !3, line: 698, column: 5)
!2807 = !DILocation(line: 699, column: 17, scope: !2783)
!2808 = !DILocation(line: 700, column: 7, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2783, file: !3, line: 700, column: 7)
!2810 = !DILocation(line: 700, column: 37, scope: !2809)
!2811 = !DILocation(line: 700, column: 7, scope: !2783)
!2812 = !DILocation(line: 702, column: 12, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2809, file: !3, line: 702, column: 12)
!2814 = !DILocation(line: 702, column: 44, scope: !2813)
!2815 = !DILocation(line: 702, column: 12, scope: !2809)
!2816 = !DILocation(line: 704, column: 12, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2813, file: !3, line: 704, column: 12)
!2818 = !DILocation(line: 704, column: 44, scope: !2817)
!2819 = !DILocation(line: 704, column: 12, scope: !2813)
!2820 = !DILocation(line: 707, column: 5, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2817, file: !3, line: 707, column: 5)
!2822 = !DILocation(line: 0, scope: !2809)
!2823 = !DILocation(line: 709, column: 11, scope: !2783)
!2824 = !DILocation(line: 710, column: 13, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2783, file: !3, line: 710, column: 7)
!2826 = !DILocation(line: 710, column: 7, scope: !2783)
!2827 = !DILocation(line: 711, column: 5, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2825, file: !3, line: 711, column: 5)
!2829 = !DILocation(line: 712, column: 19, scope: !2783)
!2830 = !DILocation(line: 0, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2832, file: !3, line: 713, column: 3)
!2832 = distinct !DILexicalBlock(scope: !2783, file: !3, line: 713, column: 3)
!2833 = !DILocation(line: 713, column: 39, scope: !2831)
!2834 = !DILocation(line: 713, column: 8, scope: !2832)
!2835 = !DILocation(line: 0, scope: !2832)
!2836 = !DILocation(line: 713, column: 3, scope: !2832)
!2837 = !DILocation(line: 714, column: 42, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2831, file: !3, line: 714, column: 9)
!2839 = !DILocation(line: 714, column: 9, scope: !2838)
!2840 = !DILocation(line: 714, column: 67, scope: !2838)
!2841 = !DILocation(line: 714, column: 9, scope: !2831)
!2842 = !DILocation(line: 717, column: 34, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2838, file: !3, line: 715, column: 7)
!2844 = !DILocation(line: 717, column: 2, scope: !2843)
!2845 = !DILocation(line: 719, column: 31, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2843, file: !3, line: 719, column: 6)
!2847 = !DILocation(line: 719, column: 40, scope: !2846)
!2848 = !DILocation(line: 720, column: 6, scope: !2846)
!2849 = !DILocation(line: 720, column: 34, scope: !2846)
!2850 = !DILocation(line: 720, column: 9, scope: !2846)
!2851 = !DILocation(line: 721, column: 14, scope: !2846)
!2852 = !DILocation(line: 721, column: 6, scope: !2846)
!2853 = !DILocation(line: 722, column: 49, scope: !2846)
!2854 = !DILocation(line: 722, column: 6, scope: !2846)
!2855 = !DILocation(line: 713, column: 71, scope: !2831)
!2856 = !DILocation(line: 713, column: 3, scope: !2831)
!2857 = distinct !{!2857, !2836, !2858}
!2858 = !DILocation(line: 724, column: 7, scope: !2832)
!2859 = !DILocation(line: 725, column: 3, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2783, file: !3, line: 725, column: 3)
!2861 = !DILocation(line: 726, column: 1, scope: !2783)
!2862 = distinct !DISubprogram(name: "handle_pragma_target", scope: !3, file: !3, line: 730, type: !455, scopeLine: 731, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2863)
!2863 = !{!2864, !2865, !2866, !2867, !2868}
!2864 = !DILocalVariable(name: "dummy", arg: 1, scope: !2862, file: !3, line: 730, type: !457)
!2865 = !DILocalVariable(name: "token", scope: !2862, file: !3, line: 732, type: !372)
!2866 = !DILocalVariable(name: "x", scope: !2862, file: !3, line: 733, type: !464)
!2867 = !DILocalVariable(name: "close_paren_needed_p", scope: !2862, file: !3, line: 734, type: !583)
!2868 = !DILocalVariable(name: "args", scope: !2869, file: !3, line: 758, type: !464)
!2869 = distinct !DILexicalBlock(scope: !2870, file: !3, line: 757, column: 5)
!2870 = distinct !DILexicalBlock(scope: !2862, file: !3, line: 749, column: 7)
!2871 = !DILocation(line: 0, scope: !2862)
!2872 = !DILocation(line: 733, column: 3, scope: !2862)
!2873 = !DILocation(line: 736, column: 7, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2862, file: !3, line: 736, column: 7)
!2875 = !DILocation(line: 736, column: 7, scope: !2862)
!2876 = !DILocation(line: 738, column: 7, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2874, file: !3, line: 737, column: 5)
!2878 = !DILocation(line: 739, column: 7, scope: !2877)
!2879 = !DILocation(line: 742, column: 11, scope: !2862)
!2880 = !DILocation(line: 743, column: 13, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2862, file: !3, line: 743, column: 7)
!2882 = !DILocation(line: 743, column: 7, scope: !2862)
!2883 = !DILocation(line: 746, column: 15, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2881, file: !3, line: 744, column: 5)
!2885 = !DILocation(line: 747, column: 5, scope: !2884)
!2886 = !DILocation(line: 749, column: 13, scope: !2870)
!2887 = !DILocation(line: 749, column: 7, scope: !2862)
!2888 = !DILocation(line: 0, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2890, file: !3, line: 764, column: 8)
!2890 = distinct !DILexicalBlock(scope: !2869, file: !3, line: 761, column: 2)
!2891 = !DILocation(line: 764, column: 8, scope: !2890)
!2892 = !DILocation(line: 751, column: 7, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2894, file: !3, line: 751, column: 7)
!2894 = distinct !DILexicalBlock(scope: !2870, file: !3, line: 750, column: 5)
!2895 = !DILocation(line: 0, scope: !2869)
!2896 = !DILocation(line: 764, column: 8, scope: !2889)
!2897 = !DILocation(line: 764, column: 31, scope: !2889)
!2898 = !DILocation(line: 765, column: 13, scope: !2889)
!2899 = !DILocation(line: 765, column: 6, scope: !2889)
!2900 = !DILocation(line: 767, column: 12, scope: !2890)
!2901 = !DILocation(line: 768, column: 4, scope: !2890)
!2902 = !DILocation(line: 0, scope: !2890)
!2903 = !DILocation(line: 769, column: 14, scope: !2890)
!2904 = distinct !{!2904, !2901, !2905}
!2905 = !DILocation(line: 769, column: 28, scope: !2890)
!2906 = !DILocation(line: 773, column: 11, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2869, file: !3, line: 773, column: 11)
!2908 = !DILocation(line: 773, column: 11, scope: !2869)
!2909 = !DILocation(line: 775, column: 14, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2911, file: !3, line: 775, column: 8)
!2911 = distinct !DILexicalBlock(scope: !2907, file: !3, line: 774, column: 2)
!2912 = !DILocation(line: 775, column: 8, scope: !2911)
!2913 = !DILocation(line: 776, column: 14, scope: !2910)
!2914 = !DILocation(line: 780, column: 2, scope: !2911)
!2915 = !DILocation(line: 778, column: 6, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2910, file: !3, line: 778, column: 6)
!2917 = !DILocation(line: 782, column: 17, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2869, file: !3, line: 782, column: 11)
!2919 = !DILocation(line: 782, column: 11, scope: !2869)
!2920 = !DILocation(line: 784, column: 4, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2918, file: !3, line: 783, column: 2)
!2922 = !DILocation(line: 785, column: 4, scope: !2921)
!2923 = !DILocation(line: 789, column: 14, scope: !2869)
!2924 = !DILocation(line: 791, column: 33, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2869, file: !3, line: 791, column: 11)
!2926 = !DILocation(line: 791, column: 11, scope: !2925)
!2927 = !DILocation(line: 791, column: 11, scope: !2869)
!2928 = !DILocation(line: 792, column: 24, scope: !2925)
!2929 = !DILocation(line: 792, column: 2, scope: !2925)
!2930 = !DILocation(line: 794, column: 1, scope: !2862)
!2931 = distinct !DISubprogram(name: "handle_pragma_optimize", scope: !3, file: !3, line: 798, type: !455, scopeLine: 799, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2932)
!2932 = !{!2933, !2934, !2935, !2936, !2937, !2938}
!2933 = !DILocalVariable(name: "dummy", arg: 1, scope: !2931, file: !3, line: 798, type: !457)
!2934 = !DILocalVariable(name: "token", scope: !2931, file: !3, line: 800, type: !372)
!2935 = !DILocalVariable(name: "x", scope: !2931, file: !3, line: 801, type: !464)
!2936 = !DILocalVariable(name: "close_paren_needed_p", scope: !2931, file: !3, line: 802, type: !583)
!2937 = !DILocalVariable(name: "optimization_previous_node", scope: !2931, file: !3, line: 803, type: !464)
!2938 = !DILocalVariable(name: "args", scope: !2939, file: !3, line: 827, type: !464)
!2939 = distinct !DILexicalBlock(scope: !2940, file: !3, line: 826, column: 5)
!2940 = distinct !DILexicalBlock(scope: !2931, file: !3, line: 818, column: 7)
!2941 = !DILocation(line: 0, scope: !2931)
!2942 = !DILocation(line: 801, column: 3, scope: !2931)
!2943 = !DILocation(line: 803, column: 37, scope: !2931)
!2944 = !DILocation(line: 805, column: 7, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2931, file: !3, line: 805, column: 7)
!2946 = !DILocation(line: 805, column: 7, scope: !2931)
!2947 = !DILocation(line: 807, column: 7, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2945, file: !3, line: 806, column: 5)
!2949 = !DILocation(line: 808, column: 7, scope: !2948)
!2950 = !DILocation(line: 811, column: 11, scope: !2931)
!2951 = !DILocation(line: 812, column: 13, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2931, file: !3, line: 812, column: 7)
!2953 = !DILocation(line: 812, column: 7, scope: !2931)
!2954 = !DILocation(line: 815, column: 15, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2952, file: !3, line: 813, column: 5)
!2956 = !DILocation(line: 816, column: 5, scope: !2955)
!2957 = !DILocation(line: 818, column: 27, scope: !2940)
!2958 = !DILocation(line: 820, column: 7, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2960, file: !3, line: 820, column: 7)
!2960 = distinct !DILexicalBlock(scope: !2940, file: !3, line: 819, column: 5)
!2961 = !DILocation(line: 0, scope: !2939)
!2962 = !DILocation(line: 0, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2964, file: !3, line: 832, column: 8)
!2964 = distinct !DILexicalBlock(scope: !2939, file: !3, line: 830, column: 2)
!2965 = !DILocation(line: 829, column: 7, scope: !2939)
!2966 = !DILocation(line: 832, column: 14, scope: !2963)
!2967 = !DILocation(line: 832, column: 28, scope: !2963)
!2968 = !DILocation(line: 833, column: 13, scope: !2963)
!2969 = !DILocation(line: 832, column: 31, scope: !2963)
!2970 = !DILocation(line: 832, column: 54, scope: !2963)
!2971 = !DILocation(line: 832, column: 8, scope: !2964)
!2972 = !DILocation(line: 833, column: 6, scope: !2963)
!2973 = !DILocation(line: 835, column: 12, scope: !2964)
!2974 = !DILocation(line: 836, column: 4, scope: !2964)
!2975 = !DILocation(line: 0, scope: !2964)
!2976 = !DILocation(line: 837, column: 14, scope: !2964)
!2977 = distinct !{!2977, !2974, !2978}
!2978 = !DILocation(line: 837, column: 28, scope: !2964)
!2979 = !DILocation(line: 838, column: 2, scope: !2964)
!2980 = !DILocation(line: 841, column: 11, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2939, file: !3, line: 841, column: 11)
!2982 = !DILocation(line: 841, column: 11, scope: !2939)
!2983 = !DILocation(line: 843, column: 14, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2985, file: !3, line: 843, column: 8)
!2985 = distinct !DILexicalBlock(scope: !2981, file: !3, line: 842, column: 2)
!2986 = !DILocation(line: 843, column: 8, scope: !2985)
!2987 = !DILocation(line: 844, column: 14, scope: !2984)
!2988 = !DILocation(line: 848, column: 2, scope: !2985)
!2989 = !DILocation(line: 846, column: 6, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2984, file: !3, line: 846, column: 6)
!2991 = !DILocation(line: 850, column: 17, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2939, file: !3, line: 850, column: 11)
!2993 = !DILocation(line: 850, column: 11, scope: !2939)
!2994 = !DILocation(line: 852, column: 4, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2992, file: !3, line: 851, column: 2)
!2996 = !DILocation(line: 853, column: 4, scope: !2995)
!2997 = !DILocation(line: 857, column: 14, scope: !2939)
!2998 = !DILocation(line: 859, column: 7, scope: !2939)
!2999 = !DILocation(line: 860, column: 42, scope: !2939)
!3000 = !DILocation(line: 860, column: 33, scope: !2939)
!3001 = !DILocation(line: 860, column: 31, scope: !2939)
!3002 = !DILocation(line: 861, column: 35, scope: !2939)
!3003 = !DILocation(line: 861, column: 33, scope: !2939)
!3004 = !DILocation(line: 862, column: 39, scope: !2939)
!3005 = !DILocation(line: 862, column: 7, scope: !2939)
!3006 = !DILocation(line: 865, column: 5, scope: !2940)
!3007 = !DILocation(line: 866, column: 1, scope: !2931)
!3008 = distinct !DISubprogram(name: "handle_pragma_push_options", scope: !3, file: !3, line: 885, type: !455, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3009)
!3009 = !{!3010, !3011, !3012, !3013}
!3010 = !DILocalVariable(name: "dummy", arg: 1, scope: !3008, file: !3, line: 885, type: !457)
!3011 = !DILocalVariable(name: "token", scope: !3008, file: !3, line: 887, type: !372)
!3012 = !DILocalVariable(name: "x", scope: !3008, file: !3, line: 888, type: !464)
!3013 = !DILocalVariable(name: "p", scope: !3008, file: !3, line: 889, type: !1505)
!3014 = !DILocation(line: 0, scope: !3008)
!3015 = !DILocation(line: 888, column: 3, scope: !3008)
!3016 = !DILocation(line: 888, column: 8, scope: !3008)
!3017 = !DILocation(line: 891, column: 11, scope: !3008)
!3018 = !DILocation(line: 892, column: 13, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3008, file: !3, line: 892, column: 7)
!3020 = !DILocation(line: 892, column: 7, scope: !3008)
!3021 = !DILocation(line: 894, column: 7, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3019, file: !3, line: 893, column: 5)
!3023 = !DILocation(line: 895, column: 7, scope: !3022)
!3024 = !DILocation(line: 898, column: 7, scope: !3008)
!3025 = !DILocation(line: 899, column: 13, scope: !3008)
!3026 = !DILocation(line: 899, column: 11, scope: !3008)
!3027 = !DILocation(line: 900, column: 17, scope: !3008)
!3028 = !DILocation(line: 903, column: 24, scope: !3008)
!3029 = !DILocation(line: 903, column: 6, scope: !3008)
!3030 = !DILocation(line: 903, column: 22, scope: !3008)
!3031 = !DILocation(line: 904, column: 22, scope: !3008)
!3032 = !DILocation(line: 904, column: 6, scope: !3008)
!3033 = !DILocation(line: 904, column: 20, scope: !3008)
!3034 = !DILocation(line: 907, column: 36, scope: !3008)
!3035 = !DILocation(line: 907, column: 25, scope: !3008)
!3036 = !DILocation(line: 907, column: 6, scope: !3008)
!3037 = !DILocation(line: 907, column: 23, scope: !3008)
!3038 = !DILocation(line: 908, column: 34, scope: !3008)
!3039 = !DILocation(line: 908, column: 23, scope: !3008)
!3040 = !DILocation(line: 908, column: 6, scope: !3008)
!3041 = !DILocation(line: 908, column: 21, scope: !3008)
!3042 = !DILocation(line: 909, column: 1, scope: !3008)
!3043 = distinct !DISubprogram(name: "handle_pragma_pop_options", scope: !3, file: !3, line: 915, type: !455, scopeLine: 916, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3044)
!3044 = !{!3045, !3046, !3047, !3048, !3049}
!3045 = !DILocalVariable(name: "dummy", arg: 1, scope: !3043, file: !3, line: 915, type: !457)
!3046 = !DILocalVariable(name: "token", scope: !3043, file: !3, line: 917, type: !372)
!3047 = !DILocalVariable(name: "x", scope: !3043, file: !3, line: 918, type: !464)
!3048 = !DILocalVariable(name: "p", scope: !3043, file: !3, line: 919, type: !1505)
!3049 = !DILocalVariable(name: "old_optimize", scope: !3050, file: !3, line: 947, type: !464)
!3050 = distinct !DILexicalBlock(scope: !3051, file: !3, line: 946, column: 5)
!3051 = distinct !DILexicalBlock(scope: !3043, file: !3, line: 945, column: 7)
!3052 = !DILocation(line: 0, scope: !3043)
!3053 = !DILocation(line: 918, column: 3, scope: !3043)
!3054 = !DILocation(line: 918, column: 8, scope: !3043)
!3055 = !DILocation(line: 921, column: 11, scope: !3043)
!3056 = !DILocation(line: 922, column: 13, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3043, file: !3, line: 922, column: 7)
!3058 = !DILocation(line: 922, column: 7, scope: !3043)
!3059 = !DILocation(line: 924, column: 7, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3057, file: !3, line: 923, column: 5)
!3061 = !DILocation(line: 925, column: 7, scope: !3060)
!3062 = !DILocation(line: 928, column: 9, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3043, file: !3, line: 928, column: 7)
!3064 = !DILocation(line: 928, column: 7, scope: !3043)
!3065 = !DILocation(line: 930, column: 7, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3063, file: !3, line: 929, column: 5)
!3067 = !DILocation(line: 933, column: 7, scope: !3066)
!3068 = !DILocation(line: 937, column: 22, scope: !3043)
!3069 = !DILocation(line: 937, column: 17, scope: !3043)
!3070 = !DILocation(line: 939, column: 10, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3043, file: !3, line: 939, column: 7)
!3072 = !DILocation(line: 939, column: 27, scope: !3071)
!3073 = !DILocation(line: 939, column: 24, scope: !3071)
!3074 = !DILocation(line: 939, column: 7, scope: !3043)
!3075 = !DILocation(line: 941, column: 36, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3071, file: !3, line: 940, column: 5)
!3077 = !DILocation(line: 941, column: 14, scope: !3076)
!3078 = !DILocation(line: 942, column: 39, scope: !3076)
!3079 = !DILocation(line: 942, column: 34, scope: !3076)
!3080 = !DILocation(line: 943, column: 5, scope: !3076)
!3081 = !DILocation(line: 945, column: 10, scope: !3051)
!3082 = !DILocation(line: 945, column: 29, scope: !3051)
!3083 = !DILocation(line: 945, column: 26, scope: !3051)
!3084 = !DILocation(line: 945, column: 7, scope: !3043)
!3085 = !DILocation(line: 0, scope: !3050)
!3086 = !DILocation(line: 948, column: 32, scope: !3050)
!3087 = !DILocation(line: 948, column: 7, scope: !3050)
!3088 = !DILocation(line: 949, column: 39, scope: !3050)
!3089 = !DILocation(line: 950, column: 14, scope: !3050)
!3090 = !DILocation(line: 949, column: 7, scope: !3050)
!3091 = !DILocation(line: 951, column: 38, scope: !3050)
!3092 = !DILocation(line: 951, column: 33, scope: !3050)
!3093 = !DILocation(line: 952, column: 5, scope: !3050)
!3094 = !DILocation(line: 954, column: 30, scope: !3043)
!3095 = !DILocation(line: 954, column: 25, scope: !3043)
!3096 = !DILocation(line: 955, column: 32, scope: !3043)
!3097 = !DILocation(line: 955, column: 27, scope: !3043)
!3098 = !DILocation(line: 956, column: 1, scope: !3043)
!3099 = distinct !DISubprogram(name: "handle_pragma_reset_options", scope: !3, file: !3, line: 962, type: !455, scopeLine: 963, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3100)
!3100 = !{!3101, !3102, !3103, !3104, !3105, !3106}
!3101 = !DILocalVariable(name: "dummy", arg: 1, scope: !3099, file: !3, line: 962, type: !457)
!3102 = !DILocalVariable(name: "token", scope: !3099, file: !3, line: 964, type: !372)
!3103 = !DILocalVariable(name: "x", scope: !3099, file: !3, line: 965, type: !464)
!3104 = !DILocalVariable(name: "new_optimize", scope: !3099, file: !3, line: 966, type: !464)
!3105 = !DILocalVariable(name: "new_target", scope: !3099, file: !3, line: 967, type: !464)
!3106 = !DILocalVariable(name: "old_optimize", scope: !3107, file: !3, line: 984, type: !464)
!3107 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 983, column: 5)
!3108 = distinct !DILexicalBlock(scope: !3099, file: !3, line: 982, column: 7)
!3109 = !DILocation(line: 0, scope: !3099)
!3110 = !DILocation(line: 965, column: 3, scope: !3099)
!3111 = !DILocation(line: 965, column: 8, scope: !3099)
!3112 = !DILocation(line: 966, column: 23, scope: !3099)
!3113 = !DILocation(line: 967, column: 21, scope: !3099)
!3114 = !DILocation(line: 969, column: 11, scope: !3099)
!3115 = !DILocation(line: 970, column: 13, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3099, file: !3, line: 970, column: 7)
!3117 = !DILocation(line: 970, column: 7, scope: !3099)
!3118 = !DILocation(line: 972, column: 7, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3116, file: !3, line: 971, column: 5)
!3120 = !DILocation(line: 973, column: 7, scope: !3119)
!3121 = !DILocation(line: 976, column: 21, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3099, file: !3, line: 976, column: 7)
!3123 = !DILocation(line: 976, column: 18, scope: !3122)
!3124 = !DILocation(line: 976, column: 7, scope: !3099)
!3125 = !DILocation(line: 978, column: 36, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3122, file: !3, line: 977, column: 5)
!3127 = !DILocation(line: 978, column: 14, scope: !3126)
!3128 = !DILocation(line: 979, column: 34, scope: !3126)
!3129 = !DILocation(line: 980, column: 5, scope: !3126)
!3130 = !DILocation(line: 982, column: 23, scope: !3108)
!3131 = !DILocation(line: 982, column: 20, scope: !3108)
!3132 = !DILocation(line: 982, column: 7, scope: !3099)
!3133 = !DILocation(line: 0, scope: !3107)
!3134 = !DILocation(line: 985, column: 32, scope: !3107)
!3135 = !DILocation(line: 985, column: 7, scope: !3107)
!3136 = !DILocation(line: 986, column: 39, scope: !3107)
!3137 = !DILocation(line: 986, column: 7, scope: !3107)
!3138 = !DILocation(line: 987, column: 33, scope: !3107)
!3139 = !DILocation(line: 988, column: 5, scope: !3107)
!3140 = !DILocation(line: 990, column: 25, scope: !3099)
!3141 = !DILocation(line: 991, column: 27, scope: !3099)
!3142 = !DILocation(line: 992, column: 1, scope: !3099)
!3143 = distinct !DISubprogram(name: "handle_pragma_float_const_decimal64", scope: !3, file: !3, line: 1100, type: !455, scopeLine: 1101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3144)
!3144 = !{!3145}
!3145 = !DILocalVariable(name: "dummy", arg: 1, scope: !3143, file: !3, line: 1100, type: !457)
!3146 = !DILocation(line: 0, scope: !3143)
!3147 = !DILocation(line: 1102, column: 7, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3143, file: !3, line: 1102, column: 7)
!3149 = !DILocation(line: 1102, column: 7, scope: !3143)
!3150 = !DILocation(line: 1104, column: 11, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3152, file: !3, line: 1104, column: 11)
!3152 = distinct !DILexicalBlock(scope: !3148, file: !3, line: 1103, column: 5)
!3153 = !DILocation(line: 1104, column: 34, scope: !3151)
!3154 = !DILocation(line: 1104, column: 32, scope: !3151)
!3155 = !DILocation(line: 1104, column: 11, scope: !3152)
!3156 = !DILocation(line: 1105, column: 2, scope: !3151)
!3157 = !DILocation(line: 1111, column: 16, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3143, file: !3, line: 1111, column: 7)
!3159 = !DILocation(line: 1111, column: 8, scope: !3158)
!3160 = !DILocation(line: 1111, column: 7, scope: !3143)
!3161 = !DILocation(line: 1113, column: 11, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3163, file: !3, line: 1113, column: 11)
!3163 = distinct !DILexicalBlock(scope: !3158, file: !3, line: 1112, column: 5)
!3164 = !DILocation(line: 1113, column: 34, scope: !3162)
!3165 = !DILocation(line: 1113, column: 32, scope: !3162)
!3166 = !DILocation(line: 1113, column: 11, scope: !3163)
!3167 = !DILocation(line: 1114, column: 2, scope: !3162)
!3168 = !DILocation(line: 1120, column: 12, scope: !3143)
!3169 = !DILocation(line: 1120, column: 3, scope: !3143)
!3170 = !DILocation(line: 1123, column: 11, scope: !3143)
!3171 = !DILocation(line: 1123, column: 3, scope: !3143)
!3172 = !DILocation(line: 1126, column: 7, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3143, file: !3, line: 1124, column: 5)
!3174 = !DILocation(line: 1127, column: 7, scope: !3173)
!3175 = !DILocation(line: 1130, column: 7, scope: !3173)
!3176 = !DILocation(line: 1131, column: 7, scope: !3173)
!3177 = !DILocation(line: 1135, column: 1, scope: !3143)
!3178 = distinct !DISubprogram(name: "handle_pragma_redefine_extname", scope: !3, file: !3, line: 414, type: !455, scopeLine: 415, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3179)
!3179 = !{!3180, !3181, !3182, !3183, !3184, !3185, !3186}
!3180 = !DILocalVariable(name: "dummy", arg: 1, scope: !3178, file: !3, line: 414, type: !457)
!3181 = !DILocalVariable(name: "oldname", scope: !3178, file: !3, line: 416, type: !464)
!3182 = !DILocalVariable(name: "newname", scope: !3178, file: !3, line: 416, type: !464)
!3183 = !DILocalVariable(name: "decl", scope: !3178, file: !3, line: 416, type: !464)
!3184 = !DILocalVariable(name: "x", scope: !3178, file: !3, line: 416, type: !464)
!3185 = !DILocalVariable(name: "t", scope: !3178, file: !3, line: 417, type: !372)
!3186 = !DILocalVariable(name: "name", scope: !3187, file: !3, line: 436, type: !667)
!3187 = distinct !DILexicalBlock(scope: !3188, file: !3, line: 435, column: 2)
!3188 = distinct !DILexicalBlock(scope: !3189, file: !3, line: 434, column: 11)
!3189 = distinct !DILexicalBlock(scope: !3190, file: !3, line: 433, column: 5)
!3190 = distinct !DILexicalBlock(scope: !3178, file: !3, line: 428, column: 7)
!3191 = !DILocation(line: 0, scope: !3178)
!3192 = !DILocation(line: 416, column: 3, scope: !3178)
!3193 = !DILocation(line: 419, column: 7, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3178, file: !3, line: 419, column: 7)
!3195 = !DILocation(line: 419, column: 29, scope: !3194)
!3196 = !DILocation(line: 419, column: 7, scope: !3178)
!3197 = !DILocation(line: 420, column: 5, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3194, file: !3, line: 420, column: 5)
!3199 = !DILocation(line: 421, column: 7, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3178, file: !3, line: 421, column: 7)
!3201 = !DILocation(line: 421, column: 29, scope: !3200)
!3202 = !DILocation(line: 421, column: 7, scope: !3178)
!3203 = !DILocation(line: 422, column: 5, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3200, file: !3, line: 422, column: 5)
!3205 = !DILocation(line: 423, column: 7, scope: !3178)
!3206 = !DILocation(line: 424, column: 9, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !3178, file: !3, line: 424, column: 7)
!3208 = !DILocation(line: 424, column: 7, scope: !3178)
!3209 = !DILocation(line: 425, column: 5, scope: !3207)
!3210 = !DILocation(line: 427, column: 35, scope: !3178)
!3211 = !DILocation(line: 427, column: 10, scope: !3178)
!3212 = !DILocation(line: 428, column: 7, scope: !3190)
!3213 = !DILocation(line: 429, column: 7, scope: !3190)
!3214 = !DILocation(line: 429, column: 11, scope: !3190)
!3215 = !DILocation(line: 429, column: 30, scope: !3190)
!3216 = !DILocation(line: 429, column: 33, scope: !3190)
!3217 = !DILocation(line: 430, column: 7, scope: !3190)
!3218 = !DILocation(line: 430, column: 28, scope: !3190)
!3219 = !DILocation(line: 431, column: 4, scope: !3190)
!3220 = !DILocation(line: 431, column: 24, scope: !3190)
!3221 = !DILocation(line: 432, column: 7, scope: !3190)
!3222 = !DILocation(line: 432, column: 10, scope: !3190)
!3223 = !DILocation(line: 428, column: 7, scope: !3178)
!3224 = !DILocation(line: 434, column: 11, scope: !3188)
!3225 = !DILocation(line: 434, column: 11, scope: !3189)
!3226 = !DILocation(line: 436, column: 23, scope: !3187)
!3227 = !DILocation(line: 0, scope: !3187)
!3228 = !DILocation(line: 437, column: 19, scope: !3187)
!3229 = !DILocation(line: 437, column: 11, scope: !3187)
!3230 = !DILocation(line: 439, column: 22, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3187, file: !3, line: 439, column: 8)
!3232 = !DILocation(line: 439, column: 8, scope: !3231)
!3233 = !DILocation(line: 439, column: 8, scope: !3187)
!3234 = !DILocation(line: 440, column: 6, scope: !3231)
!3235 = !DILocation(line: 444, column: 36, scope: !3188)
!3236 = !DILocation(line: 444, column: 2, scope: !3188)
!3237 = !DILocation(line: 452, column: 34, scope: !3190)
!3238 = !DILocation(line: 452, column: 43, scope: !3190)
!3239 = !DILocation(line: 452, column: 5, scope: !3190)
!3240 = !DILocation(line: 453, column: 1, scope: !3178)
!3241 = distinct !DISubprogram(name: "handle_pragma_extern_prefix", scope: !3, file: !3, line: 476, type: !455, scopeLine: 477, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3242)
!3242 = !{!3243, !3244, !3245, !3246}
!3243 = !DILocalVariable(name: "dummy", arg: 1, scope: !3241, file: !3, line: 476, type: !457)
!3244 = !DILocalVariable(name: "prefix", scope: !3241, file: !3, line: 478, type: !464)
!3245 = !DILocalVariable(name: "x", scope: !3241, file: !3, line: 478, type: !464)
!3246 = !DILocalVariable(name: "t", scope: !3241, file: !3, line: 479, type: !372)
!3247 = !DILocation(line: 0, scope: !3241)
!3248 = !DILocation(line: 478, column: 3, scope: !3241)
!3249 = !DILocation(line: 481, column: 7, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3241, file: !3, line: 481, column: 7)
!3251 = !DILocation(line: 481, column: 28, scope: !3250)
!3252 = !DILocation(line: 481, column: 7, scope: !3241)
!3253 = !DILocation(line: 482, column: 5, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3250, file: !3, line: 482, column: 5)
!3255 = !DILocation(line: 483, column: 7, scope: !3241)
!3256 = !DILocation(line: 484, column: 9, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3241, file: !3, line: 484, column: 7)
!3258 = !DILocation(line: 484, column: 7, scope: !3241)
!3259 = !DILocation(line: 485, column: 5, scope: !3257)
!3260 = !DILocation(line: 487, column: 15, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3241, file: !3, line: 487, column: 7)
!3262 = !DILocation(line: 487, column: 7, scope: !3261)
!3263 = !DILocation(line: 487, column: 7, scope: !3241)
!3264 = !DILocation(line: 489, column: 29, scope: !3261)
!3265 = !DILocation(line: 489, column: 57, scope: !3261)
!3266 = !DILocation(line: 489, column: 26, scope: !3261)
!3267 = !DILocation(line: 489, column: 5, scope: !3261)
!3268 = !DILocation(line: 490, column: 12, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3261, file: !3, line: 490, column: 12)
!3270 = !DILocation(line: 490, column: 35, scope: !3269)
!3271 = !DILocation(line: 490, column: 33, scope: !3269)
!3272 = !DILocation(line: 490, column: 12, scope: !3261)
!3273 = !DILocation(line: 491, column: 5, scope: !3269)
!3274 = !DILocation(line: 493, column: 1, scope: !3241)
!3275 = distinct !DISubprogram(name: "handle_pragma_message", scope: !3, file: !3, line: 997, type: !455, scopeLine: 998, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3276)
!3276 = !{!3277, !3278, !3279, !3280}
!3277 = !DILocalVariable(name: "dummy", arg: 1, scope: !3275, file: !3, line: 997, type: !457)
!3278 = !DILocalVariable(name: "token", scope: !3275, file: !3, line: 999, type: !372)
!3279 = !DILocalVariable(name: "x", scope: !3275, file: !3, line: 1000, type: !464)
!3280 = !DILocalVariable(name: "message", scope: !3275, file: !3, line: 1000, type: !464)
!3281 = !DILocation(line: 0, scope: !3275)
!3282 = !DILocation(line: 1000, column: 3, scope: !3275)
!3283 = !DILocation(line: 1002, column: 11, scope: !3275)
!3284 = !DILocation(line: 1003, column: 7, scope: !3275)
!3285 = !DILocation(line: 1005, column: 15, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3287, file: !3, line: 1004, column: 5)
!3287 = distinct !DILexicalBlock(scope: !3275, file: !3, line: 1003, column: 7)
!3288 = !DILocation(line: 1006, column: 17, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3286, file: !3, line: 1006, column: 11)
!3290 = !DILocation(line: 1006, column: 11, scope: !3286)
!3291 = !DILocation(line: 1007, column: 19, scope: !3289)
!3292 = !DILocation(line: 1010, column: 11, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3286, file: !3, line: 1010, column: 11)
!3294 = !DILocation(line: 1010, column: 27, scope: !3293)
!3295 = !DILocation(line: 1010, column: 11, scope: !3286)
!3296 = !DILocation(line: 1009, column: 9, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3289, file: !3, line: 1009, column: 9)
!3298 = !DILocation(line: 1011, column: 9, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3293, file: !3, line: 1011, column: 9)
!3300 = !DILocation(line: 1014, column: 15, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3287, file: !3, line: 1013, column: 12)
!3302 = !DILocation(line: 1016, column: 5, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3301, file: !3, line: 1016, column: 5)
!3304 = !DILocation(line: 0, scope: !3287)
!3305 = !DILocation(line: 1018, column: 3, scope: !3275)
!3306 = !DILocation(line: 1020, column: 7, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3275, file: !3, line: 1020, column: 7)
!3308 = !DILocation(line: 1020, column: 23, scope: !3307)
!3309 = !DILocation(line: 1020, column: 7, scope: !3275)
!3310 = !DILocation(line: 1021, column: 5, scope: !3307)
!3311 = !DILocation(line: 1023, column: 7, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3275, file: !3, line: 1023, column: 7)
!3313 = !DILocation(line: 1023, column: 36, scope: !3312)
!3314 = !DILocation(line: 1023, column: 7, scope: !3275)
!3315 = !DILocation(line: 1024, column: 13, scope: !3312)
!3316 = !DILocation(line: 1024, column: 52, scope: !3312)
!3317 = !DILocation(line: 1024, column: 5, scope: !3312)
!3318 = !DILocation(line: 1025, column: 1, scope: !3275)
!3319 = distinct !DISubprogram(name: "gt_ggc_mx_opt_stack", scope: !1510, file: !1510, line: 23, type: !905, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3320)
!3320 = !{!3321, !3322}
!3321 = !DILocalVariable(name: "x_p", arg: 1, scope: !3319, file: !1510, line: 23, type: !907)
!3322 = !DILocalVariable(name: "x", scope: !3319, file: !1510, line: 25, type: !3323)
!3323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1440)
!3324 = !DILocation(line: 0, scope: !3319)
!3325 = !DILocation(line: 26, column: 7, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3319, file: !1510, line: 26, column: 7)
!3327 = !DILocation(line: 26, column: 7, scope: !3319)
!3328 = !DILocation(line: 28, column: 7, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3330, file: !1510, line: 28, column: 7)
!3330 = distinct !DILexicalBlock(scope: !3331, file: !1510, line: 28, column: 7)
!3331 = distinct !DILexicalBlock(scope: !3326, file: !1510, line: 27, column: 5)
!3332 = !DILocation(line: 28, column: 7, scope: !3330)
!3333 = !DILocation(line: 29, column: 7, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3335, file: !1510, line: 29, column: 7)
!3335 = distinct !DILexicalBlock(scope: !3331, file: !1510, line: 29, column: 7)
!3336 = !DILocation(line: 29, column: 7, scope: !3335)
!3337 = !DILocation(line: 30, column: 7, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3339, file: !1510, line: 30, column: 7)
!3339 = distinct !DILexicalBlock(scope: !3331, file: !1510, line: 30, column: 7)
!3340 = !DILocation(line: 30, column: 7, scope: !3339)
!3341 = !DILocation(line: 31, column: 7, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3343, file: !1510, line: 31, column: 7)
!3343 = distinct !DILexicalBlock(scope: !3331, file: !1510, line: 31, column: 7)
!3344 = !DILocation(line: 31, column: 7, scope: !3343)
!3345 = !DILocation(line: 32, column: 7, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3347, file: !1510, line: 32, column: 7)
!3347 = distinct !DILexicalBlock(scope: !3331, file: !1510, line: 32, column: 7)
!3348 = !DILocation(line: 32, column: 7, scope: !3347)
!3349 = !DILocation(line: 34, column: 1, scope: !3319)
!3350 = distinct !DISubprogram(name: "gt_ggc_mx_align_stack", scope: !1510, file: !1510, line: 37, type: !905, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3351)
!3351 = !{!3352, !3353}
!3352 = !DILocalVariable(name: "x_p", arg: 1, scope: !3350, file: !1510, line: 37, type: !907)
!3353 = !DILocalVariable(name: "x", scope: !3350, file: !1510, line: 39, type: !3354)
!3354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1448)
!3355 = !DILocation(line: 43, column: 7, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3357, file: !1510, line: 43, column: 7)
!3357 = distinct !DILexicalBlock(scope: !3358, file: !1510, line: 43, column: 7)
!3358 = distinct !DILexicalBlock(scope: !3359, file: !1510, line: 41, column: 5)
!3359 = distinct !DILexicalBlock(scope: !3350, file: !1510, line: 40, column: 7)
!3360 = !DILocation(line: 0, scope: !3350)
!3361 = !DILocation(line: 40, column: 7, scope: !3359)
!3362 = !DILocation(line: 40, column: 7, scope: !3350)
!3363 = !DILocation(line: 42, column: 7, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3365, file: !1510, line: 42, column: 7)
!3365 = distinct !DILexicalBlock(scope: !3358, file: !1510, line: 42, column: 7)
!3366 = !DILocation(line: 42, column: 7, scope: !3365)
!3367 = !DILocation(line: 43, column: 7, scope: !3357)
!3368 = !DILocation(line: 45, column: 1, scope: !3350)
!3369 = distinct !DISubprogram(name: "gt_pch_nx_opt_stack", scope: !1510, file: !1510, line: 48, type: !905, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3370)
!3370 = !{!3371, !3372}
!3371 = !DILocalVariable(name: "x_p", arg: 1, scope: !3369, file: !1510, line: 48, type: !907)
!3372 = !DILocalVariable(name: "x", scope: !3369, file: !1510, line: 50, type: !3323)
!3373 = !DILocation(line: 0, scope: !3369)
!3374 = !DILocation(line: 51, column: 7, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3369, file: !1510, line: 51, column: 7)
!3376 = !DILocation(line: 51, column: 7, scope: !3369)
!3377 = !DILocation(line: 53, column: 7, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3379, file: !1510, line: 53, column: 7)
!3379 = distinct !DILexicalBlock(scope: !3380, file: !1510, line: 53, column: 7)
!3380 = distinct !DILexicalBlock(scope: !3375, file: !1510, line: 52, column: 5)
!3381 = !DILocation(line: 53, column: 7, scope: !3379)
!3382 = !DILocation(line: 54, column: 7, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3384, file: !1510, line: 54, column: 7)
!3384 = distinct !DILexicalBlock(scope: !3380, file: !1510, line: 54, column: 7)
!3385 = !DILocation(line: 54, column: 7, scope: !3384)
!3386 = !DILocation(line: 55, column: 7, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3388, file: !1510, line: 55, column: 7)
!3388 = distinct !DILexicalBlock(scope: !3380, file: !1510, line: 55, column: 7)
!3389 = !DILocation(line: 55, column: 7, scope: !3388)
!3390 = !DILocation(line: 56, column: 7, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3392, file: !1510, line: 56, column: 7)
!3392 = distinct !DILexicalBlock(scope: !3380, file: !1510, line: 56, column: 7)
!3393 = !DILocation(line: 56, column: 7, scope: !3392)
!3394 = !DILocation(line: 57, column: 7, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3396, file: !1510, line: 57, column: 7)
!3396 = distinct !DILexicalBlock(scope: !3380, file: !1510, line: 57, column: 7)
!3397 = !DILocation(line: 57, column: 7, scope: !3396)
!3398 = !DILocation(line: 59, column: 1, scope: !3369)
!3399 = distinct !DISubprogram(name: "gt_pch_p_9opt_stack", scope: !1510, file: !1510, line: 73, type: !3400, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3403)
!3400 = !DISubroutineType(types: !3401)
!3401 = !{null, !907, !907, !3402, !907}
!3402 = !DIDerivedType(tag: DW_TAG_typedef, name: "gt_pointer_operator", file: !1514, line: 38, baseType: !932)
!3403 = !{!3404, !3405, !3406, !3407, !3408}
!3404 = !DILocalVariable(name: "this_obj", arg: 1, scope: !3399, file: !1510, line: 73, type: !907)
!3405 = !DILocalVariable(name: "x_p", arg: 2, scope: !3399, file: !1510, line: 74, type: !907)
!3406 = !DILocalVariable(name: "op", arg: 3, scope: !3399, file: !1510, line: 75, type: !3402)
!3407 = !DILocalVariable(name: "cookie", arg: 4, scope: !3399, file: !1510, line: 76, type: !907)
!3408 = !DILocalVariable(name: "x", scope: !3399, file: !1510, line: 78, type: !3323)
!3409 = !DILocation(line: 0, scope: !3399)
!3410 = !DILocation(line: 79, column: 19, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3399, file: !1510, line: 79, column: 7)
!3412 = !DILocation(line: 79, column: 7, scope: !3399)
!3413 = !DILocation(line: 80, column: 5, scope: !3411)
!3414 = !DILocation(line: 81, column: 7, scope: !3399)
!3415 = !DILocation(line: 82, column: 16, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3399, file: !1510, line: 81, column: 7)
!3417 = !DILocation(line: 82, column: 5, scope: !3416)
!3418 = !DILocation(line: 83, column: 7, scope: !3399)
!3419 = !DILocation(line: 84, column: 16, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3399, file: !1510, line: 83, column: 7)
!3421 = !DILocation(line: 84, column: 5, scope: !3420)
!3422 = !DILocation(line: 85, column: 7, scope: !3399)
!3423 = !DILocation(line: 86, column: 16, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3399, file: !1510, line: 85, column: 7)
!3425 = !DILocation(line: 86, column: 5, scope: !3424)
!3426 = !DILocation(line: 87, column: 7, scope: !3399)
!3427 = !DILocation(line: 88, column: 16, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3399, file: !1510, line: 87, column: 7)
!3429 = !DILocation(line: 88, column: 5, scope: !3428)
!3430 = !DILocation(line: 89, column: 1, scope: !3399)
!3431 = distinct !DISubprogram(name: "gt_pch_nx_align_stack", scope: !1510, file: !1510, line: 62, type: !905, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3432)
!3432 = !{!3433, !3434}
!3433 = !DILocalVariable(name: "x_p", arg: 1, scope: !3431, file: !1510, line: 62, type: !907)
!3434 = !DILocalVariable(name: "x", scope: !3431, file: !1510, line: 64, type: !3354)
!3435 = !DILocation(line: 68, column: 7, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3437, file: !1510, line: 68, column: 7)
!3437 = distinct !DILexicalBlock(scope: !3438, file: !1510, line: 68, column: 7)
!3438 = distinct !DILexicalBlock(scope: !3439, file: !1510, line: 66, column: 5)
!3439 = distinct !DILexicalBlock(scope: !3431, file: !1510, line: 65, column: 7)
!3440 = !DILocation(line: 0, scope: !3431)
!3441 = !DILocation(line: 65, column: 7, scope: !3439)
!3442 = !DILocation(line: 65, column: 7, scope: !3431)
!3443 = !DILocation(line: 67, column: 7, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3445, file: !1510, line: 67, column: 7)
!3445 = distinct !DILexicalBlock(scope: !3438, file: !1510, line: 67, column: 7)
!3446 = !DILocation(line: 67, column: 7, scope: !3445)
!3447 = !DILocation(line: 68, column: 7, scope: !3437)
!3448 = !DILocation(line: 70, column: 1, scope: !3431)
!3449 = distinct !DISubprogram(name: "gt_pch_p_11align_stack", scope: !1510, file: !1510, line: 92, type: !3400, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3450)
!3450 = !{!3451, !3452, !3453, !3454, !3455}
!3451 = !DILocalVariable(name: "this_obj", arg: 1, scope: !3449, file: !1510, line: 92, type: !907)
!3452 = !DILocalVariable(name: "x_p", arg: 2, scope: !3449, file: !1510, line: 93, type: !907)
!3453 = !DILocalVariable(name: "op", arg: 3, scope: !3449, file: !1510, line: 94, type: !3402)
!3454 = !DILocalVariable(name: "cookie", arg: 4, scope: !3449, file: !1510, line: 95, type: !907)
!3455 = !DILocalVariable(name: "x", scope: !3449, file: !1510, line: 97, type: !3354)
!3456 = !DILocation(line: 0, scope: !3449)
!3457 = !DILocation(line: 98, column: 19, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3449, file: !1510, line: 98, column: 7)
!3459 = !DILocation(line: 98, column: 7, scope: !3449)
!3460 = !DILocation(line: 99, column: 16, scope: !3458)
!3461 = !DILocation(line: 99, column: 5, scope: !3458)
!3462 = !DILocation(line: 100, column: 7, scope: !3449)
!3463 = !DILocation(line: 101, column: 16, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3449, file: !1510, line: 100, column: 7)
!3465 = !DILocation(line: 101, column: 5, scope: !3464)
!3466 = !DILocation(line: 102, column: 1, scope: !3449)
!3467 = distinct !DISubprogram(name: "VEC_int_heap_reserve", scope: !1456, file: !1456, line: 32, type: !3468, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3470)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{!560, !2297, !560}
!3470 = !{!3471, !3472, !3473}
!3471 = !DILocalVariable(name: "vec_", arg: 1, scope: !3467, file: !1456, line: 32, type: !2297)
!3472 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3467, file: !1456, line: 32, type: !560)
!3473 = !DILocalVariable(name: "extend", scope: !3467, file: !1456, line: 32, type: !560)
!3474 = !DILocation(line: 0, scope: !3467)
!3475 = !DILocation(line: 32, column: 1, scope: !3467)
!3476 = !DILocation(line: 32, column: 1, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3467, file: !1456, line: 32, column: 1)
!3478 = distinct !DISubprogram(name: "VEC_int_base_quick_push", scope: !1456, file: !1456, line: 31, type: !3479, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3481)
!3479 = !DISubroutineType(types: !3480)
!3480 = !{!1504, !2345, !560}
!3481 = !{!3482, !3483, !3484}
!3482 = !DILocalVariable(name: "vec_", arg: 1, scope: !3478, file: !1456, line: 31, type: !2345)
!3483 = !DILocalVariable(name: "obj_", arg: 2, scope: !3478, file: !1456, line: 31, type: !560)
!3484 = !DILocalVariable(name: "slot_", scope: !3478, file: !1456, line: 31, type: !1504)
!3485 = !DILocation(line: 0, scope: !3478)
!3486 = !DILocation(line: 31, column: 1, scope: !3478)
!3487 = distinct !DISubprogram(name: "VEC_int_base_space", scope: !1456, file: !1456, line: 31, type: !3488, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3490)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{!560, !2345, !560}
!3490 = !{!3491, !3492}
!3491 = !DILocalVariable(name: "vec_", arg: 1, scope: !3487, file: !1456, line: 31, type: !2345)
!3492 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3487, file: !1456, line: 31, type: !560)
!3493 = !DILocation(line: 0, scope: !3487)
!3494 = !DILocation(line: 31, column: 1, scope: !3487)
!3495 = distinct !DISubprogram(name: "VEC_pragma_ns_name_heap_safe_push", scope: !3, file: !3, line: 1151, type: !3496, scopeLine: 1151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3501)
!3496 = !DISubroutineType(types: !3497)
!3497 = !{!2423, !3498, !3499}
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1479)
!3501 = !{!3502, !3503}
!3502 = !DILocalVariable(name: "vec_", arg: 1, scope: !3495, file: !3, line: 1151, type: !3498)
!3503 = !DILocalVariable(name: "obj_", arg: 2, scope: !3495, file: !3, line: 1151, type: !3499)
!3504 = !DILocation(line: 0, scope: !3495)
!3505 = !DILocation(line: 1151, column: 1, scope: !3495)
!3506 = distinct !DISubprogram(name: "VEC_pragma_handler_heap_safe_push", scope: !3, file: !3, line: 1140, type: !3507, scopeLine: 1140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3512)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!2501, !3509, !3510}
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1496)
!3512 = !{!3513, !3514}
!3513 = !DILocalVariable(name: "vec_", arg: 1, scope: !3506, file: !3, line: 1140, type: !3509)
!3514 = !DILocalVariable(name: "obj_", arg: 2, scope: !3506, file: !3, line: 1140, type: !3510)
!3515 = !DILocation(line: 0, scope: !3506)
!3516 = !DILocation(line: 1140, column: 1, scope: !3506)
!3517 = distinct !DISubprogram(name: "VEC_pragma_handler_base_length", scope: !3, file: !3, line: 1139, type: !3518, scopeLine: 1139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3522)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!7, !3520}
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1489)
!3522 = !{!3523}
!3523 = !DILocalVariable(name: "vec_", arg: 1, scope: !3517, file: !3, line: 1139, type: !3520)
!3524 = !DILocation(line: 0, scope: !3517)
!3525 = !DILocation(line: 1139, column: 1, scope: !3517)
!3526 = distinct !DISubprogram(name: "VEC_pragma_ns_name_heap_reserve", scope: !3, file: !3, line: 1151, type: !3527, scopeLine: 1151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3529)
!3527 = !DISubroutineType(types: !3528)
!3528 = !{!560, !3498, !560}
!3529 = !{!3530, !3531, !3532}
!3530 = !DILocalVariable(name: "vec_", arg: 1, scope: !3526, file: !3, line: 1151, type: !3498)
!3531 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3526, file: !3, line: 1151, type: !560)
!3532 = !DILocalVariable(name: "extend", scope: !3526, file: !3, line: 1151, type: !560)
!3533 = !DILocation(line: 0, scope: !3526)
!3534 = !DILocation(line: 1151, column: 1, scope: !3526)
!3535 = !DILocation(line: 1151, column: 1, scope: !3536)
!3536 = distinct !DILexicalBlock(scope: !3526, file: !3, line: 1151, column: 1)
!3537 = distinct !DISubprogram(name: "VEC_pragma_ns_name_base_quick_push", scope: !3, file: !3, line: 1150, type: !3538, scopeLine: 1150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3540)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!2423, !2424, !3499}
!3540 = !{!3541, !3542, !3543}
!3541 = !DILocalVariable(name: "vec_", arg: 1, scope: !3537, file: !3, line: 1150, type: !2424)
!3542 = !DILocalVariable(name: "obj_", arg: 2, scope: !3537, file: !3, line: 1150, type: !3499)
!3543 = !DILocalVariable(name: "slot_", scope: !3537, file: !3, line: 1150, type: !2423)
!3544 = !DILocation(line: 0, scope: !3537)
!3545 = !DILocation(line: 1150, column: 1, scope: !3537)
!3546 = !DILocation(line: 1150, column: 1, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3537, file: !3, line: 1150, column: 1)
!3548 = distinct !DISubprogram(name: "VEC_pragma_ns_name_base_space", scope: !3, file: !3, line: 1150, type: !3549, scopeLine: 1150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3551)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{!560, !2424, !560}
!3551 = !{!3552, !3553}
!3552 = !DILocalVariable(name: "vec_", arg: 1, scope: !3548, file: !3, line: 1150, type: !2424)
!3553 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3548, file: !3, line: 1150, type: !560)
!3554 = !DILocation(line: 0, scope: !3548)
!3555 = !DILocation(line: 1150, column: 1, scope: !3548)
!3556 = distinct !DISubprogram(name: "VEC_pragma_handler_heap_reserve", scope: !3, file: !3, line: 1140, type: !3557, scopeLine: 1140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3559)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{!560, !3509, !560}
!3559 = !{!3560, !3561, !3562}
!3560 = !DILocalVariable(name: "vec_", arg: 1, scope: !3556, file: !3, line: 1140, type: !3509)
!3561 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3556, file: !3, line: 1140, type: !560)
!3562 = !DILocalVariable(name: "extend", scope: !3556, file: !3, line: 1140, type: !560)
!3563 = !DILocation(line: 0, scope: !3556)
!3564 = !DILocation(line: 1140, column: 1, scope: !3556)
!3565 = !DILocation(line: 1140, column: 1, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3556, file: !3, line: 1140, column: 1)
!3567 = distinct !DISubprogram(name: "VEC_pragma_handler_base_quick_push", scope: !3, file: !3, line: 1139, type: !3568, scopeLine: 1139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3570)
!3568 = !DISubroutineType(types: !3569)
!3569 = !{!2501, !2502, !3510}
!3570 = !{!3571, !3572, !3573}
!3571 = !DILocalVariable(name: "vec_", arg: 1, scope: !3567, file: !3, line: 1139, type: !2502)
!3572 = !DILocalVariable(name: "obj_", arg: 2, scope: !3567, file: !3, line: 1139, type: !3510)
!3573 = !DILocalVariable(name: "slot_", scope: !3567, file: !3, line: 1139, type: !2501)
!3574 = !DILocation(line: 0, scope: !3567)
!3575 = !DILocation(line: 1139, column: 1, scope: !3567)
!3576 = !DILocation(line: 1139, column: 1, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3567, file: !3, line: 1139, column: 1)
!3578 = distinct !DISubprogram(name: "VEC_pragma_handler_base_space", scope: !3, file: !3, line: 1139, type: !3579, scopeLine: 1139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3581)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{!560, !2502, !560}
!3581 = !{!3582, !3583}
!3582 = !DILocalVariable(name: "vec_", arg: 1, scope: !3578, file: !3, line: 1139, type: !2502)
!3583 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3578, file: !3, line: 1139, type: !560)
!3584 = !DILocation(line: 0, scope: !3578)
!3585 = !DILocation(line: 1139, column: 1, scope: !3578)
!3586 = distinct !DISubprogram(name: "push_alignment", scope: !3, file: !3, line: 74, type: !3587, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3589)
!3587 = !DISubroutineType(types: !3588)
!3588 = !{null, !560, !464}
!3589 = !{!3590, !3591, !3592}
!3590 = !DILocalVariable(name: "alignment", arg: 1, scope: !3586, file: !3, line: 74, type: !560)
!3591 = !DILocalVariable(name: "id", arg: 2, scope: !3586, file: !3, line: 74, type: !464)
!3592 = !DILocalVariable(name: "entry", scope: !3586, file: !3, line: 76, type: !1502)
!3593 = !DILocation(line: 0, scope: !3586)
!3594 = !DILocation(line: 78, column: 11, scope: !3586)
!3595 = !DILocation(line: 80, column: 10, scope: !3586)
!3596 = !DILocation(line: 80, column: 21, scope: !3586)
!3597 = !DILocation(line: 81, column: 10, scope: !3586)
!3598 = !DILocation(line: 81, column: 17, scope: !3586)
!3599 = !DILocation(line: 82, column: 21, scope: !3586)
!3600 = !DILocation(line: 82, column: 10, scope: !3586)
!3601 = !DILocation(line: 82, column: 19, scope: !3586)
!3602 = !DILocation(line: 87, column: 23, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3586, file: !3, line: 87, column: 7)
!3604 = !DILocation(line: 87, column: 7, scope: !3586)
!3605 = !DILocation(line: 88, column: 25, scope: !3603)
!3606 = !DILocation(line: 88, column: 23, scope: !3603)
!3607 = !DILocation(line: 88, column: 5, scope: !3603)
!3608 = !DILocation(line: 90, column: 19, scope: !3586)
!3609 = !DILocation(line: 92, column: 27, scope: !3586)
!3610 = !DILocation(line: 93, column: 1, scope: !3586)
!3611 = distinct !DISubprogram(name: "pop_alignment", scope: !3, file: !3, line: 97, type: !2003, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3612)
!3612 = !{!3613, !3614}
!3613 = !DILocalVariable(name: "id", arg: 1, scope: !3611, file: !3, line: 97, type: !464)
!3614 = !DILocalVariable(name: "entry", scope: !3611, file: !3, line: 99, type: !1502)
!3615 = !DILocation(line: 0, scope: !3611)
!3616 = !DILocation(line: 101, column: 7, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3611, file: !3, line: 101, column: 7)
!3618 = !DILocation(line: 101, column: 23, scope: !3617)
!3619 = !DILocation(line: 101, column: 7, scope: !3611)
!3620 = !DILocation(line: 102, column: 5, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3617, file: !3, line: 102, column: 5)
!3622 = !DILocation(line: 106, column: 7, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3611, file: !3, line: 106, column: 7)
!3624 = !DILocation(line: 106, column: 7, scope: !3611)
!3625 = !DILocation(line: 108, column: 12, scope: !3626)
!3626 = distinct !DILexicalBlock(scope: !3627, file: !3, line: 108, column: 7)
!3627 = distinct !DILexicalBlock(scope: !3623, file: !3, line: 107, column: 5)
!3628 = !DILocation(line: 0, scope: !3626)
!3629 = !DILocation(line: 108, column: 7, scope: !3626)
!3630 = !DILocation(line: 109, column: 13, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3632, file: !3, line: 109, column: 6)
!3632 = distinct !DILexicalBlock(scope: !3626, file: !3, line: 108, column: 7)
!3633 = !DILocation(line: 109, column: 16, scope: !3631)
!3634 = !DILocation(line: 109, column: 6, scope: !3632)
!3635 = !DILocation(line: 111, column: 22, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3631, file: !3, line: 110, column: 4)
!3637 = !DILocation(line: 114, column: 11, scope: !3627)
!3638 = !DILocation(line: 108, column: 59, scope: !3632)
!3639 = !DILocation(line: 108, column: 7, scope: !3632)
!3640 = distinct !{!3640, !3629, !3641}
!3641 = !DILocation(line: 113, column: 4, scope: !3626)
!3642 = !DILocation(line: 115, column: 2, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3627, file: !3, line: 114, column: 11)
!3644 = !DILocation(line: 120, column: 11, scope: !3611)
!3645 = !DILocation(line: 120, column: 28, scope: !3611)
!3646 = !DILocation(line: 122, column: 29, scope: !3611)
!3647 = !DILocation(line: 122, column: 44, scope: !3611)
!3648 = !DILocation(line: 122, column: 27, scope: !3611)
!3649 = !DILocation(line: 124, column: 19, scope: !3611)
!3650 = !DILocation(line: 125, column: 1, scope: !3611)
!3651 = distinct !DISubprogram(name: "handle_stdc_pragma", scope: !3, file: !3, line: 1053, type: !3652, scopeLine: 1054, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3654)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!1430, !667}
!3654 = !{!3655, !3656, !3657, !3658}
!3655 = !DILocalVariable(name: "pname", arg: 1, scope: !3651, file: !3, line: 1053, type: !667)
!3656 = !DILocalVariable(name: "arg", scope: !3651, file: !3, line: 1055, type: !667)
!3657 = !DILocalVariable(name: "t", scope: !3651, file: !3, line: 1056, type: !464)
!3658 = !DILocalVariable(name: "ret", scope: !3651, file: !3, line: 1057, type: !1430)
!3659 = !DILocation(line: 0, scope: !3651)
!3660 = !DILocation(line: 1056, column: 3, scope: !3651)
!3661 = !DILocation(line: 1059, column: 8, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3651, file: !3, line: 1059, column: 7)
!3663 = !DILocation(line: 1059, column: 7, scope: !3651)
!3664 = !DILocation(line: 1061, column: 7, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3662, file: !3, line: 1060, column: 5)
!3666 = !DILocation(line: 1063, column: 7, scope: !3665)
!3667 = !DILocation(line: 1066, column: 7, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3651, file: !3, line: 1066, column: 7)
!3669 = !DILocation(line: 1066, column: 23, scope: !3668)
!3670 = !DILocation(line: 1066, column: 7, scope: !3651)
!3671 = !DILocation(line: 1068, column: 7, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3668, file: !3, line: 1067, column: 5)
!3673 = !DILocation(line: 1069, column: 7, scope: !3672)
!3674 = !DILocation(line: 1072, column: 9, scope: !3651)
!3675 = !DILocation(line: 1074, column: 8, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3651, file: !3, line: 1074, column: 7)
!3677 = !DILocation(line: 1074, column: 7, scope: !3651)
!3678 = !DILocation(line: 1076, column: 13, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3676, file: !3, line: 1076, column: 12)
!3680 = !DILocation(line: 1076, column: 12, scope: !3676)
!3681 = !DILocation(line: 1078, column: 13, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !3679, file: !3, line: 1078, column: 12)
!3683 = !DILocation(line: 1078, column: 12, scope: !3679)
!3684 = !DILocation(line: 1082, column: 7, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3682, file: !3, line: 1081, column: 5)
!3686 = !DILocation(line: 1083, column: 7, scope: !3685)
!3687 = !DILocation(line: 0, scope: !3676)
!3688 = !DILocation(line: 1086, column: 7, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3651, file: !3, line: 1086, column: 7)
!3690 = !DILocation(line: 1086, column: 23, scope: !3689)
!3691 = !DILocation(line: 1086, column: 7, scope: !3651)
!3692 = !DILocation(line: 1088, column: 7, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3689, file: !3, line: 1087, column: 5)
!3694 = !DILocation(line: 1089, column: 7, scope: !3693)
!3695 = !DILocation(line: 1093, column: 1, scope: !3651)
