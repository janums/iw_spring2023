; ModuleID = 'c-pch.bc'
source_filename = "c-pch.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
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
%struct.function = type opaque
%union.section = type { %struct.unnamed_section }
%struct.unnamed_section = type { %struct.section_common, void (i8*)*, i8*, %union.section* }
%struct.section_common = type { i32 }
%struct.sched = type { i32 (%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)*, i32 ()*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def*, i32)*, void (%struct._IO_FILE*, i32, i32)*, void (%struct._IO_FILE*, i32)*, void (%struct._IO_FILE*, i32, i32)*, void (%struct._IO_FILE*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, void (%struct.rtx_def*, %struct.rtx_def*)*, void ()*, %struct.rtx_def* ()*, void ()*, %struct.rtx_def* ()*, void ()*, void ()*, i32 ()*, i32 (%struct.rtx_def*)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def*, i32, i32, i32*)*, i8 (%struct._dep*, i32, i32)*, i32 (%struct.rtx_def*, i32, %struct.rtx_def*, i32, i32)*, void ()*, i8* ()*, void (i8*, i8)*, void (i8*)*, void (i8*)*, void (i8*)*, i32 (%struct.rtx_def*, i32, %struct.rtx_def**)*, i8 (i32)*, %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*, i32)*, i8 (%struct.rtx_def*)*, void (%struct.spec_info_def*)*, i32 (%struct.rtx_def*)*, i32 (%struct.rtx_def*)*, i8 (%struct.rtx_def*)*, i32 (%struct.ddg*)* }
%struct._dep = type opaque
%struct.spec_info_def = type opaque
%struct.ddg = type opaque
%struct.vectorize = type { %union.tree_node* ()*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (i32, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i32 (i8)*, i8 (%union.tree_node*, i8)*, %union.tree_node* (%union.tree_node*, %union.tree_node**)*, i8 (%union.tree_node*, %union.tree_node*)*, i8 (i32, %union.tree_node*, i32, i8)* }
%struct.attribute_spec = type { i8*, i32, i32, i8, i8, i8, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* }
%struct.addr_space = type { i32 (i8)*, i32 (i8)*, i8 (i32, i8)*, i8 (i32, %struct.rtx_def*, i8, i8)*, %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*, i32, i8)*, i8 (i8, i8)*, %struct.rtx_def* (%struct.rtx_def*, %union.tree_node*, %union.tree_node*)* }
%struct.gimple_seq_d = type opaque
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
%struct.gcc_debug_hooks = type { void (i8*)*, void (i8*)*, void ()*, void (i32, i8*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32)*, void (i32, i32)*, void (i32, i32)*, i8 (%union.tree_node*)*, void (i32, i8*, i32, i8)*, void (i32, i8*)*, void (i32, i8*)*, void (i32, i8*)*, void (%union.tree_node*)*, void (i32)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*, i32)*, void (%union.tree_node*, %union.tree_node*, %union.tree_node*, i8)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%struct.rtx_def*)*, void (i32)*, void (%struct.rtx_def*)*, void ()*, void (%union.tree_node*)*, void (%union.tree_node*, i32)*, void (%struct.rtx_def*, %struct.rtx_def*)*, void (i32)*, void (%union.tree_node*, %union.tree_node*)*, i32 }
%struct.cpp_reader = type opaque
%struct.lang_hooks = type { i8*, i64, void (%union.tree_node*)*, i64 (i32)*, i32 (i32, i8**)*, void (%struct.diagnostic_context*)*, i32 (i64, i8*, i32)*, i8 (i8*, i64)*, i8 (i8**)*, i8 ()*, void ()*, void (i32)*, i8 (%union.tree_node*)*, i32 (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void ()*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)*, i32 (%union.tree_node*, %union.tree_node*)*, void (%struct.diagnostic_context*, i8*, %struct.diagnostic_info*)*, i64 (i64)*, %struct.attribute_spec*, %struct.attribute_spec*, %struct.attribute_spec*, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i8 (%union.tree_node*)*, i32 (%union.tree_node**, %struct.gimple_seq_d**, %struct.gimple_seq_d**)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void ()*, %union.tree_node* (%union.tree_node*, i8*, i8*)*, %union.tree_node* ()*, %union.tree_node* (%union.tree_node*)*, i8 }
%struct.diagnostic_context = type opaque
%struct.diagnostic_info = type opaque
%struct.lang_hooks_for_tree_inlining = type { i8 (%union.tree_node*, %union.tree_node*)* }
%struct.lang_hooks_for_callgraph = type { %union.tree_node* (%union.tree_node**, i32*)* }
%struct.lang_hooks_for_tree_dump = type { i8 (i8*, %union.tree_node*)*, i32 (%union.tree_node*)* }
%struct.lang_hooks_for_decls = type { i32 ()*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* ()*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, i8 (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i8 (%union.tree_node*)*, void ()*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, i32 (%union.tree_node*)*, i8 (%union.tree_node*, i8)*, i8 (%union.tree_node*, i8)*, i8 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)* }
%struct.lang_hooks_for_types = type { %union.tree_node* (i32)*, i32 (%union.tree_node*)*, %union.tree_node* (i32, i32)*, %union.tree_node* (i32, i32)*, i8 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void (%union.tree_node*, i8*)*, void (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void (%struct.gimplify_omp_ctx*, %union.tree_node*)*, i8 (%union.tree_node*, %union.tree_node*)*, i8 (%union.tree_node*, %struct.array_descr_info*)*, void (%union.tree_node*, %union.tree_node**, %union.tree_node**)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, i8 }
%struct.gimplify_omp_ctx = type opaque
%struct.array_descr_info = type opaque
%struct.lang_hooks_for_lto = type { void (i8*)*, void (i8*, i64, i8*)*, void ()* }
%struct.line_maps = type { %struct.line_map*, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8* (i8*, i64)* }
%struct.line_map = type { i8*, i32, i32, i32, i8, i8, i8 }
%struct.host_hooks = type { void ()*, i8* (i64, i32)*, i32 (i8*, i64, i32, i64)*, i64 ()* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.c_pch_validity = type { i8, [1 x i8], void ()*, i64 }
%struct.c_pch_header = type { i64 }
%struct.cpp_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8*, i8*, i8*, i32, i8, i8, %struct.anon, i64, i64, i64, i64, i8, i8, i8, i8, i8 }
%struct.anon = type { i32, i8, i8, i8, i8 }
%struct.save_macro_data = type opaque
%struct.expanded_location = type { i8*, i32, i32, i8 }
%struct.cpp_callbacks = type { void (%struct.cpp_reader*, %struct.cpp_token*, i32)*, void (%struct.cpp_reader*, %struct.line_map*)*, void (%struct.cpp_reader*, i8*)*, void (%struct.cpp_reader*, i32, i8*, i8*, i32, %struct.cpp_token**)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_string*)*, void (%struct.cpp_reader*, i32)*, i32 (%struct.cpp_reader*, i8*, i32)*, void (%struct.cpp_reader*, i8*, i32, i8*)*, i8* (%struct.cpp_reader*, i8*, %struct.cpp_dir**)*, %struct.cpp_hashnode* (%struct.cpp_reader*, %struct.cpp_token*)*, i8 (%struct.cpp_reader*, i32, i32, i32, i8*, [1 x %struct.__va_list_tag]*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)* }
%struct.cpp_token = type { i32, i8, i16, %union.cpp_token_u }
%union.cpp_token_u = type { %struct.cpp_string }
%struct.cpp_string = type { i32, i8* }
%struct.cpp_dir = type { %struct.cpp_dir*, i8*, i32, i8, i8, i8*, i8**, i8* (i8*, %struct.cpp_dir*)*, i64, i64 }
%struct.cpp_hashnode = type { %struct.ht_identifier, i8, i8, i16, %union._cpp_hashnode_value }
%struct.ht_identifier = type { i8*, i32, i32 }
%union._cpp_hashnode_value = type { %struct.cpp_macro* }
%struct.cpp_macro = type opaque

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@pch_init.partial_pch = internal constant [9 x i8] c"gpcWrite\00", align 1, !dbg !0
@flag_verbose_asm = external dso_local local_unnamed_addr global i32, align 4
@asm_out_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@pch_file = external dso_local local_unnamed_addr global i8*, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"w+b\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"can%'t create precompiled header %s: %m\00", align 1
@pch_outfile = internal unnamed_addr global %struct._IO_FILE* null, align 8, !dbg !22
@executable_checksum = external dso_local constant [16 x i8], align 16
@no_checksum = internal constant [16 x i8] zeroinitializer, align 16, !dbg !85
@.str.4 = private unnamed_addr constant [8 x i8] c"c-pch.c\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@write_symbols = external dso_local local_unnamed_addr global i32, align 4
@targetm = external dso_local local_unnamed_addr global %struct.gcc_target, align 8
@.str.6 = private unnamed_addr constant [23 x i8] c"can%'t write to %s: %m\00", align 1
@asm_file_name = external dso_local local_unnamed_addr global i8*, align 8
@.str.7 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"%qs is not a valid output file\00", align 1
@asm_file_startpos = internal unnamed_addr global i64 0, align 8, !dbg !80
@debug_hooks = external dso_local local_unnamed_addr global %struct.gcc_debug_hooks*, align 8
@parse_in = external dso_local local_unnamed_addr global %struct.cpp_reader*, align 8
@.str.9 = private unnamed_addr constant [20 x i8] c"can%'t write %s: %m\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"can%'t seek in %s: %m\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"can%'t read %s: %m\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"%s: too short to be a PCH file\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"%s: not compatible with this GCC version\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"%s: not for %s\00", align 1
@lang_hooks = external dso_local local_unnamed_addr global %struct.lang_hooks, align 8
@.str.15 = private unnamed_addr constant [19 x i8] c"%s: not a PCH file\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"%s: created by a different GCC executable\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"%s: created with -g%s, but used with -g%s\00", align 1
@debug_type_names = external dso_local local_unnamed_addr constant [0 x i8*], align 8
@.str.18 = private unnamed_addr constant [33 x i8] c"%s: settings for %s do not match\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"%s: had text segment at different address\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"calling fdopen\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"reading\00", align 1
@flag_preprocess_only = external dso_local local_unnamed_addr global i32, align 4
@.str.24 = private unnamed_addr constant [8 x i8] c"seeking\00", align 1
@line_table = external dso_local local_unnamed_addr global %struct.line_maps*, align 8
@lang_post_pch_load = common dso_local local_unnamed_addr global void ()* null, align 8, !dbg !82
@host_hooks = external dso_local local_unnamed_addr constant %struct.host_hooks, align 8
@.str.25 = private unnamed_addr constant [62 x i8] c"pch_preprocess pragma should only be used with -fpreprocessed\00", align 1
@input_location = external dso_local local_unnamed_addr global i32, align 4
@.str.26 = private unnamed_addr constant [21 x i8] c"use #include instead\00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"%s: couldn%'t open PCH file: %m\00", align 1
@.str.28 = private unnamed_addr constant [39 x i8] c"use -Winvalid-pch for more information\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"%s: PCH file was invalid\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"Compiler executable checksum: \00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@flag_exceptions = external dso_local local_unnamed_addr global i32, align 4
@.str.32 = private unnamed_addr constant [13 x i8] c"-fexceptions\00", align 1
@get_ident.result = internal global [8 x i8] zeroinitializer, align 1, !dbg !99
@get_ident.templ = internal constant [9 x i8] c"gpch.013\00", align 1, !dbg !107
@get_ident.c_language_chars = internal unnamed_addr constant [5 x i8] c"Co+O\00", align 1, !dbg !112
@c_language = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !134 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !148, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !149, metadata !DIExpression()), !dbg !150
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !151
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !152
  ret i32 %call, !dbg !153
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !154 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !157
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !158
  ret i32 %call, !dbg !159
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !160 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !164, metadata !DIExpression()), !dbg !165
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !166
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !166
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !166
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !166
  %cmp = icmp uge i8* %0, %1, !dbg !166
  %conv1 = zext i1 %cmp to i64, !dbg !166
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !166
  %tobool = icmp eq i64 %expval, 0, !dbg !166
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !166

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !166
  br label %cond.end, !dbg !166

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !166
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !166
  %2 = load i8, i8* %0, align 1, !dbg !166
  %conv3 = zext i8 %2 to i32, !dbg !166
  br label %cond.end, !dbg !166

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !166
  ret i32 %cond, !dbg !167
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !168 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !170, metadata !DIExpression()), !dbg !171
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !172
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !172
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !172
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !172
  %cmp = icmp uge i8* %0, %1, !dbg !172
  %conv1 = zext i1 %cmp to i64, !dbg !172
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !172
  %tobool = icmp eq i64 %expval, 0, !dbg !172
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !172

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !172
  br label %cond.end, !dbg !172

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !172
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !172
  %2 = load i8, i8* %0, align 1, !dbg !172
  %conv3 = zext i8 %2 to i32, !dbg !172
  br label %cond.end, !dbg !172

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !172
  ret i32 %cond, !dbg !173
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !174 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !175
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !175
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !175
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !175
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !175
  %cmp = icmp uge i8* %1, %2, !dbg !175
  %conv1 = zext i1 %cmp to i64, !dbg !175
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !175
  %tobool = icmp eq i64 %expval, 0, !dbg !175
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !175

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !175
  br label %cond.end, !dbg !175

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !175
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !175
  %3 = load i8, i8* %1, align 1, !dbg !175
  %conv3 = zext i8 %3 to i32, !dbg !175
  br label %cond.end, !dbg !175

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !175
  ret i32 %cond, !dbg !176
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !177 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !181, metadata !DIExpression()), !dbg !182
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !183
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !184
  ret i32 %call, !dbg !185
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !186 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !190, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !191, metadata !DIExpression()), !dbg !192
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !193
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !193
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !193
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !193
  %cmp = icmp uge i8* %0, %1, !dbg !193
  %conv1 = zext i1 %cmp to i64, !dbg !193
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !193
  %tobool = icmp eq i64 %expval, 0, !dbg !193
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !193

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !193
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !193
  br label %cond.end, !dbg !193

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !193
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !193
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !193
  store i8 %conv2, i8* %0, align 1, !dbg !193
  %conv6 = and i32 %__c, 255, !dbg !193
  br label %cond.end, !dbg !193

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !193
  ret i32 %cond, !dbg !194
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !195 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !197, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !198, metadata !DIExpression()), !dbg !199
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !200
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !200
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !200
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !200
  %cmp = icmp uge i8* %0, %1, !dbg !200
  %conv1 = zext i1 %cmp to i64, !dbg !200
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !200
  %tobool = icmp eq i64 %expval, 0, !dbg !200
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !200

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !200
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !200
  br label %cond.end, !dbg !200

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !200
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !200
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !200
  store i8 %conv2, i8* %0, align 1, !dbg !200
  %conv6 = and i32 %__c, 255, !dbg !200
  br label %cond.end, !dbg !200

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !200
  ret i32 %cond, !dbg !201
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !202 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !204, metadata !DIExpression()), !dbg !205
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !206
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !206
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !206
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !206
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !206
  %cmp = icmp uge i8* %1, %2, !dbg !206
  %conv1 = zext i1 %cmp to i64, !dbg !206
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !206
  %tobool = icmp eq i64 %expval, 0, !dbg !206
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !206

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !206
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !206
  br label %cond.end, !dbg !206

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !206
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !206
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !206
  store i8 %conv4, i8* %1, align 1, !dbg !206
  %conv6 = and i32 %__c, 255, !dbg !206
  br label %cond.end, !dbg !206

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !206
  ret i32 %cond, !dbg !207
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !208 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !214, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.value(metadata i64* %__n, metadata !215, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !216, metadata !DIExpression()), !dbg !217
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !218
  ret i64 %call, !dbg !219
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !220 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !222, metadata !DIExpression()), !dbg !223
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !224
  %0 = load i32, i32* %_flags, align 8, !dbg !224
  %and = lshr i32 %0, 4, !dbg !224
  %and.lobit = and i32 %and, 1, !dbg !224
  ret i32 %and.lobit, !dbg !225
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !226 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !228, metadata !DIExpression()), !dbg !229
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !230
  %0 = load i32, i32* %_flags, align 8, !dbg !230
  %and = lshr i32 %0, 5, !dbg !230
  %and.lobit = and i32 %and, 1, !dbg !230
  ret i32 %and.lobit, !dbg !231
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !232 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !235, metadata !DIExpression()), !dbg !236
  %__c.off = add i32 %__c, 128, !dbg !237
  %0 = icmp ult i32 %__c.off, 384, !dbg !237
  br i1 %0, label %cond.true, label %cond.end, !dbg !237

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !238
  %1 = load i32*, i32** %call, align 8, !dbg !239
  %idxprom = sext i32 %__c to i64, !dbg !240
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !240
  %2 = load i32, i32* %arrayidx, align 4, !dbg !240
  br label %cond.end, !dbg !241

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !241
  ret i32 %cond, !dbg !242
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !243 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !245, metadata !DIExpression()), !dbg !246
  %__c.off = add i32 %__c, 128, !dbg !247
  %0 = icmp ult i32 %__c.off, 384, !dbg !247
  br i1 %0, label %cond.true, label %cond.end, !dbg !247

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !248
  %1 = load i32*, i32** %call, align 8, !dbg !249
  %idxprom = sext i32 %__c to i64, !dbg !250
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !250
  %2 = load i32, i32* %arrayidx, align 4, !dbg !250
  br label %cond.end, !dbg !251

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !251
  ret i32 %cond, !dbg !252
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !253 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !258, metadata !DIExpression()), !dbg !259
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !260
  %conv = trunc i64 %call to i32, !dbg !261
  ret i32 %conv, !dbg !262
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !263 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !267, metadata !DIExpression()), !dbg !268
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !269
  ret i64 %call, !dbg !270
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !271 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !276, metadata !DIExpression()), !dbg !277
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !278
  ret i64 %call, !dbg !279
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !280 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !291, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i8* %__base, metadata !292, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !293, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i64 %__size, metadata !294, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !295, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i64 0, metadata !296, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !297, metadata !DIExpression()), !dbg !301
  br label %while.cond, !dbg !302

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !303
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !301
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !297, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !296, metadata !DIExpression()), !dbg !301
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !304
  br i1 %cmp, label %while.body, label %cleanup, !dbg !302

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !305
  %div = lshr i64 %add, 1, !dbg !307
  call void @llvm.dbg.value(metadata i64 %div, metadata !298, metadata !DIExpression()), !dbg !301
  %mul = mul i64 %div, %__size, !dbg !308
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !309
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !299, metadata !DIExpression()), !dbg !301
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !310
  call void @llvm.dbg.value(metadata i32 %call, metadata !300, metadata !DIExpression()), !dbg !301
  %cmp1 = icmp slt i32 %call, 0, !dbg !311
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !313

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !314
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !316

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !317
  call void @llvm.dbg.value(metadata i64 %add4, metadata !296, metadata !DIExpression()), !dbg !301
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !301
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !301
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !297, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !296, metadata !DIExpression()), !dbg !301
  br label %while.cond, !dbg !302, !llvm.loop !318

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !301
  ret i8* %retval.0, !dbg !320
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !321 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !327, metadata !DIExpression()), !dbg !328
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !329
  ret double %call, !dbg !330
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !331 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !340, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !341, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i32 %base, metadata !342, metadata !DIExpression()), !dbg !343
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !344
  ret i64 %call, !dbg !345
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !346 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !352, metadata !DIExpression()), !dbg !355
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !353, metadata !DIExpression()), !dbg !355
  call void @llvm.dbg.value(metadata i32 %base, metadata !354, metadata !DIExpression()), !dbg !355
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !356
  ret i64 %call, !dbg !357
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !358 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !369, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !370, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.value(metadata i32 %base, metadata !371, metadata !DIExpression()), !dbg !372
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !373
  ret i64 %call, !dbg !374
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !375 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !379, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !380, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 %base, metadata !381, metadata !DIExpression()), !dbg !382
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !383
  ret i64 %call, !dbg !384
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !385 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !427, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !428, metadata !DIExpression()), !dbg !429
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !430
  ret i32 %call, !dbg !431
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !432 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !434, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !435, metadata !DIExpression()), !dbg !436
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !437
  ret i32 %call, !dbg !438
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !439 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !443, metadata !DIExpression()), !dbg !445
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !444, metadata !DIExpression()), !dbg !445
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !446
  ret i32 %call, !dbg !447
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !448 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !452, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !453, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !454, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !455, metadata !DIExpression()), !dbg !456
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !457
  ret i32 %call, !dbg !458
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !459 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !463, metadata !DIExpression()), !dbg !466
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !464, metadata !DIExpression()), !dbg !466
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !465, metadata !DIExpression()), !dbg !466
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !465, metadata !DIExpression(DW_OP_deref)), !dbg !466
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !467
  ret i32 %call, !dbg !468
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !469 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !473, metadata !DIExpression()), !dbg !477
  call void @llvm.dbg.value(metadata i8* %__path, metadata !474, metadata !DIExpression()), !dbg !477
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !475, metadata !DIExpression()), !dbg !477
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !476, metadata !DIExpression()), !dbg !477
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !476, metadata !DIExpression(DW_OP_deref)), !dbg !477
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !478
  ret i32 %call, !dbg !479
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !480 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !504, metadata !DIExpression()), !dbg !506
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !505, metadata !DIExpression()), !dbg !506
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !507
  ret i32 %call, !dbg !508
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !509 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !511, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !512, metadata !DIExpression()), !dbg !513
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !514
  ret i32 %call, !dbg !515
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !516 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !520, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !521, metadata !DIExpression()), !dbg !522
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !523
  ret i32 %call, !dbg !524
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !525 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !529, metadata !DIExpression()), !dbg !533
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !530, metadata !DIExpression()), !dbg !533
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !531, metadata !DIExpression()), !dbg !533
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !532, metadata !DIExpression()), !dbg !533
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !534
  ret i32 %call, !dbg !535
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @pch_init() #5 !dbg !2 {
entry:
  %v = alloca %struct.c_pch_validity, align 8
  %0 = getelementptr inbounds %struct.c_pch_validity, %struct.c_pch_validity* %v, i64 0, i32 0, !dbg !536
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7, !dbg !536
  %1 = load i32, i32* @flag_verbose_asm, align 4, !dbg !537
  %tobool = icmp eq i32 %1, 0, !dbg !537
  br i1 %tobool, label %if.end, label %if.then, !dbg !539

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8, !dbg !540
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !542
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8, !dbg !543
  tail call void @c_common_print_pch_checksum(%struct._IO_FILE* %3) #8, !dbg !544
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8, !dbg !545
  %call1 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %4) #6, !dbg !546
  br label %if.end, !dbg !547

if.end:                                           ; preds = %entry, %if.then
  %5 = load i8*, i8** @pch_file, align 8, !dbg !548
  %tobool2 = icmp eq i8* %5, null, !dbg !548
  br i1 %tobool2, label %cleanup, label %if.end4, !dbg !550

if.end4:                                          ; preds = %if.end
  %call5 = tail call %struct._IO_FILE* @fopen_unlocked(i8* nonnull %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !551
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call5, metadata !118, metadata !DIExpression()), !dbg !552
  %cmp = icmp eq %struct._IO_FILE* %call5, null, !dbg !553
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !555

if.then6:                                         ; preds = %if.end4
  %6 = load i8*, i8** @pch_file, align 8, !dbg !556
  tail call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* %6) #6, !dbg !557
  br label %if.end7, !dbg !557

if.end7:                                          ; preds = %if.then6, %if.end4
  store %struct._IO_FILE* %call5, %struct._IO_FILE** @pch_outfile, align 8, !dbg !558
  %call8 = tail call i32 @memcmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @executable_checksum, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @no_checksum, i64 0, i64 0), i64 16) #6, !dbg !559
  %cmp9 = icmp eq i32 %call8, 0, !dbg !559
  br i1 %cmp9, label %cond.true, label %cond.end, !dbg !559

cond.true:                                        ; preds = %if.end7
  tail call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 135, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !559
  br label %cond.end, !dbg !559

cond.end:                                         ; preds = %if.end7, %cond.true
  %call10 = call i8* @memset(i8* nonnull %0, i32 0, i64 24) #6, !dbg !560
  %7 = load i32, i32* @write_symbols, align 4, !dbg !561
  %conv = trunc i32 %7 to i8, !dbg !561
  store i8 %conv, i8* %0, align 8, !dbg !562
  call void @llvm.dbg.value(metadata i64 0, metadata !128, metadata !DIExpression()), !dbg !563
  br label %for.cond, !dbg !564

for.cond:                                         ; preds = %for.inc, %cond.end
  %i.0 = phi i1 [ true, %cond.end ], [ false, %for.inc ]
  br i1 %i.0, label %for.body, label %for.end, !dbg !566

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* @flag_exceptions, align 4, !dbg !567
  %conv13 = trunc i32 %8 to i8, !dbg !567
  %arrayidx14 = getelementptr inbounds %struct.c_pch_validity, %struct.c_pch_validity* %v, i64 0, i32 1, i64 0, !dbg !570
  store i8 %conv13, i8* %arrayidx14, align 1, !dbg !571
  %9 = add i32 %8, 128, !dbg !572
  %10 = icmp ult i32 %9, 256, !dbg !572
  br i1 %10, label %for.inc, label %cond.true22, !dbg !572

cond.true22:                                      ; preds = %for.body
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !572
  br label %for.inc, !dbg !572

for.inc:                                          ; preds = %cond.true22, %for.body
  call void @llvm.dbg.value(metadata i64 1, metadata !128, metadata !DIExpression()), !dbg !563
  br label %for.cond, !dbg !573, !llvm.loop !574

for.end:                                          ; preds = %for.cond
  %pch_init = getelementptr inbounds %struct.c_pch_validity, %struct.c_pch_validity* %v, i64 0, i32 2, !dbg !576
  store void ()* @pch_init, void ()** %pch_init, align 8, !dbg !577
  %11 = load i8* (i64*)*, i8* (i64*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 74), align 8, !dbg !578
  %target_data_length = getelementptr inbounds %struct.c_pch_validity, %struct.c_pch_validity* %v, i64 0, i32 3, !dbg !579
  %call26 = call i8* %11(i64* nonnull %target_data_length) #6, !dbg !580
  call void @llvm.dbg.value(metadata i8* %call26, metadata !127, metadata !DIExpression()), !dbg !552
  %call27 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @pch_init.partial_pch, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %call5) #6, !dbg !581
  %cmp28 = icmp eq i64 %call27, 1, !dbg !583
  br i1 %cmp28, label %lor.lhs.false, label %if.then42, !dbg !584

lor.lhs.false:                                    ; preds = %for.end
  %call30 = call i64 @fwrite(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @executable_checksum, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %call5) #6, !dbg !585
  %cmp31 = icmp eq i64 %call30, 1, !dbg !586
  br i1 %cmp31, label %lor.lhs.false33, label %if.then42, !dbg !587

lor.lhs.false33:                                  ; preds = %lor.lhs.false
  %call34 = call i64 @fwrite(i8* nonnull %0, i64 24, i64 1, %struct._IO_FILE* %call5) #6, !dbg !588
  %cmp35 = icmp eq i64 %call34, 1, !dbg !589
  br i1 %cmp35, label %lor.lhs.false37, label %if.then42, !dbg !590

lor.lhs.false37:                                  ; preds = %lor.lhs.false33
  %12 = load i64, i64* %target_data_length, align 8, !dbg !591
  %call39 = call i64 @fwrite(i8* %call26, i64 %12, i64 1, %struct._IO_FILE* %call5) #6, !dbg !592
  %cmp40 = icmp eq i64 %call39, 1, !dbg !593
  br i1 %cmp40, label %if.end43, label %if.then42, !dbg !594

if.then42:                                        ; preds = %lor.lhs.false37, %lor.lhs.false33, %lor.lhs.false, %for.end
  %13 = load i8*, i8** @pch_file, align 8, !dbg !595
  call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* %13) #6, !dbg !596
  br label %if.end43, !dbg !596

if.end43:                                         ; preds = %lor.lhs.false37, %if.then42
  %14 = load i8*, i8** @asm_file_name, align 8, !dbg !597
  %cmp44 = icmp eq i8* %14, null, !dbg !599
  br i1 %cmp44, label %if.then50, label %lor.lhs.false46, !dbg !600

lor.lhs.false46:                                  ; preds = %if.end43
  %call47 = call i32 @strcmp(i8* nonnull %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !601
  %cmp48 = icmp eq i32 %call47, 0, !dbg !602
  br i1 %cmp48, label %lor.lhs.false46.if.then50_crit_edge, label %if.end51, !dbg !603

lor.lhs.false46.if.then50_crit_edge:              ; preds = %lor.lhs.false46
  %.pre = load i8*, i8** @asm_file_name, align 8, !dbg !604
  br label %if.then50, !dbg !603

if.then50:                                        ; preds = %lor.lhs.false46.if.then50_crit_edge, %if.end43
  %15 = phi i8* [ %.pre, %lor.lhs.false46.if.then50_crit_edge ], [ null, %if.end43 ], !dbg !604
  call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8* %15) #6, !dbg !605
  br label %if.end51, !dbg !605

if.end51:                                         ; preds = %if.then50, %lor.lhs.false46
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8, !dbg !606
  %call52 = call i64 @ftell(%struct._IO_FILE* %16) #6, !dbg !607
  store i64 %call52, i64* @asm_file_startpos, align 8, !dbg !608
  %17 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8, !dbg !609
  %handle_pch = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %17, i64 0, i32 23, !dbg !610
  %18 = load void (i32)*, void (i32)** %handle_pch, align 8, !dbg !610
  call void %18(i32 0) #6, !dbg !611
  %19 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !612
  %call53 = call i32 @cpp_save_state(%struct.cpp_reader* %19, %struct._IO_FILE* %call5) #6, !dbg !613
  br label %cleanup, !dbg !614

cleanup:                                          ; preds = %if.end, %if.end51
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7, !dbg !614
  ret void, !dbg !614
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @c_common_print_pch_checksum(%struct._IO_FILE* %f) local_unnamed_addr #5 !dbg !615 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %f, metadata !619, metadata !DIExpression()), !dbg !621
  %call = tail call i32 @fputs(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), %struct._IO_FILE* %f) #6, !dbg !622
  call void @llvm.dbg.value(metadata i32 0, metadata !620, metadata !DIExpression()), !dbg !621
  br label %for.cond, !dbg !623

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ], !dbg !625
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !620, metadata !DIExpression()), !dbg !621
  %exitcond = icmp eq i64 %indvars.iv, 16, !dbg !626
  br i1 %exitcond, label %for.end, label %for.body, !dbg !628

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* @executable_checksum, i64 0, i64 %indvars.iv, !dbg !629
  %0 = load i8, i8* %arrayidx, align 1, !dbg !629
  %conv = zext i8 %0 to i32, !dbg !629
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i32 %conv) #6, !dbg !630
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !631
  call void @llvm.dbg.value(metadata i32 undef, metadata !620, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !621
  br label %for.cond, !dbg !632, !llvm.loop !633

for.end:                                          ; preds = %for.cond
  %call2 = tail call i32 @putc(i32 10, %struct._IO_FILE* %f) #6, !dbg !635
  ret void, !dbg !636
}

declare dso_local i32 @fputc(i32, %struct._IO_FILE*) local_unnamed_addr #2

declare dso_local %struct._IO_FILE* @fopen_unlocked(i8*, i8*) local_unnamed_addr #2

declare dso_local void @fatal_error(i8*, ...) local_unnamed_addr #2

declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #2

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

declare dso_local i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #2

declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #2

declare dso_local i64 @ftell(%struct._IO_FILE*) local_unnamed_addr #2

declare dso_local i32 @cpp_save_state(%struct.cpp_reader*, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @c_common_write_pch() local_unnamed_addr #5 !dbg !637 {
entry:
  %h = alloca %struct.c_pch_header, align 8
  %0 = bitcast %struct.c_pch_header* %h to i8*, !dbg !650
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !650
  %1 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8, !dbg !651
  %handle_pch = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %1, i64 0, i32 23, !dbg !652
  %2 = load void (i32)*, void (i32)** %handle_pch, align 8, !dbg !652
  tail call void %2(i32 1) #6, !dbg !653
  %3 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !654
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @pch_outfile, align 8, !dbg !655
  %call = tail call i32 @cpp_write_pch_deps(%struct.cpp_reader* %3, %struct._IO_FILE* %4) #6, !dbg !656
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8, !dbg !657
  %call1 = tail call i64 @ftell(%struct._IO_FILE* %5) #6, !dbg !658
  call void @llvm.dbg.value(metadata i64 %call1, metadata !640, metadata !DIExpression()), !dbg !659
  %6 = load i64, i64* @asm_file_startpos, align 8, !dbg !660
  %sub = sub nsw i64 %call1, %6, !dbg !661
  %asm_size = getelementptr inbounds %struct.c_pch_header, %struct.c_pch_header* %h, i64 0, i32 0, !dbg !662
  store i64 %sub, i64* %asm_size, align 8, !dbg !663
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @pch_outfile, align 8, !dbg !664
  %call2 = call i64 @fwrite(i8* nonnull %0, i64 8, i64 1, %struct._IO_FILE* %7) #6, !dbg !666
  %cmp = icmp eq i64 %call2, 1, !dbg !667
  br i1 %cmp, label %if.end, label %if.then, !dbg !668

if.then:                                          ; preds = %entry
  %8 = load i8*, i8** @pch_file, align 8, !dbg !669
  call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* %8) #6, !dbg !670
  br label %if.end, !dbg !670

if.end:                                           ; preds = %entry, %if.then
  %call3 = call i8* @xmalloc(i64 16384) #6, !dbg !671
  call void @llvm.dbg.value(metadata i8* %call3, metadata !639, metadata !DIExpression()), !dbg !659
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8, !dbg !672
  %10 = load i64, i64* @asm_file_startpos, align 8, !dbg !674
  %call4 = call i32 @fseek(%struct._IO_FILE* %9, i64 %10, i32 0) #6, !dbg !675
  %cmp5 = icmp eq i32 %call4, 0, !dbg !676
  br i1 %cmp5, label %if.end7, label %if.then6, !dbg !677

if.then6:                                         ; preds = %if.end
  %11 = load i8*, i8** @asm_file_name, align 8, !dbg !678
  call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8* %11) #6, !dbg !679
  br label %if.end7, !dbg !679

if.end7:                                          ; preds = %if.end, %if.then6
  %12 = load i64, i64* @asm_file_startpos, align 8, !dbg !680
  call void @llvm.dbg.value(metadata i64 %12, metadata !641, metadata !DIExpression()), !dbg !659
  br label %for.cond, !dbg !681

for.cond:                                         ; preds = %if.end20, %if.end7
  %written.0 = phi i64 [ %12, %if.end7 ], [ %add, %if.end20 ], !dbg !682
  call void @llvm.dbg.value(metadata i64 %written.0, metadata !641, metadata !DIExpression()), !dbg !659
  %cmp8 = icmp sgt i64 %call1, %written.0, !dbg !683
  br i1 %cmp8, label %for.body, label %for.end, !dbg !684

for.body:                                         ; preds = %for.cond
  %sub9 = sub nsw i64 %call1, %written.0, !dbg !685
  call void @llvm.dbg.value(metadata i64 %sub9, metadata !646, metadata !DIExpression()), !dbg !686
  %13 = icmp slt i64 %sub9, 16384, !dbg !687
  %spec.select = select i1 %13, i64 %sub9, i64 16384, !dbg !687
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !646, metadata !DIExpression()), !dbg !686
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8, !dbg !688
  %call13 = call i64 @fread(i8* %call3, i64 %spec.select, i64 1, %struct._IO_FILE* %14) #6, !dbg !690
  %cmp14 = icmp eq i64 %call13, 1, !dbg !691
  br i1 %cmp14, label %if.end16, label %if.then15, !dbg !692

if.then15:                                        ; preds = %for.body
  %15 = load i8*, i8** @asm_file_name, align 8, !dbg !693
  call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* %15) #6, !dbg !694
  br label %if.end16, !dbg !694

if.end16:                                         ; preds = %for.body, %if.then15
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @pch_outfile, align 8, !dbg !695
  %call17 = call i64 @fwrite(i8* %call3, i64 %spec.select, i64 1, %struct._IO_FILE* %16) #6, !dbg !697
  %cmp18 = icmp eq i64 %call17, 1, !dbg !698
  br i1 %cmp18, label %if.end20, label %if.then19, !dbg !699

if.then19:                                        ; preds = %if.end16
  %17 = load i8*, i8** @pch_file, align 8, !dbg !700
  call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* %17) #6, !dbg !701
  br label %if.end20, !dbg !701

if.end20:                                         ; preds = %if.end16, %if.then19
  %add = add nsw i64 %written.0, %spec.select, !dbg !702
  call void @llvm.dbg.value(metadata i64 %add, metadata !641, metadata !DIExpression()), !dbg !659
  br label %for.cond, !dbg !703, !llvm.loop !704

for.end:                                          ; preds = %for.cond
  call void @free(i8* %call3) #6, !dbg !706
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8, !dbg !707
  %call21 = call i32 @fseek(%struct._IO_FILE* %18, i64 0, i32 2) #6, !dbg !709
  %cmp22 = icmp eq i32 %call21, 0, !dbg !710
  br i1 %cmp22, label %if.end24, label %if.then23, !dbg !711

if.then23:                                        ; preds = %for.end
  %19 = load i8*, i8** @asm_file_name, align 8, !dbg !712
  call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8* %19) #6, !dbg !713
  br label %if.end24, !dbg !713

if.end24:                                         ; preds = %for.end, %if.then23
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @pch_outfile, align 8, !dbg !714
  call void @gt_pch_save(%struct._IO_FILE* %20) #6, !dbg !715
  %21 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !716
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @pch_outfile, align 8, !dbg !717
  %call25 = call i32 @cpp_write_pch_state(%struct.cpp_reader* %21, %struct._IO_FILE* %22) #6, !dbg !718
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @pch_outfile, align 8, !dbg !719
  %call26 = call i32 @fseek(%struct._IO_FILE* %23, i64 0, i32 0) #6, !dbg !721
  %cmp27 = icmp eq i32 %call26, 0, !dbg !722
  br i1 %cmp27, label %lor.lhs.false, label %if.then31, !dbg !723

lor.lhs.false:                                    ; preds = %if.end24
  %call28 = call fastcc i8* @get_ident() #8, !dbg !724
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @pch_outfile, align 8, !dbg !725
  %call29 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @get_ident.result, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %24) #6, !dbg !726
  %cmp30 = icmp eq i64 %call29, 1, !dbg !727
  br i1 %cmp30, label %if.end32, label %if.then31, !dbg !728

if.then31:                                        ; preds = %lor.lhs.false, %if.end24
  %25 = load i8*, i8** @pch_file, align 8, !dbg !729
  call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* %25) #6, !dbg !730
  br label %if.end32, !dbg !730

if.end32:                                         ; preds = %lor.lhs.false, %if.then31
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @pch_outfile, align 8, !dbg !731
  %call33 = call i32 @fclose(%struct._IO_FILE* %26) #6, !dbg !732
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !733
  ret void, !dbg !733
}

declare dso_local i32 @cpp_write_pch_deps(%struct.cpp_reader*, %struct._IO_FILE*) local_unnamed_addr #2

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #2

declare dso_local i32 @fseek(%struct._IO_FILE*, i64, i32) local_unnamed_addr #2

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #2

declare dso_local void @free(i8*) local_unnamed_addr #2

declare dso_local void @gt_pch_save(%struct._IO_FILE*) local_unnamed_addr #2

declare dso_local i32 @cpp_write_pch_state(%struct.cpp_reader*, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i8* @get_ident() unnamed_addr #5 !dbg !101 {
entry:
  %call = tail call i8* @memcpy(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @get_ident.result, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @get_ident.templ, i64 0, i64 0), i64 8) #6, !dbg !734
  %0 = load i32, i32* @c_language, align 4, !dbg !735
  %idxprom = zext i32 %0 to i64, !dbg !736
  %arrayidx = getelementptr inbounds [5 x i8], [5 x i8]* @get_ident.c_language_chars, i64 0, i64 %idxprom, !dbg !736
  %1 = load i8, i8* %arrayidx, align 1, !dbg !736
  store i8 %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @get_ident.result, i64 0, i64 4), align 1, !dbg !737
  ret i8* undef, !dbg !738
}

declare dso_local i32 @fclose(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @c_common_valid_pch(%struct.cpp_reader* %pfile, i8* %name, i32 %fd) local_unnamed_addr #5 !dbg !739 {
entry:
  %ident = alloca [24 x i8], align 16
  %v = alloca %struct.c_pch_validity, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !748, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata i8* %name, metadata !749, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata i32 %fd, metadata !750, metadata !DIExpression()), !dbg !764
  %0 = getelementptr inbounds [24 x i8], [24 x i8]* %ident, i64 0, i64 0, !dbg !765
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7, !dbg !765
  call void @llvm.dbg.declare(metadata [24 x i8]* %ident, metadata !753, metadata !DIExpression()), !dbg !766
  %1 = getelementptr inbounds %struct.c_pch_validity, %struct.c_pch_validity* %v, i64 0, i32 0, !dbg !767
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #7, !dbg !767
  %call = tail call i32 @memcmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @executable_checksum, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @no_checksum, i64 0, i64 0), i64 16) #6, !dbg !768
  %cmp = icmp eq i32 %call, 0, !dbg !768
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !768

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 240, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !768
  br label %cond.end, !dbg !768

cond.end:                                         ; preds = %entry, %cond.true
  %call1 = call i64 @read(i32 %fd, i8* nonnull %0, i64 24) #6, !dbg !769
  %conv = trunc i64 %call1 to i32, !dbg !769
  call void @llvm.dbg.value(metadata i32 %conv, metadata !751, metadata !DIExpression()), !dbg !764
  switch i32 %conv, label %if.then6 [
    i32 -1, label %if.then
    i32 24, label %if.end11
  ], !dbg !770

if.then:                                          ; preds = %cond.end
  call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* %name) #6, !dbg !771
  br label %if.end11, !dbg !771

if.then6:                                         ; preds = %cond.end
  %call7 = call %struct.cpp_options* @cpp_get_options(%struct.cpp_reader* %pfile) #6, !dbg !773
  %warn_invalid_pch = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %call7, i64 0, i32 41, !dbg !777
  %2 = load i8, i8* %warn_invalid_pch, align 4, !dbg !777
  %tobool = icmp eq i8 %2, 0, !dbg !773
  br i1 %tobool, label %cleanup131, label %if.then8, !dbg !778

if.then8:                                         ; preds = %if.then6
  %call9 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i8* %name) #6, !dbg !779
  br label %cleanup131, !dbg !779

if.end11:                                         ; preds = %cond.end, %if.then
  %call12 = call fastcc i8* @get_ident() #8, !dbg !780
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @get_ident.result, i64 0, i64 0), metadata !757, metadata !DIExpression()), !dbg !764
  %call14 = call i32 @memcmp(i8* nonnull %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @get_ident.result, i64 0, i64 0), i64 8) #6, !dbg !781
  %cmp15 = icmp eq i32 %call14, 0, !dbg !783
  br i1 %cmp15, label %if.end40, label %if.then17, !dbg !784

if.then17:                                        ; preds = %if.end11
  %call18 = call %struct.cpp_options* @cpp_get_options(%struct.cpp_reader* %pfile) #6, !dbg !785
  %warn_invalid_pch19 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %call18, i64 0, i32 41, !dbg !788
  %3 = load i8, i8* %warn_invalid_pch19, align 4, !dbg !788
  %tobool20 = icmp eq i8 %3, 0, !dbg !785
  br i1 %tobool20, label %cleanup131, label %if.then21, !dbg !789

if.then21:                                        ; preds = %if.then17
  %call23 = call i32 @memcmp(i8* nonnull %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @get_ident.result, i64 0, i64 0), i64 5) #6, !dbg !790
  %cmp24 = icmp eq i32 %call23, 0, !dbg !793
  br i1 %cmp24, label %if.then26, label %if.else28, !dbg !794

if.then26:                                        ; preds = %if.then21
  %call27 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), i8* %name) #6, !dbg !795
  br label %cleanup131, !dbg !795

if.else28:                                        ; preds = %if.then21
  %call30 = call i32 @memcmp(i8* nonnull %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @get_ident.result, i64 0, i64 0), i64 4) #6, !dbg !796
  %cmp31 = icmp eq i32 %call30, 0, !dbg !798
  br i1 %cmp31, label %if.then33, label %if.else35, !dbg !799

if.then33:                                        ; preds = %if.else28
  %4 = load i8*, i8** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 0), align 8, !dbg !800
  %call34 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8* %name, i8* %4) #6, !dbg !801
  br label %cleanup131, !dbg !801

if.else35:                                        ; preds = %if.else28
  %call36 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i8* %name) #6, !dbg !802
  br label %cleanup131

if.end40:                                         ; preds = %if.end11
  %add.ptr = getelementptr inbounds [24 x i8], [24 x i8]* %ident, i64 0, i64 8, !dbg !803
  %call42 = call i32 @memcmp(i8* nonnull %add.ptr, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @executable_checksum, i64 0, i64 0), i64 16) #6, !dbg !805
  %cmp43 = icmp eq i32 %call42, 0, !dbg !806
  br i1 %cmp43, label %if.end52, label %if.then45, !dbg !807

if.then45:                                        ; preds = %if.end40
  %call46 = call %struct.cpp_options* @cpp_get_options(%struct.cpp_reader* %pfile) #6, !dbg !808
  %warn_invalid_pch47 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %call46, i64 0, i32 41, !dbg !811
  %5 = load i8, i8* %warn_invalid_pch47, align 4, !dbg !811
  %tobool48 = icmp eq i8 %5, 0, !dbg !808
  br i1 %tobool48, label %cleanup131, label %if.then49, !dbg !812

if.then49:                                        ; preds = %if.then45
  %call50 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.16, i64 0, i64 0), i8* %name) #6, !dbg !813
  br label %cleanup131, !dbg !813

if.end52:                                         ; preds = %if.end40
  %call53 = call i64 @read(i32 %fd, i8* nonnull %1, i64 24) #6, !dbg !814
  %cmp54 = icmp eq i64 %call53, 24, !dbg !816
  br i1 %cmp54, label %if.end57, label %if.then56, !dbg !817

if.then56:                                        ; preds = %if.end52
  call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* %name) #6, !dbg !818
  br label %if.end57, !dbg !818

if.end57:                                         ; preds = %if.end52, %if.then56
  %6 = load i8, i8* %1, align 8, !dbg !819
  %conv58 = zext i8 %6 to i32, !dbg !821
  %7 = load i32, i32* @write_symbols, align 4, !dbg !822
  %cmp59 = icmp ne i32 %7, %conv58, !dbg !823
  %cmp61 = icmp ne i32 %7, 0, !dbg !824
  %or.cond = and i1 %cmp59, %cmp61, !dbg !825
  br i1 %or.cond, label %if.then63, label %for.cond.preheader, !dbg !825

for.cond.preheader:                               ; preds = %if.end57
  %8 = load i32, i32* @flag_exceptions, align 4, !dbg !826
  br label %for.cond, !dbg !830

if.then63:                                        ; preds = %if.end57
  %call64 = call %struct.cpp_options* @cpp_get_options(%struct.cpp_reader* %pfile) #6, !dbg !831
  %warn_invalid_pch65 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %call64, i64 0, i32 41, !dbg !834
  %9 = load i8, i8* %warn_invalid_pch65, align 4, !dbg !834
  %tobool66 = icmp eq i8 %9, 0, !dbg !831
  br i1 %tobool66, label %cleanup131, label %if.then67, !dbg !835

if.then67:                                        ; preds = %if.then63
  %10 = load i8, i8* %1, align 8, !dbg !836
  %idxprom = zext i8 %10 to i64, !dbg !837
  %arrayidx = getelementptr inbounds [0 x i8*], [0 x i8*]* @debug_type_names, i64 0, i64 %idxprom, !dbg !837
  %11 = load i8*, i8** %arrayidx, align 8, !dbg !837
  %12 = load i32, i32* @write_symbols, align 4, !dbg !838
  %idxprom69 = zext i32 %12 to i64, !dbg !839
  %arrayidx70 = getelementptr inbounds [0 x i8*], [0 x i8*]* @debug_type_names, i64 0, i64 %idxprom69, !dbg !839
  %13 = load i8*, i8** %arrayidx70, align 8, !dbg !839
  %call71 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0), i8* %name, i8* %11, i8* %13) #6, !dbg !840
  br label %cleanup131, !dbg !840

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %i.0 = phi i1 [ false, %for.inc ], [ true, %for.cond.preheader ]
  br i1 %i.0, label %for.body, label %cleanup.loopexit, !dbg !830

for.body:                                         ; preds = %for.cond
  %arrayidx77 = getelementptr inbounds %struct.c_pch_validity, %struct.c_pch_validity* %v, i64 0, i32 1, i64 0, !dbg !841
  %14 = load i8, i8* %arrayidx77, align 1, !dbg !841
  %conv78 = sext i8 %14 to i32, !dbg !841
  %cmp79 = icmp eq i32 %8, %conv78, !dbg !842
  br i1 %cmp79, label %for.inc, label %if.then81, !dbg !843

if.then81:                                        ; preds = %for.body
  %call82 = call %struct.cpp_options* @cpp_get_options(%struct.cpp_reader* %pfile) #6, !dbg !844
  %warn_invalid_pch83 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %call82, i64 0, i32 41, !dbg !847
  %15 = load i8, i8* %warn_invalid_pch83, align 4, !dbg !847
  %tobool84 = icmp eq i8 %15, 0, !dbg !844
  br i1 %tobool84, label %cleanup, label %if.then85, !dbg !848

if.then85:                                        ; preds = %if.then81
  %call87 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0), i8* %name, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i64 0, i64 0)) #6, !dbg !849
  br label %cleanup, !dbg !849

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata i64 1, metadata !759, metadata !DIExpression()), !dbg !850
  br label %for.cond, !dbg !851, !llvm.loop !852

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.then81, %if.then85
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then85 ], [ false, %if.then81 ], [ true, %cleanup.loopexit ]
  br i1 %cleanup.dest.slot.0, label %cleanup.cont, label %cleanup131

cleanup.cont:                                     ; preds = %cleanup
  %pch_init = getelementptr inbounds %struct.c_pch_validity, %struct.c_pch_validity* %v, i64 0, i32 2, !dbg !854
  %16 = load void ()*, void ()** %pch_init, align 8, !dbg !854
  %cmp90 = icmp eq void ()* %16, @pch_init, !dbg !856
  br i1 %cmp90, label %if.end99, label %if.then92, !dbg !857

if.then92:                                        ; preds = %cleanup.cont
  %call93 = call %struct.cpp_options* @cpp_get_options(%struct.cpp_reader* %pfile) #6, !dbg !858
  %warn_invalid_pch94 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %call93, i64 0, i32 41, !dbg !861
  %17 = load i8, i8* %warn_invalid_pch94, align 4, !dbg !861
  %tobool95 = icmp eq i8 %17, 0, !dbg !858
  br i1 %tobool95, label %cleanup131, label %if.then96, !dbg !862

if.then96:                                        ; preds = %if.then92
  %call97 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.19, i64 0, i64 0), i8* %name) #6, !dbg !863
  br label %cleanup131, !dbg !863

if.end99:                                         ; preds = %cleanup.cont
  %target_data_length = getelementptr inbounds %struct.c_pch_validity, %struct.c_pch_validity* %v, i64 0, i32 3, !dbg !864
  %18 = load i64, i64* %target_data_length, align 8, !dbg !864
  %call100 = call i8* @xmalloc(i64 %18) #6, !dbg !865
  call void @llvm.dbg.value(metadata i8* %call100, metadata !761, metadata !DIExpression()), !dbg !866
  %19 = load i64, i64* %target_data_length, align 8, !dbg !867
  %call102 = call i64 @read(i32 %fd, i8* %call100, i64 %19) #6, !dbg !869
  %20 = load i64, i64* %target_data_length, align 8, !dbg !870
  %cmp104 = icmp eq i64 %call102, %20, !dbg !871
  br i1 %cmp104, label %if.end107, label %if.then106, !dbg !872

if.then106:                                       ; preds = %if.end99
  call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* %name) #6, !dbg !873
  %.pre = load i64, i64* %target_data_length, align 8, !dbg !874
  br label %if.end107, !dbg !873

if.end107:                                        ; preds = %if.end99, %if.then106
  %21 = phi i64 [ %call102, %if.end99 ], [ %.pre, %if.then106 ], !dbg !874
  %22 = load i8* (i8*, i64)*, i8* (i8*, i64)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 75), align 8, !dbg !875
  %call109 = call i8* %22(i8* %call100, i64 %21) #6, !dbg !876
  call void @llvm.dbg.value(metadata i8* %call109, metadata !763, metadata !DIExpression()), !dbg !866
  call void @free(i8* %call100) #6, !dbg !877
  %cmp110 = icmp eq i8* %call109, null, !dbg !878
  br i1 %cmp110, label %cleanup120, label %if.then112, !dbg !880

if.then112:                                       ; preds = %if.end107
  %call113 = call %struct.cpp_options* @cpp_get_options(%struct.cpp_reader* %pfile) #6, !dbg !881
  %warn_invalid_pch114 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %call113, i64 0, i32 41, !dbg !884
  %23 = load i8, i8* %warn_invalid_pch114, align 4, !dbg !884
  %tobool115 = icmp eq i8 %23, 0, !dbg !881
  br i1 %tobool115, label %cleanup120, label %if.then116, !dbg !885

if.then116:                                       ; preds = %if.then112
  %call117 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8* %name, i8* nonnull %call109) #6, !dbg !886
  br label %cleanup120, !dbg !886

cleanup120:                                       ; preds = %if.then112, %if.end107, %if.then116
  %cleanup.dest.slot.1 = phi i1 [ false, %if.then116 ], [ false, %if.then112 ], [ true, %if.end107 ]
  br i1 %cleanup.dest.slot.1, label %cleanup.cont123, label %cleanup131

cleanup.cont123:                                  ; preds = %cleanup120
  %call124 = call i32 @cpp_valid_state(%struct.cpp_reader* %pfile, i8* %name, i32 %fd) #6, !dbg !887
  call void @llvm.dbg.value(metadata i32 %call124, metadata !752, metadata !DIExpression()), !dbg !764
  %cmp125 = icmp eq i32 %call124, -1, !dbg !888
  br i1 %cmp125, label %cleanup131, label %if.else128, !dbg !890

if.else128:                                       ; preds = %cleanup.cont123
  %cmp129 = icmp eq i32 %call124, 0, !dbg !891
  %conv130 = zext i1 %cmp129 to i32, !dbg !891
  br label %cleanup131, !dbg !892

cleanup131:                                       ; preds = %if.then6, %if.then17, %if.then45, %if.then63, %if.then92, %cleanup.cont123, %if.then96, %if.then67, %if.then49, %if.then33, %if.else35, %if.then26, %if.then8, %cleanup120, %cleanup, %if.else128
  %retval.2 = phi i32 [ 2, %cleanup ], [ 2, %cleanup120 ], [ %conv130, %if.else128 ], [ 2, %if.then8 ], [ 2, %if.then6 ], [ 2, %if.then26 ], [ 2, %if.else35 ], [ 2, %if.then33 ], [ 2, %if.then17 ], [ 2, %if.then49 ], [ 2, %if.then45 ], [ 2, %if.then67 ], [ 2, %if.then63 ], [ 2, %if.then96 ], [ 2, %if.then92 ], [ 2, %cleanup.cont123 ], !dbg !764
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #7, !dbg !893
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7, !dbg !893
  ret i32 %retval.2, !dbg !893
}

declare dso_local i64 @read(i32, i8*, i64) local_unnamed_addr #2

declare dso_local %struct.cpp_options* @cpp_get_options(%struct.cpp_reader*) local_unnamed_addr #2

declare dso_local zeroext i8 @cpp_error(%struct.cpp_reader*, i32, i8*, ...) local_unnamed_addr #2

declare dso_local i32 @cpp_valid_state(%struct.cpp_reader*, i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @c_common_read_pch(%struct.cpp_reader* %pfile, i8* %name, i32 %fd, i8* %orig_name) local_unnamed_addr #5 !dbg !894 {
entry:
  %h = alloca %struct.c_pch_header, align 8
  %smd = alloca %struct.save_macro_data*, align 8
  %saved_loc = alloca %struct.expanded_location, align 8
  %tmp = alloca %struct.expanded_location, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !898, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata i8* %name, metadata !899, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata i32 %fd, metadata !900, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata i8* %orig_name, metadata !901, metadata !DIExpression()), !dbg !925
  %0 = bitcast %struct.c_pch_header* %h to i8*, !dbg !926
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !926
  %1 = bitcast %struct.save_macro_data** %smd to i8*, !dbg !927
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !927
  %2 = bitcast %struct.expanded_location* %saved_loc to i8*, !dbg !928
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #7, !dbg !928
  %call = tail call %struct._IO_FILE* @fdopen_unlocked(i32 %fd, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0)) #6, !dbg !929
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call, metadata !902, metadata !DIExpression()), !dbg !925
  %cmp = icmp eq %struct._IO_FILE* %call, null, !dbg !930
  br i1 %cmp, label %if.then, label %if.end, !dbg !932

if.then:                                          ; preds = %entry
  %call1 = tail call zeroext i8 @cpp_errno(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !933
  %call2 = tail call i32 @close(i32 %fd) #6, !dbg !935
  br label %cleanup, !dbg !936

if.end:                                           ; preds = %entry
  %3 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !937
  %call3 = tail call %struct.cpp_callbacks* @cpp_get_callbacks(%struct.cpp_reader* %3) #6, !dbg !938
  %valid_pch = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %call3, i64 0, i32 8, !dbg !939
  store i32 (%struct.cpp_reader*, i8*, i32)* null, i32 (%struct.cpp_reader*, i8*, i32)** %valid_pch, align 8, !dbg !940
  %call4 = call i64 @fread(i8* nonnull %0, i64 8, i64 1, %struct._IO_FILE* nonnull %call) #6, !dbg !941
  %cmp5 = icmp eq i64 %call4, 1, !dbg !943
  br i1 %cmp5, label %if.end9, label %if.then6, !dbg !944

if.then6:                                         ; preds = %if.end
  %call7 = call zeroext i8 @cpp_errno(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0)) #6, !dbg !945
  %call8 = call i32 @fclose(%struct._IO_FILE* nonnull %call) #6, !dbg !947
  br label %cleanup, !dbg !948

if.end9:                                          ; preds = %if.end
  %4 = load i32, i32* @flag_preprocess_only, align 4, !dbg !949
  %tobool = icmp eq i32 %4, 0, !dbg !949
  br i1 %tobool, label %if.then10, label %if.else, !dbg !950

if.then10:                                        ; preds = %if.end9
  %call11 = call i8* @xmalloc(i64 16384) #6, !dbg !951
  call void @llvm.dbg.value(metadata i8* %call11, metadata !920, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata i64 0, metadata !917, metadata !DIExpression()), !dbg !952
  %asm_size = getelementptr inbounds %struct.c_pch_header, %struct.c_pch_header* %h, i64 0, i32 0, !dbg !953
  br label %for.cond, !dbg !954

for.cond:                                         ; preds = %if.end23, %if.then10
  %written.0 = phi i64 [ 0, %if.then10 ], [ %add, %if.end23 ], !dbg !955
  call void @llvm.dbg.value(metadata i64 %written.0, metadata !917, metadata !DIExpression()), !dbg !952
  %5 = load i64, i64* %asm_size, align 8, !dbg !956
  %cmp12 = icmp ugt i64 %5, %written.0, !dbg !957
  br i1 %cmp12, label %for.body, label %for.end, !dbg !958

for.body:                                         ; preds = %for.cond
  %sub = sub i64 %5, %written.0, !dbg !959
  call void @llvm.dbg.value(metadata i64 %sub, metadata !921, metadata !DIExpression()), !dbg !960
  %6 = icmp slt i64 %sub, 16384, !dbg !961
  %spec.select = select i1 %6, i64 %sub, i64 16384, !dbg !961
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !921, metadata !DIExpression()), !dbg !960
  %call17 = call i64 @fread(i8* %call11, i64 %spec.select, i64 1, %struct._IO_FILE* nonnull %call) #6, !dbg !962
  %cmp18 = icmp eq i64 %call17, 1, !dbg !964
  br i1 %cmp18, label %lor.lhs.false, label %if.then21, !dbg !965

lor.lhs.false:                                    ; preds = %for.body
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8, !dbg !966
  %call19 = call i64 @fwrite(i8* %call11, i64 %spec.select, i64 1, %struct._IO_FILE* %7) #6, !dbg !967
  %cmp20 = icmp eq i64 %call19, 1, !dbg !968
  br i1 %cmp20, label %if.end23, label %if.then21, !dbg !969

if.then21:                                        ; preds = %lor.lhs.false, %for.body
  %call22 = call zeroext i8 @cpp_errno(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0)) #6, !dbg !970
  br label %if.end23, !dbg !970

if.end23:                                         ; preds = %lor.lhs.false, %if.then21
  %add = add i64 %written.0, %spec.select, !dbg !971
  call void @llvm.dbg.value(metadata i64 %add, metadata !917, metadata !DIExpression()), !dbg !952
  br label %for.cond, !dbg !972, !llvm.loop !973

for.end:                                          ; preds = %for.cond
  call void @free(i8* %call11) #6, !dbg !975
  br label %if.end30, !dbg !976

if.else:                                          ; preds = %if.end9
  %asm_size24 = getelementptr inbounds %struct.c_pch_header, %struct.c_pch_header* %h, i64 0, i32 0, !dbg !977
  %8 = load i64, i64* %asm_size24, align 8, !dbg !977
  %call25 = call i32 @fseek(%struct._IO_FILE* nonnull %call, i64 %8, i32 1) #6, !dbg !980
  %cmp26 = icmp eq i32 %call25, 0, !dbg !981
  br i1 %cmp26, label %if.end30, label %if.then27, !dbg !982

if.then27:                                        ; preds = %if.else
  %call28 = call zeroext i8 @cpp_errno(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0)) #6, !dbg !983
  br label %if.end30, !dbg !983

if.end30:                                         ; preds = %if.else, %if.then27, %for.end
  %9 = bitcast %struct.expanded_location* %tmp to i8*, !dbg !984
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #7, !dbg !984
  %10 = load %struct.line_maps*, %struct.line_maps** @line_table, align 8, !dbg !985
  %highest_line = getelementptr inbounds %struct.line_maps, %struct.line_maps* %10, i64 0, i32 8, !dbg !986
  %11 = load i32, i32* %highest_line, align 4, !dbg !986
  call void @expand_location(%struct.expanded_location* nonnull sret %tmp, i32 %11) #6, !dbg !984
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %9, i64 24, i1 false), !dbg !984
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #7, !dbg !984
  %12 = load %struct.line_maps*, %struct.line_maps** @line_table, align 8, !dbg !987
  %trace_includes = getelementptr inbounds %struct.line_maps, %struct.line_maps* %12, i64 0, i32 6, !dbg !988
  %13 = load i8, i8* %trace_includes, align 4, !dbg !988
  call void @llvm.dbg.value(metadata i8 %13, metadata !916, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata %struct.save_macro_data** %smd, metadata !904, metadata !DIExpression(DW_OP_deref)), !dbg !925
  call void @cpp_prepare_state(%struct.cpp_reader* %pfile, %struct.save_macro_data** nonnull %smd) #6, !dbg !989
  call void @gt_pch_restore(%struct._IO_FILE* nonnull %call) #6, !dbg !990
  %14 = load %struct.save_macro_data*, %struct.save_macro_data** %smd, align 8, !dbg !991
  call void @llvm.dbg.value(metadata %struct.save_macro_data* %14, metadata !904, metadata !DIExpression()), !dbg !925
  %call31 = call i32 @cpp_read_state(%struct.cpp_reader* %pfile, i8* %name, %struct._IO_FILE* nonnull %call, %struct.save_macro_data* %14) #6, !dbg !993
  %cmp32 = icmp eq i32 %call31, 0, !dbg !994
  %call34 = call i32 @fclose(%struct._IO_FILE* nonnull %call) #6, !dbg !925
  br i1 %cmp32, label %if.end35, label %cleanup, !dbg !995

if.end35:                                         ; preds = %if.end30
  %15 = load %struct.line_maps*, %struct.line_maps** @line_table, align 8, !dbg !996
  %trace_includes37 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %15, i64 0, i32 6, !dbg !997
  store i8 %13, i8* %trace_includes37, align 4, !dbg !998
  call void @cpp_set_line_map(%struct.cpp_reader* %pfile, %struct.line_maps* %15) #6, !dbg !999
  %16 = load %struct.line_maps*, %struct.line_maps** @line_table, align 8, !dbg !1000
  %file = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %saved_loc, i64 0, i32 0, !dbg !1001
  %17 = load i8*, i8** %file, align 8, !dbg !1001
  %line = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %saved_loc, i64 0, i32 1, !dbg !1002
  %18 = load i32, i32* %line, align 8, !dbg !1002
  %call38 = call %struct.line_map* @linemap_add(%struct.line_maps* %16, i32 2, i32 0, i8* %17, i32 %18) #6, !dbg !1003
  %19 = load void ()*, void ()** @lang_post_pch_load, align 8, !dbg !1004
  %tobool39 = icmp eq void ()* %19, null, !dbg !1004
  br i1 %tobool39, label %cleanup, label %if.then40, !dbg !1006

if.then40:                                        ; preds = %if.end35
  call void %19() #6, !dbg !1007
  br label %cleanup, !dbg !1007

cleanup:                                          ; preds = %if.end35, %if.end30, %if.then40, %if.then6, %if.then
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #7, !dbg !1008
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !1008
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !1008
  ret void, !dbg !1008
}

declare dso_local %struct._IO_FILE* @fdopen_unlocked(i32, i8*) local_unnamed_addr #2

declare dso_local zeroext i8 @cpp_errno(%struct.cpp_reader*, i32, i8*) local_unnamed_addr #2

declare dso_local i32 @close(i32) local_unnamed_addr #2

declare dso_local %struct.cpp_callbacks* @cpp_get_callbacks(%struct.cpp_reader*) local_unnamed_addr #2

declare dso_local void @expand_location(%struct.expanded_location* sret, i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

declare dso_local void @cpp_prepare_state(%struct.cpp_reader*, %struct.save_macro_data**) local_unnamed_addr #2

declare dso_local void @gt_pch_restore(%struct._IO_FILE*) local_unnamed_addr #2

declare dso_local i32 @cpp_read_state(%struct.cpp_reader*, i8*, %struct._IO_FILE*, %struct.save_macro_data*) local_unnamed_addr #2

declare dso_local void @cpp_set_line_map(%struct.cpp_reader*, %struct.line_maps*) local_unnamed_addr #2

declare dso_local %struct.line_map* @linemap_add(%struct.line_maps*, i32, i32, i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @c_common_no_more_pch() local_unnamed_addr #5 !dbg !1009 {
entry:
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1010
  %call = tail call %struct.cpp_callbacks* @cpp_get_callbacks(%struct.cpp_reader* %0) #6, !dbg !1012
  %valid_pch = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %call, i64 0, i32 8, !dbg !1013
  %1 = load i32 (%struct.cpp_reader*, i8*, i32)*, i32 (%struct.cpp_reader*, i8*, i32)** %valid_pch, align 8, !dbg !1013
  %tobool = icmp eq i32 (%struct.cpp_reader*, i8*, i32)* %1, null, !dbg !1012
  br i1 %tobool, label %if.end, label %if.then, !dbg !1014

if.then:                                          ; preds = %entry
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1015
  %call1 = tail call %struct.cpp_callbacks* @cpp_get_callbacks(%struct.cpp_reader* %2) #6, !dbg !1017
  %valid_pch2 = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %call1, i64 0, i32 8, !dbg !1018
  store i32 (%struct.cpp_reader*, i8*, i32)* null, i32 (%struct.cpp_reader*, i8*, i32)** %valid_pch2, align 8, !dbg !1019
  %3 = load i32 (i8*, i64, i32, i64)*, i32 (i8*, i64, i32, i64)** getelementptr inbounds (%struct.host_hooks, %struct.host_hooks* @host_hooks, i64 0, i32 2), align 8, !dbg !1020
  %call3 = tail call i32 %3(i8* null, i64 0, i32 -1, i64 0) #6, !dbg !1021
  br label %if.end, !dbg !1022

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !1023
}

; Function Attrs: nounwind uwtable
define dso_local void @c_common_pch_pragma(%struct.cpp_reader* %pfile, i8* %name) local_unnamed_addr #5 !dbg !1024 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1028, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.value(metadata i8* %name, metadata !1029, metadata !DIExpression()), !dbg !1031
  %call = tail call %struct.cpp_options* @cpp_get_options(%struct.cpp_reader* %pfile) #6, !dbg !1032
  %preprocessed = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %call, i64 0, i32 32, !dbg !1034
  %0 = load i8, i8* %preprocessed, align 2, !dbg !1034
  %tobool = icmp eq i8 %0, 0, !dbg !1032
  br i1 %tobool, label %if.then, label %if.end, !dbg !1035

if.then:                                          ; preds = %entry
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.25, i64 0, i64 0)) #6, !dbg !1036
  %1 = load i32, i32* @input_location, align 4, !dbg !1038
  tail call void (i32, i8*, ...) @inform(i32 %1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0)) #6, !dbg !1039
  br label %cleanup.cont, !dbg !1040

if.end:                                           ; preds = %entry
  %call1 = tail call i32 (i8*, i32, ...) @open(i8* %name, i32 0, i32 438) #6, !dbg !1041
  call void @llvm.dbg.value(metadata i32 %call1, metadata !1030, metadata !DIExpression()), !dbg !1031
  %cmp = icmp eq i32 %call1, -1, !dbg !1042
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1044

if.then2:                                         ; preds = %if.end
  tail call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27, i64 0, i64 0), i8* %name) #6, !dbg !1045
  br label %if.end3, !dbg !1045

if.end3:                                          ; preds = %if.then2, %if.end
  %call4 = tail call i32 @c_common_valid_pch(%struct.cpp_reader* %pfile, i8* %name, i32 %call1) #8, !dbg !1046
  %cmp5 = icmp eq i32 %call4, 1, !dbg !1048
  br i1 %cmp5, label %if.end11, label %if.then6, !dbg !1049

if.then6:                                         ; preds = %if.end3
  %call7 = tail call %struct.cpp_options* @cpp_get_options(%struct.cpp_reader* %pfile) #6, !dbg !1050
  %warn_invalid_pch = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %call7, i64 0, i32 41, !dbg !1053
  %2 = load i8, i8* %warn_invalid_pch, align 4, !dbg !1053
  %tobool8 = icmp eq i8 %2, 0, !dbg !1050
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !1054

if.then9:                                         ; preds = %if.then6
  %3 = load i32, i32* @input_location, align 4, !dbg !1055
  tail call void (i32, i8*, ...) @inform(i32 %3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.28, i64 0, i64 0)) #6, !dbg !1056
  br label %if.end10, !dbg !1056

if.end10:                                         ; preds = %if.then6, %if.then9
  tail call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i64 0, i64 0), i8* %name) #6, !dbg !1057
  br label %if.end11, !dbg !1058

if.end11:                                         ; preds = %if.end3, %if.end10
  tail call void @c_common_read_pch(%struct.cpp_reader* %pfile, i8* %name, i32 %call1, i8* %name) #8, !dbg !1059
  %call12 = tail call i32 @close(i32 %call1) #6, !dbg !1060
  br label %cleanup.cont, !dbg !1061

cleanup.cont:                                     ; preds = %if.then, %if.end11
  ret void, !dbg !1061
}

declare dso_local void @error(i8*, ...) local_unnamed_addr #2

declare dso_local void @inform(i32, i8*, ...) local_unnamed_addr #2

declare dso_local i32 @open(i8*, i32, ...) local_unnamed_addr #2

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) local_unnamed_addr #2

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

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

!llvm.dbg.cu = !{!6}
!llvm.module.flags = !{!130, !131, !132}
!llvm.ident = !{!133}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "partial_pch", scope: !2, file: !3, line: 116, type: !109, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "pch_init", scope: !3, file: !3, line: 111, type: !4, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !117)
!3 = !DIFile(filename: "c-pch.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !DISubroutineType(types: !5)
!5 = !{null}
!6 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !7, retainedTypes: !8, globals: !21, nameTableKind: None)
!7 = !{}
!8 = !{!9, !10, !11, !12, !15, !16, !13, !18}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !19, line: 46, baseType: !20)
!19 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!20 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!21 = !{!0, !22, !80, !82, !85, !90, !99, !107, !112}
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "pch_outfile", scope: !6, file: !3, line: 80, type: !24, isLocal: true, isDefinition: true)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !26, line: 7, baseType: !27)
!26 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !28, line: 49, size: 1728, elements: !29)
!28 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!29 = !{!30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !45, !47, !48, !49, !53, !55, !57, !61, !64, !66, !69, !72, !73, !74, !75, !76}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !27, file: !28, line: 51, baseType: !11, size: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !27, file: !28, line: 54, baseType: !13, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !27, file: !28, line: 55, baseType: !13, size: 64, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !27, file: !28, line: 56, baseType: !13, size: 64, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !27, file: !28, line: 57, baseType: !13, size: 64, offset: 256)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !27, file: !28, line: 58, baseType: !13, size: 64, offset: 320)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !27, file: !28, line: 59, baseType: !13, size: 64, offset: 384)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !27, file: !28, line: 60, baseType: !13, size: 64, offset: 448)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !27, file: !28, line: 61, baseType: !13, size: 64, offset: 512)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !27, file: !28, line: 64, baseType: !13, size: 64, offset: 576)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !27, file: !28, line: 65, baseType: !13, size: 64, offset: 640)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !27, file: !28, line: 66, baseType: !13, size: 64, offset: 704)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !27, file: !28, line: 68, baseType: !43, size: 64, offset: 768)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !28, line: 36, flags: DIFlagFwdDecl)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !27, file: !28, line: 70, baseType: !46, size: 64, offset: 832)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !27, file: !28, line: 72, baseType: !11, size: 32, offset: 896)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !27, file: !28, line: 73, baseType: !11, size: 32, offset: 928)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !27, file: !28, line: 74, baseType: !50, size: 64, offset: 960)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !51, line: 152, baseType: !52)
!51 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!52 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !27, file: !28, line: 77, baseType: !54, size: 16, offset: 1024)
!54 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !27, file: !28, line: 78, baseType: !56, size: 8, offset: 1040)
!56 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !27, file: !28, line: 79, baseType: !58, size: 8, offset: 1048)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 1)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !27, file: !28, line: 81, baseType: !62, size: 64, offset: 1088)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !28, line: 43, baseType: null)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !27, file: !28, line: 89, baseType: !65, size: 64, offset: 1152)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !51, line: 153, baseType: !52)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !27, file: !28, line: 91, baseType: !67, size: 64, offset: 1216)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !28, line: 37, flags: DIFlagFwdDecl)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !27, file: !28, line: 92, baseType: !70, size: 64, offset: 1280)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !28, line: 38, flags: DIFlagFwdDecl)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !27, file: !28, line: 93, baseType: !46, size: 64, offset: 1344)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !27, file: !28, line: 94, baseType: !15, size: 64, offset: 1408)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !27, file: !28, line: 95, baseType: !18, size: 64, offset: 1472)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !27, file: !28, line: 96, baseType: !11, size: 32, offset: 1536)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !27, file: !28, line: 98, baseType: !77, size: 160, offset: 1568)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 160, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 20)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "asm_file_startpos", scope: !6, file: !3, line: 83, type: !52, isLocal: true, isDefinition: true)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "lang_post_pch_load", scope: !6, file: !3, line: 359, type: !84, isLocal: false, isDefinition: true)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(name: "no_checksum", scope: !6, file: !3, line: 57, type: !87, isLocal: true, isDefinition: true)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 128, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 16)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "pch_matching", scope: !6, file: !3, line: 47, type: !92, isLocal: true, isDefinition: true)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 128, elements: !59)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "c_pch_matching", file: !3, line: 43, size: 128, elements: !95)
!95 = !{!96, !98}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var", scope: !94, file: !3, line: 45, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "flag_name", scope: !94, file: !3, line: 46, baseType: !16, size: 64, offset: 64)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "result", scope: !101, file: !3, line: 95, type: !104, isLocal: true, isDefinition: true)
!101 = distinct !DISubprogram(name: "get_ident", scope: !3, file: !3, line: 93, type: !102, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !7)
!102 = !DISubroutineType(types: !103)
!103 = !{!16}
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 64, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 8)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "templ", scope: !101, file: !3, line: 96, type: !109, isLocal: true, isDefinition: true)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 72, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 9)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(name: "c_language_chars", scope: !101, file: !3, line: 97, type: !114, isLocal: true, isDefinition: true)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 40, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 5)
!117 = !{!118, !119, !127, !128}
!118 = !DILocalVariable(name: "f", scope: !2, file: !3, line: 113, type: !24)
!119 = !DILocalVariable(name: "v", scope: !2, file: !3, line: 114, type: !120)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "c_pch_validity", file: !3, line: 64, size: 192, elements: !121)
!121 = !{!122, !123, !125, !126}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "debug_info_type", scope: !120, file: !3, line: 66, baseType: !10, size: 8)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !120, file: !3, line: 67, baseType: !124, size: 8, offset: 8)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 8, elements: !59)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "pch_init", scope: !120, file: !3, line: 68, baseType: !84, size: 64, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "target_data_length", scope: !120, file: !3, line: 69, baseType: !18, size: 64, offset: 128)
!127 = !DILocalVariable(name: "target_validity", scope: !2, file: !3, line: 115, type: !15)
!128 = !DILocalVariable(name: "i", scope: !129, file: !3, line: 140, type: !18)
!129 = distinct !DILexicalBlock(scope: !2, file: !3, line: 139, column: 3)
!130 = !{i32 2, !"Dwarf Version", i32 4}
!131 = !{i32 2, !"Debug Info Version", i32 3}
!132 = !{i32 1, !"wchar_size", i32 4}
!133 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!134 = distinct !DISubprogram(name: "vprintf", scope: !135, file: !135, line: 39, type: !136, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !147)
!135 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!136 = !DISubroutineType(types: !137)
!137 = !{!11, !138, !139}
!138 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !16)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !141)
!141 = !{!142, !144, !145, !146}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !140, file: !3, baseType: !143, size: 32)
!143 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !140, file: !3, baseType: !143, size: 32, offset: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !140, file: !3, baseType: !15, size: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !140, file: !3, baseType: !15, size: 64, offset: 128)
!147 = !{!148, !149}
!148 = !DILocalVariable(name: "__fmt", arg: 1, scope: !134, file: !135, line: 39, type: !138)
!149 = !DILocalVariable(name: "__arg", arg: 2, scope: !134, file: !135, line: 39, type: !139)
!150 = !DILocation(line: 0, scope: !134)
!151 = !DILocation(line: 41, column: 20, scope: !134)
!152 = !DILocation(line: 41, column: 10, scope: !134)
!153 = !DILocation(line: 41, column: 3, scope: !134)
!154 = distinct !DISubprogram(name: "getchar", scope: !135, file: !135, line: 47, type: !155, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !7)
!155 = !DISubroutineType(types: !156)
!156 = !{!11}
!157 = !DILocation(line: 49, column: 16, scope: !154)
!158 = !DILocation(line: 49, column: 10, scope: !154)
!159 = !DILocation(line: 49, column: 3, scope: !154)
!160 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !135, file: !135, line: 56, type: !161, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !163)
!161 = !DISubroutineType(types: !162)
!162 = !{!11, !24}
!163 = !{!164}
!164 = !DILocalVariable(name: "__fp", arg: 1, scope: !160, file: !135, line: 56, type: !24)
!165 = !DILocation(line: 0, scope: !160)
!166 = !DILocation(line: 58, column: 10, scope: !160)
!167 = !DILocation(line: 58, column: 3, scope: !160)
!168 = distinct !DISubprogram(name: "getc_unlocked", scope: !135, file: !135, line: 66, type: !161, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !169)
!169 = !{!170}
!170 = !DILocalVariable(name: "__fp", arg: 1, scope: !168, file: !135, line: 66, type: !24)
!171 = !DILocation(line: 0, scope: !168)
!172 = !DILocation(line: 68, column: 10, scope: !168)
!173 = !DILocation(line: 68, column: 3, scope: !168)
!174 = distinct !DISubprogram(name: "getchar_unlocked", scope: !135, file: !135, line: 73, type: !155, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !7)
!175 = !DILocation(line: 75, column: 10, scope: !174)
!176 = !DILocation(line: 75, column: 3, scope: !174)
!177 = distinct !DISubprogram(name: "putchar", scope: !135, file: !135, line: 82, type: !178, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !180)
!178 = !DISubroutineType(types: !179)
!179 = !{!11, !11}
!180 = !{!181}
!181 = !DILocalVariable(name: "__c", arg: 1, scope: !177, file: !135, line: 82, type: !11)
!182 = !DILocation(line: 0, scope: !177)
!183 = !DILocation(line: 84, column: 21, scope: !177)
!184 = !DILocation(line: 84, column: 10, scope: !177)
!185 = !DILocation(line: 84, column: 3, scope: !177)
!186 = distinct !DISubprogram(name: "fputc_unlocked", scope: !135, file: !135, line: 91, type: !187, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !189)
!187 = !DISubroutineType(types: !188)
!188 = !{!11, !11, !24}
!189 = !{!190, !191}
!190 = !DILocalVariable(name: "__c", arg: 1, scope: !186, file: !135, line: 91, type: !11)
!191 = !DILocalVariable(name: "__stream", arg: 2, scope: !186, file: !135, line: 91, type: !24)
!192 = !DILocation(line: 0, scope: !186)
!193 = !DILocation(line: 93, column: 10, scope: !186)
!194 = !DILocation(line: 93, column: 3, scope: !186)
!195 = distinct !DISubprogram(name: "putc_unlocked", scope: !135, file: !135, line: 101, type: !187, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !196)
!196 = !{!197, !198}
!197 = !DILocalVariable(name: "__c", arg: 1, scope: !195, file: !135, line: 101, type: !11)
!198 = !DILocalVariable(name: "__stream", arg: 2, scope: !195, file: !135, line: 101, type: !24)
!199 = !DILocation(line: 0, scope: !195)
!200 = !DILocation(line: 103, column: 10, scope: !195)
!201 = !DILocation(line: 103, column: 3, scope: !195)
!202 = distinct !DISubprogram(name: "putchar_unlocked", scope: !135, file: !135, line: 108, type: !178, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !203)
!203 = !{!204}
!204 = !DILocalVariable(name: "__c", arg: 1, scope: !202, file: !135, line: 108, type: !11)
!205 = !DILocation(line: 0, scope: !202)
!206 = !DILocation(line: 110, column: 10, scope: !202)
!207 = !DILocation(line: 110, column: 3, scope: !202)
!208 = distinct !DISubprogram(name: "getline", scope: !135, file: !135, line: 118, type: !209, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !213)
!209 = !DISubroutineType(types: !210)
!210 = !{!211, !12, !212, !24}
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !51, line: 193, baseType: !52)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!213 = !{!214, !215, !216}
!214 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !208, file: !135, line: 118, type: !12)
!215 = !DILocalVariable(name: "__n", arg: 2, scope: !208, file: !135, line: 118, type: !212)
!216 = !DILocalVariable(name: "__stream", arg: 3, scope: !208, file: !135, line: 118, type: !24)
!217 = !DILocation(line: 0, scope: !208)
!218 = !DILocation(line: 120, column: 10, scope: !208)
!219 = !DILocation(line: 120, column: 3, scope: !208)
!220 = distinct !DISubprogram(name: "feof_unlocked", scope: !135, file: !135, line: 128, type: !161, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !221)
!221 = !{!222}
!222 = !DILocalVariable(name: "__stream", arg: 1, scope: !220, file: !135, line: 128, type: !24)
!223 = !DILocation(line: 0, scope: !220)
!224 = !DILocation(line: 130, column: 10, scope: !220)
!225 = !DILocation(line: 130, column: 3, scope: !220)
!226 = distinct !DISubprogram(name: "ferror_unlocked", scope: !135, file: !135, line: 135, type: !161, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !227)
!227 = !{!228}
!228 = !DILocalVariable(name: "__stream", arg: 1, scope: !226, file: !135, line: 135, type: !24)
!229 = !DILocation(line: 0, scope: !226)
!230 = !DILocation(line: 137, column: 10, scope: !226)
!231 = !DILocation(line: 137, column: 3, scope: !226)
!232 = distinct !DISubprogram(name: "tolower", scope: !233, file: !233, line: 207, type: !178, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !234)
!233 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!234 = !{!235}
!235 = !DILocalVariable(name: "__c", arg: 1, scope: !232, file: !233, line: 207, type: !11)
!236 = !DILocation(line: 0, scope: !232)
!237 = !DILocation(line: 209, column: 22, scope: !232)
!238 = !DILocation(line: 209, column: 39, scope: !232)
!239 = !DILocation(line: 209, column: 38, scope: !232)
!240 = !DILocation(line: 209, column: 37, scope: !232)
!241 = !DILocation(line: 209, column: 10, scope: !232)
!242 = !DILocation(line: 209, column: 3, scope: !232)
!243 = distinct !DISubprogram(name: "toupper", scope: !233, file: !233, line: 213, type: !178, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !244)
!244 = !{!245}
!245 = !DILocalVariable(name: "__c", arg: 1, scope: !243, file: !233, line: 213, type: !11)
!246 = !DILocation(line: 0, scope: !243)
!247 = !DILocation(line: 215, column: 22, scope: !243)
!248 = !DILocation(line: 215, column: 39, scope: !243)
!249 = !DILocation(line: 215, column: 38, scope: !243)
!250 = !DILocation(line: 215, column: 37, scope: !243)
!251 = !DILocation(line: 215, column: 10, scope: !243)
!252 = !DILocation(line: 215, column: 3, scope: !243)
!253 = distinct !DISubprogram(name: "atoi", scope: !254, file: !254, line: 361, type: !255, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !257)
!254 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!255 = !DISubroutineType(types: !256)
!256 = !{!11, !16}
!257 = !{!258}
!258 = !DILocalVariable(name: "__nptr", arg: 1, scope: !253, file: !254, line: 361, type: !16)
!259 = !DILocation(line: 0, scope: !253)
!260 = !DILocation(line: 363, column: 16, scope: !253)
!261 = !DILocation(line: 363, column: 10, scope: !253)
!262 = !DILocation(line: 363, column: 3, scope: !253)
!263 = distinct !DISubprogram(name: "atol", scope: !254, file: !254, line: 366, type: !264, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !266)
!264 = !DISubroutineType(types: !265)
!265 = !{!52, !16}
!266 = !{!267}
!267 = !DILocalVariable(name: "__nptr", arg: 1, scope: !263, file: !254, line: 366, type: !16)
!268 = !DILocation(line: 0, scope: !263)
!269 = !DILocation(line: 368, column: 10, scope: !263)
!270 = !DILocation(line: 368, column: 3, scope: !263)
!271 = distinct !DISubprogram(name: "atoll", scope: !254, file: !254, line: 373, type: !272, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !275)
!272 = !DISubroutineType(types: !273)
!273 = !{!274, !16}
!274 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!275 = !{!276}
!276 = !DILocalVariable(name: "__nptr", arg: 1, scope: !271, file: !254, line: 373, type: !16)
!277 = !DILocation(line: 0, scope: !271)
!278 = !DILocation(line: 375, column: 10, scope: !271)
!279 = !DILocation(line: 375, column: 3, scope: !271)
!280 = distinct !DISubprogram(name: "bsearch", scope: !281, file: !281, line: 20, type: !282, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !290)
!281 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!282 = !DISubroutineType(types: !283)
!283 = !{!15, !284, !284, !18, !18, !286}
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !254, line: 808, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!11, !284, !284}
!290 = !{!291, !292, !293, !294, !295, !296, !297, !298, !299, !300}
!291 = !DILocalVariable(name: "__key", arg: 1, scope: !280, file: !281, line: 20, type: !284)
!292 = !DILocalVariable(name: "__base", arg: 2, scope: !280, file: !281, line: 20, type: !284)
!293 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !280, file: !281, line: 20, type: !18)
!294 = !DILocalVariable(name: "__size", arg: 4, scope: !280, file: !281, line: 20, type: !18)
!295 = !DILocalVariable(name: "__compar", arg: 5, scope: !280, file: !281, line: 21, type: !286)
!296 = !DILocalVariable(name: "__l", scope: !280, file: !281, line: 23, type: !18)
!297 = !DILocalVariable(name: "__u", scope: !280, file: !281, line: 23, type: !18)
!298 = !DILocalVariable(name: "__idx", scope: !280, file: !281, line: 23, type: !18)
!299 = !DILocalVariable(name: "__p", scope: !280, file: !281, line: 24, type: !284)
!300 = !DILocalVariable(name: "__comparison", scope: !280, file: !281, line: 25, type: !11)
!301 = !DILocation(line: 0, scope: !280)
!302 = !DILocation(line: 29, column: 3, scope: !280)
!303 = !DILocation(line: 27, column: 7, scope: !280)
!304 = !DILocation(line: 29, column: 14, scope: !280)
!305 = !DILocation(line: 31, column: 20, scope: !306)
!306 = distinct !DILexicalBlock(scope: !280, file: !281, line: 30, column: 5)
!307 = !DILocation(line: 31, column: 27, scope: !306)
!308 = !DILocation(line: 32, column: 56, scope: !306)
!309 = !DILocation(line: 32, column: 47, scope: !306)
!310 = !DILocation(line: 33, column: 22, scope: !306)
!311 = !DILocation(line: 34, column: 24, scope: !312)
!312 = distinct !DILexicalBlock(scope: !306, file: !281, line: 34, column: 11)
!313 = !DILocation(line: 34, column: 11, scope: !306)
!314 = !DILocation(line: 36, column: 29, scope: !315)
!315 = distinct !DILexicalBlock(scope: !312, file: !281, line: 36, column: 16)
!316 = !DILocation(line: 36, column: 16, scope: !312)
!317 = !DILocation(line: 37, column: 14, scope: !315)
!318 = distinct !{!318, !302, !319}
!319 = !DILocation(line: 40, column: 5, scope: !280)
!320 = !DILocation(line: 43, column: 1, scope: !280)
!321 = distinct !DISubprogram(name: "atof", scope: !322, file: !322, line: 25, type: !323, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !326)
!322 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!323 = !DISubroutineType(types: !324)
!324 = !{!325, !16}
!325 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!326 = !{!327}
!327 = !DILocalVariable(name: "__nptr", arg: 1, scope: !321, file: !322, line: 25, type: !16)
!328 = !DILocation(line: 0, scope: !321)
!329 = !DILocation(line: 27, column: 10, scope: !321)
!330 = !DILocation(line: 27, column: 3, scope: !321)
!331 = distinct !DISubprogram(name: "strtoimax", scope: !332, file: !332, line: 324, type: !333, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !339)
!332 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!333 = !DISubroutineType(types: !334)
!334 = !{!335, !138, !338, !11}
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !336, line: 101, baseType: !337)
!336 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !51, line: 72, baseType: !52)
!338 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !12)
!339 = !{!340, !341, !342}
!340 = !DILocalVariable(name: "nptr", arg: 1, scope: !331, file: !332, line: 324, type: !138)
!341 = !DILocalVariable(name: "endptr", arg: 2, scope: !331, file: !332, line: 324, type: !338)
!342 = !DILocalVariable(name: "base", arg: 3, scope: !331, file: !332, line: 324, type: !11)
!343 = !DILocation(line: 0, scope: !331)
!344 = !DILocation(line: 327, column: 10, scope: !331)
!345 = !DILocation(line: 327, column: 3, scope: !331)
!346 = distinct !DISubprogram(name: "strtoumax", scope: !332, file: !332, line: 336, type: !347, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !351)
!347 = !DISubroutineType(types: !348)
!348 = !{!349, !138, !338, !11}
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !336, line: 102, baseType: !350)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !51, line: 73, baseType: !20)
!351 = !{!352, !353, !354}
!352 = !DILocalVariable(name: "nptr", arg: 1, scope: !346, file: !332, line: 336, type: !138)
!353 = !DILocalVariable(name: "endptr", arg: 2, scope: !346, file: !332, line: 336, type: !338)
!354 = !DILocalVariable(name: "base", arg: 3, scope: !346, file: !332, line: 336, type: !11)
!355 = !DILocation(line: 0, scope: !346)
!356 = !DILocation(line: 339, column: 10, scope: !346)
!357 = !DILocation(line: 339, column: 3, scope: !346)
!358 = distinct !DISubprogram(name: "wcstoimax", scope: !332, file: !332, line: 348, type: !359, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !368)
!359 = !DISubroutineType(types: !360)
!360 = !{!335, !361, !365, !11}
!361 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !332, line: 34, baseType: !11)
!365 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !366)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!368 = !{!369, !370, !371}
!369 = !DILocalVariable(name: "nptr", arg: 1, scope: !358, file: !332, line: 348, type: !361)
!370 = !DILocalVariable(name: "endptr", arg: 2, scope: !358, file: !332, line: 348, type: !365)
!371 = !DILocalVariable(name: "base", arg: 3, scope: !358, file: !332, line: 348, type: !11)
!372 = !DILocation(line: 0, scope: !358)
!373 = !DILocation(line: 351, column: 10, scope: !358)
!374 = !DILocation(line: 351, column: 3, scope: !358)
!375 = distinct !DISubprogram(name: "wcstoumax", scope: !332, file: !332, line: 362, type: !376, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !378)
!376 = !DISubroutineType(types: !377)
!377 = !{!349, !361, !365, !11}
!378 = !{!379, !380, !381}
!379 = !DILocalVariable(name: "nptr", arg: 1, scope: !375, file: !332, line: 362, type: !361)
!380 = !DILocalVariable(name: "endptr", arg: 2, scope: !375, file: !332, line: 362, type: !365)
!381 = !DILocalVariable(name: "base", arg: 3, scope: !375, file: !332, line: 362, type: !11)
!382 = !DILocation(line: 0, scope: !375)
!383 = !DILocation(line: 365, column: 10, scope: !375)
!384 = !DILocation(line: 365, column: 3, scope: !375)
!385 = distinct !DISubprogram(name: "stat", scope: !386, file: !386, line: 453, type: !387, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !426)
!386 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!387 = !DISubroutineType(types: !388)
!388 = !{!11, !16, !389}
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !391, line: 46, size: 1152, elements: !392)
!391 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!392 = !{!393, !395, !397, !399, !401, !403, !405, !406, !407, !408, !410, !412, !420, !421, !422}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !390, file: !391, line: 48, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !51, line: 145, baseType: !20)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !390, file: !391, line: 53, baseType: !396, size: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !51, line: 148, baseType: !20)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !390, file: !391, line: 61, baseType: !398, size: 64, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !51, line: 151, baseType: !20)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !390, file: !391, line: 62, baseType: !400, size: 32, offset: 192)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !51, line: 150, baseType: !143)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !390, file: !391, line: 64, baseType: !402, size: 32, offset: 224)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !51, line: 146, baseType: !143)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !390, file: !391, line: 65, baseType: !404, size: 32, offset: 256)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !51, line: 147, baseType: !143)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !390, file: !391, line: 67, baseType: !11, size: 32, offset: 288)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !390, file: !391, line: 69, baseType: !394, size: 64, offset: 320)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !390, file: !391, line: 74, baseType: !50, size: 64, offset: 384)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !390, file: !391, line: 78, baseType: !409, size: 64, offset: 448)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !51, line: 174, baseType: !52)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !390, file: !391, line: 80, baseType: !411, size: 64, offset: 512)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !51, line: 179, baseType: !52)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !390, file: !391, line: 91, baseType: !413, size: 128, offset: 576)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !414, line: 10, size: 128, elements: !415)
!414 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!415 = !{!416, !418}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !413, file: !414, line: 12, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !51, line: 160, baseType: !52)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !413, file: !414, line: 16, baseType: !419, size: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !51, line: 196, baseType: !52)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !390, file: !391, line: 92, baseType: !413, size: 128, offset: 704)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !390, file: !391, line: 93, baseType: !413, size: 128, offset: 832)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !390, file: !391, line: 106, baseType: !423, size: 192, offset: 960)
!423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 192, elements: !424)
!424 = !{!425}
!425 = !DISubrange(count: 3)
!426 = !{!427, !428}
!427 = !DILocalVariable(name: "__path", arg: 1, scope: !385, file: !386, line: 453, type: !16)
!428 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !385, file: !386, line: 453, type: !389)
!429 = !DILocation(line: 0, scope: !385)
!430 = !DILocation(line: 455, column: 10, scope: !385)
!431 = !DILocation(line: 455, column: 3, scope: !385)
!432 = distinct !DISubprogram(name: "lstat", scope: !386, file: !386, line: 460, type: !387, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !433)
!433 = !{!434, !435}
!434 = !DILocalVariable(name: "__path", arg: 1, scope: !432, file: !386, line: 460, type: !16)
!435 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !432, file: !386, line: 460, type: !389)
!436 = !DILocation(line: 0, scope: !432)
!437 = !DILocation(line: 462, column: 10, scope: !432)
!438 = !DILocation(line: 462, column: 3, scope: !432)
!439 = distinct !DISubprogram(name: "fstat", scope: !386, file: !386, line: 467, type: !440, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !442)
!440 = !DISubroutineType(types: !441)
!441 = !{!11, !11, !389}
!442 = !{!443, !444}
!443 = !DILocalVariable(name: "__fd", arg: 1, scope: !439, file: !386, line: 467, type: !11)
!444 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !439, file: !386, line: 467, type: !389)
!445 = !DILocation(line: 0, scope: !439)
!446 = !DILocation(line: 469, column: 10, scope: !439)
!447 = !DILocation(line: 469, column: 3, scope: !439)
!448 = distinct !DISubprogram(name: "fstatat", scope: !386, file: !386, line: 474, type: !449, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !451)
!449 = !DISubroutineType(types: !450)
!450 = !{!11, !11, !16, !389, !11}
!451 = !{!452, !453, !454, !455}
!452 = !DILocalVariable(name: "__fd", arg: 1, scope: !448, file: !386, line: 474, type: !11)
!453 = !DILocalVariable(name: "__filename", arg: 2, scope: !448, file: !386, line: 474, type: !16)
!454 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !448, file: !386, line: 474, type: !389)
!455 = !DILocalVariable(name: "__flag", arg: 4, scope: !448, file: !386, line: 474, type: !11)
!456 = !DILocation(line: 0, scope: !448)
!457 = !DILocation(line: 477, column: 10, scope: !448)
!458 = !DILocation(line: 477, column: 3, scope: !448)
!459 = distinct !DISubprogram(name: "mknod", scope: !386, file: !386, line: 483, type: !460, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !462)
!460 = !DISubroutineType(types: !461)
!461 = !{!11, !16, !400, !394}
!462 = !{!463, !464, !465}
!463 = !DILocalVariable(name: "__path", arg: 1, scope: !459, file: !386, line: 483, type: !16)
!464 = !DILocalVariable(name: "__mode", arg: 2, scope: !459, file: !386, line: 483, type: !400)
!465 = !DILocalVariable(name: "__dev", arg: 3, scope: !459, file: !386, line: 483, type: !394)
!466 = !DILocation(line: 0, scope: !459)
!467 = !DILocation(line: 485, column: 10, scope: !459)
!468 = !DILocation(line: 485, column: 3, scope: !459)
!469 = distinct !DISubprogram(name: "mknodat", scope: !386, file: !386, line: 491, type: !470, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !472)
!470 = !DISubroutineType(types: !471)
!471 = !{!11, !11, !16, !400, !394}
!472 = !{!473, !474, !475, !476}
!473 = !DILocalVariable(name: "__fd", arg: 1, scope: !469, file: !386, line: 491, type: !11)
!474 = !DILocalVariable(name: "__path", arg: 2, scope: !469, file: !386, line: 491, type: !16)
!475 = !DILocalVariable(name: "__mode", arg: 3, scope: !469, file: !386, line: 491, type: !400)
!476 = !DILocalVariable(name: "__dev", arg: 4, scope: !469, file: !386, line: 491, type: !394)
!477 = !DILocation(line: 0, scope: !469)
!478 = !DILocation(line: 494, column: 10, scope: !469)
!479 = !DILocation(line: 494, column: 3, scope: !469)
!480 = distinct !DISubprogram(name: "stat64", scope: !386, file: !386, line: 502, type: !481, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !503)
!481 = !DISubroutineType(types: !482)
!482 = !{!11, !16, !483}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !391, line: 119, size: 1152, elements: !485)
!485 = !{!486, !487, !489, !490, !491, !492, !493, !494, !495, !496, !497, !499, !500, !501, !502}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !484, file: !391, line: 121, baseType: !394, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !484, file: !391, line: 123, baseType: !488, size: 64, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !51, line: 149, baseType: !20)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !484, file: !391, line: 124, baseType: !398, size: 64, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !484, file: !391, line: 125, baseType: !400, size: 32, offset: 192)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !484, file: !391, line: 132, baseType: !402, size: 32, offset: 224)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !484, file: !391, line: 133, baseType: !404, size: 32, offset: 256)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !484, file: !391, line: 135, baseType: !11, size: 32, offset: 288)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !484, file: !391, line: 136, baseType: !394, size: 64, offset: 320)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !484, file: !391, line: 137, baseType: !50, size: 64, offset: 384)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !484, file: !391, line: 143, baseType: !409, size: 64, offset: 448)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !484, file: !391, line: 144, baseType: !498, size: 64, offset: 512)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !51, line: 180, baseType: !52)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !484, file: !391, line: 152, baseType: !413, size: 128, offset: 576)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !484, file: !391, line: 153, baseType: !413, size: 128, offset: 704)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !484, file: !391, line: 154, baseType: !413, size: 128, offset: 832)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !484, file: !391, line: 164, baseType: !423, size: 192, offset: 960)
!503 = !{!504, !505}
!504 = !DILocalVariable(name: "__path", arg: 1, scope: !480, file: !386, line: 502, type: !16)
!505 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !480, file: !386, line: 502, type: !483)
!506 = !DILocation(line: 0, scope: !480)
!507 = !DILocation(line: 504, column: 10, scope: !480)
!508 = !DILocation(line: 504, column: 3, scope: !480)
!509 = distinct !DISubprogram(name: "lstat64", scope: !386, file: !386, line: 509, type: !481, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !510)
!510 = !{!511, !512}
!511 = !DILocalVariable(name: "__path", arg: 1, scope: !509, file: !386, line: 509, type: !16)
!512 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !509, file: !386, line: 509, type: !483)
!513 = !DILocation(line: 0, scope: !509)
!514 = !DILocation(line: 511, column: 10, scope: !509)
!515 = !DILocation(line: 511, column: 3, scope: !509)
!516 = distinct !DISubprogram(name: "fstat64", scope: !386, file: !386, line: 516, type: !517, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !519)
!517 = !DISubroutineType(types: !518)
!518 = !{!11, !11, !483}
!519 = !{!520, !521}
!520 = !DILocalVariable(name: "__fd", arg: 1, scope: !516, file: !386, line: 516, type: !11)
!521 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !516, file: !386, line: 516, type: !483)
!522 = !DILocation(line: 0, scope: !516)
!523 = !DILocation(line: 518, column: 10, scope: !516)
!524 = !DILocation(line: 518, column: 3, scope: !516)
!525 = distinct !DISubprogram(name: "fstatat64", scope: !386, file: !386, line: 523, type: !526, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !528)
!526 = !DISubroutineType(types: !527)
!527 = !{!11, !11, !16, !483, !11}
!528 = !{!529, !530, !531, !532}
!529 = !DILocalVariable(name: "__fd", arg: 1, scope: !525, file: !386, line: 523, type: !11)
!530 = !DILocalVariable(name: "__filename", arg: 2, scope: !525, file: !386, line: 523, type: !16)
!531 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !525, file: !386, line: 523, type: !483)
!532 = !DILocalVariable(name: "__flag", arg: 4, scope: !525, file: !386, line: 523, type: !11)
!533 = !DILocation(line: 0, scope: !525)
!534 = !DILocation(line: 526, column: 10, scope: !525)
!535 = !DILocation(line: 526, column: 3, scope: !525)
!536 = !DILocation(line: 114, column: 3, scope: !2)
!537 = !DILocation(line: 119, column: 7, scope: !538)
!538 = distinct !DILexicalBlock(scope: !2, file: !3, line: 119, column: 7)
!539 = !DILocation(line: 119, column: 7, scope: !2)
!540 = !DILocation(line: 121, column: 16, scope: !541)
!541 = distinct !DILexicalBlock(scope: !538, file: !3, line: 120, column: 5)
!542 = !DILocation(line: 121, column: 7, scope: !541)
!543 = !DILocation(line: 122, column: 36, scope: !541)
!544 = !DILocation(line: 122, column: 7, scope: !541)
!545 = !DILocation(line: 123, column: 20, scope: !541)
!546 = !DILocation(line: 123, column: 7, scope: !541)
!547 = !DILocation(line: 124, column: 5, scope: !541)
!548 = !DILocation(line: 127, column: 8, scope: !549)
!549 = distinct !DILexicalBlock(scope: !2, file: !3, line: 127, column: 7)
!550 = !DILocation(line: 127, column: 7, scope: !2)
!551 = !DILocation(line: 130, column: 7, scope: !2)
!552 = !DILocation(line: 0, scope: !2)
!553 = !DILocation(line: 131, column: 9, scope: !554)
!554 = distinct !DILexicalBlock(scope: !2, file: !3, line: 131, column: 7)
!555 = !DILocation(line: 131, column: 7, scope: !2)
!556 = !DILocation(line: 132, column: 61, scope: !554)
!557 = !DILocation(line: 132, column: 5, scope: !554)
!558 = !DILocation(line: 133, column: 15, scope: !2)
!559 = !DILocation(line: 135, column: 3, scope: !2)
!560 = !DILocation(line: 137, column: 3, scope: !2)
!561 = !DILocation(line: 138, column: 23, scope: !2)
!562 = !DILocation(line: 138, column: 21, scope: !2)
!563 = !DILocation(line: 0, scope: !129)
!564 = !DILocation(line: 141, column: 10, scope: !565)
!565 = distinct !DILexicalBlock(scope: !129, file: !3, line: 141, column: 5)
!566 = !DILocation(line: 141, column: 5, scope: !565)
!567 = !DILocation(line: 143, column: 15, scope: !568)
!568 = distinct !DILexicalBlock(scope: !569, file: !3, line: 142, column: 7)
!569 = distinct !DILexicalBlock(scope: !565, file: !3, line: 141, column: 5)
!570 = !DILocation(line: 143, column: 2, scope: !568)
!571 = !DILocation(line: 143, column: 13, scope: !568)
!572 = !DILocation(line: 144, column: 2, scope: !568)
!573 = !DILocation(line: 141, column: 5, scope: !569)
!574 = distinct !{!574, !566, !575}
!575 = !DILocation(line: 145, column: 7, scope: !565)
!576 = !DILocation(line: 147, column: 5, scope: !2)
!577 = !DILocation(line: 147, column: 14, scope: !2)
!578 = !DILocation(line: 148, column: 29, scope: !2)
!579 = !DILocation(line: 148, column: 50, scope: !2)
!580 = !DILocation(line: 148, column: 21, scope: !2)
!581 = !DILocation(line: 150, column: 7, scope: !582)
!582 = distinct !DILexicalBlock(scope: !2, file: !3, line: 150, column: 7)
!583 = !DILocation(line: 150, column: 48, scope: !582)
!584 = !DILocation(line: 151, column: 7, scope: !582)
!585 = !DILocation(line: 151, column: 10, scope: !582)
!586 = !DILocation(line: 151, column: 49, scope: !582)
!587 = !DILocation(line: 152, column: 7, scope: !582)
!588 = !DILocation(line: 152, column: 10, scope: !582)
!589 = !DILocation(line: 152, column: 40, scope: !582)
!590 = !DILocation(line: 153, column: 7, scope: !582)
!591 = !DILocation(line: 153, column: 37, scope: !582)
!592 = !DILocation(line: 153, column: 10, scope: !582)
!593 = !DILocation(line: 153, column: 63, scope: !582)
!594 = !DILocation(line: 150, column: 7, scope: !2)
!595 = !DILocation(line: 154, column: 44, scope: !582)
!596 = !DILocation(line: 154, column: 5, scope: !582)
!597 = !DILocation(line: 158, column: 7, scope: !598)
!598 = distinct !DILexicalBlock(scope: !2, file: !3, line: 158, column: 7)
!599 = !DILocation(line: 158, column: 21, scope: !598)
!600 = !DILocation(line: 159, column: 7, scope: !598)
!601 = !DILocation(line: 159, column: 10, scope: !598)
!602 = !DILocation(line: 159, column: 38, scope: !598)
!603 = !DILocation(line: 158, column: 7, scope: !2)
!604 = !DILocation(line: 160, column: 52, scope: !598)
!605 = !DILocation(line: 160, column: 5, scope: !598)
!606 = !DILocation(line: 162, column: 30, scope: !2)
!607 = !DILocation(line: 162, column: 23, scope: !2)
!608 = !DILocation(line: 162, column: 21, scope: !2)
!609 = !DILocation(line: 165, column: 5, scope: !2)
!610 = !DILocation(line: 165, column: 18, scope: !2)
!611 = !DILocation(line: 165, column: 3, scope: !2)
!612 = !DILocation(line: 167, column: 19, scope: !2)
!613 = !DILocation(line: 167, column: 3, scope: !2)
!614 = !DILocation(line: 168, column: 1, scope: !2)
!615 = distinct !DISubprogram(name: "c_common_print_pch_checksum", scope: !3, file: !3, line: 491, type: !616, scopeLine: 492, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !618)
!616 = !DISubroutineType(types: !617)
!617 = !{null, !24}
!618 = !{!619, !620}
!619 = !DILocalVariable(name: "f", arg: 1, scope: !615, file: !3, line: 491, type: !24)
!620 = !DILocalVariable(name: "i", scope: !615, file: !3, line: 493, type: !11)
!621 = !DILocation(line: 0, scope: !615)
!622 = !DILocation(line: 494, column: 3, scope: !615)
!623 = !DILocation(line: 495, column: 8, scope: !624)
!624 = distinct !DILexicalBlock(scope: !615, file: !3, line: 495, column: 3)
!625 = !DILocation(line: 0, scope: !624)
!626 = !DILocation(line: 495, column: 17, scope: !627)
!627 = distinct !DILexicalBlock(scope: !624, file: !3, line: 495, column: 3)
!628 = !DILocation(line: 495, column: 3, scope: !624)
!629 = !DILocation(line: 496, column: 25, scope: !627)
!630 = !DILocation(line: 496, column: 5, scope: !627)
!631 = !DILocation(line: 495, column: 24, scope: !627)
!632 = !DILocation(line: 495, column: 3, scope: !627)
!633 = distinct !{!633, !628, !634}
!634 = !DILocation(line: 496, column: 47, scope: !624)
!635 = !DILocation(line: 497, column: 3, scope: !615)
!636 = !DILocation(line: 498, column: 1, scope: !615)
!637 = distinct !DISubprogram(name: "c_common_write_pch", scope: !3, file: !3, line: 174, type: !4, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !638)
!638 = !{!639, !640, !641, !642, !646}
!639 = !DILocalVariable(name: "buf", scope: !637, file: !3, line: 176, type: !13)
!640 = !DILocalVariable(name: "asm_file_end", scope: !637, file: !3, line: 177, type: !52)
!641 = !DILocalVariable(name: "written", scope: !637, file: !3, line: 178, type: !52)
!642 = !DILocalVariable(name: "h", scope: !637, file: !3, line: 179, type: !643)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "c_pch_header", file: !3, line: 72, size: 64, elements: !644)
!644 = !{!645}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "asm_size", scope: !643, file: !3, line: 74, baseType: !20, size: 64)
!646 = !DILocalVariable(name: "size", scope: !647, file: !3, line: 198, type: !52)
!647 = distinct !DILexicalBlock(scope: !648, file: !3, line: 197, column: 5)
!648 = distinct !DILexicalBlock(scope: !649, file: !3, line: 196, column: 3)
!649 = distinct !DILexicalBlock(scope: !637, file: !3, line: 196, column: 3)
!650 = !DILocation(line: 179, column: 3, scope: !637)
!651 = !DILocation(line: 181, column: 5, scope: !637)
!652 = !DILocation(line: 181, column: 18, scope: !637)
!653 = !DILocation(line: 181, column: 3, scope: !637)
!654 = !DILocation(line: 183, column: 23, scope: !637)
!655 = !DILocation(line: 183, column: 33, scope: !637)
!656 = !DILocation(line: 183, column: 3, scope: !637)
!657 = !DILocation(line: 185, column: 25, scope: !637)
!658 = !DILocation(line: 185, column: 18, scope: !637)
!659 = !DILocation(line: 0, scope: !637)
!660 = !DILocation(line: 186, column: 31, scope: !637)
!661 = !DILocation(line: 186, column: 29, scope: !637)
!662 = !DILocation(line: 186, column: 5, scope: !637)
!663 = !DILocation(line: 186, column: 14, scope: !637)
!664 = !DILocation(line: 188, column: 34, scope: !665)
!665 = distinct !DILexicalBlock(scope: !637, file: !3, line: 188, column: 7)
!666 = !DILocation(line: 188, column: 7, scope: !665)
!667 = !DILocation(line: 188, column: 47, scope: !665)
!668 = !DILocation(line: 188, column: 7, scope: !637)
!669 = !DILocation(line: 189, column: 41, scope: !665)
!670 = !DILocation(line: 189, column: 5, scope: !665)
!671 = !DILocation(line: 191, column: 9, scope: !637)
!672 = !DILocation(line: 193, column: 14, scope: !673)
!673 = distinct !DILexicalBlock(scope: !637, file: !3, line: 193, column: 7)
!674 = !DILocation(line: 193, column: 28, scope: !673)
!675 = !DILocation(line: 193, column: 7, scope: !673)
!676 = !DILocation(line: 193, column: 57, scope: !673)
!677 = !DILocation(line: 193, column: 7, scope: !637)
!678 = !DILocation(line: 194, column: 43, scope: !673)
!679 = !DILocation(line: 194, column: 5, scope: !673)
!680 = !DILocation(line: 196, column: 18, scope: !649)
!681 = !DILocation(line: 196, column: 8, scope: !649)
!682 = !DILocation(line: 0, scope: !649)
!683 = !DILocation(line: 196, column: 45, scope: !648)
!684 = !DILocation(line: 196, column: 3, scope: !649)
!685 = !DILocation(line: 198, column: 32, scope: !647)
!686 = !DILocation(line: 0, scope: !647)
!687 = !DILocation(line: 199, column: 11, scope: !647)
!688 = !DILocation(line: 201, column: 32, scope: !689)
!689 = distinct !DILexicalBlock(scope: !647, file: !3, line: 201, column: 11)
!690 = !DILocation(line: 201, column: 11, scope: !689)
!691 = !DILocation(line: 201, column: 46, scope: !689)
!692 = !DILocation(line: 201, column: 11, scope: !647)
!693 = !DILocation(line: 202, column: 37, scope: !689)
!694 = !DILocation(line: 202, column: 2, scope: !689)
!695 = !DILocation(line: 203, column: 33, scope: !696)
!696 = distinct !DILexicalBlock(scope: !647, file: !3, line: 203, column: 11)
!697 = !DILocation(line: 203, column: 11, scope: !696)
!698 = !DILocation(line: 203, column: 46, scope: !696)
!699 = !DILocation(line: 203, column: 11, scope: !647)
!700 = !DILocation(line: 204, column: 38, scope: !696)
!701 = !DILocation(line: 204, column: 2, scope: !696)
!702 = !DILocation(line: 205, column: 15, scope: !647)
!703 = !DILocation(line: 196, column: 3, scope: !648)
!704 = distinct !{!704, !684, !705}
!705 = !DILocation(line: 206, column: 5, scope: !649)
!706 = !DILocation(line: 207, column: 3, scope: !637)
!707 = !DILocation(line: 210, column: 14, scope: !708)
!708 = distinct !DILexicalBlock(scope: !637, file: !3, line: 210, column: 7)
!709 = !DILocation(line: 210, column: 7, scope: !708)
!710 = !DILocation(line: 210, column: 41, scope: !708)
!711 = !DILocation(line: 210, column: 7, scope: !637)
!712 = !DILocation(line: 211, column: 43, scope: !708)
!713 = !DILocation(line: 211, column: 5, scope: !708)
!714 = !DILocation(line: 213, column: 16, scope: !637)
!715 = !DILocation(line: 213, column: 3, scope: !637)
!716 = !DILocation(line: 214, column: 24, scope: !637)
!717 = !DILocation(line: 214, column: 34, scope: !637)
!718 = !DILocation(line: 214, column: 3, scope: !637)
!719 = !DILocation(line: 216, column: 14, scope: !720)
!720 = distinct !DILexicalBlock(scope: !637, file: !3, line: 216, column: 7)
!721 = !DILocation(line: 216, column: 7, scope: !720)
!722 = !DILocation(line: 216, column: 40, scope: !720)
!723 = !DILocation(line: 217, column: 7, scope: !720)
!724 = !DILocation(line: 217, column: 18, scope: !720)
!725 = !DILocation(line: 217, column: 49, scope: !720)
!726 = !DILocation(line: 217, column: 10, scope: !720)
!727 = !DILocation(line: 217, column: 62, scope: !720)
!728 = !DILocation(line: 216, column: 7, scope: !637)
!729 = !DILocation(line: 218, column: 41, scope: !720)
!730 = !DILocation(line: 218, column: 5, scope: !720)
!731 = !DILocation(line: 220, column: 11, scope: !637)
!732 = !DILocation(line: 220, column: 3, scope: !637)
!733 = !DILocation(line: 221, column: 1, scope: !637)
!734 = !DILocation(line: 99, column: 3, scope: !101)
!735 = !DILocation(line: 100, column: 32, scope: !101)
!736 = !DILocation(line: 100, column: 15, scope: !101)
!737 = !DILocation(line: 100, column: 13, scope: !101)
!738 = !DILocation(line: 102, column: 3, scope: !101)
!739 = distinct !DISubprogram(name: "c_common_valid_pch", scope: !3, file: !3, line: 229, type: !740, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !747)
!740 = !DISubroutineType(types: !741)
!741 = !{!11, !742, !16, !11}
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_reader", file: !744, line: 31, baseType: !745)
!744 = !DIFile(filename: "./cpplib.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!745 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_reader", file: !746, line: 91, flags: DIFlagFwdDecl)
!746 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!747 = !{!748, !749, !750, !751, !752, !753, !757, !758, !759, !761, !763}
!748 = !DILocalVariable(name: "pfile", arg: 1, scope: !739, file: !3, line: 229, type: !742)
!749 = !DILocalVariable(name: "name", arg: 2, scope: !739, file: !3, line: 229, type: !16)
!750 = !DILocalVariable(name: "fd", arg: 3, scope: !739, file: !3, line: 229, type: !11)
!751 = !DILocalVariable(name: "sizeread", scope: !739, file: !3, line: 231, type: !11)
!752 = !DILocalVariable(name: "result", scope: !739, file: !3, line: 232, type: !11)
!753 = !DILocalVariable(name: "ident", scope: !739, file: !3, line: 233, type: !754)
!754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 192, elements: !755)
!755 = !{!756}
!756 = !DISubrange(count: 24)
!757 = !DILocalVariable(name: "pch_ident", scope: !739, file: !3, line: 234, type: !16)
!758 = !DILocalVariable(name: "v", scope: !739, file: !3, line: 235, type: !120)
!759 = !DILocalVariable(name: "i", scope: !760, file: !3, line: 303, type: !18)
!760 = distinct !DILexicalBlock(scope: !739, file: !3, line: 302, column: 3)
!761 = !DILocalVariable(name: "this_file_data", scope: !762, file: !3, line: 331, type: !15)
!762 = distinct !DILexicalBlock(scope: !739, file: !3, line: 330, column: 3)
!763 = !DILocalVariable(name: "msg", scope: !762, file: !3, line: 332, type: !16)
!764 = !DILocation(line: 0, scope: !739)
!765 = !DILocation(line: 233, column: 3, scope: !739)
!766 = !DILocation(line: 233, column: 8, scope: !739)
!767 = !DILocation(line: 235, column: 3, scope: !739)
!768 = !DILocation(line: 240, column: 3, scope: !739)
!769 = !DILocation(line: 242, column: 14, scope: !739)
!770 = !DILocation(line: 243, column: 7, scope: !739)
!771 = !DILocation(line: 244, column: 5, scope: !772)
!772 = distinct !DILexicalBlock(scope: !739, file: !3, line: 243, column: 7)
!773 = !DILocation(line: 247, column: 11, scope: !774)
!774 = distinct !DILexicalBlock(scope: !775, file: !3, line: 247, column: 11)
!775 = distinct !DILexicalBlock(scope: !776, file: !3, line: 246, column: 5)
!776 = distinct !DILexicalBlock(scope: !772, file: !3, line: 245, column: 12)
!777 = !DILocation(line: 247, column: 36, scope: !774)
!778 = !DILocation(line: 247, column: 11, scope: !775)
!779 = !DILocation(line: 248, column: 2, scope: !774)
!780 = !DILocation(line: 253, column: 15, scope: !739)
!781 = !DILocation(line: 254, column: 7, scope: !782)
!782 = distinct !DILexicalBlock(scope: !739, file: !3, line: 254, column: 7)
!783 = !DILocation(line: 254, column: 47, scope: !782)
!784 = !DILocation(line: 254, column: 7, scope: !739)
!785 = !DILocation(line: 256, column: 11, scope: !786)
!786 = distinct !DILexicalBlock(scope: !787, file: !3, line: 256, column: 11)
!787 = distinct !DILexicalBlock(scope: !782, file: !3, line: 255, column: 5)
!788 = !DILocation(line: 256, column: 36, scope: !786)
!789 = !DILocation(line: 256, column: 11, scope: !787)
!790 = !DILocation(line: 258, column: 8, scope: !791)
!791 = distinct !DILexicalBlock(scope: !792, file: !3, line: 258, column: 8)
!792 = distinct !DILexicalBlock(scope: !786, file: !3, line: 257, column: 2)
!793 = !DILocation(line: 258, column: 37, scope: !791)
!794 = !DILocation(line: 258, column: 8, scope: !792)
!795 = !DILocation(line: 261, column: 6, scope: !791)
!796 = !DILocation(line: 263, column: 13, scope: !797)
!797 = distinct !DILexicalBlock(scope: !791, file: !3, line: 263, column: 13)
!798 = !DILocation(line: 263, column: 42, scope: !797)
!799 = !DILocation(line: 263, column: 13, scope: !791)
!800 = !DILocation(line: 266, column: 21, scope: !797)
!801 = !DILocation(line: 265, column: 6, scope: !797)
!802 = !DILocation(line: 269, column: 6, scope: !797)
!803 = !DILocation(line: 273, column: 21, scope: !804)
!804 = distinct !DILexicalBlock(scope: !739, file: !3, line: 273, column: 7)
!805 = !DILocation(line: 273, column: 7, scope: !804)
!806 = !DILocation(line: 273, column: 62, scope: !804)
!807 = !DILocation(line: 273, column: 7, scope: !739)
!808 = !DILocation(line: 275, column: 11, scope: !809)
!809 = distinct !DILexicalBlock(scope: !810, file: !3, line: 275, column: 11)
!810 = distinct !DILexicalBlock(scope: !804, file: !3, line: 274, column: 5)
!811 = !DILocation(line: 275, column: 36, scope: !809)
!812 = !DILocation(line: 275, column: 11, scope: !810)
!813 = !DILocation(line: 276, column: 2, scope: !809)
!814 = !DILocation(line: 284, column: 7, scope: !815)
!815 = distinct !DILexicalBlock(scope: !739, file: !3, line: 284, column: 7)
!816 = !DILocation(line: 284, column: 33, scope: !815)
!817 = !DILocation(line: 284, column: 7, scope: !739)
!818 = !DILocation(line: 285, column: 5, scope: !815)
!819 = !DILocation(line: 290, column: 9, scope: !820)
!820 = distinct !DILexicalBlock(scope: !739, file: !3, line: 290, column: 7)
!821 = !DILocation(line: 290, column: 7, scope: !820)
!822 = !DILocation(line: 290, column: 28, scope: !820)
!823 = !DILocation(line: 290, column: 25, scope: !820)
!824 = !DILocation(line: 291, column: 24, scope: !820)
!825 = !DILocation(line: 291, column: 7, scope: !820)
!826 = !DILocation(line: 0, scope: !827)
!827 = distinct !DILexicalBlock(scope: !828, file: !3, line: 305, column: 11)
!828 = distinct !DILexicalBlock(scope: !829, file: !3, line: 304, column: 5)
!829 = distinct !DILexicalBlock(scope: !760, file: !3, line: 304, column: 5)
!830 = !DILocation(line: 304, column: 5, scope: !829)
!831 = !DILocation(line: 293, column: 11, scope: !832)
!832 = distinct !DILexicalBlock(scope: !833, file: !3, line: 293, column: 11)
!833 = distinct !DILexicalBlock(scope: !820, file: !3, line: 292, column: 5)
!834 = !DILocation(line: 293, column: 36, scope: !832)
!835 = !DILocation(line: 293, column: 11, scope: !833)
!836 = !DILocation(line: 296, column: 25, scope: !832)
!837 = !DILocation(line: 296, column: 6, scope: !832)
!838 = !DILocation(line: 297, column: 23, scope: !832)
!839 = !DILocation(line: 297, column: 6, scope: !832)
!840 = !DILocation(line: 294, column: 2, scope: !832)
!841 = !DILocation(line: 305, column: 40, scope: !827)
!842 = !DILocation(line: 305, column: 37, scope: !827)
!843 = !DILocation(line: 305, column: 11, scope: !828)
!844 = !DILocation(line: 307, column: 8, scope: !845)
!845 = distinct !DILexicalBlock(scope: !846, file: !3, line: 307, column: 8)
!846 = distinct !DILexicalBlock(scope: !827, file: !3, line: 306, column: 2)
!847 = !DILocation(line: 307, column: 33, scope: !845)
!848 = !DILocation(line: 307, column: 8, scope: !846)
!849 = !DILocation(line: 308, column: 6, scope: !845)
!850 = !DILocation(line: 0, scope: !760)
!851 = !DILocation(line: 304, column: 5, scope: !828)
!852 = distinct !{!852, !830, !853}
!853 = !DILocation(line: 312, column: 2, scope: !829)
!854 = !DILocation(line: 321, column: 9, scope: !855)
!855 = distinct !DILexicalBlock(scope: !739, file: !3, line: 321, column: 7)
!856 = !DILocation(line: 321, column: 18, scope: !855)
!857 = !DILocation(line: 321, column: 7, scope: !739)
!858 = !DILocation(line: 323, column: 11, scope: !859)
!859 = distinct !DILexicalBlock(scope: !860, file: !3, line: 323, column: 11)
!860 = distinct !DILexicalBlock(scope: !855, file: !3, line: 322, column: 5)
!861 = !DILocation(line: 323, column: 36, scope: !859)
!862 = !DILocation(line: 323, column: 11, scope: !860)
!863 = !DILocation(line: 324, column: 2, scope: !859)
!864 = !DILocation(line: 331, column: 39, scope: !762)
!865 = !DILocation(line: 331, column: 28, scope: !762)
!866 = !DILocation(line: 0, scope: !762)
!867 = !DILocation(line: 334, column: 46, scope: !868)
!868 = distinct !DILexicalBlock(scope: !762, file: !3, line: 334, column: 9)
!869 = !DILocation(line: 334, column: 18, scope: !868)
!870 = !DILocation(line: 335, column: 7, scope: !868)
!871 = !DILocation(line: 335, column: 2, scope: !868)
!872 = !DILocation(line: 334, column: 9, scope: !762)
!873 = !DILocation(line: 336, column: 7, scope: !868)
!874 = !DILocation(line: 337, column: 50, scope: !762)
!875 = !DILocation(line: 337, column: 19, scope: !762)
!876 = !DILocation(line: 337, column: 11, scope: !762)
!877 = !DILocation(line: 338, column: 5, scope: !762)
!878 = !DILocation(line: 339, column: 13, scope: !879)
!879 = distinct !DILexicalBlock(scope: !762, file: !3, line: 339, column: 9)
!880 = !DILocation(line: 339, column: 9, scope: !762)
!881 = !DILocation(line: 341, column: 6, scope: !882)
!882 = distinct !DILexicalBlock(scope: !883, file: !3, line: 341, column: 6)
!883 = distinct !DILexicalBlock(scope: !879, file: !3, line: 340, column: 7)
!884 = !DILocation(line: 341, column: 31, scope: !882)
!885 = !DILocation(line: 341, column: 6, scope: !883)
!886 = !DILocation(line: 342, column: 4, scope: !882)
!887 = !DILocation(line: 350, column: 12, scope: !739)
!888 = !DILocation(line: 351, column: 14, scope: !889)
!889 = distinct !DILexicalBlock(scope: !739, file: !3, line: 351, column: 7)
!890 = !DILocation(line: 351, column: 7, scope: !739)
!891 = !DILocation(line: 354, column: 19, scope: !889)
!892 = !DILocation(line: 354, column: 5, scope: !889)
!893 = !DILocation(line: 355, column: 1, scope: !739)
!894 = distinct !DISubprogram(name: "c_common_read_pch", scope: !3, file: !3, line: 365, type: !895, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !897)
!895 = !DISubroutineType(types: !896)
!896 = !{null, !742, !16, !11, !16}
!897 = !{!898, !899, !900, !901, !902, !903, !904, !907, !916, !917, !920, !921}
!898 = !DILocalVariable(name: "pfile", arg: 1, scope: !894, file: !3, line: 365, type: !742)
!899 = !DILocalVariable(name: "name", arg: 2, scope: !894, file: !3, line: 365, type: !16)
!900 = !DILocalVariable(name: "fd", arg: 3, scope: !894, file: !3, line: 366, type: !11)
!901 = !DILocalVariable(name: "orig_name", arg: 4, scope: !894, file: !3, line: 366, type: !16)
!902 = !DILocalVariable(name: "f", scope: !894, file: !3, line: 368, type: !24)
!903 = !DILocalVariable(name: "h", scope: !894, file: !3, line: 369, type: !643)
!904 = !DILocalVariable(name: "smd", scope: !894, file: !3, line: 370, type: !905)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DICompositeType(tag: DW_TAG_structure_type, name: "save_macro_data", file: !744, line: 937, flags: DIFlagFwdDecl)
!907 = !DILocalVariable(name: "saved_loc", scope: !894, file: !3, line: 371, type: !908)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "expanded_location", file: !909, line: 52, baseType: !910)
!909 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !909, line: 40, size: 192, elements: !911)
!911 = !{!912, !913, !914, !915}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !910, file: !909, line: 43, baseType: !16, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !910, file: !909, line: 46, baseType: !11, size: 32, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !910, file: !909, line: 48, baseType: !11, size: 32, offset: 96)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !910, file: !909, line: 51, baseType: !10, size: 8, offset: 128)
!916 = !DILocalVariable(name: "saved_trace_includes", scope: !894, file: !3, line: 372, type: !10)
!917 = !DILocalVariable(name: "written", scope: !918, file: !3, line: 393, type: !20)
!918 = distinct !DILexicalBlock(scope: !919, file: !3, line: 392, column: 5)
!919 = distinct !DILexicalBlock(scope: !894, file: !3, line: 391, column: 7)
!920 = !DILocalVariable(name: "buf", scope: !918, file: !3, line: 394, type: !13)
!921 = !DILocalVariable(name: "size", scope: !922, file: !3, line: 398, type: !52)
!922 = distinct !DILexicalBlock(scope: !923, file: !3, line: 397, column: 2)
!923 = distinct !DILexicalBlock(scope: !924, file: !3, line: 396, column: 7)
!924 = distinct !DILexicalBlock(scope: !918, file: !3, line: 396, column: 7)
!925 = !DILocation(line: 0, scope: !894)
!926 = !DILocation(line: 369, column: 3, scope: !894)
!927 = !DILocation(line: 370, column: 3, scope: !894)
!928 = !DILocation(line: 371, column: 3, scope: !894)
!929 = !DILocation(line: 374, column: 7, scope: !894)
!930 = !DILocation(line: 375, column: 9, scope: !931)
!931 = distinct !DILexicalBlock(scope: !894, file: !3, line: 375, column: 7)
!932 = !DILocation(line: 375, column: 7, scope: !894)
!933 = !DILocation(line: 377, column: 7, scope: !934)
!934 = distinct !DILexicalBlock(scope: !931, file: !3, line: 376, column: 5)
!935 = !DILocation(line: 378, column: 7, scope: !934)
!936 = !DILocation(line: 379, column: 7, scope: !934)
!937 = !DILocation(line: 382, column: 22, scope: !894)
!938 = !DILocation(line: 382, column: 3, scope: !894)
!939 = !DILocation(line: 382, column: 33, scope: !894)
!940 = !DILocation(line: 382, column: 43, scope: !894)
!941 = !DILocation(line: 384, column: 7, scope: !942)
!942 = distinct !DILexicalBlock(scope: !894, file: !3, line: 384, column: 7)
!943 = !DILocation(line: 384, column: 36, scope: !942)
!944 = !DILocation(line: 384, column: 7, scope: !894)
!945 = !DILocation(line: 386, column: 7, scope: !946)
!946 = distinct !DILexicalBlock(scope: !942, file: !3, line: 385, column: 5)
!947 = !DILocation(line: 387, column: 7, scope: !946)
!948 = !DILocation(line: 388, column: 7, scope: !946)
!949 = !DILocation(line: 391, column: 8, scope: !919)
!950 = !DILocation(line: 391, column: 7, scope: !894)
!951 = !DILocation(line: 394, column: 20, scope: !918)
!952 = !DILocation(line: 0, scope: !918)
!953 = !DILocation(line: 0, scope: !923)
!954 = !DILocation(line: 396, column: 12, scope: !924)
!955 = !DILocation(line: 0, scope: !924)
!956 = !DILocation(line: 396, column: 37, scope: !923)
!957 = !DILocation(line: 396, column: 33, scope: !923)
!958 = !DILocation(line: 396, column: 7, scope: !924)
!959 = !DILocation(line: 398, column: 27, scope: !922)
!960 = !DILocation(line: 0, scope: !922)
!961 = !DILocation(line: 399, column: 8, scope: !922)
!962 = !DILocation(line: 401, column: 8, scope: !963)
!963 = distinct !DILexicalBlock(scope: !922, file: !3, line: 401, column: 8)
!964 = !DILocation(line: 401, column: 32, scope: !963)
!965 = !DILocation(line: 402, column: 8, scope: !963)
!966 = !DILocation(line: 402, column: 33, scope: !963)
!967 = !DILocation(line: 402, column: 11, scope: !963)
!968 = !DILocation(line: 402, column: 47, scope: !963)
!969 = !DILocation(line: 401, column: 8, scope: !922)
!970 = !DILocation(line: 403, column: 6, scope: !963)
!971 = !DILocation(line: 404, column: 12, scope: !922)
!972 = !DILocation(line: 396, column: 7, scope: !923)
!973 = distinct !{!973, !958, !974}
!974 = !DILocation(line: 405, column: 2, scope: !924)
!975 = !DILocation(line: 406, column: 7, scope: !918)
!976 = !DILocation(line: 407, column: 5, scope: !918)
!977 = !DILocation(line: 412, column: 23, scope: !978)
!978 = distinct !DILexicalBlock(scope: !979, file: !3, line: 412, column: 11)
!979 = distinct !DILexicalBlock(scope: !919, file: !3, line: 409, column: 5)
!980 = !DILocation(line: 412, column: 11, scope: !978)
!981 = !DILocation(line: 412, column: 43, scope: !978)
!982 = !DILocation(line: 412, column: 11, scope: !979)
!983 = !DILocation(line: 413, column: 2, scope: !978)
!984 = !DILocation(line: 417, column: 15, scope: !894)
!985 = !DILocation(line: 417, column: 32, scope: !894)
!986 = !DILocation(line: 417, column: 44, scope: !894)
!987 = !DILocation(line: 418, column: 26, scope: !894)
!988 = !DILocation(line: 418, column: 38, scope: !894)
!989 = !DILocation(line: 420, column: 3, scope: !894)
!990 = !DILocation(line: 422, column: 3, scope: !894)
!991 = !DILocation(line: 424, column: 39, scope: !992)
!992 = distinct !DILexicalBlock(scope: !894, file: !3, line: 424, column: 7)
!993 = !DILocation(line: 424, column: 7, scope: !992)
!994 = !DILocation(line: 424, column: 44, scope: !992)
!995 = !DILocation(line: 424, column: 7, scope: !894)
!996 = !DILocation(line: 432, column: 3, scope: !894)
!997 = !DILocation(line: 432, column: 15, scope: !894)
!998 = !DILocation(line: 432, column: 30, scope: !894)
!999 = !DILocation(line: 433, column: 3, scope: !894)
!1000 = !DILocation(line: 434, column: 16, scope: !894)
!1001 = !DILocation(line: 434, column: 52, scope: !894)
!1002 = !DILocation(line: 434, column: 68, scope: !894)
!1003 = !DILocation(line: 434, column: 3, scope: !894)
!1004 = !DILocation(line: 438, column: 7, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !894, file: !3, line: 438, column: 7)
!1006 = !DILocation(line: 438, column: 7, scope: !894)
!1007 = !DILocation(line: 439, column: 5, scope: !1005)
!1008 = !DILocation(line: 440, column: 1, scope: !894)
!1009 = distinct !DISubprogram(name: "c_common_no_more_pch", scope: !3, file: !3, line: 445, type: !4, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !7)
!1010 = !DILocation(line: 447, column: 26, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 447, column: 7)
!1012 = !DILocation(line: 447, column: 7, scope: !1011)
!1013 = !DILocation(line: 447, column: 37, scope: !1011)
!1014 = !DILocation(line: 447, column: 7, scope: !1009)
!1015 = !DILocation(line: 449, column: 26, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 448, column: 5)
!1017 = !DILocation(line: 449, column: 7, scope: !1016)
!1018 = !DILocation(line: 449, column: 37, scope: !1016)
!1019 = !DILocation(line: 449, column: 47, scope: !1016)
!1020 = !DILocation(line: 450, column: 18, scope: !1016)
!1021 = !DILocation(line: 450, column: 7, scope: !1016)
!1022 = !DILocation(line: 451, column: 5, scope: !1016)
!1023 = !DILocation(line: 452, column: 1, scope: !1009)
!1024 = distinct !DISubprogram(name: "c_common_pch_pragma", scope: !3, file: !3, line: 461, type: !1025, scopeLine: 462, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !1027)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{null, !742, !16}
!1027 = !{!1028, !1029, !1030}
!1028 = !DILocalVariable(name: "pfile", arg: 1, scope: !1024, file: !3, line: 461, type: !742)
!1029 = !DILocalVariable(name: "name", arg: 2, scope: !1024, file: !3, line: 461, type: !16)
!1030 = !DILocalVariable(name: "fd", scope: !1024, file: !3, line: 463, type: !11)
!1031 = !DILocation(line: 0, scope: !1024)
!1032 = !DILocation(line: 465, column: 8, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 465, column: 7)
!1034 = !DILocation(line: 465, column: 33, scope: !1033)
!1035 = !DILocation(line: 465, column: 7, scope: !1024)
!1036 = !DILocation(line: 467, column: 7, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 466, column: 5)
!1038 = !DILocation(line: 468, column: 15, scope: !1037)
!1039 = !DILocation(line: 468, column: 7, scope: !1037)
!1040 = !DILocation(line: 469, column: 7, scope: !1037)
!1041 = !DILocation(line: 472, column: 8, scope: !1024)
!1042 = !DILocation(line: 473, column: 10, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 473, column: 7)
!1044 = !DILocation(line: 473, column: 7, scope: !1024)
!1045 = !DILocation(line: 474, column: 5, scope: !1043)
!1046 = !DILocation(line: 476, column: 7, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 476, column: 7)
!1048 = !DILocation(line: 476, column: 44, scope: !1047)
!1049 = !DILocation(line: 476, column: 7, scope: !1024)
!1050 = !DILocation(line: 478, column: 12, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 478, column: 11)
!1052 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 477, column: 5)
!1053 = !DILocation(line: 478, column: 37, scope: !1051)
!1054 = !DILocation(line: 478, column: 11, scope: !1052)
!1055 = !DILocation(line: 479, column: 10, scope: !1051)
!1056 = !DILocation(line: 479, column: 2, scope: !1051)
!1057 = !DILocation(line: 480, column: 7, scope: !1052)
!1058 = !DILocation(line: 481, column: 5, scope: !1052)
!1059 = !DILocation(line: 483, column: 3, scope: !1024)
!1060 = !DILocation(line: 485, column: 3, scope: !1024)
!1061 = !DILocation(line: 486, column: 1, scope: !1024)
